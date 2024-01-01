#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PACKAGE_OVERLAYS += device/google/shusky/husky/overlay-elixir

TARGET_VENDOR_PROP += device/google/shusky/husky/vendor.prop

$(call inherit-product, device/google/shusky/device-elixir.mk)
