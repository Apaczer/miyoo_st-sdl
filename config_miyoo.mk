# st version
VERSION = 0.3

# Customize below to fit your system

# paths
CHAINPREFIX= /opt/bittboy-toolchain/
CROSS_COMPILE=$(CHAINPREFIX)/bin/arm-buildroot-linux-musleabi-

# includes and libs
INCS = -I. 
LIBS = -lc -lutil

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\"
CFLAGS += -g -Wall ${INCS} ${CPPFLAGS} -DMIYOO -fPIC
INCLUDES = -Iinclude $(SDL_CFLAGS)
LDFLAGS = -g -lSDL -lasound

# compiler and linker
CC = $(CROSS_COMPILE)gcc
CXX = $(CROSS_COMPILE)g++
STRIP = $(CROSS_COMPILE)strip
SYSROOT     := $(shell $(CC) --print-sysroot)
SDL_CFLAGS  := $(shell $(SYSROOT)/usr/bin/sdl-config --cflags)
SDL_LIBS    := $(shell $(SYSROOT)/usr/bin/sdl-config --libs)
