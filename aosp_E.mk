#
# Copyright (C) 2019-2022 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit from E device
$(call inherit-product, device/10or/E/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Prebuilt apps
$(call inherit-product-if-exists, vendor/prebuilt-apps/config.mk)
$(call inherit-product-if-exists, vendor/lawnchair/lawnchair.mk)

# GApps
$(call inherit-product-if-exists, vendor/gapps/core/config.mk)

PRODUCT_DEVICE := E
PRODUCT_BRAND := 10or
PRODUCT_MODEL := Tenor E
PRODUCT_NAME := aosp_E
BOARD_VENDOR := 10or
PRODUCT_MANUFACTURER := 10or

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service

# Target
ARCANA_MAINTAINER := popoA3M
TARGET_SUPPORTS_QUICK_TAP := true
USE_PIXEL_CHARGER_IMAGES := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_BLUR := false
PRODUCT_GMS_CLIENTID_BASE := android-huaqin

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SP2A.220505.002 8353555 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/raven/raven:12/SP2A.220505.002/8353555:user/release-keys"
