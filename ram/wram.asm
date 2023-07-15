SECTION "wram", WRAM0[$cd22] ; japan

wcd22:: ds 1 ; cd22
	ds 49
wNumRankedPlayers:: ds 4 ; cd54
wOwnRank:: ds 4 ; cd58
wcd5c:: ds 1 ; cd5c
	ds 5
wRankingsTable:: ds 1 ; cd62
wRankingsCategory:: ds 1 ; cd63
wRankingsType:: ds 1 ; cd64
	ds 2
wQuizQuestionNo:: ds 1 ; cd67
wQuizScore:: ds 1 ; cd68
	ds 1
wcd6a:: ds 1 ; cd6a
	ds 3
wRankingsUpdateResult:: ds 1 ; cd6e