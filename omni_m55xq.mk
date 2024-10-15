#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from m55xq device
$(call inherit-product, device/samsung/m55xq/device.mk)

PRODUCT_DEVICE := m55xq
PRODUCT_NAME := omni_m55xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M556B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m55xqddxx-user 12 SP2A.220305.013 M556BXXU3AXG7 release-keys"

BUILD_FINGERPRINT := samsung/m55xqddxx/m55xq:12/SP2A.220305.013/M556BXXU3AXG7:user/release-keys
