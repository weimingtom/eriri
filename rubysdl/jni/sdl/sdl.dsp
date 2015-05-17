# Microsoft Developer Studio Project File - Name="sdl" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=sdl - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "sdl.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "sdl.mak" CFG="sdl - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "sdl - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "sdl - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "sdl - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /MT /w /W0 /GX /O2 /I ".\include" /I "." /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D DECLSPEC="" /D "_WINDOWS" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x804 /d "NDEBUG"
# ADD RSC /l 0x804 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "sdl - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /MTd /w /W0 /Gm /GX /ZI /Od /I ".\include" /I "." /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /D DECLSPEC="" /D "_WINDOWS" /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x804 /d "_DEBUG"
# ADD RSC /l 0x804 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ENDIF 

# Begin Target

# Name "sdl - Win32 Release"
# Name "sdl - Win32 Debug"
# Begin Group "src"

# PROP Default_Filter ""
# Begin Group "audio"

# PROP Default_Filter ""
# Begin Group "audio_dummy"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\audio\dummy\sdl_dummyaudio.c
# End Source File
# End Group
# Begin Group "audio_windib"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\audio\windib\sdl_dibaudio.c
# End Source File
# End Group
# Begin Group "audio_disk"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\audio\disk\sdl_diskaudio.c
# End Source File
# End Group
# Begin Source File

SOURCE=.\src\audio\sdl_audio.c
# End Source File
# Begin Source File

SOURCE=.\src\audio\sdl_audiocvt.c
# End Source File
# Begin Source File

SOURCE=.\src\audio\sdl_audiodev.c
# End Source File
# Begin Source File

SOURCE=.\src\audio\sdl_audiotypecvt.c
# End Source File
# Begin Source File

SOURCE=.\src\audio\sdl_mixer.c
# End Source File
# Begin Source File

SOURCE=.\src\audio\sdl_mixer_m68k.c
# End Source File
# Begin Source File

SOURCE=.\src\audio\sdl_mixer_MMX.c
# End Source File
# Begin Source File

SOURCE=.\src\audio\sdl_mixer_MMX_VC.c
# End Source File
# Begin Source File

SOURCE=.\src\audio\sdl_wave.c
# End Source File
# End Group
# Begin Group "cpuinfo"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\cpuinfo\sdl_cpuinfo.c
# End Source File
# End Group
# Begin Group "events"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\events\sdl_events.c
# End Source File
# Begin Source File

SOURCE=.\src\events\sdl_keyboard.c
# End Source File
# Begin Source File

SOURCE=.\src\events\sdl_mouse.c
# End Source File
# Begin Source File

SOURCE=.\src\events\sdl_quit.c
# End Source File
# Begin Source File

SOURCE=.\src\events\sdl_windowevents.c
# End Source File
# End Group
# Begin Group "file"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\file\sdl_rwops.c
# End Source File
# End Group
# Begin Group "joystick"

# PROP Default_Filter ""
# Begin Group "joystick_win32"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\joystick\win32\sdl_mmjoystick.c
# End Source File
# End Group
# Begin Source File

SOURCE=.\src\joystick\sdl_joystick.c
# End Source File
# End Group
# Begin Group "stdlib"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\stdlib\sdl_getenv.c
# End Source File
# Begin Source File

SOURCE=.\src\stdlib\sdl_iconv.c
# End Source File
# Begin Source File

SOURCE=.\src\stdlib\sdl_malloc.c
# End Source File
# Begin Source File

SOURCE=.\src\stdlib\sdl_qsort.c
# End Source File
# Begin Source File

SOURCE=.\src\stdlib\sdl_stdlib.c
# End Source File
# Begin Source File

SOURCE=.\src\stdlib\sdl_string.c
# End Source File
# End Group
# Begin Group "thread"

# PROP Default_Filter ""
# Begin Group "thread_win32"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\thread\win32\sdl_sysmutex.c
# End Source File
# Begin Source File

SOURCE=.\src\thread\win32\sdl_syssem.c
# End Source File
# Begin Source File

SOURCE=.\src\thread\win32\sdl_systhread.c
# End Source File
# End Group
# Begin Source File

SOURCE=.\src\thread\sdl_thread.c
# End Source File
# End Group
# Begin Group "timer"

# PROP Default_Filter ""
# Begin Group "timer_win32"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\timer\win32\sdl_systimer.c
# End Source File
# End Group
# Begin Source File

SOURCE=.\src\timer\sdl_timer.c
# End Source File
# End Group
# Begin Group "video"

# PROP Default_Filter ""
# Begin Group "video_dummy"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\video\dummy\sdl_nullevents.c
# End Source File
# Begin Source File

SOURCE=.\src\video\dummy\sdl_nullrender.c
# End Source File
# Begin Source File

SOURCE=.\src\video\dummy\sdl_nullvideo.c
# End Source File
# End Group
# Begin Group "video_win32"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\video\win32\sdl_ceddrawrender.c
# End Source File
# Begin Source File

SOURCE=.\src\video\win32\sdl_d3drender.c
# End Source File
# Begin Source File

SOURCE=.\src\video\win32\sdl_gapirender.c
# End Source File
# Begin Source File

SOURCE=.\src\video\win32\sdl_gdirender.c
# End Source File
# Begin Source File

SOURCE=.\src\video\win32\sdl_win32events.c
# End Source File
# Begin Source File

SOURCE=.\src\video\win32\sdl_win32gamma.c
# End Source File
# Begin Source File

SOURCE=.\src\video\win32\sdl_win32keyboard.c
# End Source File
# Begin Source File

SOURCE=.\src\video\win32\sdl_win32modes.c
# End Source File
# Begin Source File

SOURCE=.\src\video\win32\sdl_win32mouse.c
# End Source File
# Begin Source File

SOURCE=.\src\video\win32\sdl_win32opengl.c
# End Source File
# Begin Source File

SOURCE=.\src\video\win32\sdl_win32video.c
# End Source File
# Begin Source File

SOURCE=.\src\video\win32\sdl_win32window.c
# End Source File
# End Group
# Begin Source File

SOURCE=.\src\video\sdl_alphamult.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_blendfillrect.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_blendline.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_blendpoint.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_blendrect.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_blit.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_blit_0.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_blit_1.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_blit_A.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_blit_auto.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_blit_copy.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_blit_N.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_blit_slow.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_bmp.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_drawline.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_drawpoint.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_drawrect.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_fillrect.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_gamma.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_pixels.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_rect.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_renderer_gl.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_renderer_gles.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_renderer_sw.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_RLEaccel.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_stretch.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_surface.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_video.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_yuv_mmx.c
# End Source File
# Begin Source File

SOURCE=.\src\video\sdl_yuv_sw.c
# End Source File
# End Group
# Begin Group "loadso"

# PROP Default_Filter ""
# Begin Group "loadso_win32"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\loadso\win32\sdl_sysloadso.c
# End Source File
# End Group
# End Group
# Begin Group "power"

# PROP Default_Filter ""
# Begin Group "power_windows"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\power\windows\sdl_syspower.c
# End Source File
# End Group
# End Group
# Begin Group "atomic"

# PROP Default_Filter ""
# Begin Group "atomic_win32"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\atomic\win32\sdl_atomic.c
# End Source File
# End Group
# End Group
# Begin Group "libm"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\libm\e_log.c
# End Source File
# Begin Source File

SOURCE=.\src\libm\e_pow.c
# End Source File
# Begin Source File

SOURCE=.\src\libm\e_rem_pio2.c
# End Source File
# Begin Source File

SOURCE=.\src\libm\e_sqrt.c
# End Source File
# Begin Source File

SOURCE=.\src\libm\k_cos.c
# End Source File
# Begin Source File

SOURCE=.\src\libm\k_rem_pio2.c
# End Source File
# Begin Source File

SOURCE=.\src\libm\k_sin.c
# End Source File
# Begin Source File

SOURCE=.\src\libm\s_copysign.c
# End Source File
# Begin Source File

SOURCE=.\src\libm\s_cos.c
# End Source File
# Begin Source File

SOURCE=.\src\libm\s_fabs.c
# End Source File
# Begin Source File

SOURCE=.\src\libm\s_floor.c
# End Source File
# Begin Source File

SOURCE=.\src\libm\s_scalbn.c
# End Source File
# Begin Source File

SOURCE=.\src\libm\s_sin.c
# End Source File
# End Group
# Begin Source File

SOURCE=.\src\sdl.c
# End Source File
# Begin Source File

SOURCE=.\src\sdl_assert.c
# End Source File
# Begin Source File

SOURCE=.\src\sdl_compat.c
# End Source File
# Begin Source File

SOURCE=.\src\sdl_error.c
# End Source File
# Begin Source File

SOURCE=.\src\sdl_fatal.c
# End Source File
# End Group
# End Target
# End Project
