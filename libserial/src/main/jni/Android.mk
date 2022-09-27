LOCAL_PATH := $(call my-dir)

$(call import-add-path,$(LOCAL_PATH)/libs)

include $(CLEAR_VARS)
LOCAL_CFLAGS += -Wall -Werror
LOCAL_CPP_EXTENSION := .cc
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS = -Wno-unused-parameter -fexceptions
LOCAL_C_INCLUDES := \
        external/serial-android/libserial/src/main/jni/libs/serialport/include

EXAMPLE_SRC_FILES := serial_example/serial_example.cc
LOCAL_SRC_FILES := $(EXAMPLE_SRC_FILES)
LOCAL_STATIC_LIBRARIES += nativehelper serialport libserial_glob
LOCAL_MODULE := serial_example_test
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
include $(BUILD_EXECUTABLE)

$(call import-module,serialport)
$(call import-module,nativehelper)

