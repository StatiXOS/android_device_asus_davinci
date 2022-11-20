#
# Copyright (C) 2022 StatiXOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/asus/davinci/device.mk)

# Inherit some common StatiX stuff.
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

PRODUCT_BRAND := asus
PRODUCT_DEVICE := davinci
PRODUCT_MANUFACTURER := asus
PRODUCT_MODEL := ASUS_AI2202
PRODUCT_NAME := statix_davinci

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=ASUS_AI2202 \
    TARGET_PRODUCT=WW_AI2202

BUILD_FINGERPRINT := asus/WW_AI2202/ASUS_AI2202:12/SKQ1.220406.001/32.2050.2050.34:user/release-keys