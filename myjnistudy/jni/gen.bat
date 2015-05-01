@echo off
::@set path=C:\Program Files\Java\jdk1.6.0_26\bin;%path%
@javah -jni -classpath ../bin/classes com.iteye.weimingtom.jni.study.Test
@javah -jni -classpath ../bin/classes com.iteye.weimingtom.jni.study.Test2
@pause
@echo on
