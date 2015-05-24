#if defined ANDROID

#include <jni.h>
#include <stdlib.h>
#include <android/log.h>

#endif

#include <stdio.h>

void Init_sdl();

void
Init_ext()
{
#if defined ANDROID
	__android_log_print(ANDROID_LOG_INFO, "dmyext.c", "[%s:%d %s]%s", 
		__FILE__, __LINE__, __FUNCTION__, 
		"Init_ext");
#else
	fprintf(stderr, "Init_ext\n");
#endif	
	Init_sdl();
}
