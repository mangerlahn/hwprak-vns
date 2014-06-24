CC=gcc
CFLAGS=-Wall -O2
LIBS=
LDFLAGS=

.PONY: vnsasm vnsem all

all: vnsasm vnsem

vnsasm:
	@make -C compiler

vnsem:
	@make -C emulator

clean:
	@make -C compiler clean
	@make -C emulator clean
