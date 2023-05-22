# Copyright 2015 Google Inc. All Rights Reserved.
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

LOCAL_PATH := $(call my-dir)
PROJECT_ROOT:= $(LOCAL_PATH)/..

include $(CLEAR_VARS)
LOCAL_MODULE := tango_3d_reconstruction
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq ($(filter $(TARGET_ARCH_ABI), armeabi-v7a armeabi-v7a-hard),)
LOCAL_SRC_FILES := lib/armeabi-v7a/libtango_3d_reconstruction.so
else ifeq ($(TARGET_ARCH_ABI),arm64-v8a)
LOCAL_SRC_FILES := lib/arm64-v8a/libtango_3d_reconstruction.so
endif
include $(PREBUILT_SHARED_LIBRARY)
