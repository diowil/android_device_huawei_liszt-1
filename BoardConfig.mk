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
# config.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH := device/huawei/liszt

# Assert
# TARGET_OTA_ASSERT_DEVICE :=

# Platform
TARGET_BOARD_PLATFORM := hi3635

# Bootloader
TARGET_NO_BOOTLOADER := true

# Architecture
# (cf. device '/system/build.prop')
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a7

TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := hi3635

# Kernel
# (cf. 'unmkbootimg' of stock recovery)
BOARD_KERNEL_BASE := 0x1fff00
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := 'mem=3072M coherent_pool=512K mmcparts=mmcblk0:p1(vrl),p2(vrl_backup),p6(modemnvm_factory),p9(splash),p10(modemnvm_backup),p11(modemnvm_img),p12(modemnvm_system),p14(3rdmodemnvm),p15(3rdmodemnvmback),p17(modem_om),p20(modemnvm_update),p30(modem),p31(modem_dsp),p32(dfx),p33(3rdmodem) androidboot.selinux=enforcing ate_enable=true'
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00480100 --ramdisk_offset 0x07a00100 --second_offset 0x00d00100 --tags_offset 0x00000100
TARGET_PREBUILT_KERNEL := device/huawei/liszt/recovery/kernel

# Partitions
# (cf. device 'dmesg' and '/proc/partitions')
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
# boot (emmc): /dev/block/mmcblk0p27
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
# recovery (emmc): /dev/block/mmcblk0p28
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
# system (ext4): /dev/block/mmcblk0p38
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
# data (ext4): /dev/block/mmcblk0p40
# WARNING: 16GB/standard model: ??? <> 64GB/premium model: 58351157248
BOARD_USERDATAIMAGE_PARTITION_SIZE := 58351157248
BOARD_FLASH_BLOCK_SIZE := 4096

# TWRP
RECOVERY_VARIANT := twrp
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/twrp.fstab
TW_THEME := landscape_hdpi
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TWHAVE_SELINUX := true
TW_BRIGHTNESS_PATH := "/sys/devices/platform/hisi_fb.524289/leds/lcd_backlight0/brightness"
TW_CUSTOM_BATTERY_PATH := "/sys/devices/fff34000.pmic/battery.88/power_supply/Battery"
TW_MAX_BRIGHTNESS := 255
BOARD_HAS_NO_SELECT_BUTTON := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_EXCLUDE_SUPERSU := true
TW_FBIOPAN := true

# Paths
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"

