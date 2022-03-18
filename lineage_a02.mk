# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a02 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := a02
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_a02
PRODUCT_MODEL := SM-A022F

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := a02
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="a02xx-user 11 RP1A.200720.012 A022FXXS3BVB1 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/a02xx/a02:11/RP1A.200720.012/A022FXXS3BVB1:user/release-keys
