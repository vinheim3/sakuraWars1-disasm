INCLUDE "includes.s"

SECTION "SRAM", SRAM[$a000], BANK[$0]

sSramVals1:: ; $a000
    ds $80 ; can access up to $a3ff

sGlobalFlags1:: ; $a080
    ds $80

sCurrPoints:: ; $a100
    dw

sa102:
    ds $faa-$102

sPlayerName:: ; $afaa
    ds 6

; 1-indexed
sSramVals2:: ; $afb0
    ; can access up to $b7af
sCurrDay:: ; $afb0
    db

sDayPeriodIdx:: ; $afb1
    db

safb2:
    ds $10b0-$fb2

sGlobalFlags2:: ; $b0b0
    ds $1b3-$b0 ; can access up to $b8af

sTextSpeedBaseCounter:: ; $b1b3
    db

sb1b4:
    ds $fff-$1b4

sRandomSeed:: ; $bfff
    db