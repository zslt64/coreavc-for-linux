ifndef X_COMPILE
  ifndef LOADER_WIN32
    WINELIB=1
  endif
endif

ifdef X_COMPILE
  AR = i686-w64-mingw32-gcc-ar
  RANLIB = i686-w64-mingw32-gcc-ranlib
  CC = i686-w64-mingw32-gcc-win32
  LD = i686-w64-mingw32-ld
  OBJDIR = ../objs-mingw
  WINE_EXT = exe
endif

ifdef WINELIB
  CC = winegcc
  OBJDIR = ../objs-winelib
  WINE_EXT = exe.so
endif

AR ?= ar
RANLIB ?= ranlib
OBJDIR ?= ../objs

PREFIX ?= /usr/local
PREFIX_EXE ?= $(PREFIX)/bin
PREFIX_SHARE ?= $(PREFIX)/share/dshowserver
