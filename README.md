eriri
=======

Porting Ruby 1.8 (mini version) and Ruby/SDL to Android JNI  
Eriri is also the name of a character (英梨々) in Saekano: How to Raise a Boring Girlfriend.  

## History:  
2015-11-29: Reduce android view counts (just one LinearLayout and one DemoGLSurfaceView, see ONScripter.java). Now SDL::Screen.open may returns a screen smaller than DemoGLSurfaceView (bottom left alignment). I like this, which is different from origin (I use alpha.rb for test).  
2015-08-08: Create mrubyjni, using NDK & VC6, only testing mrb_load_string.   
2015-06-28: Fix keyboard event bug (SDLK_LEFT) of stetris.rb (under win32).  
2015-06-07: Running success: bfont.rb, collision.rb, ellipses.rb, event2.rb, font.rb, fpstimer.rb, randrect.rb, sgetest.rb, stetris.rb, testsprite.rb, but keyboard event response and color key are not available now.    
2015-06-02: Running alpha.rb and alphadraw.rb success (using SDL2 source).   
2015-05-24: Running aadraw.rb (a sample of Ruby/SDL) success on Android and Visual Studio C++ 6.0.   
2015-05-17: Rubysdl VC6 project (test version).   
2015-05-10: Create rubysdl Android project, merging with rubyjni.  
2015-05-02: Catch ruby exception (error handling) using ruby_cleanup(ruby_exec()).  
2015-05-01: Porting simple ruby embeded program, compiled with VC6 and JNI Project, but different running method, need to be ported well. It can also load ruby script from assets folder directly under Android.   

## References:  
* Ruby 1.8.4  
https://www.ruby-lang.org/ja/  
* Ruby/SDL  
https://www.kmc.gr.jp/~ohai/rubysdl.html  
* ONScripter on Android  
http://onscripter.sourceforge.jp/android/android.html  
* sdlruby_loader  
https://onedrive.live.com/?cid=1A0406E116655303&id=1a0406e116655303%21108&authkey=%21AEU0L3HpCKm7YLU  
http://toro.2ch.sc/test/read.cgi/gamedev/1207069887/l50   
* SDL 2.0.3   
http://www.libsdl.org/download-2.0.php  
* mruby 1.1.0  
https://github.com/mruby/mruby  
* Qard/mruby-print-android  
https://github.com/Qard/mruby-print-android  
* luisbebop/hello-jni  
https://github.com/luisbebop/hello-jni  

## TODO:  
* (**FINISH**) rubysdl VC6 project.  
* rubyjni can require .so in script file (but in fact not).  
* keyboard event.  
* color key.  

## etc ruby relatived script engine  
* https://github.com/chrisseaton/rhizome  

## RUBY COOKBOOK  
* see baidupan  

## YARV  
* http://www.atdot.net/yarv/  
* see https://ja.wikipedia.org/wiki/Ruby  

## ruby-implementations  
* https://github.com/codicoscepticos/ruby-implementations  
* https://qiita.com/takeyuweb/items/ea7b42746152f03efdaa#rubiniusるびにうす  
* https://www.ruby.or.jp/ja/tech/install/ruby/implementations.html  

## hotruby (for as3)    
* https://github.com/weimingtom/hotruby  
* https://github.com/weimingtom/hotruby_playground  

## xruby (compile rb to jar)  
* https://github.com/weimingtom/xruby  

## CoffeeScript (see VNMaker)  
* https://coffeescript.org  
* see VN Maker  
* https://github.com/jashkenas/coffeescript  

