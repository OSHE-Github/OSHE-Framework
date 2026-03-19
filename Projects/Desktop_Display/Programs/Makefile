CC=gcc
CFLAGS=-Wall -pedantic -g -lm
OBJECTS=encode.o decode.o

all: clean encode decode

encode: microWrapper.c
	$(CC) $(CFLAGS) -o wrapperM microWrapper.c
decode: I2CWrapper.c
	$(CC) $(CFLAGS) -o wrapperI2C I2CWrapper.c

.PHONY: clean
clean:
	rm -f wrapper*

