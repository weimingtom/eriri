#include "com_iteye_weimingtom_rubyjni_RubyJNI.h"
#include <stdlib.h>
#include <stdio.h>
#include <ruby.h>

extern int main(int argc, char **argv, char **envp);

JNIEXPORT jint JNICALL Java_com_iteye_weimingtom_rubyjni_RubyJNI_exec
  (JNIEnv *env, jobject obj, jstring filename)
{
    char bufFilename[256] = {0};
    const char *strFilename;
    strFilename = (*env)->GetStringUTFChars(env, filename, NULL);
    if (strFilename == NULL) {
        return -1; /* OutOfMemoryError already thrown */
    }
    //printf("%s", strFilename);
    snprintf(bufFilename, sizeof(bufFilename) - 1, "%s", strFilename);
    (*env)->ReleaseStringUTFChars(env, filename, strFilename);

	ruby_debug = Qtrue;
	//warning: method redefined; discarding old
	ruby_verbose = Qtrue;

	ruby_init_jni(env, obj);

	if (0)
	{
		int rubyargc = 3;
		char *rubyargv[] = {"ruby.exe", "-e", "printf \"hello\"", NULL};
		ruby_init();
		ruby_options(rubyargc, rubyargv);
		ruby_run();
	}
	
	if (0)
	{
		//see http://my.opera.com/subjam/blog/embedding-ruby-in-c-programs
		//see http://aeditor.rubyforge.org/ruby_cplusplus/index.html
		ruby_init();
		rb_eval_string("puts 'hello world'");
		//FIXME: Don't call rb_eval_string() after ruby_finalize(),
		//  stack will be overflow
		//ruby_finalize();
	}

	if (1)
	{
		ruby_debug = Qtrue;
		//warning: method redefined; discarding old
		ruby_verbose = Qtrue;

		//see http://my.opera.com/subjam/blog/embedding-ruby-in-c-programs
		//see http://aeditor.rubyforge.org/ruby_cplusplus/index.html
		ruby_init();
		//rb_eval_string("puts 'hello world'");
		//rb_eval_string("printf 'hello'");
		//ruby_finalize();

		//ruby_init();
		//rb_eval_string("puts 'hello world'");
		//rb_eval_string("printf 'hello'");
		//ruby_finalize();
		ruby_init_loadpath();
		rb_load_file(bufFilename/*"test_fib.rb"*/);
		//rb_exec_end_proc();
		//state = ruby_exec();
		//ruby_cleanup(state);
		return ruby_cleanup(ruby_exec());
	}
	
	return -1;
}
