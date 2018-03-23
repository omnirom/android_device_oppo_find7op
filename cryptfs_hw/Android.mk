ifeq ($(TARGET_HW_DISK_ENCRYPTION),true)
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

sourceFiles := \
               cryptfs_hw.c

commonSharedLibraries := \
                        libcutils \
                        libutils \
                        libdl \
                        libhardware \
                        liblog

commonIncludes := \
                  hardware/libhardware/include/hardware/ \
                  $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include \

LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

LOCAL_C_INCLUDES := $(commonIncludes)
LOCAL_SRC_FILES := $(sourceFiles)

LOCAL_MODULE_TAGS       := optional
LOCAL_MODULE:= libcryptfs_hw
LOCAL_SHARED_LIBRARIES := $(commonSharedLibraries)

LOCAL_MODULE_OWNER := qcom

ifeq ($(TARGET_SWV8_DISK_ENCRYPTION),true)
LOCAL_CFLAGS += -DCONFIG_SWV8_DISK_ENCRYPTION
endif

# USE_ICE_FOR_STORAGE_ENCRYPTION would be true in future if
# TARGET_USE_EMMC_USE_ICE is set
ifeq ($(TARGET_USE_UFS_ICE),true)
LOCAL_CFLAGS += -DUSE_ICE_FOR_STORAGE_ENCRYPTION
endif

ifeq ($(TARGET_LEGACY_HW_DISK_ENCRYPTION),true)
LOCAL_CFLAGS += -DLEGACY_HW_DISK_ENCRYPTION
endif

ifeq ($(TARGET_KEYMASTER_WAIT_FOR_QSEE),true)
LOCAL_CFLAGS += -DWAIT_FOR_QSEE
endif

include $(BUILD_SHARED_LIBRARY)
endif
