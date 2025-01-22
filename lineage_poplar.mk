$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/sony/yoshino/poplar/BoardConfig.mk)
$(call inherit-product, device/sony/yoshino/platform/device.mk)

### PROPRIETARY VENDOR FILES
$(call inherit-product, vendor/sony/yoshino/poplar/poplar-vendor.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

### LINEAGE
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

### DEVICE INIT
PRODUCT_PACKAGES += \
    init.recovery.poplar \
    init.poplar \
    fstab.poplar

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_poplar
PRODUCT_DEVICE := poplar
PRODUCT_BRAND := Sony
PRODUCT_MODEL := G8341
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="G8341-user 9 47.2.A.11.228 3311891731 release-keys" \
    BuildFingerprint=Sony/G8341/G8341:9/47.2.A.11.228/3311891731:user/release-keys
