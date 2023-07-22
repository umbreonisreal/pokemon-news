; commands from Jumptable17d72a (mobile_5f) in pokecrystal
	const_def

	const nothing_command ; $00
MACRO nothing
	db nothing_command
ENDM

	const loadscreen_command ; $01
MACRO loadscreen
	db loadscreen_command
	dw \1 - NewsDataStart ; pointer to screen data
ENDM

	const playmusic_command ; $02
MACRO playmusic
	db playmusic_command
	db \1 ; music id
ENDM

	const playsound_command ; $03
MACRO playsound
	db playsound_command
	db \1 ; sound id
ENDM

	const playcry_command ; $04
MACRO playcry
	db playcry_command
	db \1 ; species
ENDM

	const unknown05_command ; $05
MACRO unknown05
	db unknown05_command
	; TODO
ENDM

	const specialtext_command ; $06
MACRO specialtext
	db specialtext_command
	dw \1 ; offset into screen buffer
	relativepointer \2 ; pointer to text
ENDM

	const unknown07_command ; $07
MACRO unknown07
	db unknown07_command
	; TODO
ENDM

	const unknown08_command ; $08
MACRO unknown08
	db unknown08_command
	; TODO
ENDM

	const unknown09_command ; $09
MACRO unknown09
	db unknown09_command
	; TODO
ENDM

	const pokemonsprite_command ; $0A
MACRO pokemonsprite
	db pokemonsprite_command
	dw \1 ; offset into screen buffer
	db \2 ; species
	db \3 ; animation type
	db \4 ; palette slot to use
ENDM

	const trainersprite_command ; $0B
MACRO trainersprite
	db trainersprite_command
	dw \1 ; offset into screen buffer
	db \2 ; trainer class
	db \3 ; palette slot to use
ENDM

	const cpyvalram_command ; $0C
MACRO cpyvalram
	db cpyvalram_command
	dw \1 ; source
	dw \2 ; destination
	db BANK(\2) ; wram or sram bank of destination
	dw \3 ; length
ENDM

	const unknown0D_command ; $0D
MACRO unknown0D
	db unknown0D_command
	; TODO
ENDM

	const menuup_command ; $0E
MACRO menuup
	db menuup_command
ENDM

	const menudown_command ; $0F
MACRO menudown
	db menudown_command
ENDM

	const menuleft_command ; $10
MACRO menuleft
	db menuleft_command
ENDM

	const menuright_command ; $11
MACRO menuright
	db menuright_command
ENDM

	const unknown12_command ; $12
MACRO unknown12
	db unknown12_command
	; TODO
ENDM

	const unknown13_command ; $13
MACRO unknown13
	db unknown13_command
	; TODO
ENDM

	const unknown14_command ; $14
MACRO unknown14
	db unknown14_command
	; TODO
ENDM

	const unknown15_command ; $15
MACRO unknown15
	db unknown15_command
	; TODO
ENDM

	const unknown16_command ; $16
MACRO unknown16
	db unknown16_command
	; TODO
ENDM

	const menuscript_command ; $17
MACRO menuscript
	db menuscript_command
ENDM

	const printtext_command ; $18
MACRO printtext
	db printtext_command
	dw \1 ; offset into screen buffer
	relativepointer \2 ; pointer to text
ENDM

	const cleartext_command ; $19
MACRO cleartext
	db cleartext_command
	dw \1 ; offset into screen buffer
	db \2 ; number of columns to clear
	db \3 ; number of rows to clear
ENDM

	const cmpval_command ; $1A
MACRO cmpval
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

	const unknown1B_command ; $1B
MACRO unknown1B
	db unknown1B_command
	; TODO
ENDM

	const unknown1C_command ; $1C
MACRO unknown1C
	db unknown1C_command
	; TODO
ENDM

	const unknown1D_command ; $1D
MACRO unknown1D
	db unknown1D_command
	; TODO
ENDM

	const unknown1E_command ; $1E
MACRO unknown1E
	db unknown1E_command
	; TODO
ENDM

	const unknown1F_command ; $1F
MACRO unknown1F
	db unknown1F_command
	; TODO
ENDM

	const unknown20_command ; $20
MACRO unknown20
	db unknown20_command
	; TODO
ENDM

	const unknown21_command ; $21
MACRO unknown21
	db unknown21_command
	; TODO
ENDM

	const cmpvalram_command ; $22
MACRO cmpvalram
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

	const setval_command ; $23
MACRO setval
	db setval_command
	dw \1 ; address of value to set
	db \2 ; value
ENDM

	const incval_command ; $24
MACRO incval
	db incval_command
	dw \1 ; address of value to increment
	db \2 ; increment
	; TODO
ENDM

	const decval_command ; $25
MACRO decval
	db decval_command
	dw \1 ; address of value to decrement
	db \2 ; decrement
ENDM

	const incvalram_command ; $26
MACRO incvalram
	db incvalram_command
	dw \1 ; address of value to increment
	dw \2 ; address of increment
ENDM

	const decvalram_command ; $27
MACRO decvalram
	db decvalram_command
	dw \1 ; address of value to decrement
	dw \2 ; address of decrement
ENDM

	const updaterankings_command ; $28
MACRO updaterankings
	db updaterankings_command
ENDM

	const unknown29_command ; $29
MACRO unknown29
	db unknown29_command
	; TODO
ENDM

	const unknown2A_command ; $2A
MACRO unknown2A
	db unknown2A_command
	; TODO
ENDM

	const unknown2B_command ; $2B
MACRO unknown2B
	db unknown2B_command
	; TODO
ENDM

	const unknown2C_command ; $2C
MACRO unknown2C
	db unknown2C_command
	; TODO
ENDM

	const unknown2D_command ; $2D
MACRO unknown2D
	db unknown2D
	; TODO
ENDM

	const unknown2e_command ; $2E
MACRO unknown2e
	db unknown2e_command
	; TODO
ENDM

	const menureturn_command ; $2F
MACRO menureturn
	db menureturn_command
ENDM

	const exit_command ; $30
MACRO exit
	db exit_command
ENDM

MACRO end
	db $FF
ENDM
