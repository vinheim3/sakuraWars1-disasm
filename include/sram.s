INCLUDE "includes.s"

SECTION "SRAM", SRAM[$a000], BANK[$0]

sa000:
    ds $80

sGlobalFlags1:: ; $a080
    ds $80

sCurrPoints:: ; $a100
    dw

sa102:
    ds $faa-$102

sPlayerName:: ; $afaa
    ds 6

; 1-indexed
sCurrDay:: ; $afb0
    db

sDayPeriodIdx:: ; $afb1
    db

safb2:
    ds $11b3-$fb2

sTextSpeedBaseCounter:: ; $b1b3
    db

sb1b4:
    ds $fff-$1b4

sRandomSeed:: ; $bfff
    db