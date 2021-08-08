INCLUDE "includes.s"

SECTION "SRAM", SRAM[$a000], BANK[$0]

sa000:
    ds $faa

sPlayerName:: ; $afaa
    ds 6

safb0:
    ds $11b3-$fb0

sTextSpeedBaseCounter:: ; $b1b3
    db