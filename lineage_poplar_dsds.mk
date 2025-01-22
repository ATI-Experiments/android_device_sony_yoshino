$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/sony/yoshino/poplar_dsds/BoardConfig.mk)
$(call inherit-product, device/sony/yoshino/platform/device.mk)

### PROPRIETARY VENDOR FILES
$(call inherit-product, vendor/sony/yoshino/poplar_dsds/poplar_dsds-vendor.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

### LINEAGE
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

### DEVICE INIT
PRODUCT_PACKAGES += \
    init.recovery.poplar_dsds \
    init.poplar_dsds \
    fstab.poplar_dsds

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_poplar_dsds
PRODUCT_DEVICE := poplar_dsds
PRODUCT_BRAND := Sony
PRODUCT_MODEL := G8342
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="G8342-user 9 47.2.A.11.228 1544251862 release-keys" \
    BuildFingerprint=Sony/G8342/G8342:9/47.2.A.11.228/1544251862:user/release-keys
