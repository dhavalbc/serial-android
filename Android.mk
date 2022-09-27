LOCAL_PATH:= $(call my-dir)

include $(LOCAL_PATH)/libserial/src/main/jni/libs/nativehelper/Android.mk \
        $(LOCAL_PATH)/libserial/src/main/jni/libs/serialport/Android.mk \
	$(LOCAL_PATH)/libserial/src/main/jni/Android.mk
