## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := p301m

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/tcl/p301m/device_p301m.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p301m
PRODUCT_NAME := cm_p301m
PRODUCT_BRAND := tcl
PRODUCT_MODEL := p301m
PRODUCT_MANUFACTURER := tcl
