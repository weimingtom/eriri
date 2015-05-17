LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := application

LOCAL_C_INCLUDES := 
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../ruby-1.8.4

#Change C++ file extension as appropriate
LOCAL_CPP_EXTENSION := .cpp

LOCAL_SRC_FILES := 
LOCAL_SRC_FILES += ../sdl/sdl_main.c
#LOCAL_SRC_FILES += graywin.c
LOCAL_SRC_FILES += main.c

LOCAL_STATIC_LIBRARIES := ruby184 sge sdl_mixer sdl_image sdl_ttf sdl
# LOCAL_SHARED_LIBRARIES := sge sdl_mixer sdl_image sdl_ttf sdl
# sdl_mixer sdl_image sdl_ttf lua bz2 mad tremor

LOCAL_LDLIBS := -llog
# -lGLESv1_CM -ldl -llog -lz

include $(BUILD_SHARED_LIBRARY)
