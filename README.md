eriri
=======

Porting Ruby 1.8 (mini version) and Ruby/SDL to Android JNI  
Eriri is also the name of a character (英梨々) in Saekano: How to Raise a Boring Girlfriend.  

## History:  
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

## TODO:  
* rubysdl VC6 project.  
* rubyjni can require .so in script file (but in fact not).  

