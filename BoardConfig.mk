# inherit common device tree
-include device/oppo/msm8974-common/BoardConfigCommon.mk

LOCAL_PATH := device/oppo/find7op

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := find7op
TARGET_OTA_ASSERT_DEVICE := bacon,A0001

# Partition info
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00F00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00F00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1388314624
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472
BOARD_FLASH_BLOCK_SIZE := 131072

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Recovery:Start

TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/configs/fstab.find7op
RECOVERY_SDCARD_ON_DATA := true