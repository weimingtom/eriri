@echo off
@cd ..
::@set path=C:\cygwin\home\Administrator\android-ndk-r7b-windows\android-ndk-r7b\;path
@call ndk-build.cmd clean
@call ndk-build.cmd
@pause
@echo on
