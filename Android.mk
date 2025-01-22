#
# Copyright (C) 2017 The LineAgeOS Project
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

LOCAL_PATH := $(call my-dir)
MAPLE_PATH := $(LOCAL_PATH)/maple
MAPLE_DSDS_PATH := $(LOCAL_PATH)/maple_dsds
POPLAR_PATH := $(LOCAL_PATH)/poplar
POPLAR_DSDS_PATH := $(LOCAL_PATH)/poplar_dsds
POPLAR_KDDI_PATH := $(LOCAL_PATH)/poplar_kddi
POPLAR_CANADA_PATH := $(LOCAL_PATH)/poplar_canada
LILAC_PATH := $(LOCAL_PATH)/lilac

ifneq ($(filter maple, $(TARGET_DEVICE)),)
include $(call all-subdir-makefiles, $(MAPLE_PATH))
endif

ifneq ($(filter maple_dsds, $(TARGET_DEVICE)),)
include $(call all-subdir-makefiles, $(MAPLE_DSDS_PATH))
endif

ifneq ($(filter poplar, $(TARGET_DEVICE)),)
include $(call all-subdir-makefiles, $(POPLAR_PATH))
endif

ifneq ($(filter poplar_dsds, $(TARGET_DEVICE)),)
include $(call all-subdir-makefiles, $(POPLAR_DSDS_PATH))
endif

ifneq ($(filter poplar_kddi, $(TARGET_DEVICE)),)
include $(call all-subdir-makefiles, $(POPLAR_KDDI_PATH))
endif

ifneq ($(filter poplar_canada, $(TARGET_DEVICE)),)
include $(call all-subdir-makefiles, $(POPLAR_CANADA_PATH))
endif

ifneq ($(filter lilac, $(TARGET_DEVICE)),)
include $(call all-subdir-makefiles, $(LILAC_PATH))
endif
