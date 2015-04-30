LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := ruby184

LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_CFLAGS := 

LOCAL_CPP_EXTENSION := .cpp

LOCAL_SRC_FILES := array.c bignum.c class.c compar.c dir.c 
LOCAL_SRC_FILES += dln.c enum.c error.c eval.c file.c gc.c 
LOCAL_SRC_FILES += hash.c inits.c io.c marshal.c math.c 
LOCAL_SRC_FILES += numeric.c object.c pack.c parse.c 
LOCAL_SRC_FILES += process.c prec.c random.c range.c 
LOCAL_SRC_FILES += re.c regex.c ruby.c signal.c sprintf.c 
LOCAL_SRC_FILES += st.c string.c struct.c time.c util.c 
LOCAL_SRC_FILES += variable.c version.c  dmyext.c

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)
