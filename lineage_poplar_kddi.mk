$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/sony/yoshino/poplar_kddi/BoardConfig.mk)
$(call inherit-product, device/sony/yoshino/platform/device.mk)

### PROPRIETARY VENDOR FILES
$(call inherit-product, vendor/sony/yoshino/poplar_kddi/poplar_kddi-vendor.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

### LINEAGE
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

### DEVICE INIT
PRODUCT_PACKAGES += \
    init.recovery.poplar_kddi \
    init.poplar_kddi \
    fstab.poplar_kddi

PRODUCT_COPY_FILES += \
    device/sony/yoshino/poplar_kddi/config/init.poplar_kddi.nfc.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.poplar_kddi.nfc.rc

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_poplar_kddi
PRODUCT_DEVICE := poplar_kddi
PRODUCT_BRAND := Sony
PRODUCT_MODEL := G8341
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="G8341-user 9 47.2.A.11.228 3311891731 release-keys" \
    BuildFingerprint=Sony/G8341/G8341:9/47.2.A.11.228/3311891731:user/release-keys
