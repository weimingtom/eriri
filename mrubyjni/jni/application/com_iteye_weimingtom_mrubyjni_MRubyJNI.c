#include "com_iteye_weimingtom_mrubyjni_MRubyJNI.h"
#include <string.h>
#include <mruby.h>
#include <mruby/compile.h>

JNIEXPORT jint JNICALL Java_com_iteye_weimingtom_mrubyjni_MRubyJNI_exec
  (JNIEnv *env, jobject obj, jstring filename)
{
	char code[] = "p 'mruby rocks!'";
	mrb_state *mrb = mrb_open();
	mrb_load_string(mrb, code);
	return 0;
}
