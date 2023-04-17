include ../../user/common.mk

DEBUG := 1

DRIVERS := atm_ble interrupt sw_timer timer atm_pm atm_gpio lunch
LIBRARIES := prf

FRAMEWORK_MODULES := \
	atm_scan \
	atm_asm \
	atm_common \
	atm_debug \
	atm_gap \
	atm_log \
	ble_gap \
	atm_adv \
	

UU_TEST := lunch_scanner_peripheral

INCLUDES += .

CFLAGS += \
	-DCFG_NO_GAP_SEC \
	-DCFG_NO_GATTC \
	-DCFG_GAP_ROLE=BLE_GAP_ROLE_ALL \
	-DCFG_GAP_ADV_MAX_INST=1 \
	-DCFG_GAP_SCAN_MAX_INST=1 \
	-DCFG_ADV_CREATE_PARAM_CONST=0 \
	-DCFG_ADV_START_PARAM_CONST=0 \
	-DCFG_ADV_DATA_PARAM_CONST=0 \
	-DGAP_ADV_PARM_NAME="cfg_adv_params.h" \
	-DGAP_SCAN_PARM_NAME="cfg_gap_params.h" \

ifdef ROUND_ROBIN
CFLAGS += -DROUND_ROBIN
endif

flash_nvds.data :=  \
	09-APP_BLE_RSTRT_DUR/100ms \
	12-EXT_WAKEUP_ENABLE/enable2 \
	a4-SCAN_SETTING/500ms_scan \
	11-SLEEP_ENABLE/ret \
	01-BD_ADDRESS/beacon_201 \

# 05-APP_BLE_ACT_STRT_CMD/100ms_adv \
# 06-APP_BLE_ACT_CRT_CMD/legacy_nc_ns_30ms \

# SRC
SRC_TOP = src
#SRC_BT = src/bt
#SRC_NON_BT = src/non_bt
INCLUDES += $(SRC_TOP)
C_SRCS += \
	$(SRC_TOP)/lunch_parser.c \

include $(COMMON_USER_DIR)/framework.mk
