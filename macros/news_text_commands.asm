MACRO news_text_start
	db "<MOBILE>"
ENDM

MACRO news_text_end
	db "@"
ENDM

; commands from RunMobileScript (mobile_5f)
	const_def $01

	const news_text_ranking_number_command ; $01
; prints a number from data in a rankings entry
MACRO news_text_ranking_number
	db news_text_ranking_number_command
	dw \1 ; offset in rankings entry data
	db \2 ; byte size of value + flag (see MobilePrintNum)
	db \3 ; amount of digits
	db \4 ; offset of following text
	db \5 ; digit to insert a character at (0 = disabled)
	db \6 ; character to insert (e.g. decimal point)
ENDM
	
	const news_text_ranking_text_command ; $02
; prints text from data in a rankings entry
MACRO news_text_ranking_text
	db news_text_ranking_text_command
	dw \1 ; offset in rankings entry data
	db \2
;	if international == 0
;	db NAME_LENGTH_JAPANESE ; length of the data
;	else
;	db PLAYER_NAME_LENGTH - 1
;	endc
	db \3 ; offset of following text
ENDM


	const news_text_ranking_message_command ; $03
; prints an easy chat message from data in a rankings entry
MACRO news_text_ranking_message
	db news_text_ranking_message_command
	dw \1 ; offset in rankings entry data
ENDM

	const news_text_ranking_region_command ; $04
; prints a regions's name from data in a rankings entry
MACRO news_text_ranking_region
	db news_text_ranking_region_command
	dw \1 ; offset in rankings entry data
	db \2 ; offset of following text
ENDM

	const news_text_ranking_pokemon_command ; $05
; prints a pokemon species name from data in a rankings entry
MACRO news_text_ranking_pokemon
	db news_text_ranking_pokemon_command
	dw \1 ; offset in rankings entry data
	db \2 ; offset of following text
ENDM

	const news_text_ranking_gender_command ; $06
; prints a gender from data in a rankings entry
MACRO news_text_ranking_gender
	db news_text_ranking_gender_command
	dw \1 ; offset in rankings entry data
	db \2 ; offset of following text
ENDM

	const news_text_ranking_item_command ; $07
; prints an item's name from data in a rankings entry
MACRO news_text_ranking_item
	db news_text_ranking_item_command
	dw \1 ; offset in rankings entry data
	db \2 ; offset of following text
ENDM

	const news_text_ranking_indicator_command ; $08
; prints the rank indicator
MACRO news_text_ranking_indicator
	db news_text_ranking_indicator_command
	db 2 ; amount of digits
	db \1 ; offset of following text
ENDM

	const news_text_own_name_command ; $09
; prints the player's own name
MACRO news_text_own_name
	db news_text_own_name_command
	db \1 ; offset of following text
ENDM

	const news_text_own_region_command ; $0a
; prints the player's current region
MACRO news_text_own_region_current
	db news_text_own_region_command
	db \1 ; offset of following text
ENDM

; prints the player's backed-up region
MACRO news_text_own_region_backup
	db news_text_own_region_command
	db \1 | $80 ; offset of following text
ENDM

	const news_text_own_zip_command ; $0b
; prints the player's current zip code
MACRO news_text_own_zip_current
	db news_text_own_zip_command
	db \1 ; offset of following text
ENDM

; prints the player's backed-up zip code
MACRO news_text_own_zip_backup
	db news_text_own_zip_command
	db \1 | $80 ; offset of following text
ENDM

	const news_text_own_message_command ; $0c
; prints the player's own message
MACRO news_text_own_message
	db news_text_own_message_command
ENDM

	const news_text_switch_command ; $0d
; switches between different text based on a variable
MACRO news_text_switch
	db news_text_switch_command
	db \1 ; number of entries
	dw \2 ; wram address containing offset
REPT \1
	relativepointer \3 ; pointer to text
SHIFT
ENDR
ENDM

	const news_text_nextrow_command ; $0e
; sets the offset to print text to the next screen row + the offset specified as parameter
MACRO news_text_nextrow
	db news_text_nextrow_command
	db \1 ; offset of following text
ENDM

	const news_text_number_command ; $0f
; prints a number from any location in memory
MACRO news_text_number
	db news_text_number_command
	db BANK(\1) ; memory bank
	dw \1 ; address
	db \2 ; byte size of value + flag (see MobilePrintNum)
	db \3 ; amount of digits
	db \4 ; offset of following text
	db \5 ; digit to insert a character at (0 = disabled)
	db \6 ; character to insert (e.g. decimal point)
ENDM