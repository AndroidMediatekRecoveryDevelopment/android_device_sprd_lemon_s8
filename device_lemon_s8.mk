LOCAL_PATH := device/sprd/lemon_s8

# Inherit from AOSP product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Inherit from vendor tree
$(call inherit-product-if-exists, vendor/sprd/lemon_s8/lemon_s8-vendor.mk)

# Inherit from sprd-common device configuration
#$(call inherit-product, device/sprd/sprd-common/common.mk)


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/init.recovery.board.rc:root/init.recovery.board.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.universal.rc:root/init.recovery.universal.rc \
    $(LOCAL_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_lemon_s8
PRODUCT_DEVICE := lemon_s8
PRODUCT_BRAND := sprd
PRODUCT_MANUFACTURER := sprd
PRODUCT_MODEL := Lemon S8
