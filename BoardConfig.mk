# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := Huawei Y360

# Platform
TARGET_BOARD_PLATFORM := mt6582
TARGET_BOARD_PLATFORM_GPU := mali-400mp2

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Kernel
TARGET_PREBUILT_KERNEL := device/Huawei/Y360/prebuilt/kernel
BOARD_CUSTOM_BOOTIMG_MK := device/Huawei/Y360/mkbootimg.mk
BOARD_KERNEL_BASE = 0x10000000
BOARD_KERNEL_OFFSET = 0x00008000
BOARD_RAMDISK_OFFSET = 0x01000000
BOARD_TAGS_OFFSET = 0x00000100
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)
BOARD_KERNEL_CMDLINE += \
	bootopt=64S3,32S1,32S1 \
	androidboot.selinux=permissive

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2634022912
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 12538347520
BOARD_FLASH_BLOCK_SIZE := 131072

# USB Mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0/gadget/lun0/file

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

# TWRP specific build flags
TARGET_RECOVERY_FSTAB := device/Huawei/Y360/recovery/root/etc/recovery.fstab
TW_THEME := portrait_hdpi
TW_EXCLUDE_MTP := true
TW_NO_REBOOT_BOOTLOADER := true
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
