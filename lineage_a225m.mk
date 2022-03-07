(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/a22x/device.mk)

### LINEAGE
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_a225m
PRODUCT_DEVICE := a225m
PRODUCT_BRAND := samsung
PRODUCT_MODEL := samsung a225m
PRODUCT_MANUFACTURER := samsung


ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
        BUILD_FINGERPRINT=google/redfin/redfin:11/RQ3A.210905.001/7511028:user/release-keyss \
        PRIVATE_BUILD_DESC="msi-user 11 RQ3A.210905.001 release-keys"
endif
