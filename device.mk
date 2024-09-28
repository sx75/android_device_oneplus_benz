#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/card-defs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/card-defs.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_ODM)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/resourcemanager.xml:$(TARGET_COPY_OUT_ODM)/etc/resourcemanager.xml \
    $(LOCAL_PATH)/audio/usecaseKvManager.xml:$(TARGET_COPY_OUT_ODM)/etc/usecaseKvManager.xml \
    $(LOCAL_PATH)/audio/usecaseKvManager.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usecaseKvManager.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Device-specific settings
PRODUCT_PACKAGES += \
    BenzParts

# IR
PRODUCT_PACKAGES += \
    consumerir.default

PRODUCT_COPY_FILES += \
    prebuilts/vndk/v33/arm64/arch-arm64-armv8-a/shared/vndk-core/android.hardware.ir-V1-ndk.so:$(TARGET_COPY_OUT_ODM)/lib64/android.hardware.ir-V1-ndk.so

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_PACKAGES += \
    OPlusFrameworksResTarget \
    OPlusSettingsProviderResTarget \
    OPlusSettingsResTarget \
    OPlusSystemUIResTarget

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Vibrator
$(call soong_config_set,OPLUS_LINEAGE_VIBRATOR_HAL,USE_EFFECT_STREAM,true)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/oneplus/sm7550-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/oneplus/benz/benz-vendor.mk)
