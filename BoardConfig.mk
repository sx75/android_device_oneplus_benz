#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8550-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/benz

# Assert
TARGET_OTA_ASSERT_DEVICE := OP5D3FL1,benz

# Display
TARGET_SCREEN_DENSITY := 450

# Kernel
TARGET_KERNEL_CONFIG += vendor/oplus/benz.config

# Partitions
BOARD_ONEPLUS_DYNAMIC_PARTITIONS_SIZE := 15028191232
BOARD_SUPER_PARTITION_SIZE := 15032385536

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Vibrator
SOONG_CONFIG_NAMESPACES += OPLUS_LINEAGE_VIBRATOR_HAL
SOONG_CONFIG_OPLUS_LINEAGE_VIBRATOR_HAL := \
    USE_EFFECT_STREAM
SOONG_CONFIG_OPLUS_LINEAGE_VIBRATOR_HAL_USE_EFFECT_STREAM := true

# Include the proprietary files BoardConfig.
include vendor/oneplus/benz/BoardConfigVendor.mk
