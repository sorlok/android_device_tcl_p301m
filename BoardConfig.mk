USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/tcl/p301m/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := p301m

#TODO: This doesn't work, but we need a way to specify. For now, manually edit build/tools/releasetools/common.py and set hte fstab version to 1.
#PRIVATE_RECOVERY_FSTAB_VERSION := 1

#TODO: This doesn't do exactly what we want; I need it to include the "USE_EXT4" flag in bootable/recovery/udater/Android.mk, but 
#      for some reason the *system* partition is using ext4 (userdata seems to build in ext4 regardless, due to fsab.)
#      For now modify that other .mk file; later we can try upgrading to a version 2 fstab file (which fixes a few things).
#TARGET_USERIMAGES_USE_EXT4 := true

#Testing:
PRIVATE_RECOVERY_FSTAB_VERSION := 2
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_KERNEL_CMDLINE := console=ttyMT0,921600n1 vmalloc=496M slub_max_order=0 lcm=1-ili9806e_wvga_dsi_vdo_zgd fps=6134 bootprof.pl_t=3969 bootprof.lk_t=2737 printk.disable_uart=1 boot_reason=2
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 4096

#The Python tool dislikes hex integers
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1048576000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 964689920
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/tcl/p301m/kernel

-include vendor/tcl/p301m/BoardConfigVendor.mk

BOARD_HAS_NO_SELECT_BUTTON := true
