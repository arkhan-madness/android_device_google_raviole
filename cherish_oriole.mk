#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Cherish stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole.mk)
$(call inherit-product, device/google/gs101/cherish_common.mk)

include device/google/raviole/oriole/device-cherish.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6
PRODUCT_NAME := cherish_oriole

# Cherish stuff
TARGET_USES_MINI_GAPPS := true
USE_PIXEL_CHARGING := true
EXTRA_UDFPS_ANIMATIONS := true
CHERISH_MAINTAINER := AgeuSilva
TARGET_USES_BLUR := true

# Pixel stuff
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_GAPPS_ARCH := arm64

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 14 UQ1A.240105.002 11129216 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:14/UQ1A.240105.002/11129216:user/release-keys

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
