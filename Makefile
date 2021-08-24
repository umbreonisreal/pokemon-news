### Build tools

ifeq (,$(shell which sha1sum))
SHA1 := shasum
else
SHA1 := sha1sum
endif

RGBDS ?=
RGBASM  ?= $(RGBDS)rgbasm
RGBFIX  ?= $(RGBDS)rgbfix
RGBGFX  ?= $(RGBDS)rgbgfx
RGBLINK ?= $(RGBDS)rgblink


### Build targets

.SUFFIXES:
.PHONY: all clean first_issue
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:

all: first_issue

clean:
	rm -f news/*.o *.bin

first_issue:
	$(RGBASM) -o news/$@.o "news/$@.asm"
	$(RGBLINK) -x -o $@.bin news/$@.o
	python fix.py $@.bin
