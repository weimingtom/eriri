#include <string.h>
#include <jni.h>
#include <android/log.h>
#include <string.h>
#include <stdio.h>
#include "com_iteye_weimingtom_jni_study_Test2.h"

/*
C:\cygwin\home\Administrator\android-ndk-r7b-windows\android-ndk-r7b\platforms\android-8\arch-arm\usr\include\android
*/

jstring JNICALL Java_com_iteye_weimingtom_jni_study_Test2_mycall
  (JNIEnv *env, jobject obj)
{
    return (*env)->NewStringUTF(env, "Hello from JNI !");
}

void JNICALL Java_com_iteye_weimingtom_jni_study_Test2_print
  (JNIEnv *env, jobject obj)
{
	__android_log_print(ANDROID_LOG_INFO, "Test2", "Hello World!");
}

jint JNICALL Java_com_iteye_weimingtom_jni_study_Test2_sumArray
  (JNIEnv *env, jobject obj, jintArray arr)
{
#if 0
    jint buf[10];
    jint i, sum = 0;
    (*env)->GetIntArrayRegion(env, arr, 0, 10, buf);
    for (i = 0; i < 10; i++) {
        sum += buf[i];
    }
    return sum;
#endif

#if 1
    jint *carr;
    jint i, sum = 0;
    carr = (*env)->GetIntArrayElements(env, arr, NULL);
    if (carr == NULL) {
        return 0; /* exception occurred */
    }

    for (i=0; i<10; i++) {
        sum += carr[i];
    }

    (*env)->ReleaseIntArrayElements(env, arr, carr, 0);
    return sum;
#endif
}

jobjectArray JNICALL Java_com_iteye_weimingtom_jni_study_Test2_initInt2DArray
  (JNIEnv *env, jclass cls, jint size)
{
    jobjectArray result;
    int i;
    jclass intArrCls = (*env)->FindClass(env, "[I");
    if (intArrCls == NULL) {
        return NULL; /* exception thrown */
    }
    result = (*env)->NewObjectArray(env, size, intArrCls, NULL);
    if (result == NULL) {
        return NULL; /* out of memory error thrown */
    }
    for (i = 0; i < size; i++) {
        jint tmp[256];  /* make sure it is large enough! */
        int j;
        jintArray iarr = (*env)->NewIntArray(env, size);
        if (iarr == NULL) {
            return NULL; /* out of memory error thrown */
        }
        for (j = 0; j < size; j++) {
            tmp[j] = i + j;
        }
        (*env)->SetIntArrayRegion(env, iarr, 0, size, tmp);
        (*env)->SetObjectArrayElement(env, result, i, iarr);
        (*env)->DeleteLocalRef(env, iarr);
    }
    return result;
}

jstring JNICALL Java_com_iteye_weimingtom_jni_study_Test2_getLine
  (JNIEnv *env, jobject obj, jstring prompt)
{
    char buf[128];
    const char *str;
    str = (*env)->GetStringUTFChars(env, prompt, NULL);
    if (str == NULL) {
        return NULL; /* OutOfMemoryError already thrown */
    }
    printf("%s", str);
    (*env)->ReleaseStringUTFChars(env, prompt, str);
    /* We assume here that the user does not type more than
     * 127 characters */
    //scanf("%s", buf);
    sscanf("Hello, world!", "%s", buf);
    return (*env)->NewStringUTF(env, buf);
}

jstring JNICALL Java_com_iteye_weimingtom_jni_study_Test2_getLine2
  (JNIEnv *env, jobject obj, jstring prompt)
{
    /* assume the prompt string and user input has less than 128
       characters */
    char outbuf[128], inbuf[128];
    int len = (*env)->GetStringLength(env, prompt);
    (*env)->GetStringUTFRegion(env, prompt, 0, len, outbuf);
    printf("%s", outbuf);
    //scanf("%s", inbuf);
	sscanf("Hello, world!", "%s", inbuf);
    return (*env)->NewStringUTF(env, inbuf);
}

JNIEXPORT void JNICALL Java_com_iteye_weimingtom_jni_study_Test2_accessField
  (JNIEnv *env, jobject obj)
{
    jfieldID fid;   /* store the field ID */
    jstring jstr;
    const char *str;

    /* Get a reference to obj's class */
    jclass cls = (*env)->GetObjectClass(env, obj);

    printf("In C:\n");

    /* Look for the instance field s in cls */
    fid = (*env)->GetFieldID(env, cls, "s",
                             "Ljava/lang/String;");
    if (fid == NULL) {
        return; /* failed to find the field */
    }

    /* Read the instance field s */
    jstr = (*env)->GetObjectField(env, obj, fid);
    str = (*env)->GetStringUTFChars(env, jstr, 0);
    if (str == NULL) {
        return; /* out of memory */
    }
    printf("  c.s = \"%s\"\n", str);
    (*env)->ReleaseStringUTFChars(env, jstr, str);

    /* Create a new string and overwrite the instance field */
    jstr = (*env)->NewStringUTF(env, "123");
    (*env)->SetObjectField(env, obj, fid, jstr);
}

JNIEXPORT void JNICALL Java_com_iteye_weimingtom_jni_study_Test2_accessField2
  (JNIEnv *env, jobject obj)
{
    static jfieldID fid_s = NULL; /* cached field ID for s */

    jclass cls = (*env)->GetObjectClass(env, obj);
    jstring jstr;
    const char *str;

    if (fid_s == NULL) {
        fid_s = (*env)->GetFieldID(env, cls, "s",
                                   "Ljava/lang/String;");
        if (fid_s == 0) {
            return; /* exception already thrown */
        }
    }

    printf("In C:\n");

    jstr = (*env)->GetObjectField(env, obj, fid_s);
    str = (*env)->GetStringUTFChars(env, jstr, 0);
    if (str == NULL) {
        return; /* out of memory */
    }
    printf("  c.s = \"%s\"\n", str);
    (*env)->ReleaseStringUTFChars(env, jstr, str);

    jstr = (*env)->NewStringUTF(env, "123");
    (*env)->SetObjectField(env, obj, fid_s, jstr);
}

void JNICALL Java_com_iteye_weimingtom_jni_study_Test2_nativeMethod
  (JNIEnv *env, jobject obj)
{
    jclass cls = (*env)->GetObjectClass(env, obj);
    jmethodID mid =
        (*env)->GetMethodID(env, cls, "callback", "()V");
    if (mid == NULL) {
        return; /*  method not found */
    }
    printf("In C\n");
    (*env)->CallVoidMethod(env, obj, mid);
}

jmethodID MID_InstanceMethodCall_callback;
JNIEXPORT void JNICALL Java_com_iteye_weimingtom_jni_study_Test2_initIDs
  (JNIEnv *env, jclass cls)
{
    MID_InstanceMethodCall_callback =
        (*env)->GetMethodID(env, cls, "callback", "()V");
}

JNIEXPORT void JNICALL Java_com_iteye_weimingtom_jni_study_Test2_nativeMethod2
  (JNIEnv *env, jobject obj)
{
    printf("In C\n");
    (*env)->CallVoidMethod(env, obj,
                           MID_InstanceMethodCall_callback);
}


jstring
MyNewString(JNIEnv *env, jchar *chars, jint len)
{
    jclass stringClass;
    jmethodID cid;
    jcharArray elemArr;
    jstring result;

    stringClass = (*env)->FindClass(env, "java/lang/String");
    if (stringClass == NULL) {
        return NULL; /* exception thrown */
    }

    /* Get the method ID for the String(char[]) constructor */
    cid = (*env)->GetMethodID(env, stringClass,
                              "<init>", "([C)V");
    if (cid == NULL) {
        return NULL; /* exception thrown */
    }

    /* Create a char[] that holds the string characters */
    elemArr = (*env)->NewCharArray(env, len);
    if (elemArr == NULL) {
        return NULL; /* exception thrown */
    }
    (*env)->SetCharArrayRegion(env, elemArr, 0, len, chars);

    /* Construct a java.lang.String object */
    result = (*env)->NewObject(env, stringClass, cid, elemArr);

    /* Allow local ref to intermediate char[] to be freed */
    (*env)->DeleteLocalRef(env, elemArr);
    return result;
}

JNIEXPORT jstring JNICALL Java_com_iteye_weimingtom_jni_study_Test2_nativeMethod3
  (JNIEnv *env, jclass cls)
{
    jchar str[] = {'a', 'b', 'c', 'd'};
    return MyNewString(env, str, sizeof(str) / sizeof(jchar));
}

jstring
MyNewString2(JNIEnv *env, jchar *chars, jint len)
{
    jclass stringClass;
    jcharArray elemArr;
    static jmethodID cid = NULL;
    jstring result;

    stringClass = (*env)->FindClass(env, "java/lang/String");
    if (stringClass == NULL) {
        return NULL; /* exception thrown */
    }

    /* Note that cid is a static variable */
    if (cid == NULL) {
        /* Get the method ID for the String constructor */
        cid = (*env)->GetMethodID(env, stringClass,
                                  "<init>", "([C)V");
        if (cid == NULL) {
            return NULL; /* exception thrown */
        }
    }

    /* Create a char[] that holds the string characters */
    elemArr = (*env)->NewCharArray(env, len);
    if (elemArr == NULL) {
        return NULL; /* exception thrown */
    }
    (*env)->SetCharArrayRegion(env, elemArr, 0, len, chars);

    /* Construct a java.lang.String object */
    result = (*env)->NewObject(env, stringClass, cid, elemArr);

    /* Allow local ref to intermediate char[] to be freed */
    (*env)->DeleteLocalRef(env, elemArr);
    return result;
}

JNIEXPORT jstring JNICALL Java_com_iteye_weimingtom_jni_study_Test2_nativeMethod4
  (JNIEnv *env, jclass cls)
{
    jchar str[] = {'a', 'b', 'c', 'd'};
    return MyNewString2(env, str, sizeof(str) / sizeof(jchar));
}

JNIEXPORT void JNICALL Java_com_iteye_weimingtom_jni_study_Test2_accessField5
  (JNIEnv *env, jobject obj)
{
    jfieldID fid;   /* store the field ID */
    jint si;

    /* Get a reference to obj's class */
    jclass cls = (*env)->GetObjectClass(env, obj);

    printf("In C:\n");

    /* Look for the static field si in cls */
    fid = (*env)->GetStaticFieldID(env, cls, "si", "I");
    if (fid == 0) {
        return; /* field not found */
    }
    /* Access the static field si */
    si = (*env)->GetStaticIntField(env, cls, fid);
    printf("  StaticFieldAccess.si = %d\n", si);
    (*env)->SetStaticIntField(env, cls, fid, 200);
}

JNIEXPORT void JNICALL Java_com_iteye_weimingtom_jni_study_Test2_nativeMethod6
  (JNIEnv *env, jobject obj)
{
    jclass cls = (*env)->GetObjectClass(env, obj);
    jmethodID mid =
        (*env)->GetStaticMethodID(env, cls, "callback2", "()V");
    if (mid == NULL) {
        return;  /* method not found */
    }
    printf("In C\n");
    (*env)->CallStaticVoidMethod(env, cls, mid);
}


/* This code is OK */
jstring
MyNewString3(JNIEnv *env, jchar *chars, jint len)
{
    static jclass stringClass = NULL;
    jmethodID cid;
    jcharArray elemArr;
    jstring result;

    if (stringClass == NULL) {
        jclass stringClassLocal =
            (*env)->FindClass(env, "java/lang/String");
        if (stringClassLocal == NULL) {
            return NULL; /* exception thrown */
        }
        /* Create a global reference */
        stringClass =
            (*env)->NewGlobalRef(env, stringClassLocal);

        /* The local reference is no longer useful */
        (*env)->DeleteLocalRef(env, stringClassLocal);

        /* Is the global reference created successfully? */
        if (stringClass == NULL) {
            return NULL; /* out of memory exception thrown */

        }
    }

    /* Get the method ID for the String(char[]) constructor */
    cid = (*env)->GetMethodID(env, stringClass,
                              "<init>", "([C)V");
    if (cid == NULL) {
        return NULL; /* exception thrown */
    }

    /* Create a char[] that holds the string characters */
    elemArr = (*env)->NewCharArray(env, len);
    if (elemArr == NULL) {
        return NULL; /* exception thrown */
    }
    (*env)->SetCharArrayRegion(env, elemArr, 0, len, chars);

    /* Construct a java.lang.String object */
    result = (*env)->NewObject(env, stringClass, cid, elemArr);

    /* Allow local ref to intermediate char[] to be freed */
    (*env)->DeleteLocalRef(env, elemArr);
    return result;
}

JNIEXPORT jstring JNICALL Java_com_iteye_weimingtom_jni_study_Test2_nativeMethod7
  (JNIEnv *env, jclass cls)
{
    jchar str[] = {'a', 'b', 'c', 'd'};
    return MyNewString3(env, str, sizeof(str) / sizeof(jchar));
}
