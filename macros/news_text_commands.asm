news_text_start: MACRO
	db "<MOBILE>"
ENDM

news_text_end: MACRO
	db "@"
ENDM

; commands from RunMobileScript (mobile_5f)
	enum_start $01

	enum news_text_ranking_number_command ; $01
; prints a number from data in a rankings entry
news_text_ranking_number: MACRO
	db news_text_ranking_number_command
	dw \1 ; offset in rankings entry data
	db \2 ; byte size of value + flag (see MobilePrintNum)
	db \3 ; amount of digits
	db \4 ; offset of following text
	db \5 ; digit to insert a character at (0 = disabled)
	db \6 ; character to insert (e.g. decimal point)
ENDM
	
	enum news_text_ranking_text_command ; $02
; prints text from data in a rankings entry
news_text_ranking_text: MACRO
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


	enum news_text_ranking_message_command ; $03
; prints an easy chat message from data in a rankings entry
news_text_ranking_message: MACRO
	db news_text_ranking_message_command
	dw \1 ; offset in rankings entry data
ENDM

	enum news_text_ranking_region_command ; $04
; prints a regions's name from data in a rankings entry
news_text_ranking_region: MACRO
	db news_text_ranking_region_command
	dw \1 ; offset in rankings entry data
	db \2 ; offset of following text
ENDM

	enum news_text_ranking_pokemon_command ; $05
; prints a pokemon species name from data in a rankings entry
news_text_ranking_pokemon: MACRO
	db news_text_ranking_pokemon_command
	dw \1 ; offset in rankings entry data
	db \2 ; offset of following text
ENDM

	enum news_text_ranking_gender_command ; $06
; prints a gender from data in a rankings entry
news_text_ranking_gender: MACRO
	db news_text_ranking_gender_command
	dw \1 ; offset in rankings entry data
	db \2 ; offset of following text
ENDM

	enum news_text_ranking_item_command ; $07
; prints an item's name from data in a rankings entry
news_text_ranking_item: MACRO
	db news_text_ranking_item_command
	dw \1 ; offset in rankings entry data
	db \2 ; offset of following text
ENDM

	enum news_text_ranking_indicator_command ; $08
; prints the rank indicator
news_text_ranking_indicator: MACRO
	db news_text_ranking_indicator_command
	db 2 ; amount of digits
	db \1 ; offset of following text
ENDM

	enum news_text_own_name_command ; $09
; prints the player's own name
news_text_own_name: MACRO
	db news_text_own_name_command
	db \1 ; offset of following text
ENDM

	enum news_text_own_region_command ; $0a
; prints the player's current region
news_text_own_region_current: MACRO
	db news_text_own_region_command
	db \1 ; offset of following text
ENDM

; prints the player's backed-up region
news_text_own_region_backup: MACRO
	db news_text_own_region_command
	db \1 | $80 ; offset of following text
ENDM

	enum news_text_own_zip_command ; $0b
; prints the player's current zip code
news_text_own_zip_current: MACRO
	db news_text_own_zip_command
	db \1 ; offset of following text
ENDM

; prints the player's backed-up zip code
news_text_own_zip_backup: MACRO
	db news_text_own_zip_command
	db \1 | $80 ; offset of following text
ENDM

	enum news_text_own_message_command ; $0c
; prints the player's own message
news_text_own_message: MACRO
	db news_text_own_message_command
ENDM

	enum news_text_switch_command ; $0d
; switches between different text based on a variable
news_text_switch: MACRO
	db news_text_switch_command
	db \1 ; number of entries
	dw \2 ; wram address containing offset
REPT \1
	relativepointer \3 ; pointer to text
SHIFT
ENDR
ENDM

	enum news_text_nextrow_command ; $0e
; sets the offset to print text to the next screen row + the offset specified as parameter
news_text_nextrow: MACRO
	db news_text_nextrow_command
	db \1 ; offset of following text
ENDM

	enum news_text_number_command ; $0f
; prints a number from any location in memory
news_text_number: MACRO
	db news_text_number_command
	db BANK(\1) ; memory bank
	dw \1 ; address
	db \2 ; byte size of value + flag (see MobilePrintNum)
	db \3 ; amount of digits
	db \4 ; offset of following text
	db \5 ; digit to insert a character at (0 = disabled)
	db \6 ; character to insert (e.g. decimal point)
ENDM