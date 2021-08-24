; commands from Jumptable17d72a (mobile_5f) in pokecrystal
	enum_start

	enum nothing_command ; $00
nothing: MACRO
	db nothing_command
ENDM

	enum loadscreen_command ; $01
loadscreen: MACRO
	db loadscreen_command
	dw \1 - NewsDataStart ; pointer to screen data
ENDM

	enum playmusic_command ; $02
playmusic: MACRO
	db playmusic_command
	db \1 ; music id
ENDM

	enum playsound_command ; $03
playsound: MACRO
	db playsound_command
	db \1 ; sound id
ENDM

	enum playcry_command ; $04
playcry: MACRO
	db playcry_command
	db \1 ; species
ENDM

	enum unknown05_command ; $05
unknown05: MACRO
	db unknown05_command
	; TODO
ENDM

	enum specialtext_command ; $06
specialtext: MACRO
	db specialtext_command
	dw \1 ; offset into screen buffer
	relativepointer \2 ; pointer to text
ENDM

	enum unknown07_command ; $07
unknown07: MACRO
	db unknown07_command
	; TODO
ENDM

	enum unknown08_command ; $08
unknown08: MACRO
	db unknown08_command
	; TODO
ENDM

	enum unknown09_command ; $09
unknown09: MACRO
	db unknown09_command
	; TODO
ENDM

	enum pokemonsprite_command ; $0A
pokemonsprite: MACRO
	db pokemonsprite_command
	dw \1 ; offset into screen buffer
	db \2 ; species
	db \3 ; animation type
	db \4 ; palette slot to use
ENDM

	enum trainersprite_command ; $0B
trainersprite: MACRO
	db trainersprite_command
	dw \1 ; offset into screen buffer
	db \2 ; trainer class
	db \3 ; palette slot to use
ENDM

	enum cpyvalram_command ; $0C
cpyvalram: MACRO
	db cpyvalram_command
	dw \1 ; source
	dw \2 ; destination
	db BANK(\2) ; wram or sram bank of destination
	dw \3 ; length
ENDM

	enum unknown0D_command ; $0D
unknown0D: MACRO
	db unknown0D_command
	; TODO
ENDM

	enum menuup_command ; $0E
menuup: MACRO
	db menuup_command
ENDM

	enum menudown_command ; $0F
menudown: MACRO
	db menudown_command
ENDM

	enum menuleft_command ; $10
menuleft: MACRO
	db menuleft_command
ENDM

	enum menuright_command ; $11
menuright: MACRO
	db menuright_command
ENDM

	enum unknown12_command ; $12
unknown12: MACRO
	db unknown12_command
	; TODO
ENDM

	enum unknown13_command ; $13
unknown13: MACRO
	db unknown13_command
	; TODO
ENDM

	enum unknown14_command ; $14
unknown14: MACRO
	db unknown14_command
	; TODO
ENDM

	enum unknown15_command ; $15
unknown15: MACRO
	db unknown15_command
	; TODO
ENDM

	enum unknown16_command ; $16
unknown16: MACRO
	db unknown16_command
	; TODO
ENDM

	enum menuscript_command ; $17
menuscript: MACRO
	db menuscript_command
ENDM

	enum printtext_command ; $18
printtext: MACRO
	db printtext_command
	dw \1 ; offset into screen buffer
	relativepointer \2 ; pointer to text
ENDM

	enum cleartext_command ; $19
cleartext: MACRO
	db cleartext_command
	dw \1 ; offset into screen buffer
	db \2 ; number of columns to clear
	db \3 ; number of rows to clear
ENDM

	enum cmpval_command ; $1A
cmpval: MACRO
	db cmpval_command
	db BANK(\1) ; wram or sram bank of value to compare
	dw \1 ; address of value to compare
	relativepointer \2 ; script pointer to jump to if lower
	relativepointer \3 ; script pointer to jump to if equal
	relativepointer \4 ; script pointer to jump to if greater
	db \5 ; length of value to compare
rept \5
	db \6 ; value to compare against
	shift
endr
ENDM

	enum unknown1B_command ; $1B
unknown1B: MACRO
	db unknown1B_command
	; TODO
ENDM

	enum unknown1C_command ; $1C
unknown1C: MACRO
	db unknown1C_command
	; TODO
ENDM

	enum unknown1D_command ; $1D
unknown1D: MACRO
	db unknown1D_command
	; TODO
ENDM

	enum unknown1E_command ; $1E
unknown1E: MACRO
	db unknown1E_command
	; TODO
ENDM

	enum unknown1F_command ; $1F
unknown1F: MACRO
	db unknown1F_command
	; TODO
ENDM

	enum unknown20_command ; $20
unknown20: MACRO
	db unknown20_command
	; TODO
ENDM

	enum unknown21_command ; $21
unknown21: MACRO
	db unknown21_command
	; TODO
ENDM

	enum cmpvalram_command ; $22
cmpvalram: MACRO
	db cmpvalram_command
	db BANK(\1) ; wram or sram bank for first value
	dw \1 ; address of first value
	db \2 ; length of the value to compare
	db BANK(\3) ; wram or sram bank for second value
	dw \3 ; address of second value
	relativepointer \4 ; script pointer to jump to if first value is lower
	relativepointer \5 ; script pointer to jump to if values are equal
	relativepointer \6 ; script pointer to jump to if first value is greater
ENDM

	enum setval_command ; $23
setval: MACRO
	db setval_command
	dw \1 ; address of value to set
	db \2 ; value
ENDM

	enum incval_command ; $24
incval: MACRO
	db incval_command
	dw \1 ; address of value to increment
	db \2 ; increment
	; TODO
ENDM

	enum decval_command ; $25
decval: MACRO
	db decval_command
	dw \1 ; address of value to decrement
	db \2 ; decrement
ENDM

	enum incvalram_command ; $26
incvalram: MACRO
	db incvalram_command
	dw \1 ; address of value to increment
	dw \2 ; address of increment
ENDM

	enum decvalram_command ; $27
decvalram: MACRO
	db decvalram_command
	dw \1 ; address of value to decrement
	dw \2 ; address of decrement
ENDM

	enum updaterankings_command ; $28
updaterankings: MACRO
	db updaterankings_command
ENDM

	enum unknown29_command ; $29
unknown29: MACRO
	db unknown29_command
	; TODO
ENDM

	enum unknown2A_command ; $2A
unknown2A: MACRO
	db unknown2A_command
	; TODO
ENDM

	enum unknown2B_command ; $2B
unknown2B: MACRO
	db unknown2B_command
	; TODO
ENDM

	enum unknown2C_command ; $2C
unknown2C: MACRO
	db unknown2C_command
	; TODO
ENDM

	enum unknown2D_command ; $2D
unknown2D: MACRO
	db unknown2D
	; TODO
ENDM

	enum unknown2e_command ; $2E
unknown2e: MACRO
	db unknown2e_command
	; TODO
ENDM

	enum menureturn_command ; $2F
menureturn: MACRO
	db menureturn_command
ENDM

	enum exit_command ; $30
exit: MACRO
	db exit_command
ENDM

end: MACRO
	db $FF
ENDM
