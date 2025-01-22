$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/sony/yoshino/maple_dsds/BoardConfig.mk)
$(call inherit-product, device/sony/yoshino/platform/device.mk)

### PROPRIETARY VENDOR FILES
$(call inherit-product, vendor/sony/yoshino/maple_dsds/maple_dsds-vendor.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

### LINEAGE
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

### DEVICE INIT
PRODUCT_PACKAGES += \
    init.recovery.maple_dsds \
    init.maple_dsds \
    fstab.maple_dsds

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_maple_dsds
PRODUCT_DEVICE := maple_dsds
PRODUCT_BRAND := Sony
PRODUCT_MODEL := G8142
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="G8142-user 9 47.2.A.10.107 172320177 release-keys" \
    BuildFingerprint=Sony/G8142/G8142:9/47.2.A.10.107/172320177:user/release-keys
