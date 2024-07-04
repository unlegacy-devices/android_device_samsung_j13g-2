## Specify phone tech before including full_phone	
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := j13g

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device_j13g.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j13g
PRODUCT_NAME := cm_j13g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-J100H
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone
