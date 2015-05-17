# Microsoft Developer Studio Project File - Name="sge" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=sge - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "sge.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "sge.mak" CFG="sge - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "sge - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "sge - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "sge - Win32 Release"

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
# ADD CPP /nologo /MT /W3 /GX /O2 /I "..\sdl\include" /I "..\sdl_image" /I "..\freetype\include" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D DECLSPEC="" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x804 /d "NDEBUG"
# ADD RSC /l 0x804 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "sge - Win32 Debug"

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
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "..\sdl\include" /I "..\sdl_image" /I "..\freetype\include" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /D DECLSPEC="" /FR /FD /GZ /c
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

# Name "sge - Win32 Release"
# Name "sge - Win32 Debug"
# Begin Source File

SOURCE=.\sge.h
# End Source File
# Begin Source File

SOURCE=.\sge_blib.cpp
# End Source File
# Begin Source File

SOURCE=.\sge_blib.h
# End Source File
# Begin Source File

SOURCE=.\sge_bm_text.cpp
# End Source File
# Begin Source File

SOURCE=.\sge_bm_text.h
# End Source File
# Begin Source File

SOURCE=.\sge_collision.cpp
# End Source File
# Begin Source File

SOURCE=.\sge_collision.h
# End Source File
# Begin Source File

SOURCE=.\sge_config.h
# End Source File
# Begin Source File

SOURCE=.\sge_internal.h
# End Source File
# Begin Source File

SOURCE=.\sge_misc.cpp
# End Source File
# Begin Source File

SOURCE=.\sge_misc.h
# End Source File
# Begin Source File

SOURCE=.\sge_primitives.cpp
# End Source File
# Begin Source File

SOURCE=.\sge_primitives.h
# End Source File
# Begin Source File

SOURCE=.\sge_rotation.cpp
# End Source File
# Begin Source File

SOURCE=.\sge_rotation.h
# End Source File
# Begin Source File

SOURCE=.\sge_shape.cpp
# End Source File
# Begin Source File

SOURCE=.\sge_shape.h
# End Source File
# Begin Source File

SOURCE=.\sge_surface.cpp
# End Source File
# Begin Source File

SOURCE=.\sge_surface.h
# End Source File
# Begin Source File

SOURCE=.\sge_textpp.cpp
# End Source File
# Begin Source File

SOURCE=.\sge_textpp.h
# End Source File
# Begin Source File

SOURCE=.\sge_tt_text.cpp
# End Source File
# Begin Source File

SOURCE=.\sge_tt_text.h
# End Source File
# End Target
# End Project
