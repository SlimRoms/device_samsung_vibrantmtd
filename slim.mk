## Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := T959

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/vibrantmtd/full_vibrantmtd.mk)

# Inherit device settings
$(call inherit-product, vendor/slim/config/common_sgs.mk)

PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.res=5MP

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vibrantmtd
PRODUCT_NAME := slim_vibrantmtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL :=SGH-T959

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T959 TARGET_DEVICE=SGH-T959 BUILD_FINGERPRINT=Samsung/SGH-T959/SGH-T959/SGH-T959:2.2/FROYO/UVKB5:user/release-keys PRIVATE_BUILD_DESC="SGH-T959-user 2.2 FROYO UVKB5 release-keys"
