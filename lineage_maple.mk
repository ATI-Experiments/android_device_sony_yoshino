$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/sony/yoshino/maple/BoardConfig.mk)
$(call inherit-product, device/sony/yoshino/platform/device.mk)

### PROPRIETARY VENDOR FILES
$(call inherit-product, vendor/sony/yoshino/maple/maple-vendor.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

### LINEAGE
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

### DEVICE INIT
PRODUCT_PACKAGES += \
    init.recovery.maple \
    init.maple \
    fstab.maple

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_maple
PRODUCT_DEVICE := maple
PRODUCT_BRAND := Sony
PRODUCT_MODEL := G8141
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="G8141-user 9 47.2.A.10.107 172320177 release-keys" \
    BuildFingerprint=Sony/G8141/G8141:9/47.2.A.10.107/172320177:user/release-keys
