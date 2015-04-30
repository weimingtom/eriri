#include "com_iteye_weimingtom_rubyjni_RubyJNI.h"
#include <stdlib.h>
#include <ruby.h>

extern int main(int argc, char **argv, char **envp);

JNIEXPORT jint JNICALL Java_com_iteye_weimingtom_rubyjni_RubyJNI_exec
  (JNIEnv *env, jobject obj, jint x)
{
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
		ruby_init();
		ruby_init_loadpath();
		//rb_load_file("fib.rb");
		rb_load_file("test_fib.rb");
		ruby_exec();
		//ruby_run();
		//ruby_finalize();
	}
	
	return x + 1;
}
