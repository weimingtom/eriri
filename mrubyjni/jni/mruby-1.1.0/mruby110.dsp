# Microsoft Developer Studio Project File - Name="mruby110" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=mruby110 - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "mruby110.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "mruby110.mak" CFG="mruby110 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "mruby110 - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "mruby110 - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "mruby110 - Win32 Release"

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
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /W3 /GX /O2 /I "." /I "./src" /I "./include" /I "./msinttypes-r26" /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD BASE RSC /l 0x804 /d "NDEBUG"
# ADD RSC /l 0x804 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 oldnames.lib user32.lib advapi32.lib wsock32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "." /I "./src" /I "./include" /I "./msinttypes-r26" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /FR /YX /FD /GZ /c
# ADD BASE RSC /l 0x804 /d "_DEBUG"
# ADD RSC /l 0x804 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 oldnames.lib user32.lib advapi32.lib wsock32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept

!ENDIF 

# Begin Target

# Name "mruby110 - Win32 Release"
# Name "mruby110 - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\src\array.c
# End Source File
# Begin Source File

SOURCE=.\src\backtrace.c
# End Source File
# Begin Source File

SOURCE=.\src\class.c
# End Source File
# Begin Source File

SOURCE=.\src\codegen.c
# End Source File
# Begin Source File

SOURCE=.\src\compar.c
# End Source File
# Begin Source File

SOURCE=.\src\crc.c
# End Source File
# Begin Source File

SOURCE=.\src\debug.c
# End Source File
# Begin Source File

SOURCE=.\src\dump.c
# End Source File
# Begin Source File

SOURCE=.\src\enum.c
# End Source File
# Begin Source File

SOURCE=.\src\error.c
# End Source File
# Begin Source File

SOURCE=.\src\error.h
# End Source File
# Begin Source File

SOURCE=.\src\etc.c
# End Source File
# Begin Source File

SOURCE=.\src\gc.c
# End Source File
# Begin Source File

SOURCE=.\src\hash.c
# End Source File
# Begin Source File

SOURCE=.\src\init.c
# End Source File
# Begin Source File

SOURCE=.\src\kernel.c
# End Source File
# Begin Source File

SOURCE=.\src\keywords
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\src\lex.def
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\src\load.c
# End Source File
# Begin Source File

SOURCE=.\src\mrb_throw.h
# End Source File
# Begin Source File

SOURCE=.\src\node.h
# End Source File
# Begin Source File

SOURCE=.\src\numeric.c
# End Source File
# Begin Source File

SOURCE=.\src\object.c
# End Source File
# Begin Source File

SOURCE=.\src\opcode.h
# End Source File
# Begin Source File

SOURCE=.\src\parse.y
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\src\pool.c
# End Source File
# Begin Source File

SOURCE=.\src\print.c
# End Source File
# Begin Source File

SOURCE=.\src\proc.c
# End Source File
# Begin Source File

SOURCE=.\src\range.c
# End Source File
# Begin Source File

SOURCE=.\src\state.c
# End Source File
# Begin Source File

SOURCE=.\src\string.c
# End Source File
# Begin Source File

SOURCE=.\src\symbol.c
# End Source File
# Begin Source File

SOURCE=.\src\value_array.h
# End Source File
# Begin Source File

SOURCE=.\src\variable.c
# End Source File
# Begin Source File

SOURCE=.\src\version.c
# End Source File
# Begin Source File

SOURCE=.\src\vm.c
# End Source File
# Begin Source File

SOURCE=.\src\y.tab.c
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Group "mruby"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\include\mruby\array.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\boxing_nan.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\boxing_no.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\boxing_word.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\class.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\compile.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\data.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\debug.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\dump.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\error.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\gc.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\hash.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\irep.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\khash.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\numeric.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\object.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\opcode.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\proc.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\range.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\re.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\string.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\value.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\variable.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby\version.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\include\mrbconf.h
# End Source File
# Begin Source File

SOURCE=.\include\mruby.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# Begin Group "mrblib"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\mrblib\array.rb
# End Source File
# Begin Source File

SOURCE=.\mrblib\class.rb
# End Source File
# Begin Source File

SOURCE=.\mrblib\compar.rb
# End Source File
# Begin Source File

SOURCE=.\mrblib\enum.rb
# End Source File
# Begin Source File

SOURCE=.\mrblib\error.rb
# End Source File
# Begin Source File

SOURCE=.\mrblib\hash.rb
# End Source File
# Begin Source File

SOURCE=.\mrblib\init_mrblib.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\mrblib\kernel.rb
# End Source File
# Begin Source File

SOURCE=.\mrblib\mrblib.c
# End Source File
# Begin Source File

SOURCE=.\mrblib\mrblib.rake
# End Source File
# Begin Source File

SOURCE=.\mrblib\numeric.rb
# End Source File
# Begin Source File

SOURCE=.\mrblib\range.rb
# End Source File
# Begin Source File

SOURCE=.\mrblib\string.rb
# End Source File
# End Group
# Begin Group "mrbgems"

# PROP Default_Filter ""
# Begin Group "mruby-array-ext"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-array-ext\src\array.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-array-ext"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-array-ext"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-array-ext\mrblib\array.rb"
# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-array-ext\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-array-ext"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-array-ext"

!ENDIF 

# End Source File
# End Group
# Begin Group "mruby-enumerator"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-enumerator\mrblib\enumerator.rb"
# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-enumerator\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-enumerator"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-enumerator"

!ENDIF 

# End Source File
# End Group
# Begin Group "mruby-enum-ext"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-enum-ext\mrblib\enum.rb"
# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-enum-ext\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-enum-ext"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-enum-ext"

!ENDIF 

# End Source File
# End Group
# Begin Group "mruby-enum-lazy"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-enum-lazy\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-enum-lazy"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-enum-lazy"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-enum-lazy\mrblib\lazy.rb"
# End Source File
# End Group
# Begin Group "mruby-fiber"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-fiber\src\fiber.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-fiber"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-fiber"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-fiber\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-fiber"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-fiber"

!ENDIF 

# End Source File
# End Group
# Begin Group "mruby-hash-ext"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-hash-ext\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-hash-ext"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-hash-ext"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-hash-ext\src\hash-ext.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-hash-ext"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-hash-ext"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-hash-ext\mrblib\hash.rb"
# End Source File
# End Group
# Begin Group "mruby-kernel-ext"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-kernel-ext\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-kernel-ext"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-kernel-ext"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-kernel-ext\src\kernel.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-kernel-ext"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-kernel-ext"

!ENDIF 

# End Source File
# End Group
# Begin Group "mruby-math"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-math\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-math"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-math"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-math\src\math.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-math"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-math"

!ENDIF 

# End Source File
# End Group
# Begin Group "mruby-numeric-ext"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-numeric-ext\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-numeric-ext"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-numeric-ext"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-numeric-ext\src\numeric_ext.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-numeric-ext"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-numeric-ext"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-numeric-ext\mrblib\numeric_ext.rb"
# End Source File
# End Group
# Begin Group "mruby-object-ext"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-object-ext\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-object-ext"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-object-ext"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-object-ext\src\object.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-object-ext"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-object-ext"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-object-ext\mrblib\object.rb"
# End Source File
# End Group
# Begin Group "mruby-objectspace"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-objectspace\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-objectspace"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-objectspace"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-objectspace\src\mruby_objectspace.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-objectspace"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-objectspace"

!ENDIF 

# End Source File
# End Group
# Begin Group "mruby-print"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-print\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-print"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-print"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-print\src\print.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-print"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-print"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-print\mrblib\print.rb"
# End Source File
# End Group
# Begin Group "mruby-print-android"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-print-android\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-print-android"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-print-android"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-print-android\src\print.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-print-android"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-print-android"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-print-android\mrblib\print.rb"
# End Source File
# End Group
# Begin Group "mruby-proc-ext"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-proc-ext\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-proc-ext"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-proc-ext"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-proc-ext\src\proc.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-proc-ext"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-proc-ext"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-proc-ext\mrblib\proc.rb"
# End Source File
# End Group
# Begin Group "mruby-random"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-random\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-random"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-random"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-random\src\mt19937ar.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-random"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-random"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-random\src\mt19937ar.h"
# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-random\src\random.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-random"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-random"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-random\src\random.h"
# End Source File
# End Group
# Begin Group "mruby-range-ext"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-range-ext\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-range-ext"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-range-ext"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-range-ext\src\range.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-range-ext"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-range-ext"

!ENDIF 

# End Source File
# End Group
# Begin Group "mruby-sprintf"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-sprintf\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-sprintf"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-sprintf"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-sprintf\src\kernel.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-sprintf"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-sprintf"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-sprintf\src\sprintf.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-sprintf"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-sprintf"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-sprintf\mrblib\string.rb"
# End Source File
# End Group
# Begin Group "mruby-string-ext"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-string-ext\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-string-ext"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-string-ext"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-string-ext\src\string.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-string-ext"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-string-ext"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-string-ext\mrblib\string.rb"
# End Source File
# End Group
# Begin Group "mruby-struct"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-struct\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-struct"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-struct"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-struct\src\struct.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-struct"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-struct"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-struct\mrblib\struct.rb"
# End Source File
# End Group
# Begin Group "mruby-symbol-ext"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-symbol-ext\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-symbol-ext"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-symbol-ext"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-symbol-ext\src\symbol.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-symbol-ext"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-symbol-ext"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-symbol-ext\mrblib\symbol.rb"
# End Source File
# End Group
# Begin Group "mruby-time"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-time\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-time"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-time"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-time\src\time.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-time"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-time"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-time\mrblib\time.rb"
# End Source File
# End Group
# Begin Group "mruby-toplevel-ext"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-toplevel-ext\gem_init.c"

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mruby-toplevel-ext"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mruby-toplevel-ext"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\mrbgems\mruby-toplevel-ext\mrblib\toplevel.rb"
# End Source File
# End Group
# Begin Source File

SOURCE=.\mrbgems\gem_init.c

!IF  "$(CFG)" == "mruby110 - Win32 Release"

# PROP Intermediate_Dir "Release\mrbgems"

!ELSEIF  "$(CFG)" == "mruby110 - Win32 Debug"

# PROP Intermediate_Dir "Debug\mrbgems"

!ENDIF 

# End Source File
# End Group
# Begin Group "mruby-bin-mruby"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\mrbgems\mruby-bin-mruby\tools\mruby\mruby.c"
# End Source File
# End Group
# End Target
# End Project
