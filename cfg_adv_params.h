#pragma once

#include "ble_gap.h"

/*
 * ADV0 (Normal Beaconing)
 *******************************************************************************
 */

// Units in dbm (ex. 0x04 = 4dbm or 0xFF = -1dbm)
// For negative number 0xFF-val+1
// 0xEC --> -20dbm
#define CFG_ADV0_CREATE_MAX_TX_POWER 0x00
#define CFG_ADV0_CREATE_PROPERTY ADV_LEGACY_NON_CONN_SCAN_MASK
#define CFG_ADV0_START_DURATION 100 // 1s (unit of 10ms) TODO: change

#define ADV0_INTERVAL 100 // ms
#define CFG_ADV0_CREATE_INTERVAL_MIN ((uint32_t)ADV0_INTERVAL*1000/625)
#define CFG_ADV0_CREATE_INTERVAL_MAX ((uint32_t)ADV0_INTERVAL*1000/625)

#define CFG_ADV0_DATA_ADV_PAYLOAD \
    /* Complete service list: 0x2af5 = fixed string 16 */ \
    0x03, 0x03, 0xf5, 0x2a, \
    /* Service Data */ \
    0x13, 0x2a, 0xf5, 0x2a, \
    /* First byte is 0xFF, next will be RSSI */ \
    0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, \
    /* 10 byte Student ID in ascii (pad with 0x00)*/ \
    '9', '5', '0', '0', '0', '0', '0', '0', 0x00, 0x00
    
#define CFG_ADV0_DATA_SCANRSP_PAYLOAD \
    0x09,0xff,0x00,0x60,'A','T','M','B','L','E'
