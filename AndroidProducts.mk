#
# Copyright (C) 2017 The LineageOS Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/lineage_maple.mk \
    $(LOCAL_DIR)/lineage_maple_dsds.mk \
    $(LOCAL_DIR)/lineage_poplar.mk \
    $(LOCAL_DIR)/lineage_poplar_dsds.mk \
    $(LOCAL_DIR)/lineage_poplar_kddi.mk \
    $(LOCAL_DIR)/lineage_poplar_canada.mk \
    $(LOCAL_DIR)/lineage_lilac.mk

COMMON_LUNCH_CHOICES := \
    lineage_maple-user \
    lineage_maple-userdebug \
    lineage_maple-eng \
    lineage_maple_dsds-user \
    lineage_maple_dsds-userdebug \
    lineage_maple_dsds-eng \
    lineage_poplar-user \
    lineage_poplar-userdebug \
    lineage_poplar-eng \
    lineage_poplar_dsds-user \
    lineage_poplar_dsds-userdebug \
    lineage_poplar_dsds-eng \
    lineage_poplar_kddi-user \
    lineage_poplar_kddi-userdebug \
    lineage_poplar_kddi-eng \
    lineage_poplar_canada-user \
    lineage_poplar_canada-userdebug \
    lineage_poplar_canada-eng \
    lineage_lilac-user \
    lineage_lilac-userdebug \
    lineage_lilac-eng \
