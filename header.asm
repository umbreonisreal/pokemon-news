INCLUDE "pokecrystal/constants.asm"
INCLUDE "macros.asm"
INCLUDE "wram.asm"
INCLUDE "sram.asm"

SECTION "header", ROM0[$0000]
	db $00
	db $A0
	dw 0 ; checksum will go here
	dw 0 ; size will go here
NewsDataStart: