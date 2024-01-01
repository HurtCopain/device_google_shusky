#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff.
TARGET_DISABLE_EPPE := true

$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Bootanimation
BOOTANIMATION := 1440

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1440


# Project-Elixir Official Stuff
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ACORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_USES_BLUR := true

# Inherit device configuration
$(call inherit-product, device/google/shusky/aosp_husky.mk)
$(call inherit-product, device/google/zuma/elixir_common.mk)

include device/google/shusky/husky/device-elixir.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_NAME := elixir_husky

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=husky \
    PRIVATE_BUILD_DESC="husky-user 14 UQ1A.231205.015 11084887 release-keys"

BUILD_FINGERPRINT := google/husky/husky:14/UQ1A.231205.015/11084887:user/release-keys

$(call inherit-product, vendor/google/husky/husky-vendor.mk)
