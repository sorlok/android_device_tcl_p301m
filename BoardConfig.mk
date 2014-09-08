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

BOARD_KERNEL_CMDLINE := console=ttyMT0,921600n1 vmalloc=496M slub_max_order=0 lcm=1-ili9806e_wvga_dsi_vdo_zgd fps=6134 bootprof.pl_t=3969 bootprof.lk_t=2737 printk.disable_uart=1 boot_reason=2
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x1000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x1000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x3E800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x39800000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/tcl/p301m/kernel

-include vendor/tcl/p301m/BoardConfigVendor.mk

BOARD_HAS_NO_SELECT_BUTTON := true
