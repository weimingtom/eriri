LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := mruby

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include $(LOCAL_PATH)/src

LOCAL_SRC_FILES += src/array.c
LOCAL_SRC_FILES += src/backtrace.c
LOCAL_SRC_FILES += src/class.c
LOCAL_SRC_FILES += src/codegen.c
LOCAL_SRC_FILES += src/compar.c
LOCAL_SRC_FILES += src/crc.c
LOCAL_SRC_FILES += src/debug.c
LOCAL_SRC_FILES += src/dump.c
LOCAL_SRC_FILES += src/enum.c
LOCAL_SRC_FILES += src/error.c
LOCAL_SRC_FILES += src/etc.c
LOCAL_SRC_FILES += src/gc.c
LOCAL_SRC_FILES += src/hash.c
LOCAL_SRC_FILES += src/init.c
LOCAL_SRC_FILES += src/kernel.c
LOCAL_SRC_FILES += src/load.c
LOCAL_SRC_FILES += src/numeric.c  
LOCAL_SRC_FILES += src/object.c  
LOCAL_SRC_FILES += src/pool.c
LOCAL_SRC_FILES += src/print.c
LOCAL_SRC_FILES += src/proc.c
LOCAL_SRC_FILES += src/range.c
LOCAL_SRC_FILES += src/state.c
LOCAL_SRC_FILES += src/string.c
LOCAL_SRC_FILES += src/symbol.c
LOCAL_SRC_FILES += src/variable.c
LOCAL_SRC_FILES += src/version.c
LOCAL_SRC_FILES += src/vm.c  
LOCAL_SRC_FILES += src/y.tab.c
LOCAL_SRC_FILES += mrblib/mrblib.c

LOCAL_SRC_FILES += mrbgems/gem_init.c

LOCAL_SRC_FILES += mrbgems/mruby-array-ext/gem_init.c
LOCAL_SRC_FILES += mrbgems/mruby-array-ext/src/array.c

LOCAL_SRC_FILES += mrbgems/mruby-enumerator/gem_init.c

LOCAL_SRC_FILES += mrbgems/mruby-enum-ext/gem_init.c

LOCAL_SRC_FILES += mrbgems/mruby-enum-lazy/gem_init.c

LOCAL_SRC_FILES += mrbgems/mruby-fiber/gem_init.c
LOCAL_SRC_FILES += mrbgems/mruby-fiber/src/fiber.c

LOCAL_SRC_FILES += mrbgems/mruby-hash-ext/gem_init.c
LOCAL_SRC_FILES += mrbgems/mruby-hash-ext/src/hash-ext.c

LOCAL_SRC_FILES += mrbgems/mruby-kernel-ext/gem_init.c
LOCAL_SRC_FILES += mrbgems/mruby-kernel-ext/src/kernel.c

LOCAL_SRC_FILES += mrbgems/mruby-math/gem_init.c
LOCAL_SRC_FILES += mrbgems/mruby-math/src/math.c

LOCAL_SRC_FILES += mrbgems/mruby-numeric-ext/gem_init.c
LOCAL_SRC_FILES += mrbgems/mruby-numeric-ext/src/numeric_ext.c


LOCAL_SRC_FILES += mrbgems/mruby-object-ext/gem_init.c
LOCAL_SRC_FILES += mrbgems/mruby-object-ext/src/object.c


LOCAL_SRC_FILES += mrbgems/mruby-objectspace/gem_init.c
LOCAL_SRC_FILES += mrbgems/mruby-objectspace/src/mruby_objectspace.c


LOCAL_SRC_FILES += mrbgems/mruby-print/gem_init.c
LOCAL_SRC_FILES += mrbgems/mruby-print/src/print.c

LOCAL_SRC_FILES += mrbgems/mruby-proc-ext/gem_init.c
LOCAL_SRC_FILES += mrbgems/mruby-proc-ext/src/proc.c

LOCAL_SRC_FILES += mrbgems/mruby-random/gem_init.c
LOCAL_SRC_FILES += mrbgems/mruby-random/src/mt19937ar.c
LOCAL_SRC_FILES += mrbgems/mruby-random/src/random.c

LOCAL_SRC_FILES += mrbgems/mruby-range-ext/gem_init.c
LOCAL_SRC_FILES += mrbgems/mruby-range-ext/src/range.c

LOCAL_SRC_FILES += mrbgems/mruby-sprintf/gem_init.c
LOCAL_SRC_FILES += mrbgems/mruby-sprintf/src/kernel.c
LOCAL_SRC_FILES += mrbgems/mruby-sprintf/src/sprintf.c

LOCAL_SRC_FILES += mrbgems/mruby-string-ext/gem_init.c
LOCAL_SRC_FILES += mrbgems/mruby-string-ext/src/string.c

LOCAL_SRC_FILES += mrbgems/mruby-struct/gem_init.c
LOCAL_SRC_FILES += mrbgems/mruby-struct/src/struct.c

LOCAL_SRC_FILES += mrbgems/mruby-symbol-ext/gem_init.c
LOCAL_SRC_FILES += mrbgems/mruby-symbol-ext/src/symbol.c

LOCAL_SRC_FILES += mrbgems/mruby-time/gem_init.c
LOCAL_SRC_FILES += mrbgems/mruby-time/src/time.c

LOCAL_SRC_FILES += mrbgems/mruby-toplevel-ext/gem_init.c

LOCAL_SRC_FILES += mrbgems/mruby-print-android/gem_init.c
LOCAL_SRC_FILES += mrbgems/mruby-print-android/src/print.c

LOCAL_SHARED_LIBRARIES := 

LOCAL_STATIC_LIBRARIES := 

LOCAL_LDLIBS :=

include $(BUILD_STATIC_LIBRARY)
