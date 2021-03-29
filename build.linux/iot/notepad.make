# Alternative GNU Make project makefile autogenerated by Premake

ifndef config
  config=debug_x32
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild

SHELLTYPE := posix
ifeq (.exe,$(findstring .exe,$(ComSpec)))
	SHELLTYPE := msdos
endif

# Configurations
# #############################################

RESCOMP = windres
INCLUDES += -I../../include
FORCE_INCLUDE +=
ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
LIBS +=
LDDEPS +=
LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
define PREBUILDCMDS
endef
define PRELINKCMDS
endef
define POSTBUILDCMDS
endef

ifeq ($(config),debug_x32)
TARGETDIR = ../../bin.lnx/x32
TARGET = $(TARGETDIR)/html-notepad
OBJDIR = obj/x32/Debug/notepad
DEFINES += -DDEVICE=IOT -D_GNU_SOURCE -DDEBUG -D_DEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -g `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -g -std=c++14 `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -m32 `pkg-config gtk+-3.0 --libs` `pkg-config fontconfig --libs` -fPIC -pthread -Wl,--no-undefined -ldl

else ifeq ($(config),debug_x64)
TARGETDIR = ../../bin.lnx/x64
TARGET = $(TARGETDIR)/html-notepad
OBJDIR = obj/x64/Debug/notepad
DEFINES += -DDEVICE=IOT -D_GNU_SOURCE -DDEBUG -D_DEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -g `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -g -std=c++14 `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 `pkg-config gtk+-3.0 --libs` `pkg-config fontconfig --libs` -fPIC -pthread -Wl,--no-undefined -ldl

else ifeq ($(config),debug_arm32)
TARGETDIR = ../../bin.lnx/arm32
TARGET = $(TARGETDIR)/html-notepad
OBJDIR = obj/arm32/Debug/notepad
DEFINES += -DDEVICE=IOT -D_GNU_SOURCE -DDEBUG -D_DEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -g `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -g -std=c++14 `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_LDFLAGS += $(LDFLAGS) `pkg-config gtk+-3.0 --libs` `pkg-config fontconfig --libs` -fPIC -pthread -Wl,--no-undefined -ldl

else ifeq ($(config),debug_arm64)
TARGETDIR = ../../bin.lnx/arm64
TARGET = $(TARGETDIR)/html-notepad
OBJDIR = obj/arm64/Debug/notepad
DEFINES += -DDEVICE=IOT -D_GNU_SOURCE -DDEBUG -D_DEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -g `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -g -std=c++14 `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_LDFLAGS += $(LDFLAGS) `pkg-config gtk+-3.0 --libs` `pkg-config fontconfig --libs` -fPIC -pthread -Wl,--no-undefined -ldl

else ifeq ($(config),release_x32)
TARGETDIR = ../../bin.lnx/x32
TARGET = $(TARGETDIR)/html-notepad
OBJDIR = obj/x32/Release/notepad
DEFINES += -DDEVICE=IOT -D_GNU_SOURCE -DNDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -flto -Os `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -flto -Os -std=c++14 `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -m32 -flto -s `pkg-config gtk+-3.0 --libs` `pkg-config fontconfig --libs` -fPIC -pthread -Wl,--no-undefined -ldl

else ifeq ($(config),release_x64)
TARGETDIR = ../../bin.lnx/x64
TARGET = $(TARGETDIR)/html-notepad
OBJDIR = obj/x64/Release/notepad
DEFINES += -DDEVICE=IOT -D_GNU_SOURCE -DNDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -flto -Os `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -flto -Os -std=c++14 `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -flto -s `pkg-config gtk+-3.0 --libs` `pkg-config fontconfig --libs` -fPIC -pthread -Wl,--no-undefined -ldl

else ifeq ($(config),release_arm32)
TARGETDIR = ../../bin.lnx/arm32
TARGET = $(TARGETDIR)/html-notepad
OBJDIR = obj/arm32/Release/notepad
DEFINES += -DDEVICE=IOT -D_GNU_SOURCE -DNDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -flto -Os `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -flto -Os -std=c++14 `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_LDFLAGS += $(LDFLAGS) -flto -s `pkg-config gtk+-3.0 --libs` `pkg-config fontconfig --libs` -fPIC -pthread -Wl,--no-undefined -ldl

else ifeq ($(config),release_arm64)
TARGETDIR = ../../bin.lnx/arm64
TARGET = $(TARGETDIR)/html-notepad
OBJDIR = obj/arm64/Release/notepad
DEFINES += -DDEVICE=IOT -D_GNU_SOURCE -DNDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -flto -Os `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -flto -Os -std=c++14 `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_LDFLAGS += $(LDFLAGS) -flto -s `pkg-config gtk+-3.0 --libs` `pkg-config fontconfig --libs` -fPIC -pthread -Wl,--no-undefined -ldl

endif

# Per File Configurations
# #############################################


# File sets
# #############################################

GENERATED :=
OBJECTS :=

GENERATED += $(OBJDIR)/html-notepad.o
GENERATED += $(OBJDIR)/sciter-gtk-main.o
OBJECTS += $(OBJDIR)/html-notepad.o
OBJECTS += $(OBJDIR)/sciter-gtk-main.o

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(GENERATED) $(OBJECTS) $(LDDEPS) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking notepad
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning notepad
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(GENERATED)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(GENERATED)) rmdir /s /q $(subst /,\\,$(GENERATED))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild: | $(OBJDIR)
	$(PREBUILDCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) | $(PCH_PLACEHOLDER)
$(GCH): $(PCH) | prebuild
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
$(PCH_PLACEHOLDER): $(GCH) | $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) touch "$@"
else
	$(SILENT) echo $null >> "$@"
endif
else
$(OBJECTS): | prebuild
endif


# File Rules
# #############################################

$(OBJDIR)/sciter-gtk-main.o: ../../include/sciter-gtk-main.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/html-notepad.o: ../../notepad/html-notepad.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif