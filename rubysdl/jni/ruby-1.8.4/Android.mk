LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := ruby184

LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../rubysdl-2.1.0
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../sdl/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../sdl_ttf
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../sdl_image
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../sge030809

LOCAL_CFLAGS := $(LOCAL_C_INCLUDES:%=-I%) -DENABLE_OPENGL -DHAVE_SGE -DHAVE_SDL_TTF

LOCAL_CPP_EXTENSION := .cpp

# Note this simple makefile var substitution, you can find even simpler examples in different Android projects
LOCAL_SRC_FILES := array.c bignum.c class.c compar.c dir.c 
LOCAL_SRC_FILES += dln.c enum.c error.c eval.c file.c gc.c 
LOCAL_SRC_FILES += hash.c inits.c io.c marshal.c math.c 
LOCAL_SRC_FILES += numeric.c object.c pack.c parse.c 
LOCAL_SRC_FILES += process.c prec.c random.c range.c 
LOCAL_SRC_FILES += re.c regex.c ruby.c signal.c sprintf.c 
LOCAL_SRC_FILES += st.c string.c struct.c time.c util.c 
LOCAL_SRC_FILES += variable.c version.c  dmyext.c

LOCAL_SRC_FILES += ../rubysdl-2.1.0/rubysdl_cdrom.c
LOCAL_SRC_FILES += ../rubysdl-2.1.0/rubysdl_event.c
LOCAL_SRC_FILES += ../rubysdl-2.1.0/rubysdl_event_key.c
LOCAL_SRC_FILES += ../rubysdl-2.1.0/rubysdl_image.c
LOCAL_SRC_FILES += ../rubysdl-2.1.0/rubysdl_joystick.c
LOCAL_SRC_FILES += ../rubysdl-2.1.0/rubysdl_kanji.c
LOCAL_SRC_FILES += ../rubysdl-2.1.0/rubysdl_main.c
LOCAL_SRC_FILES += ../rubysdl-2.1.0/rubysdl_mixer.c
LOCAL_SRC_FILES += ../rubysdl-2.1.0/rubysdl_mouse.c
LOCAL_SRC_FILES += ../rubysdl-2.1.0/rubysdl_opengl.c
LOCAL_SRC_FILES += ../rubysdl-2.1.0/rubysdl_pixel.c
LOCAL_SRC_FILES += ../rubysdl-2.1.0/rubysdl_rwops.c
LOCAL_SRC_FILES += ../rubysdl-2.1.0/rubysdl_sdlskk.c
LOCAL_SRC_FILES += ../rubysdl-2.1.0/rubysdl_sge_video.c
LOCAL_SRC_FILES += ../rubysdl-2.1.0/rubysdl_smpeg.c
LOCAL_SRC_FILES += ../rubysdl-2.1.0/rubysdl_time.c
LOCAL_SRC_FILES += ../rubysdl-2.1.0/rubysdl_ttf.c
LOCAL_SRC_FILES += ../rubysdl-2.1.0/rubysdl_video.c
LOCAL_SRC_FILES += ../rubysdl-2.1.0/rubysdl_wm.c
LOCAL_SRC_FILES += ../rubysdl-2.1.0/SDL_kanji.c

LOCAL_STATIC_LIBRARIES := sge sdl

#LOCAL_SHARED_LIBRARIES := sdl

#LOCAL_LDLIBS := -lz

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)
