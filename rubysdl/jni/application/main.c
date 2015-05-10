#include <ruby.h>
#include "SDL.h"

#ifdef ANDROID
#include <jni.h>
#include <android/log.h>

#ifndef SDL_JAVA_PACKAGE_PATH
#error You have to define SDL_JAVA_PACKAGE_PATH to your package path with dots replaced with underscores, for example "com_example_SanAngeles"
#endif
#define JAVA_EXPORT_NAME2(name,package) Java_##package##_##name
#define JAVA_EXPORT_NAME1(name,package) JAVA_EXPORT_NAME2(name,package)
#define JAVA_EXPORT_NAME(name) JAVA_EXPORT_NAME1(name,SDL_JAVA_PACKAGE_PATH)

JNIEXPORT jint JNICALL
JAVA_EXPORT_NAME(ONScripter_nativeGetWidth) ( JNIEnv*  env, jobject thiz )
{
	return 640;
}

JNIEXPORT jint JNICALL
JAVA_EXPORT_NAME(ONScripter_nativeGetHeight) ( JNIEnv*  env, jobject thiz )
{
	return 480;
}
#endif

int main(int argc, char *argv[])
{
	int ret;

	ruby_debug = Qtrue;
	ruby_verbose = Qtrue;

	ruby_init();
	ruby_init_loadpath();
	rb_load_file("test_fib.rb");
	ret = ruby_cleanup(ruby_exec());

	//exit(ret);
	return(ret);
}
