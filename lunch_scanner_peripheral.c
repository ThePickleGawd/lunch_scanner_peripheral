/**
 ******************************************************************************
 *
 * @file BLE_scan_adv.c
 *
 * @brief BLE_scan_adv application
 *
 * Copyright (C) Atmosic 2021-2022
 *
 ******************************************************************************
 */

// Libs
#include "arch.h"
#include <inttypes.h>
#include "atm_asm.h"
#include "co_utils.h"
#include "nvds.h"
#include "nvds_tag.h"
#include "atm_pm.h"
#include "sw_timer.h"
#include "atm_adv.h"
#include "atm_scan.h"
#include "atm_gap_param.h"
#include "atm_scan_param.h"
#include "atm_gpio.h"

// My Stuff
#include "lunch_scanner_peripheral.h"
#include "lunch_parser.h"
#include "cfg_adv_params.h"
#include "khash.h"

#define S_TBL_IDX 0

#define PERIPH_STUDENT_ID_LEN 6 // how much we want to store in the adv packet
#define PERIPH_PREFIX_LEN 3

#ifndef STUDENT_ID_ARR_LEN
#define STUDENT_ID_ARR_LEN 10
#endif

#ifndef PERIPH_MODE_DIP
#define PERIPH_MODE_DIP 9
#endif

ATM_LOG_LOCAL_SETTING("lunch_periph", V);

static uint8_t scan_act_idx;
static uint8_t adv_act_idx;
static uint32_t restart_time_csec; // centi-seconds
static sw_timer_id_t tid_restart;
static pm_lock_id_t scan_lock_hiber;
static uint8_t sleep_mode;

static bool should_send = false;
static lunch_peripheral_mode_t periph_mode;

typedef struct {
    int totalRSSI;
    int8_t beacon_cnt;
    uint8_t student_id[STUDENT_ID_ARR_LEN];
} __PACKED lunch_rssi_state_t;

typedef struct {
    int8_t rssi_val;
    uint8_t student_id[PERIPH_STUDENT_ID_LEN];
} __PACKED lunch_peripheral_data_t;


KHASH_MAP_INIT_INT(rssi, lunch_rssi_state_t)

static khash_t(rssi) *rssi_map;

static int student_id_to_int(nvds_lunch_data_t data)
{
    int num = 0;
    for(int i = STUDENT_ID_ARR_LEN - 1; i >= 0; i--) {
        num += data.student_id[i] - '0';
        num *= 10;
    }
    
    return num;
}

/**
 * @brief Callback registered with the GAP layer
 * @note Called by the GAP layer to report advertisement data.
 */
static void periph_ext_adv_ind(ble_gap_ind_ext_adv_report_t const *ind)
{
    if (!(ind->info & BLE_GAP_REPORT_INFO_COMPLETE_BIT)) return; 
    
    // Return if vendor address doesn't match
    if(!matches_bd_vendor(ind->trans_addr.addr.addr)) return;

    nvds_lunch_data_t lunch_data = {0};
    if(try_parse_lunch_data(ind->data, ind->length, &lunch_data)) {

        /* Put rssi_state into map, create/modify depending on if it exists*/

        should_send = true;

        khiter_t k = kh_get(rssi, rssi_map, student_id_to_int(lunch_data));
        if (k == kh_end(rssi_map)) {
            int ret;
            khiter_t iter = kh_put(rssi, rssi_map, student_id_to_int(lunch_data), &ret);

            // Place new rssi value in map
            lunch_rssi_state_t rssi_state = {
                .beacon_cnt = 1,
                .totalRSSI = (int)ind->rssi,
                .student_id = {'E', 'M', 'P', 'T', 'Y', 0, 0, 0, 0, 0}
            };
            memcpy(&rssi_state.student_id, &lunch_data.student_id, STUDENT_ID_ARR_LEN);
            kh_value(rssi_map, iter) = rssi_state;
        } else {
            lunch_rssi_state_t *rssi_state = &kh_value(rssi_map, k);
            rssi_state->beacon_cnt++;
            rssi_state->totalRSSI += (int)ind->rssi;
        }
    }

}

/**
 * @brief Callback registered with the GAP layer.
 * @note Called after the GAP layer has initialized.
 */
static void periph_gap_init_cfm(ble_err_code_t status)
{
   atm_asm_move(S_TBL_IDX, OP_GAP_INIT_CFM);
}

/**
 * @brief Trigger GAP initialization.
 * @note Called upon module initialization.
 */
static void periph_gap_init(void)
{
    // Gap callbacks
    static atm_gap_cbs_t const gap_callbacks = {
	.ext_adv_ind = periph_ext_adv_ind,
	.init_cfm = periph_gap_init_cfm,
    };
    atm_gap_start(atm_gap_param_get(), &gap_callbacks);
}

/**
 * @brief Callback registered with the ATM scan module.
 * @note Called when scan activity has started.
 */
static void periph_scan_start_cfm(uint8_t inst_idx, ble_err_code_t status)
{
    ASSERT_INFO(status == BLE_ERR_NO_ERROR, inst_idx, status);
    scan_act_idx = inst_idx;
    atm_asm_move(S_TBL_IDX, OP_START_SCAN_CFM);
}

/**
 * @brief Scan stop callback. Check if target has been found and decide.
 * to send advertisement for acknowledgement or go hibernation.
 * @note Called when scan activity has stoped.
 */
static void periph_scan_stop_ind(uint8_t inst_idx, ble_err_code_t status)
{
    if (should_send) {
	atm_asm_move(S_TBL_IDX, OP_SCAN_TIMEOUT_CREATE_ADV);
    } else {
	atm_asm_move(S_TBL_IDX, OP_SCAN_TIMEOUT_GO_HIB);
    }

#ifdef AUTO_TEST
    UartEndSimulation();
#endif
}

/**
 * @brief Create and start scan activity. Results in a state machine
 * transition to S_SCAN_STARTING.
 * @note Called after GAP has been initialized.
 */
static void periph_start_scan(void)
{
    atm_scan_params_t start_params;
    atm_get_nvds_scan_params(&start_params);
    // Scan callbacks
    static atm_scan_cbs_t const scan_callbacks = {
	.scan_start_cfm = periph_scan_start_cfm,
	.scan_stop_ind = periph_scan_stop_ind,
    };
    atm_scan_err_t ret = atm_scan_create_and_start(BLE_OWN_STATIC_ADDR,
	&start_params, &scan_callbacks);
    if (ret != SCAN_ERR_NO_ERROR) {
	ATM_LOG(E, "%s Fail to create and start scan %d", __func__, ret);
    }
}

/**
 * @brief Scan on. Results in a state machine transition to S_SCAN_ON.
 * @note Called when the scan activity is turned-on.
 */
static void periph_scan_on(void)
{
    ATM_LOG(D, "%s", __func__);
    atm_asm_set_state_op(S_TBL_IDX, S_SCAN_ON, OP_END);
    if (restart_time_csec) {
	atm_pm_lock(scan_lock_hiber);
    }
}

/**
 * @brief Restart scan activity. Results in a state machine transition to
 * S_SCAN_STARTING.
 * @note Called when the scan activity is turned-on.
 */
static void periph_restart_scan(void)
{
    atm_scan_params_t start_params;
    atm_get_nvds_scan_params(&start_params);
    atm_scan_err_t ret = atm_scan_start(scan_act_idx, &start_params);
    if (ret != SCAN_ERR_NO_ERROR) {
	ATM_LOG(E, "%s Fail to start scan %d", __func__, ret);
    }
}

/**
 * @brief Callback registered with the atm_adv module
 * @note Called upon a state change in the advertising state machine
 */
static void periph_adv_state_change(atm_adv_state_t state, uint8_t act_idx,
    ble_err_code_t status)
{
    ATM_LOG(D, "ADV state change: %d", state);

    switch (state) {
	case ATM_ADV_CREATED: {
	    adv_act_idx = act_idx;
	    atm_asm_move(S_TBL_IDX, OP_CREATE_ADV_CFM);
	} break;
	case ATM_ADV_ADVDATA_DONE: {
	    atm_asm_move(S_TBL_IDX, OP_SET_ADV_DATA_CFM);
	} break;
	case ATM_ADV_ON: {
	    atm_asm_move(S_TBL_IDX, OP_START_ADV_CFM);
	} break;
	case ATM_ADV_OFF: {
	    atm_asm_move(S_TBL_IDX, OP_ADV_TIMEOUT);
	} break;
	case ATM_ADV_DELETED: {
	    atm_asm_move(S_TBL_IDX, OP_DELETE_ADV_CFM);
	} break;
	case ATM_ADV_IDLE:
	case ATM_ADV_CREATING:
	case ATM_ADV_ADVDATA_SETTING:
	case ATM_ADV_SCANDATA_SETTING:
	case ATM_ADV_SCANDATA_DONE:
	case ATM_ADV_STARTING:
	case ATM_ADV_STOPPING:
	case ATM_ADV_DELETING:
	default: {
	    ATM_LOG(D, "Unhandled state = %d", state);
	} break;
    }
}

/**
 * @brief Register ATM advertisement state change callback and create
 * advertisement. Results in a state machine transition to S_ADV_CREATING.
 * @note Called when the scan timeout and tries to send advertisement to peer
 * device.
 */
static void periph_create_adv(void)
{
    atm_adv_reg(periph_adv_state_change);
    atm_adv_create_t __ATM_ADV_CREATE_PARAM_CONST *adv_create_ptr;
	ATM_LOG(D, "%s: NVDS tag for create adv param not found. Using Default"
	    , __func__);
	adv_create_ptr = atm_adv_create_param_get(0);
    ble_err_code_t ret = atm_adv_create(adv_create_ptr);
    if (ret != BLE_ERR_NO_ERROR) {
	ATM_LOG(E, "%s: Failed to create adv %#x", __func__, ret);
    }
}

/**
 * @brief Set advertisement data. Results in a state machine transition to
 * S_ADV_DATA_SETTING.
 * @note Called when advertisement has created.
 */
static void periph_set_adv_data(void)
{
    if(kh_begin(rssi_map) == kh_end(rssi_map)) {
        ATM_LOG(E, "No data in map");
        return;
    };

    // Find the n best rssi values
    // Go through array n times, each time finding the highest rssi that is less than the rssi max before it
    lunch_rssi_state_t best_rssi[PAYLOAD_RSSI_CNT] = {0};
    for(int i = 0; i < PAYLOAD_RSSI_CNT; i++) {
        int max_k = -1;
        for (int k = kh_begin(rssi_map); k != kh_end(rssi_map); ++k) {
            if (kh_exist(rssi_map, k)) {
                lunch_rssi_state_t *cur_rssi_state = &kh_value(rssi_map, k);
                lunch_rssi_state_t *curMax_rssi_state = &kh_value(rssi_map, max_k == -1 ? k : max_k);

                int currentRSSI = cur_rssi_state->totalRSSI / cur_rssi_state->beacon_cnt;
                int curMaxRSSI = curMax_rssi_state->totalRSSI / curMax_rssi_state->beacon_cnt;

                if(currentRSSI >= curMaxRSSI) {
                    max_k = k;
                }
            }
        }

        if(max_k != -1) {
            best_rssi[i] = kh_value(rssi_map, max_k);
            kh_del(rssi, rssi_map, max_k);
        } else {
            lunch_rssi_state_t empty_rssi = {
                .totalRSSI = 0xFF,
                .beacon_cnt = 1,
                .student_id = {0, 0, 0, 'E', 'M', 'P', 'T', 'Y', 0, 0}
            };

            best_rssi[i] = empty_rssi;
        }
    }

    // Form data packet
    lunch_peripheral_data_t lunch_periph_arr[PAYLOAD_RSSI_CNT];
    for(int i = 0; i < PAYLOAD_RSSI_CNT; i++) {
        lunch_rssi_state_t *rssi_state = &best_rssi[i];
        lunch_peripheral_data_t student = {
            .rssi_val = rssi_state->totalRSSI / rssi_state->beacon_cnt,
            .student_id = {'E', 'M', 'P', 'T', 'Y', 0}
        };
        
        memcpy(&student.student_id, &(rssi_state->student_id[PERIPH_PREFIX_LEN]), PERIPH_STUDENT_ID_LEN);
        lunch_periph_arr[i] = student;
    }

    // Cleanup map
    for (int k = kh_begin(rssi_map); k != kh_end(rssi_map); ++k) {
        if (kh_exist(rssi_map, k)) {
            kh_del(rssi, rssi_map, k);
        }
    }

    // Set adv data
    static atm_adv_data_t *adv_data;
    adv_data = atm_adv_advdata_param_get(0);
    memset(adv_data->data + ADV_PERIPH_MODE_OFFSET, periph_mode, 1);
    memcpy((adv_data->data + ADV_DATA_START_OFFSET), (uint8_t *) &lunch_periph_arr, sizeof(lunch_periph_arr));

    ATM_LOG(D, "%x %x %x %x %x %x %x %x %x %x", 
        adv_data->data[0],
        adv_data->data[1],
        adv_data->data[2],
        adv_data->data[3],
        adv_data->data[4],
        adv_data->data[5],
        adv_data->data[6],
        adv_data->data[7],
        adv_data->data[8],
        adv_data->data[9]
    );

    ATM_LOG(D, "Output %s and %s (2 out of %d)", lunch_periph_arr[0].student_id, lunch_periph_arr[1].student_id, PAYLOAD_RSSI_CNT);

    ble_err_code_t ret = atm_adv_set_adv_data(adv_act_idx, adv_data);
    if (ret != BLE_ERR_NO_ERROR) {
	ATM_LOG(E, "%s: Set adv data failed: %#x", __func__, ret);
    }

    should_send = false;
}

/**
 * @brief Start advertisement. Results in a state machine transition to
 * S_ADV_STARTING.
 * @note Called when advertisement data has been set.
 */
static void periph_start_adv(void)
{
    atm_adv_start_t __ATM_ADV_START_PARAM_CONST *adv_start_ptr;
	ATM_LOG(D, "%s: NVDS tag for adv start param not found. Using Default",
	    __func__);
	adv_start_ptr = atm_adv_start_param_get(0);
    ble_err_code_t ret = atm_adv_start(adv_act_idx, adv_start_ptr);
    if (ret != BLE_ERR_NO_ERROR) {
	ATM_LOG(E, "%s: Failed to start adv with status %#x", __func__, ret);
    }
}

/**
 * @brief Advertisement started. Results in a state machine transition to
 * S_ADV_STARTED.
 * @note Called when advertisement is turned-on.
 */
static void periph_adv_on(void)
{
    ATM_LOG(D, "%s", __func__);
    atm_asm_set_state_op(S_TBL_IDX, S_ADV_STARTED, OP_END);
}

/**
 * @brief Delete advertisement. Results in a state machine transition to
 * S_ADV_DELETING.
 * @note Called when advertisement timeout.
 */
static void periph_delete_adv(void)
{
    ble_err_code_t ret = atm_adv_delete(adv_act_idx);
    if (ret != BLE_ERR_NO_ERROR) {
	ATM_LOG(E, "%s Fail to delete adv %#x", __func__, ret);
    }
}

/**
 * @brief Set restart timer and unlock hibernation lock. Results in a state
 * machine transition to S_IDLE.
 * @note Called when advertisement has been deleted.
 */
static void periph_unlock_hibernation(void)
{
    ATM_LOG(D, "%s", __func__);
    if (restart_time_csec) {
        atm_pm_unlock(scan_lock_hiber);
        if (sleep_mode != SLEEP_ENABLE_HIBERNATE) {
            sw_timer_set(tid_restart, restart_time_csec);
        }
    }
}

/**
 * @brief Restart timer callback.
 * @note Called when restart timer expired.
 */
static void periph_restart_timer(uint8_t idx, void const *ctx)
{
    atm_asm_move(S_TBL_IDX, OP_SCAN_RESTART_SCAN);
}

/**
 * @brief Initialize the app data structures and start its state machine
 * @note Called after the platform drivers have initialized
 */
static rep_vec_err_t periph_init(void)
{
    // Initialize DIP switch for periph mode
    atm_gpio_setup(PERIPH_MODE_DIP);
    atm_gpio_set_input(PERIPH_MODE_DIP);
    atm_gpio_set_pullup(PERIPH_MODE_DIP);
    periph_mode = (lunch_peripheral_mode_t) atm_gpio_read_gpio(PERIPH_MODE_DIP); // 0 = Extender, 1 = Calibrator
    atm_gpio_clear_pullup(PERIPH_MODE_DIP);
    atm_gpio_clear_input(PERIPH_MODE_DIP);

    ATM_LOG(D, "Initing in %s mode", !periph_mode ? "extender " : "calibrator");

    // Read restart duration from NVDS
    nvds_tag_len_t restart_dur_size = sizeof(restart_time_csec);
    if (nvds_get(NVDS_TAG_APP_BLE_RSTRT_DUR, &restart_dur_size,
	(uint8_t *)&restart_time_csec) != NVDS_OK) {
	restart_time_csec = 0;
    }

    nvds_tag_len_t sleep_mode_size = sizeof(sleep_mode);
    if (nvds_get(PARAM_ID_SLEEP_ENABLE, &sleep_mode_size, &sleep_mode) !=
	NVDS_OK) {
	sleep_mode = SLEEP_ENABLE_HIBERNATE;
    }

    ATM_LOG(D, "BLE restart duration (ms): %" PRIu32, restart_time_csec * 10);

    if (restart_time_csec) {
	tid_restart = sw_timer_alloc(periph_restart_timer, NULL);
	scan_lock_hiber = atm_pm_alloc(PM_LOCK_HIBERNATE);
	atm_pm_set_hib_restart_time(restart_time_csec);
    }

    static state_entry const s_tbl[] = {
        {S_OP(S_INIT, OP_MODULE_INIT), S_GAP_INITIATING, periph_gap_init},
        {S_OP(S_GAP_INITIATING, OP_GAP_INIT_CFM), S_SCAN_STARTING, periph_start_scan},
        {S_OP(S_SCAN_STARTING, OP_START_SCAN_CFM), S_SCAN_ON, periph_scan_on},
        {S_OP(S_SCAN_ON, OP_SCAN_TIMEOUT_GO_HIB), S_IDLE, periph_unlock_hibernation},
        {S_OP(S_SCAN_ON, OP_SCAN_TIMEOUT_CREATE_ADV), S_ADV_CREATING, periph_create_adv},
        {S_OP(S_ADV_CREATING, OP_CREATE_ADV_CFM), S_ADV_DATA_SETTING, periph_set_adv_data},
        {S_OP(S_ADV_DATA_SETTING, OP_SET_ADV_DATA_CFM), S_ADV_STARTING, periph_start_adv},
        {S_OP(S_ADV_STARTING, OP_START_ADV_CFM), S_ADV_STARTED, periph_adv_on},
        {S_OP(S_ADV_STARTED, OP_ADV_TIMEOUT), S_ADV_DELETING, periph_delete_adv},
        {S_OP(S_ADV_DELETING, OP_DELETE_ADV_CFM), S_IDLE, periph_unlock_hibernation},
        {S_OP(S_IDLE, OP_SCAN_RESTART_SCAN), S_SCAN_STARTING, periph_restart_scan},
    };

    atm_asm_init_table(S_TBL_IDX, s_tbl, ARRAY_LEN(s_tbl));
    atm_asm_set_state_op(S_TBL_IDX, S_INIT, OP_END);
    atm_asm_move(S_TBL_IDX, OP_MODULE_INIT);

    // Don't use the app in the ROM
    return RV_DONE;
}

/**
 * user_main()
 * Driver initialization and rep_vec additions
 */
int main(void)
{
    rssi_map = kh_init(rssi);
    RV_APPM_INIT_ADD_LAST(periph_init);

    DEBUG_TRACE("user_main() done");
    return 0;
}
