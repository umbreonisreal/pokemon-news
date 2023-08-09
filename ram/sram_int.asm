SECTION "SRAM bank 1", SRAM, BANK[1]
	ds $1e3c
sMobileEventIndex:: db ; 3e3c
	ds 10
sMobileEventIndexBackup:: db ; 3e47

SECTION "SRAM bank 5",  SRAM, BANK[5]
	ds 20
sNumBattleTowerWins:: ds 2 ; a014
	ds 101
sLargestMagikarp:: ds 2 ; a07b
	ds 2
sBugContestHighscore:: ds 2 ; a07f
	ds 2625
sNewsId:: ds 12 ; aac2
sNewsIdBackup:: ds 12 ; aace