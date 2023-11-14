#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from mdh40lm device
$(call inherit-product, device/lge/mdh40lm/device.mk)

PRODUCT_DEVICE := mdh40lm
PRODUCT_NAME := twrp_mdh40lm
PRODUCT_BRAND := lge
PRODUCT_MODEL := LM-Q630
PRODUCT_MANUFACTURER := lge

PRODUCT_GMS_CLIENTID_BASE := android-lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mdh40lm-user 11 RKQ1.210420.001 2202005108aaf release-keys"

BUILD_FINGERPRINT := lge/mdh40lm/mdh40lm:11/RKQ1.210420.001/2202005108aaf:user/release-keys
