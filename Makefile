CC := gcc
CFLAGS =-std=gnu11  -Wall -Wextra  -Wpedantic -Wno-unused-parameter
DEBUG := n


LIBS=-lallegro\
	 -lallegro_image \
	 -lallegro_font \
	 -lallegro_ttf \
	 -lphysfs \
	 -lallegro_physfs \
	 -lallegro_acodec \
	 -lallegro_audio \
	 -lallegro_dialog \
	 -lallegro_primitives \
	 -lm
	 
	 

ifeq ($(DEBUG), y)
	CFLAGS += -g -Og -gdwarf-5 -fno-omit-frame-pointer
else
	CFLAGS += -O3 -fexpensive-optimizations -fomit-frame-pointer
endif


SRC= $(shell find . -name "*.c" -type f \! -name "p2_*" )
OBJ=$(patsubst %.c, %.o, $(SRC))
TARGET=deluxe_pacman

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $^ $(LIBS) -o $(TARGET) 

%.c%.o: $(SRC)
	$(CC) $(CFLAGS) -c $<


clean:
	@rm *.o $(TARGET) 

.PHONY: clean
