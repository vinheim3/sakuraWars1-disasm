SECTION "HRAM", HRAM[$ff80]

hCurrAnimSpriteSpec:: ; $ff80
hAnimSpriteSpecAddr:: ; $ff80
    dw
hAnimSpriteSpecCurrFrameCounter:: ; $ff82
    db
hAnimSpriteSpecCondLoopCounter:: ; $ff83
    db
hAnimSpriteSpecX:: ; $ff84
    db
hAnimSpriteSpecY:: ; $ff85
    db

hff86:
    ds $a0-$86

hScriptOpcodeParams:: ; $ffa0
    ds 5 ; unknown size

hffa5:
    ds $f5-$a5

hOamDmaFunc:: ; $fff5
    ds $0a
