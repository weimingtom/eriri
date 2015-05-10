# Makefile to build the SDL library
include ../config.mk

CC = gcc
CPP = g++
AR	= ar
RANLIB	= ranlib

CFLAGS := -g -O2
CFLAGS += 
CFLAGS += $(SDL_INCLUDE)
CFLAGS += -I../SDL_image-1.2.12 
CFLAGS += -I../freetype-2.3.12/include
CPPFLAGS := $(CFLAGS)

TARGET := libSGE.a

OBJECTS := 
OBJECTS += sge_blib.o
OBJECTS += sge_bm_text.o
OBJECTS += sge_collision.o
OBJECTS += sge_misc.o
OBJECTS += sge_primitives.o
OBJECTS += sge_rotation.o
OBJECTS += sge_shape.o
OBJECTS += sge_surface.o
OBJECTS += sge_textpp.o
OBJECTS += sge_tt_text.o

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(AR) cr $@ $^
	$(RANLIB) $@

clean:
	rm -f $(TARGET) $(OBJECTS)
