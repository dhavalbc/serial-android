LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libserial_glob
LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/ext/include
LOCAL_SRC_FILES :=  ext/serial_glob.c
LOCAL_EXPORT_C_INCLUDES := ext/include
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := serialport
LOCAL_CPP_EXTENSION := .cc
LOCAL_CFLAGS = -fexceptions

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/ext/include \
    $(LOCAL_PATH)/include
	
LOCAL_SRC_FILES := serial.cc \
    serial_unix.cc \
    list_ports_linux.cc

LOCAL_EXPORT_CPPFLAGS := -I$(LOCAL_PATH)/include
LOCAL_STATIC_LIBRARIES := libserial_glob
include $(BUILD_STATIC_LIBRARY)
