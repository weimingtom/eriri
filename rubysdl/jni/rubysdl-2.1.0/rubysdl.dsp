# Microsoft Developer Studio Project File - Name="rubysdl" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=rubysdl - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "rubysdl.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "rubysdl.mak" CFG="rubysdl - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "rubysdl - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "rubysdl - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "rubysdl - Win32 Release"

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
# ADD CPP /nologo /MT /W3 /GX /O2 /I "..\sdl\include" /I "..\sdl" /I "..\ruby-1.8.4" /I "..\sge030809" /I "..\sdl_ttf" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D "ENABLE_OPENGL" /D "HAVE_SGE" /D "HAVE_SDL_TTF" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x804 /d "NDEBUG"
# ADD RSC /l 0x804 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "rubysdl - Win32 Debug"

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
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "..\sdl\include" /I "..\sdl" /I "..\ruby-1.8.4" /I "..\sge030809" /I "..\sdl_ttf" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /D "ENABLE_OPENGL" /D "HAVE_SGE" /D "HAVE_SDL_TTF" /FD /GZ /c
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

# Name "rubysdl - Win32 Release"
# Name "rubysdl - Win32 Debug"
# Begin Source File

SOURCE=.\rubysdl.h
# End Source File
# Begin Source File

SOURCE=.\rubysdl_cdrom.c
# End Source File
# Begin Source File

SOURCE=.\rubysdl_event.c
# End Source File
# Begin Source File

SOURCE=.\rubysdl_event_key.c
# End Source File
# Begin Source File

SOURCE=.\rubysdl_image.c
# End Source File
# Begin Source File

SOURCE=.\rubysdl_joystick.c
# End Source File
# Begin Source File

SOURCE=.\rubysdl_kanji.c
# End Source File
# Begin Source File

SOURCE=.\rubysdl_main.c
# End Source File
# Begin Source File

SOURCE=.\rubysdl_mixer.c
# End Source File
# Begin Source File

SOURCE=.\rubysdl_mouse.c
# End Source File
# Begin Source File

SOURCE=.\rubysdl_opengl.c
# End Source File
# Begin Source File

SOURCE=.\rubysdl_pixel.c
# End Source File
# Begin Source File

SOURCE=.\rubysdl_rwops.c
# End Source File
# Begin Source File

SOURCE=.\rubysdl_sdlskk.c
# End Source File
# Begin Source File

SOURCE=.\rubysdl_sge_video.c
# End Source File
# Begin Source File

SOURCE=.\rubysdl_smpeg.c
# End Source File
# Begin Source File

SOURCE=.\rubysdl_time.c
# End Source File
# Begin Source File

SOURCE=.\rubysdl_ttf.c
# End Source File
# Begin Source File

SOURCE=.\rubysdl_video.c
# End Source File
# Begin Source File

SOURCE=.\rubysdl_wm.c
# End Source File
# Begin Source File

SOURCE=.\SDL_kanji.c
# End Source File
# Begin Source File

SOURCE=.\SDL_kanji.h
# End Source File
# End Target
# End Project
