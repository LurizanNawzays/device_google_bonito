#
# Copyright 2016 The Android Open Source Project
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

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 560dpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

PRODUCT_HARDWARE := sargo

include device/google/bonito/device-common.mk

DEVICE_PACKAGE_OVERLAYS += device/google/bonito/sargo/overlay

# Audio XMLs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/mixer_paths_tavil_b1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tavil_b1.xml \
    $(LOCAL_PATH)/audio_platform_info_tavil_b1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_tavil_b1.xml

PRODUCT_COPY_FILES += \
    device/google/bonito/nfc/libnfc-nxp.sargo.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.com.google.ime.height_ratio=1.2