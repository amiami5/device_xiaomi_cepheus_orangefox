# Copyright (C) 2026 amisuke
#
# SPDX-License-Identifier: Apache-2.0

# 画面
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_SHIPPING_API_LEVEL := 28
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# 復号(FBE v2 + wrapped key)
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# 旧ツリーが固定していたもの
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2127-12-31
