# Makefile for your match3game

# Define source files
SRC_FILES = game.c

# Define output executable name
TARGET = gamex

# Raylib paths (adjust these if your raylib installation is different)
RAYLIB_PATH = /home/marco/dev/raylib
RAYLIB_INCLUDE = $(RAYLIB_PATH)/src
RAYLIB_LIB = $(RAYLIB_PATH)/src

# Compiler and flags
CC = gcc
CFLAGS = -I$(RAYLIB_INCLUDE) -Wall -g # -Wall for warnings, -g for debugger info
LDFLAGS = -L$(RAYLIB_LIB) -lraylib -lGL -lm -lpthread -ldl -lrt -lX11

# Default target
all: $(TARGET)

$(TARGET): $(SRC_FILES)
	$(CC) $(SRC_FILES) -o $(TARGET) $(CFLAGS) $(LDFLAGS)

clean:
	rm -f $(TARGET)
