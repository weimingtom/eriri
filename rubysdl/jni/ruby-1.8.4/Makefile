# PLAT := arm-linux-androideabi-
include ../config.mk

CC := $(PLAT)gcc 
CPP := $(PLAT)g++
LD := $(PLAT)ld
AR := $(PLAT)ar rcu 
RANLIB := $(PLAT)ranlib
STRIP := $(PLAT)strip
RM := rm -f

CFLAGS := 
CFLAGS += -g -O2
CFLAGS += 
CFLAGS += -I. 

OBJECTS :=
OBJECTS += array.o bignum.o class.o compar.o dir.o 
OBJECTS += dln.o enum.o error.o eval.o file.o gc.o 
OBJECTS += hash.o inits.o io.o marshal.o math.o 
OBJECTS += numeric.o object.o pack.o parse.o 
OBJECTS += process.o prec.o random.o range.o 
OBJECTS += re.o regex.o ruby.o signal.o sprintf.o 
OBJECTS += st.o string.o struct.o time.o util.o 
OBJECTS += variable.o version.o  dmyext.o

OBJECTS += win32/win32.o

RUNSAMPLE := cd ../rubysdl-2.1.0/sample/; ../../ruby-1.8.4/ruby.exe -I../../rubysdl-2.1.0/lib 

all : ruby.exe

ruby.exe : libruby.a ../rubysdl-2.1.0/librubysdl.a ../sge030809/libSGE.a ../SDL_image-1.2.12/libSDL_image.a ../SDL_ttf-2.0.9/libSDL_ttf.a $(SDLLIB) ../freetype-2.3.12/libfreetype.a
	$(CC) $(CFLAGS) -o $@ main.c libruby.a ../rubysdl-2.1.0/librubysdl.a ../sge030809/libSGE.a ../SDL_image-1.2.12/libSDL_image.a ../SDL_ttf-2.0.9/libSDL_ttf.a $(SDLLIB) ../freetype-2.3.12/libfreetype.a -lm -lws2_32 -luser32 -lgdi32 -lwinmm -lmsimg32 -lstdc++
	$(STRIP) $@

# -lmsimg32 for AlphaBlend@44

# $(CC) $(CFLAGS) -o $@ main.c libruby.a -lc -lm

../rubysdl-2.1.0/librubysdl.a :
	make -C ../rubysdl-2.1.0

../sge030809/libSGE.a :
	make -C ../sge030809

../SDL_image-1.2.12/libSDL_image.a :
	make -C ../SDL_image-1.2.12

../SDL_ttf-2.0.9/libSDL_ttf.a :
	make -C ../SDL_ttf-2.0.9

../SDL-1.2.15/libSDL.a :
	make -C ../SDL-1.2.15

../SDL2-2.0.1/libSDL2.a :
	make -C ../SDL-2.0.1

../SDL-1.3/libSDL.a :
	make -C ../SDL-1.3
	
../freetype-2.3.12/libfreetype.a:
	make -C ../freetype-2.3.12

libruby.a : $(OBJECTS)
	$(AR) $@ $(OBJECTS) 
	$(RANLIB) $@

%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<

install : ruby
	adb shell mkdir data/wmt
	adb push $< data/wmt
	adb shell chmod 744 data/wmt/$<

uninstall :
	adb shell rm data/wmt/ruby

clean :
	$(RM) $(OBJECTS) *.a ruby.exe
	make -C ../freetype-2.3.12 clean
	make -C ../SDL-1.2.15 clean
	make -C ../SDL2-2.0.1 clean
	make -C ../SDL-1.3 clean
	make -C ../SDL_ttf-2.0.9 clean
	make -C ../SDL_image-1.2.12 clean
	make -C ../sge030809 clean
	make -C ../rubysdl-2.1.0 clean
	
test:
	($(RUNSAMPLE) aadraw.rb)

#($(RUNSAMPLE) aadraw.rb)	
#($(RUNSAMPLE) alpha.rb)
#($(RUNSAMPLE) alphadraw.rb)
#($(RUNSAMPLE) bfont.rb)
#($(RUNSAMPLE) cdrom.rb)
#($(RUNSAMPLE) collision.rb)
#($(RUNSAMPLE) cursor.rb)
#($(RUNSAMPLE) ellipses.rb)
#($(RUNSAMPLE) event2.rb)
#($(RUNSAMPLE) font.rb)
#($(RUNSAMPLE) fpstimer.rb)
#($(RUNSAMPLE) joy2.rb)
##($(RUNSAMPLE) kanji.rb)
##($(RUNSAMPLE) load_from_io.rb)
#($(RUNSAMPLE) movesp.rb)
##($(RUNSAMPLE) playmod.rb)
##($(RUNSAMPLE) plaympeg.rb)
##($(RUNSAMPLE) playwave.rb)
#($(RUNSAMPLE) randrect.rb)
##($(RUNSAMPLE) sdlskk.rb)
#($(RUNSAMPLE) sgetest.rb)
#($(RUNSAMPLE) stetris.rb)
##($(RUNSAMPLE) testgl.rb)
#($(RUNSAMPLE) testsprite.rb)
#($(RUNSAMPLE) transformblit.rb)
