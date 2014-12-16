#CROSS_COMPILE ?= arm-linux-
CC := $(CROSS_COMPILE)gcc
override CFLAGS += -D_GNU_SOURCE
#flags xLupa + dummy DSP
GTK_FLAGS := `pkg-config --cflags --libs gtk+-2.0` 
LIBS +=     `pkg-config --libs gtk+-2.0` -lrt #-mfloat-abi=softfp -march=armv7-a -mtune=cortex-a8 -ftree-vectorizer-verbose=1 
V4L_FLAGS := -lv4l2
LIBS += -lv4l2
CFLAGS := -g -O3 -Wall -Wextra -Wno-unused-parameter -std=c99 
LDFLAGS := -Wl,--as-needed -lpthread
DSP_AUX := -mw -k -o3 -pm -mt #-lrts64plus.lib -limglib2.l64P


DSP_TOOLS := /opt/c6000_7.6.0
DSP_DOFFBUILD := /opt/doffbuild
override CFLAGS += -D_GNU_SOURCE

DSP_API := 1

override CFLAGS += -DDSP_API=$(DSP_API)

ifdef DEBUG
  override CFLAGS += -DDEBUG
endif

CL6X := $(DSP_TOOLS)/bin/cl6x
LNK6X := $(DSP_TOOLS)/bin/lnk6x
DLLCREATE := $(DSP_DOFFBUILD)/bin/DLLcreate
LIBS +=  $(GTK_FLAGS)
all:

# dummy
#dependendo da ordem da chamada das funções deve ser colocoado aqui
dummy: Main.o ZoomWindow.o ZoomCanvas.o util.o log.o clique.o profile.o capture.o dummy_arm.o dsp_bridge.o 

bins += dummy

dummy.x64P: dummy_dsp.o64P dummy_bridge.o64P Algoritmos.o64P

dummy.dll64P: dummy.x64P
dummy.dll64P: override CFLAGS := -I$(DSP_TOOLS)/include

bins += dummy.dll64P

all: $(bins)

# pretty print
ifndef V
QUIET_CC    = @echo '   CC         '$@;
QUIET_LINK  = @echo '   LINK       '$@;
QUIET_CLEAN = @echo '   CLEAN      '$@;
QUIET_DLL   = @echo '   DLLCREATE  '$@;
endif

%.o64P:: %.s
	$(QUIET_CC)$(CL6X) -mv=64p -eo.o64P -c $(DSP_AUX) $<

%.o64P:: %.c
	$(QUIET_CC)$(CL6X) $(CFLAGS)  -mv=64p -eo.o64P -c  $(DSP_AUX) $< 

%.x64P::
	$(QUIET_LINK)$(LNK6X)  -r -cr --localize='$$bss' -o $@ $+

%.dll64P::
	$(QUIET_DLL)$(DLLCREATE)  $< -o=$@

%.o:: %.c
	$(QUIET_CC)$(CC) $(CFLAGS) -MMD -o $@ -c $<  $(GTK_FLAGS) $(V4L_FLAGS)

dummy:
	$(QUIET_LINK)$(CC)  $(LDFLAGS) -o $@ $^ $(LIBS) $(GTK_FLAGS) $(V4L_FLAGS) 

clean:
	$(QUIET_CLEAN)$(RM) $(bins) *.o *.o64P *.x64P

reclean:
	make clean
	make dummy

-include ./DSPHeaders/*.d
