LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := freetype

APP_SUBDIRS := src/autofit src/base src/bdf src/cache 
APP_SUBDIRS += src/cff src/cid src/gxvalid src/gzip 
APP_SUBDIRS += src/lzw src/otvalid src/pcf src/pfr 
APP_SUBDIRS += src/psaux src/pshinter src/psnames src/raster 
APP_SUBDIRS += src/sfnt src/smooth src/truetype src/type1 
APP_SUBDIRS += src/type42 src/winfonts

# Add more subdirs here, like src/subdir1 src/subdir2

LOCAL_C_INCLUDES := $(foreach D, $(APP_SUBDIRS), $(LOCAL_PATH)/$(D)) $(LOCAL_PATH)/include

LOCAL_CFLAGS := $(LOCAL_C_INCLUDES:%=-I%) \
	-DFT2_BUILD_LIBRARY

#Change C++ file extension as appropriate
LOCAL_CPP_EXTENSION := .cpp

LOCAL_SRC_FILES := $(foreach F, $(APP_SUBDIRS), $(addprefix $(F)/,$(notdir $(wildcard $(LOCAL_PATH)/$(F)/*.cpp))))
# Uncomment to also add C sources
LOCAL_SRC_FILES += $(foreach F, $(APP_SUBDIRS), $(addprefix $(F)/,$(notdir $(wildcard $(LOCAL_PATH)/$(F)/*.c))))

LOCAL_SHARED_LIBRARIES := 

LOCAL_STATIC_LIBRARIES := 

LOCAL_LDLIBS := -lz
LOCAL_EXPORT_LDLIBS := -lz

include $(BUILD_STATIC_LIBRARY)
