INCLUDE "includes.s"

SECTION "SRAM", SRAM[$a000], BANK[$0]

sa000:
    ds $faa

sPlayerName:: ; $afaa
    ds 6

; 1-indexed
sCurrDay:: ; $afb0
    db

safb1:
    ds $11b3-$fb1

sTextSpeedBaseCounter:: ; $b1b3
    db

sb1b4:
    ds $fff-$1b4

sRandomSeed:: ; $bfff
    db