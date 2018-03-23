ifeq ($(TARGET_INIT_VENDOR_LIB),libinit_bacon)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := system/core/init
LOCAL_CFLAGS := -Wall
LOCAL_SRC_FILES := init_bacon.cpp
LOCAL_MODULE := libinit_bacon
LOCAL_STATIC_LIBRARIES := libbase libselinux

include $(BUILD_STATIC_LIBRARY)
endif
