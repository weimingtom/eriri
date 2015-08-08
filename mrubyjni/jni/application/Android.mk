LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := application
LOCAL_SRC_FILES := com_iteye_weimingtom_mrubyjni_MRubyJNI.c
LOCAL_LDLIBS 	:= -llog
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../mruby-1.1.0/include
LOCAL_STATIC_LIBRARIES := mruby

include $(BUILD_SHARED_LIBRARY)
