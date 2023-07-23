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
.PHONY: all clean first_issue first_issue_en
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:

all: first_issue
news: first_issue
news_en: first_issue_en

clean:
	rm -f news/*.o *.bin

first_issue:
	$(RGBASM) -o news/$@.o "news/$@.asm"
	$(RGBLINK) -x -o $@.bin news/$@.o
	python fix.py $@.bin
	
first_issue_en:
	$(RGBASM) -D _NEWS_EN -o news_en/$@.o "news_en/$@.asm"
	$(RGBLINK) -x -o $@.bin news_en/$@.o
	python fix.py $@.bin

