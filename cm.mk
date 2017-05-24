## Specify phone tech before including full_phone	
$(call inherit-product, vendor/cm/config/telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := lemon_s8

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device_lemon_s8.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lemon_s8
PRODUCT_NAME := cm_lemon_s8
PRODUCT_BRAND := sprd
PRODUCT_MODEL := Lemon S3
PRODUCT_MANUFACTURER := sprd

