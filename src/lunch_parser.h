/**
 *******************************************************************************
 *
 * @file lunch_parser.h
 *
 * @brief Parse Lunch Beacon Advertisements
 *
 * Copyright (C) Atmosic 2021-2022
 *
 *******************************************************************************
 */

#pragma once

#define SCHOOL_ID_LEN 6
#define STUDENT_ID_LEN 10

typedef struct {
    uint8_t school_id[SCHOOL_ID_LEN];
    uint8_t student_id[STUDENT_ID_LEN];
} __PACKED nvds_lunch_data_t;

/**
 * @brief Try to parse lunch data from advertisement data
 * @returns true on success, false otherwise
*/
bool try_parse_lunch_data(uint8_t const data[], uint8_t len, nvds_lunch_data_t* out);

/**
 * @brief Checks first 3 bytes against vendor id
 * @returns true on success, false otherwise
*/
bool matches_bd_vendor(const uint8_t addr[]);

