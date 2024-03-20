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
.PHONY: all clean first_issue first_issue_en first_issue_de first_issue_fr first_issue_es first_issue_it
.SECONDEXPANSION: 
.PRECIOUS:
.SECONDARY:

all: first_issue first_issue_en first_issue_de first_issue_fr first_issue_es first_issue_it
news: first_issue
news_en: first_issue_en
news_de: first_issue_de
news_fr: first_issue_fr
news_es: first_issue_es
news_it: first_issue_it

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
	
first_issue_de:
	$(RGBASM) -D _NEWS_DE -o news_de/$@.o "news_de/$@.asm"
	$(RGBLINK) -x -o $@.bin news_de/$@.o
	python fix.py $@.bin	
	
first_issue_fr:
	$(RGBASM) -D _NEWS_FR -o news_fr/$@.o "news_fr/$@.asm"
	$(RGBLINK) -x -o $@.bin news_fr/$@.o
	python fix.py $@.bin	
	
first_issue_es:
	$(RGBASM) -D _NEWS_ES -o news_es/$@.o "news_es/$@.asm"
	$(RGBLINK) -x -o $@.bin news_es/$@.o
	python fix.py $@.bin	
	
first_issue_it:
	$(RGBASM) -D _NEWS_IT -o news_it/$@.o "news_it/$@.asm"
	$(RGBLINK) -x -o $@.bin news_it/$@.o
	python fix.py $@.bin	
