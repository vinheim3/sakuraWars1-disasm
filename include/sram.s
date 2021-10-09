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

sSramVals2:: ; $afb0
    ; can access up to $b7af
; 1-indexed (1 is Sunday)
sCurrDay:: ; $afb0
    db

sDayPeriodIdx:: ; $afb1
    db

safb2:
    ds $10b0-$fb2

sGlobalFlags2:: ; $b0b0
    ds $1b3-$b0 ; can access up to $b8af

sTextSpeedCurrCounter:: ; $b1b3
    db
sMenuSpeedCurrCounter:: ; $b1b4
    db
sCursorSpeedCurrCounter:: ; $b1b5
    db
sb1b6:
    ds 7-6
sCurrCursorType:: ; $b1b7
    db
sb1b8:
    ds $b-8

sb1bb:
    ds $fff-$1bb

sRandomSeed:: ; $bfff
    db