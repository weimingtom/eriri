/**********************************************************************

  main.c -

  $Author: eban $
  $Date: 2004/10/31 16:06:57 $
  created at: Fri Aug 19 13:19:58 JST 1994

  Copyright (C) 1993-2003 Yukihiro Matsumoto

**********************************************************************/

#include "ruby.h"

#ifdef __human68k__
int _stacksize = 262144;
#endif

#if defined __MINGW32__
int _CRT_glob = 0;
#endif

#if defined(__MACOS__) && defined(__MWERKS__)
#include <console.h>
#endif

/* to link startup code with ObjC support */
#if (defined(__APPLE__) || defined(__NeXT__)) && defined(__MACH__)
static void objcdummyfunction( void ) { objc_msgSend(); }
#endif

int
main(argc, argv, envp)
    int argc;
    char **argv, **envp;
{
#if 0
#ifdef _WIN32
    NtInitialize(&argc, &argv);
#endif
#if defined(__MACOS__) && defined(__MWERKS__)
    argc = ccommand(&argv);
#endif

    ruby_init();
    ruby_options(argc, argv);
    ruby_run();



#elif 0
	char *ARGV[] = {"ruby.exe", "test_fib.rb", NULL};

#ifdef _WIN32
    NtInitialize(&argc, &argv);
#endif
#if defined(__MACOS__) && defined(__MWERKS__)
    argc = ccommand(&argv);
#endif

	argc = 2;
	argv = ARGV;
    ruby_init();
    ruby_options(argc, argv);
    ruby_run();


#else
	
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
	//rb_load_file("fib.rb");
	rb_load_file("test_fib.rb");
	ruby_exec();

#endif
    return 0;
}
