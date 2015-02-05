

CC := gcc-4.9
SRC_DIR := src
OUTPUT := xLupaEmbedded
GTK_FLAGS := `pkg-config --cflags --libs gtk+-2.0`
V4L_FLAGS := -lv4l2
OPTIMIZATION_FLAGS := -O3 -ftree-vectorize -mcpu=cortex-a8
NEON_FLAGS := -mfpu=neon -mtune=cortex-a8 -flax-vector-conversions
CFLAGS := $(GTK_FLAGS) $(V4L_FLAGS) -mfloat-abi=softfp $(OPTIMIZATION_FLAGS) $(NEON_FLAGS) 
DEBUG_FLAGS := 
LDFLAGS += -lpthread

OBJ = $(wildcard $(OBJ_DIR)/*.o)
SRC =  $(wildcard $(SRC_DIR)/*.c)
all:
	$(CC) $(SRC) $(CFLAGS) -o $(OUTPUT)

debug:
	$(call add_debug, )
	$(CC) $(SRC) $(CFLAGS) $(DEBUG_FLAGS) -o $(OUTPUT)
	$(call remove_debug, )
	


define add_debug
	#sed -i "s/#undef\ DEBUG/#define\ DEBUG/" src/debug.h
endef	

define remove_debug
	#sed -i "s/#define\ DEBUG/#undef\ DEBUG/" src/debug.h
endef
