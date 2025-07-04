#-------------------------------------------------------------------------------
# SPDX-FileCopyrightText: Copyright The TrustedFirmware-M Contributors
#
# SPDX-License-Identifier: BSD-3-Clause
#
#-------------------------------------------------------------------------------

set(MCUBOOT_KEY_S  "${CMAKE_SOURCE_DIR}/bl2/ext/mcuboot/root-${MCUBOOT_SIGNATURE_TYPE}.pem" CACHE FILEPATH "Path to key with which to sign secure binary" FORCE)
set(MCUBOOT_KEY_NS "${CMAKE_SOURCE_DIR}/bl2/ext/mcuboot/root-${MCUBOOT_SIGNATURE_TYPE}_1.pem" CACHE FILEPATH "Path to key with which to sign non-secure binary" FORCE)
set(TFM_BL2_ENCRYPTION_KEY_PATH "${CMAKE_SOURCE_DIR}/bl1/bl1_2/bl2_dummy_encryption_key.bin" CACHE FILEPATH "Path to key with which the BL2 binary enrypted" FORCE)

set(IMPLEMENTATION_ID "0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, \
0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, 0xBB, \
0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, \
0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD," CACHE STRING "")

set(VERIFICATION_SERVICE_URL "www.trustedfirmware.org" CACHE STRING "")

set(ATTESTATION_PROFILE_DEFINITION "PSA_IOT_PROFILE_1" CACHE STRING "")

set(SECURE_DEBUG_PK "0xf4, 0x0c, 0x8f, 0xbf, 0x12, 0xdb, 0x78, 0x2a, \
0xfd, 0xf4, 0x75, 0x96, 0x6a, 0x06, 0x82, 0x36, \
0xe0, 0x32, 0xab, 0x80, 0xd1, 0xb7, 0xf1, 0xbc, \
0x9f, 0xe7, 0xd8, 0x7a, 0x88, 0xcb, 0x26, 0xd0," CACHE STRING "")

set(BOOT_SEED "0xA0, 0xA1, 0xA2, 0xA3, 0xA4, 0xA5, 0xA6, 0xA7, \
0xA8, 0xA9, 0xAA, 0xAB, 0xAC, 0xAD, 0xAE, 0xAF, \
0xB0, 0xB1, 0xB2, 0xB3, 0xB4, 0xB5, 0xB6, 0xB7, \
0xB8, 0xB9, 0xBA, 0xBB, 0xBC, 0xBD, 0xBE, 0xBF," CACHE STRING "")

set(CERTIFICATION_REFERENCE "0604565272829-10010" CACHE STRING "")

set(ENTROPY_SEED "0x12, 0x13, 0x23, 0x34, 0x0a, 0x05, 0x89, 0x78, \
0xa3, 0x66, 0x8c, 0x0d, 0x97, 0x55, 0x53, 0xca, \
0xb5, 0x76, 0x18, 0x62, 0x29, 0xc6, 0xb6, 0x79, \
0x75, 0xc8, 0x5a, 0x8d, 0x9e, 0x11, 0x8f, 0x85, \
0xde, 0xc4, 0x5f, 0x66, 0x21, 0x52, 0xf9, 0x39, \
0xd9, 0x77, 0x93, 0x28, 0xb0, 0x5e, 0x02, 0xfa, \
0x58, 0xb4, 0x16, 0xc8, 0x0f, 0x38, 0x91, 0xbb, \
0x28, 0x17, 0xcd, 0x8a, 0xc9, 0x53, 0x72, 0x66" CACHE STRING "")
