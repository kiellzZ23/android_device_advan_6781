#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/advan/X1/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Enable features
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
USE_PIXEL_CHARGING := true
PERF_ANIM_OVERRIDE := true
TARGET_ENABLE_BLUR := true
WITH_GMS := false
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
TARGET_DISABLE_MATLOG := true
TARGET_SUPPORTS_GOOGLE_TELEPHONY := false
SURFACE_FLINGER_BOOST := true

PRODUCT_NAME := lineage_X1
PRODUCT_DEVICE := X1
PRODUCT_MANUFACTURER := ADVAN
PRODUCT_BRAND := ADVAN
PRODUCT_MODEL := 6781

PRODUCT_GMS_CLIENTID_BASE := android-advandigital

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="ADVAN_X1-user 14 UP1A.231005.007 1751475349 release-keys" \
    BuildFingerprint=ADVAN/ADVAN_X1/ADVAN_X1:14/UP1A.231005.007/1751475349:user/release-keys \
    DeviceName=6781 \
    DeviceProduct=ADVAN_X1 \
    SystemDevice=ADVAN_X1 \
    SystemName=ADVAN_X1
