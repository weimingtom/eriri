#include <string.h>
#include <jni.h>
#include "com_iteye_weimingtom_jni_study_Test.h"

jint JNICALL Java_com_iteye_weimingtom_jni_study_Test_mycall
  (JNIEnv *env, jclass cl, jint x)
{
    return x + 1;  
}
