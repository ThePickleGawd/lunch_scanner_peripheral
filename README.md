# LunchTrak Peripheral

The peripheral scanner works along with the main LunchTrak Scanner to help make check-in as reliable as possible. There are two different settings: extender and calibrator mode.

## Extender Mode

The extension scanner will detect BLE packets and report the ones with highest RSSI to the main scanner. The purpose of this scanner is to prevent situations where the student's body blocks the BLE packets from reaching the main scanner. They should be placed directly across the main scanner.

## Calibrator Mode

The calibrator scanner is needed because of how unreliable RSSI can be for detecting proximity. This scanner will continously report the maximum average RSSI that it detects for each beacon to the main scanner. The scanner will then know to check in a student when they hit this new RSSI threshold (with a small buffer).

This scanner needs to come before the main scanner in line.

## State Machine

```mermaid
stateDiagram
    [*] --> S_INIT
    S_INIT --> S_GAP_INITIATING: OP_MODULE_INIT
    S_GAP_INITIATING --> S_SCAN_STARTING: OP_GAP_INIT_CFM
    S_SCAN_STARTING --> S_SCAN_ON: OP_START_SCAN_CFM
    S_SCAN_ON --> S_IDLE: OP_SCAN_TIMEOUT_GO_HIB
    S_SCAN_ON --> S_ADV_CREATING: OP_SCAN_TIMEOUT_CREATE_ADV
    S_ADV_CREATING --> S_ADV_DATA_SETTING: OP_CREATE_ADV_CFM
    S_ADV_DATA_SETTING --> S_ADV_STARTING: OP_SET_ADV_DATA_CFM
    S_ADV_STARTING --> S_ADV_STARTED: OP_START_ADV_CFM
    S_ADV_STARTED --> S_ADV_DELETING: OP_ADV_TIMEOUT
    S_ADV_DELETING --> S_IDLE: OP_DELETE_ADV_CFM
    S_IDLE --> S_SCAN_STARTING: OP_SCAN_RESTART_SCAN
```

# Notes and TODOs

## TODO:

- Extender and calibrator mode + testing for accuracy improvements
- Document adv packet 


Calibrator
Listen and store max rssi for all devices
And the adv step, select top 3 who exceed their current high