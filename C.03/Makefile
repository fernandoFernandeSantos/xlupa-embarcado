

CC := gcc
SRC_DIR := src
OUTPUT := xLupaEmbedded
GTK_FLAGS := `pkg-config --cflags --libs gtk+-2.0` #-mfloat-abi=softfp
V4L_FLAGS := -lv4l2
CFLAGS := $(GTK_FLAGS) $(V4L_FLAGS) -g -O3 #-march=armv7-a -mtune=cortex-a8 -ftree-vectorizer-verbose=1 
DEBUG_FLAGS := -g
LDFLAGS += -lpthread

OBJ = $(wildcard $(OBJ_DIR)/*.o)
SRC =  $(wildcard $(SRC_DIR)/*.c)
all:
	$(CC) $(SRC) $(CFLAGS) -o $(OUTPUT)


