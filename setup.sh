#Download Latest Magisk
wget "$(curl -sL https://api.github.com/repos/topjohnwu/Magisk/releases/latest | jq '.assets[].browser_download_url' | sed 's/"//g')"

export TW_DEFAULT_LANGUAGE="en"
export FOX_USE_TAR_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_BASH_SHELL=1
export FOX_ASH_IS_BASH=1
export OF_USE_MAGISKBOOT=1
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
export OF_FORCE_MAGISKBOOT_BOOT_PATCH_MIUI=1
export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
export OF_SKIP_FBE_DECRYPTION=1
export OF_NO_MIUI_OTA_VENDOR_BACKUP=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_FLASHLIGHT_ENABLE=1
export FOX_VERSION=
export OF_MAINTAINER=OmanshKrishn
export OF_ALLOW_DISABLE_NAVBAR=1
export TARGET_DEVICE_ALT="santoni,land,prada,riva,rolex,ugg,ugglite"
export FOX_TARGET_DEVICES="santoni,land,prada,riva,rolex,ugg,ugglite"
export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
export OF_QUICK_BACKUP_LIST="/system_root;/vendor;/data;/persist;/boot;"
export OF_ADVANCED_SECURITY=1
export FOX_NO_SAMSUNG_SPECIAL=1
export FOX_USE_GREP_BINARY=1
export FOX_USE_XZ_UTILS=1
export FOX_USE_NANO_EDITOR=1
export FOX_USE_SPECIFIC_MAGISK_ZIP=Magisk-**zip
export OF_FORCE_PREBUILT_KERNEL=1
export OF_SKIP_DECRYPTED_ADOPTED_STORAGE=1
#export OF_DEFAULT_TIMEZONE=
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"
export OF_NO_SPLASH_CHANGE=1
export FOX_VERSION=R12.1-"$(date +%d%m%y-%H%M-%S)"
export FOX_BUILD_TYPE=Stable
