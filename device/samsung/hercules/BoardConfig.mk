# inherit from the proprietary version
-include vendor/samsung/skyrocket/BoardConfigVendor.mk

USE_CAMERA_STUB := true

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := hercules
TARGET_HAVE_HDMI_OUT := true
TARGET_USES_OVERLAY := true
TARGET_NO_RADIOIMAGE := true
TARGET_HAVE_TSLIB := false
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_SPECIFIC_HEADER_PATH := device/samsung/skyrocket/include

# Connectivity - Wi-Fi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext

# SGH-T989 uses bcm4330
BOARD_WLAN_DEVICE := bcm4330
WIFI_DRIVER_MODULE_PATH     := "/lib/modules/dhd.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/bcm4330_sta.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wifi/bcm4330_aps.bin"
WIFI_DRIVER_MODULE_NAME     :=  "dhd"
WIFI_DRIVER_MODULE_ARG      :=  "firmware_path=/system/etc/wifi/bcm4330_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"

# Vold
BOARD_VOLD_MAX_PARTITIONS := 12
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Set this up here so that BoardVendorConfig.mk can override it
BOARD_USES_GENERIC_AUDIO := false
BOARD_PREBUILT_LIBAUDIO := true
BOARD_USE_YAMAHAPLAYER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_FORCE_STATIC_A2DP := true

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := si4709

# Define egl.cfg location
BOARD_EGL_CFG := device/samsung/skyrocket/prebuilt/system/lib/egl/egl.cfg
BOARD_USES_OVERLAY := true
#USE_OPENGL_RENDERER := true
#BOARD_USES_HGL := true

COMMON_GLOBAL_CFLAGS += \
    -DMISSING_EGL_EXTERNAL_IMAGE \
    -DMISSING_EGL_PIXEL_FORMAT_YV12 \
    -DMISSING_GRALLOC_BUFFERS

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true

# Legacy touchscreen support
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Enable NFC
BOARD_HAVE_NFC := true

# Evervolv specific
BOARD_KEEP_PARCEL_GB_COMPATIBLE := true

# Assert
TARGET_OTA_ASSERT_DEVICE := hercules

# Prebuilt Ril
TARGET_PROVIDES_LIBRIL := vendor/samsung/skyrocket/proprietary/libril.so

BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_BASE := 0x48000000
BOARD_PAGE_SIZE := 2048

# Define Prebuilt kernel locations
TARGET_PREBUILT_KERNEL := device/samsung/hercules/prebuilt/root/kernel

# For recovery-chargemode
TARGET_RECOVERY_INITRC := device/samsung/hercules/prebuilt/recovery/root/init.rc

# cat /proc/emmc
#dev:        size     erasesize name
#mmcblk0p22: 00fffc00 00000200 "recovery"
#mmcblk0p8: 01000000 00000200 "boot"
#mmcblk0p24: 5ffffc00 00000200 "system"
#mmcblk0p26: 13fffe00 00000200 "cache"
#mmcblk0p25: 9ffffe00 00000200 "userdata"


TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk0p28
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
