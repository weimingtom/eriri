LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := rubysdl

LOCAL_C_INCLUDES := $(LOCAL_PATH) 
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../ruby-1.8.4
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../sdl/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../sdl_ttf
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../sdl_image
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../sge030809

LOCAL_CFLAGS := $(LOCAL_C_INCLUDES:%=-I%) \
	-DENABLE_OPENGL -DHAVE_SGE -DHAVE_SDL_TTF

LOCAL_CPP_EXTENSION := .cpp

# Note this simple makefile var substitution, you can find even simpler examples in different Android projects
LOCAL_SRC_FILES := $(notdir $(wildcard $(LOCAL_PATH)/*.c))

#LOCAL_STATIC_LIBRARIES := png jpeg

#LOCAL_SHARED_LIBRARIES := sdl

#LOCAL_LDLIBS := -lz

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)
