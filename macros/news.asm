screenconfig: MACRO
.curr_screen
ENDM

; Macro for the screen config data
; Some screens use text commands inside here which are macros themselves and i'm not sure how those would be included
;screenconfig: MACRO
;.curr_screen
;	db \1 ; music ID
;
;	db \2 ; number of custom palettes
;REPT \2
;	dw \3 ; custom palette color 1
;	dw \4 ; custom palette color 2
;	dw \5 ; custom palette color 3
;	dw \6 ; custom palette color 4
;SHIFT 4
;ENDR
;
;	db \3 ; number of boxes to draw
;REPT \3
;	db \4 ; x
;	db \5 ; y
;	db \6 ; width
;	db \7 ; height
;	db \8 ; border type
;	db \9 ; palette ID
;SHIFT 6
;ENDR
;
;	db \4 ; number of strings to print
;REPT \4
;	dw \5 ; offset into screen buffer
;	db \6 ; string
;SHIFT 2
;ENDR
;
;	db \5 ; menu x
;	db \6 ; menu y
;	db \7 ; number of columns
;	db \8 ; number of rows
;	db \9 ; width of columns
;SHIFT 9
;	db \1 ; height of rows
;	db \2, \3, \4, \5, \6, \7 ; ?
;SHIFT 7
;
;REPT 8 ; script pointers for a, b, select, start, left, right, up and down buttons
;IF ISCONST(\1)
;IF \1 == 0
;	dw $FFFF
;ELSE
;	relativepointer \1
;ENDC
;ELSE
;	relativepointer \1
;ENDC
;SHIFT
;ENDR
;
;NUM_MENU_ITEMS = \1
;	db \1 ; number of menu items
;	dw \2 ; screen buffer offset to print menu descriptions
;	db \3 ; width of blanked area
;	db \4 ; height of blanked area
;	db \5 ; load rankings table flag (specified in $cd62)
;SHIFT 5
;
;REPT 3 ; pointers to text, script and description for the menu items
;REPT NUM_MENU_ITEMS
;	relativepointer \1
;SHIFT
;ENDR
;ENDR
;ENDM

relativepointer: MACRO
	dw \1 - .curr_screen
ENDM