INCLUDE "pokecrystal/constants.asm"
INCLUDE "macros.asm"
IF DEF(_NEWS_EN)
INCLUDE "ram/wram_int.asm"
INCLUDE "ram/sram_int.asm"
ELIF DEF(_NEWS_DE)
INCLUDE "ram/wram_int.asm"
INCLUDE "ram/sram_int.asm"
ELIF DEF(_NEWS_ES)
INCLUDE "ram/wram_int.asm"
INCLUDE "ram/sram_int.asm"
ELIF DEF(_NEWS_FR)
INCLUDE "ram/wram_int.asm"
INCLUDE "ram/sram_int.asm"
ELIF DEF(_NEWS_IT)
INCLUDE "ram/wram_int.asm"
INCLUDE "ram/sram_int.asm"
ELSE
INCLUDE "ram/wram.asm"
INCLUDE "ram/sram.asm"
ENDC

SECTION "header", ROM0[$0000]
	db $00
	db $A0
	dw 0 ; checksum will go here
	dw 0 ; size will go here
NewsDataStart: