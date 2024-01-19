#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

TARGET_DISABLE_EPPE := true

TARGET_SUPPORTS_NOW_PLAYING := true
SHIP_CARRIERSETTINGS  := true
TARGET_IS_PIXEL := true
TARGET_IS_PIXEL_8 := true
TARGET_PIXEL_STAND_SUPPORTED := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_BLUR := true
WITH_GMS := true

CUSTOM_BUILD_TYPE := Official
TARGET_BOOT_ANIMATION_RES := 1440

# Inherit device configuration
$(call inherit-product, device/google/shusky/aosp_husky.mk)
$(call inherit-product, device/google/zuma/evolution_common.mk)

include device/google/shusky/husky/device-evolution.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_NAME := husky

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=husky \
    PRIVATE_BUILD_DESC="husky-user 14 UQ1A.240105.004 11206848 release-keys"

BUILD_FINGERPRINT := google/husky/husky:14/UQ1A.240105.004/11206848:user/release-keys

$(call inherit-product, vendor/google/husky/husky-vendor.mk)
