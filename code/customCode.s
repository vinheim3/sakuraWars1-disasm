include "includes.s"


SECTION "Custom misc $1f", ROMX[$4000], BANK[$1f]

if def(VWF)

Gfx_EnTitleMenuScreenOpts::
	INCBIN "en_titleMenuScreenOpts.2bpp"


LoadSakuraMiniGameTitleScreenGfx0::
	ld   bc, 38*$10
	ld   de, $d000+$570
	ld   hl, .data1
	call MemCopy

	ld   bc, $10
	ld   de, $d000+$a50
	ld   hl, .data2
	call MemCopy

	ret

.data1:
	INCBIN "en_sakuraMiniGameTitleScreen.2bpp", 2*$10, 38*$10
.data2:
	INCBIN "en_sakuraMiniGameTitleScreen.2bpp", 89*$10, $10


LoadSakuraMiniGameTitleScreenGfx1::
	ld   bc, 39*$10
	ld   de, $d000
	ld   hl, .data1
	call MemCopy

	ld   bc, 9*$10
	ld   de, $d000+$270
	ld   hl, .data2
	call MemCopy

	ld   bc, 9*$10
	ld   de, $d000+$300
	ld   hl, .data3
	call MemCopy

	ld   bc, 9*$10
	ld   de, $d000+$3a0
	ld   hl, .data4
	call MemCopy

	ld   bc, 3*$10
	ld   de, $d000+$360
	ld   hl, .data5
	call MemCopy

	M_FarCall ReplaceSakuraMiniGameTSPopup

	ret

.data1:
	INCBIN "en_sakuraMiniGameTitleScreen.2bpp", 40*$10, 39*$10
.data2:
	INCBIN "en_sakuraMiniGameTitleScreen.2bpp", 80*$10, 9*$10
.data3:
	INCBIN "en_sakuraMiniGameTitleScreen.2bpp", 90*$10, 9*$10
.data4:
	INCBIN "en_sakuraMiniGameTitleScreen.2bpp", 107*$10, 9*$10
.data5:
	INCBIN "en_sakuraMiniGameTitleScreen.2bpp", 103*$10, 3*$10


LoadSakuraMiniGameTitleScreenGfxSpr::
	ld   a, $1c                                      ; $79f7: $3e $1c
	ld   hl, $d000                                   ; $79f9: $21 $00 $d0
	ld   de, $5600                                   ; $79fc: $11 $00 $56
	call RLEXorCopy                                       ; $79ff: $cd $d2 $09

; Cutting some sprite lines
	ld   bc, 8
	ld   hl, $d000+$470+4
	call MemClear

	ld   bc, 12
	ld   hl, $d000+$490+4
	call MemClear

	ld   bc, 8
	ld   hl, $d000+$4b0+6
	call MemClear

	ld   bc, 12
	ld   hl, $d000+$d0+4
	call MemClear

	ld   bc, 16
	ld   hl, $d000+$100
	call MemClear

	ld   bc, 2
	ld   hl, $d000+$410+14
	call MemClear

; Clearing/setting parts of sprite lines
	ld   a, $08
	ld   [$d000+$380+12], a
	ld   a, $f8
	ld   [$d000+$380+13], a
	ld   a, $08
	ld   [$d000+$380+14], a
	ld   a, $f8
	ld   [$d000+$380+15], a
	ld   a, $08
	ld   [$d000+$390], a
	ld   a, $f8
	ld   [$d000+$390+1], a
	ld   a, $18
	ld   [$d000+$390+2], a
	ld   a, $f8
	ld   [$d000+$390+3], a

	ld   a, $3e
	ld   [$d000+$110+1], a
	ld   a, $19
	ld   [$d000+$110+3], a

	ld   bc, 7*2
	ld   de, $d000+$c0+6
	ld   hl, .hairSheen
	call MemCopy

; New sprites
; - on top of the left R
	ld   a, $80
	ld   [$d000+$520], a
; - below the L
	ld   a, $f8
	ld   [$d000+$540], a
	ld   a, $f0
	ld   [$d000+$540+2], a
; - below the right R
	ld   a, $40
	ld   [$d000+$560+8], a
	ld   [$d000+$560+10], a
	ld   a, $03
	ld   [$d000+$570], a
	ld   a, $01
	ld   [$d000+$570+2], a
; - middle of world series
	ld   bc, 4*2
	ld   de, $d000+$580+8
	ld   hl, .middleOfWorldSeries
	call MemCopy
; - middle of L & D
	ld   bc, 4*2
	ld   de, $d000+$5a0
	ld   hl, .middleOfLandD1
	call MemCopy
	ld   bc, 3*2
	ld   de, $d000+$5c0
	ld   hl, .middleOfLandD2
	call MemCopy

	ld   c, $80                                      ; $7a02: $0e $80
	ld   de, $8000                                   ; $7a04: $11 $00 $80
	ld   a, $03                                      ; $7a07: $3e $03
	ld   hl, $d000                                   ; $7a09: $21 $00 $d0
	ret

.hairSheen:
	db $3f,$20, $7f,$40, $ff,$80, $ff,$80, $ff,$80
	db $ff,$01, $ff,$01
.middleOfWorldSeries:
	db $02,$00, $02,$00, $06,$00, $0e,$00
.middleOfLandD1:
	db $07,$00, $1f,$00, $07,$00, $06,$00
.middleOfLandD2:
	db $ff,$00, $e0,$00, $80,$00


LoadSumireMiniGameTitleScreenGfx0::
; What already exists
	ld   bc, 6*$10
	ld   de, $d000+$a00
	ld   hl, .row1left
	call MemCopy

	ld   bc, 9*$10
	ld   de, $d000+$a60
	ld   hl, .row1right
	call MemCopy

	ld   bc, 6*$10
	ld   de, $d000+$b00
	ld   hl, .row2left
	call MemCopy

	ld   bc, 9*$10
	ld   de, $d000+$b60
	ld   hl, .row2right
	call MemCopy

	ld   bc, 6*$10
	ld   de, $d000+$c00
	ld   hl, .row3left
	call MemCopy

	ld   bc, 9*$10
	ld   de, $d000+$c60
	ld   hl, .row3right
	call MemCopy

	ld   bc, 6*$10
	ld   de, $d000+$d00
	ld   hl, .row4left
	call MemCopy

	ld   bc, 4*$10
	ld   de, $d000+$d60
	ld   hl, .row4right
	call MemCopy

	ld   bc, 7*$10
	ld   de, $d000+$e00
	ld   hl, .row5left
	call MemCopy

	ld   bc, 3*$10
	ld   de, $d000+$e70
	ld   hl, .row5right
	call MemCopy

	ld   bc, 7*$10
	ld   de, $d000+$f00
	ld   hl, .row6left
	call MemCopy

; New tiles
	ld   bc, 2*$10
	ld   de, $d000+$db0
	ld   hl, .newLeft1
	call MemCopy

	ld   bc, 1*$10
	ld   de, $d000+$40
	ld   hl, .newB1
	call MemCopy

	ld   bc, 2*$10
	ld   de, $d000+$dd0
	ld   hl, .newLeft2
	call MemCopy

	ld   bc, 2*$10
	ld   de, $d000+$ea0
	ld   hl, .newLeft3
	call MemCopy

	ld   bc, 4*$10
	ld   de, $d000+$ec0
	ld   hl, .newLeft4
	call MemCopy

	ld   bc, 4*$10
	ld   de, $d000+$f70
	ld   hl, .newLeft5
	call MemCopy

	ld   bc, $10
	ld   de, $d000+$df0
	ld   hl, .newLeft6_1
	call MemCopy

	ld   bc, $10
	ld   de, $d000+$af0
	ld   hl, .newLeft6_2
	call MemCopy

	ld   bc, 2*$10
	ld   de, $d000+$fb0
	ld   hl, .newRight4
	call MemCopy

	ld   bc, 2*$10
	ld   de, $d000+$fd0
	ld   hl, .newRight5
	call MemCopy

	ld   bc, $10
	ld   de, $d000+$ff0
	ld   hl, .newRight6
	call MemCopy

	ret
	
.row1left:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 1*$10, 6*$10
.row1right:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 9*$10, 9*$10
.row2left:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 21*$10, 6*$10
.row2right:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 29*$10, 9*$10
.row3left:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 41*$10, 6*$10
.row3right:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 49*$10, 9*$10
.row4left:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 61*$10, 6*$10
.row4right:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 69*$10, 4*$10
.row5left:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 81*$10, 7*$10
.row5right:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 90*$10, 3*$10
.row6left:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 101*$10, 7*$10

.newLeft1:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 47*$10, 2*$10
.newLeft2:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 67*$10, 2*$10
.newB1:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 27*$10, 1*$10
.newLeft3:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 88*$10, 2*$10
.newLeft4:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 108*$10, 4*$10
.newLeft5:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 128*$10, 4*$10
.newLeft6_1:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 148*$10, $10
.newLeft6_2:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 149*$10, $10
.newRight4:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 117*$10, 2*$10
.newRight5:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 137*$10, 2*$10
.newRight6:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 157*$10, $10


LoadSumireMiniGameTitleScreenGfx1::
	ld   a, $17                                      ; $6fbd: $3e $17
	ld   hl, $d000                                   ; $6fbf: $21 $00 $d0
	ld   de, $5763                                   ; $6fc2: $11 $63 $57
	call RLEXorCopy

; $9000 - new tiles
	ld   bc, 5*$10
	ld   de, $d000+$a0
	ld   hl, .row4right
	call MemCopy

	ld   bc, 4*$10
	ld   de, $d000+$1a0
	ld   hl, .row5right
	call MemCopy

	ld   bc, 5*$10
	ld   de, $d000+$290
	ld   hl, .row6right
	call MemCopy

	ld   bc, 7*$10
	ld   de, $d000+$200
	ld   hl, .row7left
	call MemCopy

	ld   bc, 5*$10
	ld   de, $d000+$390
	ld   hl, .row7right
	call MemCopy

	ld   bc, 7*$10
	ld   de, $d000+$300
	ld   hl, .row8left
	call MemCopy

; Press A btn
	ld   bc, 10*$10
	ld   de, $d000
	ld   hl, .pressAleftTop
	call MemCopy

	ld   bc, 2*$10
	ld   de, $d000+$1e0
	ld   hl, .pressArightTop
	call MemCopy

	ld   bc, 10*$10
	ld   de, $d000+$100
	ld   hl, .pressAleftBottom
	call MemCopy

	ld   bc, 2*$10
	ld   de, $d000+$2e0
	ld   hl, .pressArightBottom
	call MemCopy

; Priority tiles
	ld   a, $bf
	ld   [$d000+$400+6], a
	ld   [$d000+$400+8], a
	ld   [$d000+$400+10], a
	ld   [$d000+$400+12], a
	ld   [$d000+$400+14], a

	ret

.row4right:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 73*$10, 5*$10
.row5right:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 93*$10, 4*$10
.row6right:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 112*$10, 5*$10
.row7left:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 121*$10, 7*$10
.row7right:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 132*$10, 5*$10
.row8left:
	INCBIN "en_sumireMiniGameTitleScreen.2bpp", 141*$10, 7*$10

.pressAleftTop:
	INCBIN "en_sumireMGTitleScreenPressA.2bpp", 0, 10*$10
.pressArightTop:
	INCBIN "en_sumireMGTitleScreenPressA.2bpp", 10*$10, 2*$10
.pressAleftBottom:
	INCBIN "en_sumireMGTitleScreenPressA.2bpp", 12*$10, 10*$10
.pressArightBottom:
	INCBIN "en_sumireMGTitleScreenPressA.2bpp", 22*$10, 2*$10


LoadSumireMiniGameTitleScreenGfxSpr::
	ld   bc, .end-.gfx
	ld   de, $d000+$1e0
	ld   hl, .gfx
	jp   MemCopy

.gfx:
	INCBIN "en_sumireMGTitleScreenSpr.2bpp"
.end:


LoadMariaMiniGameTitleScreenGfx1::
	ld   bc, 11*$10
	ld   de, $d000
	ld   hl, .row1
	call MemCopy

	ld   bc, 11*$10
	ld   de, $d000+(11*$10)
	ld   hl, .row2
	call MemCopy

	ld   bc, 13*$10
	ld   de, $d000+(22*$10)
	ld   hl, .row3
	call MemCopy

	ld   bc, 13*$10
	ld   de, $d000+(35*$10)
	ld   hl, .row4
	call MemCopy

	ld   bc, $10
	ld   de, $d000+$7f0
	ld   hl, .row5
	call MemCopy

	M_FarCall ReplaceMariaMiniGameTSPopup

	ret

.row1:
	INCBIN "en_mariaMiniGameTitleScreen.2bpp", 0, 11*$10
.row2:
	INCBIN "en_mariaMiniGameTitleScreen.2bpp", 13*$10, 11*$10
.row3:
	INCBIN "en_mariaMiniGameTitleScreen.2bpp", 26*$10, 13*$10
.row4:
	INCBIN "en_mariaMiniGameTitleScreen.2bpp", 39*$10, 13*$10
.row5:
	INCBIN "en_mariaMiniGameTitleScreen.2bpp", (52+11)*$10, $10


LoadSettingsEnTileData::
; Original code
	ld   hl, $d200                                   ; $4960: $21 $00 $d2
	ld   b, $60                                      ; $4963: $06 $60
	call EnqueueHDMATransfer                                       ; $4965: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4968: $cf

	ld   a, $16                                      ; $4969: $3e $16
	ld   hl, $d000                                   ; $496b: $21 $00 $d0
	ld   de, $5793                                   ; $496e: $11 $93 $57
	call RLEXorCopy

; New code
	ld   bc, $c0
	ld   de, $d1a0
	ld   hl, Gfx_EnSettings
	call MemCopy

	ld   bc, $240
	ld   de, $d6e0
	ld   hl, Gfx_EnSettings+$c0
	call MemCopy

	ld   bc, $280
	ld   de, $d9a0
	ld   hl, Gfx_EnSettings+$c0+$240
	call MemCopy

	ld   bc, $80
	ld   de, $ddc0
	ld   hl, Gfx_EnSettings+$c0+$240+$280
	call MemCopy

	ld   bc, $140
	ld   de, $dec0
	ld   hl, Gfx_EnSettings+$c0+$240+$280+$80
	call MemCopy

	ld   bc, $60
	ld   de, $d0a0
	ld   hl, Gfx_EnSettings+$c0+$240+$280+$80+$140
	call MemCopy

; On/Off
	ld   bc, $30
	ld   de, $d000+$300
	ld   hl, .gfxOnOff
	call MemCopy

	ld   bc, $30
	ld   de, $d000+$400
	ld   hl, .gfxOnOff+$30
	call MemCopy

	ld   bc, $30
	ld   de, $d000+$500
	ld   hl, .gfxOnOff+$60
	call MemCopy

	ld   bc, $30
	ld   de, $d000+$600
	ld   hl, .gfxOnOff+$90
	call MemCopy
	ret

.gfxOnOff:
	INCBIN "en_settingsOnOff.2bpp"


EnLoadSceneryScheduleLayout::
	ld   a, BANK(.layout)
	ldbc 15, 9
	ld   de, .layout
	ld   hl, $d140+$23
	call FarCopyLayout

	ld   a, BANK(.attrs)
	ldbc 15, 9
	ld   de, .attrs
	ld   hl, $d000+$23
	call FarCopyLayout
	ret
.layout:
	db $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $04, $05, $06, $07
	db $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16
	db $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25
	db $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34
	db $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43
	db $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52
	db $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61
	db $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70
	db $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f
.attrs:
	db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $0b, $0b, $0b, $0b
	db $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
	db $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
	db $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
	db $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
	db $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
	db $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
	db $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
	db $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b


Gfx_EnSettings:
	INCBIN "en_settings.2bpp"


ChangeSettingsTileMap::
	ld   a, BANK(TileMap_SettingsMainBit)
	ldbc $0e, $0a
	ld   de, TileMap_SettingsMainBit
	ld   hl, $d8a3
	call FarCopyLayout

	ld   a, BANK(TileMap_SlowNormalFast)
	ldbc $0c, $02
	ld   de, TileMap_SlowNormalFast
	ld   hl, $d814
	call FarCopyLayout

	ld   a, BANK(TileMap_SlowNormalFast)
	ldbc $0c, $02
	ld   de, TileMap_SlowNormalFast
	ld   hl, $d854
	call FarCopyLayout

	ld   a, BANK(TileMap_SlowNormalFast)
	ldbc $0c, $02
	ld   de, TileMap_SlowNormalFast
	ld   hl, $d894
	call FarCopyLayout

	ld   a, BANK(TileMap_CursorType)
	ldbc $08, $02
	ld   de, TileMap_CursorType
	ld   hl, $d954
	call FarCopyLayout

	ld   a, BANK(TileMap_FaceIcon)
	ldbc $07, $02
	ld   de, TileMap_FaceIcon
	ld   hl, $d994
	call FarCopyLayout

	ld   a, BANK(TileMap_SettingsText)
	ldbc $06, $03
	ld   de, TileMap_SettingsText
	ld   hl, $d822
	call FarCopyLayout
	ret


TileMap_SettingsMainBit::
	db $fa, $fc, $fe, $00, $02, $04, $06, $08, $b3, $b3, $b3, $b3, $b3, $b3
	db $fb, $fd, $ff, $01, $03, $05, $07, $09, $c3, $c3, $c3, $c3, $c3, $c3
	db $0a, $0c, $0e, $10, $1a, $1c, $1e, $20, $b3, $b3, $b3, $b3, $b3, $b3
	db $0b, $0d, $0f, $11, $1b, $1d, $1f, $21, $c3, $c3, $c3, $c3, $c3, $c3
	db $22, $24, $26, $28, $2a, $2c, $2e, $30, $b3, $b3, $b3, $b3, $b3, $b3
	db $23, $25, $27, $29, $2b, $2d, $2f, $31, $c3, $c3, $c3, $c3, $c3, $c3
	db $b3, $b3, $b3, $ca, $cb, $cc, $cd, $b3, $b3, $b3, $b3, $b3, $b3, $b3
	db $c3, $c3, $c3, $da, $db, $dc, $dd, $c3, $c3, $c3, $c3, $c3, $c3, $c3
	db $b3, $b3, $b3, $ca, $cb, $cc, $cd, $b3, $b3, $b3, $b3, $b3, $b3, $b3
	db $c3, $c3, $c3, $da, $db, $dc, $dd, $c3, $c3, $c3, $c3, $c3, $c3, $c3


TileMap_SlowNormalFast::
	db $f2, $f4, $f6, $f8, $a2, $a4, $ee, $f0, $9a, $9c, $9e, $a0
	db $f3, $f5, $f7, $f9, $a3, $a5, $ef, $f1, $9b, $9d, $9f, $a1


TileMap_CursorType::
	db $32, $34, $36, $38, $3a, $3c, $3e, $b3
	db $33, $35, $37, $39, $3b, $3d, $3f, $c3


TileMap_FaceIcon::
	db $40, $5c, $5e, $60, $62, $6c, $b3
	db $41, $5d, $5f, $61, $63, $6d, $c3


TileMap_SettingsText::
	db $6e, $70, $72, $74, $76, $78
	db $6f, $71, $73, $75, $77, $79
	db $7a, $7c, $7e, $8a, $8c, $8e


ChangeSettingsTileAttr::
	ld   a, $07
	ld   [$d822], a
	ld   a, $05
	ld   [$d827], a
	ret


LoadEnBattleTileData::
	ld   bc, $30
	ld   de, $9000
	ld   hl, Gfx_EnBattle
	call MemCopy

	ld   bc, $30
	ld   de, $9100
	ld   hl, Gfx_EnBattle+$30
	call MemCopy

	ld   bc, $10
	ld   de, $9150
	ld   hl, Gfx_EnBattle+$60
	call MemCopy

	ld   bc, $20
	ld   de, $9230
	ld   hl, Gfx_EnBattle+$70
	call MemCopy

	ld   bc, $30
	ld   de, $9280
	ld   hl, Gfx_EnBattle+$90
	call MemCopy

	ld   bc, $30
	ld   de, $92e0
	ld   hl, Gfx_EnBattle+$c0
	call MemCopy
	ret


Gfx_EnBattle:
	INCBIN "en_battleKanjis.2bpp"


Gfx_EnSaveScreen::
	INCBIN "en_saveScreen.2bpp"


RpnData_44_4d47::
	db $04, $80, $83, $01, $00, $20, $00

RpnData_45_59e5::
	db $02, $06, $01, $05, $20, $00

RpnData_47_46e6::
	db $04, $80, $a6, $01, $00, $20, $00

RpnData_4a_4232::
	db $03, $e5, $01, $00, $20, $00

RpnData_60_556c::
	db $03, $12, $01, $aa, $24, $04, $80, $c8, $01, $ff, $20, $1c, $00

RpnData_50_4cf9::
	db $03, $6a, $02, $00, $21, $00

RpnData_51_403a::
	db $04, $80, $7f, $01, $ff, $20, $03, $71, $02, $00, $20, $1c, $00

RpnData_60_44c9::
	db $03, $14, $01, $9b, $25, $00

RpnData_50_552d::
	db $04, $80, $cb, $01, $00, $20, $03, $4e, $02, $00, $03, $48, $29, $29, $01, $01, $22, $1c, $00

RpnData_62_4dc4::
	db $03, $15, $01, $aa, $24, $04, $80, $33, $01, $ff, $20, $1c, $00

RpnData_55_4419::
	db $03, $12, $01, $a0, $25, $04, $80, $1d, $01, $00, $20, $1c, $03, $4f, $02, $00, $03, $49, $29, $29, $01, $01, $22, $1c, $00

RpnData_59_57eb::
	db $04, $80, $6c, $01, $ff, $20, $00

RpnData_45_6d90::
	db $02, $06, $01, $03, $20, $00

RpnData_4e_6c3e::
	db $04, $80, $c2, $01, $00, $20, $00

RpnData_63_40c0::
	db $04, $80, $35, $01, $ff, $20, $00

RpnData_47_45fb::
	db $04, $80, $3c, $01, $00, $20, $04, $80, $3b, $01, $00, $20, $1c, $00

RpnData_48_62ca::
	db $02, $06, $01, $05, $20, $00

RpnData_51_4eb4::
	db $04, $80, $24, $01, $ff, $20, $03, $6e, $02, $00, $20, $1c, $00

RpnData_61_494f::
	db $03, $14, $01, $aa, $24, $04, $80, $4b, $01, $ff, $20, $1c, $00

RpnData_55_7ce9::
	db $04, $80, $1f, $01, $ff, $20, $00

RpnData_46_4e77::
	db $04, $80, $64, $01, $ff, $20, $04, $80, $65, $01, $00, $20, $1c, $03, $6b, $02, $00, $20, $1c, $00

RpnData_5d_4be2::
	db $03, $12, $01, $78, $25, $00

RpnData_46_438d::
	db $02, $06, $01, $01, $20, $00

RpnData_67_7baa::
	db $04, $80, $49, $01, $00, $20, $00

RpnData_69_783e::
	db $03, $11, $01, $b4, $24, $03, $4e, $02, $00, $03, $48, $29, $29, $01, $01, $22, $1c, $00

RpnData_64_4b82::
	db $04, $80, $8b, $01, $ff, $20, $00

RpnData_4e_6262::
	db $04, $80, $aa, $01, $00, $20, $00

RpnData_4f_5625::
	db $04, $80, $92, $01, $00, $20, $00

RpnData_49_65c7::
	db $04, $80, $3b, $01, $ff, $20, $03, $66, $02, $00, $20, $1c, $00

RpnData_49_66ad::
	db $04, $80, $14, $01, $ff, $20, $03, $61, $02, $00, $20, $1c, $00

RpnData_5d_5f9c::
	db $04, $80, $29, $01, $ff, $20, $00

RpnData_53_56a9::
	db $03, $16, $01, $91, $24, $00

RpnData_67_7c2e::
	db $04, $80, $b3, $01, $00, $20, $00

RpnData_69_45ee::
	db $04, $80, $47, $01, $ff, $20, $03, $5f, $02, $00, $20, $1c, $00

RpnData_60_413e::
	db $03, $16, $01, $9b, $25, $00

RpnData_49_5f8f::
	db $04, $80, $23, $01, $ff, $20, $03, $70, $02, $00, $20, $1c, $00

RpnData_44_7f84::
	db $02, $00, $01, $07, $2c, $01, $02, $20, $02, $00, $03, $56, $25, $1c, $00

RpnData_4d_7090::
	db $03, $4e, $02, $00, $03, $48, $29, $29, $01, $01, $22, $00

RpnData_48_5794::
	db $02, $06, $01, $06, $20, $00

RpnData_4a_63af::
	db $03, $4e, $02, $00, $03, $48, $29, $29, $01, $01, $22, $00

RpnData_58_5e0e::
	db $03, $4e, $02, $00, $03, $48, $29, $29, $01, $01, $22, $00

RpnData_5a_65a9::
	db $04, $80, $c5, $01, $00, $20, $00

RpnData_69_47ab::
	db $04, $80, $2f, $01, $ff, $20, $00

RpnData_67_775f::
	db $04, $80, $71, $01, $ff, $20, $03, $5b, $02, $00, $20, $1c, $00

RpnData_4b_45ae::
	db $04, $80, $7d, $01, $ff, $20, $04, $80, $7e, $01, $00, $20, $1c, $00

RpnData_45_775b::
	db $02, $06, $01, $02, $20, $00

RpnData_5c_7ea7::
	db $02, $06, $01, $09, $20, $00

RpnData_69_7db8::
	db $03, $16, $01, $af, $25, $04, $80, $8a, $01, $ff, $20, $1c, $00

RpnData_60_5360::
	db $03, $14, $01, $a0, $24, $03, $51, $02, $00, $03, $4b, $29, $29, $01, $01, $22, $1c, $00

RpnData_5f_7f53::
	db $04, $80, $42, $01, $ff, $20, $00

RpnData_4b_4a42::
	db $04, $80, $19, $01, $ff, $20, $04, $80, $1a, $01, $00, $20, $1c, $00

RpnData_57_429d::
	db $04, $80, $6d, $01, $00, $20, $00

RpnData_43_61f4::
	db $02, $00, $01, $0e, $20, $02, $00, $01, $1c, $20, $1b, $02, $00, $03, $54, $23, $1c, $00

RpnData_68_6956::
	db $02, $06, $01, $09, $20, $03, $55, $01, $02, $25, $1c, $00

RpnData_48_4d7f::
	db $02, $06, $01, $09, $20, $00

RpnData_4a_564f::
	db $03, $e0, $01, $00, $20, $00

RpnData_64_6579::
	db $04, $80, $4d, $01, $ff, $20, $00

RpnData_46_55d8::
	db $03, $4f, $02, $00, $03, $49, $29, $29, $01, $01, $25, $00

RpnData_5c_518b::
	db $03, $4f, $02, $00, $03, $49, $29, $29, $01, $01, $22, $00

RpnData_5f_4d45::
	db $03, $4e, $02, $00, $03, $48, $29, $29, $01, $01, $22, $00

RpnData_46_58e0::
	db $03, $53, $02, $00, $03, $4d, $29, $29, $01, $01, $25, $00

RpnData_63_5abf::
	db $04, $80, $91, $01, $ff, $20, $00

RpnData_5a_4f85::
	db $04, $80, $8e, $01, $00, $20, $00

RpnData_55_462b::
	db $03, $11, $01, $8c, $25, $04, $80, $1d, $01, $00, $20, $1c, $03, $11, $01, $8c, $25, $02, $00, $01, $14, $20, $1c, $04, $80, $1d, $01, $ff, $20, $1c, $04, $80, $1e, $01, $ff, $20, $1c, $1b, $00

RpnData_66_671a::
	db $03, $13, $01, $b4, $24, $03, $50, $02, $00, $03, $4a, $29, $29, $01, $01, $22, $1c, $04, $80, $2c, $01, $00, $20, $1c, $03, $13, $01, $b4, $24, $03, $50, $02, $00, $03, $4a, $29, $29, $01, $01, $22, $1c, $04, $80, $2c, $01, $ff, $20, $1c, $04, $80, $2d, $01, $ff, $20, $1c, $02, $00, $01, $1a, $20, $1c, $1b, $00

RpnData_55_6db2::
	db $04, $80, $2a, $01, $ff, $20, $00

RpnData_4d_7c4b::
	db $04, $80, $18, $01, $ff, $20, $03, $5e, $02, $00, $20, $1c, $00

RpnData_60_4bdc::
	db $03, $16, $01, $aa, $24, $00

RpnData_55_4939::
	db $04, $80, $85, $01, $ff, $20, $00

RpnData_4b_71ea::
	db $03, $4e, $02, $00, $03, $48, $29, $29, $01, $01, $22, $00

RpnData_60_42fb::
	db $03, $13, $01, $9b, $25, $00

RpnData_4e_73f0::
	db $04, $80, $c0, $01, $00, $20, $00

RpnData_57_6fca::
	db $04, $80, $87, $01, $00, $20, $00

RpnData_43_4180::
	db $04, $80, $39, $01, $ff, $20, $04, $80, $3a, $01, $00, $20, $1c, $00

RpnData_49_7422::
	db $03, $50, $02, $00, $03, $4a, $29, $29, $01, $01, $25, $00

RpnData_49_70c3::
	db $04, $80, $16, $01, $ff, $20, $03, $59, $02, $00, $20, $1c, $00

RpnData_50_65bd::
	db $02, $06, $01, $09, $20, $00

RpnData_69_491e::
	db $03, $12, $01, $b4, $25, $00

RpnData_44_7b63::
	db $02, $00, $01, $07, $2c, $01, $02, $20, $02, $00, $03, $56, $25, $1c, $00

RpnData_4a_4357::
	db $03, $e2, $01, $00, $20, $00

RpnData_4f_4f93::
	db $04, $80, $9a, $01, $00, $20, $00

RpnData_60_4a09::
	db $03, $11, $01, $9b, $25, $00

RpnData_68_65c6::
	db $03, $4f, $02, $00, $03, $49, $29, $29, $01, $01, $22, $00

RpnData_66_7d10::
	db $03, $4e, $02, $00, $03, $48, $29, $29, $01, $01, $22, $00

RpnData_42_7f51::
	db $04, $80, $3b, $01, $ff, $20, $04, $80, $3c, $01, $00, $20, $1c, $00

RpnData_5c_5958::
	db $04, $80, $a5, $01, $ff, $20, $04, $80, $a7, $01, $ff, $20, $1b, $04, $80, $ac, $01, $ff, $20, $1b, $00

RpnData_5d_54a7::
	db $04, $80, $1d, $01, $ff, $20, $03, $69, $02, $00, $20, $1c, $00

RpnData_49_430f::
	db $02, $06, $01, $02, $20, $00

RpnData_4b_47a2::
	db $04, $80, $7f, $01, $ff, $20, $04, $80, $80, $01, $00, $20, $1c, $00

RpnData_44_6d5a::
	db $03, $50, $02, $00, $03, $4a, $29, $29, $01, $01, $22, $00

RpnData_46_5699::
	db $03, $4e, $02, $00, $03, $48, $29, $29, $01, $01, $25, $00

RpnData_4a_61f8::
	db $03, $e1, $01, $00, $20, $00

RpnData_47_6c70::
	db $04, $80, $39, $01, $00, $20, $00

RpnData_4b_4954::
	db $04, $80, $24, $01, $ff, $20, $04, $80, $25, $01, $00, $20, $1c, $00

RpnData_4e_502f::
	db $03, $67, $02, $00, $21, $00

RpnData_50_7154::
	db $04, $80, $7d, $01, $ff, $20, $03, $5d, $02, $00, $20, $1c, $00

RpnData_4d_553e::
	db $04, $80, $73, $01, $00, $20, $00

RpnData_5a_4eeb::
	db $04, $80, $88, $01, $00, $20, $00

RpnData_43_613a::
	db $03, $51, $02, $00, $03, $4b, $29, $29, $01, $01, $25, $00

RpnData_49_6dcc::
	db $04, $80, $39, $01, $ff, $20, $03, $63, $02, $00, $20, $1c, $00

RpnData_4a_4a09::
	db $03, $4f, $02, $00, $03, $49, $29, $29, $01, $01, $22, $00

RpnData_49_4fcc::
	db $02, $06, $01, $01, $20, $00

RpnData_43_406e::
	db $04, $80, $14, $01, $ff, $20, $04, $80, $15, $01, $00, $20, $1c, $00

RpnData_5d_657b::
	db $04, $80, $0d, $01, $ff, $20, $03, $4e, $02, $00, $03, $48, $29, $29, $01, $01, $22, $1c, $00

RpnData_48_5738::
	db $02, $00, $01, $07, $2c, $01, $02, $25, $02, $06, $01, $00, $20, $1c, $00

RpnData_62_621a::
	db $03, $11, $01, $aa, $24, $04, $80, $0e, $01, $ff, $20, $1c, $00

RpnData_68_7ef7::
	db $04, $80, $71, $01, $ff, $20, $04, $80, $72, $01, $00, $20, $1c, $03, $5b, $02, $00, $20, $1c, $00

RpnData_49_74e2::
	db $03, $52, $02, $00, $03, $4c, $29, $29, $01, $01, $25, $00

RpnData_49_7669::
	db $03, $51, $02, $00, $03, $4b, $29, $29, $01, $01, $25, $00

RpnData_5d_47c0::
	db $04, $80, $27, $04, $80, $36, $01, $00, $20, $1c, $03, $5a, $02, $00, $20, $1c, $00

RpnData_48_4cb4::
	db $02, $00, $01, $07, $2c, $01, $00, $20, $00

RpnData_48_6d49::
	db $02, $06, $01, $04, $20, $00

RpnData_49_6cf7::
	db $04, $80, $62, $01, $ff, $20, $03, $76, $02, $00, $20, $1c, $00

RpnData_5d_6315::
	db $04, $80, $20, $01, $ff, $20, $03, $6c, $02, $00, $20, $1c, $00

RpnData_5c_7394::
	db $04, $80, $43, $01, $00, $20, $00

RpnData_60_4827::
	db $03, $12, $01, $9b, $25, $00

RpnData_4a_60da::
	db $03, $e3, $01, $00, $20, $00

RpnData_41_4000::
	db $01, $ff, $00

RpnData_4a_6ffd::
	db $04, $80, $00, $01, $ff, $20, $03, $6f, $02, $00, $20, $1c, $00

RpnData_49_75a7::
	db $03, $53, $02, $00, $03, $4d, $29, $29, $01, $01, $25, $00

RpnData_67_59af::
	db $03, $14, $01, $b4, $24, $03, $51, $02, $00, $03, $4b, $29, $29, $01, $01, $22, $1c, $00

RpnData_45_6371::
	db $02, $06, $01, $04, $20, $00

RpnData_59_51ac::
	db $03, $16, $01, $a0, $24, $03, $53, $02, $00, $03, $4d, $29, $29, $01, $01, $22, $1c, $00

RpnData_58_46a4::
	db $04, $80, $ca, $01, $00, $20, $00

RpnData_66_691e::
	db $04, $80, $2c, $01, $ff, $20, $04, $80, $2d, $01, $00, $20, $1c, $03, $62, $02, $00, $01, $01, $29, $20, $1c, $00

RpnData_69_4190::
	db $04, $80, $86, $01, $ff, $20, $00

RpnData_46_59a2::
	db $03, $51, $02, $00, $03, $4b, $29, $29, $01, $01, $25, $00

RpnData_48_7827::
	db $02, $06, $01, $03, $20, $00

RpnData_46_581b::
	db $03, $52, $02, $00, $03, $4c, $29, $29, $01, $01, $25, $00

RpnData_43_5e31::
	db $03, $4e, $02, $00, $03, $48, $29, $29, $01, $01, $25, $00

RpnData_49_6826::
	db $04, $80, $7a, $01, $ff, $20, $03, $68, $02, $00, $20, $1c, $00

RpnData_60_6b81::
	db $03, $16, $01, $aa, $24, $04, $80, $89, $01, $ff, $20, $1c, $00

RpnData_4b_7e27::
	db $04, $80, $a9, $01, $00, $20, $00

RpnData_50_4a90::
	db $04, $80, $40, $01, $00, $20, $03, $6a, $02, $00, $21, $1c, $00

RpnData_49_5a81::
	db $03, $15, $01, $76, $25, $03, $63, $02, $00, $21, $1c, $00

RpnData_59_5ef1::
	db $04, $80, $08, $01, $ff, $20, $03, $58, $02, $00, $20, $1c, $00

RpnData_56_7ed1::
	db $03, $4e, $02, $00, $03, $48, $29, $29, $01, $01, $22, $00

RpnData_69_7bdc::
	db $03, $12, $01, $af, $25, $04, $80, $c9, $01, $ff, $20, $1c, $00

RpnData_53_7216::
	db $03, $14, $01, $91, $24, $00

RpnData_48_4a51::
	db $02, $00, $01, $01, $1c, $01, $00, $20, $02, $00, $01, $07, $2c, $01, $01, $21, $1c, $02, $00, $03, $54, $24, $1c, $00

RpnData_6a_4123::
	db $03, $13, $01, $af, $25, $04, $80, $76, $01, $ff, $20, $1c, $00

RpnData_4e_6896::
	db $03, $4e, $02, $00, $03, $48, $29, $29, $01, $01, $22, $00

RpnData_50_7a11::
	db $04, $80, $26, $01, $ff, $20, $00

RpnData_4a_6f08::
	db $04, $80, $61, $01, $ff, $20, $03, $50, $02, $00, $03, $4a, $29, $29, $01, $01, $22, $1c, $03, $76, $02, $00, $20, $1c, $00

RpnData_55_55d9::
	db $04, $80, $6f, $01, $ff, $20, $00

RpnData_43_5af9::
	db $04, $80, $64, $01, $ff, $20, $03, $6b, $02, $00, $20, $1c, $00

RpnData_4e_4faa::
	db $04, $80, $a8, $01, $00, $20, $00

RpnData_6a_42dc::
	db $03, $15, $01, $af, $25, $04, $80, $34, $01, $ff, $20, $1c, $00

RpnData_47_786c::
	db $02, $00, $01, $07, $2c, $01, $02, $20, $02, $00, $03, $56, $25, $1c, $00

RpnData_4b_469f::
	db $04, $80, $68, $01, $ff, $20, $04, $80, $69, $01, $00, $20, $1c, $00

RpnData_45_4f2f::
	db $02, $06, $01, $06, $20, $00

RpnData_46_575b::
	db $03, $50, $02, $00, $03, $4a, $29, $29, $01, $01, $25, $00

RpnData_50_78f8::
	db $04, $80, $68, $01, $ff, $20, $03, $67, $02, $00, $20, $1c, $00

RpnData_68_75da::
	db $02, $06, $01, $09, $20, $00

RpnData_43_6078::
	db $03, $53, $02, $00, $03, $4d, $29, $29, $01, $01, $25, $00

RpnData_4f_46db::
	db $04, $80, $8d, $01, $00, $20, $00

RpnData_55_6179::
	db $04, $80, $44, $01, $ff, $20, $00

RpnData_57_4390::
	db $04, $80, $ae, $01, $00, $20, $00

RpnData_4f_7ff7::
	db $04, $80, $ab, $01, $00, $20, $00

RpnData_49_723c::
	db $04, $80, $02, $01, $ff, $20, $00

RpnData_5d_49a1::
	db $04, $80, $43, $01, $ff, $20, $00

RpnData_63_7269::
	db $04, $80, $10, $01, $ff, $20, $00

RpnData_69_430b::
	db $04, $80, $2c, $01, $ff, $20, $03, $62, $02, $00, $20, $1c, $00

RpnData_69_5e91::
	db $03, $4e, $02, $00, $03, $48, $29, $29, $01, $01, $22, $00

RpnData_51_542c::
	db $04, $80, $19, $01, $ff, $20, $03, $6a, $02, $00, $20, $1c, $00

RpnData_49_729f::
	db $03, $4f, $02, $00, $03, $49, $29, $29, $01, $01, $25, $00

RpnData_43_5d70::
	db $03, $4f, $02, $00, $03, $49, $29, $29, $01, $01, $25, $00

RpnData_56_489d::
	db $04, $80, $0c, $01, $ff, $20, $00

RpnData_58_79d6::
	db $03, $4e, $02, $00, $03, $48, $29, $29, $01, $01, $22, $00

RpnData_68_46a7::
	db $03, $4e, $02, $00, $03, $48, $29, $29, $01, $01, $22, $00

RpnData_60_4677::
	db $03, $15, $01, $9b, $25, $00

RpnData_68_7fc4::
	db $04, $80, $70, $01, $ff, $20, $00

RpnData_5a_61b8::
	db $04, $80, $c3, $01, $00, $20, $00

RpnData_48_4c58::
	db $02, $00, $01, $07, $2c, $01, $01, $20, $00

RpnData_46_5247::
	db $04, $80, $82, $01, $ff, $20, $00

RpnData_6a_4493::
	db $03, $11, $01, $af, $25, $04, $80, $0f, $01, $ff, $20, $1c, $00

RpnData_4a_52cc::
	db $03, $e4, $01, $00, $20, $00

RpnData_54_5d7d::
	db $03, $15, $01, $91, $24, $00

RpnData_50_6ed6::
	db $04, $80, $67, $01, $ff, $20, $03, $6d, $02, $00, $20, $1c, $00

RpnData_5d_59cc::
	db $04, $80, $0b, $01, $ff, $20, $00

RpnData_5d_4a62::
	db $04, $80, $6e, $01, $ff, $20, $00

RpnData_43_5ef3::
	db $03, $50, $02, $00, $03, $4a, $29, $29, $01, $01, $25, $00

RpnData_61_5bbc::
	db $03, $13, $01, $aa, $24, $04, $80, $75, $01, $ff, $20, $1c, $00

RpnData_54_6fd2::
	db $03, $11, $01, $91, $24, $00

RpnData_53_406b::
	db $03, $12, $01, $91, $24, $00

RpnData_64_7bc0::
	db $04, $80, $77, $01, $ff, $20, $00

RpnData_49_7360::
	db $03, $4e, $02, $00, $03, $48, $29, $29, $01, $01, $25, $00

RpnData_44_46dc::
	db $04, $80, $90, $01, $00, $20, $00

RpnData_46_4f52::
	db $04, $80, $13, $01, $ff, $20, $00

RpnData_5d_48b2::
	db $04, $80, $08, $01, $ff, $20, $04, $80, $09, $01, $00, $20, $1c, $03, $58, $02, $00, $20, $1c, $00

RpnData_43_4280::
	db $04, $80, $16, $01, $ff, $20, $04, $80, $17, $01, $00, $20, $1c, $00

RpnData_50_7be1::
	db $04, $80, $04, $01, $ff, $20, $03, $5c, $02, $00, $20, $1c, $00

RpnData_59_4cce::
	db $04, $80, $27, $01, $ff, $20, $03, $5a, $02, $00, $20, $1c, $00

RpnData_50_514c::
	db $04, $80, $cb, $01, $00, $20, $00

RpnData_45_4b1e::
	db $02, $00, $01, $0e, $20, $02, $00, $01, $1c, $20, $1b, $02, $00, $03, $54, $24, $1c, $00

RpnData_45_4d1e::
	db $02, $00, $01, $07, $2c, $01, $01, $20, $00

RpnData_54_456d::
	db $03, $13, $01, $91, $24, $00

RpnData_5b_4f7a::
	db $04, $80, $48, $01, $00, $20, $00

RpnData_4e_7b9f::
	db $04, $80, $c4, $01, $00, $20, $00

RpnData_4b_487e::
	db $04, $80, $40, $01, $ff, $20, $04, $80, $41, $01, $00, $20, $1c, $00

RpnData_69_7f88::
	db $03, $14, $01, $af, $25, $04, $80, $4c, $01, $ff, $20, $1c, $00

RpnData_51_43de::
	db $04, $80, $40, $01, $ff, $20, $03, $64, $02, $00, $20, $1c, $00

RpnData_47_7444::
	db $02, $00, $01, $07, $2c, $01, $02, $20, $02, $00, $03, $56, $25, $1c, $00

RpnData_52_7cc7::
	db $03, $11, $01, $8c, $25, $03, $4e, $02, $00, $03, $48, $29, $29, $01, $01, $22, $1c, $00

RpnData_5a_5b45::
	db $04, $80, $93, $01, $00, $20, $00

RpnData_46_7162::
	db $02, $00, $01, $01, $1c, $01, $00, $20, $02, $00, $01, $07, $2c, $01, $01, $21, $1c, $02, $00, $03, $54, $23, $1c, $00

RpnData_5d_5041::
	db $04, $80, $84, $01, $ff, $20, $00

RpnData_43_5fb3::
	db $03, $52, $02, $00, $03, $4c, $29, $29, $01, $01, $25, $00

RpnData_52_7a89::
	db $04, $80, $3d, $01, $ff, $20, $04, $80, $3e, $01, $ff, $20, $1b, $04, $80, $3f, $01, $ff, $20, $1b, $00

RpnData_4b_5b75::
	db $04, $80, $69, $01, $00, $20, $00

RpnData_55_4826::
	db $04, $80, $1d, $01, $ff, $20, $04, $80, $1e, $01, $00, $20, $1c, $03, $69, $02, $00, $01, $01, $29, $20, $1c, $00

RpnData_5a_5691::
	db $04, $80, $9b, $01, $00, $20, $00

RpnData_5a_668c::
	db $04, $80, $c1, $01, $00, $20, $00


endc


SECTION "Custom misc $2b", ROMX[$4000], BANK[$2b]

if def(VWF)

LoadIrisMiniGameTitleScreenGfxSpr::
; Original code pt. 1
	ld   a, $1c                                      ; $73ad: $3e $1c
	ld   hl, $d000                                   ; $73af: $21 $00 $d0
	ld   de, $5276                                   ; $73b2: $11 $76 $52
	call RLEXorCopy                                       ; $73b5: $cd $d2 $09

; Hook
	ld   bc, .end-.gfx
	ld   de, $d000+$360
	ld   hl, .gfx
	call MemCopy

; Original code pt. 2
	ld   c, $80                                      ; $73b8: $0e $80
	ld   de, $8000                                   ; $73ba: $11 $00 $80
	ld   a, $03                                      ; $73bd: $3e $03
	ld   hl, $d000                                   ; $73bf: $21 $00 $d0
	ret

.gfx:
	INCBIN "en_irisMGTitleScreenSpr.2bpp"
.end:


LoadIrisMiniGameTitleScreenGfx1::
	ld   bc, 11*$10
	ld   de, $d000
	ld   hl, .row1
	call MemCopy

	ld   bc, 11*$10
	ld   de, $d000+11*$10
	ld   hl, .row2
	call MemCopy

	ld   bc, 11*$10
	ld   de, $d000+22*$10
	ld   hl, .row3
	call MemCopy

	ld   bc, 6*$10
	ld   de, $d000+33*$10
	ld   hl, .row4
	call MemCopy

	ld   bc, 9*$10
	ld   de, $d000+39*$10
	ld   hl, .row5
	call MemCopy

	ld   bc, 9*$10
	ld   de, $d000+48*$10
	ld   hl, .row6
	call MemCopy

	ld   bc, 12*$10
	ld   de, $d000+57*$10
	ld   hl, .row7
	call MemCopy

	ld   bc, 13*$10
	ld   de, $d000+69*$10
	ld   hl, .row8
	call MemCopy

	ld   bc, 13*$10
	ld   de, $d000+82*$10
	ld   hl, .row9
	call MemCopy

	ld   bc, $10
	ld   de, $d000+95*$10
	ld   hl, .dress
	call MemCopy

; Transfer new tiles
	ld   c, $81
	ld   de, $8800
	ld   a, $03
	ld   hl, $d000
	ld   b, $80
	call EnqueueHDMATransfer
	rst  WaitUntilVBlankIntHandledIfLCDOn

; Original code
	ld   a, $18                                      ; $7382: $3e $18
	ld   hl, $d000                                   ; $7384: $21 $00 $d0
	ld   de, $4000                                   ; $7387: $11 $00 $40
	call RLEXorCopy                                       ; $738a: $cd $d2 $09

	M_FarCall ReplaceIrisMiniGameTSPopup

	ld   c, $81                                      ; $738d: $0e $81
	ld   de, $9000                                   ; $738f: $11 $00 $90
	ld   a, $03                                      ; $7392: $3e $03
	ld   hl, $d000                                   ; $7394: $21 $00 $d0

	ret
.row1:
	INCBIN "en_irisMiniGameTitleScreen.2bpp", 0, 11*$10
.row2:
	INCBIN "en_irisMiniGameTitleScreen.2bpp", 20*$10, 11*$10
.row3:
	INCBIN "en_irisMiniGameTitleScreen.2bpp", 40*$10, 11*$10
.row4:
	INCBIN "en_irisMiniGameTitleScreen.2bpp", 65*$10, 6*$10
.row5:
	INCBIN "en_irisMiniGameTitleScreen.2bpp", 82*$10, 9*$10
.row6:
	INCBIN "en_irisMiniGameTitleScreen.2bpp", 102*$10, 9*$10
.row7:
	INCBIN "en_irisMiniGameTitleScreen.2bpp", 128*$10, 12*$10
.row8:
	INCBIN "en_irisMiniGameTitleScreen.2bpp", 147*$10, 13*$10
.row9:
	INCBIN "en_irisMiniGameTitleScreen.2bpp", 167*$10, 13*$10
.dress:
	INCBIN "en_irisMiniGameTitleScreen.2bpp", 51*$10, $10


LoadKannaMiniGameTitleScreenGfx1_2::
	ld   bc, .end-.gfx
	ld   de, $d000
	ld   hl, .gfx
	call MemCopy

	ld   c, $81
	ld   de, $9000
	ld   a, $03
	ld   hl, $d000
	ld   b, 5*20
	call EnqueueHDMATransfer

	ret
.gfx:
	INCBIN "en_kannaMiniGameTitleScreen.2bpp"
.end:


LoadKannaMiniGameTitleScreenGfxSpr::
	ld   bc, .end-.gfx
	ld   de, $d000+$540
	ld   hl, .gfx
	call MemCopy
	ret

.gfx:
	INCBIN "en_kannaMGTitleScreenSpr.2bpp"
.end:


LoadKohranMiniGameTitleScreenGfx0::
; Original code pt. 1
	ld   a, $16                                      ; $6ddf: $3e $16
	ld   hl, $d000                                   ; $6de1: $21 $00 $d0
	ld   de, $4c65                                   ; $6de4: $11 $65 $4c
	call RLEXorCopy                                       ; $6de7: $cd $d2 $09

; New tiles
	ld   bc, $10
	ld   de, $d000+$8b0
	ld   hl, $d000+$cf0
	call MemCopy

	ld   bc, .end-.gfx-$10
	ld   de, $d000+$8d0
	ld   hl, .gfx+$10
	call MemCopy

; Original code pt. 2
	ld   c, $80                                      ; $6dea: $0e $80
	ld   de, $8800                                   ; $6dec: $11 $00 $88
	ld   a, $03                                      ; $6def: $3e $03
	ld   hl, $d000                                   ; $6df1: $21 $00 $d0

	ret
.gfx:
	INCBIN "en_kohranMiniGameTitleScreen.2bpp"
.end:


LoadKohranMiniGameTitleScreenGfxSpr::
; Original code pt. 1
	ld   a, $13                                      ; $6db4: $3e $13
	ld   hl, $d000                                   ; $6db6: $21 $00 $d0
	ld   de, $7d86                                   ; $6db9: $11 $86 $7d
	call RLEXorCopy                                       ; $6dbc: $cd $d2 $09

; Edits
	xor  a
	ld   [$d000+$25b], a
	ld   [$d000+$25d], a
	ld   [$d000+$25f], a

	ld   a, $3e
	ld   [$d000+$273], a
	ld   a, $38
	ld   [$d000+$275], a
	ld   a, $30
	ld   [$d000+$277], a
	ld   a, $10
	ld   [$d000+$279], a

	ld   a, $0c
	ld   [$d000+$30e], a
	xor  a
	ld   [$d000+$30f], a
	ld   a, $08
	ld   [$d000+$310], a
	xor  a
	ld   b, 13
	ld   hl, $d000+$311
:	ld   [hl+], a
	dec  b
	jr   nz, :-

	ld   bc, .end-.gfx
	ld   de, $d000+$3e0
	ld   hl, .gfx
	call MemCopy

; Original code pt. 2
	ld   c, $80                                      ; $6dbf: $0e $80
	ld   de, $8000                                   ; $6dc1: $11 $00 $80
	ld   a, $03                                      ; $6dc4: $3e $03
	ld   hl, $d000                                   ; $6dc6: $21 $00 $d0

	ret
.gfx:
	INCBIN "en_kohranMGTitleScreenSpr.2bpp"
.end:


TileMap_SakuraMiniGameHelpScreen::
	db $80, $81, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $83
	db $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97
	db $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $96, $97
	db $84, $96, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $96, $96, $96, $96, $97
	db $84, $96, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $96, $96, $97
	db $84, $96, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7
	db $84, $96, $d8, $d9, $da, $db, $dc, $dd, $de, $d9, $df, $e0, $e1, $e2, $96, $96, $96, $96, $e3, $97
	db $e4, $e5, $e5, $e5, $e5, $e5, $e5, $e5, $e5, $e5, $e5, $e5, $e5, $e5, $e5, $e5, $e5, $e5, $e6, $e7
	db $96, $96, $96, $96, $96, $96, $e8, $e9, $ea, $ea, $eb, $ea, $ec, $ed, $96, $96, $96, $96, $96, $96
	db $96, $96, $96, $96, $96, $96, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $96, $96, $96, $96, $96, $96
	db $96, $96, $96, $96, $96, $96, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $96, $96, $96, $96, $96, $96
	db $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe
	db $96, $96, $96, $ff, $00, $96, $96, $96, $96, $96, $96, $96, $96, $96, $96, $96, $96, $96, $96, $96
	db $96, $96, $01, $02, $03, $04, $96, $05, $06, $07, $96, $96, $08, $09, $0a, $96, $96, $96, $96, $96
	db $96, $96, $0b, $0c, $0d, $0e, $96, $0f, $10, $11, $96, $96, $0f, $12, $13, $96, $96, $96, $96, $96
	db $96, $96, $96, $14, $15, $96, $96, $16, $17, $18, $96, $96, $19, $1a, $1b, $96, $96, $96, $96, $96
	db $96, $96, $96, $96, $96, $96, $96, $1c, $1d, $1e, $96, $96, $1f, $20, $21, $96, $96, $96, $96, $96
	db $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22


Gfx_SakuraMiniGameHelpScreen::
	INCBIN "en_sakuraMGHelpScreen.2bpp"
.end::


TileMap_SumireMiniGameHelpScreen::
	db $80, $81, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $83
	db $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $94, $94, $95
	db $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $95
	db $84, $94, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $95
	db $84, $94, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $94, $95
	db $84, $94, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db
	db $84, $94, $dc, $dd, $de, $df, $e0, $e1, $94, $94, $94, $94, $94, $94, $94, $94, $94, $94, $e2, $95
	db $e3, $e4, $e4, $e4, $e4, $e4, $e4, $e4, $e4, $e4, $e4, $e4, $e4, $e4, $e4, $e4, $e4, $e4, $e5, $e6
	db $94, $94, $94, $94, $94, $94, $e7, $e8, $e9, $e9, $ea, $e9, $eb, $ec, $94, $94, $94, $94, $94, $94
	db $94, $94, $94, $94, $94, $94, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $94, $94, $94, $94, $94, $94
	db $94, $94, $94, $94, $94, $94, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $94, $94, $94, $94, $94, $94
	db $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd
	db $94, $94, $fe, $ff, $94, $94, $00, $01, $94, $94, $02, $03, $94, $94, $94, $94, $94, $94, $94, $94
	db $94, $94, $04, $05, $06, $07, $08, $09, $94, $94, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13
	db $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27
	db $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $94, $94, $94, $94
	db $38, $39, $3a, $94, $3b, $3c, $94, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $94, $94, $94, $94
	db $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46


TileMap_MariaMiniGameHelpScreen::
	db $80, $81, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $83
	db $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97
	db $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $97
	db $84, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $ab, $97
	db $84, $ab, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $ab, $97
	db $84, $ab, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd
	db $84, $ab, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $ab, $ab, $ab, $ab, $ab, $ab, $ab, $e7, $97
	db $e8, $e9, $e9, $e9, $e9, $e9, $e9, $e9, $e9, $e9, $e9, $e9, $e9, $e9, $e9, $e9, $e9, $e9, $ea, $eb
	db $ab, $ab, $ab, $ab, $ab, $ab, $ec, $ed, $ee, $ee, $ef, $ee, $f0, $f1, $ab, $ab, $ab, $ab, $ab, $ab
	db $ab, $ab, $ab, $ab, $ab, $ab, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $ab, $ab, $ab, $ab, $ab, $ab
	db $ab, $ab, $ab, $ab, $ab, $ab, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01, $ab, $ab, $ab, $ab, $ab, $ab
	db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
	db $ab, $ab, $ab, $ab, $ab, $ab, $ab, $ab, $ab, $ab, $ab, $ab, $ab, $ab, $ab, $ab, $ab, $ab, $ab, $ab
	db $ab, $ab, $ab, $03, $04, $ab, $05, $06, $07, $08, $ab, $ab, $09, $0a, $0b, $0c, $0d, $0e, $0e, $0f
	db $ab, $ab, $10, $11, $12, $13, $14, $15, $16, $17, $ab, $ab, $18, $19, $1a, $1b, $1c, $1d, $1d, $1e
	db $ab, $ab, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30
	db $ab, $ab, $ab, $31, $32, $ab, $33, $34, $35, $36, $37, $18, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
	db $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40


Gfx_MariaMiniGameHelpScreen::
	INCBIN "en_mariaMGHelpScreen.2bpp"
.end::


AlterMiniGameHelpScreenAttrs::
	ld   a, [wGameState]
	cp   GS_KANNA_MINI_GAME_HELP_SCREEN
	jr   nz, :+

	ld   a, $07
	ld   [$d000+$e6], a
	ld   [$d000+$ed], a
	ld   [$d000+$14a], a
	ld   [$d000+$14b], a
	ld   [$d000+$14c], a

:

	ld   bc, $240
	ld   hl, $d000
:	ld   a, [hl]
	and  $9f
	ld   [hl+], a
	dec  bc
	ld   a, b
	or   c
	jr   nz, :-

	ld   a, [wGameState]
	cp   GS_IRIS_MINI_GAME_HELP_SCREEN
	ret  z
	cp   GS_KOHRAN_MINI_GAME_MAIN
	ret  z

	ld   a, $07
	ld   [$d000+$106], a
	ld   [$d000+$10d], a
	ld   [$d000+$126], a
	ld   [$d000+$12d], a
	ld   [$d000+$146], a
	ld   [$d000+$14d], a
	ret


EnLoadVoiceModeGfx0::
	ld   bc, .end-.gfx
	ld   de, $8d20
	ld   hl, .gfx
	call MemCopy
	ret
.gfx:
	INCBIN "en_voiceMode.2bpp"
.end:


EnLoadVoiceModeTileMap::
	ld   a, BANK(.title)
	ldbc 10, 2
	ld   de, .title
	ld   hl, $9825
	call FarCopyLayout

	ld   a, BANK(.names)
	ldbc 5, 12
	ld   de, .names
	ld   hl, $9886
	call FarCopyLayout
	ret 
.title:
	db $d2, $d3, $d4, $d5, $d6, $dc, $dd, $de, $df, $e0
	db $d7, $d8, $d9, $da, $db, $e1, $e2, $e3, $e4, $e5
.names:
	db $e6, $e7, $e8, $e9, $ea
	db $eb, $ec, $ed, $ee, $ef
	db $f0, $f1, $f2, $f3, $f4
	db $f5, $f6, $f7, $f8, $f9
	db $fa, $fb, $fc, $fd, $fe
	db $ff, $00, $01, $02, $03
	db $04, $05, $06, $07, $08
	db $09, $0a, $0b, $0c, $0d
	db $0e, $0f, $10, $11, $12
	db $13, $14, $15, $16, $17
	db $18, $19, $1a, $1b, $1c
	db $1d, $1e, $1f, $20, $21

endc


SECTION "Custom misc $fb", ROMX[$69fc], BANK[$fb]

if def(VWF)

MiniGameResultsHook::
; Tile map hook
	ld   hl, $9800                                   ; $4fca: $21 $00 $98
	ld   de, $7dc5                                   ; $4fcd: $11 $c5 $7d
	call RLEXorCopy                                       ; $4fd0: $cd $d2 $09

	ld   a, BANK(.layoutBox)
	ldbc 6, 4
	ld   de, .layoutBox
	ld   hl, $9b68
	call FarCopyLayout

	ld   a, BANK(.results)
	ldbc 9, 2
	ld   de, .results
	ld   hl, $9842
	call FarCopyLayout

	ld   a, BANK(.highScore)
	ldbc 10, 3
	ld   de, .highScore
	ld   hl, $98a2
	call FarCopyLayout

	ld   a, BANK(.hiScorePopup)
	ldbc 3, 1
	ld   de, .hiScorePopup
	ld   hl, $9b43
	call FarCopyLayout

	ld   a, BANK(.pointsEarned)
	ldbc 10, 2
	ld   de, .pointsEarned
	ld   hl, $9962
	call FarCopyLayout

	ld   a, BANK(.ptsEarnedPopup)
	ldbc 4, 1
	ld   de, .ptsEarnedPopup
	ld   hl, $9be2
	call FarCopyLayout

	ld   a, BANK(.currPtTotal)
	ldbc 10, 4
	ld   de, .currPtTotal
	ld   hl, $99a2
	call FarCopyLayout

; Tile data hook
	ld   a, $18                                      ; $4fd3: $3e $18
	ld   hl, $8000                                   ; $4fd5: $21 $00 $80
	ld   de, $46f7                                   ; $4fd8: $11 $f7 $46
	call RLEXorCopy                                       ; $4fdb: $cd $d2 $09

	ld   bc, $50
	ld   de, $9000
	ld   hl, .row1
	call MemCopy

	ld   bc, $50
	ld   de, $9050
	ld   hl, .row2
	call MemCopy

	ld   bc, $60
	ld   de, $90a0
	ld   hl, .row3
	call MemCopy
	
	ld   bc, $60
	ld   de, $9100
	ld   hl, .row4
	call MemCopy

	ld   bc, $80
	ld   de, $9160
	ld   hl, .row5
	call MemCopy

	ld   bc, $80
	ld   de, $91e0
	ld   hl, .row6
	call MemCopy

	ld   bc, $a0
	ld   de, $9260
	ld   hl, .row7
	call MemCopy

	ld   bc, $a0
	ld   de, $9300
	ld   hl, .row8
	call MemCopy

	ld   bc, $20
	ld   de, $93a0
	ld   hl, .row9
	call MemCopy

	ld   bc, $a0
	ld   de, $93c0
	ld   hl, .row10
	call MemCopy

	ld   bc, $a0
	ld   de, $9460
	ld   hl, .row11
	call MemCopy

	ld   bc, $80
	ld   de, $9500
	ld   hl, .row12
	call MemCopy

	ld   bc, $a0
	ld   de, $9580
	ld   hl, .row13
	call MemCopy

	ld   bc, $a0
	ld   de, $9620
	ld   hl, .row14
	call MemCopy

	ld   bc, $a0
	ld   de, $96c0
	ld   hl, .row15
	call MemCopy

; Misc attributes
	ld   a, $01
	ldh  [rVBK], a

	ld   a, BANK(.highScoreAttr)
	ldbc 8, 3
	ld   de, .highScoreAttr
	ld   hl, $98a2
	call FarCopyLayout

	xor  a
	ldh  [rVBK], a
	ret
.row1:
	INCBIN "en_minigameResults.2bpp", 0, $50
.row2:
	INCBIN "en_minigameResults.2bpp", 10*$10, $50
.row3:
	INCBIN "en_minigameResults.2bpp", 20*$10, $60
.row4:
	INCBIN "en_minigameResults.2bpp", 30*$10, $60
.row5:
	INCBIN "en_minigameResults.2bpp", 40*$10, $80
.row6:
	INCBIN "en_minigameResults.2bpp", 50*$10, $80
.row7:
	INCBIN "en_minigameResults.2bpp", 60*$10, $a0
.row8:
	INCBIN "en_minigameResults.2bpp", 70*$10, $a0
.row9:
	INCBIN "en_minigameResults.2bpp", 81*$10, $20
.row10:
	INCBIN "en_minigameResults.2bpp", 90*$10, $a0
.row11:
	INCBIN "en_minigameResults.2bpp", 100*$10, $a0
.row12:
	INCBIN "en_minigameResults.2bpp", 111*$10, $80
.row13:
	INCBIN "en_minigameResults.2bpp", 120*$10, $a0
.row14:
	INCBIN "en_minigameResults.2bpp", 130*$10, $a0
.row15:
	INCBIN "en_minigameResults.2bpp", 140*$10, $a0
.layoutBox:
	db $00, $01, $02, $03, $04, $f6
	db $05, $06, $07, $08, $09, $f6
	db $0a, $0b, $0c, $0d, $0e, $0f
	db $10, $11, $12, $13, $14, $15
.results:
	db $16, $17, $18, $19, $1a, $1b, $1c, $1d, $80
	db $1e, $1f, $20, $21, $22, $23, $24, $25, $80
.highScore:
	db $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
	db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39
	db $80, $3a, $3b, $80, $80, $80, $80, $80, $80, $80
.hiScorePopup:
	db $80, $3a, $3b
.pointsEarned:
	db $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45
	db $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
.ptsEarnedPopup:
	db $3c, $3d, $3e, $3f
.currPtTotal:
	db $80, $50, $51, $52, $53, $54, $55, $56, $57, $80
	db $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61
	db $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b
	db $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75
.highScoreAttr:
	db $01, $01, $01, $01, $01, $01, $01, $01
	db $01, $01, $01, $01, $01, $01, $01, $01
	db $01, $01, $01, $01, $01, $01, $01, $01


EnLoadSakuraMiniGameGfx0::
	ld   bc, $f0
	ld   de, $9620
	ld   hl, .row1
	call MemCopy

	ld   bc, $f0
	ld   de, $9710
	ld   hl, .row2_1
	call MemCopy

	ld   bc, $30
	ld   de, $9270
	ld   hl, .pts1
	call MemCopy

	ld   bc, $30
	ld   de, $93a0
	ld   hl, .pts2
	call MemCopy

	ld   bc, $30
	ld   de, $9470
	ld   hl, .pts3
	call MemCopy

	ld   bc, $30
	ld   de, $9530
	ld   hl, .pts4
	call MemCopy

	ld   bc, $20
	ld   de, $9370
	ld   hl, .logs1
	call MemCopy

	ld   bc, $20
	ld   de, $9440
	ld   hl, .logs2
	call MemCopy

	ld   bc, $20
	ld   de, $9500
	ld   hl, .logs3
	call MemCopy

	ret
.row1:
	INCBIN "en_sakuraMiniGameMain.2bpp", 3*$10, $f0
.row2_1:
	INCBIN "en_sakuraMiniGameMain.2bpp", 22*$10, $f0
.pts1:
	INCBIN "en_sakuraMiniGameMain.2bpp", 240*$10, $30
.pts2:
	INCBIN "en_sakuraMiniGameMain.2bpp", 260*$10, $30
.pts3:
	INCBIN "en_sakuraMiniGameMain.2bpp", 280*$10, $30
.pts4:
	INCBIN "en_sakuraMiniGameMain.2bpp", 300*$10, $30
.logs1:
	INCBIN "en_sakuraMiniGameMain.2bpp", 243*$10, $20
.logs2:
	INCBIN "en_sakuraMiniGameMain.2bpp", 263*$10, $20
.logs3:
	INCBIN "en_sakuraMiniGameMain.2bpp", 283*$10, $20


EnLoadSakuraMiniGameGfx1::
	ld   bc, $10
	ld   de, $8800
	ld   hl, .row2_2
	call MemCopy

	ld   bc, $100
	ld   de, $8810
	ld   hl, .row3
	call MemCopy

	ld   bc, $100
	ld   de, $8910
	ld   hl, .row4
	call MemCopy

	ld   bc, $e0
	ld   de, $8a10
	ld   hl, .row5
	call MemCopy

	ld   bc, $e0
	ld   de, $8af0
	ld   hl, .row6
	call MemCopy

	ld   bc, $e0
	ld   de, $8bd0
	ld   hl, .row7
	call MemCopy

	ld   bc, $20
	ld   de, $8cb0
	ld   hl, .row8
	call MemCopy

	ld   bc, $30
	ld   de, $8cd0
	ld   hl, .row9_1
	call MemCopy

	ld   bc, $60
	ld   de, $8da0
	ld   hl, .row9_2
	call MemCopy

	ld   bc, $10
	ld   de, $8ea0
	ld   hl, .row9_3
	call MemCopy

	ld   bc, $50
	ld   de, $8eb0
	ld   hl, .row10_1
	call MemCopy

	ld   bc, $50
	ld   de, $8fa0
	ld   hl, .row10_2
	call MemCopy

	ld   bc, $a0
	ld   de, $8ff0
	ld   hl, .row11
	call MemCopy

	ld   bc, $a0
	ld   de, $9090
	ld   hl, .row12
	call MemCopy

	ret
.row2_2:
	INCBIN "en_sakuraMiniGameMain.2bpp", 37*$10, $10
.row3:
	INCBIN "en_sakuraMiniGameMain.2bpp", 42*$10, $100
.row4:
	INCBIN "en_sakuraMiniGameMain.2bpp", 62*$10, $100
.row5:
	INCBIN "en_sakuraMiniGameMain.2bpp", 83*$10, $e0
.row6:
	INCBIN "en_sakuraMiniGameMain.2bpp", 103*$10, $e0
.row7:
	INCBIN "en_sakuraMiniGameMain.2bpp", 123*$10, $e0
.row8:
	INCBIN "en_sakuraMiniGameMain.2bpp", 153*$10, $20
.row9_1:
	INCBIN "en_sakuraMiniGameMain.2bpp", 165*$10, $30
.row9_2:
	INCBIN "en_sakuraMiniGameMain.2bpp", 168*$10, $60
.row9_3:
	INCBIN "en_sakuraMiniGameMain.2bpp", 174*$10, $10
.row10_1:
	INCBIN "en_sakuraMiniGameMain.2bpp", 185*$10, $50
.row10_2:
	INCBIN "en_sakuraMiniGameMain.2bpp", 190*$10, $50
.row11:
	INCBIN "en_sakuraMiniGameMain.2bpp", 205*$10, $a0
.row12:
	INCBIN "en_sakuraMiniGameMain.2bpp", 225*$10, $a0


_CinematronTileMapHook::
	call RLEXorCopy

	ld   a, BANK(.layout)
	ldbc 18, 8
	ld   de, .layout
	ld   hl, $d700
	call FarCopyLayout
	ret
.layout:
; Pocket sakura
	db $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $c2, $c3
	db $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $d2, $d3
; Yes/No
	db $65, $65, $65, $65, $65, $65, $11, $12, $65, $65, $65, $65, $13, $14, $65, $65, $65, $65
	db $65, $65, $65, $65, $65, $65, $21, $22, $65, $65, $65, $65, $23, $24, $65, $65, $65, $65
; GBC
	db $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $c0, $c1
	db $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $d0, $d1
; TV adapter
	db $65, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $60, $61, $62, $63, $65
	db $65, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $70, $71, $72, $73, $65


_CinematronTileAttrHook::
	call RLEXorCopy

	ld   a, BANK(.layout)
	ldbc 18, 8
	ld   de, .layout
	ld   hl, $d300
	call FarCopyLayout
	ret
.layout:
; Pocket sakura
	db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f
	db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f
; Yes/No
	db $0f, $0f, $0f, $0f, $0f, $0f, $07, $07, $0f, $0f, $0f, $0f, $07, $07, $0f, $0f, $0f, $0f
	db $0f, $0f, $0f, $0f, $0f, $0f, $07, $07, $0f, $0f, $0f, $0f, $07, $07, $0f, $0f, $0f, $0f
; GBC
	db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f
	db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f
; TV adapter
	db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f
	db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f

endc
