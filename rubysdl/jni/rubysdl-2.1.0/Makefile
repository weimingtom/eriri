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
CFLAGS += -DENABLE_OPENGL -DHAVE_SGE -DHAVE_SDL_TTF
CFLAGS += -I../ruby-1.8.4
CFLAGS += $(SDL_INCLUDE)
CFLAGS += -I../SDL_ttf-2.0.9 -I../SDL_image-1.2.12
CFLAGS += -I../sge030809

TARGET := librubysdl.a

OBJECTS :=
OBJECTS += rubysdl_cdrom.o
OBJECTS += rubysdl_event.o
OBJECTS += rubysdl_event_key.o
OBJECTS += rubysdl_image.o
OBJECTS += rubysdl_joystick.o
OBJECTS += rubysdl_kanji.o
OBJECTS += rubysdl_main.o
OBJECTS += rubysdl_mixer.o
OBJECTS += rubysdl_mouse.o
OBJECTS += rubysdl_opengl.o
OBJECTS += rubysdl_pixel.o
OBJECTS += rubysdl_rwops.o
OBJECTS += rubysdl_sdlskk.o
OBJECTS += rubysdl_sge_video.o
OBJECTS += rubysdl_smpeg.o
OBJECTS += rubysdl_time.o
OBJECTS += rubysdl_ttf.o
OBJECTS += rubysdl_video.o
OBJECTS += rubysdl_wm.o
OBJECTS += SDL_kanji.o

all : $(TARGET)

$(TARGET) : $(OBJECTS)
	$(AR) $@ $(OBJECTS) 
	$(RANLIB) $@

%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<

clean :
	$(RM) $(OBJECTS) $(TARGET)
