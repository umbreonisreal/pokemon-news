INCLUDE "pokecrystal/constants.asm"
INCLUDE "macros.asm"
international = 0
	if international
INCLUDE "ram/wram_int.asm"
INCLUDE "ram/sram_int.asm"
	else
INCLUDE "ram/wram.asm"
INCLUDE "ram/sram.asm"
	endc

SECTION "header", ROM0[$0000]
	db $00
	db $A0
	dw 0 ; checksum will go here
	dw 0 ; size will go here
NewsDataStart: