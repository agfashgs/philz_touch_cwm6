############################################
# Device Specific Config                   #
# These can go under device BoardConfig.mk #
# By PhilZ for PhilZ Touch recovery        #
############################################

#Galaxy S2 International - i9100
ifeq ($(TARGET_PRODUCT), cm_i9100)
    TARGET_COMMON_NAME := i9100
    BOOTLOADER_CMD_ARG := "download"
    BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"
    BOARD_HAS_LOW_RESOLUTION := true
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/panel/brightness"

#Galaxy S2 - i9100g
else ifeq ($(TARGET_PRODUCT), cm_i9100g)
    TARGET_COMMON_NAME := i9100G
    BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"
    BOOTLOADER_CMD_ARG := "download"
    BOARD_HAS_LOW_RESOLUTION := true
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/panel/brightness"

#Galaxy Note - n7000
else ifeq ($(TARGET_PRODUCT), cm_n7000)
    TARGET_COMMON_NAME := n7000
    BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"
    BOOTLOADER_CMD_ARG := "download"
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/panel/brightness"

#Galaxy R / Z - i9103 (cm 10.1 only)
else ifeq ($(TARGET_PRODUCT), cm_i9103)
    TARGET_COMMON_NAME := i9103
    BOARD_UMS_LUNFILE := "/sys/devices/platform/fsl-tegra-udc/gadget/lun%d/file"
    BOOTLOADER_CMD_ARG := "download"
    BOARD_HAS_LOW_RESOLUTION := true
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/pwm-backlight/brightness"

#Galaxy Exhibit Variants - codinaxxx (no cm device tree)
else ifeq ($(TARGET_PRODUCT), cm_codinamtr)
    TARGET_COMMON_NAME := SGH-T599N
    BOARD_UMS_LUNFILE := "/sys/devices/platform/musb-ux500.0/musb-hdrc/gadget/lun%d/file"
    BOOTLOADER_CMD_ARG := "download"
    BOARD_HAS_LOW_RESOLUTION := true
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/panel/brightness"

#Galaxy Grand Duos - i9082 (no cm device tree)
else ifeq ($(TARGET_PRODUCT), cm_i9082)
    TARGET_COMMON_NAME := Galaxy_I9082
    BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun0/file"
    BOOTLOADER_CMD_ARG := "download"
    BOARD_HAS_LOW_RESOLUTION := true
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/panel/brightness"

#Galaxy S Plus - i9001 (ariesve) (no cm device tree)
else ifeq ($(TARGET_PRODUCT), cm_ariesve)
    TARGET_COMMON_NAME := Galaxy_I9001
    BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"
    BOOTLOADER_CMD_ARG := "download"
    BOARD_HAS_LOW_RESOLUTION := true
    BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"

#Galaxy S Blaze 4G - SGH T-769
else ifeq ($(TARGET_PRODUCT), cm_t769)
    TARGET_COMMON_NAME := SGH T769
    BOOTLOADER_CMD_ARG := "download"
    BOARD_HAS_LOW_RESOLUTION := true
    BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"

#Samsung Exhilarate SGH-I577 (no cm-10.2 buildable sources, kernel def config missing)
else ifeq ($(TARGET_PRODUCT), cm_i577)
    TARGET_COMMON_NAME := SGH i577
    BOOTLOADER_CMD_ARG := "download"
    BOARD_HAS_LOW_RESOLUTION := true
    BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"

#Samsung Galaxy S2 HD LTE (SGH-I757M) - celoxhd
else ifeq ($(TARGET_PRODUCT), cm_celoxhd)
    TARGET_COMMON_NAME := SGH-I757M
    BOOTLOADER_CMD_ARG := "download"
    BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"

#Galaxy S3 International - i9300 - i9305
else ifneq ($(filter $(TARGET_PRODUCT),cm_i9300 cm_i9305),)
    TARGET_COMMON_NAME := Galaxy S3 ($(TARGET_PRODUCT))
    BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun0/file"
    BOOTLOADER_CMD_ARG := "download"
    KERNEL_EXFAT_MODULE_NAME := "exfat"
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/panel/brightness"

#Galaxy S3 T-Mobile - SGH-T999 (d2tmo, d2att, d2spr) // Galaxy S Relay 4G - SGH-T699 (apexqtmo)
else ifneq ($(filter $(TARGET_PRODUCT),cm_d2tmo cm_d2spr cm_d2att apexqtmo),)
    TARGET_COMMON_NAME := $(TARGET_PRODUCT)
    BOOTLOADER_CMD_ARG := "download"
    KERNEL_EXFAT_MODULE_NAME := "exfat"
    BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"

#Galaxy Note 2 - n7100
else ifeq ($(TARGET_PRODUCT), cm_n7100)
    TARGET_COMMON_NAME := Galaxy Note 2
    BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun0/file"
    BOOTLOADER_CMD_ARG := "download"
    KERNEL_EXFAT_MODULE_NAME := "exfat"
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/panel/brightness"

#Galaxy Note 2 LTE - t0lte (n7105), t0lteatt (i317 / i317M canada bell), t0ltetmo (T889), l900 (sprint), i605 (verizon)
else ifneq ($(filter $(TARGET_PRODUCT),cm_t0lte cm_t0lteatt cm_t0ltetmo cm_l900 cm_i605),)
    TARGET_COMMON_NAME := Note 2 ($(TARGET_PRODUCT))
    BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun0/file"
    BOOTLOADER_CMD_ARG := "download"
    KERNEL_EXFAT_MODULE_NAME := "exfat"
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/panel/brightness"

#Galaxy Note 8.0 - n5100
else ifeq ($(TARGET_PRODUCT), cm_n5100)
    TARGET_COMMON_NAME := Galaxy Note 8.0
    BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun0/file"
    BOOTLOADER_CMD_ARG := "download"
    KERNEL_EXFAT_MODULE_NAME := "exfat"
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/panel/brightness"

#Galaxy Note 10.1 GSM (n8000) and classic (n8013)
else ifneq ($(filter $(TARGET_PRODUCT),cm_n8000 cm_n8013),)
    TARGET_COMMON_NAME := Galaxy Note 10.1 ($(TARGET_PRODUCT))
    BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun0/file"
    BOOTLOADER_CMD_ARG := "download"
    KERNEL_EXFAT_MODULE_NAME := "exfat"
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/panel/brightness"

#Galaxy S4 International - i9500
else ifeq ($(TARGET_PRODUCT), cm_i9500)
    TARGET_COMMON_NAME := i9500
    BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun0/file"
    BOOTLOADER_CMD_ARG := "download"
    BOARD_USE_FB2PNG := false
    KERNEL_EXFAT_MODULE_NAME := "exfat"
    KERNEL_NTFS_MODULE_NAME := "ntfs"
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/panel/brightness"
    BOARD_POST_UNBLANK_COMMAND := "/sbin/postunblankdisplay.sh"

#Galaxy S4 - i9505, jfltexx
else ifneq ($(filter $(TARGET_PRODUCT),cm_jfltexx cm_jflteatt cm_jfltecan cm_jfltecri cm_jfltespr cm_jfltetmo cm_jflteusc cm_jfltevzw cm_jfltezm),)
    TARGET_COMMON_NAME := i9505 ($(TARGET_PRODUCT))
    BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun0/file"
    BOOTLOADER_CMD_ARG := "download"
    BOARD_USE_FB2PNG := false
    #BOARD_HAS_SLOW_STORAGE := true
    KERNEL_EXFAT_MODULE_NAME := "exfat"
    KERNEL_NTFS_MODULE_NAME := "ntfs"
    BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"

#Galaxy S4 Mini LTE - i9195 (serranoltexx) // Galaxy S4 Mini 3G - i9190 (serrano3gxx)
else ifneq ($(filter $(TARGET_PRODUCT),cm_serranoltexx cm_serrano3gxx),)
    TARGET_COMMON_NAME := Galaxy S4 Mini ($(TARGET_PRODUCT))
    BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun0/file"
    BOOTLOADER_CMD_ARG := "download"
    KERNEL_EXFAT_MODULE_NAME := "exfat"
    KERNEL_NTFS_MODULE_NAME := "ntfs"
    BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"

#Galaxy Tab 2 - p3100
else ifeq ($(TARGET_PRODUCT), cm_p3100)
    TARGET_COMMON_NAME := p3100
    BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun0/file"
    BOOTLOADER_CMD_ARG := "download"
    KERNEL_EXFAT_MODULE_NAME := "exfat"
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/panel/brightness"
    RECOVERY_TOUCHSCREEN_SWAP_XY := true
    RECOVERY_TOUCHSCREEN_FLIP_Y := true

#Galaxy Tab 2 - p5100
else ifeq ($(TARGET_PRODUCT), cm_p5100)
    TARGET_COMMON_NAME := p5100
    BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun0/file"
    BOOTLOADER_CMD_ARG := "download"
    KERNEL_EXFAT_MODULE_NAME := "exfat"
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/panel/brightness"

#Google Galaxy Nexus (Samsung) - maguro, toro, toroplus (tuna common device)
else ifneq ($(filter $(TARGET_PRODUCT),cm_maguro cm_toro cm_toroplus),)
    TARGET_COMMON_NAME := Galaxy Nexus ($(TARGET_PRODUCT))
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/s6e8aa0/brightness"

#Google Nexus S (Samsung) - crespo
else ifeq ($(TARGET_PRODUCT), cm_crespo)
    TARGET_COMMON_NAME := Nexus S
    BOARD_HAS_LOW_RESOLUTION := true
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/s5p_bl/brightness"

#Google Nexus 4 (LGE) - mako
else ifeq ($(TARGET_PRODUCT), cm_mako)
    TARGET_COMMON_NAME := Nexus 4
    BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"

#Google Nexus 7 (ASUS) - tilapia (3G) and grouper (wifi)
else ifneq ($(filter $(TARGET_PRODUCT),cm_tilapia cm_grouper),)
    TARGET_COMMON_NAME := Nexus 7 ($(TARGET_PRODUCT))
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/pwm-backlight/brightness"

#Google Nexus 7 (2013) - flo // Nexus 7 (2013) LTE - deb    (ASUS)
else ifneq ($(filter $(TARGET_PRODUCT),cm_flo cm_deb),)
    TARGET_COMMON_NAME := Nexus 7 (2013 $(TARGET_PRODUCT))
    BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"

#Google Nexus 10 (Samsung) - manta
else ifeq ($(TARGET_PRODUCT), cm_manta)
    TARGET_COMMON_NAME := Nexus 10
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/pwm-backlight.0/brightness"
    BATTERY_LEVEL_PATH := "/sys/class/power_supply/android-battery/capacity"

#HTC Desire X - protou (No 10.2 tree)
else ifeq ($(TARGET_PRODUCT), cm_protou)
    TARGET_COMMON_NAME := HTC Desire X
    BOARD_HAS_LOW_RESOLUTION := true
    BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"

#HTC Droid Incredible 4G LTE - fireball
else ifeq ($(TARGET_PRODUCT), cm_fireball)
    TARGET_COMMON_NAME := Droid Incredible 4G LTE
    BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"

#HTC Explorer - pico (no cm tree)
else ifeq ($(TARGET_PRODUCT), cm_pico)
    TARGET_COMMON_NAME := HTC_Explorer
    BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_10x18.h\"
    BOARD_USE_NTFS_3G := false
    BOARD_HAS_LOW_RESOLUTION := true
    BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"

#HTC One - m7ul / m7spr / m7tmo / m7att
else ifneq ($(filter $(TARGET_PRODUCT),cm_m7ul cm_m7spr cm_m7tmo cm_m7att),)
    TARGET_COMMON_NAME := HTC One ($(TARGET_PRODUCT))
    KERNEL_EXFAT_MODULE_NAME := "texfat"
    BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"

#HTC One X - endeavoru
else ifeq ($(TARGET_PRODUCT), cm_endeavoru)
    TARGET_COMMON_NAME := HTC One X
    BOARD_USE_NTFS_3G := false
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/tegra-pwm-bl/brightness"

#HTC One XL - evita
else ifeq ($(TARGET_PRODUCT), cm_evita)
    TARGET_COMMON_NAME := HTC One XL
    BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"

#HTC One S - ville
else ifeq ($(TARGET_PRODUCT), cm_ville)
    TARGET_COMMON_NAME := HTC One S
    BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"

#HTC One V - primou (no cm device tree)
else ifeq ($(TARGET_PRODUCT), cm_primou)
    TARGET_COMMON_NAME := HTC_One_V
    BOARD_HAS_LOW_RESOLUTION := true
    BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"

#Huawei Acsend P1 U9200 - viva (no cm tree)
else ifeq ($(TARGET_PRODUCT), cm_viva)
    TARGET_COMMON_NAME := Huawei_Acsend_P1_U9200
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/lcd/brightness"

#LG Optimus G ATT (e970) - Canada (e973) - Sprint (ls970) - Intl (e975)
else ifneq ($(filter $(TARGET_PRODUCT),cm_e970 cm_e973 cm_ls970 cm_e975),)
    TARGET_COMMON_NAME := Optimus G ($(TARGET_PRODUCT))
    BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"

#LG Optimus G Pro (GSM) - e980
else ifeq ($(TARGET_PRODUCT), cm_e980)
    TARGET_COMMON_NAME := Optimus G Pro
    BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"

#LG Spectrum 4G - vs920
else ifeq ($(TARGET_PRODUCT), cm_vs920)
    TARGET_COMMON_NAME := Spectrum 4G
    BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"

#Micromax A57 - a57 (no cm tree)
else ifeq ($(TARGET_PRODUCT), cm_a57)
    TARGET_COMMON_NAME := Micromax_A57
    BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_10x18.h\"
    BOARD_USE_NTFS_3G := false
    BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"

#Motorola Droid RAZR M - xt907
else ifeq ($(TARGET_PRODUCT), cm_xt907)
    TARGET_COMMON_NAME := Droid RAZR M
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/lcd-backlight/brightness"

#Motorola Droid RAZR HD GSM (xt925) and US (xt926)
else ifneq ($(filter $(TARGET_PRODUCT),cm_xt925 cm_xt926),)
    TARGET_COMMON_NAME := Droid RAZR HD ($(TARGET_PRODUCT))
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/lcd-backlight/brightness"

#Motorola Atrix HD
else ifeq ($(TARGET_PRODUCT), mb886)
    TARGET_COMMON_NAME := Atrix HD
    BRIGHTNESS_SYS_FILE := "/sys/class/backlight/lcd-backlight/brightness"

#Sony Xperia Z - yuga
else ifeq ($(TARGET_PRODUCT), cm_yuga)
    TARGET_COMMON_NAME := Xperia Z
    KERNEL_EXFAT_MODULE_NAME := "texfat"
    BRIGHTNESS_SYS_FILE := "/sys/class/leds/lm3533-lcd-bl/brightness"

endif
#---- end device specific config

# temporary workaround to backup/restore selinux context, thanks to @xiaolu
RECOVERY_NEED_SELINUX_FIX := true

# The below flags must always be defined as default in BoardConfig.mk, unless defined above:
# device name to display in About dialog
ifndef TARGET_COMMON_NAME
    TARGET_COMMON_NAME := $(TARGET_PRODUCT)
endif

LOCAL_CFLAGS += -DTARGET_COMMON_NAME="$(TARGET_COMMON_NAME)"

# battery level default path (PhilZ Touch Only)
ifndef BATTERY_LEVEL_PATH
    BATTERY_LEVEL_PATH := "/sys/class/power_supply/battery/capacity"
endif
