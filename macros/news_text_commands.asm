; commands from RunMobileScript (mobile_5f) in pokecrystal
	enum_start $03

	enum newstext_easychat_command ; $03
text_easychat: MACRO
	db "<MOBILE>"
	db newstext_easychat_command
	dw \1 ; length
	db "@"
ENDM

	enum newstext_unknown04_command
	enum newstext_unknown05_command
	enum newstext_unknown06_command
	enum newstext_unknown07_command
	enum newstext_unknown08_command

	enum newstext_playername_command ; $09
text_playername: MACRO
	db "<MOBILE>"
	db newstext_playername_command
	db \1 ; flags
	db "@"
ENDM

	enum newstext_prefecture_command ; $0A
text_prefecture: MACRO
	db "<MOBILE>"
	db newstext_prefecture_command
	db \1 ; flags
	db "@"
ENDM

	enum newstext_zip_command ; 0B
text_zip: MACRO
	db "<MOBILE>"
	db newstext_zip_command
	db \1 ; flags
	db "@"
ENDM

	enum newstext_unknown0C_command

	enum newstext_switch_command ; $0D
text_switch: MACRO
	db "<MOBILE>"
	db newstext_switch_command
	db \1 ; number of entries
	dw \2 ; wram address containing offset
REPT \1
	relativepointer \3 ; pointer to text
SHIFT
ENDR
ENDM