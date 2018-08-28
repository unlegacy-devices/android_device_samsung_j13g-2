# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from SPRD common configs
-include device/samsung/sprd-common/BoardConfigCommon.mk

# Inherit from the proprietary version
-include vendor/samsung/j13g/BoardConfigVendor.mk

# Platform
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := sc8830
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := sc7727s
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp
BOARD_VENDOR := samsung

# Config u-boot
TARGET_NO_BOOTLOADER := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1090519040
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2445279232
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8 androidboot.selinux=permissive androidboot.hardware=sc8830
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_CONFIG := j13g-dt_hw01_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/j13g
# Kernel
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/j13g/mkbootimg.mk
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000
BOARD_KERNEL_SEPARATED_DT := true
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm

# RIL
BOARD_RIL_CLASS += ../../../device/samsung/j13g/ril
COMMON_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING

# FM radio
BOARD_HAVE_FM_BCM := true
BOARD_HAVE_FMRADIO_BCM := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/j13g/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/j13g/bluetooth/libbt_vndcfg.txt

# Wifi
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WLAN_DEVICE_REV := bcm4343
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_NVRAM_PATH_PARAM := "/sys/module/dhd/parameters/nvram_path"
WIFI_DRIVER_NVRAM_PATH := "/system/etc/wifi/nvram_net.txt"
WIFI_BAND := 802_11_ABG
BOARD_HAVE_SAMSUNG_WIFI := true

# GPS
#TARGET_SPECIFIC_HEADER_PATH := device/samsung/j13g/include

# Graphics
HWUI_COMPILE_FOR_PERF := true
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# HWComposer
BOARD_EGL_CFG := device/samsung/j13g/configs/egl.cfg
USE_SPRD_HWCOMPOSER := true
USE_SPRD_DITHER := true
USE_OVERLAY_COMPOSER_GPU := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Lights
TARGET_HAS_BACKLIT_KEYS := false

# Resolution
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Audio
BOARD_USE_LIBATCHANNEL_WRAPPER := true

#Disable it becouse SPRD legacy audio policy causes AudioFX not working properly.
#USE_LEGACY_AUDIO_POLICY := 1

# Media
COMMON_GLOBAL_CFLAGS += -DBOARD_CANT_REALLOCATE_OMX_BUFFERS

# Camera

TARGET_BOARD_CAMERA_HAL_VERSION := HAL1.0
#android zsl capture
TARGET_BOARD_CAMERA_ANDROID_ZSL_MODE := false
#back camera rotation capture
TARGET_BOARD_BACK_CAMERA_ROTATION := false
#front camera rotation capture
TARGET_BOARD_FRONT_CAMERA_ROTATION := false
#rotation capture
TARGET_BOARD_CAMERA_ROTATION_CAPTURE := false
# select camera 2M,3M,5M,8M
CAMERA_SUPPORT_SIZE := 5M
#
TARGET_BOARD_NO_FRONT_SENSOR := false
#
TARGET_BOARD_CAMERA_FLASH_CTRL := true
#select camera zsl cap mode
TARGET_BOARD_CAMERA_CAPTURE_MODE := false
#face detect
TARGET_BOARD_CAMERA_FACE_DETECT := false
#
TARGET_BOARD_CAMERA_USE_IOMMU := true
TARGET_BOARD_CAMERA_DMA_COPY := true
#
TARGET_BOARD_BACK_CAMERA_INTERFACE := ccir
TARGET_BOARD_FRONT_CAMERA_INTERFACE := ccir
#select continuous auto focus
TARGET_BOARD_CAMERA_CAF := true
#
CONFIG_CAMERA_ISP := true
COMMON_GLOBAL_CFLAGS += -DCONFIG_CAMERA_ISP

# End Camera #

# Board specific features
BOARD_USE_SAMSUNG_COLORFORMAT := true
COMMON_GLOBAL_CFLAGS += -DSPRD_HARDWARE

# Init
TARGET_NR_SVC_SUPP_GIDS := 24
TARGET_PROVIDES_INIT_RC := true
TARGET_NEEDS_PROP_INIT_HACK := true

# Recovery
BOARD_HAS_DOWNLOAD_MODE := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_SUPPRESS_EMMC_WIPE := true
TARGET_RECOVERY_FSTAB := device/samsung/j13g/rootdir/recovery.fstab

# Assert
TARGET_OTA_ASSERT_DEVICE := j13g,j13gxx,J100H,SM-J100H

# We need the "system" folder not system.new.dat
BLOCK_BASED_OTA := false

# We have already pre builded WEBVIEWCHROMIUM
#PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

# SELinux
BOARD_SEPOLICY_DIRS += device/samsung/j13g/sepolicy

# Enable dex-preoptimization to speed up the first boot sequence
WITH_DEXPREOPT := true
WITH_DEXPREOPT_PIC := true
WITH_DEXPREOPT_COMP := false

# Healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd.sc8830

# Power
TARGET_POWERHAL_VARIANT := sprd

# Use dlmalloc
MALLOC_IMPL := dlmalloc
BOARD_USES_LEGACY_MMAP := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_NO_CHARGER_LED := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/batt_lp_charging
BACKLIGHT_PATH := /sys/class/backlight/panel/brightness

# Building recovery image
TARGET_NO_RECOVERY := false

# UMS
BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"
