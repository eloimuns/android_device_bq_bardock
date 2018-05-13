#
# Copyright (C) 2017 The LineageOS Project
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

LOCAL_PATH := device/bq/bardock

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include
TARGET_OTA_ASSERT_DEVICE := bardock

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Board
TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506

TARGET_BOOTLOADER_BOARD_NAME := msm8953
TARGET_NO_BOOTLOADER := true

# Encryption
TARGET_HW_DISK_ENCRYPTION := true

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Audio
BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_HIFI_AUDIO := true
AUDIO_FEATURE_ENABLED_EXT_HDMI := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_EXTN_FLAC_DECODER := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_WMA_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_APE_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_SSR := false
AUDIO_FEATURE_ENABLED_AUDIOSPHERE := true
AUDIO_FEATURE_ENABLED_VBAT_MONITOR := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_CUSTOMSTEREO := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HDMI_EDID := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_SPKR_PROTECTION := true
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
AUDIO_FEATURE_ENABLED_DEV_ARBI := true
AUDIO_FEATURE_ENABLED_SOURCE_TRACKING := true
AUDIO_FEATURE_ENABLED_EXT_AMPLIFIER := false

#AUDIO_FEATURE_ENABLED_VOICE_CONCURRENCY := true
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true

# Camera
TARGET_USES_QTI_CAMERA_DEVICE := true
USE_DEVICE_SPECIFIC_CAMERA := true

# Display
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true
TARGET_USES_HWC2 := true
TARGET_USES_GRALLOC1 := true

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
TARGET_NO_RPC := true
USE_DEVICE_SPECIFIC_GPS := true

# HIDL
DEVICE_MANIFEST_FILE := $(LOCAL_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(LOCAL_PATH)/compatibility_matrix.xml
TARGET_FS_CONFIG_GEN := $(LOCAL_PATH)/config.fs

# Keymaster
TARGET_PROVIDES_KEYMASTER := true

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78af000 androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE :=  2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/bq/msm8953
TARGET_KERNEL_CONFIG := bardock_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-

# Media
TARGET_USES_MEDIA_EXTENSIONS := true

# NFC
BOARD_NFC_CHIPSET := pn548
TARGET_USES_NQ_NFC := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 57838902272
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/fstab.qcom
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Peripheral manager
TARGET_PER_MGR_ENABLED := true

# Power
TARGET_HAS_NO_WIFI_STATS := true
TARGET_USES_INTERACTION_BOOST := true

# Properties
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QC_TIME_SERVICES := true

# RIL
TARGET_RIL_VARIANT := caf

# Sensor
USE_SENSOR_MULTI_HAL := true

# SELinux
include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepolicy

# Tap to wake
TARGET_TAP_TO_WAKE_NODE := "/sys/android_touch/wakeup_gesture_enable"

# USB Mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file

# Wi-Fi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_WLAN_DEVICE := qcwcn
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
TARGET_USES_WCNSS_CTRL  := true
PRODUCT_VENDOR_MOVE_ENABLED := true

# Inherit from the proprietary version
-include vendor/bq/bardock/BoardConfigVendor.mk
