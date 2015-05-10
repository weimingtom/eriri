LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := sge

LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../sdl/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../sdl_image
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../freetype/include

LOCAL_CFLAGS := $(LOCAL_C_INCLUDES:%=-I%)

LOCAL_CPP_EXTENSION := .cpp

# Note this simple makefile var substitution, you can find even simpler examples in different Android projects
LOCAL_SRC_FILES := $(notdir $(wildcard $(LOCAL_PATH)/*.cpp))

LOCAL_STATIC_LIBRARIES := sdl_image sdl freetype

#LOCAL_SHARED_LIBRARIES := sdl

#LOCAL_LDLIBS := -lz

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)
