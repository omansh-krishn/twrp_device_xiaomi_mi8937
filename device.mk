#
# Copyright (C) 2022 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Crypto
MITHORIUM_INCLUDE_CRYPTO_FBE := true
ifneq ($(TARGET_KERNEL_VERSION),4.19)
MITHORIUM_INCLUDE_CRYPTO_FDE := true
endif
MITHORIUM_LEGACY_CRYPTO := true

# Inherit from mithorium-common
$(call inherit-product, device/xiaomi/mithorium-common/mithorium.mk)

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_RETROFIT_DYNAMIC_PARTITIONS := true

# Emulated storage
ifeq ($(TARGET_KERNEL_VERSION),4.19)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
endif

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

#CRYPTFS
TARGET_CRYPTFS_HW_PATH := device/xiaomi/mithorium-common/cryptfs_hw


$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

TW_DEVICES := santoni land
TWRP_DEVICES := santoni land

# TWRP specific build flags
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_USE_TOOLBOX := true
