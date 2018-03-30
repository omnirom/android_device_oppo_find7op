# Copyright (C) 2016 The CyanogenMod Project
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

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 1080p

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/oppo/find7op/device.mk)

PRODUCT_NAME := omni_find7op
PRODUCT_DEVICE := find7op
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := A0001

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

#PRODUCT_BRAND := oneplus
#TARGET_VENDOR := oppo
#TARGET_VENDOR_PRODUCT_NAME := find7op
#TARGET_VENDOR_DEVICE_NAME := A0001
#PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=A0001 PRODUCT_NAME=find7op

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_PRODUCT=FIND7OP \
    TARGET_DEVICE=A0001 \
    BUILD_FINGERPRINT=oneplus/bacon/A0001:6.0.1/MHC19Q/ZNH2KAS1KN:user/release-keys \
    PRIVATE_BUILD_DESC="bacon-user 6.0.1 MHC19Q ZNH2KAS1KN release-keys"
endif

# Inherit from proprietary blobs
$(call inherit-product, vendor/oppo/find7op/find7op-vendor.mk)
