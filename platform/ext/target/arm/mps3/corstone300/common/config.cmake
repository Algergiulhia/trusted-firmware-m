#-------------------------------------------------------------------------------
# Copyright (c) 2021-2023, Arm Limited. All rights reserved.
# Copyright (c) 2022 Cypress Semiconductor Corporation (an Infineon company)
# or an affiliate of Cypress Semiconductor Corporation. All rights reserved.
#
# SPDX-License-Identifier: BSD-3-Clause
#
#-------------------------------------------------------------------------------

# Make FLIH IRQ test as the default IRQ test on Corstone-310
set(DEFAULT_NS_SCATTER                ON    CACHE BOOL    "Use default NS scatter files for target")
set(PSA_API_TEST_TARGET           "cs3x0"   CACHE STRING  "PSA_API_TARGET name")
set(PROVISIONING_KEYS_CONFIG      "${CMAKE_SOURCE_DIR}/platform/ext/target/arm/mps3/corstone300/common/provisioning/provisioning_config.cmake"   CACHE FILEPATH  "The config file which has the keys and seeds for provisioning")

set(FLASH_S_PARTITION_SIZE   "0x80000"    CACHE STRING    "Secure code size")
set(FLASH_NS_PARTITION_SIZE  "0x300000"   CACHE STRING    "Non-secure code size")

if(BL2)
    set(BL2_TRAILER_SIZE 0x800 CACHE STRING "Trailer size")
else()
    #No header if no bootloader, but keep IMAGE_CODE_SIZE the same
    set(BL2_TRAILER_SIZE 0xC00 CACHE STRING "Trailer size")
endif()

# Platform-specific configurations
set(CONFIG_TFM_USE_TRUSTZONE          ON)
set(TFM_MULTI_CORE_TOPOLOGY           OFF)

set(PLATFORM_SLIH_IRQ_TEST_SUPPORT    ON)
set(PLATFORM_FLIH_IRQ_TEST_SUPPORT    ON)

set(MCUBOOT_VERSION "70acc4146e4620699af198c30e08c3da7376597c"   CACHE STRING "The version of MCUboot to use")
