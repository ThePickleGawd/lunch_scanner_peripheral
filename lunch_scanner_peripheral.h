/**
 *******************************************************************************
 *
 * @file lunch_scanner.h
 *
 * @brief Lunch Scanner Application
 *
 * Copyright (C) Atmosic 2020
 *
 *******************************************************************************
 */

#pragma once

#define ATM_INVALID_SCANIDX 0xFF

typedef enum {
    S_INIT,
    S_IDLE,
    S_GAP_INITIATING,
    S_SCAN_STARTING,
    S_SCAN_ON,
    S_ADV_CREATING,
    S_ADV_DATA_SETTING,
    S_ADV_STARTING,
    S_ADV_STARTED,
    S_ADV_DELETING,
} lunch_peripheral_state_t;

typedef enum {
    OP_MODULE_INIT,
    OP_GAP_INIT_CFM,
    OP_CREATE_ADV_CFM,
    OP_SET_ADV_DATA_CFM,
    OP_START_ADV,
    OP_START_ADV_CFM,
    OP_ADV_TIMEOUT,
    OP_DELETE_ADV_CFM,
    OP_START_SCAN_CFM,
    OP_SCAN_TIMEOUT_GO_HIB,
    OP_SCAN_TIMEOUT_CREATE_ADV,
    OP_SCAN_RESTART_SCAN,
    OP_END = 0xFF
} lunch_peripheral_op_t;
