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

#define PAYLOAD_RSSI_CNT 3 // How many IDs in packet
#define DEFAULT_PERIPH_MODE 0 // Extender or calibrator
#define NEEDS_PREFIX 1 // The packet does not contain "950" prefix

/*
What if a school does not have a common prefix?
Then the prefix is blank. Duh

So then the prefix should be in a map of school to prefix

map {
   "GUNN": 950
   "PALY": 950
   "LYNBROOK": IDK MAN
}
*/

#define CFG_ADV0_DATA_ADV_PAYLOAD \
   0x1C, 0xFF, DEFUALT_PERIPH_MODE, NEEDS_PREFIX, PAYLOAD_RSSI_CNT, \
   -80, '0', '0', '0', '0', '0', '0', 0, \
   -80, '0', '0', '0', '0', '0', '0', 0, \
   -80, '0', '0', '0', '0', '0', '0', 0, \
    
#define CFG_ADV0_DATA_SCANRSP_PAYLOAD \
    0x09,0xff,0x00,0x60,'L','U','N','C','H','P'
