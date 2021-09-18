; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $03f", ROMX[$4000], BANK[$3f]

GameState1f_KannaMiniGameTitleScreen::
	ld   a, [wGameSubstate]                                  ; $4000: $fa $a1 $c2
	rst  JumpTable                                         ; $4003: $df
	dw KannaMiniGameTitleScreenSubstate0
	dw $4017
	dw $42c6
	dw $4301
	dw $4374
	dw $43c2


KannaMiniGameTitleScreenSubstate0:
	xor  a                                   ; $4010: $af
	ld   [$c9eb], a                                  ; $4011: $ea $eb $c9
	ld   [$c9f0], a                                  ; $4014: $ea $f0 $c9
	call TurnOnLCD                                       ; $4017: $cd $09 $09
	ld   a, $07                                      ; $401a: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $401c: $cd $e0 $1c
	ld   a, $00                                      ; $401f: $3e $00
	ld   [$c9ef], a                                  ; $4021: $ea $ef $c9
	ld   a, [$cb1d]                                  ; $4024: $fa $1d $cb
	or   a                                           ; $4027: $b7
	jr   z, jr_03f_4049                              ; $4028: $28 $1f

	ld   hl, $012c                                   ; $402a: $21 $2c $01
	push af                                          ; $402d: $f5
	ld   a, $d7                                      ; $402e: $3e $d7
	ld   [wFarCallAddr], a                                  ; $4030: $ea $98 $c2
	ld   a, $71                                      ; $4033: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $4035: $ea $99 $c2
	ld   a, $0c                                      ; $4038: $3e $0c
	ld   [wFarCallBank], a                                  ; $403a: $ea $9a $c2
	pop  af                                          ; $403d: $f1
	call FarCall                                       ; $403e: $cd $62 $09
	or   a                                           ; $4041: $b7
	jr   z, jr_03f_4049                              ; $4042: $28 $05

	ld   a, $01                                      ; $4044: $3e $01
	ld   [$c9ef], a                                  ; $4046: $ea $ef $c9

jr_03f_4049:
	ld   a, $ff                                      ; $4049: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $404b: $ea $0e $c2
	ld   a, $0c                                      ; $404e: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $4050: $ea $13 $c2
	ld   a, $04                                      ; $4053: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $4055: $ea $14 $c2
	call ClearOam                                       ; $4058: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $405b: $cd $59 $0b
	ld   a, $87                                      ; $405e: $3e $87
	ld   [wLCDC], a                                  ; $4060: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $4063: $fa $93 $c2
	push af                                          ; $4066: $f5
	ld   a, $03                                      ; $4067: $3e $03
	ld   [wWramBank], a                                  ; $4069: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $406c: $e0 $70

;
	ld   a, $1a                                      ; $406e: $3e $1a
	ld   hl, $d000                                   ; $4070: $21 $00 $d0
	ld   de, $518b                                   ; $4073: $11 $8b $51
if def(VWF)
	call KannaMiniGameTitleScreenBank1_8800hHook
else
	call RLEXorCopy                                       ; $4076: $cd $d2 $09
endc

;
	ld   c, $81                                      ; $4079: $0e $81
	ld   de, $8800                                   ; $407b: $11 $00 $88
	ld   a, $03                                      ; $407e: $3e $03
	ld   hl, $d000                                   ; $4080: $21 $00 $d0
	ld   b, $40                                      ; $4083: $06 $40
	call EnqueueHDMATransfer                                       ; $4085: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4088: $cf

;
	ld   c, $81                                      ; $4089: $0e $81
	ld   de, $8c00                                   ; $408b: $11 $00 $8c
	ld   a, $03                                      ; $408e: $3e $03
	ld   hl, $d400                                   ; $4090: $21 $00 $d4
	ld   b, $40                                      ; $4093: $06 $40
if def(VWF)
	call KannaMiniGameTitleScreenBank1_8c00hHook
else
	call EnqueueHDMATransfer                                       ; $4095: $cd $7c $02
endc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4098: $cf

;
	ld   a, $1c                                      ; $4099: $3e $1c
	ld   hl, $d000                                   ; $409b: $21 $00 $d0
	ld   de, $7c89                                   ; $409e: $11 $89 $7c
if def(VWF)
	call KannaMiniGameTitleScreenBank0_8000hHook
else
	call RLEXorCopy                                       ; $40a1: $cd $d2 $09
endc

;
	ld   c, $80                                      ; $40a4: $0e $80
	ld   de, $8000                                   ; $40a6: $11 $00 $80
	ld   a, $03                                      ; $40a9: $3e $03
	ld   hl, $d000                                   ; $40ab: $21 $00 $d0
	ld   b, $40                                      ; $40ae: $06 $40
	call EnqueueHDMATransfer                                       ; $40b0: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40b3: $cf

;
	ld   c, $80                                      ; $40b4: $0e $80
	ld   de, $8400                                   ; $40b6: $11 $00 $84
	ld   a, $03                                      ; $40b9: $3e $03
	ld   hl, $d400                                   ; $40bb: $21 $00 $d4
	ld   b, $40                                      ; $40be: $06 $40
	call EnqueueHDMATransfer                                       ; $40c0: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40c3: $cf

;
	ld   a, $15                                      ; $40c4: $3e $15
	ld   hl, $d000                                   ; $40c6: $21 $00 $d0
	ld   de, $5a54                                   ; $40c9: $11 $54 $5a
	call RLEXorCopy                                       ; $40cc: $cd $d2 $09

;
	ld   c, $80                                      ; $40cf: $0e $80
	ld   de, $8800                                   ; $40d1: $11 $00 $88
	ld   a, $03                                      ; $40d4: $3e $03
	ld   hl, $d000                                   ; $40d6: $21 $00 $d0
	ld   b, $40                                      ; $40d9: $06 $40
	call EnqueueHDMATransfer                                       ; $40db: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40de: $cf

;
	ld   c, $80                                      ; $40df: $0e $80
	ld   de, $8c00                                   ; $40e1: $11 $00 $8c
	ld   a, $03                                      ; $40e4: $3e $03
	ld   hl, $d400                                   ; $40e6: $21 $00 $d4
	ld   b, $60                                      ; $40e9: $06 $60
	call EnqueueHDMATransfer                                       ; $40eb: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40ee: $cf

;
	ld   c, $80                                      ; $40ef: $0e $80
	ld   de, $9200                                   ; $40f1: $11 $00 $92
	ld   a, $03                                      ; $40f4: $3e $03
	ld   hl, $da00                                   ; $40f6: $21 $00 $da
	ld   b, $60                                      ; $40f9: $06 $60
	call EnqueueHDMATransfer                                       ; $40fb: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40fe: $cf

;
	ld   a, BANK(TileAttr_KannaMiniGameTitleScreen)                                      ; $40ff: $3e $1d
	ld   de, TileAttr_KannaMiniGameTitleScreen                                   ; $4101: $11 $48 $4b
	ld   hl, $dc40                                   ; $4104: $21 $40 $dc
	ld   bc, $1412                                   ; $4107: $01 $12 $14
	call FarCopyLayout                                       ; $410a: $cd $2c $0b

	ld   a, BANK(TileMap_KannaMiniGameTitleScreen)                                      ; $410d: $3e $1d
	ld   hl, $da00                                   ; $410f: $21 $00 $da
	call FarCopyLayout                                       ; $4112: $cd $2c $0b

;
	ld   c, $81                                      ; $4115: $0e $81
	ld   de, $9800                                   ; $4117: $11 $00 $98
	ld   a, $03                                      ; $411a: $3e $03
	ld   hl, $dc40                                   ; $411c: $21 $40 $dc
	ld   b, $24                                      ; $411f: $06 $24
	call EnqueueHDMATransfer                                       ; $4121: $cd $7c $02
	ld   c, $80                                      ; $4124: $0e $80
	ld   de, $9800                                   ; $4126: $11 $00 $98
	ld   a, $03                                      ; $4129: $3e $03
	ld   hl, $da00                                   ; $412b: $21 $00 $da
	ld   b, $24                                      ; $412e: $06 $24
	call EnqueueHDMATransfer                                       ; $4130: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4133: $cf
	ld   de, $d500                                   ; $4134: $11 $00 $d5
	ld   hl, $dda0                                   ; $4137: $21 $a0 $dd
	ld   bc, $00c0                                   ; $413a: $01 $c0 $00
	call MemCopy                                       ; $413d: $cd $a9 $09
	ld   de, $d400                                   ; $4140: $11 $00 $d4
	ld   hl, $dda0                                   ; $4143: $21 $a0 $dd
	ld   bc, $00c0                                   ; $4146: $01 $c0 $00
	call MemCopy                                       ; $4149: $cd $a9 $09
	ld   de, $d300                                   ; $414c: $11 $00 $d3
	ld   hl, $dda0                                   ; $414f: $21 $a0 $dd
	ld   bc, $00c0                                   ; $4152: $01 $c0 $00
	call MemCopy                                       ; $4155: $cd $a9 $09
	ld   de, $d700                                   ; $4158: $11 $00 $d7
	ld   hl, $dde0                                   ; $415b: $21 $e0 $dd
	ld   bc, $0060                                   ; $415e: $01 $60 $00
	call MemCopy                                       ; $4161: $cd $a9 $09
	ld   de, $d900                                   ; $4164: $11 $00 $d9
	ld   hl, $dda0                                   ; $4167: $21 $a0 $dd
	ld   bc, $00c0                                   ; $416a: $01 $c0 $00
	call MemCopy                                       ; $416d: $cd $a9 $09
	ld   de, $d200                                   ; $4170: $11 $00 $d2
	ld   hl, $db60                                   ; $4173: $21 $60 $db
	ld   bc, $00c0                                   ; $4176: $01 $c0 $00
	call MemCopy                                       ; $4179: $cd $a9 $09
	ld   de, $d100                                   ; $417c: $11 $00 $d1
	ld   hl, $db60                                   ; $417f: $21 $60 $db
	ld   bc, $00c0                                   ; $4182: $01 $c0 $00
	call MemCopy                                       ; $4185: $cd $a9 $09
	ld   de, $d000                                   ; $4188: $11 $00 $d0
	ld   hl, $db60                                   ; $418b: $21 $60 $db
	ld   bc, $00c0                                   ; $418e: $01 $c0 $00
	call MemCopy                                       ; $4191: $cd $a9 $09
	ld   de, $d600                                   ; $4194: $11 $00 $d6
	ld   hl, $dba0                                   ; $4197: $21 $a0 $db
	ld   bc, $0060                                   ; $419a: $01 $60 $00
	call MemCopy                                       ; $419d: $cd $a9 $09
	ld   de, $d800                                   ; $41a0: $11 $00 $d8
	ld   hl, $db60                                   ; $41a3: $21 $60 $db
	ld   bc, $00c0                                   ; $41a6: $01 $c0 $00
	call MemCopy                                       ; $41a9: $cd $a9 $09

; Practice popup box
	ld   a, BANK(TileAttr_KannaMiniGameTSPracticeBox)                                      ; $41ac: $3e $1e
	ld   de, TileAttr_KannaMiniGameTSPracticeBox                                   ; $41ae: $11 $40 $76
	ld   hl, $d401                                   ; $41b1: $21 $01 $d4
	ld   bc, $0806                                   ; $41b4: $01 $06 $08
	call FarCopyLayout                                       ; $41b7: $cd $2c $0b

	ld   a, BANK(TileMap_KannaMiniGameTSPracticeBox)                                      ; $41ba: $3e $1e
	ld   hl, $d101                                   ; $41bc: $21 $01 $d1
	call FarCopyLayout                                       ; $41bf: $cd $2c $0b

; 1st popup box
	ld   a, BANK(TileAttr_KannaMiniGameTSPopupBox)                                      ; $41c2: $3e $1e
	ld   de, TileAttr_KannaMiniGameTSPopupBox                                   ; $41c4: $11 $ce $7b
	ld   hl, $d341                                   ; $41c7: $21 $41 $d3
	ld   bc, $0804                                   ; $41ca: $01 $04 $08
	call FarCopyLayout                                       ; $41cd: $cd $2c $0b
	
	ld   a, BANK(TileMap_KannaMiniGameTSPopupBox)                                      ; $41d0: $3e $1e
	ld   hl, $d041                                   ; $41d2: $21 $41 $d0
	call FarCopyLayout                                       ; $41d5: $cd $2c $0b

;
	ld   a, $1e                                      ; $41d8: $3e $1e
	ld   de, $7de1                                   ; $41da: $11 $e1 $7d
	ld   hl, $d701                                   ; $41dd: $21 $01 $d7
	ld   bc, $0803                                   ; $41e0: $01 $03 $08
	call FarCopyLayout                                       ; $41e3: $cd $2c $0b
	ld   a, $1e                                      ; $41e6: $3e $1e
	ld   hl, $d601                                   ; $41e8: $21 $01 $d6
	call FarCopyLayout                                       ; $41eb: $cd $2c $0b

; Difficulty popup box
	ld   a, BANK(TileAttr_KannaMiniGameTSDifficultyBox)                                     ; $41ee: $3e $1e
	ld   de, TileAttr_KannaMiniGameTSDifficultyBox                                   ; $41f0: $11 $a0 $76
	ld   hl, $d901                                   ; $41f3: $21 $01 $d9
	ld   bc, $0806                                   ; $41f6: $01 $06 $08
	call FarCopyLayout                                       ; $41f9: $cd $2c $0b

	ld   a, BANK(TileMap_KannaMiniGameTSDifficultyBox)                                      ; $41fc: $3e $1e
	ld   hl, $d801                                   ; $41fe: $21 $01 $d8
	call FarCopyLayout                                       ; $4201: $cd $2c $0b

;
	pop  af                                          ; $4204: $f1
	ld   [wWramBank], a                                  ; $4205: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4208: $e0 $70
	xor  a                                           ; $420a: $af
	ld   [wWX], a                                  ; $420b: $ea $09 $c2
	ld   [wWY], a                                  ; $420e: $ea $0a $c2
	ld   [wSCX], a                                  ; $4211: $ea $07 $c2
	ld   [wSCY], a                                  ; $4214: $ea $08 $c2
	call ClearBaseAnimSpriteSpecDetails                                       ; $4217: $cd $c9 $2e
	ld   a, $01                                      ; $421a: $3e $01
	ld   hl, $0000                                   ; $421c: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $421f: $cd $4b $2f
	ld   [$c9ee], a                                  ; $4222: $ea $ee $c9
	call StartAnimatingAnimatedSpriteSpec                                       ; $4225: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4228: $cd $76 $30
	ld   a, $00                                      ; $422b: $3e $00
	ld   bc, $0000                                   ; $422d: $01 $00 $00
	ld   de, $7180                                   ; $4230: $11 $80 $71
	push af                                          ; $4233: $f5
	ld   a, $03                                      ; $4234: $3e $03
	ld   [wFarCallAddr], a                                  ; $4236: $ea $98 $c2
	ld   a, $41                                      ; $4239: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $423b: $ea $99 $c2
	ld   a, $01                                      ; $423e: $3e $01
	ld   [wFarCallBank], a                                  ; $4240: $ea $9a $c2
	pop  af                                          ; $4243: $f1
	call FarCall                                       ; $4244: $cd $62 $09
	ld   a, $01                                      ; $4247: $3e $01
	ld   hl, $7000                                   ; $4249: $21 $00 $70
	ld   de, wBGPalettes                                   ; $424c: $11 $de $c2
	ld   bc, $0080                                   ; $424f: $01 $80 $00
	call FarMemCopy                                       ; $4252: $cd $b2 $09
	ld   bc, $003f                                   ; $4255: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4258: $cd $aa $04
	xor  a                                           ; $425b: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $425c: $ea $62 $c3
	ld   a, $40                                      ; $425f: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4261: $ea $63 $c3
	ld   a, $03                                      ; $4264: $3e $03
	ld   b, $01                                      ; $4266: $06 $01
	ld   hl, $7000                                   ; $4268: $21 $00 $70
	ld   c, BANK(Palettes_KannaMiniGameTitleScreen)                                      ; $426b: $0e $1e
	ld   de, Palettes_KannaMiniGameTitleScreen                                   ; $426d: $11 $7c $6c
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4270: $cd $48 $07
	ld   a, $09                                      ; $4273: $3e $09
	call PlaySong                                       ; $4275: $cd $92 $1a
	call ClearOam                                       ; $4278: $cd $d7 $0d
	ld   a, [wGameSubstate]                                  ; $427b: $fa $a1 $c2
	cp   $01                                         ; $427e: $fe $01
	jr   z, jr_03f_428f                              ; $4280: $28 $0d

	call Call_03f_4582                               ; $4282: $cd $82 $45
	call DisplayKannaMiniGameTitleScreenSpritesWithPressA                               ; $4285: $cd $90 $44
	ld   a, $02                                      ; $4288: $3e $02
	ld   [wGameSubstate], a                                  ; $428a: $ea $a1 $c2
	jr   jr_03f_429a                                 ; $428d: $18 $0b

jr_03f_428f:
	call DisplayKanna1stPopupBox                               ; $428f: $cd $ab $45
	call DisplayKannaMiniGameTitleScreenSpritesWithoutPressA                               ; $4292: $cd $ab $44
	ld   a, $03                                      ; $4295: $3e $03
	ld   [wGameSubstate], a                                  ; $4297: $ea $a1 $c2

jr_03f_429a:
	call AnimateAllAnimatedSpriteSpecs                                       ; $429a: $cd $d3 $2e
	push af                                          ; $429d: $f5
	ld   a, $43                                      ; $429e: $3e $43
	ld   [wFarCallAddr], a                                  ; $42a0: $ea $98 $c2
	ld   a, $6a                                      ; $42a3: $3e $6a
	ld   [wFarCallAddr+1], a                                  ; $42a5: $ea $99 $c2
	ld   a, $11                                      ; $42a8: $3e $11
	ld   [wFarCallBank], a                                  ; $42aa: $ea $9a $c2
	pop  af                                          ; $42ad: $f1
	call FarCall                                       ; $42ae: $cd $62 $09
	ld   a, BANK(Palettes_KannaMiniGameTitleScreen)                                     ; $42b1: $3e $1e
	ld   hl, Palettes_KannaMiniGameTitleScreen                                   ; $42b3: $21 $7c $6c
	ld   de, wBGPalettes                                   ; $42b6: $11 $de $c2
	ld   bc, $0080                                   ; $42b9: $01 $80 $00
	call FarMemCopy                                       ; $42bc: $cd $b2 $09
	ld   bc, $003f                                   ; $42bf: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $42c2: $cd $aa $04
	ret                                              ; $42c5: $c9


	call ClearOam                                       ; $42c6: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $42c9: $cd $d3 $2e
	call Call_03f_4559                               ; $42cc: $cd $59 $45
	call Call_03f_4647                               ; $42cf: $cd $47 $46
	ld   a, [wInGameButtonsPressed]                                  ; $42d2: $fa $10 $c2
	bit  0, a                                        ; $42d5: $cb $47
	jr   z, jr_03f_42e7                              ; $42d7: $28 $0e

	call DisplayKanna1stPopupBox                               ; $42d9: $cd $ab $45
	ld   hl, wGameSubstate                                   ; $42dc: $21 $a1 $c2
	inc  [hl]                                        ; $42df: $34
	ld   a, $21                                      ; $42e0: $3e $21
	call PlaySoundEffect                                       ; $42e2: $cd $df $1a
	jr   jr_03f_4300                                 ; $42e5: $18 $19

jr_03f_42e7:
	bit  1, a                                        ; $42e7: $cb $4f
	jr   z, jr_03f_4300                              ; $42e9: $28 $15

	ld   a, [$cb1d]                                  ; $42eb: $fa $1d $cb
	or   a                                           ; $42ee: $b7
	jr   z, jr_03f_4300                              ; $42ef: $28 $0f

	ld   a, $03                                      ; $42f1: $3e $03
	ld   [$c9eb], a                                  ; $42f3: $ea $eb $c9
	ld   a, $05                                      ; $42f6: $3e $05
	ld   [wGameSubstate], a                                  ; $42f8: $ea $a1 $c2
	ld   a, $22                                      ; $42fb: $3e $22
	call PlaySoundEffect                                       ; $42fd: $cd $df $1a

jr_03f_4300:
	ret                                              ; $4300: $c9


	ld   hl, $c9eb                                   ; $4301: $21 $eb $c9
	ld   c, $01                                      ; $4304: $0e $01
	ld   a, [$cb1d]                                  ; $4306: $fa $1d $cb
	or   a                                           ; $4309: $b7
	jr   nz, jr_03f_430e                             ; $430a: $20 $02

	ld   c, $02                                      ; $430c: $0e $02

jr_03f_430e:
	ld   a, [wInGameButtonsPressed]                                  ; $430e: $fa $10 $c2
	bit  6, a                                        ; $4311: $cb $77
	jr   z, jr_03f_431c                              ; $4313: $28 $07

	ld   a, [hl]                                     ; $4315: $7e
	or   a                                           ; $4316: $b7
	jr   z, jr_03f_436a                              ; $4317: $28 $51

	dec  [hl]                                        ; $4319: $35
	jr   jr_03f_4325                                 ; $431a: $18 $09

jr_03f_431c:
	bit  7, a                                        ; $431c: $cb $7f
	jr   z, jr_03f_432f                              ; $431e: $28 $0f

	ld   a, [hl]                                     ; $4320: $7e
	cp   c                                           ; $4321: $b9
	jr   z, jr_03f_436a                              ; $4322: $28 $46

	inc  [hl]                                        ; $4324: $34

jr_03f_4325:
	call Call_03f_451c                               ; $4325: $cd $1c $45
	ld   a, $20                                      ; $4328: $3e $20
	call PlaySoundEffect                                       ; $432a: $cd $df $1a
	jr   jr_03f_436a                                 ; $432d: $18 $3b

jr_03f_432f:
	bit  1, a                                        ; $432f: $cb $4f
	jr   z, jr_03f_4347                              ; $4331: $28 $14

	call Call_03f_44f2                               ; $4333: $cd $f2 $44
	call Call_03f_4615                               ; $4336: $cd $15 $46
	call Call_03f_4582                               ; $4339: $cd $82 $45
	ld   hl, wGameSubstate                                   ; $433c: $21 $a1 $c2
	dec  [hl]                                        ; $433f: $35
	ld   a, $22                                      ; $4340: $3e $22
	call PlaySoundEffect                                       ; $4342: $cd $df $1a
	jr   jr_03f_436a                                 ; $4345: $18 $23

jr_03f_4347:
	bit  0, a                                        ; $4347: $cb $47
	jr   z, jr_03f_436a                              ; $4349: $28 $1f

	ld   a, $21                                      ; $434b: $3e $21
	call PlaySoundEffect                                       ; $434d: $cd $df $1a
	ld   a, $05                                      ; $4350: $3e $05
	ld   [wGameSubstate], a                                  ; $4352: $ea $a1 $c2
	ld   a, [$c9eb]                                  ; $4355: $fa $eb $c9
	or   a                                           ; $4358: $b7
	jr   z, jr_03f_436a                              ; $4359: $28 $0f

	ld   a, [$c9ef]                                  ; $435b: $fa $ef $c9
	cp   $00                                         ; $435e: $fe $00
	jr   z, jr_03f_436a                              ; $4360: $28 $08

	call DisplayKannaDifficultyPopupBox                               ; $4362: $cd $f3 $45
	ld   a, $04                                      ; $4365: $3e $04
	ld   [wGameSubstate], a                                  ; $4367: $ea $a1 $c2

jr_03f_436a:
	call ClearOam                                       ; $436a: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $436d: $cd $d3 $2e
	call DisplayKannaMiniGameTitleScreenSpritesWithoutPressA                               ; $4370: $cd $ab $44
	ret                                              ; $4373: $c9


	ld   hl, $c9f0                                   ; $4374: $21 $f0 $c9
	ld   a, [wInGameButtonsPressed]                                  ; $4377: $fa $10 $c2
	bit  6, a                                        ; $437a: $cb $77
	jr   z, jr_03f_4385                              ; $437c: $28 $07

	ld   a, [hl]                                     ; $437e: $7e
	or   a                                           ; $437f: $b7
	jr   z, jr_03f_43b8                              ; $4380: $28 $36

	dec  [hl]                                        ; $4382: $35
	jr   jr_03f_438f                                 ; $4383: $18 $0a

jr_03f_4385:
	bit  7, a                                        ; $4385: $cb $7f
	jr   z, jr_03f_4399                              ; $4387: $28 $10

	ld   a, [hl]                                     ; $4389: $7e
	cp   $01                                         ; $438a: $fe $01
	jr   z, jr_03f_43b8                              ; $438c: $28 $2a

	inc  [hl]                                        ; $438e: $34

jr_03f_438f:
	call Call_03f_4512                               ; $438f: $cd $12 $45
	ld   a, $20                                      ; $4392: $3e $20
	call PlaySoundEffect                                       ; $4394: $cd $df $1a
	jr   jr_03f_43b8                                 ; $4397: $18 $1f

jr_03f_4399:
	bit  1, a                                        ; $4399: $cb $4f
	jr   z, jr_03f_43ab                              ; $439b: $28 $0e

	call DisplayKanna1stPopupBox                               ; $439d: $cd $ab $45
	ld   hl, wGameSubstate                                   ; $43a0: $21 $a1 $c2
	dec  [hl]                                        ; $43a3: $35
	ld   a, $22                                      ; $43a4: $3e $22
	call PlaySoundEffect                                       ; $43a6: $cd $df $1a
	jr   jr_03f_43b8                                 ; $43a9: $18 $0d

jr_03f_43ab:
	bit  0, a                                        ; $43ab: $cb $47
	jr   z, jr_03f_43b8                              ; $43ad: $28 $09

	ld   a, $21                                      ; $43af: $3e $21
	call PlaySoundEffect                                       ; $43b1: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $43b4: $21 $a1 $c2
	inc  [hl]                                        ; $43b7: $34

jr_03f_43b8:
	call ClearOam                                       ; $43b8: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $43bb: $cd $d3 $2e
	call DisplayKannaMiniGameTitleScreenSpritesWithoutPressA                               ; $43be: $cd $ab $44
	ret                                              ; $43c1: $c9


	ld   a, [$c9eb]                                  ; $43c2: $fa $eb $c9
	or   a                                           ; $43c5: $b7
	jr   z, jr_03f_43f9                              ; $43c6: $28 $31

	cp   $03                                         ; $43c8: $fe $03
	jr   z, jr_03f_43f9                              ; $43ca: $28 $2d

	call ClearOam                                       ; $43cc: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $43cf: $cd $d3 $2e
	call DisplayKannaMiniGameTitleScreenSpritesWithoutPressA                               ; $43d2: $cd $ab $44
	ld   a, [$c9ee]                                  ; $43d5: $fa $ee $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $43d8: $cd $76 $30
	push af                                          ; $43db: $f5
	ld   a, $43                                      ; $43dc: $3e $43
	ld   [wFarCallAddr], a                                  ; $43de: $ea $98 $c2
	ld   a, $41                                      ; $43e1: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $43e3: $ea $99 $c2
	ld   a, $01                                      ; $43e6: $3e $01
	ld   [wFarCallBank], a                                  ; $43e8: $ea $9a $c2
	pop  af                                          ; $43eb: $f1
	call FarCall                                       ; $43ec: $cd $62 $09
	ld   a, c                                        ; $43ef: $79
	cp   $4d                                         ; $43f0: $fe $4d
	ret  nz                                          ; $43f2: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43f3: $cf
	ld   a, $67                                      ; $43f4: $3e $67
	call PlaySampledSound                                       ; $43f6: $cd $64 $1b

jr_03f_43f9:
	xor  a                                           ; $43f9: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $43fa: $ea $62 $c3
	ld   a, $40                                      ; $43fd: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $43ff: $ea $63 $c3
	ld   a, $03                                      ; $4402: $3e $03
	ld   b, BANK(Palettes_KannaMiniGameTitleScreen)                                     ; $4404: $06 $1e
	ld   hl, Palettes_KannaMiniGameTitleScreen                                   ; $4406: $21 $7c $6c
	ld   c, $01                                      ; $4409: $0e $01
	ld   de, $7000                                   ; $440b: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $440e: $cd $48 $07
	ld   a, [$c9eb]                                  ; $4411: $fa $eb $c9
	push af                                          ; $4414: $f5
	ld   a, $83                                      ; $4415: $3e $83
	ld   [wFarCallAddr], a                                  ; $4417: $ea $98 $c2
	ld   a, $77                                      ; $441a: $3e $77
	ld   [wFarCallAddr+1], a                                  ; $441c: $ea $99 $c2
	ld   a, $3e                                      ; $441f: $3e $3e
	ld   [wFarCallBank], a                                  ; $4421: $ea $9a $c2
	pop  af                                          ; $4424: $f1
	call FarCall                                       ; $4425: $cd $62 $09
	ld   h, $1f                                      ; $4428: $26 $1f
	ld   l, $01                                      ; $442a: $2e $01
	push af                                          ; $442c: $f5
	ld   a, $6d                                      ; $442d: $3e $6d
	ld   [wFarCallAddr], a                                  ; $442f: $ea $98 $c2
	ld   a, $41                                      ; $4432: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $4434: $ea $99 $c2
	ld   a, $10                                      ; $4437: $3e $10
	ld   [wFarCallBank], a                                  ; $4439: $ea $9a $c2
	pop  af                                          ; $443c: $f1
	call FarCall                                       ; $443d: $cd $62 $09
	ld   a, [$c9eb]                                  ; $4440: $fa $eb $c9
	or   a                                           ; $4443: $b7
	jr   z, jr_03f_448f                              ; $4444: $28 $49

	ld   b, $00                                      ; $4446: $06 $00
	ld   a, [$c9f1]                                  ; $4448: $fa $f1 $c9
	ld   h, a                                        ; $444b: $67
	ld   a, [$c9f2]                                  ; $444c: $fa $f2 $c9
	ld   l, a                                        ; $444f: $6f
	ld   a, [$cb1d]                                  ; $4450: $fa $1d $cb
	or   a                                           ; $4453: $b7
	jr   nz, jr_03f_4463                             ; $4454: $20 $0d

	ld   a, [$c9eb]                                  ; $4456: $fa $eb $c9
	cp   $02                                         ; $4459: $fe $02
	jr   z, jr_03f_4463                              ; $445b: $28 $06

	ld   h, $1f                                      ; $445d: $26 $1f
	ld   l, $01                                      ; $445f: $2e $01
	ld   b, $01                                      ; $4461: $06 $01

jr_03f_4463:
	ld   a, [$c9f0]                                  ; $4463: $fa $f0 $c9
	ld   c, a                                        ; $4466: $4f
	ld   a, b                                        ; $4467: $78
	push af                                          ; $4468: $f5
	ld   a, $f6                                      ; $4469: $3e $f6
	ld   [wFarCallAddr], a                                  ; $446b: $ea $98 $c2
	ld   a, $4b                                      ; $446e: $3e $4b
	ld   [wFarCallAddr+1], a                                  ; $4470: $ea $99 $c2
	ld   a, $11                                      ; $4473: $3e $11
	ld   [wFarCallBank], a                                  ; $4475: $ea $9a $c2
	pop  af                                          ; $4478: $f1
	call FarCall                                       ; $4479: $cd $62 $09
	ld   a, [$c9eb]                                  ; $447c: $fa $eb $c9
	cp   $03                                         ; $447f: $fe $03
	jr   nz, jr_03f_448f                             ; $4481: $20 $0c

	ld   a, [$c9f1]                                  ; $4483: $fa $f1 $c9
	ld   [wGameState], a                                  ; $4486: $ea $a0 $c2
	ld   a, [$c9f2]                                  ; $4489: $fa $f2 $c9
	ld   [wGameSubstate], a                                  ; $448c: $ea $a1 $c2

jr_03f_448f:
	ret                                              ; $448f: $c9


DisplayKannaMiniGameTitleScreenSpritesWithPressA:
	ld   bc, $4040                                   ; $4490: $01 $40 $40
	ld   a, $0a                                      ; $4493: $3e $0a
	ld   [wSpriteGroup], a                                  ; $4495: $ea $1a $c2
	ld   a, $51                                      ; $4498: $3e $51
	call LoadSpriteFromMainTable                                       ; $449a: $cd $16 $0e
	ld   bc, $4040                                   ; $449d: $01 $40 $40
	ld   a, $0a                                      ; $44a0: $3e $0a
	ld   [wSpriteGroup], a                                  ; $44a2: $ea $1a $c2
	ld   a, $53                                      ; $44a5: $3e $53
	call LoadSpriteFromMainTable                                       ; $44a7: $cd $16 $0e
	ret                                              ; $44aa: $c9


DisplayKannaMiniGameTitleScreenSpritesWithoutPressA:
	ld   bc, $4040                                   ; $44ab: $01 $40 $40
	ld   a, $0a                                      ; $44ae: $3e $0a
	ld   [wSpriteGroup], a                                  ; $44b0: $ea $1a $c2
	ld   a, $4c                                      ; $44b3: $3e $4c
	call LoadSpriteFromMainTable                                       ; $44b5: $cd $16 $0e
	ld   bc, $4040                                   ; $44b8: $01 $40 $40
	ld   a, $0a                                      ; $44bb: $3e $0a
	ld   [wSpriteGroup], a                                  ; $44bd: $ea $1a $c2
	ld   a, $52                                      ; $44c0: $3e $52
	call LoadSpriteFromMainTable                                       ; $44c2: $cd $16 $0e
	ld   a, [$c9ee]                                  ; $44c5: $fa $ee $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $44c8: $cd $76 $30
	push af                                          ; $44cb: $f5
	ld   a, $43                                      ; $44cc: $3e $43
	ld   [wFarCallAddr], a                                  ; $44ce: $ea $98 $c2
	ld   a, $41                                      ; $44d1: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $44d3: $ea $99 $c2
	ld   a, $01                                      ; $44d6: $3e $01
	ld   [wFarCallBank], a                                  ; $44d8: $ea $9a $c2
	pop  af                                          ; $44db: $f1
	call FarCall                                       ; $44dc: $cd $62 $09
	ld   a, b                                        ; $44df: $78
	cp   $80                                         ; $44e0: $fe $80
	jr   c, jr_03f_44f1                              ; $44e2: $38 $0d

; todo: when press A disappears, not when popup box appears
	ld   bc, $4040                                   ; $44e4: $01 $40 $40
	ld   a, $0a                                      ; $44e7: $3e $0a
	ld   [wSpriteGroup], a                                  ; $44e9: $ea $1a $c2
	ld   a, $50                                      ; $44ec: $3e $50
	call LoadSpriteFromMainTable                                       ; $44ee: $cd $16 $0e

jr_03f_44f1:
	ret                                              ; $44f1: $c9


Call_03f_44f2:
	ld   a, [$c9ee]                                  ; $44f2: $fa $ee $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $44f5: $cd $76 $30
	ld   a, $00                                      ; $44f8: $3e $00
	ld   de, $7180                                   ; $44fa: $11 $80 $71
	push af                                          ; $44fd: $f5
	ld   a, $1c                                      ; $44fe: $3e $1c
	ld   [wFarCallAddr], a                                  ; $4500: $ea $98 $c2
	ld   a, $41                                      ; $4503: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $4505: $ea $99 $c2
	ld   a, $01                                      ; $4508: $3e $01
	ld   [wFarCallBank], a                                  ; $450a: $ea $9a $c2
	pop  af                                          ; $450d: $f1
	call FarCall                                       ; $450e: $cd $62 $09
	ret                                              ; $4511: $c9


Call_03f_4512:
	ld   hl, $451a                                   ; $4512: $21 $1a $45
	ld   a, [$c9f0]                                  ; $4515: $fa $f0 $c9
	jr   jr_03f_4532                                 ; $4518: $18 $18

	ld   l, b                                        ; $451a: $68
	halt                                             ; $451b: $76

Call_03f_451c:
	ld   hl, $4530                                   ; $451c: $21 $30 $45
	ld   a, [$cb1d]                                  ; $451f: $fa $1d $cb
	or   a                                           ; $4522: $b7
	jr   nz, jr_03f_4528                             ; $4523: $20 $03

	ld   hl, $452d                                   ; $4525: $21 $2d $45

jr_03f_4528:
	ld   a, [$c9eb]                                  ; $4528: $fa $eb $c9
	jr   jr_03f_4532                                 ; $452b: $18 $05

	ld   e, d                                        ; $452d: $5a
	ld   l, b                                        ; $452e: $68
	halt                                             ; $452f: $76
	ld   l, d                                        ; $4530: $6a
	halt                                             ; $4531: $76

jr_03f_4532:
	ld   c, a                                        ; $4532: $4f
	ld   b, $00                                      ; $4533: $06 $00
	add  hl, bc                                      ; $4535: $09
	ld   c, [hl]                                     ; $4536: $4e
	ld   b, $0d                                      ; $4537: $06 $0d
	ld   a, [$c9ee]                                  ; $4539: $fa $ee $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $453c: $cd $76 $30
	ld   a, $68                                      ; $453f: $3e $68
	ld   de, $7180                                   ; $4541: $11 $80 $71
	push af                                          ; $4544: $f5
	ld   a, $03                                      ; $4545: $3e $03
	ld   [wFarCallAddr], a                                  ; $4547: $ea $98 $c2
	ld   a, $41                                      ; $454a: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $454c: $ea $99 $c2
	ld   a, $01                                      ; $454f: $3e $01
	ld   [wFarCallBank], a                                  ; $4551: $ea $9a $c2
	pop  af                                          ; $4554: $f1
	call FarCall                                       ; $4555: $cd $62 $09
	ret                                              ; $4558: $c9


Call_03f_4559:
	ld   hl, $c9ec                                   ; $4559: $21 $ec $c9
	dec  [hl]                                        ; $455c: $35
	jr   nz, jr_03f_4573                             ; $455d: $20 $14

	ld   [hl], $21                                   ; $455f: $36 $21
	ld   hl, $c9ed                                   ; $4561: $21 $ed $c9
	ld   a, [hl]                                     ; $4564: $7e
	xor  $01                                         ; $4565: $ee $01
	ld   [hl], a                                     ; $4567: $77
	or   a                                           ; $4568: $b7
	jr   nz, jr_03f_4570                             ; $4569: $20 $05

	call Call_03f_4615                               ; $456b: $cd $15 $46
	jr   jr_03f_4573                                 ; $456e: $18 $03

jr_03f_4570:
	call Call_03f_458c                               ; $4570: $cd $8c $45

jr_03f_4573:
	ld   a, [$c9ed]                                  ; $4573: $fa $ed $c9
	or   a                                           ; $4576: $b7
	jr   z, jr_03f_457e                              ; $4577: $28 $05

	call DisplayKannaMiniGameTitleScreenSpritesWithoutPressA                               ; $4579: $cd $ab $44
	jr   jr_03f_4581                                 ; $457c: $18 $03

jr_03f_457e:
	call DisplayKannaMiniGameTitleScreenSpritesWithPressA                               ; $457e: $cd $90 $44

jr_03f_4581:
	ret                                              ; $4581: $c9


Call_03f_4582:
	ld   a, $21                                      ; $4582: $3e $21
	ld   [$c9ec], a                                  ; $4584: $ea $ec $c9
	xor  a                                           ; $4587: $af
	ld   [$c9ed], a                                  ; $4588: $ea $ed $c9
	ret                                              ; $458b: $c9


Call_03f_458c:
	ld   c, $80                                      ; $458c: $0e $80
	ld   de, $99a0                                   ; $458e: $11 $a0 $99
	ld   a, $03                                      ; $4591: $3e $03
	ld   hl, $d600                                   ; $4593: $21 $00 $d6
	ld   b, $06                                      ; $4596: $06 $06
	call EnqueueHDMATransfer                                       ; $4598: $cd $7c $02
	ld   c, $81                                      ; $459b: $0e $81
	ld   de, $99a0                                   ; $459d: $11 $a0 $99
	ld   a, $03                                      ; $45a0: $3e $03
	ld   hl, $d700                                   ; $45a2: $21 $00 $d7
	ld   b, $06                                      ; $45a5: $06 $06
	call EnqueueHDMATransfer                                       ; $45a7: $cd $7c $02
	ret                                              ; $45aa: $c9


DisplayKanna1stPopupBox:
	call Call_03f_451c                               ; $45ab: $cd $1c $45
	ld   a, [$cb1d]                                  ; $45ae: $fa $1d $cb
	or   a                                           ; $45b1: $b7
	jr   nz, jr_03f_45d4                             ; $45b2: $20 $20

	ld   c, $80                                      ; $45b4: $0e $80
	ld   de, $9960                                   ; $45b6: $11 $60 $99
	ld   a, $03                                      ; $45b9: $3e $03
	ld   hl, $d100                                   ; $45bb: $21 $00 $d1
	ld   b, $0c                                      ; $45be: $06 $0c
	call EnqueueHDMATransfer                                       ; $45c0: $cd $7c $02
	ld   c, $81                                      ; $45c3: $0e $81
	ld   de, $9960                                   ; $45c5: $11 $60 $99
	ld   a, $03                                      ; $45c8: $3e $03
	ld   hl, $d400                                   ; $45ca: $21 $00 $d4
	ld   b, $0c                                      ; $45cd: $06 $0c
	call EnqueueHDMATransfer                                       ; $45cf: $cd $7c $02
	jr   jr_03f_45f2                                 ; $45d2: $18 $1e

jr_03f_45d4:
	ld   c, $80                                      ; $45d4: $0e $80
	ld   de, $9960                                   ; $45d6: $11 $60 $99
	ld   a, $03                                      ; $45d9: $3e $03
	ld   hl, $d000                                   ; $45db: $21 $00 $d0
	ld   b, $0c                                      ; $45de: $06 $0c
	call EnqueueHDMATransfer                                       ; $45e0: $cd $7c $02
	ld   c, $81                                      ; $45e3: $0e $81
	ld   de, $9960                                   ; $45e5: $11 $60 $99
	ld   a, $03                                      ; $45e8: $3e $03
	ld   hl, $d300                                   ; $45ea: $21 $00 $d3
	ld   b, $0c                                      ; $45ed: $06 $0c
	call EnqueueHDMATransfer                                       ; $45ef: $cd $7c $02

jr_03f_45f2:
	ret                                              ; $45f2: $c9


DisplayKannaDifficultyPopupBox:
	call Call_03f_4512                               ; $45f3: $cd $12 $45
	ld   c, $80                                      ; $45f6: $0e $80
	ld   de, $9960                                   ; $45f8: $11 $60 $99
	ld   a, $03                                      ; $45fb: $3e $03
	ld   hl, $d800                                   ; $45fd: $21 $00 $d8
	ld   b, $0c                                      ; $4600: $06 $0c
	call EnqueueHDMATransfer                                       ; $4602: $cd $7c $02
	ld   c, $81                                      ; $4605: $0e $81
	ld   de, $9960                                   ; $4607: $11 $60 $99
	ld   a, $03                                      ; $460a: $3e $03
	ld   hl, $d900                                   ; $460c: $21 $00 $d9
	ld   b, $0c                                      ; $460f: $06 $0c
	call EnqueueHDMATransfer                                       ; $4611: $cd $7c $02
	ret                                              ; $4614: $c9


Call_03f_4615:
	ld   c, $80                                      ; $4615: $0e $80
	ld   de, $9960                                   ; $4617: $11 $60 $99
	ld   a, $03                                      ; $461a: $3e $03
	ld   hl, $d200                                   ; $461c: $21 $00 $d2
	ld   b, $0c                                      ; $461f: $06 $0c
	call EnqueueHDMATransfer                                       ; $4621: $cd $7c $02
	ld   c, $81                                      ; $4624: $0e $81
	ld   de, $9960                                   ; $4626: $11 $60 $99
	ld   a, $03                                      ; $4629: $3e $03
	ld   hl, $d500                                   ; $462b: $21 $00 $d5
	ld   b, $0c                                      ; $462e: $06 $0c
	call EnqueueHDMATransfer                                       ; $4630: $cd $7c $02
	ret                                              ; $4633: $c9


SetKannaMiniGameTitleScreenState::
	ld   a, h                                        ; $4634: $7c
	ld   [$c9f1], a                                  ; $4635: $ea $f1 $c9
	ld   a, l                                        ; $4638: $7d
	ld   [$c9f2], a                                  ; $4639: $ea $f2 $c9
	ld   a, GS_KANNA_MINI_GAME_TITLE_SCREEN                                      ; $463c: $3e $1f
	ld   [wGameState], a                                  ; $463e: $ea $a0 $c2
	ld   a, $00                                      ; $4641: $3e $00
	ld   [wGameSubstate], a                                  ; $4643: $ea $a1 $c2
	ret                                              ; $4646: $c9


Call_03f_4647:
	ret                                              ; $4647: $c9


SpriteGroup2Pointers::
SpriteGroup5Pointers::
	dw $4804
	dw $4844
	dw $4884
	dw $48c4
	dw $48cc
	dw $493c
	dw $49bc
	dw $4a3c
	dw $4a9c
	dw $4adc
	dw $4ae4
	dw $4ae8
	dw $4aec
	dw $4af0
	dw $4af4
	dw $4af8
	dw $4afc
	dw $4b00
	dw $4b04
	dw $4b08
	dw $4b0c
	dw $4b6c
	dw $4b7c
	dw $4b8c
	dw $4b9c
	dw $4bac
	dw $4bbc
	dw $4bcc
	dw $4bdc
	dw $4bec
	dw $4bfc
	dw $4c0c
	dw $4c1c
	dw SpriteGroup2_Idx21h
	dw SpriteGroup2_Idx22h
	dw $4c7c
	dw $4cbc
	dw $4cfc
	dw $4d3c
	dw SpriteGroup2_Idx27h
	dw SpriteGroup2_Idx28h
	dw SpriteGroup2_Idx29h
	dw SpriteGroup2_Idx2ah
	dw $4e7c
	dw $4efc
	dw $4f04
	dw $4f0c
	dw $4f14
	dw $4f4c
	dw $4f84
	dw $4fbc
	dw $4ff4
	dw $501c
	dw $504c
	dw $508c
	dw $50c4
	dw $510c
	dw $5154
	dw Data_3f_51b4 ; 3a - enter name small cursor
	dw Data_3f_51d4
	dw Data_3f_51f4
	dw Data_3f_51fc
	dw $5204
	dw $520c
	dw $5214
	dw $521c
	dw $5224
	dw $522c
	dw $523c
	dw $524c
	dw $5254
	dw $525c
	dw $5264
	dw $526c
	dw $5274
	dw $527c
	dw $52bc
	dw $52fc
	dw $5334
	dw $536c
	dw $53a4
	dw $53e4
	dw $5424
	dw $5454
	dw $548c
	dw $54c4
	dw $54fc
	dw $5578
	dw $55f8
	dw $5678
	dw $56e0
	dw $575c
	dw $5760
	dw $5768
	dw $5770
	dw $5774
	dw $57e0
	dw $57e4
	dw $57ec
	dw $57f4
	dw $57f8
	dw $5858
	dw $58d8
	dw $5954
	dw $59cc
	dw $5a2c
	dw $5a34
	dw $5a3c
	dw $5a44
	dw $5a4c
	dw $5a50
	dw $5aa8
	dw $5ab0
	dw $5ab8
	dw $5ac0
	dw $5ac8
	dw $5acc
	dw $5b34
	dw $5b94
	dw $5c08
	dw $5c74
	dw $5cf4
	dw $5d00
	dw $5d70
	dw $5d80
	dw $5d90
	dw $5da0
	dw $5db0
	dw $5dc0
	dw $5dd0
	dw $5de0
	dw $5df0
	dw $5e00
	dw $5e10
	dw $5e20
	dw $5e30
	dw $5e40
	dw $5e50
	dw $5e5c
	dw $5e68
	dw $5e78
	dw $5e88
	dw $5e98
	dw $5ea8
	dw $5eb8
	dw $5ec8
	dw $5ed4
	dw $5ed8
	dw $5ee8
	dw $5ef8
	dw $5f08
	dw $5f18
	dw $5f28
	dw $5f38
	dw $5f48
	dw $5f54
	dw $5f58
	dw $5f60
	dw $5f6c
	dw $5f7c
	dw $5f8c
	dw $5f9c
	dw $5fa8
	dw $5fb0
	dw $5fc0
	dw $5fd0
	dw $5fe0
	dw $5ff0
	dw $6000
	dw $6010
	dw $6018
	dw $6028
	dw $6038
	dw $6048
	dw $6058
	dw $6068
	dw $6070
	dw $6080
	dw $6090
	dw $60a0
	dw $60b0
	dw $60c0
	dw $60d0
	dw $60e0
	dw $60f0
	dw $6100
	dw $6110
	dw $6120
	dw $6130
	dw $6134
	dw $6140
	dw $6150
	dw $6160
	dw $6170
	dw $6180
	dw $6190
	dw $61a0
	dw $61a8
	dw $61b0
	dw $61c0
	dw $61d0
	dw $61e0
	dw $61f0
	dw $6200
	dw $6210
	dw $6220
	dw $6230
	dw $6238
	dw $6240
	dw $6284
	dw $62cc
	dw $6314
	dw $6354
	dw $6388
	dw $63bc
	dw $6408
	dw $6440
	dw $6488
	dw $648c
	dw $6490
	dw $6494
	dw $64cc



	db $28                                    ; $4804: $28
	jr   nz, @+$35                                   ; $4805: $20 $33

	nop                                              ; $4807: $00
	jr   z, @+$1a                                    ; $4808: $28 $18

	ld   [hl-], a                                    ; $480a: $32
	nop                                              ; $480b: $00
	jr   z, jr_03f_481e                              ; $480c: $28 $10

	ld   sp, $2800                                   ; $480e: $31 $00 $28
	ld   [$0030], sp                                 ; $4811: $08 $30 $00
	jr   nz, @+$22                                   ; $4814: $20 $20

	inc  hl                                          ; $4816: $23
	nop                                              ; $4817: $00
	jr   nz, @+$1a                                   ; $4818: $20 $18

	ld   [hl+], a                                    ; $481a: $22
	nop                                              ; $481b: $00
	jr   nz, jr_03f_482e                             ; $481c: $20 $10

jr_03f_481e:
	ld   hl, $2000                                   ; $481e: $21 $00 $20

jr_03f_4821:
	ld   [$0020], sp                                 ; $4821: $08 $20 $00
	jr   jr_03f_4846                                 ; $4824: $18 $20

	inc  de                                          ; $4826: $13
	nop                                              ; $4827: $00
	jr   @+$1a                                       ; $4828: $18 $18

	ld   [de], a                                     ; $482a: $12
	nop                                              ; $482b: $00
	jr   jr_03f_483e                                 ; $482c: $18 $10

jr_03f_482e:
	ld   de, $1800                                   ; $482e: $11 $00 $18
	ld   [$0010], sp                                 ; $4831: $08 $10 $00
	db   $10                                         ; $4834: $10
	jr   nz, @+$05                                   ; $4835: $20 $03

	nop                                              ; $4837: $00
	db   $10                                         ; $4838: $10
	jr   jr_03f_483d                                 ; $4839: $18 $02

	nop                                              ; $483b: $00
	db   $10                                         ; $483c: $10

jr_03f_483d:
	db   $10                                         ; $483d: $10

jr_03f_483e:
	ld   bc, $1000                                   ; $483e: $01 $00 $10
	ld   [$1000], sp                                 ; $4841: $08 $00 $10
	jr   z, jr_03f_4866                              ; $4844: $28 $20

jr_03f_4846:
	scf                                              ; $4846: $37
	ld   bc, $1828                                   ; $4847: $01 $28 $18

jr_03f_484a:
	ld   [hl], $01                                   ; $484a: $36 $01
	jr   z, jr_03f_485e                              ; $484c: $28 $10

	dec  [hl]                                        ; $484e: $35
	ld   bc, $0828                                   ; $484f: $01 $28 $08
	inc  [hl]                                        ; $4852: $34
	ld   bc, $2020                                   ; $4853: $01 $20 $20
	daa                                              ; $4856: $27
	ld   bc, $1820                                   ; $4857: $01 $20 $18
	ld   h, $01                                      ; $485a: $26 $01
	jr   nz, jr_03f_486e                             ; $485c: $20 $10

jr_03f_485e:
	dec  h                                           ; $485e: $25
	ld   bc, $0820                                   ; $485f: $01 $20 $08
	inc  h                                           ; $4862: $24
	ld   bc, $2018                                   ; $4863: $01 $18 $20

jr_03f_4866:
	rla                                              ; $4866: $17
	ld   bc, $1818                                   ; $4867: $01 $18 $18
	ld   d, $01                                      ; $486a: $16 $01
	jr   jr_03f_487e                                 ; $486c: $18 $10

jr_03f_486e:
	dec  d                                           ; $486e: $15
	ld   bc, $0818                                   ; $486f: $01 $18 $08
	inc  d                                           ; $4872: $14
	ld   bc, $2010                                   ; $4873: $01 $10 $20
	rlca                                             ; $4876: $07
	ld   bc, $1810                                   ; $4877: $01 $10 $18
	ld   b, $01                                      ; $487a: $06 $01
	db   $10                                         ; $487c: $10
	db   $10                                         ; $487d: $10

jr_03f_487e:
	dec  b                                           ; $487e: $05
	ld   bc, $0810                                   ; $487f: $01 $10 $08
	inc  b                                           ; $4882: $04
	ld   de, $2028                                   ; $4883: $11 $28 $20
	dec  sp                                          ; $4886: $3b
	dec  b                                           ; $4887: $05
	jr   z, jr_03f_48a2                              ; $4888: $28 $18

	ld   a, [hl-]                                    ; $488a: $3a
	dec  b                                           ; $488b: $05
	jr   z, jr_03f_489e                              ; $488c: $28 $10

	add  hl, sp                                      ; $488e: $39
	dec  b                                           ; $488f: $05
	jr   z, jr_03f_489a                              ; $4890: $28 $08

	jr   c, @+$07                                    ; $4892: $38 $05

	jr   nz, @+$22                                   ; $4894: $20 $20

	dec  hl                                          ; $4896: $2b
	dec  b                                           ; $4897: $05
	jr   nz, jr_03f_48b2                             ; $4898: $20 $18

jr_03f_489a:
	ld   a, [hl+]                                    ; $489a: $2a
	dec  b                                           ; $489b: $05
	jr   nz, jr_03f_48ae                             ; $489c: $20 $10

jr_03f_489e:
	add  hl, hl                                      ; $489e: $29
	dec  b                                           ; $489f: $05
	jr   nz, jr_03f_48aa                             ; $48a0: $20 $08

jr_03f_48a2:
	jr   z, @+$07                                    ; $48a2: $28 $05

	jr   jr_03f_48c6                                 ; $48a4: $18 $20

	dec  de                                          ; $48a6: $1b
	dec  b                                           ; $48a7: $05
	jr   @+$1a                                       ; $48a8: $18 $18

jr_03f_48aa:
	ld   a, [de]                                     ; $48aa: $1a
	dec  b                                           ; $48ab: $05
	jr   jr_03f_48be                                 ; $48ac: $18 $10

jr_03f_48ae:
	add  hl, de                                      ; $48ae: $19
	dec  b                                           ; $48af: $05
	jr   @+$0a                                       ; $48b0: $18 $08

jr_03f_48b2:
	jr   jr_03f_48b9                                 ; $48b2: $18 $05

	db   $10                                         ; $48b4: $10
	jr   nz, @+$0d                                   ; $48b5: $20 $0b

	dec  b                                           ; $48b7: $05
	db   $10                                         ; $48b8: $10

jr_03f_48b9:
	jr   @+$0c                                       ; $48b9: $18 $0a

	dec  b                                           ; $48bb: $05
	db   $10                                         ; $48bc: $10
	db   $10                                         ; $48bd: $10

jr_03f_48be:
	add  hl, bc                                      ; $48be: $09
	dec  b                                           ; $48bf: $05
	db   $10                                         ; $48c0: $10
	ld   [$1508], sp                                 ; $48c1: $08 $08 $15
	jr   jr_03f_48ce                                 ; $48c4: $18 $08

jr_03f_48c6:
	inc  e                                           ; $48c6: $1c
	inc  bc                                          ; $48c7: $03
	db   $10                                         ; $48c8: $10
	ld   [$130c], sp                                 ; $48c9: $08 $0c $13
	jr   z, jr_03f_48ea                              ; $48cc: $28 $1c

jr_03f_48ce:
	halt                                             ; $48ce: $76
	inc  b                                           ; $48cf: $04
	jr   z, jr_03f_48e6                              ; $48d0: $28 $14

jr_03f_48d2:
	ld   [hl], l                                     ; $48d2: $75
	inc  b                                           ; $48d3: $04
	jr   z, jr_03f_48e2                              ; $48d4: $28 $0c

jr_03f_48d6:
	ld   [hl], h                                     ; $48d6: $74
	inc  b                                           ; $48d7: $04
	jr   z, jr_03f_48de                              ; $48d8: $28 $04

jr_03f_48da:
	ld   [hl], e                                     ; $48da: $73
	inc  b                                           ; $48db: $04
	jr   z, jr_03f_48da                              ; $48dc: $28 $fc

jr_03f_48de:
	ld   [hl], d                                     ; $48de: $72
	inc  b                                           ; $48df: $04
	jr   z, jr_03f_48d6                              ; $48e0: $28 $f4

jr_03f_48e2:
	ld   [hl], c                                     ; $48e2: $71
	inc  b                                           ; $48e3: $04
	jr   z, jr_03f_48d2                              ; $48e4: $28 $ec

jr_03f_48e6:
	ld   [hl], b                                     ; $48e6: $70
	inc  b                                           ; $48e7: $04
	jr   nz, jr_03f_4906                             ; $48e8: $20 $1c

jr_03f_48ea:
	ld   h, [hl]                                     ; $48ea: $66
	inc  b                                           ; $48eb: $04
	jr   nz, jr_03f_4902                             ; $48ec: $20 $14

jr_03f_48ee:
	ld   h, l                                        ; $48ee: $65
	inc  b                                           ; $48ef: $04
	jr   nz, jr_03f_48fe                             ; $48f0: $20 $0c

jr_03f_48f2:
	ld   h, h                                        ; $48f2: $64
	inc  b                                           ; $48f3: $04
	jr   nz, jr_03f_48fa                             ; $48f4: $20 $04

jr_03f_48f6:
	ld   h, e                                        ; $48f6: $63
	inc  b                                           ; $48f7: $04
	jr   nz, jr_03f_48f6                             ; $48f8: $20 $fc

jr_03f_48fa:
	ld   h, d                                        ; $48fa: $62
	inc  b                                           ; $48fb: $04
	jr   nz, jr_03f_48f2                             ; $48fc: $20 $f4

jr_03f_48fe:
	ld   h, c                                        ; $48fe: $61
	inc  b                                           ; $48ff: $04
	jr   nz, jr_03f_48ee                             ; $4900: $20 $ec

jr_03f_4902:
	ld   h, b                                        ; $4902: $60
	inc  b                                           ; $4903: $04
	jr   jr_03f_4922                                 ; $4904: $18 $1c

jr_03f_4906:
	ld   d, [hl]                                     ; $4906: $56
	inc  b                                           ; $4907: $04
	jr   jr_03f_491e                                 ; $4908: $18 $14

jr_03f_490a:
	ld   d, l                                        ; $490a: $55
	inc  b                                           ; $490b: $04
	jr   jr_03f_491a                                 ; $490c: $18 $0c

jr_03f_490e:
	ld   d, h                                        ; $490e: $54
	inc  b                                           ; $490f: $04
	jr   jr_03f_4916                                 ; $4910: $18 $04

jr_03f_4912:
	ld   d, e                                        ; $4912: $53
	inc  b                                           ; $4913: $04
	jr   jr_03f_4912                                 ; $4914: $18 $fc

jr_03f_4916:
	ld   d, d                                        ; $4916: $52
	inc  b                                           ; $4917: $04
	jr   jr_03f_490e                                 ; $4918: $18 $f4

jr_03f_491a:
	ld   d, c                                        ; $491a: $51
	inc  b                                           ; $491b: $04
	jr   jr_03f_490a                                 ; $491c: $18 $ec

jr_03f_491e:
	ld   d, b                                        ; $491e: $50
	inc  b                                           ; $491f: $04
	db   $10                                         ; $4920: $10
	inc  e                                           ; $4921: $1c

jr_03f_4922:
	ld   b, [hl]                                     ; $4922: $46
	inc  b                                           ; $4923: $04
	db   $10                                         ; $4924: $10
	inc  d                                           ; $4925: $14
	ld   b, l                                        ; $4926: $45
	inc  b                                           ; $4927: $04
	db   $10                                         ; $4928: $10
	inc  c                                           ; $4929: $0c
	ld   b, h                                        ; $492a: $44
	inc  b                                           ; $492b: $04
	db   $10                                         ; $492c: $10
	inc  b                                           ; $492d: $04
	ld   b, e                                        ; $492e: $43
	inc  b                                           ; $492f: $04
	db   $10                                         ; $4930: $10
	db   $fc                                         ; $4931: $fc
	ld   b, d                                        ; $4932: $42
	inc  b                                           ; $4933: $04
	db   $10                                         ; $4934: $10
	db   $f4                                         ; $4935: $f4
	ld   b, c                                        ; $4936: $41
	inc  b                                           ; $4937: $04
	db   $10                                         ; $4938: $10
	db   $ec                                         ; $4939: $ec
	ld   b, b                                        ; $493a: $40
	inc  d                                           ; $493b: $14
	jr   z, jr_03f_495e                              ; $493c: $28 $20

	ld   a, a                                        ; $493e: $7f
	dec  b                                           ; $493f: $05
	jr   z, jr_03f_495a                              ; $4940: $28 $18

jr_03f_4942:
	ld   a, [hl]                                     ; $4942: $7e
	dec  b                                           ; $4943: $05
	jr   z, jr_03f_4956                              ; $4944: $28 $10

jr_03f_4946:
	ld   a, l                                        ; $4946: $7d
	dec  b                                           ; $4947: $05
	jr   z, jr_03f_4952                              ; $4948: $28 $08

jr_03f_494a:
	ld   a, h                                        ; $494a: $7c
	dec  b                                           ; $494b: $05
	jr   z, jr_03f_494e                              ; $494c: $28 $00

jr_03f_494e:
	ld   a, e                                        ; $494e: $7b
	dec  b                                           ; $494f: $05
	jr   z, jr_03f_494a                              ; $4950: $28 $f8

jr_03f_4952:
	ld   a, d                                        ; $4952: $7a
	dec  b                                           ; $4953: $05
	jr   z, jr_03f_4946                              ; $4954: $28 $f0

jr_03f_4956:
	ld   a, c                                        ; $4956: $79
	dec  b                                           ; $4957: $05
	jr   z, jr_03f_4942                              ; $4958: $28 $e8

jr_03f_495a:
	ld   a, b                                        ; $495a: $78
	dec  b                                           ; $495b: $05
	jr   nz, jr_03f_497e                             ; $495c: $20 $20

jr_03f_495e:
	ld   l, a                                        ; $495e: $6f
	dec  b                                           ; $495f: $05
	jr   nz, jr_03f_497a                             ; $4960: $20 $18

jr_03f_4962:
	ld   l, [hl]                                     ; $4962: $6e
	dec  b                                           ; $4963: $05
	jr   nz, jr_03f_4976                             ; $4964: $20 $10

jr_03f_4966:
	ld   l, l                                        ; $4966: $6d
	dec  b                                           ; $4967: $05
	jr   nz, jr_03f_4972                             ; $4968: $20 $08

jr_03f_496a:
	ld   l, h                                        ; $496a: $6c
	dec  b                                           ; $496b: $05
	jr   nz, jr_03f_496e                             ; $496c: $20 $00

jr_03f_496e:
	ld   l, e                                        ; $496e: $6b
	dec  b                                           ; $496f: $05
	jr   nz, jr_03f_496a                             ; $4970: $20 $f8

jr_03f_4972:
	ld   l, d                                        ; $4972: $6a
	dec  b                                           ; $4973: $05
	jr   nz, jr_03f_4966                             ; $4974: $20 $f0

jr_03f_4976:
	ld   l, c                                        ; $4976: $69
	dec  b                                           ; $4977: $05
	jr   nz, jr_03f_4962                             ; $4978: $20 $e8

jr_03f_497a:
	ld   l, b                                        ; $497a: $68
	dec  b                                           ; $497b: $05
	jr   @+$22                                       ; $497c: $18 $20

jr_03f_497e:
	ld   e, a                                        ; $497e: $5f
	dec  b                                           ; $497f: $05
	jr   jr_03f_499a                                 ; $4980: $18 $18

jr_03f_4982:
	ld   e, [hl]                                     ; $4982: $5e
	dec  b                                           ; $4983: $05
	jr   jr_03f_4996                                 ; $4984: $18 $10

jr_03f_4986:
	ld   e, l                                        ; $4986: $5d
	dec  b                                           ; $4987: $05
	jr   jr_03f_4992                                 ; $4988: $18 $08

jr_03f_498a:
	ld   e, h                                        ; $498a: $5c
	dec  b                                           ; $498b: $05
	jr   jr_03f_498e                                 ; $498c: $18 $00

jr_03f_498e:
	ld   e, e                                        ; $498e: $5b
	dec  b                                           ; $498f: $05
	jr   jr_03f_498a                                 ; $4990: $18 $f8

jr_03f_4992:
	ld   e, d                                        ; $4992: $5a
	dec  b                                           ; $4993: $05
	jr   jr_03f_4986                                 ; $4994: $18 $f0

jr_03f_4996:
	ld   e, c                                        ; $4996: $59
	dec  b                                           ; $4997: $05
	jr   jr_03f_4982                                 ; $4998: $18 $e8

jr_03f_499a:
	ld   e, b                                        ; $499a: $58
	dec  b                                           ; $499b: $05
	db   $10                                         ; $499c: $10
	jr   nz, jr_03f_49ee                             ; $499d: $20 $4f

	dec  b                                           ; $499f: $05
	db   $10                                         ; $49a0: $10
	jr   jr_03f_49f1                                 ; $49a1: $18 $4e

	dec  b                                           ; $49a3: $05
	db   $10                                         ; $49a4: $10
	db   $10                                         ; $49a5: $10
	ld   c, l                                        ; $49a6: $4d
	dec  b                                           ; $49a7: $05
	db   $10                                         ; $49a8: $10
	ld   [$054c], sp                                 ; $49a9: $08 $4c $05
	stop                                             ; $49ac: $10 $00
	ld   c, e                                        ; $49ae: $4b
	dec  b                                           ; $49af: $05
	db   $10                                         ; $49b0: $10
	ld   hl, sp+$4a                                  ; $49b1: $f8 $4a
	dec  b                                           ; $49b3: $05
	db   $10                                         ; $49b4: $10
	ldh  a, [rOBP1]                                  ; $49b5: $f0 $49
	dec  b                                           ; $49b7: $05
	db   $10                                         ; $49b8: $10
	add  sp, $48                                     ; $49b9: $e8 $48
	dec  d                                           ; $49bb: $15
	jr   z, @+$22                                    ; $49bc: $28 $20

	scf                                              ; $49be: $37
	ld   c, $28                                      ; $49bf: $0e $28
	jr   jr_03f_49f9                                 ; $49c1: $18 $36

	ld   c, $28                                      ; $49c3: $0e $28
	db   $10                                         ; $49c5: $10
	dec  [hl]                                        ; $49c6: $35
	ld   c, $28                                      ; $49c7: $0e $28
	ld   [$0e34], sp                                 ; $49c9: $08 $34 $0e
	jr   z, jr_03f_49ce                              ; $49cc: $28 $00

jr_03f_49ce:
	inc  sp                                          ; $49ce: $33
	ld   c, $28                                      ; $49cf: $0e $28
	ld   hl, sp+$32                                  ; $49d1: $f8 $32
	ld   c, $28                                      ; $49d3: $0e $28
	ldh  a, [$31]                                    ; $49d5: $f0 $31
	ld   c, $28                                      ; $49d7: $0e $28
	add  sp, $30                                     ; $49d9: $e8 $30
	ld   c, $20                                      ; $49db: $0e $20
	jr   nz, jr_03f_4a06                             ; $49dd: $20 $27

	ld   c, $20                                      ; $49df: $0e $20
	jr   jr_03f_4a09                                 ; $49e1: $18 $26

	ld   c, $20                                      ; $49e3: $0e $20
	db   $10                                         ; $49e5: $10
	dec  h                                           ; $49e6: $25
	ld   c, $20                                      ; $49e7: $0e $20
	ld   [$0e24], sp                                 ; $49e9: $08 $24 $0e
	jr   nz, jr_03f_49ee                             ; $49ec: $20 $00

jr_03f_49ee:
	inc  hl                                          ; $49ee: $23
	ld   c, $20                                      ; $49ef: $0e $20

jr_03f_49f1:
	ld   hl, sp+$22                                  ; $49f1: $f8 $22
	ld   c, $20                                      ; $49f3: $0e $20
	ldh  a, [rAUD4ENV]                               ; $49f5: $f0 $21
	ld   c, $20                                      ; $49f7: $0e $20

jr_03f_49f9:
	add  sp, $20                                     ; $49f9: $e8 $20
	ld   c, $18                                      ; $49fb: $0e $18
	jr   nz, @+$19                                   ; $49fd: $20 $17

	ld   c, $18                                      ; $49ff: $0e $18
	jr   jr_03f_4a19                                 ; $4a01: $18 $16

	ld   c, $18                                      ; $4a03: $0e $18
	db   $10                                         ; $4a05: $10

jr_03f_4a06:
	dec  d                                           ; $4a06: $15
	ld   c, $18                                      ; $4a07: $0e $18

jr_03f_4a09:
	ld   [$0e14], sp                                 ; $4a09: $08 $14 $0e
	jr   jr_03f_4a0e                                 ; $4a0c: $18 $00

jr_03f_4a0e:
	inc  de                                          ; $4a0e: $13
	ld   c, $18                                      ; $4a0f: $0e $18
	ld   hl, sp+$12                                  ; $4a11: $f8 $12
	ld   c, $18                                      ; $4a13: $0e $18
	ldh  a, [rAUD1LEN]                               ; $4a15: $f0 $11
	ld   c, $18                                      ; $4a17: $0e $18

jr_03f_4a19:
	add  sp, $10                                     ; $4a19: $e8 $10
	ld   c, $10                                      ; $4a1b: $0e $10
	jr   nz, jr_03f_4a26                             ; $4a1d: $20 $07

	ld   c, $10                                      ; $4a1f: $0e $10
	jr   jr_03f_4a29                                 ; $4a21: $18 $06

	ld   c, $10                                      ; $4a23: $0e $10
	db   $10                                         ; $4a25: $10

jr_03f_4a26:
	dec  b                                           ; $4a26: $05
	ld   c, $10                                      ; $4a27: $0e $10

jr_03f_4a29:
	ld   [$0e04], sp                                 ; $4a29: $08 $04 $0e
	stop                                             ; $4a2c: $10 $00
	inc  bc                                          ; $4a2e: $03
	ld   c, $10                                      ; $4a2f: $0e $10
	ld   hl, sp+$02                                  ; $4a31: $f8 $02
	ld   c, $10                                      ; $4a33: $0e $10
	ldh  a, [rSB]                                    ; $4a35: $f0 $01
	ld   c, $10                                      ; $4a37: $0e $10
	add  sp, $00                                     ; $4a39: $e8 $00
	ld   e, $28                                      ; $4a3b: $1e $28
	jr   nz, jr_03f_4a7e                             ; $4a3d: $20 $3f

	ld   a, [bc]                                     ; $4a3f: $0a
	jr   z, jr_03f_4a5a                              ; $4a40: $28 $18

	ld   a, $0a                                      ; $4a42: $3e $0a
	jr   z, jr_03f_4a56                              ; $4a44: $28 $10

	dec  a                                           ; $4a46: $3d
	ld   a, [bc]                                     ; $4a47: $0a
	jr   z, jr_03f_4a52                              ; $4a48: $28 $08

jr_03f_4a4a:
	inc  a                                           ; $4a4a: $3c
	ld   a, [bc]                                     ; $4a4b: $0a
	jr   z, jr_03f_4a4e                              ; $4a4c: $28 $00

jr_03f_4a4e:
	dec  sp                                          ; $4a4e: $3b
	ld   a, [bc]                                     ; $4a4f: $0a
	jr   z, jr_03f_4a4a                              ; $4a50: $28 $f8

jr_03f_4a52:
	ld   a, [hl-]                                    ; $4a52: $3a
	ld   a, [bc]                                     ; $4a53: $0a
	jr   nz, jr_03f_4a76                             ; $4a54: $20 $20

jr_03f_4a56:
	cpl                                              ; $4a56: $2f
	ld   a, [bc]                                     ; $4a57: $0a
	jr   nz, jr_03f_4a72                             ; $4a58: $20 $18

jr_03f_4a5a:
	ld   l, $0a                                      ; $4a5a: $2e $0a
	jr   nz, jr_03f_4a6e                             ; $4a5c: $20 $10

	dec  l                                           ; $4a5e: $2d
	ld   a, [bc]                                     ; $4a5f: $0a
	jr   nz, jr_03f_4a6a                             ; $4a60: $20 $08

jr_03f_4a62:
	inc  l                                           ; $4a62: $2c
	ld   a, [bc]                                     ; $4a63: $0a
	jr   nz, jr_03f_4a66                             ; $4a64: $20 $00

jr_03f_4a66:
	dec  hl                                          ; $4a66: $2b
	ld   a, [bc]                                     ; $4a67: $0a
	jr   nz, jr_03f_4a62                             ; $4a68: $20 $f8

jr_03f_4a6a:
	ld   a, [hl+]                                    ; $4a6a: $2a
	ld   a, [bc]                                     ; $4a6b: $0a
	jr   jr_03f_4a7e                                 ; $4a6c: $18 $10

jr_03f_4a6e:
	dec  e                                           ; $4a6e: $1d
	ld   a, [bc]                                     ; $4a6f: $0a
	jr   jr_03f_4a7a                                 ; $4a70: $18 $08

jr_03f_4a72:
	inc  e                                           ; $4a72: $1c
	ld   a, [bc]                                     ; $4a73: $0a
	jr   jr_03f_4a76                                 ; $4a74: $18 $00

jr_03f_4a76:
	dec  de                                          ; $4a76: $1b
	ld   a, [bc]                                     ; $4a77: $0a
	jr   jr_03f_4a72                                 ; $4a78: $18 $f8

jr_03f_4a7a:
	ld   a, [de]                                     ; $4a7a: $1a
	ld   a, [bc]                                     ; $4a7b: $0a
	jr   jr_03f_4a6e                                 ; $4a7c: $18 $f0

jr_03f_4a7e:
	add  hl, de                                      ; $4a7e: $19
	ld   a, [bc]                                     ; $4a7f: $0a
	jr   jr_03f_4a6a                                 ; $4a80: $18 $e8

	jr   jr_03f_4a8e                                 ; $4a82: $18 $0a

	db   $10                                         ; $4a84: $10
	db   $10                                         ; $4a85: $10
	dec  c                                           ; $4a86: $0d
	ld   a, [bc]                                     ; $4a87: $0a
	db   $10                                         ; $4a88: $10
	ld   [$0a0c], sp                                 ; $4a89: $08 $0c $0a
	stop                                             ; $4a8c: $10 $00

jr_03f_4a8e:
	dec  bc                                          ; $4a8e: $0b
	ld   a, [bc]                                     ; $4a8f: $0a
	db   $10                                         ; $4a90: $10
	ld   hl, sp+$0a                                  ; $4a91: $f8 $0a
	ld   a, [bc]                                     ; $4a93: $0a
	db   $10                                         ; $4a94: $10
	ldh  a, [$09]                                    ; $4a95: $f0 $09
	ld   a, [bc]                                     ; $4a97: $0a
	db   $10                                         ; $4a98: $10
	add  sp, $08                                     ; $4a99: $e8 $08
	ld   a, [de]                                     ; $4a9b: $1a
	jr   z, jr_03f_4abe                              ; $4a9c: $28 $20

	dec  sp                                          ; $4a9e: $3b
	nop                                              ; $4a9f: $00
	jr   z, jr_03f_4aba                              ; $4aa0: $28 $18

	ld   a, [hl-]                                    ; $4aa2: $3a
	nop                                              ; $4aa3: $00
	jr   z, jr_03f_4ab6                              ; $4aa4: $28 $10

	add  hl, sp                                      ; $4aa6: $39
	nop                                              ; $4aa7: $00
	jr   z, jr_03f_4ab2                              ; $4aa8: $28 $08

	jr   c, jr_03f_4aac                              ; $4aaa: $38 $00

jr_03f_4aac:
	jr   nz, @+$22                                   ; $4aac: $20 $20

	dec  hl                                          ; $4aae: $2b
	nop                                              ; $4aaf: $00
	jr   nz, jr_03f_4aca                             ; $4ab0: $20 $18

jr_03f_4ab2:
	ld   a, [hl+]                                    ; $4ab2: $2a
	nop                                              ; $4ab3: $00
	jr   nz, jr_03f_4ac6                             ; $4ab4: $20 $10

jr_03f_4ab6:
	add  hl, hl                                      ; $4ab6: $29
	nop                                              ; $4ab7: $00
	jr   nz, jr_03f_4ac2                             ; $4ab8: $20 $08

jr_03f_4aba:
	jr   z, jr_03f_4abc                              ; $4aba: $28 $00

jr_03f_4abc:
	jr   @+$22                                       ; $4abc: $18 $20

jr_03f_4abe:
	dec  de                                          ; $4abe: $1b
	nop                                              ; $4abf: $00
	jr   @+$1a                                       ; $4ac0: $18 $18

jr_03f_4ac2:
	ld   a, [de]                                     ; $4ac2: $1a
	nop                                              ; $4ac3: $00
	jr   jr_03f_4ad6                                 ; $4ac4: $18 $10

jr_03f_4ac6:
	add  hl, de                                      ; $4ac6: $19
	nop                                              ; $4ac7: $00
	jr   @+$0a                                       ; $4ac8: $18 $08

jr_03f_4aca:
	jr   jr_03f_4acc                                 ; $4aca: $18 $00

jr_03f_4acc:
	db   $10                                         ; $4acc: $10
	jr   nz, @+$0d                                   ; $4acd: $20 $0b

	nop                                              ; $4acf: $00
	db   $10                                         ; $4ad0: $10
	jr   @+$0c                                       ; $4ad1: $18 $0a

	nop                                              ; $4ad3: $00
	db   $10                                         ; $4ad4: $10
	db   $10                                         ; $4ad5: $10

jr_03f_4ad6:
	add  hl, bc                                      ; $4ad6: $09
	nop                                              ; $4ad7: $00
	db   $10                                         ; $4ad8: $10
	ld   [$1008], sp                                 ; $4ad9: $08 $08 $10
	ld   [$0e08], sp                                 ; $4adc: $08 $08 $0e
	rlca                                             ; $4adf: $07
	ld   [$0d00], sp                                 ; $4ae0: $08 $00 $0d
	rla                                              ; $4ae3: $17
	ld   [$0f08], sp                                 ; $4ae4: $08 $08 $0f
	rla                                              ; $4ae7: $17
	ld   [$1d08], sp                                 ; $4ae8: $08 $08 $1d
	rla                                              ; $4aeb: $17
	ld   [$1e08], sp                                 ; $4aec: $08 $08 $1e
	rla                                              ; $4aef: $17
	ld   [$1f08], sp                                 ; $4af0: $08 $08 $1f
	rla                                              ; $4af3: $17
	ld   [$2c08], sp                                 ; $4af4: $08 $08 $2c
	rla                                              ; $4af7: $17
	ld   [$2d08], sp                                 ; $4af8: $08 $08 $2d
	rla                                              ; $4afb: $17
	ld   [$2e08], sp                                 ; $4afc: $08 $08 $2e
	rla                                              ; $4aff: $17
	ld   [$2f08], sp                                 ; $4b00: $08 $08 $2f
	rla                                              ; $4b03: $17
	ld   [$3c08], sp                                 ; $4b04: $08 $08 $3c
	rla                                              ; $4b07: $17
	ld   [$3d08], sp                                 ; $4b08: $08 $08 $3d
	rla                                              ; $4b0b: $17
	jr   nz, @-$0e                                   ; $4b0c: $20 $f0

	ld   h, b                                        ; $4b0e: $60
	inc  c                                           ; $4b0f: $0c
	db   $10                                         ; $4b10: $10
	jr   jr_03f_4b58                                 ; $4b11: $18 $45

	inc  c                                           ; $4b13: $0c
	jr   z, jr_03f_4b2e                              ; $4b14: $28 $18

	ld   [hl], l                                     ; $4b16: $75
	inc  c                                           ; $4b17: $0c
	jr   z, jr_03f_4b2a                              ; $4b18: $28 $10

jr_03f_4b1a:
	ld   [hl], h                                     ; $4b1a: $74
	inc  c                                           ; $4b1b: $0c
	jr   z, jr_03f_4b26                              ; $4b1c: $28 $08

jr_03f_4b1e:
	ld   [hl], e                                     ; $4b1e: $73
	inc  c                                           ; $4b1f: $0c
	jr   z, jr_03f_4b22                              ; $4b20: $28 $00

jr_03f_4b22:
	ld   [hl], d                                     ; $4b22: $72
	inc  c                                           ; $4b23: $0c
	jr   z, jr_03f_4b1e                              ; $4b24: $28 $f8

jr_03f_4b26:
	ld   [hl], c                                     ; $4b26: $71
	inc  c                                           ; $4b27: $0c
	jr   z, jr_03f_4b1a                              ; $4b28: $28 $f0

jr_03f_4b2a:
	ld   [hl], b                                     ; $4b2a: $70
	inc  c                                           ; $4b2b: $0c
	jr   nz, jr_03f_4b46                             ; $4b2c: $20 $18

jr_03f_4b2e:
	ld   h, l                                        ; $4b2e: $65
	inc  c                                           ; $4b2f: $0c
	jr   nz, jr_03f_4b42                             ; $4b30: $20 $10

	ld   h, h                                        ; $4b32: $64
	inc  c                                           ; $4b33: $0c
	jr   nz, jr_03f_4b3e                             ; $4b34: $20 $08

jr_03f_4b36:
	ld   h, e                                        ; $4b36: $63
	inc  c                                           ; $4b37: $0c
	jr   nz, jr_03f_4b3a                             ; $4b38: $20 $00

jr_03f_4b3a:
	ld   h, d                                        ; $4b3a: $62
	inc  c                                           ; $4b3b: $0c
	jr   nz, jr_03f_4b36                             ; $4b3c: $20 $f8

jr_03f_4b3e:
	ld   h, c                                        ; $4b3e: $61
	inc  c                                           ; $4b3f: $0c
	jr   jr_03f_4b5a                                 ; $4b40: $18 $18

jr_03f_4b42:
	ld   d, l                                        ; $4b42: $55
	inc  c                                           ; $4b43: $0c
	jr   jr_03f_4b56                                 ; $4b44: $18 $10

jr_03f_4b46:
	ld   d, h                                        ; $4b46: $54
	inc  c                                           ; $4b47: $0c
	jr   jr_03f_4b52                                 ; $4b48: $18 $08

jr_03f_4b4a:
	ld   d, e                                        ; $4b4a: $53
	inc  c                                           ; $4b4b: $0c
	jr   jr_03f_4b4e                                 ; $4b4c: $18 $00

jr_03f_4b4e:
	ld   d, d                                        ; $4b4e: $52
	inc  c                                           ; $4b4f: $0c
	jr   jr_03f_4b4a                                 ; $4b50: $18 $f8

jr_03f_4b52:
	ld   d, c                                        ; $4b52: $51
	inc  c                                           ; $4b53: $0c
	jr   jr_03f_4b46                                 ; $4b54: $18 $f0

jr_03f_4b56:
	ld   d, b                                        ; $4b56: $50
	inc  c                                           ; $4b57: $0c

jr_03f_4b58:
	db   $10                                         ; $4b58: $10
	db   $10                                         ; $4b59: $10

jr_03f_4b5a:
	ld   b, h                                        ; $4b5a: $44
	inc  c                                           ; $4b5b: $0c
	db   $10                                         ; $4b5c: $10
	ld   [$0c43], sp                                 ; $4b5d: $08 $43 $0c
	stop                                             ; $4b60: $10 $00
	ld   b, d                                        ; $4b62: $42
	inc  c                                           ; $4b63: $0c
	db   $10                                         ; $4b64: $10
	ld   hl, sp+$41                                  ; $4b65: $f8 $41
	inc  c                                           ; $4b67: $0c
	db   $10                                         ; $4b68: $10
	ldh  a, [rLCDC]                                  ; $4b69: $f0 $40
	inc  e                                           ; $4b6b: $1c
	jr   jr_03f_4b7e                                 ; $4b6c: $18 $10

	inc  bc                                          ; $4b6e: $03
	ld   bc, $1010                                   ; $4b6f: $01 $10 $10
	ld   [bc], a                                     ; $4b72: $02
	ld   bc, $0818                                   ; $4b73: $01 $18 $08
	ld   bc, $1001                                   ; $4b76: $01 $01 $10
	ld   [$1100], sp                                 ; $4b79: $08 $00 $11
	jr   jr_03f_4b8e                                 ; $4b7c: $18 $10

jr_03f_4b7e:
	rlca                                             ; $4b7e: $07
	nop                                              ; $4b7f: $00
	db   $10                                         ; $4b80: $10
	db   $10                                         ; $4b81: $10
	ld   b, $00                                      ; $4b82: $06 $00
	jr   jr_03f_4b8e                                 ; $4b84: $18 $08

	dec  b                                           ; $4b86: $05
	nop                                              ; $4b87: $00
	db   $10                                         ; $4b88: $10
	ld   [$1004], sp                                 ; $4b89: $08 $04 $10
	jr   jr_03f_4b9e                                 ; $4b8c: $18 $10

jr_03f_4b8e:
	inc  bc                                          ; $4b8e: $03
	nop                                              ; $4b8f: $00
	db   $10                                         ; $4b90: $10
	db   $10                                         ; $4b91: $10
	ld   [bc], a                                     ; $4b92: $02
	nop                                              ; $4b93: $00
	jr   jr_03f_4b9e                                 ; $4b94: $18 $08

	ld   bc, $1000                                   ; $4b96: $01 $00 $10
	ld   [$1000], sp                                 ; $4b99: $08 $00 $10
	jr   jr_03f_4bae                                 ; $4b9c: $18 $10

jr_03f_4b9e:
	rrca                                             ; $4b9e: $0f
	ld   [bc], a                                     ; $4b9f: $02
	db   $10                                         ; $4ba0: $10
	db   $10                                         ; $4ba1: $10
	ld   c, $02                                      ; $4ba2: $0e $02
	jr   jr_03f_4bae                                 ; $4ba4: $18 $08

	dec  c                                           ; $4ba6: $0d
	ld   [bc], a                                     ; $4ba7: $02
	db   $10                                         ; $4ba8: $10
	ld   [$120c], sp                                 ; $4ba9: $08 $0c $12
	jr   jr_03f_4bbe                                 ; $4bac: $18 $10

jr_03f_4bae:
	dec  bc                                          ; $4bae: $0b
	ld   [bc], a                                     ; $4baf: $02
	db   $10                                         ; $4bb0: $10
	db   $10                                         ; $4bb1: $10
	ld   a, [bc]                                     ; $4bb2: $0a
	ld   [bc], a                                     ; $4bb3: $02
	jr   jr_03f_4bbe                                 ; $4bb4: $18 $08

	add  hl, bc                                      ; $4bb6: $09
	ld   [bc], a                                     ; $4bb7: $02
	db   $10                                         ; $4bb8: $10
	ld   [$1208], sp                                 ; $4bb9: $08 $08 $12
	jr   jr_03f_4bce                                 ; $4bbc: $18 $10

jr_03f_4bbe:
	rlca                                             ; $4bbe: $07
	ld   [bc], a                                     ; $4bbf: $02
	db   $10                                         ; $4bc0: $10
	db   $10                                         ; $4bc1: $10
	ld   b, $02                                      ; $4bc2: $06 $02
	jr   jr_03f_4bce                                 ; $4bc4: $18 $08

	dec  b                                           ; $4bc6: $05
	ld   [bc], a                                     ; $4bc7: $02
	db   $10                                         ; $4bc8: $10
	ld   [$1204], sp                                 ; $4bc9: $08 $04 $12
	jr   jr_03f_4bde                                 ; $4bcc: $18 $10

jr_03f_4bce:
	inc  bc                                          ; $4bce: $03
	ld   [bc], a                                     ; $4bcf: $02
	db   $10                                         ; $4bd0: $10
	db   $10                                         ; $4bd1: $10
	ld   [bc], a                                     ; $4bd2: $02
	ld   [bc], a                                     ; $4bd3: $02
	jr   jr_03f_4bde                                 ; $4bd4: $18 $08

	ld   bc, $1002                                   ; $4bd6: $01 $02 $10
	ld   [$1200], sp                                 ; $4bd9: $08 $00 $12
	jr   jr_03f_4bee                                 ; $4bdc: $18 $10

jr_03f_4bde:
	rrca                                             ; $4bde: $0f
	nop                                              ; $4bdf: $00
	db   $10                                         ; $4be0: $10
	db   $10                                         ; $4be1: $10
	ld   c, $00                                      ; $4be2: $0e $00
	jr   jr_03f_4bee                                 ; $4be4: $18 $08

	dec  c                                           ; $4be6: $0d
	nop                                              ; $4be7: $00
	db   $10                                         ; $4be8: $10
	ld   [FarPopulateKanjiConvoStructForCurrTextBox], sp                                 ; $4be9: $08 $0c $10
	jr   jr_03f_4bfe                                 ; $4bec: $18 $10

jr_03f_4bee:
	dec  bc                                          ; $4bee: $0b
	nop                                              ; $4bef: $00
	db   $10                                         ; $4bf0: $10
	db   $10                                         ; $4bf1: $10
	ld   a, [bc]                                     ; $4bf2: $0a
	nop                                              ; $4bf3: $00
	jr   jr_03f_4bfe                                 ; $4bf4: $18 $08

	add  hl, bc                                      ; $4bf6: $09
	nop                                              ; $4bf7: $00
	db   $10                                         ; $4bf8: $10
	ld   [$1008], sp                                 ; $4bf9: $08 $08 $10
	jr   jr_03f_4c0e                                 ; $4bfc: $18 $10

jr_03f_4bfe:
	rrca                                             ; $4bfe: $0f
	ld   bc, $1010                                   ; $4bff: $01 $10 $10
	ld   c, $01                                      ; $4c02: $0e $01
	jr   jr_03f_4c0e                                 ; $4c04: $18 $08

	dec  c                                           ; $4c06: $0d
	ld   bc, $0810                                   ; $4c07: $01 $10 $08
	inc  c                                           ; $4c0a: $0c
	ld   de, $1018                                   ; $4c0b: $11 $18 $10

jr_03f_4c0e:
	dec  bc                                          ; $4c0e: $0b
	ld   bc, $1010                                   ; $4c0f: $01 $10 $10
	ld   a, [bc]                                     ; $4c12: $0a
	ld   bc, $0818                                   ; $4c13: $01 $18 $08
	add  hl, bc                                      ; $4c16: $09
	ld   bc, $0810                                   ; $4c17: $01 $10 $08
	ld   [$1811], sp                                 ; $4c1a: $08 $11 $18
	db   $10                                         ; $4c1d: $10
	rlca                                             ; $4c1e: $07
	ld   bc, $1010                                   ; $4c1f: $01 $10 $10
	ld   b, $01                                      ; $4c22: $06 $01
	db $18, $08

	dec  b                                           ; $4c26: $05
	ld   bc, $0810                                   ; $4c27: $01 $10 $08
	inc  b                                           ; $4c2a: $04
	db $11 
	
	
SpriteGroup2_Idx21h:
	db $18, $08, $11, $63
	db $20, $08, $10, $63
	db $20, $00, $11, $03
	db $18, $00, $10, $13


SpriteGroup2_Idx22h:
	db $1c, $10, $6d, $63
	db $24, $10, $6c, $63
	db $1c, $f8, $35, $43
	db $24, $f8, $34, $43
	db $1c, $00, $13, $63
	db $1c, $08, $13, $63
	db $24, $00, $12, $63
	db $24, $08, $12, $63
	db $1c, $f8, $6d, $03
	db $14, $f8, $6c, $03
	db $1c, $10, $35, $23
	db $14, $10, $34, $23
	db $1c, $08, $13, $03
	db $1c, $00, $13, $03
	db $14, $08, $12, $03
	db $14, $00, $12, $13


	jr   jr_03f_4c9e                                 ; $4c7c: $18 $20

	inc  hl                                          ; $4c7e: $23
	inc  bc                                          ; $4c7f: $03
	db   $10                                         ; $4c80: $10
	jr   nz, @+$24                                   ; $4c81: $20 $22

	inc  bc                                          ; $4c83: $03
	jr   jr_03f_4c9e                                 ; $4c84: $18 $18

	ld   hl, $1003                                   ; $4c86: $21 $03 $10
	jr   jr_03f_4cab                                 ; $4c89: $18 $20

	inc  bc                                          ; $4c8b: $03
	jr   jr_03f_4c9e                                 ; $4c8c: $18 $10

	rra                                              ; $4c8e: $1f
	inc  bc                                          ; $4c8f: $03
	db   $10                                         ; $4c90: $10
	db   $10                                         ; $4c91: $10
	ld   e, $03                                      ; $4c92: $1e $03
	jr   jr_03f_4c9e                                 ; $4c94: $18 $08

	dec  e                                           ; $4c96: $1d
	inc  bc                                          ; $4c97: $03
	db   $10                                         ; $4c98: $10
	ld   [$031c], sp                                 ; $4c99: $08 $1c $03
	jr   jr_03f_4c9e                                 ; $4c9c: $18 $00

jr_03f_4c9e:
	dec  de                                          ; $4c9e: $1b
	inc  bc                                          ; $4c9f: $03
	stop                                             ; $4ca0: $10 $00
	ld   a, [de]                                     ; $4ca2: $1a
	inc  bc                                          ; $4ca3: $03
	jr   jr_03f_4c9e                                 ; $4ca4: $18 $f8

	add  hl, de                                      ; $4ca6: $19
	inc  bc                                          ; $4ca7: $03
	db   $10                                         ; $4ca8: $10
	ld   hl, sp+$18                                  ; $4ca9: $f8 $18

jr_03f_4cab:
	inc  bc                                          ; $4cab: $03
	jr   jr_03f_4c9e                                 ; $4cac: $18 $f0

	rla                                              ; $4cae: $17
	inc  bc                                          ; $4caf: $03
	db   $10                                         ; $4cb0: $10
	ldh  a, [rAUD2LEN]                               ; $4cb1: $f0 $16
	inc  bc                                          ; $4cb3: $03
	jr   jr_03f_4c9e                                 ; $4cb4: $18 $e8

jr_03f_4cb6:
	dec  d                                           ; $4cb6: $15
	inc  bc                                          ; $4cb7: $03
	db   $10                                         ; $4cb8: $10
	add  sp, $14                                     ; $4cb9: $e8 $14
	inc  de                                          ; $4cbb: $13


SpriteGroup2_Idx24h:
	db $18, $f8, $33, $03
	db $10, $f8, $32, $03
	db $18, $f0, $31, $03
	db $10, $f0, $30, $03
	db $18, $e8, $2f, $03
	db $10, $e8, $2e, $03
	db $18, $20, $23, $03
	db $10, $20, $22, $03
	db $18, $18, $21, $03
	db $10, $18, $20, $03
	db $18, $10, $1f, $03
	db $10, $10, $1e, $03
	db $18, $08, $1d, $03
	db $10, $08, $1c, $03
	db $18, $00, $1b, $03
	db $10, $00, $1a, $13


	jr   jr_03f_4cfe                                 ; $4cfc: $18 $00

jr_03f_4cfe:
	ld   b, c                                        ; $4cfe: $41
	inc  bc                                          ; $4cff: $03
	stop                                             ; $4d00: $10 $00
	ld   b, b                                        ; $4d02: $40

jr_03f_4d03:
	inc  bc                                          ; $4d03: $03
	jr   jr_03f_4cfe                                 ; $4d04: $18 $f8

	ccf                                              ; $4d06: $3f
	inc  bc                                          ; $4d07: $03
	db   $10                                         ; $4d08: $10
	ld   hl, sp+$3e                                  ; $4d09: $f8 $3e
	inc  bc                                          ; $4d0b: $03
	jr   jr_03f_4cfe                                 ; $4d0c: $18 $f0

	dec  a                                           ; $4d0e: $3d
	inc  bc                                          ; $4d0f: $03
	db   $10                                         ; $4d10: $10
	ldh  a, [$3c]                                    ; $4d11: $f0 $3c
	inc  bc                                          ; $4d13: $03
	jr   jr_03f_4cfe                                 ; $4d14: $18 $e8

	dec  sp                                          ; $4d16: $3b
	inc  bc                                          ; $4d17: $03
	db   $10                                         ; $4d18: $10
	add  sp, $3a                                     ; $4d19: $e8 $3a
	inc  bc                                          ; $4d1b: $03
	jr   jr_03f_4d3e                                 ; $4d1c: $18 $20

	inc  hl                                          ; $4d1e: $23
	inc  bc                                          ; $4d1f: $03
	db   $10                                         ; $4d20: $10
	jr   nz, @+$24                                   ; $4d21: $20 $22

	inc  bc                                          ; $4d23: $03
	jr   jr_03f_4d3e                                 ; $4d24: $18 $18

	ld   hl, $1003                                   ; $4d26: $21 $03 $10
	jr   jr_03f_4d4b                                 ; $4d29: $18 $20

	inc  bc                                          ; $4d2b: $03
	jr   jr_03f_4d3e                                 ; $4d2c: $18 $10

	rra                                              ; $4d2e: $1f
	inc  bc                                          ; $4d2f: $03
	db   $10                                         ; $4d30: $10
	db   $10                                         ; $4d31: $10
	ld   e, $03                                      ; $4d32: $1e $03
	jr   jr_03f_4d3e                                 ; $4d34: $18 $08

	dec  e                                           ; $4d36: $1d
	inc  bc                                          ; $4d37: $03
	db   $10                                         ; $4d38: $10
	ld   [$131c], sp                                 ; $4d39: $08 $1c $13
	jr   jr_03f_4d3e                                 ; $4d3c: $18 $00

jr_03f_4d3e:
	ld   b, c                                        ; $4d3e: $41
	inc  bc                                          ; $4d3f: $03
	stop                                             ; $4d40: $10 $00
	ld   b, b                                        ; $4d42: $40
	inc  bc                                          ; $4d43: $03
	jr   jr_03f_4d3e                                 ; $4d44: $18 $f8

	ld   b, a                                        ; $4d46: $47
	inc  bc                                          ; $4d47: $03
	db   $10                                         ; $4d48: $10
	ld   hl, sp+$46                                  ; $4d49: $f8 $46

jr_03f_4d4b:
	inc  bc                                          ; $4d4b: $03
	jr   jr_03f_4d3e                                 ; $4d4c: $18 $f0

	ld   b, l                                        ; $4d4e: $45
	inc  bc                                          ; $4d4f: $03
	db   $10                                         ; $4d50: $10
	ldh  a, [rLY]                                    ; $4d51: $f0 $44
	inc  bc                                          ; $4d53: $03
	jr   jr_03f_4d3e                                 ; $4d54: $18 $e8

	ld   b, e                                        ; $4d56: $43
	inc  bc                                          ; $4d57: $03
	db   $10                                         ; $4d58: $10
	add  sp, $42                                     ; $4d59: $e8 $42
	inc  bc                                          ; $4d5b: $03
	db $18, $20

	inc  hl                                          ; $4d5e: $23
	inc  bc                                          ; $4d5f: $03
	db   $10                                         ; $4d60: $10
	jr   nz, @+$24                                   ; $4d61: $20 $22

	inc  bc                                          ; $4d63: $03
	db $18, $18

jr_03f_4d66:
	ld   hl, $1003                                   ; $4d66: $21 $03 $10
	db $18, $20

	inc  bc                                          ; $4d6b: $03
	db $18, $10

	rra                                              ; $4d6e: $1f
	inc  bc                                          ; $4d6f: $03
	db   $10                                         ; $4d70: $10
	db   $10                                         ; $4d71: $10
	ld   e, $03                                      ; $4d72: $1e $03
	db $18, $08

	dec  e                                           ; $4d76: $1d
	inc  bc                                          ; $4d77: $03
	db   $10                                         ; $4d78: $10
	ld   [$131c], sp                                 ; $4d79: $08 $1c $13


SpriteGroup2_Idx27h:
	db $28, $e8, $37, $03
	db $20, $e8, $36, $03
	db $28, $20, $2d, $03
	db $20, $20, $2c, $03
	db $28, $18, $2b, $03
	db $20, $18, $2a, $03
	db $28, $10, $29, $03
	db $20, $10, $28, $03
	db $28, $08, $27, $03
	db $20, $08, $26, $03
	db $20, $00, $13, $43
	db $28, $00, $12, $43
	db $28, $f8, $27, $03
	db $20, $f8, $26, $03
	db $28, $f0, $25, $03
	db $20, $f0, $24, $13


SpriteGroup2_Idx28h:
	db $28, $00, $39, $03
	db $20, $00, $38, $03
	db $20, $e8, $35, $43
	db $28, $e8, $34, $43
	db $28, $20, $2d, $03
	db $20, $20, $2c, $03
	db $28, $18, $2b, $03
	db $20, $18, $2a, $03
	db $28, $10, $29, $03
	db $20, $10, $28, $03
	db $28, $08, $27, $03
	db $20, $08, $26, $03
	db $28, $f8, $27, $03
	db $20, $f8, $26, $03
	db $28, $f0, $25, $03
	db $20, $f0, $24, $13


SpriteGroup2_Idx29h:
	db $20, $e8, $35, $43
	db $28, $e8, $34, $43
	db $28, $20, $2d, $03
	db $20, $20, $2c, $03
	db $28, $18, $2b, $03
	db $20, $18, $2a, $03
	db $28, $10, $29, $03
	db $20, $10, $28, $03
	db $28, $08, $27, $03
	db $20, $08, $26, $03
	db $20, $00, $13, $43
	db $28, $00, $12, $43
	db $28, $f8, $27, $03
	db $20, $f8, $26, $03
	db $28, $f0, $25, $03
	db $20, $f0, $24, $13


SpriteGroup2_Idx2ah:
	jr   jr_03f_4e5e                                 ; $4e3c: $18 $20

	ld   de, $2063                                   ; $4e3e: $11 $63 $20
	jr   nz, jr_03f_4e53                             ; $4e41: $20 $10

	ld   h, e                                        ; $4e43: $63
	jr   nz, jr_03f_4e5e                             ; $4e44: $20 $18

	ld   d, e                                        ; $4e46: $53
	inc  bc                                          ; $4e47: $03
	jr   jr_03f_4e62                                 ; $4e48: $18 $18

	ld   d, d                                        ; $4e4a: $52
	inc  bc                                          ; $4e4b: $03
	jr   nz, jr_03f_4e5e                             ; $4e4c: $20 $10

	ld   d, c                                        ; $4e4e: $51
	inc  bc                                          ; $4e4f: $03
	jr   jr_03f_4e62                                 ; $4e50: $18 $10

	ld   d, b                                        ; $4e52: $50

jr_03f_4e53:
	inc  bc                                          ; $4e53: $03
	jr   nz, jr_03f_4e5e                             ; $4e54: $20 $08

	ld   c, a                                        ; $4e56: $4f
	inc  bc                                          ; $4e57: $03
	jr   jr_03f_4e62                                 ; $4e58: $18 $08

	ld   c, [hl]                                     ; $4e5a: $4e
	inc  bc                                          ; $4e5b: $03
	jr   nz, jr_03f_4e5e                             ; $4e5c: $20 $00

jr_03f_4e5e:
	ld   c, l                                        ; $4e5e: $4d
	inc  bc                                          ; $4e5f: $03
	jr   jr_03f_4e62                                 ; $4e60: $18 $00

jr_03f_4e62:
	ld   c, h                                        ; $4e62: $4c
	inc  bc                                          ; $4e63: $03
	jr   nz, jr_03f_4e5e                             ; $4e64: $20 $f8

	ld   c, e                                        ; $4e66: $4b
	inc  bc                                          ; $4e67: $03
	jr   jr_03f_4e62                                 ; $4e68: $18 $f8

	ld   c, d                                        ; $4e6a: $4a
	inc  bc                                          ; $4e6b: $03
	jr   nz, jr_03f_4e5e                             ; $4e6c: $20 $f0

	ld   c, c                                        ; $4e6e: $49
	inc  bc                                          ; $4e6f: $03
	jr   jr_03f_4e62                                 ; $4e70: $18 $f0

	ld   c, b                                        ; $4e72: $48
	inc  bc                                          ; $4e73: $03
	jr   nz, jr_03f_4e5e                             ; $4e74: $20 $e8

	ld   de, $1803                                   ; $4e76: $11 $03 $18
	add  sp, $10                                     ; $4e79: $e8 $10
	inc  de                                          ; $4e7b: $13
	jr   z, jr_03f_4e96                              ; $4e7c: $28 $18

	ld   l, e                                        ; $4e7e: $6b
	inc  bc                                          ; $4e7f: $03
	jr   nz, jr_03f_4e9a                             ; $4e80: $20 $18

	ld   l, d                                        ; $4e82: $6a
	inc  bc                                          ; $4e83: $03
	jr   z, jr_03f_4e96                              ; $4e84: $28 $10

	ld   l, c                                        ; $4e86: $69
	inc  bc                                          ; $4e87: $03
	jr   nz, jr_03f_4e9a                             ; $4e88: $20 $10

	ld   l, b                                        ; $4e8a: $68
	inc  bc                                          ; $4e8b: $03
	jr   z, jr_03f_4e96                              ; $4e8c: $28 $08

	ld   h, a                                        ; $4e8e: $67
	inc  bc                                          ; $4e8f: $03
	jr   nz, jr_03f_4e9a                             ; $4e90: $20 $08

	ld   h, [hl]                                     ; $4e92: $66
	inc  bc                                          ; $4e93: $03
	jr   z, jr_03f_4e96                              ; $4e94: $28 $00

jr_03f_4e96:
	ld   h, l                                        ; $4e96: $65
	inc  bc                                          ; $4e97: $03
	jr   nz, jr_03f_4e9a                             ; $4e98: $20 $00

jr_03f_4e9a:
	ld   h, h                                        ; $4e9a: $64
	inc  bc                                          ; $4e9b: $03
	jr   z, jr_03f_4e96                              ; $4e9c: $28 $f8

	ld   h, e                                        ; $4e9e: $63
	inc  bc                                          ; $4e9f: $03
	jr   nz, jr_03f_4e9a                             ; $4ea0: $20 $f8

	ld   h, d                                        ; $4ea2: $62
	inc  bc                                          ; $4ea3: $03
	jr   z, jr_03f_4e96                              ; $4ea4: $28 $f0

	ld   h, c                                        ; $4ea6: $61
	inc  bc                                          ; $4ea7: $03
	jr   nz, jr_03f_4e9a                             ; $4ea8: $20 $f0

	ld   h, b                                        ; $4eaa: $60
	inc  bc                                          ; $4eab: $03
	jr   nz, jr_03f_4e96                             ; $4eac: $20 $e8

	dec  [hl]                                        ; $4eae: $35
	ld   b, e                                        ; $4eaf: $43
	jr   z, jr_03f_4e9a                              ; $4eb0: $28 $e8

	inc  [hl]                                        ; $4eb2: $34
	ld   b, e                                        ; $4eb3: $43
	jr   jr_03f_4ed6                                 ; $4eb4: $18 $20

	dec  [hl]                                        ; $4eb6: $35
	inc  hl                                          ; $4eb7: $23
	db   $10                                         ; $4eb8: $10
	jr   nz, jr_03f_4eef                             ; $4eb9: $20 $34

	inc  hl                                          ; $4ebb: $23
	jr   jr_03f_4ed6                                 ; $4ebc: $18 $18

	ld   e, a                                        ; $4ebe: $5f
	inc  bc                                          ; $4ebf: $03
	db   $10                                         ; $4ec0: $10
	jr   jr_03f_4f21                                 ; $4ec1: $18 $5e

	inc  bc                                          ; $4ec3: $03
	jr   jr_03f_4ed6                                 ; $4ec4: $18 $10

	ld   e, l                                        ; $4ec6: $5d
	inc  bc                                          ; $4ec7: $03
	db   $10                                         ; $4ec8: $10
	db   $10                                         ; $4ec9: $10
	ld   e, h                                        ; $4eca: $5c
	inc  bc                                          ; $4ecb: $03
	jr   jr_03f_4ed6                                 ; $4ecc: $18 $08

	ld   e, e                                        ; $4ece: $5b
	inc  bc                                          ; $4ecf: $03
	db   $10                                         ; $4ed0: $10
	ld   [$035a], sp                                 ; $4ed1: $08 $5a $03
	jr   jr_03f_4ed6                                 ; $4ed4: $18 $00

jr_03f_4ed6:
	ld   e, c                                        ; $4ed6: $59
	inc  bc                                          ; $4ed7: $03
	stop                                             ; $4ed8: $10 $00

jr_03f_4eda:
	ld   e, b                                        ; $4eda: $58
	inc  bc                                          ; $4edb: $03
	jr   jr_03f_4ed6                                 ; $4edc: $18 $f8

	ld   d, a                                        ; $4ede: $57
	inc  bc                                          ; $4edf: $03
	db   $10                                         ; $4ee0: $10
	ld   hl, sp+$56                                  ; $4ee1: $f8 $56
	inc  bc                                          ; $4ee3: $03
	jr   jr_03f_4ed6                                 ; $4ee4: $18 $f0

	ld   d, l                                        ; $4ee6: $55
	inc  bc                                          ; $4ee7: $03
	db   $10                                         ; $4ee8: $10
	ldh  a, [rHDMA4]                                 ; $4ee9: $f0 $54
	inc  bc                                          ; $4eeb: $03
	db   $10                                         ; $4eec: $10
	add  sp, $2d                                     ; $4eed: $e8 $2d

jr_03f_4eef:
	ld   h, e                                        ; $4eef: $63
	jr   jr_03f_4eda                                 ; $4ef0: $18 $e8

	inc  l                                           ; $4ef2: $2c
	ld   h, e                                        ; $4ef3: $63
	jr   z, jr_03f_4f16                              ; $4ef4: $28 $20

	dec  l                                           ; $4ef6: $2d
	inc  bc                                          ; $4ef7: $03
	jr   nz, jr_03f_4f1a                             ; $4ef8: $20 $20

	inc  l                                           ; $4efa: $2c
	inc  de                                          ; $4efb: $13
	jr   jr_03f_4f06                                 ; $4efc: $18 $08

	ld   bc, $1000                                   ; $4efe: $01 $00 $10
	ld   [$1000], sp                                 ; $4f01: $08 $00 $10
	jr   jr_03f_4f0e                                 ; $4f04: $18 $08

jr_03f_4f06:
	inc  bc                                          ; $4f06: $03
	nop                                              ; $4f07: $00
	db   $10                                         ; $4f08: $10
	ld   [$1002], sp                                 ; $4f09: $08 $02 $10
	jr   jr_03f_4f16                                 ; $4f0c: $18 $08

jr_03f_4f0e:
	dec  b                                           ; $4f0e: $05
	nop                                              ; $4f0f: $00
	db   $10                                         ; $4f10: $10
	ld   [$1004], sp                                 ; $4f11: $08 $04 $10
	ld   a, [hl+]                                    ; $4f14: $2a
	dec  b                                           ; $4f15: $05

jr_03f_4f16:
	ld   c, c                                        ; $4f16: $49
	nop                                              ; $4f17: $00
	ld   [hl+], a                                    ; $4f18: $22
	dec  b                                           ; $4f19: $05

jr_03f_4f1a:
	ld   c, b                                        ; $4f1a: $48
	inc  bc                                          ; $4f1b: $03
	ld   a, [hl+]                                    ; $4f1c: $2a
	db   $fd                                         ; $4f1d: $fd
	ld   b, a                                        ; $4f1e: $47
	nop                                              ; $4f1f: $00
	ld   [hl+], a                                    ; $4f20: $22

jr_03f_4f21:
	db   $fd                                         ; $4f21: $fd
	ld   b, [hl]                                     ; $4f22: $46
	inc  bc                                          ; $4f23: $03
	ld   a, [de]                                     ; $4f24: $1a
	dec  b                                           ; $4f25: $05
	ld   b, l                                        ; $4f26: $45
	inc  bc                                          ; $4f27: $03
	ld   [de], a                                     ; $4f28: $12
	dec  b                                           ; $4f29: $05
	ld   b, h                                        ; $4f2a: $44
	inc  bc                                          ; $4f2b: $03
	ld   a, [de]                                     ; $4f2c: $1a
	db   $fd                                         ; $4f2d: $fd
	ld   b, e                                        ; $4f2e: $43
	inc  bc                                          ; $4f2f: $03
	ld   [de], a                                     ; $4f30: $12
	db   $fd                                         ; $4f31: $fd
	ld   b, d                                        ; $4f32: $42
	inc  bc                                          ; $4f33: $03
	ld   a, [de]                                     ; $4f34: $1a
	dec  c                                           ; $4f35: $0d
	ld   b, c                                        ; $4f36: $41
	inc  bc                                          ; $4f37: $03
	ld   [de], a                                     ; $4f38: $12
	dec  c                                           ; $4f39: $0d
	ld   b, b                                        ; $4f3a: $40
	inc  bc                                          ; $4f3b: $03
	ld   a, [bc]                                     ; $4f3c: $0a
	ld   [$043f], sp                                 ; $4f3d: $08 $3f $04
	ld   [bc], a                                     ; $4f40: $02
	ld   [$043e], sp                                 ; $4f41: $08 $3e $04
	ld   a, [bc]                                     ; $4f44: $0a
	nop                                              ; $4f45: $00
	dec  a                                           ; $4f46: $3d
	inc  b                                           ; $4f47: $04
	ld   [bc], a                                     ; $4f48: $02
	nop                                              ; $4f49: $00
	inc  a                                           ; $4f4a: $3c
	inc  d                                           ; $4f4b: $14
	ld   a, [hl+]                                    ; $4f4c: $2a
	add  hl, bc                                      ; $4f4d: $09
	ld   h, c                                        ; $4f4e: $61
	nop                                              ; $4f4f: $00
	ld   [hl+], a                                    ; $4f50: $22
	add  hl, bc                                      ; $4f51: $09
	ld   h, b                                        ; $4f52: $60
	inc  bc                                          ; $4f53: $03
	ld   a, [hl+]                                    ; $4f54: $2a
	ld   bc, $005f                                   ; $4f55: $01 $5f $00
	ld   [hl+], a                                    ; $4f58: $22
	ld   bc, $035e                                   ; $4f59: $01 $5e $03
	ld   a, [de]                                     ; $4f5c: $1a
	add  hl, bc                                      ; $4f5d: $09
	ld   e, l                                        ; $4f5e: $5d
	inc  bc                                          ; $4f5f: $03
	ld   [de], a                                     ; $4f60: $12
	add  hl, bc                                      ; $4f61: $09
	ld   e, h                                        ; $4f62: $5c
	inc  bc                                          ; $4f63: $03
	ld   a, [de]                                     ; $4f64: $1a
	ld   bc, $035b                                   ; $4f65: $01 $5b $03
	ld   [de], a                                     ; $4f68: $12
	ld   bc, $035a                                   ; $4f69: $01 $5a $03
	ld   a, [de]                                     ; $4f6c: $1a
	ld   de, $0341                                   ; $4f6d: $11 $41 $03
	ld   [de], a                                     ; $4f70: $12
	ld   de, $0340                                   ; $4f71: $11 $40 $03
	ld   a, [bc]                                     ; $4f74: $0a
	inc  c                                           ; $4f75: $0c
	ccf                                              ; $4f76: $3f
	inc  b                                           ; $4f77: $04
	ld   [bc], a                                     ; $4f78: $02
	inc  c                                           ; $4f79: $0c
	ld   a, $04                                      ; $4f7a: $3e $04
	ld   a, [bc]                                     ; $4f7c: $0a
	inc  b                                           ; $4f7d: $04
	dec  a                                           ; $4f7e: $3d
	inc  b                                           ; $4f7f: $04
	ld   [bc], a                                     ; $4f80: $02
	inc  b                                           ; $4f81: $04
	inc  a                                           ; $4f82: $3c
	inc  d                                           ; $4f83: $14
	ld   a, [hl+]                                    ; $4f84: $2a
	ld   c, $51                                      ; $4f85: $0e $51
	nop                                              ; $4f87: $00
	ld   [hl+], a                                    ; $4f88: $22
	ld   c, $50                                      ; $4f89: $0e $50
	inc  bc                                          ; $4f8b: $03
	ld   a, [hl+]                                    ; $4f8c: $2a
	ld   b, $4f                                      ; $4f8d: $06 $4f
	nop                                              ; $4f8f: $00
	ld   [hl+], a                                    ; $4f90: $22
	ld   b, $4e                                      ; $4f91: $06 $4e
	inc  bc                                          ; $4f93: $03
	ld   a, [de]                                     ; $4f94: $1a
	dec  c                                           ; $4f95: $0d
	ld   c, l                                        ; $4f96: $4d
	inc  bc                                          ; $4f97: $03
	ld   [de], a                                     ; $4f98: $12
	dec  c                                           ; $4f99: $0d
	ld   c, h                                        ; $4f9a: $4c
	inc  bc                                          ; $4f9b: $03
	ld   a, [de]                                     ; $4f9c: $1a
	dec  b                                           ; $4f9d: $05
	ld   c, e                                        ; $4f9e: $4b
	inc  bc                                          ; $4f9f: $03
	ld   [de], a                                     ; $4fa0: $12
	dec  b                                           ; $4fa1: $05
	ld   c, d                                        ; $4fa2: $4a
	inc  bc                                          ; $4fa3: $03
	ld   a, [de]                                     ; $4fa4: $1a
	dec  d                                           ; $4fa5: $15
	ld   b, c                                        ; $4fa6: $41
	inc  bc                                          ; $4fa7: $03
	ld   [de], a                                     ; $4fa8: $12
	dec  d                                           ; $4fa9: $15
	ld   b, b                                        ; $4faa: $40
	inc  bc                                          ; $4fab: $03
	ld   a, [bc]                                     ; $4fac: $0a
	db   $10                                         ; $4fad: $10
	ccf                                              ; $4fae: $3f
	inc  b                                           ; $4faf: $04
	ld   [bc], a                                     ; $4fb0: $02
	db   $10                                         ; $4fb1: $10
	ld   a, $04                                      ; $4fb2: $3e $04
	ld   a, [bc]                                     ; $4fb4: $0a
	ld   [$043d], sp                                 ; $4fb5: $08 $3d $04
	ld   [bc], a                                     ; $4fb8: $02
	ld   [$143c], sp                                 ; $4fb9: $08 $3c $14
	ld   a, [hl+]                                    ; $4fbc: $2a
	add  hl, bc                                      ; $4fbd: $09
	ld   e, c                                        ; $4fbe: $59
	nop                                              ; $4fbf: $00
	ld   [hl+], a                                    ; $4fc0: $22
	add  hl, bc                                      ; $4fc1: $09
	ld   e, b                                        ; $4fc2: $58
	inc  bc                                          ; $4fc3: $03
	ld   a, [hl+]                                    ; $4fc4: $2a
	ld   bc, $0057                                   ; $4fc5: $01 $57 $00
	ld   [hl+], a                                    ; $4fc8: $22
	ld   bc, $0356                                   ; $4fc9: $01 $56 $03
	ld   a, [de]                                     ; $4fcc: $1a
	add  hl, bc                                      ; $4fcd: $09
	ld   d, l                                        ; $4fce: $55
	inc  bc                                          ; $4fcf: $03
	ld   [de], a                                     ; $4fd0: $12
	add  hl, bc                                      ; $4fd1: $09
	ld   d, h                                        ; $4fd2: $54
	inc  bc                                          ; $4fd3: $03
	ld   a, [de]                                     ; $4fd4: $1a
	ld   bc, $0353                                   ; $4fd5: $01 $53 $03
	ld   [de], a                                     ; $4fd8: $12
	ld   bc, $0352                                   ; $4fd9: $01 $52 $03
	ld   a, [de]                                     ; $4fdc: $1a
	ld   de, $0341                                   ; $4fdd: $11 $41 $03
	ld   [de], a                                     ; $4fe0: $12
	ld   de, $0340                                   ; $4fe1: $11 $40 $03
	ld   a, [bc]                                     ; $4fe4: $0a
	inc  c                                           ; $4fe5: $0c
	ccf                                              ; $4fe6: $3f
	inc  b                                           ; $4fe7: $04
	ld   [bc], a                                     ; $4fe8: $02
	inc  c                                           ; $4fe9: $0c
	ld   a, $04                                      ; $4fea: $3e $04
	ld   a, [bc]                                     ; $4fec: $0a
	inc  b                                           ; $4fed: $04
	dec  a                                           ; $4fee: $3d
	inc  b                                           ; $4fef: $04
	ld   [bc], a                                     ; $4ff0: $02
	inc  b                                           ; $4ff1: $04
	inc  a                                           ; $4ff2: $3c
	inc  d                                           ; $4ff3: $14
	jr   z, jr_03f_5000                              ; $4ff4: $28 $0a

	ld   h, a                                        ; $4ff6: $67
	inc  bc                                          ; $4ff7: $03
	jr   nz, jr_03f_5004                             ; $4ff8: $20 $0a

	ld   h, [hl]                                     ; $4ffa: $66
	inc  bc                                          ; $4ffb: $03
	jr   z, jr_03f_5000                              ; $4ffc: $28 $02

	ld   h, l                                        ; $4ffe: $65
	inc  bc                                          ; $4fff: $03

jr_03f_5000:
	jr   nz, jr_03f_5004                             ; $5000: $20 $02

	ld   h, h                                        ; $5002: $64
	inc  bc                                          ; $5003: $03

jr_03f_5004:
	jr   jr_03f_500b                                 ; $5004: $18 $05

	ld   h, e                                        ; $5006: $63
	inc  bc                                          ; $5007: $03
	db   $10                                         ; $5008: $10
	dec  b                                           ; $5009: $05
	ld   h, d                                        ; $500a: $62

jr_03f_500b:
	inc  bc                                          ; $500b: $03
	ld   [$3f09], sp                                 ; $500c: $08 $09 $3f
	inc  b                                           ; $500f: $04
	nop                                              ; $5010: $00
	add  hl, bc                                      ; $5011: $09
	ld   a, $04                                      ; $5012: $3e $04
	ld   [$3d01], sp                                 ; $5014: $08 $01 $3d
	inc  b                                           ; $5017: $04
	nop                                              ; $5018: $00
	ld   bc, $143c                                   ; $5019: $01 $3c $14
	ld   a, [hl+]                                    ; $501c: $2a
	dec  c                                           ; $501d: $0d
	ld   l, a                                        ; $501e: $6f
	nop                                              ; $501f: $00
	ld   [hl+], a                                    ; $5020: $22
	dec  c                                           ; $5021: $0d
	ld   l, [hl]                                     ; $5022: $6e
	inc  bc                                          ; $5023: $03
	ld   a, [hl+]                                    ; $5024: $2a
	dec  b                                           ; $5025: $05
	ld   l, l                                        ; $5026: $6d
	nop                                              ; $5027: $00
	ld   [hl+], a                                    ; $5028: $22
	dec  b                                           ; $5029: $05
	ld   l, h                                        ; $502a: $6c
	inc  bc                                          ; $502b: $03
	ld   a, [de]                                     ; $502c: $1a
	ld   c, $6b                                      ; $502d: $0e $6b
	inc  bc                                          ; $502f: $03
	ld   [de], a                                     ; $5030: $12
	ld   c, $6a                                      ; $5031: $0e $6a
	inc  bc                                          ; $5033: $03
	ld   a, [de]                                     ; $5034: $1a
	ld   b, $69                                      ; $5035: $06 $69
	inc  bc                                          ; $5037: $03
	ld   [de], a                                     ; $5038: $12
	ld   b, $68                                      ; $5039: $06 $68
	inc  bc                                          ; $503b: $03
	ld   a, [bc]                                     ; $503c: $0a
	inc  c                                           ; $503d: $0c
	ccf                                              ; $503e: $3f
	inc  b                                           ; $503f: $04
	ld   [bc], a                                     ; $5040: $02
	inc  c                                           ; $5041: $0c
	ld   a, $04                                      ; $5042: $3e $04
	ld   a, [bc]                                     ; $5044: $0a
	inc  b                                           ; $5045: $04
	dec  a                                           ; $5046: $3d
	inc  b                                           ; $5047: $04
	ld   [bc], a                                     ; $5048: $02
	inc  b                                           ; $5049: $04
	inc  a                                           ; $504a: $3c
	inc  d                                           ; $504b: $14
	ld   a, [de]                                     ; $504c: $1a
	inc  c                                           ; $504d: $0c
	ld   a, c                                        ; $504e: $79
	inc  bc                                          ; $504f: $03
	ld   [de], a                                     ; $5050: $12
	inc  c                                           ; $5051: $0c
	ld   a, b                                        ; $5052: $78
	inc  bc                                          ; $5053: $03
	ld   a, [de]                                     ; $5054: $1a
	inc  b                                           ; $5055: $04
	ld   [hl], a                                     ; $5056: $77
	inc  bc                                          ; $5057: $03
	ld   [de], a                                     ; $5058: $12
	inc  b                                           ; $5059: $04
	halt                                             ; $505a: $76
	inc  bc                                          ; $505b: $03
	ld   a, [de]                                     ; $505c: $1a
	db   $fc                                         ; $505d: $fc
	ld   [hl], l                                     ; $505e: $75
	inc  bc                                          ; $505f: $03
	ld   [de], a                                     ; $5060: $12
	db   $fc                                         ; $5061: $fc
	ld   [hl], h                                     ; $5062: $74
	inc  bc                                          ; $5063: $03
	cp   $0b                                         ; $5064: $fe $0b
	ld   a, a                                        ; $5066: $7f
	inc  bc                                          ; $5067: $03
	ld   a, [bc]                                     ; $5068: $0a
	ld   b, $73                                      ; $5069: $06 $73
	inc  b                                           ; $506b: $04
	ld   [bc], a                                     ; $506c: $02
	ld   b, $72                                      ; $506d: $06 $72
	inc  b                                           ; $506f: $04
	ld   a, [bc]                                     ; $5070: $0a
	cp   $71                                         ; $5071: $fe $71
	inc  b                                           ; $5073: $04
	ld   [bc], a                                     ; $5074: $02
	cp   $70                                         ; $5075: $fe $70
	inc  b                                           ; $5077: $04
	or   $0b                                         ; $5078: $f6 $0b
	ld   a, [hl]                                     ; $507a: $7e
	inc  bc                                          ; $507b: $03
	ld   a, [hl+]                                    ; $507c: $2a
	dec  b                                           ; $507d: $05
	ld   a, l                                        ; $507e: $7d
	nop                                              ; $507f: $00
	ld   [hl+], a                                    ; $5080: $22
	dec  b                                           ; $5081: $05
	ld   a, h                                        ; $5082: $7c
	inc  bc                                          ; $5083: $03
	ld   a, [hl+]                                    ; $5084: $2a
	db   $fd                                         ; $5085: $fd
	ld   a, e                                        ; $5086: $7b
	nop                                              ; $5087: $00
	ld   [hl+], a                                    ; $5088: $22
	db   $fd                                         ; $5089: $fd
	ld   a, d                                        ; $508a: $7a
	inc  de                                          ; $508b: $13
	ld   a, [hl+]                                    ; $508c: $2a
	dec  b                                           ; $508d: $05
	ld   a, l                                        ; $508e: $7d
	nop                                              ; $508f: $00
	ld   [hl+], a                                    ; $5090: $22
	dec  b                                           ; $5091: $05
	ld   a, h                                        ; $5092: $7c
	inc  bc                                          ; $5093: $03
	ld   a, [hl+]                                    ; $5094: $2a
	db   $fd                                         ; $5095: $fd
	ld   a, e                                        ; $5096: $7b
	nop                                              ; $5097: $00
	ld   [hl+], a                                    ; $5098: $22
	db   $fd                                         ; $5099: $fd
	ld   a, d                                        ; $509a: $7a
	inc  bc                                          ; $509b: $03
	ld   a, [de]                                     ; $509c: $1a
	inc  c                                           ; $509d: $0c
	ld   a, c                                        ; $509e: $79
	inc  bc                                          ; $509f: $03
	ld   [de], a                                     ; $50a0: $12
	inc  c                                           ; $50a1: $0c
	ld   a, b                                        ; $50a2: $78
	inc  bc                                          ; $50a3: $03
	ld   a, [de]                                     ; $50a4: $1a
	inc  b                                           ; $50a5: $04
	ld   [hl], a                                     ; $50a6: $77
	inc  bc                                          ; $50a7: $03
	ld   [de], a                                     ; $50a8: $12
	inc  b                                           ; $50a9: $04
	halt                                             ; $50aa: $76
	inc  bc                                          ; $50ab: $03
	ld   a, [de]                                     ; $50ac: $1a
	db   $fc                                         ; $50ad: $fc
	ld   [hl], l                                     ; $50ae: $75
	inc  bc                                          ; $50af: $03
	ld   [de], a                                     ; $50b0: $12
	db   $fc                                         ; $50b1: $fc
	ld   [hl], h                                     ; $50b2: $74
	inc  bc                                          ; $50b3: $03
	ld   a, [bc]                                     ; $50b4: $0a
	ld   b, $73                                      ; $50b5: $06 $73
	inc  b                                           ; $50b7: $04
	ld   [bc], a                                     ; $50b8: $02
	ld   b, $72                                      ; $50b9: $06 $72
	inc  b                                           ; $50bb: $04
	ld   a, [bc]                                     ; $50bc: $0a
	cp   $71                                         ; $50bd: $fe $71
	inc  b                                           ; $50bf: $04
	ld   [bc], a                                     ; $50c0: $02
	cp   $70                                         ; $50c1: $fe $70
	inc  d                                           ; $50c3: $14
	ld   a, [hl+]                                    ; $50c4: $2a
	jr   jr_03f_50d8                                 ; $50c5: $18 $11

	nop                                              ; $50c7: $00
	ld   [hl+], a                                    ; $50c8: $22
	jr   @+$12                                       ; $50c9: $18 $10

	ld   bc, $102a                                   ; $50cb: $01 $2a $10
	rrca                                             ; $50ce: $0f
	nop                                              ; $50cf: $00
	ld   [hl+], a                                    ; $50d0: $22
	db   $10                                         ; $50d1: $10
	ld   c, $01                                      ; $50d2: $0e $01
	ld   a, [hl+]                                    ; $50d4: $2a
	ld   [$000d], sp                                 ; $50d5: $08 $0d $00

jr_03f_50d8:
	ld   [hl+], a                                    ; $50d8: $22
	ld   [$010c], sp                                 ; $50d9: $08 $0c $01
	ld   a, [bc]                                     ; $50dc: $0a
	jr   jr_03f_50e4                                 ; $50dd: $18 $05

	nop                                              ; $50df: $00
	ld   [bc], a                                     ; $50e0: $02
	jr   jr_03f_50e7                                 ; $50e1: $18 $04

	nop                                              ; $50e3: $00

jr_03f_50e4:
	ld   a, [de]                                     ; $50e4: $1a
	jr   @+$0d                                       ; $50e5: $18 $0b

jr_03f_50e7:
	ld   bc, $1812                                   ; $50e7: $01 $12 $18
	ld   a, [bc]                                     ; $50ea: $0a
	ld   bc, $180a                                   ; $50eb: $01 $0a $18
	ld   bc, $0202                                   ; $50ee: $01 $02 $02
	jr   jr_03f_50f3                                 ; $50f1: $18 $00

jr_03f_50f3:
	ld   [bc], a                                     ; $50f3: $02
	ld   a, [de]                                     ; $50f4: $1a
	db   $10                                         ; $50f5: $10
	add  hl, bc                                      ; $50f6: $09
	ld   bc, $1012                                   ; $50f7: $01 $12 $10
	ld   [$1a01], sp                                 ; $50fa: $08 $01 $1a
	ld   [$0107], sp                                 ; $50fd: $08 $07 $01
	ld   [de], a                                     ; $5100: $12
	ld   [$0106], sp                                 ; $5101: $08 $06 $01
	ld   a, [bc]                                     ; $5104: $0a
	db   $10                                         ; $5105: $10
	inc  bc                                          ; $5106: $03
	nop                                              ; $5107: $00
	ld   [bc], a                                     ; $5108: $02
	db   $10                                         ; $5109: $10
	ld   [bc], a                                     ; $510a: $02
	db   $10                                         ; $510b: $10
	ld   [de], a                                     ; $510c: $12
	jr   jr_03f_512b                                 ; $510d: $18 $1c

	ld   bc, $180a                                   ; $510f: $01 $0a $18
	rla                                              ; $5112: $17
	nop                                              ; $5113: $00
	ld   [bc], a                                     ; $5114: $02
	jr   jr_03f_512d                                 ; $5115: $18 $16

	nop                                              ; $5117: $00
	ld   a, [bc]                                     ; $5118: $0a
	jr   @+$15                                       ; $5119: $18 $13

	ld   [bc], a                                     ; $511b: $02
	ld   [bc], a                                     ; $511c: $02
	jr   jr_03f_5131                                 ; $511d: $18 $12

	ld   [bc], a                                     ; $511f: $02
	ld   a, [de]                                     ; $5120: $1a
	jr   jr_03f_5140                                 ; $5121: $18 $1d

	ld   bc, $100a                                   ; $5123: $01 $0a $10
	dec  d                                           ; $5126: $15
	nop                                              ; $5127: $00
	ld   [bc], a                                     ; $5128: $02
	db   $10                                         ; $5129: $10
	inc  d                                           ; $512a: $14

jr_03f_512b:
	nop                                              ; $512b: $00
	ld   a, [hl+]                                    ; $512c: $2a

jr_03f_512d:
	jr   jr_03f_5152                                 ; $512d: $18 $23

	nop                                              ; $512f: $00
	ld   [hl+], a                                    ; $5130: $22

jr_03f_5131:
	jr   jr_03f_5155                                 ; $5131: $18 $22

	ld   bc, $102a                                   ; $5133: $01 $2a $10
	ld   hl, $2200                                   ; $5136: $21 $00 $22
	db   $10                                         ; $5139: $10
	jr   nz, jr_03f_513d                             ; $513a: $20 $01

	ld   a, [hl+]                                    ; $513c: $2a

jr_03f_513d:
	ld   [$001f], sp                                 ; $513d: $08 $1f $00

jr_03f_5140:
	ld   [hl+], a                                    ; $5140: $22
	ld   [$011e], sp                                 ; $5141: $08 $1e $01
	ld   a, [de]                                     ; $5144: $1a
	db   $10                                         ; $5145: $10
	dec  de                                          ; $5146: $1b
	ld   bc, $1012                                   ; $5147: $01 $12 $10
	ld   a, [de]                                     ; $514a: $1a
	ld   bc, $081a                                   ; $514b: $01 $1a $08
	add  hl, de                                      ; $514e: $19
	ld   bc, $0812                                   ; $514f: $01 $12 $08

jr_03f_5152:
	jr   @+$13                                       ; $5152: $18 $11

	ld   a, [hl+]                                    ; $5154: $2a

jr_03f_5155:
	rla                                              ; $5155: $17
	dec  sp                                          ; $5156: $3b
	nop                                              ; $5157: $00
	ld   a, [hl+]                                    ; $5158: $2a
	rrca                                             ; $5159: $0f
	add  hl, sp                                      ; $515a: $39
	nop                                              ; $515b: $00
	ld   a, [hl+]                                    ; $515c: $2a
	rlca                                             ; $515d: $07
	scf                                              ; $515e: $37
	nop                                              ; $515f: $00
	ld   a, [de]                                     ; $5160: $1a
	rrca                                             ; $5161: $0f
	inc  sp                                          ; $5162: $33
	ld   bc, $1722                                   ; $5163: $01 $22 $17
	ld   a, [hl-]                                    ; $5166: $3a
	ld   bc, $171a                                   ; $5167: $01 $1a $17
	dec  [hl]                                        ; $516a: $35
	ld   bc, $0722                                   ; $516b: $01 $22 $07
	ld   [hl], $01                                   ; $516e: $36 $01
	ld   a, [de]                                     ; $5170: $1a
	rlca                                             ; $5171: $07
	ld   sp, $1201                                   ; $5172: $31 $01 $12
	rla                                              ; $5175: $17
	inc  [hl]                                        ; $5176: $34
	ld   bc, $0f12                                   ; $5177: $01 $12 $0f
	ld   [hl-], a                                    ; $517a: $32
	ld   bc, $0712                                   ; $517b: $01 $12 $07
	jr   nc, jr_03f_5181                             ; $517e: $30 $01

	ld   a, [de]                                     ; $5180: $1a

jr_03f_5181:
	rla                                              ; $5181: $17
	add  hl, hl                                      ; $5182: $29
	nop                                              ; $5183: $00
	ld   [de], a                                     ; $5184: $12
	rla                                              ; $5185: $17
	jr   z, jr_03f_518a                              ; $5186: $28 $02

	ld   a, [de]                                     ; $5188: $1a
	rlca                                             ; $5189: $07

jr_03f_518a:
	daa                                              ; $518a: $27
	nop                                              ; $518b: $00
	ld   [de], a                                     ; $518c: $12
	rlca                                             ; $518d: $07
	ld   h, $02                                      ; $518e: $26 $02
	ld   a, [bc]                                     ; $5190: $0a
	rrca                                             ; $5191: $0f
	dec  l                                           ; $5192: $2d
	nop                                              ; $5193: $00
	ld   [bc], a                                     ; $5194: $02
	rrca                                             ; $5195: $0f
	inc  l                                           ; $5196: $2c
	nop                                              ; $5197: $00
	ld   a, [bc]                                     ; $5198: $0a
	rlca                                             ; $5199: $07
	dec  hl                                          ; $519a: $2b
	nop                                              ; $519b: $00
	ld   [bc], a                                     ; $519c: $02
	rlca                                             ; $519d: $07
	ld   a, [hl+]                                    ; $519e: $2a
	nop                                              ; $519f: $00
	ld   a, [bc]                                     ; $51a0: $0a
	ld   c, $25                                      ; $51a1: $0e $25
	ld   [bc], a                                     ; $51a3: $02
	ld   [bc], a                                     ; $51a4: $02
	ld   c, $24                                      ; $51a5: $0e $24
	ld   bc, $0f22                                   ; $51a7: $01 $22 $0f
	jr   c, jr_03f_51ad                              ; $51aa: $38 $01

	ld   a, [bc]                                     ; $51ac: $0a

jr_03f_51ad:
	rla                                              ; $51ad: $17
	cpl                                              ; $51ae: $2f
	nop                                              ; $51af: $00
	ld   [bc], a                                     ; $51b0: $02
	rla                                              ; $51b1: $17
	ld   l, $10                                      ; $51b2: $2e $10


; Small cursor
Data_3f_51b4:
if def(VWF)
	db $12, $08, $a1, $68
	db $1a, $08, $a0, $68
	db $12, $04, $a1, $48
	db $1a, $04, $a0, $48
	db $16, $08, $a1, $28
	db $0e, $08, $a0, $28
	db $16, $04, $a1, $08
	db $0e, $04, $a0, $18
else
	db $12, $0a, $a1, $68
	db $1a, $0a, $a0, $68
	db $12, $06, $a1, $48
	db $1a, $06, $a0, $48
	db $16, $0a, $a1, $28
	db $0e, $0a, $a0, $28
	db $16, $06, $a1, $08
	db $0e, $06, $a0, $18
endc
	
	
Data_3f_51d4:
	db $12, $12, $a1, $68
	db $1a, $12, $a0, $68
	db $12, $06, $a1, $48
if def(VWF)
	db $1a, $fe, $a0, $48 ; bottom-left
	db $16, $12, $a1, $28
	db $0e, $12, $a0, $28
	db $16, $06, $a1, $08
	db $0e, $fe, $a0, $18 ; top-left
else
	db $1a, $06, $a0, $48 ; bottom-left
	db $16, $12, $a1, $28
	db $0e, $12, $a0, $28
	db $16, $06, $a1, $08
	db $0e, $06, $a0, $18 ; top-left
endc
	
	
; underline
Data_3f_51f4:
if def(VWF)
	db $18, $06, $a7, $09
	db $10, $06, $a6, $19
else
	db $18, $08, $a7, $09
	db $10, $08, $a6, $19
endc


Data_3f_51fc:
	stop                                             ; $51fc: $10 $00
	stop                                             ; $51fe: $10 $00
	ld   [rRAMG], sp                                 ; $5200: $08 $00 $00

jr_03f_5203:
	db   $10                                         ; $5203: $10
	db   $10                                         ; $5204: $10
	ld   [$2010], sp                                 ; $5205: $08 $10 $20
	ld   [$0008], sp                                 ; $5208: $08 $08 $00
	jr   nc, @+$12                                   ; $520b: $30 $10

jr_03f_520d:
	nop                                              ; $520d: $00
	db   $10                                         ; $520e: $10
	ld   bc, $0008                                   ; $520f: $01 $08 $00
	nop                                              ; $5212: $00
	ld   de, $0810                                   ; $5213: $11 $10 $08
	db   $10                                         ; $5216: $10
	ld   hl, $0808                                   ; $5217: $21 $08 $08
	nop                                              ; $521a: $00
	ld   sp, $0010                                   ; $521b: $31 $10 $00
	db   $10                                         ; $521e: $10
	ld   [bc], a                                     ; $521f: $02
	ld   [rRAMG], sp                                 ; $5220: $08 $00 $00
	ld   [de], a                                     ; $5223: $12
	db   $10                                         ; $5224: $10
	ld   [$2210], sp                                 ; $5225: $08 $10 $22
	ld   [$0008], sp                                 ; $5228: $08 $08 $00
	ld   [hl-], a                                    ; $522b: $32
	rla                                              ; $522c: $17
	ld   a, [de]                                     ; $522d: $1a
	inc  bc                                          ; $522e: $03
	nop                                              ; $522f: $00
	rrca                                             ; $5230: $0f
	ld   a, [de]                                     ; $5231: $1a
	ld   [bc], a                                     ; $5232: $02
	nop                                              ; $5233: $00
	rla                                              ; $5234: $17
	ld   [de], a                                     ; $5235: $12
	ld   bc, $0f00                                   ; $5236: $01 $00 $0f
	ld   [de], a                                     ; $5239: $12
	nop                                              ; $523a: $00
	db   $10                                         ; $523b: $10
	jr   @+$1c                                       ; $523c: $18 $1a

	rlca                                             ; $523e: $07
	nop                                              ; $523f: $00
	db   $10                                         ; $5240: $10
	ld   a, [de]                                     ; $5241: $1a
	ld   b, $00                                      ; $5242: $06 $00
	jr   @+$14                                       ; $5244: $18 $12

	dec  b                                           ; $5246: $05
	nop                                              ; $5247: $00
	db   $10                                         ; $5248: $10
	ld   [de], a                                     ; $5249: $12
	inc  b                                           ; $524a: $04
	db   $10                                         ; $524b: $10
	jr   @+$07                                       ; $524c: $18 $05

	add  hl, bc                                      ; $524e: $09
	ld   bc, $0510                                   ; $524f: $01 $10 $05
	ld   [$1811], sp                                 ; $5252: $08 $11 $18
	ld   b, $09                                      ; $5255: $06 $09
	ld   bc, $0610                                   ; $5257: $01 $10 $06
	ld   [$1811], sp                                 ; $525a: $08 $11 $18
	rlca                                             ; $525d: $07
	add  hl, bc                                      ; $525e: $09
	ld   bc, $0710                                   ; $525f: $01 $10 $07
	ld   [$1811], sp                                 ; $5262: $08 $11 $18
	ld   b, $09                                      ; $5265: $06 $09
	ld   bc, $0610                                   ; $5267: $01 $10 $06
	ld   [$1811], sp                                 ; $526a: $08 $11 $18
	rlca                                             ; $526d: $07
	add  hl, bc                                      ; $526e: $09
	ld   bc, $0710                                   ; $526f: $01 $10 $07
	ld   [$1811], sp                                 ; $5272: $08 $11 $18
	ld   [$0109], sp                                 ; $5275: $08 $09 $01
	db   $10                                         ; $5278: $10
	ld   [$1108], sp                                 ; $5279: $08 $08 $11
	ld   hl, $0108                                   ; $527c: $21 $08 $01
	ld   bc, $0819                                   ; $527f: $01 $19 $08
	nop                                              ; $5282: $00
	ld   bc, $0830                                   ; $5283: $01 $30 $08
	inc  bc                                          ; $5286: $03
	ld   bc, $0828                                   ; $5287: $01 $28 $08
	ld   [bc], a                                     ; $528a: $02
	ld   bc, $2828                                   ; $528b: $01 $28 $28
	rrca                                             ; $528e: $0f
	ld   [bc], a                                     ; $528f: $02
	jr   nz, jr_03f_52ba                             ; $5290: $20 $28

	ld   c, $02                                      ; $5292: $0e $02
	jr   z, jr_03f_52b6                              ; $5294: $28 $20

	dec  c                                           ; $5296: $0d
	ld   [bc], a                                     ; $5297: $02
	jr   nz, jr_03f_52ba                             ; $5298: $20 $20

	inc  c                                           ; $529a: $0c
	ld   [bc], a                                     ; $529b: $02
	jr   z, jr_03f_52b6                              ; $529c: $28 $18

	dec  bc                                          ; $529e: $0b
	ld   bc, $1820                                   ; $529f: $01 $20 $18
	ld   a, [bc]                                     ; $52a2: $0a
	ld   bc, $1818                                   ; $52a3: $01 $18 $18
	add  hl, bc                                      ; $52a6: $09
	ld   bc, $1810                                   ; $52a7: $01 $10 $18
	ld   [$2801], sp                                 ; $52aa: $08 $01 $28
	db   $10                                         ; $52ad: $10
	rlca                                             ; $52ae: $07
	ld   bc, $1020                                   ; $52af: $01 $20 $10
	ld   b, $01                                      ; $52b2: $06 $01
	jr   jr_03f_52c6                                 ; $52b4: $18 $10

jr_03f_52b6:
	dec  b                                           ; $52b6: $05
	ld   bc, $1010                                   ; $52b7: $01 $10 $10

jr_03f_52ba:
	inc  b                                           ; $52ba: $04
	ld   de, $0821                                   ; $52bb: $11 $21 $08
	ld   bc, $1901                                   ; $52be: $01 $01 $19
	ld   [$0100], sp                                 ; $52c1: $08 $00 $01
	jr   nc, jr_03f_52ce                             ; $52c4: $30 $08

jr_03f_52c6:
	inc  bc                                          ; $52c6: $03
	ld   bc, $0828                                   ; $52c7: $01 $28 $08
	ld   [bc], a                                     ; $52ca: $02
	ld   bc, $1028                                   ; $52cb: $01 $28 $10

jr_03f_52ce:
	ld   de, $2001                                   ; $52ce: $11 $01 $20
	db   $10                                         ; $52d1: $10
	db   $10                                         ; $52d2: $10
	ld   bc, $1018                                   ; $52d3: $01 $18 $10
	dec  b                                           ; $52d6: $05
	ld   bc, $1010                                   ; $52d7: $01 $10 $10
	inc  b                                           ; $52da: $04
	ld   bc, $2828                                   ; $52db: $01 $28 $28
	rrca                                             ; $52de: $0f
	ld   [bc], a                                     ; $52df: $02
	jr   nz, jr_03f_530a                             ; $52e0: $20 $28

	ld   c, $02                                      ; $52e2: $0e $02
	jr   z, jr_03f_5306                              ; $52e4: $28 $20

	dec  c                                           ; $52e6: $0d
	ld   [bc], a                                     ; $52e7: $02
	jr   nz, jr_03f_530a                             ; $52e8: $20 $20

	inc  c                                           ; $52ea: $0c
	ld   [bc], a                                     ; $52eb: $02
	jr   z, jr_03f_5306                              ; $52ec: $28 $18

	dec  bc                                          ; $52ee: $0b
	ld   bc, $1820                                   ; $52ef: $01 $20 $18
	ld   a, [bc]                                     ; $52f2: $0a
	ld   bc, $1818                                   ; $52f3: $01 $18 $18
	add  hl, bc                                      ; $52f6: $09
	ld   bc, $1810                                   ; $52f7: $01 $10 $18
	ld   [$2811], sp                                 ; $52fa: $08 $11 $28
	jr   z, jr_03f_533e                              ; $52fd: $28 $3f

	ld   [bc], a                                     ; $52ff: $02
	jr   nz, jr_03f_532a                             ; $5300: $20 $28

	ld   a, $02                                      ; $5302: $3e $02
	jr   z, jr_03f_5326                              ; $5304: $28 $20

jr_03f_5306:
	dec  a                                           ; $5306: $3d
	ld   [bc], a                                     ; $5307: $02
	jr   nz, jr_03f_532a                             ; $5308: $20 $20

jr_03f_530a:
	inc  a                                           ; $530a: $3c
	ld   [bc], a                                     ; $530b: $02
	jr   z, jr_03f_5326                              ; $530c: $28 $18

	dec  sp                                          ; $530e: $3b
	ld   bc, $1820                                   ; $530f: $01 $20 $18
	ld   a, [hl-]                                    ; $5312: $3a
	ld   bc, $1818                                   ; $5313: $01 $18 $18
	add  hl, sp                                      ; $5316: $39
	ld   bc, $1810                                   ; $5317: $01 $10 $18
	jr   c, @+$03                                    ; $531a: $38 $01

	jr   z, jr_03f_532e                              ; $531c: $28 $10

	dec  d                                           ; $531e: $15
	ld   bc, $1020                                   ; $531f: $01 $20 $10
	inc  d                                           ; $5322: $14
	ld   bc, $1018                                   ; $5323: $01 $18 $10

jr_03f_5326:
	inc  de                                          ; $5326: $13
	ld   bc, $1010                                   ; $5327: $01 $10 $10

jr_03f_532a:
	ld   [de], a                                     ; $532a: $12
	ld   bc, $081e                                   ; $532b: $01 $1e $08

jr_03f_532e:
	ld   bc, $1601                                   ; $532e: $01 $01 $16
	ld   [$1100], sp                                 ; $5331: $08 $00 $11
	jr   z, jr_03f_535e                              ; $5334: $28 $28

	ccf                                              ; $5336: $3f
	ld   [bc], a                                     ; $5337: $02
	jr   nz, jr_03f_5362                             ; $5338: $20 $28

	ld   a, $02                                      ; $533a: $3e $02
	jr   z, jr_03f_535e                              ; $533c: $28 $20

jr_03f_533e:
	dec  a                                           ; $533e: $3d
	ld   [bc], a                                     ; $533f: $02
	jr   nz, jr_03f_5362                             ; $5340: $20 $20

	inc  a                                           ; $5342: $3c
	ld   [bc], a                                     ; $5343: $02
	jr   z, jr_03f_535e                              ; $5344: $28 $18

	rra                                              ; $5346: $1f
	ld   bc, $1820                                   ; $5347: $01 $20 $18
	ld   e, $01                                      ; $534a: $1e $01
	jr   jr_03f_5366                                 ; $534c: $18 $18

	dec  e                                           ; $534e: $1d
	ld   bc, $1810                                   ; $534f: $01 $10 $18
	inc  e                                           ; $5352: $1c
	ld   bc, $1028                                   ; $5353: $01 $28 $10
	dec  de                                          ; $5356: $1b
	ld   bc, $1020                                   ; $5357: $01 $20 $10
	ld   a, [de]                                     ; $535a: $1a
	ld   bc, $1018                                   ; $535b: $01 $18 $10

jr_03f_535e:
	add  hl, de                                      ; $535e: $19
	ld   bc, $1010                                   ; $535f: $01 $10 $10

jr_03f_5362:
	jr   @+$03                                       ; $5362: $18 $01

	jr   nz, jr_03f_536e                             ; $5364: $20 $08

jr_03f_5366:
	rla                                              ; $5366: $17
	ld   bc, $0818                                   ; $5367: $01 $18 $08
	ld   d, $11                                      ; $536a: $16 $11
	jr   z, jr_03f_5396                              ; $536c: $28 $28

jr_03f_536e:
	ccf                                              ; $536e: $3f
	ld   [bc], a                                     ; $536f: $02
	jr   nz, jr_03f_539a                             ; $5370: $20 $28

	ld   a, $02                                      ; $5372: $3e $02
	jr   z, jr_03f_5396                              ; $5374: $28 $20

	dec  a                                           ; $5376: $3d
	ld   [bc], a                                     ; $5377: $02
	jr   nz, jr_03f_539a                             ; $5378: $20 $20

	inc  a                                           ; $537a: $3c
	ld   [bc], a                                     ; $537b: $02
	jr   z, jr_03f_5396                              ; $537c: $28 $18

	rra                                              ; $537e: $1f
	ld   bc, $1820                                   ; $537f: $01 $20 $18
	ld   e, $01                                      ; $5382: $1e $01
	jr   jr_03f_539e                                 ; $5384: $18 $18

	dec  e                                           ; $5386: $1d
	ld   bc, $1810                                   ; $5387: $01 $10 $18
	inc  e                                           ; $538a: $1c
	ld   bc, $1028                                   ; $538b: $01 $28 $10
	dec  de                                          ; $538e: $1b
	nop                                              ; $538f: $00
	jr   nz, jr_03f_53a2                             ; $5390: $20 $10

	ld   a, [de]                                     ; $5392: $1a
	nop                                              ; $5393: $00
	jr   @+$12                                       ; $5394: $18 $10

jr_03f_5396:
	add  hl, de                                      ; $5396: $19
	nop                                              ; $5397: $00
	db   $10                                         ; $5398: $10
	db   $10                                         ; $5399: $10

jr_03f_539a:
	jr   jr_03f_539c                                 ; $539a: $18 $00

jr_03f_539c:
	jr   nz, @+$0a                                   ; $539c: $20 $08

jr_03f_539e:
	rla                                              ; $539e: $17
	nop                                              ; $539f: $00
	jr   @+$0a                                       ; $53a0: $18 $08

jr_03f_53a2:
	ld   d, $10                                      ; $53a2: $16 $10
	db   $10                                         ; $53a4: $10
	jr   jr_03f_53f4                                 ; $53a5: $18 $4d

	inc  bc                                          ; $53a7: $03
	ld   [$4c18], sp                                 ; $53a8: $08 $18 $4c
	inc  bc                                          ; $53ab: $03
	jr   z, jr_03f_53d6                              ; $53ac: $28 $28

	ccf                                              ; $53ae: $3f
	ld   [bc], a                                     ; $53af: $02
	jr   nz, jr_03f_53da                             ; $53b0: $20 $28

	ld   a, $02                                      ; $53b2: $3e $02
	jr   z, jr_03f_53d6                              ; $53b4: $28 $20

	dec  a                                           ; $53b6: $3d
	ld   [bc], a                                     ; $53b7: $02
	jr   nz, jr_03f_53da                             ; $53b8: $20 $20

	inc  a                                           ; $53ba: $3c
	ld   [bc], a                                     ; $53bb: $02
	jr   z, jr_03f_53d6                              ; $53bc: $28 $18

	rra                                              ; $53be: $1f
	ld   bc, $1820                                   ; $53bf: $01 $20 $18
	ld   e, $01                                      ; $53c2: $1e $01
	jr   jr_03f_53de                                 ; $53c4: $18 $18

	dec  e                                           ; $53c6: $1d
	ld   bc, $1810                                   ; $53c7: $01 $10 $18
	inc  e                                           ; $53ca: $1c
	ld   bc, $1028                                   ; $53cb: $01 $28 $10
	dec  de                                          ; $53ce: $1b
	nop                                              ; $53cf: $00
	jr   nz, jr_03f_53e2                             ; $53d0: $20 $10

	ld   a, [de]                                     ; $53d2: $1a
	nop                                              ; $53d3: $00
	jr   jr_03f_53e6                                 ; $53d4: $18 $10

jr_03f_53d6:
	add  hl, de                                      ; $53d6: $19
	nop                                              ; $53d7: $00
	db   $10                                         ; $53d8: $10
	db   $10                                         ; $53d9: $10

jr_03f_53da:
	jr   jr_03f_53dc                                 ; $53da: $18 $00

jr_03f_53dc:
	jr   nz, jr_03f_53e6                             ; $53dc: $20 $08

jr_03f_53de:
	rla                                              ; $53de: $17
	nop                                              ; $53df: $00
	jr   jr_03f_53ea                                 ; $53e0: $18 $08

jr_03f_53e2:
	ld   d, $10                                      ; $53e2: $16 $10
	rrca                                             ; $53e4: $0f
	add  hl, de                                      ; $53e5: $19

jr_03f_53e6:
	ld   c, a                                        ; $53e6: $4f
	inc  bc                                          ; $53e7: $03
	rlca                                             ; $53e8: $07
	add  hl, de                                      ; $53e9: $19

jr_03f_53ea:
	ld   c, [hl]                                     ; $53ea: $4e
	inc  bc                                          ; $53eb: $03
	jr   z, jr_03f_5416                              ; $53ec: $28 $28

	ccf                                              ; $53ee: $3f
	ld   [bc], a                                     ; $53ef: $02
	jr   nz, jr_03f_541a                             ; $53f0: $20 $28

	ld   a, $02                                      ; $53f2: $3e $02

jr_03f_53f4:
	jr   z, jr_03f_5416                              ; $53f4: $28 $20

	dec  a                                           ; $53f6: $3d
	ld   [bc], a                                     ; $53f7: $02
	jr   nz, jr_03f_541a                             ; $53f8: $20 $20

	inc  a                                           ; $53fa: $3c
	ld   [bc], a                                     ; $53fb: $02
	jr   nz, jr_03f_5406                             ; $53fc: $20 $08

	rla                                              ; $53fe: $17
	nop                                              ; $53ff: $00
	jr   jr_03f_540a                                 ; $5400: $18 $08

	ld   d, $00                                      ; $5402: $16 $00
	jr   z, jr_03f_541e                              ; $5404: $28 $18

jr_03f_5406:
	rra                                              ; $5406: $1f
	ld   bc, $1820                                   ; $5407: $01 $20 $18

jr_03f_540a:
	ld   e, $01                                      ; $540a: $1e $01
	jr   jr_03f_5426                                 ; $540c: $18 $18

	dec  e                                           ; $540e: $1d
	ld   bc, $1810                                   ; $540f: $01 $10 $18
	inc  e                                           ; $5412: $1c
	ld   bc, $1028                                   ; $5413: $01 $28 $10

jr_03f_5416:
	dec  de                                          ; $5416: $1b
	nop                                              ; $5417: $00
	jr   nz, jr_03f_542a                             ; $5418: $20 $10

jr_03f_541a:
	ld   a, [de]                                     ; $541a: $1a
	nop                                              ; $541b: $00
	jr   jr_03f_542e                                 ; $541c: $18 $10

jr_03f_541e:
	add  hl, de                                      ; $541e: $19
	nop                                              ; $541f: $00
	db   $10                                         ; $5420: $10
	db   $10                                         ; $5421: $10
	jr   jr_03f_5434                                 ; $5422: $18 $10

	jr   z, jr_03f_544a                              ; $5424: $28 $24

jr_03f_5426:
	add  hl, hl                                      ; $5426: $29
	ld   [bc], a                                     ; $5427: $02
	jr   nz, jr_03f_544e                             ; $5428: $20 $24

jr_03f_542a:
	jr   z, jr_03f_542e                              ; $542a: $28 $02

	jr   z, jr_03f_545a                              ; $542c: $28 $2c

jr_03f_542e:
	dec  hl                                          ; $542e: $2b
	ld   [bc], a                                     ; $542f: $02
	jr   nz, jr_03f_545e                             ; $5430: $20 $2c

	ld   a, [hl+]                                    ; $5432: $2a
	ld   [bc], a                                     ; $5433: $02

jr_03f_5434:
	jr   z, jr_03f_5452                              ; $5434: $28 $1c

	daa                                              ; $5436: $27
	ld   [bc], a                                     ; $5437: $02
	jr   nz, jr_03f_5456                             ; $5438: $20 $1c

	ld   h, $02                                      ; $543a: $26 $02
	jr   z, jr_03f_5452                              ; $543c: $28 $14

	dec  h                                           ; $543e: $25
	ld   bc, $1420                                   ; $543f: $01 $20 $14
	inc  h                                           ; $5442: $24
	ld   bc, $0c28                                   ; $5443: $01 $28 $0c
	inc  hl                                          ; $5446: $23
	ld   bc, $0c20                                   ; $5447: $01 $20 $0c

jr_03f_544a:
	ld   [hl+], a                                    ; $544a: $22
	ld   bc, $0428                                   ; $544b: $01 $28 $04

jr_03f_544e:
	ld   hl, $2001                                   ; $544e: $21 $01 $20
	inc  b                                           ; $5451: $04

jr_03f_5452:
	jr   nz, @+$13                                   ; $5452: $20 $11

	jr   z, jr_03f_547e                              ; $5454: $28 $28

jr_03f_5456:
	ld   c, e                                        ; $5456: $4b
	ld   [bc], a                                     ; $5457: $02
	jr   nz, jr_03f_5482                             ; $5458: $20 $28

jr_03f_545a:
	ld   c, d                                        ; $545a: $4a
	ld   [bc], a                                     ; $545b: $02
	jr   z, jr_03f_547e                              ; $545c: $28 $20

jr_03f_545e:
	ld   c, c                                        ; $545e: $49
	ld   [bc], a                                     ; $545f: $02
	jr   nz, jr_03f_5482                             ; $5460: $20 $20

	ld   c, b                                        ; $5462: $48
	ld   [bc], a                                     ; $5463: $02
	jr   z, jr_03f_547e                              ; $5464: $28 $18

	inc  sp                                          ; $5466: $33
	ld   bc, $1820                                   ; $5467: $01 $20 $18
	ld   [hl-], a                                    ; $546a: $32
	ld   bc, $1818                                   ; $546b: $01 $18 $18
	ld   sp, $1001                                   ; $546e: $31 $01 $10
	jr   jr_03f_54a3                                 ; $5471: $18 $30

	ld   bc, $1028                                   ; $5473: $01 $28 $10
	cpl                                              ; $5476: $2f
	ld   bc, $1020                                   ; $5477: $01 $20 $10
	ld   l, $01                                      ; $547a: $2e $01
	jr   jr_03f_548e                                 ; $547c: $18 $10

jr_03f_547e:
	dec  l                                           ; $547e: $2d
	ld   bc, $1010                                   ; $547f: $01 $10 $10

jr_03f_5482:
	inc  l                                           ; $5482: $2c
	ld   bc, $081f                                   ; $5483: $01 $1f $08
	rla                                              ; $5486: $17
	ld   bc, $0817                                   ; $5487: $01 $17 $08
	ld   d, $11                                      ; $548a: $16 $11
	jr   z, jr_03f_54b6                              ; $548c: $28 $28

jr_03f_548e:
	ccf                                              ; $548e: $3f
	ld   [bc], a                                     ; $548f: $02
	jr   nz, jr_03f_54ba                             ; $5490: $20 $28

	ld   a, $02                                      ; $5492: $3e $02
	jr   z, jr_03f_54b6                              ; $5494: $28 $20

	dec  a                                           ; $5496: $3d
	ld   [bc], a                                     ; $5497: $02
	jr   nz, jr_03f_54ba                             ; $5498: $20 $20

	inc  a                                           ; $549a: $3c
	ld   [bc], a                                     ; $549b: $02
	jr   z, jr_03f_54b6                              ; $549c: $28 $18

	dec  sp                                          ; $549e: $3b
	ld   bc, $1820                                   ; $549f: $01 $20 $18
	ld   a, [hl-]                                    ; $54a2: $3a

jr_03f_54a3:
	ld   bc, $1818                                   ; $54a3: $01 $18 $18
	add  hl, sp                                      ; $54a6: $39
	ld   bc, $1810                                   ; $54a7: $01 $10 $18
	jr   c, @+$03                                    ; $54aa: $38 $01

	jr   z, jr_03f_54be                              ; $54ac: $28 $10

	scf                                              ; $54ae: $37
	ld   bc, $1020                                   ; $54af: $01 $20 $10
	ld   [hl], $01                                   ; $54b2: $36 $01
	jr   jr_03f_54c6                                 ; $54b4: $18 $10

jr_03f_54b6:
	dec  [hl]                                        ; $54b6: $35
	ld   bc, $1010                                   ; $54b7: $01 $10 $10

jr_03f_54ba:
	inc  [hl]                                        ; $54ba: $34
	ld   bc, $081e                                   ; $54bb: $01 $1e $08

jr_03f_54be:
	ld   bc, $1601                                   ; $54be: $01 $01 $16
	ld   [$1100], sp                                 ; $54c1: $08 $00 $11
	jr   z, jr_03f_54ee                              ; $54c4: $28 $28

jr_03f_54c6:
	ld   c, e                                        ; $54c6: $4b

jr_03f_54c7:
	ld   [bc], a                                     ; $54c7: $02
	jr   nz, jr_03f_54f2                             ; $54c8: $20 $28

	ld   c, d                                        ; $54ca: $4a
	ld   [bc], a                                     ; $54cb: $02
	jr   z, jr_03f_54ee                              ; $54cc: $28 $20

	ld   c, c                                        ; $54ce: $49
	ld   [bc], a                                     ; $54cf: $02
	jr   nz, jr_03f_54f2                             ; $54d0: $20 $20

	ld   c, b                                        ; $54d2: $48
	ld   [bc], a                                     ; $54d3: $02
	jr   z, jr_03f_54ee                              ; $54d4: $28 $18

	ld   b, a                                        ; $54d6: $47
	ld   bc, $1820                                   ; $54d7: $01 $20 $18
	ld   b, [hl]                                     ; $54da: $46
	ld   bc, $1818                                   ; $54db: $01 $18 $18
	ld   b, l                                        ; $54de: $45
	ld   bc, $1810                                   ; $54df: $01 $10 $18
	ld   b, h                                        ; $54e2: $44
	ld   bc, $1028                                   ; $54e3: $01 $28 $10
	ld   b, e                                        ; $54e6: $43
	ld   bc, $1020                                   ; $54e7: $01 $20 $10
	ld   b, d                                        ; $54ea: $42
	ld   bc, $1018                                   ; $54eb: $01 $18 $10

jr_03f_54ee:
	ld   b, c                                        ; $54ee: $41
	ld   bc, $1010                                   ; $54ef: $01 $10 $10

jr_03f_54f2:
	ld   b, b                                        ; $54f2: $40
	ld   bc, $081c                                   ; $54f3: $01 $1c $08
	ld   bc, $1401                                   ; $54f6: $01 $01 $14
	ld   [$1100], sp                                 ; $54f9: $08 $00 $11
	jr   z, @+$2d                                    ; $54fc: $28 $2b

	or   [hl]                                        ; $54fe: $b6
	ld   [bc], a                                     ; $54ff: $02
	jr   jr_03f_5532                                 ; $5500: $18 $30

	or   h                                           ; $5502: $b4
	ld   [bc], a                                     ; $5503: $02
	ld   [$b233], sp                                 ; $5504: $08 $33 $b2
	ld   [bc], a                                     ; $5507: $02
	ld   hl, sp+$38                                  ; $5508: $f8 $38
	or   b                                           ; $550a: $b0
	ld   [bc], a                                     ; $550b: $02
	jr   jr_03f_5536                                 ; $550c: $18 $28

	xor  [hl]                                        ; $550e: $ae
	nop                                              ; $550f: $00
	jr   z, jr_03f_5532                              ; $5510: $28 $20

	xor  h                                           ; $5512: $ac
	nop                                              ; $5513: $00
	jr   z, jr_03f_5536                              ; $5514: $28 $20

	xor  d                                           ; $5516: $aa
	ld   bc, $2020                                   ; $5517: $01 $20 $20
	xor  b                                           ; $551a: $a8
	ld   bc, $2010                                   ; $551b: $01 $10 $20
	and  [hl]                                        ; $551e: $a6
	nop                                              ; $551f: $00
	db   $10                                         ; $5520: $10
	jr   nz, jr_03f_54c7                             ; $5521: $20 $a4

	ld   bc, $2000                                   ; $5523: $01 $00 $20
	and  d                                           ; $5526: $a2
	nop                                              ; $5527: $00
	jr   nc, jr_03f_5542                             ; $5528: $30 $18

	and  b                                           ; $552a: $a0
	ld   bc, $1820                                   ; $552b: $01 $20 $18
	sbc  [hl]                                        ; $552e: $9e
	ld   bc, $1028                                   ; $552f: $01 $28 $10

jr_03f_5532:
	sbc  h                                           ; $5532: $9c
	nop                                              ; $5533: $00
	jr   jr_03f_5546                                 ; $5534: $18 $10

jr_03f_5536:
	sbc  d                                           ; $5536: $9a
	ld   bc, $1000                                   ; $5537: $01 $00 $10
	sbc  b                                           ; $553a: $98
	nop                                              ; $553b: $00
	nop                                              ; $553c: $00
	db   $10                                         ; $553d: $10

jr_03f_553e:
	sub  [hl]                                        ; $553e: $96
	ld   bc, $f808                                   ; $553f: $01 $08 $f8

jr_03f_5542:
	sub  h                                           ; $5542: $94
	ld   bc, $10f0                                   ; $5543: $01 $f0 $10

jr_03f_5546:
	sub  d                                           ; $5546: $92
	jr   nz, @-$0e                                   ; $5547: $20 $f0

jr_03f_5549:
	ld   hl, sp-$6e                                  ; $5549: $f8 $92
	nop                                              ; $554b: $00
	jr   nc, jr_03f_553e                             ; $554c: $30 $f0

	sub  b                                           ; $554e: $90
	ld   bc, $f020                                   ; $554f: $01 $20 $f0
	adc  [hl]                                        ; $5552: $8e
	ld   bc, $1800                                   ; $5553: $01 $00 $18

jr_03f_5556:
	adc  b                                           ; $5556: $88
	jr   nz, jr_03f_5549                             ; $5557: $20 $f0

	jr   @-$78                                       ; $5559: $18 $86

	jr   nz, @+$12                                   ; $555b: $20 $10

	ldh  a, [$8c]                                    ; $555d: $f0 $8c
	nop                                              ; $555f: $00
	db   $10                                         ; $5560: $10
	ldh  a, [$8a]                                    ; $5561: $f0 $8a
	ld   bc, $f000                                   ; $5563: $01 $00 $f0
	adc  b                                           ; $5566: $88
	nop                                              ; $5567: $00
	ldh  a, [$f0]                                    ; $5568: $f0 $f0
	add  [hl]                                        ; $556a: $86
	nop                                              ; $556b: $00
	jr   jr_03f_5556                                 ; $556c: $18 $e8

	add  h                                           ; $556e: $84
	nop                                              ; $556f: $00
	ld   [$82e8], sp                                 ; $5570: $08 $e8 $82
	nop                                              ; $5573: $00
	jr   z, jr_03f_5556                              ; $5574: $28 $e0

	add  b                                           ; $5576: $80
	ld   de, $2828                                   ; $5577: $11 $28 $28
	cp   [hl]                                        ; $557a: $be
	inc  bc                                          ; $557b: $03
	jr   @+$2a                                       ; $557c: $18 $28

	cp   h                                           ; $557e: $bc
	inc  bc                                          ; $557f: $03
	jr   z, jr_03f_55aa                              ; $5580: $28 $28

	cp   d                                           ; $5582: $ba
	ld   bc, $2818                                   ; $5583: $01 $18 $28
	cp   b                                           ; $5586: $b8
	ld   bc, $2808                                   ; $5587: $01 $08 $28
	or   [hl]                                        ; $558a: $b6
	ld   [bc], a                                     ; $558b: $02
	ld   hl, sp+$2b                                  ; $558c: $f8 $2b
	or   h                                           ; $558e: $b4
	ld   [bc], a                                     ; $558f: $02
	jr   nc, jr_03f_55b2                             ; $5590: $30 $20

	or   d                                           ; $5592: $b2
	ld   bc, $2020                                   ; $5593: $01 $20 $20
	or   b                                           ; $5596: $b0
	ld   bc, $2010                                   ; $5597: $01 $10 $20
	xor  [hl]                                        ; $559a: $ae
	ld   bc, $1820                                   ; $559b: $01 $20 $18
	xor  h                                           ; $559e: $ac
	ld   bc, $1810                                   ; $559f: $01 $10 $18
	xor  d                                           ; $55a2: $aa
	nop                                              ; $55a3: $00
	ld   [$a818], sp                                 ; $55a4: $08 $18 $a8
	ld   bc, $18f8                                   ; $55a7: $01 $f8 $18

jr_03f_55aa:
	and  [hl]                                        ; $55aa: $a6
	nop                                              ; $55ab: $00
	jr   nc, @+$12                                   ; $55ac: $30 $10

	and  h                                           ; $55ae: $a4
	ld   bc, $1020                                   ; $55af: $01 $20 $10

jr_03f_55b2:
	and  d                                           ; $55b2: $a2
	ld   bc, $1000                                   ; $55b3: $01 $00 $10
	and  b                                           ; $55b6: $a0
	nop                                              ; $55b7: $00
	nop                                              ; $55b8: $00
	ld   [$009e], sp                                 ; $55b9: $08 $9e $00
	nop                                              ; $55bc: $00
	ld   [$019c], sp                                 ; $55bd: $08 $9c $01
	ldh  a, [$08]                                    ; $55c0: $f0 $08
	sbc  d                                           ; $55c2: $9a

jr_03f_55c3:
	nop                                              ; $55c3: $00
	jr   z, @-$06                                    ; $55c4: $28 $f8

	sbc  b                                           ; $55c6: $98
	ld   bc, $f8f8                                   ; $55c7: $01 $f8 $f8
	sub  [hl]                                        ; $55ca: $96
	ld   bc, $f030                                   ; $55cb: $01 $30 $f0
	sub  h                                           ; $55ce: $94
	ld   bc, $f020                                   ; $55cf: $01 $20 $f0

jr_03f_55d2:
	sub  d                                           ; $55d2: $92
	ld   bc, $f008                                   ; $55d3: $01 $08 $f0
	sub  b                                           ; $55d6: $90
	nop                                              ; $55d7: $00
	ld   [$8ef0], sp                                 ; $55d8: $08 $f0 $8e
	ld   bc, $f0f8                                   ; $55db: $01 $f8 $f0
	adc  h                                           ; $55de: $8c
	ld   bc, $e828                                   ; $55df: $01 $28 $e8
	adc  d                                           ; $55e2: $8a
	ld   bc, $e810                                   ; $55e3: $01 $10 $e8
	adc  b                                           ; $55e6: $88
	nop                                              ; $55e7: $00
	jr   jr_03f_55d2                                 ; $55e8: $18 $e8

	add  [hl]                                        ; $55ea: $86
	ld   bc, $e800                                   ; $55eb: $01 $00 $e8
	add  h                                           ; $55ee: $84
	nop                                              ; $55ef: $00
	jr   nc, jr_03f_55d2                             ; $55f0: $30 $e0

	add  d                                           ; $55f2: $82
	ld   bc, $e018                                   ; $55f3: $01 $18 $e0
	add  b                                           ; $55f6: $80
	db   $10                                         ; $55f7: $10
	jr   nz, jr_03f_5623                             ; $55f8: $20 $29

	cp   b                                           ; $55fa: $b8
	ld   [bc], a                                     ; $55fb: $02
	jr   z, jr_03f_561e                              ; $55fc: $28 $20

	or   h                                           ; $55fe: $b4
	nop                                              ; $55ff: $00
	db   $10                                         ; $5600: $10
	inc  l                                           ; $5601: $2c
	cp   h                                           ; $5602: $bc
	ld   [bc], a                                     ; $5603: $02
	nop                                              ; $5604: $00
	jr   nc, jr_03f_55c3                             ; $5605: $30 $bc

	ld   [bc], a                                     ; $5607: $02
	ldh  a, [$31]                                    ; $5608: $f0 $31
	cp   d                                           ; $560a: $ba
	ld   [bc], a                                     ; $560b: $02
	jr   nz, jr_03f_5636                             ; $560c: $20 $28

	or   [hl]                                        ; $560e: $b6
	ld   bc, $2020                                   ; $560f: $01 $20 $20
	or   d                                           ; $5612: $b2
	ld   bc, $2008                                   ; $5613: $01 $08 $20
	or   b                                           ; $5616: $b0
	nop                                              ; $5617: $00
	jr   z, jr_03f_5632                              ; $5618: $28 $18

	xor  [hl]                                        ; $561a: $ae
	ld   bc, $1818                                   ; $561b: $01 $18 $18

jr_03f_561e:
	xor  h                                           ; $561e: $ac
	nop                                              ; $561f: $00
	jr   jr_03f_563a                                 ; $5620: $18 $18

	xor  d                                           ; $5622: $aa

jr_03f_5623:
	ld   bc, $1808                                   ; $5623: $01 $08 $18
	xor  b                                           ; $5626: $a8
	nop                                              ; $5627: $00
	ld   hl, sp+$18                                  ; $5628: $f8 $18
	and  [hl]                                        ; $562a: $a6
	nop                                              ; $562b: $00
	jr   nc, jr_03f_563e                             ; $562c: $30 $10

	and  h                                           ; $562e: $a4
	ld   bc, $1028                                   ; $562f: $01 $28 $10

jr_03f_5632:
	and  d                                           ; $5632: $a2
	nop                                              ; $5633: $00
	jr   jr_03f_5646                                 ; $5634: $18 $10

jr_03f_5636:
	and  b                                           ; $5636: $a0
	ld   bc, $1000                                   ; $5637: $01 $00 $10

jr_03f_563a:
	sbc  [hl]                                        ; $563a: $9e
	nop                                              ; $563b: $00
	nop                                              ; $563c: $00
	db   $10                                         ; $563d: $10

jr_03f_563e:
	sbc  h                                           ; $563e: $9c
	ld   bc, $10f0                                   ; $563f: $01 $f0 $10
	sbc  d                                           ; $5642: $9a
	nop                                              ; $5643: $00
	ldh  a, [$08]                                    ; $5644: $f0 $08

jr_03f_5646:
	sbc  b                                           ; $5646: $98
	ld   bc, $0010                                   ; $5647: $01 $10 $00
	sub  [hl]                                        ; $564a: $96
	ld   [bc], a                                     ; $564b: $02
	jr   nc, jr_03f_5646                             ; $564c: $30 $f8

	sub  h                                           ; $564e: $94
	ld   bc, $f820                                   ; $564f: $01 $20 $f8
	sub  d                                           ; $5652: $92
	ld   bc, $f810                                   ; $5653: $01 $10 $f8
	sub  b                                           ; $5656: $90
	ld   [bc], a                                     ; $5657: $02
	db   $10                                         ; $5658: $10
	ld   hl, sp-$72                                  ; $5659: $f8 $8e
	ld   bc, $f800                                   ; $565b: $01 $00 $f8
	adc  h                                           ; $565e: $8c
	nop                                              ; $565f: $00
	nop                                              ; $5660: $00
	ld   hl, sp-$76                                  ; $5661: $f8 $8a
	ld   bc, $f8f0                                   ; $5663: $01 $f0 $f8
	adc  b                                           ; $5666: $88
	nop                                              ; $5667: $00
	jr   z, @-$0e                                    ; $5668: $28 $f0

	add  [hl]                                        ; $566a: $86
	ld   bc, $f000                                   ; $566b: $01 $00 $f0
	add  h                                           ; $566e: $84
	nop                                              ; $566f: $00
	ldh  a, [$f0]                                    ; $5670: $f0 $f0
	add  d                                           ; $5672: $82
	nop                                              ; $5673: $00
	db   $10                                         ; $5674: $10
	add  sp, -$80                                    ; $5675: $e8 $80
	db   $10                                         ; $5677: $10
	ld   [$b228], sp                                 ; $5678: $08 $28 $b2
	nop                                              ; $567b: $00
	ld   [$b028], sp                                 ; $567c: $08 $28 $b0
	ld   bc, $28f0                                   ; $567f: $01 $f0 $28
	xor  [hl]                                        ; $5682: $ae
	nop                                              ; $5683: $00
	jr   jr_03f_56a6                                 ; $5684: $18 $20

	xor  h                                           ; $5686: $ac
	nop                                              ; $5687: $00
	jr   nc, jr_03f_56a2                             ; $5688: $30 $18

	xor  d                                           ; $568a: $aa
	ld   bc, $1820                                   ; $568b: $01 $20 $18
	xor  b                                           ; $568e: $a8
	ld   bc, $18f8                                   ; $568f: $01 $f8 $18
	and  [hl]                                        ; $5692: $a6
	nop                                              ; $5693: $00
	jr   z, jr_03f_56a6                              ; $5694: $28 $10

	and  h                                           ; $5696: $a4
	nop                                              ; $5697: $00
	jr   nz, @+$12                                   ; $5698: $20 $10

	and  d                                           ; $569a: $a2
	ld   bc, $1008                                   ; $569b: $01 $08 $10
	and  b                                           ; $569e: $a0
	nop                                              ; $569f: $00
	nop                                              ; $56a0: $00
	db   $10                                         ; $56a1: $10

jr_03f_56a2:
	sbc  [hl]                                        ; $56a2: $9e
	ld   bc, $10f0                                   ; $56a3: $01 $f0 $10

jr_03f_56a6:
	sbc  h                                           ; $56a6: $9c
	nop                                              ; $56a7: $00
	ld   [$9a00], sp                                 ; $56a8: $08 $00 $9a
	ld   bc, $00f0                                   ; $56ab: $01 $f0 $00

jr_03f_56ae:
	sbc  b                                           ; $56ae: $98

jr_03f_56af:
	ld   bc, $f828                                   ; $56af: $01 $28 $f8
	sub  [hl]                                        ; $56b2: $96
	nop                                              ; $56b3: $00
	jr   z, jr_03f_56ae                              ; $56b4: $28 $f8

jr_03f_56b6:
	sub  h                                           ; $56b6: $94
	ld   bc, $f818                                   ; $56b7: $01 $18 $f8

jr_03f_56ba:
	sub  d                                           ; $56ba: $92
	nop                                              ; $56bb: $00
	jr   jr_03f_56b6                                 ; $56bc: $18 $f8

jr_03f_56be:
	sub  b                                           ; $56be: $90
	ld   bc, $f808                                   ; $56bf: $01 $08 $f8
	adc  [hl]                                        ; $56c2: $8e
	ld   bc, $f8f0                                   ; $56c3: $01 $f0 $f8
	adc  h                                           ; $56c6: $8c
	nop                                              ; $56c7: $00
	jr   z, jr_03f_56ba                              ; $56c8: $28 $f0

	adc  d                                           ; $56ca: $8a
	nop                                              ; $56cb: $00
	jr   z, jr_03f_56be                              ; $56cc: $28 $f0

	adc  b                                           ; $56ce: $88
	ld   bc, $f000                                   ; $56cf: $01 $00 $f0
	add  [hl]                                        ; $56d2: $86
	inc  bc                                          ; $56d3: $03
	ld   hl, sp-$10                                  ; $56d4: $f8 $f0
	add  h                                           ; $56d6: $84
	ld   bc, $e830                                   ; $56d7: $01 $30 $e8
	add  d                                           ; $56da: $82
	nop                                              ; $56db: $00
	ld   hl, sp-$18                                  ; $56dc: $f8 $e8
	add  b                                           ; $56de: $80
	ld   [de], a                                     ; $56df: $12
	nop                                              ; $56e0: $00
	jr   @-$1c                                       ; $56e1: $18 $e2

	nop                                              ; $56e3: $00
	jr   z, @+$2d                                    ; $56e4: $28 $2b

	ldh  [rSC], a                                    ; $56e6: $e0 $02
	jr   jr_03f_571a                                 ; $56e8: $18 $30

	or   h                                           ; $56ea: $b4
	ld   [bc], a                                     ; $56eb: $02
	ld   [$b233], sp                                 ; $56ec: $08 $33 $b2
	ld   [bc], a                                     ; $56ef: $02
	ld   hl, sp+$38                                  ; $56f0: $f8 $38
	or   b                                           ; $56f2: $b0
	ld   [bc], a                                     ; $56f3: $02
	jr   jr_03f_571e                                 ; $56f4: $18 $28

	xor  [hl]                                        ; $56f6: $ae
	nop                                              ; $56f7: $00
	jr   z, jr_03f_571a                              ; $56f8: $28 $20

	xor  h                                           ; $56fa: $ac
	nop                                              ; $56fb: $00
	jr   z, jr_03f_571e                              ; $56fc: $28 $20

	xor  d                                           ; $56fe: $aa
	ld   bc, $2020                                   ; $56ff: $01 $20 $20
	xor  b                                           ; $5702: $a8
	ld   bc, $2010                                   ; $5703: $01 $10 $20
	and  [hl]                                        ; $5706: $a6
	nop                                              ; $5707: $00
	db   $10                                         ; $5708: $10
	jr   nz, jr_03f_56af                             ; $5709: $20 $a4

	ld   bc, $2000                                   ; $570b: $01 $00 $20
	and  d                                           ; $570e: $a2
	nop                                              ; $570f: $00
	jr   nc, jr_03f_572a                             ; $5710: $30 $18

	and  b                                           ; $5712: $a0
	ld   bc, $1820                                   ; $5713: $01 $20 $18
	sbc  [hl]                                        ; $5716: $9e
	ld   bc, $1028                                   ; $5717: $01 $28 $10

jr_03f_571a:
	sbc  h                                           ; $571a: $9c
	nop                                              ; $571b: $00
	jr   jr_03f_572e                                 ; $571c: $18 $10

jr_03f_571e:
	sbc  d                                           ; $571e: $9a
	ld   bc, $1000                                   ; $571f: $01 $00 $10
	sbc  b                                           ; $5722: $98
	nop                                              ; $5723: $00
	nop                                              ; $5724: $00
	db   $10                                         ; $5725: $10

jr_03f_5726:
	sub  [hl]                                        ; $5726: $96
	ld   bc, $f808                                   ; $5727: $01 $08 $f8

jr_03f_572a:
	sub  h                                           ; $572a: $94
	ld   bc, $10f0                                   ; $572b: $01 $f0 $10

jr_03f_572e:
	sub  d                                           ; $572e: $92
	jr   nz, @-$0e                                   ; $572f: $20 $f0

	ld   hl, sp-$6e                                  ; $5731: $f8 $92
	nop                                              ; $5733: $00
	jr   nc, jr_03f_5726                             ; $5734: $30 $f0

	sub  b                                           ; $5736: $90
	ld   bc, $f020                                   ; $5737: $01 $20 $f0

jr_03f_573a:
	adc  [hl]                                        ; $573a: $8e
	ld   bc, $18f0                                   ; $573b: $01 $f0 $18
	add  [hl]                                        ; $573e: $86
	jr   nz, @+$12                                   ; $573f: $20 $10

	ldh  a, [$8c]                                    ; $5741: $f0 $8c
	nop                                              ; $5743: $00
	db   $10                                         ; $5744: $10
	ldh  a, [$8a]                                    ; $5745: $f0 $8a
	ld   bc, $f000                                   ; $5747: $01 $00 $f0
	adc  b                                           ; $574a: $88
	nop                                              ; $574b: $00
	ldh  a, [$f0]                                    ; $574c: $f0 $f0
	add  [hl]                                        ; $574e: $86
	nop                                              ; $574f: $00
	jr   jr_03f_573a                                 ; $5750: $18 $e8

	add  h                                           ; $5752: $84
	nop                                              ; $5753: $00
	ld   [$82e8], sp                                 ; $5754: $08 $e8 $82
	nop                                              ; $5757: $00
	jr   z, jr_03f_573a                              ; $5758: $28 $e0

	add  b                                           ; $575a: $80
	ld   de, $e41d                                   ; $575b: $11 $1d $e4
	or   [hl]                                        ; $575e: $b6
	ld   [hl], $1d                                   ; $575f: $36 $1d
	call c, $26ba                                    ; $5761: $dc $ba $26
	dec  e                                           ; $5764: $1d
	db   $e4                                         ; $5765: $e4
	cp   b                                           ; $5766: $b8
	ld   [hl], $1d                                   ; $5767: $36 $1d
	call c, $26be                                    ; $5769: $dc $be $26
	dec  e                                           ; $576c: $1d
	db   $e4                                         ; $576d: $e4
	cp   h                                           ; $576e: $bc
	ld   [hl], $1d                                   ; $576f: $36 $1d
	db   $e4                                         ; $5771: $e4
	sbc  $16                                         ; $5772: $de $16
	jr   nz, jr_03f_57a2                             ; $5774: $20 $2c

	or   h                                           ; $5776: $b4
	ld   [bc], a                                     ; $5777: $02
	db   $10                                         ; $5778: $10
	ld   sp, $02b2                                   ; $5779: $31 $b2 $02
	nop                                              ; $577c: $00
	dec  [hl]                                        ; $577d: $35
	or   b                                           ; $577e: $b0
	ld   [bc], a                                     ; $577f: $02
	ldh  a, [$38]                                    ; $5780: $f0 $38
	xor  [hl]                                        ; $5782: $ae
	ld   [bc], a                                     ; $5783: $02
	jr   z, jr_03f_57a6                              ; $5784: $28 $20

	xor  h                                           ; $5786: $ac
	ld   bc, $2018                                   ; $5787: $01 $18 $20
	xor  d                                           ; $578a: $aa
	ld   bc, $2008                                   ; $578b: $01 $08 $20
	xor  b                                           ; $578e: $a8
	ld   bc, $1828                                   ; $578f: $01 $28 $18
	and  [hl]                                        ; $5792: $a6
	ld   bc, $1818                                   ; $5793: $01 $18 $18
	and  h                                           ; $5796: $a4
	ld   bc, $1808                                   ; $5797: $01 $08 $18
	and  d                                           ; $579a: $a2
	nop                                              ; $579b: $00
	ld   hl, sp+$18                                  ; $579c: $f8 $18
	and  b                                           ; $579e: $a0
	nop                                              ; $579f: $00
	jr   z, jr_03f_57b2                              ; $57a0: $28 $10

jr_03f_57a2:
	sbc  [hl]                                        ; $57a2: $9e
	nop                                              ; $57a3: $00
	jr   jr_03f_57b6                                 ; $57a4: $18 $10

jr_03f_57a6:
	sbc  h                                           ; $57a6: $9c
	ld   bc, $1000                                   ; $57a7: $01 $00 $10
	sbc  d                                           ; $57aa: $9a
	nop                                              ; $57ab: $00
	nop                                              ; $57ac: $00
	db   $10                                         ; $57ad: $10
	sbc  b                                           ; $57ae: $98
	ld   bc, $10f0                                   ; $57af: $01 $f0 $10

jr_03f_57b2:
	sub  [hl]                                        ; $57b2: $96
	ld   bc, $f808                                   ; $57b3: $01 $08 $f8

jr_03f_57b6:
	sub  h                                           ; $57b6: $94
	ld   bc, $f8f8                                   ; $57b7: $01 $f8 $f8
	sub  d                                           ; $57ba: $92
	ld   bc, $f030                                   ; $57bb: $01 $30 $f0

jr_03f_57be:
	sub  b                                           ; $57be: $90
	ld   bc, $f020                                   ; $57bf: $01 $20 $f0
	adc  [hl]                                        ; $57c2: $8e
	ld   bc, $f010                                   ; $57c3: $01 $10 $f0
	adc  h                                           ; $57c6: $8c
	nop                                              ; $57c7: $00
	db   $10                                         ; $57c8: $10
	ldh  a, [$8a]                                    ; $57c9: $f0 $8a
	ld   bc, $f000                                   ; $57cb: $01 $00 $f0
	adc  b                                           ; $57ce: $88
	ld   bc, $f0f0                                   ; $57cf: $01 $f0 $f0
	add  [hl]                                        ; $57d2: $86
	ld   bc, $e818                                   ; $57d3: $01 $18 $e8
	add  h                                           ; $57d6: $84
	nop                                              ; $57d7: $00
	ld   [$82e8], sp                                 ; $57d8: $08 $e8 $82
	nop                                              ; $57db: $00
	jr   z, jr_03f_57be                              ; $57dc: $28 $e0

	add  b                                           ; $57de: $80
	ld   de, $1e20                                   ; $57df: $11 $20 $1e
	or   [hl]                                        ; $57e2: $b6
	ld   d, $20                                      ; $57e3: $16 $20
	ld   h, $ba                                      ; $57e5: $26 $ba
	ld   b, $20                                      ; $57e7: $06 $20
	ld   e, $b8                                      ; $57e9: $1e $b8
	ld   d, $20                                      ; $57eb: $16 $20
	ld   h, $be                                      ; $57ed: $26 $be
	ld   b, $20                                      ; $57ef: $06 $20
	ld   e, $bc                                      ; $57f1: $1e $bc
	ld   d, $20                                      ; $57f3: $16 $20
	ld   e, $de                                      ; $57f5: $1e $de
	ld   d, $00                                      ; $57f7: $16 $00
	rrca                                             ; $57f9: $0f
	sbc  h                                           ; $57fa: $9c
	inc  bc                                          ; $57fb: $03
	db   $10                                         ; $57fc: $10
	ret  c                                           ; $57fd: $d8

	add  h                                           ; $57fe: $84
	ld   bc, $3008                                   ; $57ff: $01 $08 $30
	xor  [hl]                                        ; $5802: $ae
	nop                                              ; $5803: $00
	ld   hl, sp+$30                                  ; $5804: $f8 $30
	xor  d                                           ; $5806: $aa
	nop                                              ; $5807: $00
	ld   [$ac30], sp                                 ; $5808: $08 $30 $ac
	ld   bc, $30f8                                   ; $580b: $01 $f8 $30
	xor  b                                           ; $580e: $a8
	ld   bc, $2820                                   ; $580f: $01 $20 $28
	and  [hl]                                        ; $5812: $a6
	ld   bc, $2810                                   ; $5813: $01 $10 $28
	and  h                                           ; $5816: $a4
	ld   bc, $28f0                                   ; $5817: $01 $f0 $28
	and  d                                           ; $581a: $a2
	nop                                              ; $581b: $00
	jr   z, jr_03f_583e                              ; $581c: $28 $20

jr_03f_581e:
	and  b                                           ; $581e: $a0
	ld   bc, $2010                                   ; $581f: $01 $10 $20

jr_03f_5822:
	sbc  [hl]                                        ; $5822: $9e
	ld   bc, $0828                                   ; $5823: $01 $28 $08
	sbc  d                                           ; $5826: $9a
	nop                                              ; $5827: $00
	jr   z, jr_03f_5832                              ; $5828: $28 $08

	sbc  b                                           ; $582a: $98
	ld   bc, $0028                                   ; $582b: $01 $28 $00
	sub  [hl]                                        ; $582e: $96
	ld   bc, $0008                                   ; $582f: $01 $08 $00

jr_03f_5832:
	sub  h                                           ; $5832: $94
	ld   [bc], a                                     ; $5833: $02
	jr   z, jr_03f_581e                              ; $5834: $28 $e8

	sub  d                                           ; $5836: $92
	ld   bc, $e810                                   ; $5837: $01 $10 $e8
	sub  b                                           ; $583a: $90
	ld   bc, $e8f0                                   ; $583b: $01 $f0 $e8

jr_03f_583e:
	adc  [hl]                                        ; $583e: $8e
	nop                                              ; $583f: $00
	jr   z, jr_03f_5822                              ; $5840: $28 $e0

	adc  h                                           ; $5842: $8c
	ld   bc, $e018                                   ; $5843: $01 $18 $e0
	adc  d                                           ; $5846: $8a
	ld   bc, $e008                                   ; $5847: $01 $08 $e0
	adc  b                                           ; $584a: $88
	ld   bc, $e0f0                                   ; $584b: $01 $f0 $e0
	add  [hl]                                        ; $584e: $86
	nop                                              ; $584f: $00
	ld   hl, sp-$28                                  ; $5850: $f8 $d8
	add  d                                           ; $5852: $82
	nop                                              ; $5853: $00
	ld   hl, sp-$28                                  ; $5854: $f8 $d8
	add  b                                           ; $5856: $80
	ld   de, $4008                                   ; $5857: $11 $08 $40
	cp   [hl]                                        ; $585a: $be
	ld   bc, $380c                                   ; $585b: $01 $0c $38
	cp   h                                           ; $585e: $bc
	ld   bc, $3010                                   ; $585f: $01 $10 $30
	cp   d                                           ; $5862: $ba
	ld   bc, $3000                                   ; $5863: $01 $00 $30
	cp   b                                           ; $5866: $b8
	nop                                              ; $5867: $00
	jr   jr_03f_5892                                 ; $5868: $18 $28

	or   [hl]                                        ; $586a: $b6
	ld   bc, $28f0                                   ; $586b: $01 $f0 $28
	or   h                                           ; $586e: $b4
	nop                                              ; $586f: $00
	jr   z, jr_03f_5892                              ; $5870: $28 $20

	or   d                                           ; $5872: $b2
	nop                                              ; $5873: $00
	jr   jr_03f_5896                                 ; $5874: $18 $20

	or   b                                           ; $5876: $b0
	ld   bc, $20f8                                   ; $5877: $01 $f8 $20
	xor  [hl]                                        ; $587a: $ae
	nop                                              ; $587b: $00
	jr   z, jr_03f_5896                              ; $587c: $28 $18

	xor  h                                           ; $587e: $ac
	nop                                              ; $587f: $00
	jr   z, jr_03f_589a                              ; $5880: $28 $18

	xor  d                                           ; $5882: $aa
	ld   bc, $1818                                   ; $5883: $01 $18 $18
	xor  b                                           ; $5886: $a8
	ld   bc, $18f8                                   ; $5887: $01 $f8 $18
	and  [hl]                                        ; $588a: $a6
	nop                                              ; $588b: $00
	nop                                              ; $588c: $00
	ld   [$03a4], sp                                 ; $588d: $08 $a4 $03
	ldh  a, [$08]                                    ; $5890: $f0 $08

jr_03f_5892:
	and  d                                           ; $5892: $a2
	nop                                              ; $5893: $00
	jr   nc, jr_03f_5896                             ; $5894: $30 $00

jr_03f_5896:
	and  b                                           ; $5896: $a0

jr_03f_5897:
	ld   bc, $00f0                                   ; $5897: $01 $f0 $00

jr_03f_589a:
	sbc  [hl]                                        ; $589a: $9e
	nop                                              ; $589b: $00
	ld   [$9cf8], sp                                 ; $589c: $08 $f8 $9c
	ld   [bc], a                                     ; $589f: $02
	ldh  a, [$f8]                                    ; $58a0: $f0 $f8
	sbc  d                                           ; $58a2: $9a
	ld   bc, $f020                                   ; $58a3: $01 $20 $f0

jr_03f_58a6:
	sbc  b                                           ; $58a6: $98
	ld   bc, $f0f0                                   ; $58a7: $01 $f0 $f0
	sub  [hl]                                        ; $58aa: $96
	ld   bc, $e830                                   ; $58ab: $01 $30 $e8
	sub  h                                           ; $58ae: $94
	nop                                              ; $58af: $00
	jr   nc, jr_03f_589a                             ; $58b0: $30 $e8

	sub  d                                           ; $58b2: $92
	ld   bc, $e820                                   ; $58b3: $01 $20 $e8
	sub  b                                           ; $58b6: $90
	ld   bc, $e8f8                                   ; $58b7: $01 $f8 $e8
	adc  [hl]                                        ; $58ba: $8e
	ld   bc, $e020                                   ; $58bb: $01 $20 $e0
	adc  h                                           ; $58be: $8c
	ld   bc, $e000                                   ; $58bf: $01 $00 $e0
	adc  d                                           ; $58c2: $8a
	nop                                              ; $58c3: $00
	jr   z, jr_03f_5897                              ; $58c4: $28 $d1

	add  b                                           ; $58c6: $80
	ld   bc, $d818                                   ; $58c7: $01 $18 $d8

jr_03f_58ca:
	adc  b                                           ; $58ca: $88
	inc  b                                           ; $58cb: $04
	jr   nz, jr_03f_58a6                             ; $58cc: $20 $d8

	add  [hl]                                        ; $58ce: $86
	ld   bc, $d808                                   ; $58cf: $01 $08 $d8
	add  h                                           ; $58d2: $84
	inc  b                                           ; $58d3: $04
	nop                                              ; $58d4: $00
	ret  c                                           ; $58d5: $d8

	add  d                                           ; $58d6: $82
	db   $10                                         ; $58d7: $10
	jr   jr_03f_58ca                                 ; $58d8: $18 $f0

	sub  h                                           ; $58da: $94
	ld   bc, $e810                                   ; $58db: $01 $10 $e8
	sub  b                                           ; $58de: $90
	ld   bc, $e010                                   ; $58df: $01 $10 $e0
	adc  d                                           ; $58e2: $8a
	ld   bc, $3020                                   ; $58e3: $01 $20 $30
	cp   h                                           ; $58e6: $bc
	nop                                              ; $58e7: $00
	ld   hl, sp+$30                                  ; $58e8: $f8 $30
	cp   b                                           ; $58ea: $b8
	nop                                              ; $58eb: $00
	nop                                              ; $58ec: $00
	jr   nc, @-$44                                   ; $58ed: $30 $ba

	ld   bc, $2830                                   ; $58ef: $01 $30 $28
	or   [hl]                                        ; $58f2: $b6
	nop                                              ; $58f3: $00
	jr   jr_03f_591e                                 ; $58f4: $18 $28

	or   h                                           ; $58f6: $b4
	nop                                              ; $58f7: $00
	jr   jr_03f_5922                                 ; $58f8: $18 $28

	or   d                                           ; $58fa: $b2
	ld   bc, $2808                                   ; $58fb: $01 $08 $28
	or   b                                           ; $58fe: $b0
	nop                                              ; $58ff: $00
	ld   [$ae28], sp                                 ; $5900: $08 $28 $ae
	ld   bc, $28f0                                   ; $5903: $01 $f0 $28
	xor  h                                           ; $5906: $ac
	nop                                              ; $5907: $00
	jr   nc, jr_03f_592a                             ; $5908: $30 $20

	xor  d                                           ; $590a: $aa
	nop                                              ; $590b: $00
	jr   nz, jr_03f_592e                             ; $590c: $20 $20

	xor  b                                           ; $590e: $a8
	ld   bc, $1820                                   ; $590f: $01 $20 $18
	and  [hl]                                        ; $5912: $a6
	nop                                              ; $5913: $00
	jr   nz, jr_03f_592e                             ; $5914: $20 $18

	and  h                                           ; $5916: $a4
	ld   bc, $1100                                   ; $5917: $01 $00 $11
	and  d                                           ; $591a: $a2
	inc  bc                                          ; $591b: $03
	jr   nc, jr_03f_5926                             ; $591c: $30 $08

jr_03f_591e:
	and  b                                           ; $591e: $a0
	ld   bc, $0808                                   ; $591f: $01 $08 $08

jr_03f_5922:
	sbc  [hl]                                        ; $5922: $9e
	ld   [bc], a                                     ; $5923: $02
	jr   nc, jr_03f_5926                             ; $5924: $30 $00

jr_03f_5926:
	sbc  h                                           ; $5926: $9c
	nop                                              ; $5927: $00
	jr   nc, jr_03f_592a                             ; $5928: $30 $00

jr_03f_592a:
	sbc  d                                           ; $592a: $9a
	ld   bc, $f910                                   ; $592b: $01 $10 $f9

jr_03f_592e:
	sbc  b                                           ; $592e: $98
	inc  bc                                          ; $592f: $03
	jr   z, jr_03f_5922                              ; $5930: $28 $f0

	sub  [hl]                                        ; $5932: $96
	ld   bc, $e828                                   ; $5933: $01 $28 $e8
	sub  d                                           ; $5936: $92
	ld   bc, $e8f8                                   ; $5937: $01 $f8 $e8
	adc  [hl]                                        ; $593a: $8e
	nop                                              ; $593b: $00
	ld   hl, sp-$18                                  ; $593c: $f8 $e8
	adc  h                                           ; $593e: $8c
	ld   bc, $e0f8                                   ; $593f: $01 $f8 $e0
	adc  b                                           ; $5942: $88
	nop                                              ; $5943: $00
	db   $10                                         ; $5944: $10
	ret  c                                           ; $5945: $d8

	add  [hl]                                        ; $5946: $86
	nop                                              ; $5947: $00
	db   $10                                         ; $5948: $10
	ret  c                                           ; $5949: $d8

	add  h                                           ; $594a: $84
	ld   bc, $d800                                   ; $594b: $01 $00 $d8
	add  d                                           ; $594e: $82
	nop                                              ; $594f: $00
	nop                                              ; $5950: $00
	ret  c                                           ; $5951: $d8

	add  b                                           ; $5952: $80
	ld   de, $3008                                   ; $5953: $11 $08 $30
	cp   d                                           ; $5956: $ba
	ld   bc, $30f8                                   ; $5957: $01 $f8 $30
	cp   b                                           ; $595a: $b8
	nop                                              ; $595b: $00
	ld   hl, sp+$30                                  ; $595c: $f8 $30
	or   [hl]                                        ; $595e: $b6
	ld   bc, $2810                                   ; $595f: $01 $10 $28
	or   h                                           ; $5962: $b4
	ld   bc, $28f8                                   ; $5963: $01 $f8 $28
	or   d                                           ; $5966: $b2
	nop                                              ; $5967: $00
	ld   hl, sp+$28                                  ; $5968: $f8 $28
	or   b                                           ; $596a: $b0
	ld   bc, $2028                                   ; $596b: $01 $28 $20
	xor  [hl]                                        ; $596e: $ae
	ld   bc, $2010                                   ; $596f: $01 $10 $20
	xor  h                                           ; $5972: $ac
	ld   bc, $1830                                   ; $5973: $01 $30 $18
	xor  d                                           ; $5976: $aa
	nop                                              ; $5977: $00
	jr   nc, jr_03f_5992                             ; $5978: $30 $18

	xor  b                                           ; $597a: $a8
	ld   bc, $1820                                   ; $597b: $01 $20 $18
	and  [hl]                                        ; $597e: $a6
	ld   bc, $0830                                   ; $597f: $01 $30 $08

jr_03f_5982:
	and  h                                           ; $5982: $a4
	ld   bc, $0000                                   ; $5983: $01 $00 $00

jr_03f_5986:
	and  d                                           ; $5986: $a2
	inc  bc                                          ; $5987: $03
	jr   nz, jr_03f_5982                             ; $5988: $20 $f8

	and  b                                           ; $598a: $a0
	nop                                              ; $598b: $00
	jr   nz, jr_03f_5986                             ; $598c: $20 $f8

	sbc  [hl]                                        ; $598e: $9e
	ld   bc, $f808                                   ; $598f: $01 $08 $f8

jr_03f_5992:
	sbc  h                                           ; $5992: $9c
	ld   [bc], a                                     ; $5993: $02
	jr   z, jr_03f_5986                              ; $5994: $28 $f0

	sbc  d                                           ; $5996: $9a
	ld   bc, $f018                                   ; $5997: $01 $18 $f0
	sbc  b                                           ; $599a: $98
	ld   bc, $e830                                   ; $599b: $01 $30 $e8
	sub  [hl]                                        ; $599e: $96
	ld   bc, $e820                                   ; $599f: $01 $20 $e8

jr_03f_59a2:
	sub  h                                           ; $59a2: $94
	ld   bc, $e810                                   ; $59a3: $01 $10 $e8
	sub  d                                           ; $59a6: $92
	nop                                              ; $59a7: $00
	db   $10                                         ; $59a8: $10
	add  sp, -$70                                    ; $59a9: $e8 $90
	ld   bc, $e8f0                                   ; $59ab: $01 $f0 $e8
	adc  [hl]                                        ; $59ae: $8e
	nop                                              ; $59af: $00
	jr   nz, jr_03f_5992                             ; $59b0: $20 $e0

	adc  h                                           ; $59b2: $8c
	ld   bc, $e010                                   ; $59b3: $01 $10 $e0
	adc  d                                           ; $59b6: $8a
	nop                                              ; $59b7: $00
	db   $10                                         ; $59b8: $10
	ldh  [$88], a                                    ; $59b9: $e0 $88
	ld   bc, $e000                                   ; $59bb: $01 $00 $e0
	add  [hl]                                        ; $59be: $86
	nop                                              ; $59bf: $00
	nop                                              ; $59c0: $00
	ldh  [$84], a                                    ; $59c1: $e0 $84
	ld   bc, $e0f0                                   ; $59c3: $01 $f0 $e0
	add  d                                           ; $59c6: $82
	nop                                              ; $59c7: $00
	jr   nz, jr_03f_59a2                             ; $59c8: $20 $d8

	add  b                                           ; $59ca: $80
	ld   de, $0f00                                   ; $59cb: $11 $00 $0f
	sbc  h                                           ; $59ce: $9c
	inc  bc                                          ; $59cf: $03
	db   $10                                         ; $59d0: $10
	ret  c                                           ; $59d1: $d8

	add  h                                           ; $59d2: $84
	ld   bc, $3008                                   ; $59d3: $01 $08 $30
	xor  [hl]                                        ; $59d6: $ae
	nop                                              ; $59d7: $00
	ld   hl, sp+$30                                  ; $59d8: $f8 $30
	xor  d                                           ; $59da: $aa
	nop                                              ; $59db: $00
	ld   [$ac30], sp                                 ; $59dc: $08 $30 $ac
	ld   bc, $30f8                                   ; $59df: $01 $f8 $30
	xor  b                                           ; $59e2: $a8
	ld   bc, $2820                                   ; $59e3: $01 $20 $28
	and  [hl]                                        ; $59e6: $a6
	ld   bc, $2810                                   ; $59e7: $01 $10 $28
	and  h                                           ; $59ea: $a4
	ld   bc, $28f0                                   ; $59eb: $01 $f0 $28
	and  d                                           ; $59ee: $a2
	nop                                              ; $59ef: $00
	jr   z, jr_03f_5a12                              ; $59f0: $28 $20

jr_03f_59f2:
	and  b                                           ; $59f2: $a0
	ld   bc, $2010                                   ; $59f3: $01 $10 $20

jr_03f_59f6:
	sbc  [hl]                                        ; $59f6: $9e
	ld   bc, $0828                                   ; $59f7: $01 $28 $08
	sbc  d                                           ; $59fa: $9a
	nop                                              ; $59fb: $00
	jr   z, jr_03f_5a06                              ; $59fc: $28 $08

	sbc  b                                           ; $59fe: $98
	ld   bc, $0028                                   ; $59ff: $01 $28 $00
	sub  [hl]                                        ; $5a02: $96
	ld   bc, $0008                                   ; $5a03: $01 $08 $00

jr_03f_5a06:
	sub  h                                           ; $5a06: $94
	ld   [bc], a                                     ; $5a07: $02
	jr   z, jr_03f_59f2                              ; $5a08: $28 $e8

	sub  d                                           ; $5a0a: $92

jr_03f_5a0b:
	ld   bc, $e810                                   ; $5a0b: $01 $10 $e8
	sub  b                                           ; $5a0e: $90
	ld   bc, $e8f0                                   ; $5a0f: $01 $f0 $e8

jr_03f_5a12:
	adc  [hl]                                        ; $5a12: $8e
	nop                                              ; $5a13: $00
	jr   z, jr_03f_59f6                              ; $5a14: $28 $e0

	adc  h                                           ; $5a16: $8c
	ld   bc, $e018                                   ; $5a17: $01 $18 $e0
	adc  d                                           ; $5a1a: $8a
	ld   bc, $e008                                   ; $5a1b: $01 $08 $e0
	adc  b                                           ; $5a1e: $88
	ld   bc, $e0f0                                   ; $5a1f: $01 $f0 $e0
	add  [hl]                                        ; $5a22: $86
	nop                                              ; $5a23: $00
	ld   hl, sp-$28                                  ; $5a24: $f8 $d8
	add  d                                           ; $5a26: $82
	nop                                              ; $5a27: $00
	ld   hl, sp-$28                                  ; $5a28: $f8 $d8
	add  b                                           ; $5a2a: $80
	ld   de, $e7f8                                   ; $5a2b: $11 $f8 $e7
	xor  $00                                         ; $5a2e: $ee $00
	ld   hl, sp-$21                                  ; $5a30: $f8 $df
	db   $ec                                         ; $5a32: $ec
	db   $10                                         ; $5a33: $10
	ld   hl, sp-$19                                  ; $5a34: $f8 $e7
	ldh  a, [c]                                      ; $5a36: $f2
	nop                                              ; $5a37: $00
	ld   hl, sp-$21                                  ; $5a38: $f8 $df
	ldh  a, [rAUD1SWEEP]                             ; $5a3a: $f0 $10
	ld   hl, sp-$19                                  ; $5a3c: $f8 $e7
	or   $00                                         ; $5a3e: $f6 $00
	ld   hl, sp-$21                                  ; $5a40: $f8 $df
	db   $f4                                         ; $5a42: $f4
	db   $10                                         ; $5a43: $10
	ld   hl, sp-$19                                  ; $5a44: $f8 $e7
	ld   a, [$f800]                                  ; $5a46: $fa $00 $f8
	rst  JumpTable                                         ; $5a49: $df
	ld   hl, sp+$10                                  ; $5a4a: $f8 $10
	nop                                              ; $5a4c: $00
	add  sp, -$04                                    ; $5a4d: $e8 $fc
	db   $10                                         ; $5a4f: $10
	jr   z, jr_03f_5a52                              ; $5a50: $28 $00

jr_03f_5a52:
	sub  h                                           ; $5a52: $94
	ld   bc, $30f8                                   ; $5a53: $01 $f8 $30
	xor  b                                           ; $5a56: $a8
	nop                                              ; $5a57: $00
	ld   [$aa30], sp                                 ; $5a58: $08 $30 $aa
	ld   bc, $30f8                                   ; $5a5b: $01 $f8 $30
	and  [hl]                                        ; $5a5e: $a6
	ld   bc, $2820                                   ; $5a5f: $01 $20 $28
	and  h                                           ; $5a62: $a4
	ld   bc, $2810                                   ; $5a63: $01 $10 $28
	and  d                                           ; $5a66: $a2
	nop                                              ; $5a67: $00
	db   $10                                         ; $5a68: $10
	jr   z, jr_03f_5a0b                              ; $5a69: $28 $a0

	ld   bc, $28f0                                   ; $5a6b: $01 $f0 $28
	sbc  [hl]                                        ; $5a6e: $9e
	nop                                              ; $5a6f: $00
	jr   z, jr_03f_5a92                              ; $5a70: $28 $20

	sbc  h                                           ; $5a72: $9c
	ld   bc, $2018                                   ; $5a73: $01 $18 $20
	sbc  d                                           ; $5a76: $9a
	ld   bc, $0008                                   ; $5a77: $01 $08 $00
	sub  d                                           ; $5a7a: $92
	ld   [bc], a                                     ; $5a7b: $02
	nop                                              ; $5a7c: $00
	rrca                                             ; $5a7d: $0f
	sbc  b                                           ; $5a7e: $98
	inc  bc                                          ; $5a7f: $03
	jr   z, jr_03f_5a8a                              ; $5a80: $28 $08

	sub  [hl]                                        ; $5a82: $96
	ld   bc, $e828                                   ; $5a83: $01 $28 $e8
	sub  b                                           ; $5a86: $90
	ld   bc, $e810                                   ; $5a87: $01 $10 $e8

jr_03f_5a8a:
	adc  [hl]                                        ; $5a8a: $8e
	ld   bc, $e8f0                                   ; $5a8b: $01 $f0 $e8
	adc  h                                           ; $5a8e: $8c
	ld   bc, $e028                                   ; $5a8f: $01 $28 $e0

jr_03f_5a92:
	adc  d                                           ; $5a92: $8a
	ld   bc, $e018                                   ; $5a93: $01 $18 $e0
	adc  b                                           ; $5a96: $88
	ld   bc, $e008                                   ; $5a97: $01 $08 $e0
	add  [hl]                                        ; $5a9a: $86
	ld   bc, $e0f0                                   ; $5a9b: $01 $f0 $e0
	add  h                                           ; $5a9e: $84
	ld   bc, $d808                                   ; $5a9f: $01 $08 $d8
	add  d                                           ; $5aa2: $82
	ld   bc, $d8f8                                   ; $5aa3: $01 $f8 $d8
	add  b                                           ; $5aa6: $80
	ld   de, $e7f8                                   ; $5aa7: $11 $f8 $e7
	xor  [hl]                                        ; $5aaa: $ae
	nop                                              ; $5aab: $00
	ld   hl, sp-$21                                  ; $5aac: $f8 $df
	xor  h                                           ; $5aae: $ac
	db   $10                                         ; $5aaf: $10
	ld   hl, sp-$19                                  ; $5ab0: $f8 $e7
	or   d                                           ; $5ab2: $b2
	nop                                              ; $5ab3: $00
	ld   hl, sp-$21                                  ; $5ab4: $f8 $df
	or   b                                           ; $5ab6: $b0
	db   $10                                         ; $5ab7: $10
	ld   hl, sp-$19                                  ; $5ab8: $f8 $e7
	or   [hl]                                        ; $5aba: $b6
	nop                                              ; $5abb: $00
	ld   hl, sp-$21                                  ; $5abc: $f8 $df
	or   h                                           ; $5abe: $b4
	db   $10                                         ; $5abf: $10
	ld   hl, sp-$19                                  ; $5ac0: $f8 $e7
	cp   d                                           ; $5ac2: $ba
	nop                                              ; $5ac3: $00
	ld   hl, sp-$21                                  ; $5ac4: $f8 $df
	cp   b                                           ; $5ac6: $b8
	stop                                             ; $5ac7: $10 $00
	add  sp, -$44                                    ; $5ac9: $e8 $bc
	db   $10                                         ; $5acb: $10
	ld   [$a208], sp                                 ; $5acc: $08 $08 $a2
	ld   [bc], a                                     ; $5acf: $02
	ld   [$b218], sp                                 ; $5ad0: $08 $18 $b2
	nop                                              ; $5ad3: $00
	jr   nz, jr_03f_5ae6                             ; $5ad4: $20 $10

	or   b                                           ; $5ad6: $b0
	ld   bc, $1010                                   ; $5ad7: $01 $10 $10
	xor  [hl]                                        ; $5ada: $ae
	nop                                              ; $5adb: $00
	nop                                              ; $5adc: $00
	db   $10                                         ; $5add: $10
	xor  h                                           ; $5ade: $ac
	nop                                              ; $5adf: $00
	jr   jr_03f_5aea                                 ; $5ae0: $18 $08

	xor  d                                           ; $5ae2: $aa
	ld   bc, $0808                                   ; $5ae3: $01 $08 $08

jr_03f_5ae6:
	xor  b                                           ; $5ae6: $a8
	nop                                              ; $5ae7: $00
	ld   hl, sp+$08                                  ; $5ae8: $f8 $08

jr_03f_5aea:
	and  [hl]                                        ; $5aea: $a6
	ld   bc, $0028                                   ; $5aeb: $01 $28 $00

jr_03f_5aee:
	and  h                                           ; $5aee: $a4

jr_03f_5aef:
	ld   bc, $00f8                                   ; $5aef: $01 $f8 $00

jr_03f_5af2:
	and  b                                           ; $5af2: $a0
	inc  bc                                          ; $5af3: $03
	jr   z, jr_03f_5aee                              ; $5af4: $28 $f8

	sbc  [hl]                                        ; $5af6: $9e
	ld   bc, $f818                                   ; $5af7: $01 $18 $f8
	sbc  h                                           ; $5afa: $9c
	ld   [bc], a                                     ; $5afb: $02
	ld   hl, sp-$08                                  ; $5afc: $f8 $f8
	sbc  d                                           ; $5afe: $9a
	inc  bc                                          ; $5aff: $03
	jr   z, jr_03f_5af2                              ; $5b00: $28 $f0

	sbc  b                                           ; $5b02: $98
	ld   bc, $e828                                   ; $5b03: $01 $28 $e8
	sub  [hl]                                        ; $5b06: $96
	ld   bc, $e018                                   ; $5b07: $01 $18 $e0
	sub  h                                           ; $5b0a: $94
	ld   bc, $e108                                   ; $5b0b: $01 $08 $e1
	sub  d                                           ; $5b0e: $92
	inc  bc                                          ; $5b0f: $03
	ld   hl, sp-$1f                                  ; $5b10: $f8 $e1
	sub  b                                           ; $5b12: $90
	inc  bc                                          ; $5b13: $03
	jr   z, jr_03f_5aee                              ; $5b14: $28 $d8

	adc  [hl]                                        ; $5b16: $8e
	ld   bc, $d818                                   ; $5b17: $01 $18 $d8
	adc  h                                           ; $5b1a: $8c
	ld   bc, $d8f8                                   ; $5b1b: $01 $f8 $d8
	adc  d                                           ; $5b1e: $8a
	ld   bc, $d018                                   ; $5b1f: $01 $18 $d0
	adc  b                                           ; $5b22: $88
	nop                                              ; $5b23: $00
	ld   [$86d0], sp                                 ; $5b24: $08 $d0 $86
	ld   bc, $d0f8                                   ; $5b27: $01 $f8 $d0
	add  h                                           ; $5b2a: $84
	ld   bc, $c818                                   ; $5b2b: $01 $18 $c8
	add  d                                           ; $5b2e: $82
	nop                                              ; $5b2f: $00
	nop                                              ; $5b30: $00
	ret  z                                           ; $5b31: $c8

	add  b                                           ; $5b32: $80
	ld   de, $4018                                   ; $5b33: $11 $18 $40
	xor  [hl]                                        ; $5b36: $ae
	nop                                              ; $5b37: $00
	jr   z, @+$3a                                    ; $5b38: $28 $38

	xor  h                                           ; $5b3a: $ac
	nop                                              ; $5b3b: $00
	jr   nz, jr_03f_5b66                             ; $5b3c: $20 $28

	xor  d                                           ; $5b3e: $aa
	nop                                              ; $5b3f: $00
	jr   nz, jr_03f_5b62                             ; $5b40: $20 $20

	xor  b                                           ; $5b42: $a8
	nop                                              ; $5b43: $00
	db   $10                                         ; $5b44: $10
	jr   nz, @-$58                                   ; $5b45: $20 $a6

	nop                                              ; $5b47: $00
	nop                                              ; $5b48: $00
	jr   nz, jr_03f_5aef                             ; $5b49: $20 $a4

	nop                                              ; $5b4b: $00
	nop                                              ; $5b4c: $00
	jr   @-$5c                                       ; $5b4d: $18 $a2

	ld   bc, $0f28                                   ; $5b4f: $01 $28 $0f
	and  b                                           ; $5b52: $a0
	nop                                              ; $5b53: $00
	jr   nc, jr_03f_5b5e                             ; $5b54: $30 $08

	sbc  [hl]                                        ; $5b56: $9e
	nop                                              ; $5b57: $00
	ld   [$9c09], sp                                 ; $5b58: $08 $09 $9c
	ld   bc, $09f0                                   ; $5b5b: $01 $f0 $09

jr_03f_5b5e:
	sbc  d                                           ; $5b5e: $9a
	nop                                              ; $5b5f: $00
	jr   nc, jr_03f_5b62                             ; $5b60: $30 $00

jr_03f_5b62:
	sbc  b                                           ; $5b62: $98
	nop                                              ; $5b63: $00
	jr   nz, jr_03f_5b66                             ; $5b64: $20 $00

jr_03f_5b66:
	sub  [hl]                                        ; $5b66: $96
	nop                                              ; $5b67: $00
	jr   nc, jr_03f_5b62                             ; $5b68: $30 $f8

jr_03f_5b6a:
	sub  h                                           ; $5b6a: $94
	nop                                              ; $5b6b: $00
	jr   jr_03f_5b66                                 ; $5b6c: $18 $f8

	sub  d                                           ; $5b6e: $92
	nop                                              ; $5b6f: $00
	ld   [$90f7], sp                                 ; $5b70: $08 $f7 $90
	nop                                              ; $5b73: $00
	ld   hl, sp-$09                                  ; $5b74: $f8 $f7
	adc  [hl]                                        ; $5b76: $8e
	nop                                              ; $5b77: $00
	jr   nz, jr_03f_5b6a                             ; $5b78: $20 $f0

	adc  h                                           ; $5b7a: $8c
	nop                                              ; $5b7b: $00
	db   $10                                         ; $5b7c: $10
	ldh  a, [$8a]                                    ; $5b7d: $f0 $8a
	nop                                              ; $5b7f: $00
	jr   jr_03f_5b6a                                 ; $5b80: $18 $e8

	adc  b                                           ; $5b82: $88
	nop                                              ; $5b83: $00
	nop                                              ; $5b84: $00
	add  sp, -$7a                                    ; $5b85: $e8 $86
	nop                                              ; $5b87: $00
	jr   z, jr_03f_5b6a                              ; $5b88: $28 $e0

	add  h                                           ; $5b8a: $84
	nop                                              ; $5b8b: $00

jr_03f_5b8c:
	db   $10                                         ; $5b8c: $10
	ldh  [$82], a                                    ; $5b8d: $e0 $82
	nop                                              ; $5b8f: $00

jr_03f_5b90:
	jr   z, jr_03f_5b6a                              ; $5b90: $28 $d8

	add  b                                           ; $5b92: $80
	db   $10                                         ; $5b93: $10
	jr   z, jr_03f_5b90                              ; $5b94: $28 $fa

	xor  d                                           ; $5b96: $aa
	ld   [bc], a                                     ; $5b97: $02
	jr   nc, jr_03f_5b8c                             ; $5b98: $30 $f2

	xor  b                                           ; $5b9a: $a8
	ld   [bc], a                                     ; $5b9b: $02
	jr   nz, jr_03f_5bb0                             ; $5b9c: $20 $12

	cp   b                                           ; $5b9e: $b8
	ld   [bc], a                                     ; $5b9f: $02
	jr   z, jr_03f_5bac                              ; $5ba0: $28 $0a

	or   [hl]                                        ; $5ba2: $b6
	ld   [bc], a                                     ; $5ba3: $02
	jr   jr_03f_5bb0                                 ; $5ba4: $18 $0a

	or   h                                           ; $5ba6: $b4
	ld   [bc], a                                     ; $5ba7: $02
	ld   [$b20a], sp                                 ; $5ba8: $08 $0a $b2
	ld   [bc], a                                     ; $5bab: $02

jr_03f_5bac:
	jr   z, jr_03f_5bb0                              ; $5bac: $28 $02

	or   b                                           ; $5bae: $b0
	ld   [bc], a                                     ; $5baf: $02

jr_03f_5bb0:
	jr   jr_03f_5bb4                                 ; $5bb0: $18 $02

	xor  [hl]                                        ; $5bb2: $ae
	ld   [bc], a                                     ; $5bb3: $02

jr_03f_5bb4:
	ld   [$ac02], sp                                 ; $5bb4: $08 $02 $ac
	ld   [bc], a                                     ; $5bb7: $02
	jr   nz, jr_03f_5bba                             ; $5bb8: $20 $00

jr_03f_5bba:
	and  h                                           ; $5bba: $a4
	nop                                              ; $5bbb: $00
	stop                                             ; $5bbc: $10 $00
	and  b                                           ; $5bbe: $a0
	nop                                              ; $5bbf: $00
	nop                                              ; $5bc0: $00
	nop                                              ; $5bc1: $00
	sbc  h                                           ; $5bc2: $9c
	nop                                              ; $5bc3: $00
	jr   nc, jr_03f_5bc6                             ; $5bc4: $30 $00

jr_03f_5bc6:
	and  [hl]                                        ; $5bc6: $a6
	nop                                              ; $5bc7: $00
	jr   nz, jr_03f_5bca                             ; $5bc8: $20 $00

jr_03f_5bca:
	and  d                                           ; $5bca: $a2
	ld   bc, $0010                                   ; $5bcb: $01 $10 $00
	sbc  [hl]                                        ; $5bce: $9e
	ld   bc, $0000                                   ; $5bcf: $01 $00 $00

jr_03f_5bd2:
	sbc  d                                           ; $5bd2: $9a
	ld   bc, $f800                                   ; $5bd3: $01 $00 $f8
	sbc  b                                           ; $5bd6: $98
	nop                                              ; $5bd7: $00
	nop                                              ; $5bd8: $00
	ld   hl, sp-$6a                                  ; $5bd9: $f8 $96
	ld   bc, $f030                                   ; $5bdb: $01 $30 $f0
	sub  h                                           ; $5bde: $94
	nop                                              ; $5bdf: $00
	jr   nc, jr_03f_5bd2                             ; $5be0: $30 $f0

	sub  d                                           ; $5be2: $92
	ld   bc, $f0f0                                   ; $5be3: $01 $f0 $f0
	sub  b                                           ; $5be6: $90
	ld   bc, $e8f0                                   ; $5be7: $01 $f0 $e8
	adc  h                                           ; $5bea: $8c
	nop                                              ; $5beb: $00
	ldh  a, [$e0]                                    ; $5bec: $f0 $e0
	adc  b                                           ; $5bee: $88
	nop                                              ; $5bef: $00
	jr   nc, @-$16                                   ; $5bf0: $30 $e8

	adc  [hl]                                        ; $5bf2: $8e
	nop                                              ; $5bf3: $00
	ldh  a, [$e8]                                    ; $5bf4: $f0 $e8
	adc  d                                           ; $5bf6: $8a
	ld   bc, $e0f0                                   ; $5bf7: $01 $f0 $e0
	add  [hl]                                        ; $5bfa: $86
	ld   bc, $d020                                   ; $5bfb: $01 $20 $d0
	add  h                                           ; $5bfe: $84
	nop                                              ; $5bff: $00
	ldh  a, [$d0]                                    ; $5c00: $f0 $d0
	add  d                                           ; $5c02: $82
	ld   bc, $c800                                   ; $5c03: $01 $00 $c8
	add  b                                           ; $5c06: $80
	ld   de, $330b                                   ; $5c07: $11 $0b $33
	xor  d                                           ; $5c0a: $aa
	ld   bc, $2b0b                                   ; $5c0b: $01 $0b $2b
	xor  b                                           ; $5c0e: $a8
	ld   bc, $230b                                   ; $5c0f: $01 $0b $23
	and  [hl]                                        ; $5c12: $a6
	ld   bc, $3018                                   ; $5c13: $01 $18 $30
	and  b                                           ; $5c16: $a0
	nop                                              ; $5c17: $00
	jr   jr_03f_5c42                                 ; $5c18: $18 $28

	sbc  [hl]                                        ; $5c1a: $9e
	nop                                              ; $5c1b: $00
	jr   jr_03f_5c3e                                 ; $5c1c: $18 $20

	sbc  h                                           ; $5c1e: $9c
	nop                                              ; $5c1f: $00
	ei                                               ; $5c20: $fb
	ld   [hl-], a                                    ; $5c21: $32
	and  h                                           ; $5c22: $a4
	ld   bc, $2afb                                   ; $5c23: $01 $fb $2a
	and  d                                           ; $5c26: $a2
	ld   bc, $c824                                   ; $5c27: $01 $24 $c8
	xor  d                                           ; $5c2a: $aa
	ld   hl, $d024                                   ; $5c2b: $21 $24 $d0
	xor  b                                           ; $5c2e: $a8
	ld   hl, $d824                                   ; $5c2f: $21 $24 $d8
	and  [hl]                                        ; $5c32: $a6
	ld   hl, $c914                                   ; $5c33: $21 $14 $c9
	and  h                                           ; $5c36: $a4

jr_03f_5c37:
	ld   hl, $d114                                   ; $5c37: $21 $14 $d1
	and  d                                           ; $5c3a: $a2
	ld   hl, $1828                                   ; $5c3b: $21 $28 $18

jr_03f_5c3e:
	sbc  d                                           ; $5c3e: $9a

jr_03f_5c3f:
	nop                                              ; $5c3f: $00
	jr   @+$1a                                       ; $5c40: $18 $18

jr_03f_5c42:
	sbc  b                                           ; $5c42: $98
	nop                                              ; $5c43: $00
	ld   [$9610], sp                                 ; $5c44: $08 $10 $96
	nop                                              ; $5c47: $00
	ld   [$9408], sp                                 ; $5c48: $08 $08 $94
	nop                                              ; $5c4b: $00
	ld   hl, sp+$08                                  ; $5c4c: $f8 $08
	sub  d                                           ; $5c4e: $92
	nop                                              ; $5c4f: $00
	ld   hl, sp+$00                                  ; $5c50: $f8 $00
	sub  b                                           ; $5c52: $90
	nop                                              ; $5c53: $00
	ld   hl, sp-$08                                  ; $5c54: $f8 $f8
	adc  [hl]                                        ; $5c56: $8e
	nop                                              ; $5c57: $00
	nop                                              ; $5c58: $00
	ldh  a, [$8c]                                    ; $5c59: $f0 $8c
	nop                                              ; $5c5b: $00
	jr   nz, @-$16                                   ; $5c5c: $20 $e8

	adc  d                                           ; $5c5e: $8a
	nop                                              ; $5c5f: $00
	ld   [$88e8], sp                                 ; $5c60: $08 $e8 $88
	nop                                              ; $5c63: $00
	jr   z, @-$1e                                    ; $5c64: $28 $e0

	add  [hl]                                        ; $5c66: $86
	nop                                              ; $5c67: $00
	jr   @-$1e                                       ; $5c68: $18 $e0

	add  h                                           ; $5c6a: $84
	nop                                              ; $5c6b: $00
	ld   [$82e0], sp                                 ; $5c6c: $08 $e0 $82
	nop                                              ; $5c6f: $00
	jr   z, @-$26                                    ; $5c70: $28 $d8

	add  b                                           ; $5c72: $80
	db   $10                                         ; $5c73: $10
	jr   nz, @+$3a                                   ; $5c74: $20 $38

	cp   [hl]                                        ; $5c76: $be
	nop                                              ; $5c77: $00
	db   $10                                         ; $5c78: $10
	jr   c, jr_03f_5c37                              ; $5c79: $38 $bc

	nop                                              ; $5c7b: $00
	nop                                              ; $5c7c: $00
	jr   c, @-$44                                    ; $5c7d: $38 $ba

	inc  bc                                          ; $5c7f: $03
	jr   nz, jr_03f_5cb2                             ; $5c80: $20 $30

	cp   b                                           ; $5c82: $b8
	nop                                              ; $5c83: $00
	db   $10                                         ; $5c84: $10
	jr   nc, @-$48                                   ; $5c85: $30 $b6

	nop                                              ; $5c87: $00
	nop                                              ; $5c88: $00
	jr   nc, jr_03f_5c3f                             ; $5c89: $30 $b4

	inc  bc                                          ; $5c8b: $03
	jr   nz, jr_03f_5cb6                             ; $5c8c: $20 $28

	or   d                                           ; $5c8e: $b2
	nop                                              ; $5c8f: $00
	cp   $28                                         ; $5c90: $fe $28
	or   b                                           ; $5c92: $b0
	inc  bc                                          ; $5c93: $03
	jr   z, jr_03f_5cb6                              ; $5c94: $28 $20

	xor  [hl]                                        ; $5c96: $ae
	nop                                              ; $5c97: $00
	jr   @+$22                                       ; $5c98: $18 $20

	xor  h                                           ; $5c9a: $ac
	nop                                              ; $5c9b: $00
	ld   [$aa20], sp                                 ; $5c9c: $08 $20 $aa
	nop                                              ; $5c9f: $00
	ld   hl, sp+$20                                  ; $5ca0: $f8 $20
	xor  b                                           ; $5ca2: $a8
	inc  bc                                          ; $5ca3: $03
	jr   z, jr_03f_5cbe                              ; $5ca4: $28 $18

	and  [hl]                                        ; $5ca6: $a6
	nop                                              ; $5ca7: $00
	jr   jr_03f_5cc2                                 ; $5ca8: $18 $18

	and  h                                           ; $5caa: $a4
	nop                                              ; $5cab: $00
	ld   [$a218], sp                                 ; $5cac: $08 $18 $a2
	nop                                              ; $5caf: $00
	jr   z, jr_03f_5cc2                              ; $5cb0: $28 $10

jr_03f_5cb2:
	and  b                                           ; $5cb2: $a0
	nop                                              ; $5cb3: $00
	jr   @+$12                                       ; $5cb4: $18 $10

jr_03f_5cb6:
	sbc  [hl]                                        ; $5cb6: $9e

jr_03f_5cb7:
	nop                                              ; $5cb7: $00
	ld   [$9c10], sp                                 ; $5cb8: $08 $10 $9c
	nop                                              ; $5cbb: $00
	ld   hl, sp+$10                                  ; $5cbc: $f8 $10

jr_03f_5cbe:
	sbc  d                                           ; $5cbe: $9a
	inc  bc                                          ; $5cbf: $03
	jr   nz, jr_03f_5cca                             ; $5cc0: $20 $08

jr_03f_5cc2:
	sbc  b                                           ; $5cc2: $98
	nop                                              ; $5cc3: $00
	ld   [$9608], sp                                 ; $5cc4: $08 $08 $96
	nop                                              ; $5cc7: $00
	ld   hl, sp+$08                                  ; $5cc8: $f8 $08

jr_03f_5cca:
	sub  h                                           ; $5cca: $94

jr_03f_5ccb:
	inc  bc                                          ; $5ccb: $03
	ld   [$9200], sp                                 ; $5ccc: $08 $00 $92
	nop                                              ; $5ccf: $00
	ld   hl, sp+$00                                  ; $5cd0: $f8 $00
	sub  b                                           ; $5cd2: $90
	inc  bc                                          ; $5cd3: $03
	ld   hl, sp-$08                                  ; $5cd4: $f8 $f8
	adc  [hl]                                        ; $5cd6: $8e
	inc  bc                                          ; $5cd7: $03
	jr   @-$0f                                       ; $5cd8: $18 $ef

	adc  h                                           ; $5cda: $8c
	ld   bc, $f0f0                                   ; $5cdb: $01 $f0 $f0
	adc  d                                           ; $5cde: $8a
	inc  b                                           ; $5cdf: $04
	nop                                              ; $5ce0: $00
	add  sp, -$78                                    ; $5ce1: $e8 $88
	ld   [bc], a                                     ; $5ce3: $02
	ldh  a, [$e8]                                    ; $5ce4: $f0 $e8
	add  [hl]                                        ; $5ce6: $86
	inc  b                                           ; $5ce7: $04
	jr   z, jr_03f_5ccb                              ; $5ce8: $28 $e1

	add  h                                           ; $5cea: $84
	ld   bc, $e0f0                                   ; $5ceb: $01 $f0 $e0
	add  d                                           ; $5cee: $82
	inc  b                                           ; $5cef: $04
	ldh  a, [$d8]                                    ; $5cf0: $f0 $d8
	add  b                                           ; $5cf2: $80
	inc  d                                           ; $5cf3: $14
	jr   jr_03f_5d3e                                 ; $5cf4: $18 $48

	call nz, $2000                                   ; $5cf6: $c4 $00 $20
	ld   b, b                                        ; $5cf9: $40
	jp   nz, $1000                                   ; $5cfa: $c2 $00 $10

	ld   b, b                                        ; $5cfd: $40
	ret  nz                                          ; $5cfe: $c0

	stop                                             ; $5cff: $10 $00
	jr   jr_03f_5cb7                                 ; $5d01: $18 $b4

	nop                                              ; $5d03: $00
	nop                                              ; $5d04: $00
	jr   @-$4c                                       ; $5d05: $18 $b2

	ld   bc, $1810                                   ; $5d07: $01 $10 $18
	or   [hl]                                        ; $5d0a: $b6
	ld   bc, $1018                                   ; $5d0b: $01 $18 $10
	or   b                                           ; $5d0e: $b0
	nop                                              ; $5d0f: $00
	ld   hl, sp+$10                                  ; $5d10: $f8 $10
	xor  [hl]                                        ; $5d12: $ae
	nop                                              ; $5d13: $00
	ld   hl, sp+$10                                  ; $5d14: $f8 $10
	xor  h                                           ; $5d16: $ac
	ld   bc, $0818                                   ; $5d17: $01 $18 $08
	xor  d                                           ; $5d1a: $aa
	nop                                              ; $5d1b: $00
	db   $10                                         ; $5d1c: $10
	ld   [$01a8], sp                                 ; $5d1d: $08 $a8 $01
	jr   nz, jr_03f_5d22                             ; $5d20: $20 $00

jr_03f_5d22:
	and  [hl]                                        ; $5d22: $a6
	nop                                              ; $5d23: $00
	stop                                             ; $5d24: $10 $00

jr_03f_5d26:
	and  h                                           ; $5d26: $a4
	nop                                              ; $5d27: $00
	jr   z, jr_03f_5d22                              ; $5d28: $28 $f8

jr_03f_5d2a:
	and  d                                           ; $5d2a: $a2
	nop                                              ; $5d2b: $00
	jr   jr_03f_5d26                                 ; $5d2c: $18 $f8

	and  b                                           ; $5d2e: $a0
	nop                                              ; $5d2f: $00
	ld   [$9ef8], sp                                 ; $5d30: $08 $f8 $9e
	ld   [bc], a                                     ; $5d33: $02
	jr   nz, jr_03f_5d26                             ; $5d34: $20 $f0

jr_03f_5d36:
	sbc  h                                           ; $5d36: $9c
	nop                                              ; $5d37: $00
	db   $10                                         ; $5d38: $10
	ldh  a, [$9a]                                    ; $5d39: $f0 $9a
	ld   [bc], a                                     ; $5d3b: $02
	jr   nc, jr_03f_5d26                             ; $5d3c: $30 $e8

jr_03f_5d3e:
	sbc  b                                           ; $5d3e: $98
	nop                                              ; $5d3f: $00
	jr   nz, jr_03f_5d2a                             ; $5d40: $20 $e8

	sub  [hl]                                        ; $5d42: $96
	nop                                              ; $5d43: $00
	ld   [$94e8], sp                                 ; $5d44: $08 $e8 $94
	ld   bc, $e800                                   ; $5d47: $01 $00 $e8
	sub  d                                           ; $5d4a: $92
	nop                                              ; $5d4b: $00
	ldh  a, [$e8]                                    ; $5d4c: $f0 $e8
	sub  b                                           ; $5d4e: $90
	ld   [bc], a                                     ; $5d4f: $02
	jr   z, @-$1e                                    ; $5d50: $28 $e0

	adc  [hl]                                        ; $5d52: $8e
	nop                                              ; $5d53: $00
	jr   jr_03f_5d36                                 ; $5d54: $18 $e0

	adc  h                                           ; $5d56: $8c
	nop                                              ; $5d57: $00
	ld   [$8ae0], sp                                 ; $5d58: $08 $e0 $8a
	nop                                              ; $5d5b: $00
	ld   hl, sp-$20                                  ; $5d5c: $f8 $e0
	adc  b                                           ; $5d5e: $88
	ld   [bc], a                                     ; $5d5f: $02
	ld   [$86d8], sp                                 ; $5d60: $08 $d8 $86
	nop                                              ; $5d63: $00
	ld   hl, sp-$28                                  ; $5d64: $f8 $d8
	add  h                                           ; $5d66: $84
	ld   bc, $d8f0                                   ; $5d67: $01 $f0 $d8
	add  d                                           ; $5d6a: $82
	nop                                              ; $5d6b: $00
	ld   hl, sp-$30                                  ; $5d6c: $f8 $d0
	add  b                                           ; $5d6e: $80
	ld   de, $1020                                   ; $5d6f: $11 $20 $10
	ld   b, $05                                      ; $5d72: $06 $05
	db   $10                                         ; $5d74: $10
	db   $10                                         ; $5d75: $10
	inc  b                                           ; $5d76: $04
	dec  b                                           ; $5d77: $05
	jr   nz, jr_03f_5d82                             ; $5d78: $20 $08

	ld   [bc], a                                     ; $5d7a: $02
	dec  b                                           ; $5d7b: $05
	db   $10                                         ; $5d7c: $10
	ld   [$1500], sp                                 ; $5d7d: $08 $00 $15
	jr   nz, jr_03f_5d92                             ; $5d80: $20 $10

jr_03f_5d82:
	ld   c, $05                                      ; $5d82: $0e $05
	db   $10                                         ; $5d84: $10
	db   $10                                         ; $5d85: $10
	inc  c                                           ; $5d86: $0c
	dec  b                                           ; $5d87: $05
	jr   nz, jr_03f_5d92                             ; $5d88: $20 $08

	ld   a, [bc]                                     ; $5d8a: $0a
	dec  b                                           ; $5d8b: $05
	db   $10                                         ; $5d8c: $10
	ld   [$1508], sp                                 ; $5d8d: $08 $08 $15
	jr   z, jr_03f_5dae                              ; $5d90: $28 $1c

jr_03f_5d92:
	ld   b, $05                                      ; $5d92: $06 $05
	jr   @+$1e                                       ; $5d94: $18 $1c

	inc  b                                           ; $5d96: $04
	dec  b                                           ; $5d97: $05
	jr   z, jr_03f_5dae                              ; $5d98: $28 $14

	ld   [bc], a                                     ; $5d9a: $02
	dec  b                                           ; $5d9b: $05
	jr   @+$16                                       ; $5d9c: $18 $14

	nop                                              ; $5d9e: $00
	dec  d                                           ; $5d9f: $15
	jr   z, jr_03f_5dbe                              ; $5da0: $28 $1c

	ld   c, $05                                      ; $5da2: $0e $05
	jr   jr_03f_5dc2                                 ; $5da4: $18 $1c

	inc  c                                           ; $5da6: $0c
	dec  b                                           ; $5da7: $05
	jr   z, jr_03f_5dbe                              ; $5da8: $28 $14

	ld   a, [bc]                                     ; $5daa: $0a
	dec  b                                           ; $5dab: $05
	jr   jr_03f_5dc2                                 ; $5dac: $18 $14

jr_03f_5dae:
	ld   [$3015], sp                                 ; $5dae: $08 $15 $30
	jr   z, @+$08                                    ; $5db1: $28 $06

	dec  b                                           ; $5db3: $05
	jr   nz, jr_03f_5dde                             ; $5db4: $20 $28

	inc  b                                           ; $5db6: $04
	dec  b                                           ; $5db7: $05
	jr   nc, jr_03f_5dda                             ; $5db8: $30 $20

	ld   [bc], a                                     ; $5dba: $02
	dec  b                                           ; $5dbb: $05
	jr   nz, jr_03f_5dde                             ; $5dbc: $20 $20

jr_03f_5dbe:
	nop                                              ; $5dbe: $00
	dec  d                                           ; $5dbf: $15
	jr   nc, jr_03f_5dea                             ; $5dc0: $30 $28

jr_03f_5dc2:
	ld   c, $05                                      ; $5dc2: $0e $05
	jr   nz, jr_03f_5dee                             ; $5dc4: $20 $28

	inc  c                                           ; $5dc6: $0c
	dec  b                                           ; $5dc7: $05
	jr   nc, jr_03f_5dea                             ; $5dc8: $30 $20

	ld   a, [bc]                                     ; $5dca: $0a
	dec  b                                           ; $5dcb: $05
	jr   nz, jr_03f_5dee                             ; $5dcc: $20 $20

	ld   [$3815], sp                                 ; $5dce: $08 $15 $38
	inc  [hl]                                        ; $5dd1: $34
	ld   b, $05                                      ; $5dd2: $06 $05
	jr   z, @+$36                                    ; $5dd4: $28 $34

	inc  b                                           ; $5dd6: $04
	dec  b                                           ; $5dd7: $05
	jr   c, jr_03f_5e06                              ; $5dd8: $38 $2c

jr_03f_5dda:
	ld   [bc], a                                     ; $5dda: $02
	dec  b                                           ; $5ddb: $05
	jr   z, @+$2e                                    ; $5ddc: $28 $2c

jr_03f_5dde:
	nop                                              ; $5dde: $00
	dec  d                                           ; $5ddf: $15
	jr   c, jr_03f_5e16                              ; $5de0: $38 $34

	ld   c, $05                                      ; $5de2: $0e $05
	jr   z, jr_03f_5e1a                              ; $5de4: $28 $34

	inc  c                                           ; $5de6: $0c
	dec  b                                           ; $5de7: $05
	jr   c, jr_03f_5e16                              ; $5de8: $38 $2c

jr_03f_5dea:
	ld   a, [bc]                                     ; $5dea: $0a
	dec  b                                           ; $5deb: $05
	jr   z, jr_03f_5e1a                              ; $5dec: $28 $2c

jr_03f_5dee:
	ld   [$2815], sp                                 ; $5dee: $08 $15 $28
	add  hl, de                                      ; $5df1: $19
	ld   d, $06                                      ; $5df2: $16 $06
	jr   @+$1b                                       ; $5df4: $18 $19

	inc  d                                           ; $5df6: $14
	ld   b, $28                                      ; $5df7: $06 $28
	ld   de, $0612                                   ; $5df9: $11 $12 $06
	jr   @+$13                                       ; $5dfc: $18 $11

	db   $10                                         ; $5dfe: $10
	ld   d, $28                                      ; $5dff: $16 $28
	add  hl, de                                      ; $5e01: $19
	ld   e, $06                                      ; $5e02: $1e $06
	jr   @+$1b                                       ; $5e04: $18 $19

jr_03f_5e06:
	inc  e                                           ; $5e06: $1c
	ld   b, $28                                      ; $5e07: $06 $28
	ld   de, $061a                                   ; $5e09: $11 $1a $06
	jr   @+$13                                       ; $5e0c: $18 $11

	jr   jr_03f_5e26                                 ; $5e0e: $18 $16

	jr   z, @+$1c                                    ; $5e10: $28 $1a

	ld   h, $06                                      ; $5e12: $26 $06
	jr   @+$1c                                       ; $5e14: $18 $1a

jr_03f_5e16:
	inc  h                                           ; $5e16: $24
	ld   b, $28                                      ; $5e17: $06 $28
	db   $10                                         ; $5e19: $10

jr_03f_5e1a:
	ld   [hl+], a                                    ; $5e1a: $22
	ld   b, $18                                      ; $5e1b: $06 $18
	db   $10                                         ; $5e1d: $10
	jr   nz, @+$18                                   ; $5e1e: $20 $16

	jr   nc, jr_03f_5e4a                             ; $5e20: $30 $28

	ld   d, $06                                      ; $5e22: $16 $06
	jr   nz, jr_03f_5e4e                             ; $5e24: $20 $28

jr_03f_5e26:
	inc  d                                           ; $5e26: $14
	ld   b, $30                                      ; $5e27: $06 $30
	jr   nz, jr_03f_5e3d                             ; $5e29: $20 $12

	ld   b, $20                                      ; $5e2b: $06 $20
	jr   nz, jr_03f_5e3f                             ; $5e2d: $20 $10

	ld   d, $30                                      ; $5e2f: $16 $30
	jr   z, jr_03f_5e51                              ; $5e31: $28 $1e

	ld   b, $20                                      ; $5e33: $06 $20
	jr   z, jr_03f_5e53                              ; $5e35: $28 $1c

	ld   b, $30                                      ; $5e37: $06 $30
	jr   nz, jr_03f_5e55                             ; $5e39: $20 $1a

	ld   b, $20                                      ; $5e3b: $06 $20

jr_03f_5e3d:
	jr   nz, jr_03f_5e57                             ; $5e3d: $20 $18

jr_03f_5e3f:
	ld   d, $30                                      ; $5e3f: $16 $30
	add  hl, hl                                      ; $5e41: $29
	ld   h, $06                                      ; $5e42: $26 $06
	jr   nz, @+$2b                                   ; $5e44: $20 $29

	inc  h                                           ; $5e46: $24
	ld   b, $30                                      ; $5e47: $06 $30
	rra                                              ; $5e49: $1f

jr_03f_5e4a:
	ld   [hl+], a                                    ; $5e4a: $22
	ld   b, $20                                      ; $5e4b: $06 $20
	rra                                              ; $5e4d: $1f

jr_03f_5e4e:
	jr   nz, @+$18                                   ; $5e4e: $20 $16

	db   $10                                         ; $5e50: $10

jr_03f_5e51:
	jr   z, jr_03f_5e7f                              ; $5e51: $28 $2c

jr_03f_5e53:
	ld   b, $20                                      ; $5e53: $06 $20

jr_03f_5e55:
	jr   nz, jr_03f_5e81                             ; $5e55: $20 $2a

jr_03f_5e57:
	ld   b, $10                                      ; $5e57: $06 $10
	jr   nz, jr_03f_5e83                             ; $5e59: $20 $28

	ld   d, $10                                      ; $5e5b: $16 $10
	jr   z, jr_03f_5e91                              ; $5e5d: $28 $32

	ld   b, $28                                      ; $5e5f: $06 $28
	jr   nz, jr_03f_5e93                             ; $5e61: $20 $30

	ld   b, $18                                      ; $5e63: $06 $18
	jr   nz, jr_03f_5e95                             ; $5e65: $20 $2e

	ld   d, $20                                      ; $5e67: $16 $20
	dec  h                                           ; $5e69: $25
	ld   a, [hl-]                                    ; $5e6a: $3a
	ld   b, $10                                      ; $5e6b: $06 $10
	dec  h                                           ; $5e6d: $25
	jr   c, jr_03f_5e76                              ; $5e6e: $38 $06

	jr   z, jr_03f_5e8f                              ; $5e70: $28 $1d

	ld   [hl], $06                                   ; $5e72: $36 $06
	jr   jr_03f_5e93                                 ; $5e74: $18 $1d

jr_03f_5e76:
	inc  [hl]                                        ; $5e76: $34
	ld   d, $10                                      ; $5e77: $16 $10
	jr   z, jr_03f_5ebd                              ; $5e79: $28 $42

	ld   b, $30                                      ; $5e7b: $06 $30
	jr   nz, jr_03f_5ebf                             ; $5e7d: $20 $40

jr_03f_5e7f:
	ld   b, $20                                      ; $5e7f: $06 $20

jr_03f_5e81:
	jr   nz, @+$40                                   ; $5e81: $20 $3e

jr_03f_5e83:
	ld   b, $10                                      ; $5e83: $06 $10
	jr   nz, jr_03f_5ec3                             ; $5e85: $20 $3c

	ld   d, $10                                      ; $5e87: $16 $10
	jr   z, jr_03f_5ed5                              ; $5e89: $28 $4a

	ld   b, $30                                      ; $5e8b: $06 $30
	jr   nz, @+$4a                                   ; $5e8d: $20 $48

jr_03f_5e8f:
	ld   b, $20                                      ; $5e8f: $06 $20

jr_03f_5e91:
	jr   nz, @+$48                                   ; $5e91: $20 $46

jr_03f_5e93:
	ld   b, $10                                      ; $5e93: $06 $10

jr_03f_5e95:
	jr   nz, @+$46                                   ; $5e95: $20 $44

	ld   d, $20                                      ; $5e97: $16 $20
	ld   sp, $0552                                   ; $5e99: $31 $52 $05
	db   $10                                         ; $5e9c: $10
	ld   sp, $0550                                   ; $5e9d: $31 $50 $05
	jr   nc, jr_03f_5ecb                             ; $5ea0: $30 $29

	ld   c, [hl]                                     ; $5ea2: $4e
	dec  b                                           ; $5ea3: $05
	jr   nz, jr_03f_5ecf                             ; $5ea4: $20 $29

	ld   c, h                                        ; $5ea6: $4c
	dec  d                                           ; $5ea7: $15
	jr   nz, jr_03f_5eda                             ; $5ea8: $20 $30

	ld   e, d                                        ; $5eaa: $5a
	dec  b                                           ; $5eab: $05
	db   $10                                         ; $5eac: $10
	jr   nc, jr_03f_5f07                             ; $5ead: $30 $58

	dec  b                                           ; $5eaf: $05
	jr   nc, jr_03f_5eda                             ; $5eb0: $30 $28

	ld   d, [hl]                                     ; $5eb2: $56
	dec  b                                           ; $5eb3: $05
	jr   nz, jr_03f_5ede                             ; $5eb4: $20 $28

	ld   d, h                                        ; $5eb6: $54
	dec  d                                           ; $5eb7: $15
	jr   nz, jr_03f_5eea                             ; $5eb8: $20 $30

	ld   h, d                                        ; $5eba: $62
	dec  b                                           ; $5ebb: $05
	db   $10                                         ; $5ebc: $10

jr_03f_5ebd:
	jr   nc, jr_03f_5f1f                             ; $5ebd: $30 $60

jr_03f_5ebf:
	dec  b                                           ; $5ebf: $05
	jr   nc, jr_03f_5eea                             ; $5ec0: $30 $28

	ld   e, [hl]                                     ; $5ec2: $5e

jr_03f_5ec3:
	dec  b                                           ; $5ec3: $05
	jr   nz, jr_03f_5eee                             ; $5ec4: $20 $28

	ld   e, h                                        ; $5ec6: $5c
	dec  d                                           ; $5ec7: $15
	jr   nz, jr_03f_5efa                             ; $5ec8: $20 $30

	ld   l, b                                        ; $5eca: $68

jr_03f_5ecb:
	dec  b                                           ; $5ecb: $05
	jr   nc, jr_03f_5ef6                             ; $5ecc: $30 $28

	ld   h, [hl]                                     ; $5ece: $66

jr_03f_5ecf:
	dec  b                                           ; $5ecf: $05
	jr   nz, jr_03f_5efa                             ; $5ed0: $20 $28

	ld   h, h                                        ; $5ed2: $64
	dec  d                                           ; $5ed3: $15
	db   $10                                         ; $5ed4: $10

jr_03f_5ed5:
	ld   [$166a], sp                                 ; $5ed5: $08 $6a $16
	jr   nz, jr_03f_5ee1                             ; $5ed8: $20 $07

jr_03f_5eda:
	ld   d, $06                                      ; $5eda: $16 $06
	db   $10                                         ; $5edc: $10
	rlca                                             ; $5edd: $07

jr_03f_5ede:
	inc  d                                           ; $5ede: $14
	ld   b, $20                                      ; $5edf: $06 $20

jr_03f_5ee1:
	rst  $38                                         ; $5ee1: $ff
	ld   [de], a                                     ; $5ee2: $12
	ld   b, $10                                      ; $5ee3: $06 $10
	rst  $38                                         ; $5ee5: $ff
	db   $10                                         ; $5ee6: $10
	ld   d, $20                                      ; $5ee7: $16 $20
	rlca                                             ; $5ee9: $07

jr_03f_5eea:
	ld   e, $06                                      ; $5eea: $1e $06
	db   $10                                         ; $5eec: $10
	rlca                                             ; $5eed: $07

jr_03f_5eee:
	inc  e                                           ; $5eee: $1c
	ld   b, $20                                      ; $5eef: $06 $20
	rst  $38                                         ; $5ef1: $ff
	ld   a, [de]                                     ; $5ef2: $1a
	ld   b, $10                                      ; $5ef3: $06 $10
	rst  $38                                         ; $5ef5: $ff

jr_03f_5ef6:
	jr   @+$18                                       ; $5ef6: $18 $16

	jr   nz, jr_03f_5f02                             ; $5ef8: $20 $08

jr_03f_5efa:
	ld   h, $06                                      ; $5efa: $26 $06
	db   $10                                         ; $5efc: $10
	ld   [$0624], sp                                 ; $5efd: $08 $24 $06

jr_03f_5f00:
	jr   nz, jr_03f_5f00                             ; $5f00: $20 $fe

jr_03f_5f02:
	ld   [hl+], a                                    ; $5f02: $22
	ld   b, $10                                      ; $5f03: $06 $10
	cp   $20                                         ; $5f05: $fe $20

jr_03f_5f07:
	ld   d, $18                                      ; $5f07: $16 $18
	ld   [hl-], a                                    ; $5f09: $32
	ld   d, $06                                      ; $5f0a: $16 $06
	ld   [$1432], sp                                 ; $5f0c: $08 $32 $14
	ld   b, $18                                      ; $5f0f: $06 $18
	ld   a, [hl+]                                    ; $5f11: $2a
	ld   [de], a                                     ; $5f12: $12
	ld   b, $08                                      ; $5f13: $06 $08
	ld   a, [hl+]                                    ; $5f15: $2a
	db   $10                                         ; $5f16: $10
	ld   d, $18                                      ; $5f17: $16 $18
	ld   [hl-], a                                    ; $5f19: $32
	ld   e, $06                                      ; $5f1a: $1e $06
	ld   [$1c32], sp                                 ; $5f1c: $08 $32 $1c

jr_03f_5f1f:
	ld   b, $18                                      ; $5f1f: $06 $18
	ld   a, [hl+]                                    ; $5f21: $2a
	ld   a, [de]                                     ; $5f22: $1a
	ld   b, $08                                      ; $5f23: $06 $08
	ld   a, [hl+]                                    ; $5f25: $2a
	jr   @+$18                                       ; $5f26: $18 $16

	jr   jr_03f_5f5d                                 ; $5f28: $18 $33

	ld   h, $06                                      ; $5f2a: $26 $06
	ld   [$2433], sp                                 ; $5f2c: $08 $33 $24
	ld   b, $18                                      ; $5f2f: $06 $18
	add  hl, hl                                      ; $5f31: $29
	ld   [hl+], a                                    ; $5f32: $22
	ld   b, $08                                      ; $5f33: $06 $08
	add  hl, hl                                      ; $5f35: $29
	jr   nz, jr_03f_5f4e                             ; $5f36: $20 $16

	add  hl, hl                                      ; $5f38: $29
	jr   jr_03f_5fad                                 ; $5f39: $18 $72

	ld   b, $19                                      ; $5f3b: $06 $19
	jr   jr_03f_5faf                                 ; $5f3d: $18 $70

	ld   b, $29                                      ; $5f3f: $06 $29
	db   $10                                         ; $5f41: $10
	ld   l, [hl]                                     ; $5f42: $6e
	ld   b, $19                                      ; $5f43: $06 $19
	db   $10                                         ; $5f45: $10
	ld   l, h                                        ; $5f46: $6c
	ld   d, $21                                      ; $5f47: $16 $21
	dec  de                                          ; $5f49: $1b
	ld   a, b                                        ; $5f4a: $78
	ld   b, $11                                      ; $5f4b: $06 $11
	inc  de                                          ; $5f4d: $13

jr_03f_5f4e:
	halt                                             ; $5f4e: $76
	ld   b, $21                                      ; $5f4f: $06 $21
	inc  c                                           ; $5f51: $0c
	ld   [hl], h                                     ; $5f52: $74
	ld   d, $19                                      ; $5f53: $16 $19
	ld   [$166a], sp                                 ; $5f55: $08 $6a $16
	add  hl, bc                                      ; $5f58: $09
	ccf                                              ; $5f59: $3f
	ld   a, h                                        ; $5f5a: $7c
	ld   b, $09                                      ; $5f5b: $06 $09

jr_03f_5f5d:
	scf                                              ; $5f5d: $37
	ld   a, d                                        ; $5f5e: $7a
	ld   d, $09                                      ; $5f5f: $16 $09
	scf                                              ; $5f61: $37
	ld   a, [hl]                                     ; $5f62: $7e
	ld   b, $19                                      ; $5f63: $06 $19
	cpl                                              ; $5f65: $2f
	ld   a, h                                        ; $5f66: $7c
	ld   b, $19                                      ; $5f67: $06 $19
	daa                                              ; $5f69: $27
	ld   a, d                                        ; $5f6a: $7a
	ld   d, $11                                      ; $5f6b: $16 $11
	cpl                                              ; $5f6d: $2f
	ld   a, [hl]                                     ; $5f6e: $7e
	ld   b, $19                                      ; $5f6f: $06 $19
	daa                                              ; $5f71: $27
	ld   a, [hl]                                     ; $5f72: $7e
	ld   b, $29                                      ; $5f73: $06 $29
	rra                                              ; $5f75: $1f
	ld   a, h                                        ; $5f76: $7c
	ld   b, $29                                      ; $5f77: $06 $29
	rla                                              ; $5f79: $17
	ld   a, d                                        ; $5f7a: $7a
	ld   d, $19                                      ; $5f7b: $16 $19
	daa                                              ; $5f7d: $27
	ld   a, [hl]                                     ; $5f7e: $7e
	ld   b, $21                                      ; $5f7f: $06 $21
	rra                                              ; $5f81: $1f
	ld   a, [hl]                                     ; $5f82: $7e
	ld   b, $31                                      ; $5f83: $06 $31
	rla                                              ; $5f85: $17
	ld   a, h                                        ; $5f86: $7c
	ld   b, $31                                      ; $5f87: $06 $31
	rrca                                             ; $5f89: $0f
	ld   a, d                                        ; $5f8a: $7a
	ld   d, $21                                      ; $5f8b: $16 $21
	rra                                              ; $5f8d: $1f
	ld   a, [hl]                                     ; $5f8e: $7e
	ld   b, $29                                      ; $5f8f: $06 $29
	rla                                              ; $5f91: $17
	ld   a, [hl]                                     ; $5f92: $7e
	ld   b, $39                                      ; $5f93: $06 $39
	rrca                                             ; $5f95: $0f
	ld   a, h                                        ; $5f96: $7c
	ld   b, $39                                      ; $5f97: $06 $39
	rlca                                             ; $5f99: $07
	ld   a, d                                        ; $5f9a: $7a
	ld   d, $39                                      ; $5f9b: $16 $39
	rlca                                             ; $5f9d: $07
	ld   a, [hl]                                     ; $5f9e: $7e
	ld   b, $29                                      ; $5f9f: $06 $29
	rla                                              ; $5fa1: $17
	ld   a, [hl]                                     ; $5fa2: $7e
	ld   b, $31                                      ; $5fa3: $06 $31
	rrca                                             ; $5fa5: $0f
	ld   a, [hl]                                     ; $5fa6: $7e
	ld   d, $39                                      ; $5fa7: $16 $39
	rlca                                             ; $5fa9: $07
	ld   a, [hl]                                     ; $5faa: $7e
	ld   b, $31                                      ; $5fab: $06 $31

jr_03f_5fad:
	rrca                                             ; $5fad: $0f
	ld   a, [hl]                                     ; $5fae: $7e

jr_03f_5faf:
	ld   d, $21                                      ; $5faf: $16 $21
	ld   d, $72                                      ; $5fb1: $16 $72
	ld   b, $11                                      ; $5fb3: $06 $11
	ld   d, $70                                      ; $5fb5: $16 $70
	ld   b, $21                                      ; $5fb7: $06 $21
	ld   c, $6e                                      ; $5fb9: $0e $6e
	ld   b, $11                                      ; $5fbb: $06 $11
	ld   c, $6c                                      ; $5fbd: $0e $6c
	ld   d, $29                                      ; $5fbf: $16 $29
	inc  de                                          ; $5fc1: $13
	ld   a, d                                        ; $5fc2: $7a
	ld   b, $19                                      ; $5fc3: $06 $19
	inc  de                                          ; $5fc5: $13
	ld   a, b                                        ; $5fc6: $78
	ld   b, $29                                      ; $5fc7: $06 $29
	dec  bc                                          ; $5fc9: $0b
	halt                                             ; $5fca: $76
	ld   b, $19                                      ; $5fcb: $06 $19
	dec  bc                                          ; $5fcd: $0b
	ld   [hl], h                                     ; $5fce: $74
	ld   d, $29                                      ; $5fcf: $16 $29
	jr   jr_03f_604d                                 ; $5fd1: $18 $7a

	ld   b, $19                                      ; $5fd3: $06 $19
	jr   @+$7a                                       ; $5fd5: $18 $78

	ld   b, $29                                      ; $5fd7: $06 $29
	db   $10                                         ; $5fd9: $10
	halt                                             ; $5fda: $76
	ld   b, $19                                      ; $5fdb: $06 $19
	db   $10                                         ; $5fdd: $10
	ld   [hl], h                                     ; $5fde: $74
	ld   d, $2d                                      ; $5fdf: $16 $2d
	add  hl, hl                                      ; $5fe1: $29
	ld   d, $06                                      ; $5fe2: $16 $06
	dec  e                                           ; $5fe4: $1d
	add  hl, hl                                      ; $5fe5: $29
	inc  d                                           ; $5fe6: $14
	ld   b, $2d                                      ; $5fe7: $06 $2d
	ld   hl, $0612                                   ; $5fe9: $21 $12 $06
	dec  e                                           ; $5fec: $1d
	ld   hl, $1610                                   ; $5fed: $21 $10 $16
	dec  l                                           ; $5ff0: $2d
	add  hl, hl                                      ; $5ff1: $29
	ld   e, $06                                      ; $5ff2: $1e $06
	dec  e                                           ; $5ff4: $1d
	add  hl, hl                                      ; $5ff5: $29
	inc  e                                           ; $5ff6: $1c
	ld   b, $2d                                      ; $5ff7: $06 $2d
	ld   hl, $061a                                   ; $5ff9: $21 $1a $06
	dec  e                                           ; $5ffc: $1d
	ld   hl, $1618                                   ; $5ffd: $21 $18 $16
	dec  l                                           ; $6000: $2d
	ld   a, [hl+]                                    ; $6001: $2a
	ld   h, $06                                      ; $6002: $26 $06
	dec  e                                           ; $6004: $1d
	ld   a, [hl+]                                    ; $6005: $2a
	inc  h                                           ; $6006: $24
	ld   b, $2d                                      ; $6007: $06 $2d
	jr   nz, jr_03f_602d                             ; $6009: $20 $22

	ld   b, $1d                                      ; $600b: $06 $1d
	jr   nz, jr_03f_602f                             ; $600d: $20 $20

	ld   d, $36                                      ; $600f: $16 $36
	jr   jr_03f_6015                                 ; $6011: $18 $02

	ld   b, $36                                      ; $6013: $06 $36

jr_03f_6015:
	stop                                             ; $6015: $10 $00
	ld   d, $36                                      ; $6017: $16 $36
	jr   @+$0c                                       ; $6019: $18 $0a

	ld   b, $26                                      ; $601b: $06 $26
	jr   jr_03f_6027                                 ; $601d: $18 $08

	ld   b, $36                                      ; $601f: $06 $36
	db   $10                                         ; $6021: $10
	ld   b, $06                                      ; $6022: $06 $06
	ld   h, $10                                      ; $6024: $26 $10
	inc  b                                           ; $6026: $04

jr_03f_6027:
	ld   d, $35                                      ; $6027: $16 $35
	inc  e                                           ; $6029: $1c
	ld   [de], a                                     ; $602a: $12
	ld   b, $23                                      ; $602b: $06 $23

jr_03f_602d:
	jr   jr_03f_603f                                 ; $602d: $18 $10

jr_03f_602f:
	ld   b, $35                                      ; $602f: $06 $35
	inc  c                                           ; $6031: $0c
	ld   c, $06                                      ; $6032: $0e $06
	inc  hl                                          ; $6034: $23
	db   $10                                         ; $6035: $10
	inc  c                                           ; $6036: $0c
	ld   d, $35                                      ; $6037: $16 $35
	inc  e                                           ; $6039: $1c
	ld   a, [de]                                     ; $603a: $1a
	ld   b, $21                                      ; $603b: $06 $21
	jr   jr_03f_6057                                 ; $603d: $18 $18

jr_03f_603f:
	ld   b, $35                                      ; $603f: $06 $35
	inc  c                                           ; $6041: $0c
	ld   d, $06                                      ; $6042: $16 $06
	ld   hl, $1410                                   ; $6044: $21 $10 $14
	ld   d, $36                                      ; $6047: $16 $36
	inc  e                                           ; $6049: $1c
	ld   [hl+], a                                    ; $604a: $22
	ld   b, $26                                      ; $604b: $06 $26

jr_03f_604d:
	ld   a, [de]                                     ; $604d: $1a
	jr   nz, jr_03f_6056                             ; $604e: $20 $06

	ld   [hl], $0c                                   ; $6050: $36 $0c
	ld   e, $06                                      ; $6052: $1e $06
	ld   h, $0e                                      ; $6054: $26 $0e

jr_03f_6056:
	inc  e                                           ; $6056: $1c

jr_03f_6057:
	ld   d, $36                                      ; $6057: $16 $36
	inc  e                                           ; $6059: $1c
	ld   a, [hl+]                                    ; $605a: $2a
	dec  b                                           ; $605b: $05
	ld   h, $1a                                      ; $605c: $26 $1a
	jr   z, @+$07                                    ; $605e: $28 $05

	ld   [hl], $0c                                   ; $6060: $36 $0c
	ld   h, $05                                      ; $6062: $26 $05
	ld   h, $0e                                      ; $6064: $26 $0e
	inc  h                                           ; $6066: $24
	dec  d                                           ; $6067: $15
	ld   e, $28                                      ; $6068: $1e $28
	ld   [bc], a                                     ; $606a: $02
	ld   b, $1e                                      ; $606b: $06 $1e
	jr   nz, jr_03f_606f                             ; $606d: $20 $00

jr_03f_606f:
	ld   d, $1e                                      ; $606f: $16 $1e
	jr   z, jr_03f_607d                              ; $6071: $28 $0a

	ld   b, $0e                                      ; $6073: $06 $0e
	jr   z, jr_03f_607f                              ; $6075: $28 $08

	ld   b, $1e                                      ; $6077: $06 $1e
	jr   nz, jr_03f_6081                             ; $6079: $20 $06

	ld   b, $0e                                      ; $607b: $06 $0e

jr_03f_607d:
	jr   nz, jr_03f_6083                             ; $607d: $20 $04

jr_03f_607f:
	ld   d, $0b                                      ; $607f: $16 $0b

jr_03f_6081:
	jr   nz, @+$0e                                   ; $6081: $20 $0c

jr_03f_6083:
	ld   b, $0b                                      ; $6083: $06 $0b
	jr   z, jr_03f_6097                              ; $6085: $28 $10

	ld   b, $1d                                      ; $6087: $06 $1d
	inc  l                                           ; $6089: $2c
	ld   [de], a                                     ; $608a: $12
	ld   b, $1d                                      ; $608b: $06 $1d
	inc  e                                           ; $608d: $1c
	ld   c, $16                                      ; $608e: $0e $16
	dec  e                                           ; $6090: $1d
	inc  l                                           ; $6091: $2c
	ld   a, [de]                                     ; $6092: $1a
	ld   b, $09                                      ; $6093: $06 $09
	jr   z, jr_03f_60af                              ; $6095: $28 $18

jr_03f_6097:
	ld   b, $1d                                      ; $6097: $06 $1d
	inc  e                                           ; $6099: $1c
	ld   d, $06                                      ; $609a: $16 $06
	add  hl, bc                                      ; $609c: $09
	jr   nz, jr_03f_60b3                             ; $609d: $20 $14

	ld   d, $1e                                      ; $609f: $16 $1e
	inc  l                                           ; $60a1: $2c
	ld   [hl+], a                                    ; $60a2: $22
	ld   b, $0e                                      ; $60a3: $06 $0e
	ld   a, [hl+]                                    ; $60a5: $2a
	jr   nz, jr_03f_60ae                             ; $60a6: $20 $06

	ld   e, $1c                                      ; $60a8: $1e $1c
	ld   e, $06                                      ; $60aa: $1e $06
	ld   c, $1e                                      ; $60ac: $0e $1e

jr_03f_60ae:
	inc  e                                           ; $60ae: $1c

jr_03f_60af:
	ld   d, $1e                                      ; $60af: $16 $1e
	inc  l                                           ; $60b1: $2c
	ld   a, [hl+]                                    ; $60b2: $2a

jr_03f_60b3:
	dec  b                                           ; $60b3: $05
	ld   c, $2a                                      ; $60b4: $0e $2a
	jr   z, @+$07                                    ; $60b6: $28 $05

	ld   e, $1c                                      ; $60b8: $1e $1c
	ld   h, $05                                      ; $60ba: $26 $05
	ld   c, $1e                                      ; $60bc: $0e $1e
	inc  h                                           ; $60be: $24
	dec  d                                           ; $60bf: $15
	dec  h                                           ; $60c0: $25
	ld   [hl], $32                                   ; $60c1: $36 $32
	dec  b                                           ; $60c3: $05
	dec  d                                           ; $60c4: $15
	ld   [hl], $30                                   ; $60c5: $36 $30
	dec  b                                           ; $60c7: $05
	dec  h                                           ; $60c8: $25
	ld   l, $2e                                      ; $60c9: $2e $2e
	dec  b                                           ; $60cb: $05
	dec  d                                           ; $60cc: $15
	ld   l, $2c                                      ; $60cd: $2e $2c
	dec  d                                           ; $60cf: $15
	ld   [hl+], a                                    ; $60d0: $22
	inc  sp                                          ; $60d1: $33
	ld   a, [hl-]                                    ; $60d2: $3a
	dec  b                                           ; $60d3: $05
	ld   [de], a                                     ; $60d4: $12
	inc  sp                                          ; $60d5: $33
	jr   c, jr_03f_60dd                              ; $60d6: $38 $05

	ld   [hl+], a                                    ; $60d8: $22
	dec  hl                                          ; $60d9: $2b
	ld   [hl], $05                                   ; $60da: $36 $05
	ld   [de], a                                     ; $60dc: $12

jr_03f_60dd:
	dec  hl                                          ; $60dd: $2b
	inc  [hl]                                        ; $60de: $34
	dec  d                                           ; $60df: $15
	jr   nz, jr_03f_6112                             ; $60e0: $20 $30

	ld   [hl-], a                                    ; $60e2: $32
	dec  b                                           ; $60e3: $05
	db   $10                                         ; $60e4: $10
	jr   nc, @+$32                                   ; $60e5: $30 $30

	dec  b                                           ; $60e7: $05
	jr   nz, jr_03f_6112                             ; $60e8: $20 $28

	ld   l, $05                                      ; $60ea: $2e $05
	db   $10                                         ; $60ec: $10
	jr   z, @+$2e                                    ; $60ed: $28 $2c

	dec  d                                           ; $60ef: $15
	rra                                              ; $60f0: $1f
	dec  l                                           ; $60f1: $2d
	ld   a, [hl-]                                    ; $60f2: $3a
	dec  b                                           ; $60f3: $05
	rrca                                             ; $60f4: $0f
	dec  l                                           ; $60f5: $2d
	jr   c, jr_03f_60fd                              ; $60f6: $38 $05

	rra                                              ; $60f8: $1f
	dec  h                                           ; $60f9: $25
	ld   [hl], $05                                   ; $60fa: $36 $05
	rrca                                             ; $60fc: $0f

jr_03f_60fd:
	dec  h                                           ; $60fd: $25
	inc  [hl]                                        ; $60fe: $34
	dec  d                                           ; $60ff: $15
	rra                                              ; $6100: $1f
	ld   a, [hl+]                                    ; $6101: $2a
	ld   [hl-], a                                    ; $6102: $32
	dec  b                                           ; $6103: $05
	rrca                                             ; $6104: $0f
	ld   a, [hl+]                                    ; $6105: $2a
	jr   nc, jr_03f_610d                             ; $6106: $30 $05

	rra                                              ; $6108: $1f
	ld   [hl+], a                                    ; $6109: $22
	ld   l, $05                                      ; $610a: $2e $05
	rrca                                             ; $610c: $0f

jr_03f_610d:
	ld   [hl+], a                                    ; $610d: $22
	inc  l                                           ; $610e: $2c
	dec  d                                           ; $610f: $15
	rra                                              ; $6110: $1f
	daa                                              ; $6111: $27

jr_03f_6112:
	ld   a, [hl-]                                    ; $6112: $3a
	dec  b                                           ; $6113: $05
	rrca                                             ; $6114: $0f
	daa                                              ; $6115: $27
	jr   c, jr_03f_611d                              ; $6116: $38 $05

	rra                                              ; $6118: $1f
	rra                                              ; $6119: $1f
	ld   [hl], $05                                   ; $611a: $36 $05
	rrca                                             ; $611c: $0f

jr_03f_611d:
	rra                                              ; $611d: $1f
	inc  [hl]                                        ; $611e: $34
	dec  d                                           ; $611f: $15
	ld   e, $24                                      ; $6120: $1e $24
	ld   [hl-], a                                    ; $6122: $32
	dec  b                                           ; $6123: $05
	ld   c, $24                                      ; $6124: $0e $24
	jr   nc, @+$07                                   ; $6126: $30 $05

	ld   e, $1c                                      ; $6128: $1e $1c
	ld   l, $05                                      ; $612a: $2e $05
	ld   c, $1c                                      ; $612c: $0e $1c
	inc  l                                           ; $612e: $2c
	dec  d                                           ; $612f: $15
	dec  c                                           ; $6130: $0d
	jr   jr_03f_616f                                 ; $6131: $18 $3c

	dec  d                                           ; $6133: $15
	dec  e                                           ; $6134: $1d
	ld   e, $42                                      ; $6135: $1e $42
	dec  b                                           ; $6137: $05
	dec  c                                           ; $6138: $0d
	ld   e, $40                                      ; $6139: $1e $40
	dec  b                                           ; $613b: $05
	ld   c, $16                                      ; $613c: $0e $16
	ld   a, $15                                      ; $613e: $3e $15
	dec  e                                           ; $6140: $1d
	jr   nz, jr_03f_618d                             ; $6141: $20 $4a

	dec  b                                           ; $6143: $05
	dec  c                                           ; $6144: $0d
	jr   nz, jr_03f_618f                             ; $6145: $20 $48

	dec  b                                           ; $6147: $05
	dec  e                                           ; $6148: $1d
	jr   jr_03f_6191                                 ; $6149: $18 $46

	dec  b                                           ; $614b: $05
	dec  c                                           ; $614c: $0d
	jr   jr_03f_6193                                 ; $614d: $18 $44

	dec  d                                           ; $614f: $15
	dec  e                                           ; $6150: $1d
	jr   nz, jr_03f_61a3                             ; $6151: $20 $50

	dec  b                                           ; $6153: $05
	dec  c                                           ; $6154: $0d
	jr   nz, jr_03f_61a5                             ; $6155: $20 $4e

	dec  b                                           ; $6157: $05
	dec  e                                           ; $6158: $1d
	jr   jr_03f_61a7                                 ; $6159: $18 $4c

	dec  b                                           ; $615b: $05
	dec  c                                           ; $615c: $0d
	jr   jr_03f_61a3                                 ; $615d: $18 $44

	dec  d                                           ; $615f: $15
	dec  e                                           ; $6160: $1d
	jr   nz, jr_03f_61b3                             ; $6161: $20 $50

	dec  b                                           ; $6163: $05
	dec  c                                           ; $6164: $0d
	jr   nz, jr_03f_61b9                             ; $6165: $20 $52

	dec  b                                           ; $6167: $05
	dec  e                                           ; $6168: $1d
	jr   jr_03f_61b7                                 ; $6169: $18 $4c

	dec  b                                           ; $616b: $05
	dec  c                                           ; $616c: $0d
	jr   jr_03f_61b3                                 ; $616d: $18 $44

jr_03f_616f:
	dec  d                                           ; $616f: $15
	dec  e                                           ; $6170: $1d
	jr   nz, jr_03f_61cd                             ; $6171: $20 $5a

	dec  b                                           ; $6173: $05
	dec  c                                           ; $6174: $0d
	jr   nz, jr_03f_61cf                             ; $6175: $20 $58

	dec  b                                           ; $6177: $05
	dec  e                                           ; $6178: $1d
	jr   jr_03f_61d1                                 ; $6179: $18 $56

	dec  b                                           ; $617b: $05
	dec  c                                           ; $617c: $0d
	jr   jr_03f_61d3                                 ; $617d: $18 $54

	dec  d                                           ; $617f: $15
	dec  e                                           ; $6180: $1d
	jr   nz, jr_03f_61e5                             ; $6181: $20 $62

	dec  b                                           ; $6183: $05
	dec  c                                           ; $6184: $0d
	jr   nz, jr_03f_61e7                             ; $6185: $20 $60

	dec  b                                           ; $6187: $05
	dec  e                                           ; $6188: $1d
	jr   jr_03f_61e9                                 ; $6189: $18 $5e

	dec  b                                           ; $618b: $05
	dec  c                                           ; $618c: $0d

jr_03f_618d:
	jr   @+$5e                                       ; $618d: $18 $5c

jr_03f_618f:
	dec  d                                           ; $618f: $15
	dec  e                                           ; $6190: $1d

jr_03f_6191:
	ld   [hl+], a                                    ; $6191: $22
	ld   l, d                                        ; $6192: $6a

jr_03f_6193:
	dec  b                                           ; $6193: $05
	dec  c                                           ; $6194: $0d
	ld   [hl+], a                                    ; $6195: $22
	ld   l, b                                        ; $6196: $68
	dec  b                                           ; $6197: $05
	dec  e                                           ; $6198: $1d
	rla                                              ; $6199: $17
	ld   h, [hl]                                     ; $619a: $66
	dec  b                                           ; $619b: $05
	dec  c                                           ; $619c: $0d
	rla                                              ; $619d: $17
	ld   h, h                                        ; $619e: $64
	dec  d                                           ; $619f: $15
	cpl                                              ; $61a0: $2f
	ld   h, $02                                      ; $61a1: $26 $02

jr_03f_61a3:
	ld   b, $2f                                      ; $61a3: $06 $2f

jr_03f_61a5:
	ld   e, $00                                      ; $61a5: $1e $00

jr_03f_61a7:
	ld   d, $2f                                      ; $61a7: $16 $2f
	ld   h, $06                                      ; $61a9: $26 $06
	ld   b, $2f                                      ; $61ab: $06 $2f
	ld   e, $04                                      ; $61ad: $1e $04
	ld   d, $2f                                      ; $61af: $16 $2f
	ld   h, $0a                                      ; $61b1: $26 $0a

jr_03f_61b3:
	ld   b, $2f                                      ; $61b3: $06 $2f
	ld   e, $08                                      ; $61b5: $1e $08

jr_03f_61b7:
	ld   b, $1f                                      ; $61b7: $06 $1f

jr_03f_61b9:
	ld   l, $02                                      ; $61b9: $2e $02
	ld   b, $1f                                      ; $61bb: $06 $1f
	ld   h, $00                                      ; $61bd: $26 $00
	ld   d, $2f                                      ; $61bf: $16 $2f
	ld   h, $0e                                      ; $61c1: $26 $0e
	ld   b, $2f                                      ; $61c3: $06 $2f
	ld   e, $0c                                      ; $61c5: $1e $0c
	ld   b, $1f                                      ; $61c7: $06 $1f
	ld   l, $06                                      ; $61c9: $2e $06
	ld   b, $1f                                      ; $61cb: $06 $1f

jr_03f_61cd:
	ld   h, $04                                      ; $61cd: $26 $04

jr_03f_61cf:
	ld   d, $1f                                      ; $61cf: $16 $1f

jr_03f_61d1:
	ld   l, $0a                                      ; $61d1: $2e $0a

jr_03f_61d3:
	ld   b, $1f                                      ; $61d3: $06 $1f
	ld   h, $08                                      ; $61d5: $26 $08
	ld   b, $0f                                      ; $61d7: $06 $0f
	inc  h                                           ; $61d9: $24
	ld   [bc], a                                     ; $61da: $02
	ld   b, $0f                                      ; $61db: $06 $0f
	inc  e                                           ; $61dd: $1c
	nop                                              ; $61de: $00
	ld   d, $1f                                      ; $61df: $16 $1f
	ld   l, $0e                                      ; $61e1: $2e $0e
	ld   b, $1f                                      ; $61e3: $06 $1f

jr_03f_61e5:
	ld   h, $0c                                      ; $61e5: $26 $0c

jr_03f_61e7:
	ld   b, $0f                                      ; $61e7: $06 $0f

jr_03f_61e9:
	inc  h                                           ; $61e9: $24
	ld   b, $06                                      ; $61ea: $06 $06
	rrca                                             ; $61ec: $0f
	inc  e                                           ; $61ed: $1c
	inc  b                                           ; $61ee: $04
	ld   d, $0f                                      ; $61ef: $16 $0f
	inc  h                                           ; $61f1: $24
	ld   a, [bc]                                     ; $61f2: $0a
	ld   b, $0f                                      ; $61f3: $06 $0f
	inc  e                                           ; $61f5: $1c
	ld   [$3206], sp                                 ; $61f6: $08 $06 $32
	jr   nc, jr_03f_61fd                             ; $61f9: $30 $02

	ld   b, $32                                      ; $61fb: $06 $32

jr_03f_61fd:
	jr   z, jr_03f_61ff                              ; $61fd: $28 $00

jr_03f_61ff:
	ld   d, $0f                                      ; $61ff: $16 $0f
	inc  h                                           ; $6201: $24
	ld   c, $06                                      ; $6202: $0e $06
	rrca                                             ; $6204: $0f
	inc  e                                           ; $6205: $1c
	inc  c                                           ; $6206: $0c
	ld   b, $32                                      ; $6207: $06 $32
	jr   nc, jr_03f_6211                             ; $6209: $30 $06

	ld   b, $32                                      ; $620b: $06 $32
	jr   z, jr_03f_6213                              ; $620d: $28 $04

	ld   d, $32                                      ; $620f: $16 $32

jr_03f_6211:
	jr   nc, jr_03f_621d                             ; $6211: $30 $0a

jr_03f_6213:
	ld   b, $32                                      ; $6213: $06 $32
	jr   z, jr_03f_621f                              ; $6215: $28 $08

	ld   b, $1f                                      ; $6217: $06 $1f
	jr   jr_03f_621d                                 ; $6219: $18 $02

	ld   b, $1f                                      ; $621b: $06 $1f

jr_03f_621d:
	stop                                             ; $621d: $10 $00

jr_03f_621f:
	ld   d, $32                                      ; $621f: $16 $32
	jr   nc, jr_03f_6231                             ; $6221: $30 $0e

	ld   b, $32                                      ; $6223: $06 $32
	jr   z, jr_03f_6233                              ; $6225: $28 $0c

	ld   b, $1f                                      ; $6227: $06 $1f
	jr   jr_03f_6231                                 ; $6229: $18 $06

	ld   b, $1f                                      ; $622b: $06 $1f
	db   $10                                         ; $622d: $10
	inc  b                                           ; $622e: $04
	ld   d, $1f                                      ; $622f: $16 $1f

jr_03f_6231:
	jr   jr_03f_623d                                 ; $6231: $18 $0a

jr_03f_6233:
	ld   b, $1f                                      ; $6233: $06 $1f
	db   $10                                         ; $6235: $10
	ld   [$1f16], sp                                 ; $6236: $08 $16 $1f
	jr   @+$10                                       ; $6239: $18 $0e

	ld   b, $1f                                      ; $623b: $06 $1f

jr_03f_623d:
	db   $10                                         ; $623d: $10
	inc  c                                           ; $623e: $0c
	ld   d, $20                                      ; $623f: $16 $20
	rrca                                             ; $6241: $0f
	stop                                             ; $6242: $10 $00
	jr   nz, jr_03f_624d                             ; $6244: $20 $07

	rrca                                             ; $6246: $0f
	nop                                              ; $6247: $00
	jr   nz, @+$01                                   ; $6248: $20 $ff

	ld   c, $00                                      ; $624a: $0e $00
	nop                                              ; $624c: $00

jr_03f_624d:
	ld   c, $02                                      ; $624d: $0e $02
	nop                                              ; $624f: $00
	nop                                              ; $6250: $00
	ld   b, $01                                      ; $6251: $06 $01
	nop                                              ; $6253: $00
	nop                                              ; $6254: $00
	cp   $00                                         ; $6255: $fe $00
	nop                                              ; $6257: $00
	jr   @+$12                                       ; $6258: $18 $10

	dec  c                                           ; $625a: $0d
	nop                                              ; $625b: $00
	jr   jr_03f_6266                                 ; $625c: $18 $08

	inc  c                                           ; $625e: $0c
	nop                                              ; $625f: $00
	jr   jr_03f_6262                                 ; $6260: $18 $00

jr_03f_6262:
	dec  bc                                          ; $6262: $0b
	nop                                              ; $6263: $00
	db   $10                                         ; $6264: $10
	db   $10                                         ; $6265: $10

jr_03f_6266:
	ld   a, [bc]                                     ; $6266: $0a
	nop                                              ; $6267: $00
	db   $10                                         ; $6268: $10
	ld   [$0009], sp                                 ; $6269: $08 $09 $00
	stop                                             ; $626c: $10 $00
	ld   [$1000], sp                                 ; $626e: $08 $00 $10
	ld   hl, sp+$07                                  ; $6271: $f8 $07
	nop                                              ; $6273: $00
	ld   [$0610], sp                                 ; $6274: $08 $10 $06
	nop                                              ; $6277: $00
	ld   [$0508], sp                                 ; $6278: $08 $08 $05
	nop                                              ; $627b: $00
	ld   [$0400], sp                                 ; $627c: $08 $00 $04
	nop                                              ; $627f: $00
	ld   [$03f8], sp                                 ; $6280: $08 $f8 $03
	stop                                             ; $6283: $10 $00
	ld   c, $13                                      ; $6285: $0e $13
	nop                                              ; $6287: $00
	nop                                              ; $6288: $00
	ld   b, $12                                      ; $6289: $06 $12
	nop                                              ; $628b: $00
	nop                                              ; $628c: $00
	cp   $11                                         ; $628d: $fe $11
	nop                                              ; $628f: $00
	jr   nz, jr_03f_62a2                             ; $6290: $20 $10

	ld   [hl+], a                                    ; $6292: $22
	nop                                              ; $6293: $00
	jr   nz, jr_03f_629e                             ; $6294: $20 $08

jr_03f_6296:
	ld   hl, $2000                                   ; $6296: $21 $00 $20
	nop                                              ; $6299: $00
	jr   nz, jr_03f_629c                             ; $629a: $20 $00

jr_03f_629c:
	jr   nz, jr_03f_6296                             ; $629c: $20 $f8

jr_03f_629e:
	rra                                              ; $629e: $1f
	nop                                              ; $629f: $00
	jr   @+$12                                       ; $62a0: $18 $10

jr_03f_62a2:
	ld   e, $00                                      ; $62a2: $1e $00
	jr   jr_03f_62ae                                 ; $62a4: $18 $08

	dec  e                                           ; $62a6: $1d
	nop                                              ; $62a7: $00
	jr   jr_03f_62aa                                 ; $62a8: $18 $00

jr_03f_62aa:
	inc  e                                           ; $62aa: $1c
	nop                                              ; $62ab: $00
	db   $10                                         ; $62ac: $10
	db   $10                                         ; $62ad: $10

jr_03f_62ae:
	dec  de                                          ; $62ae: $1b
	nop                                              ; $62af: $00
	db   $10                                         ; $62b0: $10
	ld   [$001a], sp                                 ; $62b1: $08 $1a $00
	stop                                             ; $62b4: $10 $00
	add  hl, de                                      ; $62b6: $19
	nop                                              ; $62b7: $00
	db   $10                                         ; $62b8: $10
	ld   hl, sp+$18                                  ; $62b9: $f8 $18
	nop                                              ; $62bb: $00
	ld   [$1710], sp                                 ; $62bc: $08 $10 $17
	nop                                              ; $62bf: $00
	ld   [$1608], sp                                 ; $62c0: $08 $08 $16
	nop                                              ; $62c3: $00
	ld   [$1500], sp                                 ; $62c4: $08 $00 $15
	nop                                              ; $62c7: $00
	ld   [$14f8], sp                                 ; $62c8: $08 $f8 $14
	db   $10                                         ; $62cb: $10
	jr   nz, @+$19                                   ; $62cc: $20 $17

	inc  [hl]                                        ; $62ce: $34
	nop                                              ; $62cf: $00
	jr   nz, @+$11                                   ; $62d0: $20 $0f

	inc  sp                                          ; $62d2: $33
	nop                                              ; $62d3: $00
	jr   nz, jr_03f_62dd                             ; $62d4: $20 $07

	ld   [hl-], a                                    ; $62d6: $32
	nop                                              ; $62d7: $00
	jr   nz, @+$01                                   ; $62d8: $20 $ff

	ld   sp, $1800                                   ; $62da: $31 $00 $18

jr_03f_62dd:
	dec  de                                          ; $62dd: $1b
	jr   nc, jr_03f_62e0                             ; $62de: $30 $00

jr_03f_62e0:
	jr   jr_03f_62f5                                 ; $62e0: $18 $13

	cpl                                              ; $62e2: $2f
	nop                                              ; $62e3: $00
	jr   jr_03f_62f1                                 ; $62e4: $18 $0b

	ld   l, $00                                      ; $62e6: $2e $00
	jr   jr_03f_62ed                                 ; $62e8: $18 $03

	dec  l                                           ; $62ea: $2d
	nop                                              ; $62eb: $00
	db   $10                                         ; $62ec: $10

jr_03f_62ed:
	rla                                              ; $62ed: $17
	inc  l                                           ; $62ee: $2c
	nop                                              ; $62ef: $00
	db   $10                                         ; $62f0: $10

jr_03f_62f1:
	rrca                                             ; $62f1: $0f
	dec  hl                                          ; $62f2: $2b
	nop                                              ; $62f3: $00
	db   $10                                         ; $62f4: $10

jr_03f_62f5:
	rlca                                             ; $62f5: $07
	ld   a, [hl+]                                    ; $62f6: $2a
	nop                                              ; $62f7: $00
	db   $10                                         ; $62f8: $10
	rst  $38                                         ; $62f9: $ff
	add  hl, hl                                      ; $62fa: $29
	nop                                              ; $62fb: $00
	ld   [$2817], sp                                 ; $62fc: $08 $17 $28
	nop                                              ; $62ff: $00
	ld   [$270f], sp                                 ; $6300: $08 $0f $27
	nop                                              ; $6303: $00
	ld   [$2607], sp                                 ; $6304: $08 $07 $26
	nop                                              ; $6307: $00
	ld   [$25ff], sp                                 ; $6308: $08 $ff $25
	nop                                              ; $630b: $00
	nop                                              ; $630c: $00
	ld   de, $0024                                   ; $630d: $11 $24 $00
	nop                                              ; $6310: $00
	add  hl, bc                                      ; $6311: $09
	inc  hl                                          ; $6312: $23
	db   $10                                         ; $6313: $10
	jr   jr_03f_6316                                 ; $6314: $18 $00

jr_03f_6316:
	dec  a                                           ; $6316: $3d
	nop                                              ; $6317: $00
	jr   jr_03f_6331                                 ; $6318: $18 $17

	ld   b, b                                        ; $631a: $40
	nop                                              ; $631b: $00
	jr   jr_03f_632d                                 ; $631c: $18 $0f

	ccf                                              ; $631e: $3f
	nop                                              ; $631f: $00
	jr   jr_03f_6329                                 ; $6320: $18 $07

	ld   a, $00                                      ; $6322: $3e $00
	db   $10                                         ; $6324: $10
	rla                                              ; $6325: $17
	inc  a                                           ; $6326: $3c
	nop                                              ; $6327: $00
	db   $10                                         ; $6328: $10

jr_03f_6329:
	rrca                                             ; $6329: $0f
	dec  sp                                          ; $632a: $3b
	nop                                              ; $632b: $00
	db   $10                                         ; $632c: $10

jr_03f_632d:
	rlca                                             ; $632d: $07
	ld   a, [hl-]                                    ; $632e: $3a
	nop                                              ; $632f: $00
	nop                                              ; $6330: $00

jr_03f_6331:
	dec  d                                           ; $6331: $15
	ld   [hl], $00                                   ; $6332: $36 $00
	nop                                              ; $6334: $00
	dec  c                                           ; $6335: $0d
	dec  [hl]                                        ; $6336: $35
	nop                                              ; $6337: $00
	jr   nz, @+$1a                                   ; $6338: $20 $18

	ld   b, h                                        ; $633a: $44
	nop                                              ; $633b: $00
	jr   nz, @+$12                                   ; $633c: $20 $10

	ld   b, e                                        ; $633e: $43
	nop                                              ; $633f: $00
	jr   nz, @+$0a                                   ; $6340: $20 $08

	ld   b, d                                        ; $6342: $42
	nop                                              ; $6343: $00
	jr   nz, jr_03f_6346                             ; $6344: $20 $00

jr_03f_6346:
	ld   b, c                                        ; $6346: $41
	nop                                              ; $6347: $00
	ld   [$3918], sp                                 ; $6348: $08 $18 $39
	nop                                              ; $634b: $00
	ld   [$3810], sp                                 ; $634c: $08 $10 $38
	nop                                              ; $634f: $00
	ld   [$3708], sp                                 ; $6350: $08 $08 $37
	stop                                             ; $6353: $10 $00
	rlca                                             ; $6355: $07
	ld   b, a                                        ; $6356: $47
	nop                                              ; $6357: $00
	nop                                              ; $6358: $00
	rst  $38                                         ; $6359: $ff
	ld   b, [hl]                                     ; $635a: $46
	nop                                              ; $635b: $00
	jr   jr_03f_636e                                 ; $635c: $18 $10

	ld   c, a                                        ; $635e: $4f
	ld   [bc], a                                     ; $635f: $02
	jr   jr_03f_636a                                 ; $6360: $18 $08

	ld   c, [hl]                                     ; $6362: $4e
	ld   [bc], a                                     ; $6363: $02
	jr   jr_03f_6366                                 ; $6364: $18 $00

jr_03f_6366:
	ld   c, l                                        ; $6366: $4d
	ld   [bc], a                                     ; $6367: $02
	jr   nz, @+$0f                                   ; $6368: $20 $0d

jr_03f_636a:
	ld   d, d                                        ; $636a: $52
	ld   [bc], a                                     ; $636b: $02
	jr   nz, jr_03f_6373                             ; $636c: $20 $05

jr_03f_636e:
	ld   d, c                                        ; $636e: $51

jr_03f_636f:
	ld   [bc], a                                     ; $636f: $02
	jr   nz, jr_03f_636f                             ; $6370: $20 $fd

	ld   d, b                                        ; $6372: $50

jr_03f_6373:
	ld   [bc], a                                     ; $6373: $02
	db   $10                                         ; $6374: $10
	ld   [$024c], sp                                 ; $6375: $08 $4c $02
	stop                                             ; $6378: $10 $00
	ld   c, e                                        ; $637a: $4b
	ld   [bc], a                                     ; $637b: $02
	ld   [$4a08], sp                                 ; $637c: $08 $08 $4a
	nop                                              ; $637f: $00
	ld   [$4900], sp                                 ; $6380: $08 $00 $49
	nop                                              ; $6383: $00
	ld   [$48f8], sp                                 ; $6384: $08 $f8 $48
	ld   [de], a                                     ; $6387: $12
	jr   nz, jr_03f_6396                             ; $6388: $20 $0c

	ld   e, a                                        ; $638a: $5f
	ld   [bc], a                                     ; $638b: $02
	jr   nz, jr_03f_6392                             ; $638c: $20 $04

jr_03f_638e:
	ld   e, [hl]                                     ; $638e: $5e
	ld   [bc], a                                     ; $638f: $02
	jr   nz, jr_03f_638e                             ; $6390: $20 $fc

jr_03f_6392:
	ld   e, l                                        ; $6392: $5d
	ld   [bc], a                                     ; $6393: $02
	jr   jr_03f_63a6                                 ; $6394: $18 $10

jr_03f_6396:
	ld   e, h                                        ; $6396: $5c
	ld   [bc], a                                     ; $6397: $02
	jr   @+$0a                                       ; $6398: $18 $08

	ld   e, e                                        ; $639a: $5b
	ld   [bc], a                                     ; $639b: $02
	jr   jr_03f_639e                                 ; $639c: $18 $00

jr_03f_639e:
	ld   e, d                                        ; $639e: $5a
	ld   [bc], a                                     ; $639f: $02
	db   $10                                         ; $63a0: $10
	ld   [$0259], sp                                 ; $63a1: $08 $59 $02
	stop                                             ; $63a4: $10 $00

jr_03f_63a6:
	ld   e, b                                        ; $63a6: $58
	ld   [bc], a                                     ; $63a7: $02
	ld   [$5708], sp                                 ; $63a8: $08 $08 $57
	nop                                              ; $63ab: $00
	ld   [$5600], sp                                 ; $63ac: $08 $00 $56
	ld   [bc], a                                     ; $63af: $02
	ld   [$55f8], sp                                 ; $63b0: $08 $f8 $55
	nop                                              ; $63b3: $00
	nop                                              ; $63b4: $00
	ld   [$0054], sp                                 ; $63b5: $08 $54 $00
	nop                                              ; $63b8: $00
	nop                                              ; $63b9: $00
	ld   d, e                                        ; $63ba: $53
	db   $10                                         ; $63bb: $10
	inc  c                                           ; $63bc: $0c
	rst  $30                                         ; $63bd: $f7
	ld   h, c                                        ; $63be: $61
	inc  bc                                          ; $63bf: $03
	inc  c                                           ; $63c0: $0c
	rst  $28                                         ; $63c1: $ef
	ld   h, b                                        ; $63c2: $60
	inc  bc                                          ; $63c3: $03
	inc  d                                           ; $63c4: $14
	rst  $38                                         ; $63c5: $ff
	ld   h, h                                        ; $63c6: $64
	inc  bc                                          ; $63c7: $03
	inc  d                                           ; $63c8: $14
	rst  $30                                         ; $63c9: $f7
	ld   h, e                                        ; $63ca: $63
	inc  bc                                          ; $63cb: $03
	inc  d                                           ; $63cc: $14
	rst  $28                                         ; $63cd: $ef
	ld   h, d                                        ; $63ce: $62
	inc  bc                                          ; $63cf: $03
	jr   nz, jr_03f_63df                             ; $63d0: $20 $0d

	ld   [hl], d                                     ; $63d2: $72
	ld   [bc], a                                     ; $63d3: $02
	jr   nz, jr_03f_63db                             ; $63d4: $20 $05

	ld   [hl], c                                     ; $63d6: $71

jr_03f_63d7:
	ld   [bc], a                                     ; $63d7: $02
	jr   nz, jr_03f_63d7                             ; $63d8: $20 $fd

	ld   [hl], b                                     ; $63da: $70

jr_03f_63db:
	ld   [bc], a                                     ; $63db: $02
	jr   jr_03f_63eb                                 ; $63dc: $18 $0d

	ld   l, a                                        ; $63de: $6f

jr_03f_63df:
	ld   [bc], a                                     ; $63df: $02
	jr   jr_03f_63e7                                 ; $63e0: $18 $05

	ld   l, [hl]                                     ; $63e2: $6e

jr_03f_63e3:
	ld   [bc], a                                     ; $63e3: $02
	jr   jr_03f_63e3                                 ; $63e4: $18 $fd

	ld   l, l                                        ; $63e6: $6d

jr_03f_63e7:
	ld   [bc], a                                     ; $63e7: $02
	db   $10                                         ; $63e8: $10
	dec  c                                           ; $63e9: $0d
	ld   l, h                                        ; $63ea: $6c

jr_03f_63eb:
	ld   [bc], a                                     ; $63eb: $02
	db   $10                                         ; $63ec: $10
	dec  b                                           ; $63ed: $05
	ld   l, e                                        ; $63ee: $6b
	ld   [bc], a                                     ; $63ef: $02
	db   $10                                         ; $63f0: $10
	db   $fd                                         ; $63f1: $fd
	ld   l, d                                        ; $63f2: $6a
	ld   [bc], a                                     ; $63f3: $02
	ld   [$6907], sp                                 ; $63f4: $08 $07 $69
	ld   [bc], a                                     ; $63f7: $02
	ld   [$68ff], sp                                 ; $63f8: $08 $ff $68
	ld   [bc], a                                     ; $63fb: $02
	ld   [$67f7], sp                                 ; $63fc: $08 $f7 $67
	ld   [bc], a                                     ; $63ff: $02
	nop                                              ; $6400: $00
	ld   b, $66                                      ; $6401: $06 $66
	ld   [bc], a                                     ; $6403: $02
	nop                                              ; $6404: $00
	cp   $65                                         ; $6405: $fe $65
	db   $10                                         ; $6407: $10
	jr   nz, jr_03f_6417                             ; $6408: $20 $0d

	ld   [hl], d                                     ; $640a: $72
	ld   [bc], a                                     ; $640b: $02
	jr   nz, jr_03f_6413                             ; $640c: $20 $05

	ld   [hl], c                                     ; $640e: $71

jr_03f_640f:
	ld   [bc], a                                     ; $640f: $02
	jr   nz, jr_03f_640f                             ; $6410: $20 $fd

	ld   [hl], b                                     ; $6412: $70

jr_03f_6413:
	ld   [bc], a                                     ; $6413: $02
	jr   jr_03f_6423                                 ; $6414: $18 $0d

	ld   l, a                                        ; $6416: $6f

jr_03f_6417:
	ld   [bc], a                                     ; $6417: $02
	jr   jr_03f_641f                                 ; $6418: $18 $05

	ld   l, [hl]                                     ; $641a: $6e

jr_03f_641b:
	ld   [bc], a                                     ; $641b: $02
	jr   jr_03f_641b                                 ; $641c: $18 $fd

	ld   l, l                                        ; $641e: $6d

jr_03f_641f:
	ld   [bc], a                                     ; $641f: $02
	db   $10                                         ; $6420: $10
	dec  c                                           ; $6421: $0d
	ld   l, h                                        ; $6422: $6c

jr_03f_6423:
	ld   [bc], a                                     ; $6423: $02
	db   $10                                         ; $6424: $10
	dec  b                                           ; $6425: $05
	ld   l, e                                        ; $6426: $6b
	ld   [bc], a                                     ; $6427: $02
	db   $10                                         ; $6428: $10
	db   $fd                                         ; $6429: $fd
	ld   l, d                                        ; $642a: $6a
	ld   [bc], a                                     ; $642b: $02
	ld   [$6907], sp                                 ; $642c: $08 $07 $69
	ld   [bc], a                                     ; $642f: $02
	ld   [$68ff], sp                                 ; $6430: $08 $ff $68
	ld   [bc], a                                     ; $6433: $02
	ld   [$67f7], sp                                 ; $6434: $08 $f7 $67
	ld   [bc], a                                     ; $6437: $02
	nop                                              ; $6438: $00
	ld   b, $66                                      ; $6439: $06 $66
	ld   [bc], a                                     ; $643b: $02
	nop                                              ; $643c: $00
	cp   $65                                         ; $643d: $fe $65
	db   $10                                         ; $643f: $10
	inc  c                                           ; $6440: $0c
	ld   b, $76                                      ; $6441: $06 $76
	ld   [bc], a                                     ; $6443: $02
	inc  c                                           ; $6444: $0c
	cp   $75                                         ; $6445: $fe $75
	ld   [bc], a                                     ; $6447: $02
	inc  b                                           ; $6448: $04
	ld   b, $74                                      ; $6449: $06 $74
	ld   [bc], a                                     ; $644b: $02
	inc  b                                           ; $644c: $04
	cp   $73                                         ; $644d: $fe $73
	ld   [bc], a                                     ; $644f: $02
	jr   nz, jr_03f_6467                             ; $6450: $20 $15

	add  h                                           ; $6452: $84
	ld   [bc], a                                     ; $6453: $02
	jr   nz, jr_03f_6463                             ; $6454: $20 $0d

	add  e                                           ; $6456: $83
	ld   [bc], a                                     ; $6457: $02
	jr   nz, jr_03f_645f                             ; $6458: $20 $05

	add  d                                           ; $645a: $82

jr_03f_645b:
	ld   [bc], a                                     ; $645b: $02
	jr   nz, jr_03f_645b                             ; $645c: $20 $fd

	add  c                                           ; $645e: $81

jr_03f_645f:
	ld   [bc], a                                     ; $645f: $02
	jr   jr_03f_6474                                 ; $6460: $18 $12

	add  b                                           ; $6462: $80

jr_03f_6463:
	nop                                              ; $6463: $00
	jr   jr_03f_6470                                 ; $6464: $18 $0a

	ld   a, a                                        ; $6466: $7f

jr_03f_6467:
	ld   [bc], a                                     ; $6467: $02
	jr   jr_03f_646c                                 ; $6468: $18 $02

	ld   a, [hl]                                     ; $646a: $7e
	ld   [bc], a                                     ; $646b: $02

jr_03f_646c:
	db   $10                                         ; $646c: $10
	inc  d                                           ; $646d: $14
	ld   a, l                                        ; $646e: $7d
	ld   [bc], a                                     ; $646f: $02

jr_03f_6470:
	db   $10                                         ; $6470: $10
	inc  c                                           ; $6471: $0c
	ld   a, h                                        ; $6472: $7c
	ld   [bc], a                                     ; $6473: $02

jr_03f_6474:
	db   $10                                         ; $6474: $10
	inc  b                                           ; $6475: $04
	ld   a, e                                        ; $6476: $7b
	ld   [bc], a                                     ; $6477: $02
	ld   [$7a13], sp                                 ; $6478: $08 $13 $7a
	ld   [bc], a                                     ; $647b: $02
	ld   [$790b], sp                                 ; $647c: $08 $0b $79
	ld   [bc], a                                     ; $647f: $02
	nop                                              ; $6480: $00
	inc  de                                          ; $6481: $13
	ld   a, b                                        ; $6482: $78
	nop                                              ; $6483: $00
	nop                                              ; $6484: $00
	dec  bc                                          ; $6485: $0b
	ld   [hl], a                                     ; $6486: $77
	db   $10                                         ; $6487: $10
	inc  c                                           ; $6488: $0c
	inc  b                                           ; $6489: $04
	ld   b, l                                        ; $648a: $45
	db   $10                                         ; $648b: $10
	inc  c                                           ; $648c: $0c
	inc  b                                           ; $648d: $04
	ld   b, l                                        ; $648e: $45
	ld   d, b                                        ; $648f: $50
	inc  c                                           ; $6490: $0c
	db   $eb                                         ; $6491: $eb
	add  l                                           ; $6492: $85
	inc  de                                          ; $6493: $13
	jr   nz, jr_03f_64ab                             ; $6494: $20 $15

	add  h                                           ; $6496: $84
	ld   [bc], a                                     ; $6497: $02
	jr   nz, jr_03f_64a7                             ; $6498: $20 $0d

	add  e                                           ; $649a: $83
	ld   [bc], a                                     ; $649b: $02
	jr   nz, jr_03f_64a3                             ; $649c: $20 $05

	add  d                                           ; $649e: $82

jr_03f_649f:
	ld   [bc], a                                     ; $649f: $02
	jr   nz, jr_03f_649f                             ; $64a0: $20 $fd

	add  c                                           ; $64a2: $81

jr_03f_64a3:
	ld   [bc], a                                     ; $64a3: $02
	jr   jr_03f_64b8                                 ; $64a4: $18 $12

	add  b                                           ; $64a6: $80

jr_03f_64a7:
	nop                                              ; $64a7: $00
	jr   jr_03f_64b4                                 ; $64a8: $18 $0a

	ld   a, a                                        ; $64aa: $7f

jr_03f_64ab:
	ld   [bc], a                                     ; $64ab: $02
	jr   jr_03f_64b0                                 ; $64ac: $18 $02

	ld   a, [hl]                                     ; $64ae: $7e
	ld   [bc], a                                     ; $64af: $02

jr_03f_64b0:
	db   $10                                         ; $64b0: $10
	inc  d                                           ; $64b1: $14
	ld   a, l                                        ; $64b2: $7d
	ld   [bc], a                                     ; $64b3: $02

jr_03f_64b4:
	db   $10                                         ; $64b4: $10
	inc  c                                           ; $64b5: $0c
	ld   a, h                                        ; $64b6: $7c
	ld   [bc], a                                     ; $64b7: $02

jr_03f_64b8:
	db   $10                                         ; $64b8: $10
	inc  b                                           ; $64b9: $04
	ld   a, e                                        ; $64ba: $7b
	ld   [bc], a                                     ; $64bb: $02
	ld   [$7a13], sp                                 ; $64bc: $08 $13 $7a
	ld   [bc], a                                     ; $64bf: $02
	ld   [$790b], sp                                 ; $64c0: $08 $0b $79
	ld   [bc], a                                     ; $64c3: $02
	nop                                              ; $64c4: $00
	inc  de                                          ; $64c5: $13
	ld   a, b                                        ; $64c6: $78
	nop                                              ; $64c7: $00
	nop                                              ; $64c8: $00
	dec  bc                                          ; $64c9: $0b
	ld   [hl], a                                     ; $64ca: $77
	db   $10                                         ; $64cb: $10
	jr   nz, jr_03f_64db                             ; $64cc: $20 $0d

	ld   d, d                                        ; $64ce: $52
	ld   [bc], a                                     ; $64cf: $02
	jr   nz, jr_03f_64d7                             ; $64d0: $20 $05

	ld   d, c                                        ; $64d2: $51

jr_03f_64d3:
	ld   [bc], a                                     ; $64d3: $02
	jr   nz, jr_03f_64d3                             ; $64d4: $20 $fd

	ld   d, b                                        ; $64d6: $50

jr_03f_64d7:
	ld   [bc], a                                     ; $64d7: $02
	jr   jr_03f_64ea                                 ; $64d8: $18 $10

	ld   c, a                                        ; $64da: $4f

jr_03f_64db:
	ld   [bc], a                                     ; $64db: $02
	jr   @+$0a                                       ; $64dc: $18 $08

	ld   c, [hl]                                     ; $64de: $4e
	ld   [bc], a                                     ; $64df: $02
	jr   jr_03f_64e2                                 ; $64e0: $18 $00

jr_03f_64e2:
	ld   c, l                                        ; $64e2: $4d
	ld   [bc], a                                     ; $64e3: $02
	db   $10                                         ; $64e4: $10
	ld   [$0289], sp                                 ; $64e5: $08 $89 $02
	stop                                             ; $64e8: $10 $00

jr_03f_64ea:
	adc  b                                           ; $64ea: $88
	ld   [bc], a                                     ; $64eb: $02
	ld   [$48f8], sp                                 ; $64ec: $08 $f8 $48
	ld   [bc], a                                     ; $64ef: $02
	ld   [$8708], sp                                 ; $64f0: $08 $08 $87
	ld   [bc], a                                     ; $64f3: $02
	ld   [$8600], sp                                 ; $64f4: $08 $00 $86
	ld   [bc], a                                     ; $64f7: $02
	nop                                              ; $64f8: $00
	rlca                                             ; $64f9: $07
	ld   b, a                                        ; $64fa: $47
	nop                                              ; $64fb: $00
	nop                                              ; $64fc: $00
	rst  $38                                         ; $64fd: $ff
	ld   b, [hl]                                     ; $64fe: $46
	db   $10                                         ; $64ff: $10


SpriteGroupAPointers::
	dw $6614
	dw $6654
	dw $6698
	dw $66dc
	dw $6720
	dw $6764
	dw $67ac
	dw $67ec
	dw $682c
	dw $6874
	dw $68b4
	dw $68f4
	dw $6938
	dw $697c
	dw $69c0
	dw $6a04
	dw $6a08
	dw $6a0c
	dw $6a10
	dw $6a14
	dw $6a18
	dw $6a1c
	dw $6a20
	dw $6a24
	dw $6a28
	dw $6a2c
	dw $6a3c
	dw $6a44
	dw $6a4c
	dw $6a50
	dw $6a64
	dw $6aa4
	dw $6ae8
	dw $6b2c
	dw $6b68
	dw $6ba8
	dw $6bf0
	dw $6c34
	dw $6c78
	dw $6cc0
	dw $6d04
	dw $6d48
	dw $6d84
	dw $6dc4
	dw $6e08
	dw $6e4c
	dw $6e54
	dw $6e5c
	dw $6e64
	dw $6e6c
	dw $6e74
	dw $6e7c
	dw $6e90
	dw $6ea4
	dw $6eb8
	dw $6ecc
	dw $6ee0
	dw $6ef4
	dw $6f44
	dw $6f94
	dw $6fe4
	dw $7034
	dw $708c
	dw SpriteGroupA_Idx3fh
	dw SpriteGroupA_Idx40h
	dw $7150
	dw $7154
	dw SpriteGroupA_Idx43h
	dw SpriteGroupA_Idx44h
	dw $71d8
	dw $71dc
	dw SpriteGroupA_Idx47h
	dw SpriteGroupA_Idx48h
	dw SpriteGroupA_Idx49h
	dw $727c
	dw $7280
	dw SpriteGroupA_Idx4ch
	dw $72d0
	dw $72d4
	dw $72d8
	dw SpriteGroupA_Idx50h
	dw SpriteGroupA_Idx51h
	dw SpriteGroupA_Idx52h
	dw SpriteGroupA_Idx53h
	dw SpriteGroupA_Idx54h
	dw SpriteGroupA_Idx55h
	dw SpriteGroupA_Idx56h
	dw $7418
	dw $741c
	dw $7420
	dw $7464
	dw $7468
	dw $746c
	dw $7470
	dw $7478
	dw $7480
	dw $7488
	dw $74a8
	dw $74c8
	dw $74d0
	dw $74e0
	dw $74f0
	dw $7530
	dw $7570
	dw $75b0
	dw $75f0
	dw $7630
	dw $7670
	dw $76b0
	dw $76f0
	dw $7730
	dw $7770
	dw $77b0
	dw $77f0
	dw $7830
	dw $7870
	dw $7878
	dw $7880
	dw $7888
	dw $7890
	dw $7898
	dw $78a0
	dw $78a8
	dw $78b0
	dw $78b8
	dw $78c0
	dw $78c8
	dw $78d0
	dw $78d8
	dw $78e0
	dw $78e8
	dw $78f0
	dw $78f8
	dw $7900
	dw $7908
	dw $7910
	dw $7918
	dw $7920


	ld   b, b                                        ; $6614: $40
	ld   [$0938], sp                                 ; $6615: $08 $38 $09
	jr   nc, @+$0a                                   ; $6618: $30 $08

	jr   nc, jr_03f_6625                             ; $661a: $30 $09

	jr   nz, jr_03f_6626                             ; $661c: $20 $08

	jr   z, jr_03f_662a                              ; $661e: $28 $0a

	db   $10                                         ; $6620: $10
	ld   [$0a20], sp                                 ; $6621: $08 $20 $0a

jr_03f_6624:
	ld   b, b                                        ; $6624: $40

jr_03f_6625:
	db   $10                                         ; $6625: $10

jr_03f_6626:
	ld   a, [hl-]                                    ; $6626: $3a
	add  hl, bc                                      ; $6627: $09

jr_03f_6628:
	jr   nc, jr_03f_663a                             ; $6628: $30 $10

jr_03f_662a:
	ld   [hl-], a                                    ; $662a: $32
	add  hl, bc                                      ; $662b: $09
	jr   nz, jr_03f_663e                             ; $662c: $20 $10

	ld   a, [hl+]                                    ; $662e: $2a
	ld   a, [bc]                                     ; $662f: $0a
	db   $10                                         ; $6630: $10
	db   $10                                         ; $6631: $10
	ld   [hl+], a                                    ; $6632: $22
	ld   a, [bc]                                     ; $6633: $0a
	ld   b, b                                        ; $6634: $40
	jr   nz, @+$40                                   ; $6635: $20 $3e

	add  hl, bc                                      ; $6637: $09
	jr   nc, @+$22                                   ; $6638: $30 $20

jr_03f_663a:
	ld   [hl], $09                                   ; $663a: $36 $09
	jr   nz, jr_03f_665e                             ; $663c: $20 $20

jr_03f_663e:
	ld   l, $0a                                      ; $663e: $2e $0a
	db   $10                                         ; $6640: $10
	jr   nz, @+$28                                   ; $6641: $20 $26

jr_03f_6643:
	ld   a, [bc]                                     ; $6643: $0a
	ld   b, b                                        ; $6644: $40
	jr   @+$3e                                       ; $6645: $18 $3c

	add  hl, bc                                      ; $6647: $09
	jr   nc, @+$1a                                   ; $6648: $30 $18

	inc  [hl]                                        ; $664a: $34
	add  hl, bc                                      ; $664b: $09

jr_03f_664c:
	jr   nz, @+$1a                                   ; $664c: $20 $18

	inc  l                                           ; $664e: $2c
	ld   a, [bc]                                     ; $664f: $0a
	db   $10                                         ; $6650: $10
	jr   jr_03f_6677                                 ; $6651: $18 $24

	ld   a, [de]                                     ; $6653: $1a
	jr   z, jr_03f_667e                              ; $6654: $28 $28

	ld   h, b                                        ; $6656: $60
	add  hl, bc                                      ; $6657: $09
	ld   b, b                                        ; $6658: $40
	ld   [$0938], sp                                 ; $6659: $08 $38 $09
	ld   b, b                                        ; $665c: $40
	db   $10                                         ; $665d: $10

jr_03f_665e:
	ld   a, [hl-]                                    ; $665e: $3a
	add  hl, bc                                      ; $665f: $09
	ld   b, b                                        ; $6660: $40
	jr   nz, @+$40                                   ; $6661: $20 $3e

	add  hl, bc                                      ; $6663: $09
	ld   b, b                                        ; $6664: $40
	jr   @+$3e                                       ; $6665: $18 $3c

	add  hl, bc                                      ; $6667: $09
	jr   nc, @+$0a                                   ; $6668: $30 $08

	jr   nc, @+$0b                                   ; $666a: $30 $09

	jr   nz, jr_03f_6676                             ; $666c: $20 $08

	jr   z, jr_03f_667a                              ; $666e: $28 $0a

	db   $10                                         ; $6670: $10
	ld   [$0a20], sp                                 ; $6671: $08 $20 $0a
	jr   nc, jr_03f_6686                             ; $6674: $30 $10

jr_03f_6676:
	ld   [hl-], a                                    ; $6676: $32

jr_03f_6677:
	add  hl, bc                                      ; $6677: $09
	jr   nz, @+$12                                   ; $6678: $20 $10

jr_03f_667a:
	ld   a, [hl+]                                    ; $667a: $2a
	ld   a, [bc]                                     ; $667b: $0a
	db   $10                                         ; $667c: $10
	db   $10                                         ; $667d: $10

jr_03f_667e:
	ld   [hl+], a                                    ; $667e: $22
	ld   a, [bc]                                     ; $667f: $0a
	jr   nc, jr_03f_66a2                             ; $6680: $30 $20

	ld   [hl], $09                                   ; $6682: $36 $09
	jr   nz, jr_03f_66a6                             ; $6684: $20 $20

jr_03f_6686:
	ld   l, $0a                                      ; $6686: $2e $0a
	db   $10                                         ; $6688: $10
	jr   nz, @+$28                                   ; $6689: $20 $26

jr_03f_668b:
	ld   a, [bc]                                     ; $668b: $0a
	jr   nc, jr_03f_66a6                             ; $668c: $30 $18

	inc  [hl]                                        ; $668e: $34
	add  hl, bc                                      ; $668f: $09
	jr   nz, @+$1a                                   ; $6690: $20 $18

	inc  l                                           ; $6692: $2c
	ld   a, [bc]                                     ; $6693: $0a
	db   $10                                         ; $6694: $10
	jr   jr_03f_66bb                                 ; $6695: $18 $24

	ld   a, [de]                                     ; $6697: $1a
	jr   z, jr_03f_66c2                              ; $6698: $28 $28

	ld   h, d                                        ; $669a: $62
	add  hl, bc                                      ; $669b: $09
	ld   b, b                                        ; $669c: $40
	ld   [$0938], sp                                 ; $669d: $08 $38 $09
	jr   nc, @+$0a                                   ; $66a0: $30 $08

jr_03f_66a2:
	jr   nc, jr_03f_66ad                             ; $66a2: $30 $09

	jr   nz, jr_03f_66ae                             ; $66a4: $20 $08

jr_03f_66a6:
	jr   z, jr_03f_66b2                              ; $66a6: $28 $0a

	db   $10                                         ; $66a8: $10
	ld   [$0a20], sp                                 ; $66a9: $08 $20 $0a
	ld   b, b                                        ; $66ac: $40

jr_03f_66ad:
	db   $10                                         ; $66ad: $10

jr_03f_66ae:
	ld   a, [hl-]                                    ; $66ae: $3a
	add  hl, bc                                      ; $66af: $09
	jr   nc, jr_03f_66c2                             ; $66b0: $30 $10

jr_03f_66b2:
	ld   [hl-], a                                    ; $66b2: $32
	add  hl, bc                                      ; $66b3: $09
	jr   nz, jr_03f_66c6                             ; $66b4: $20 $10

	ld   a, [hl+]                                    ; $66b6: $2a
	ld   a, [bc]                                     ; $66b7: $0a
	db   $10                                         ; $66b8: $10
	db   $10                                         ; $66b9: $10
	ld   [hl+], a                                    ; $66ba: $22

jr_03f_66bb:
	ld   a, [bc]                                     ; $66bb: $0a
	ld   b, b                                        ; $66bc: $40
	jr   nz, jr_03f_66fd                             ; $66bd: $20 $3e

	add  hl, bc                                      ; $66bf: $09
	jr   nc, @+$22                                   ; $66c0: $30 $20

jr_03f_66c2:
	ld   [hl], $09                                   ; $66c2: $36 $09
	jr   nz, jr_03f_66e6                             ; $66c4: $20 $20

jr_03f_66c6:
	ld   l, $0a                                      ; $66c6: $2e $0a
	db   $10                                         ; $66c8: $10
	jr   nz, jr_03f_66f1                             ; $66c9: $20 $26

	ld   a, [bc]                                     ; $66cb: $0a
	ld   b, b                                        ; $66cc: $40
	jr   @+$3e                                       ; $66cd: $18 $3c

	add  hl, bc                                      ; $66cf: $09
	jr   nc, jr_03f_66ea                             ; $66d0: $30 $18

	inc  [hl]                                        ; $66d2: $34
	add  hl, bc                                      ; $66d3: $09
	jr   nz, @+$1a                                   ; $66d4: $20 $18

	inc  l                                           ; $66d6: $2c
	ld   a, [bc]                                     ; $66d7: $0a
	db   $10                                         ; $66d8: $10
	jr   jr_03f_66ff                                 ; $66d9: $18 $24

	ld   a, [de]                                     ; $66db: $1a
	jr   c, jr_03f_66de                              ; $66dc: $38 $00

jr_03f_66de:
	halt                                             ; $66de: $76
	add  hl, bc                                      ; $66df: $09
	ld   b, b                                        ; $66e0: $40
	ld   [$0938], sp                                 ; $66e1: $08 $38 $09
	jr   nc, @+$0a                                   ; $66e4: $30 $08

jr_03f_66e6:
	jr   nc, jr_03f_66f1                             ; $66e6: $30 $09

	jr   nz, jr_03f_66f2                             ; $66e8: $20 $08

jr_03f_66ea:
	jr   z, jr_03f_66f6                              ; $66ea: $28 $0a

	db   $10                                         ; $66ec: $10
	ld   [$0a20], sp                                 ; $66ed: $08 $20 $0a
	ld   b, b                                        ; $66f0: $40

jr_03f_66f1:
	db   $10                                         ; $66f1: $10

jr_03f_66f2:
	ld   a, [hl-]                                    ; $66f2: $3a
	add  hl, bc                                      ; $66f3: $09
	jr   nc, jr_03f_6706                             ; $66f4: $30 $10

jr_03f_66f6:
	ld   [hl-], a                                    ; $66f6: $32
	add  hl, bc                                      ; $66f7: $09
	jr   nz, jr_03f_670a                             ; $66f8: $20 $10

	ld   a, [hl+]                                    ; $66fa: $2a
	ld   a, [bc]                                     ; $66fb: $0a
	db   $10                                         ; $66fc: $10

jr_03f_66fd:
	db   $10                                         ; $66fd: $10
	ld   [hl+], a                                    ; $66fe: $22

jr_03f_66ff:
	ld   a, [bc]                                     ; $66ff: $0a
	ld   b, b                                        ; $6700: $40
	jr   nz, @+$40                                   ; $6701: $20 $3e

	add  hl, bc                                      ; $6703: $09
	jr   nc, jr_03f_6726                             ; $6704: $30 $20

jr_03f_6706:
	ld   [hl], $09                                   ; $6706: $36 $09
	jr   nz, jr_03f_672a                             ; $6708: $20 $20

jr_03f_670a:
	ld   l, $0a                                      ; $670a: $2e $0a
	db   $10                                         ; $670c: $10
	jr   nz, @+$28                                   ; $670d: $20 $26

	ld   a, [bc]                                     ; $670f: $0a
	ld   b, b                                        ; $6710: $40
	jr   @+$3e                                       ; $6711: $18 $3c

	add  hl, bc                                      ; $6713: $09
	jr   nc, @+$1a                                   ; $6714: $30 $18

	inc  [hl]                                        ; $6716: $34
	add  hl, bc                                      ; $6717: $09
	jr   nz, jr_03f_6732                             ; $6718: $20 $18

	inc  l                                           ; $671a: $2c
	ld   a, [bc]                                     ; $671b: $0a
	db   $10                                         ; $671c: $10
	jr   jr_03f_6743                                 ; $671d: $18 $24

	ld   a, [de]                                     ; $671f: $1a
	jr   c, jr_03f_6722                              ; $6720: $38 $00

jr_03f_6722:
	ld   a, h                                        ; $6722: $7c
	add  hl, bc                                      ; $6723: $09
	jr   z, jr_03f_6726                              ; $6724: $28 $00

jr_03f_6726:
	ld   a, d                                        ; $6726: $7a
	add  hl, bc                                      ; $6727: $09
	jr   z, jr_03f_6722                              ; $6728: $28 $f8

jr_03f_672a:
	ld   a, b                                        ; $672a: $78
	add  hl, bc                                      ; $672b: $09
	ld   b, b                                        ; $672c: $40
	ld   [$0938], sp                                 ; $672d: $08 $38 $09
	jr   nc, @+$0a                                   ; $6730: $30 $08

jr_03f_6732:
	jr   nc, jr_03f_673d                             ; $6732: $30 $09

	jr   nz, jr_03f_673e                             ; $6734: $20 $08

	jr   z, jr_03f_6742                              ; $6736: $28 $0a

	db   $10                                         ; $6738: $10
	ld   [$0a20], sp                                 ; $6739: $08 $20 $0a
	ld   b, b                                        ; $673c: $40

jr_03f_673d:
	db   $10                                         ; $673d: $10

jr_03f_673e:
	ld   a, [hl-]                                    ; $673e: $3a
	add  hl, bc                                      ; $673f: $09
	jr   nc, @+$12                                   ; $6740: $30 $10

jr_03f_6742:
	ld   [hl-], a                                    ; $6742: $32

jr_03f_6743:
	add  hl, bc                                      ; $6743: $09
	jr   nz, @+$12                                   ; $6744: $20 $10

	ld   a, [hl+]                                    ; $6746: $2a
	ld   a, [bc]                                     ; $6747: $0a
	db   $10                                         ; $6748: $10
	db   $10                                         ; $6749: $10
	ld   [hl+], a                                    ; $674a: $22
	ld   a, [bc]                                     ; $674b: $0a
	jr   nz, @+$22                                   ; $674c: $20 $20

	ld   l, $0a                                      ; $674e: $2e $0a
	db   $10                                         ; $6750: $10
	jr   nz, jr_03f_6779                             ; $6751: $20 $26

	ld   a, [bc]                                     ; $6753: $0a
	ld   b, b                                        ; $6754: $40
	jr   @+$3e                                       ; $6755: $18 $3c

	add  hl, bc                                      ; $6757: $09
	jr   nc, jr_03f_6772                             ; $6758: $30 $18

	inc  [hl]                                        ; $675a: $34
	add  hl, bc                                      ; $675b: $09
	jr   nz, jr_03f_6776                             ; $675c: $20 $18

	inc  l                                           ; $675e: $2c
	ld   a, [bc]                                     ; $675f: $0a
	db   $10                                         ; $6760: $10
	jr   jr_03f_6787                                 ; $6761: $18 $24

	ld   a, [de]                                     ; $6763: $1a
	jr   nc, jr_03f_6766                             ; $6764: $30 $00

jr_03f_6766:
	ld   h, [hl]                                     ; $6766: $66
	add  hl, bc                                      ; $6767: $09
	jr   nz, jr_03f_676a                             ; $6768: $20 $00

jr_03f_676a:
	ld   h, h                                        ; $676a: $64
	add  hl, bc                                      ; $676b: $09
	ld   b, b                                        ; $676c: $40
	ld   [$0938], sp                                 ; $676d: $08 $38 $09
	jr   nc, @+$0a                                   ; $6770: $30 $08

jr_03f_6772:
	jr   nc, jr_03f_677d                             ; $6772: $30 $09

	jr   nz, jr_03f_677e                             ; $6774: $20 $08

jr_03f_6776:
	jr   z, jr_03f_6782                              ; $6776: $28 $0a

	db   $10                                         ; $6778: $10

jr_03f_6779:
	ld   [$0a20], sp                                 ; $6779: $08 $20 $0a
	ld   b, b                                        ; $677c: $40

jr_03f_677d:
	db   $10                                         ; $677d: $10

jr_03f_677e:
	ld   a, [hl-]                                    ; $677e: $3a
	add  hl, bc                                      ; $677f: $09
	jr   nc, jr_03f_6792                             ; $6780: $30 $10

jr_03f_6782:
	ld   [hl-], a                                    ; $6782: $32
	add  hl, bc                                      ; $6783: $09
	jr   nz, jr_03f_6796                             ; $6784: $20 $10

	ld   a, [hl+]                                    ; $6786: $2a

jr_03f_6787:
	ld   a, [bc]                                     ; $6787: $0a
	db   $10                                         ; $6788: $10
	db   $10                                         ; $6789: $10
	ld   [hl+], a                                    ; $678a: $22
	ld   a, [bc]                                     ; $678b: $0a
	ld   b, b                                        ; $678c: $40
	jr   nz, @+$40                                   ; $678d: $20 $3e

	add  hl, bc                                      ; $678f: $09
	jr   nc, jr_03f_67b2                             ; $6790: $30 $20

jr_03f_6792:
	ld   [hl], $09                                   ; $6792: $36 $09
	jr   nz, jr_03f_67b6                             ; $6794: $20 $20

jr_03f_6796:
	ld   l, $0a                                      ; $6796: $2e $0a
	db   $10                                         ; $6798: $10
	jr   nz, @+$28                                   ; $6799: $20 $26

	ld   a, [bc]                                     ; $679b: $0a
	ld   b, b                                        ; $679c: $40
	jr   @+$3e                                       ; $679d: $18 $3c

	add  hl, bc                                      ; $679f: $09
	jr   nc, @+$1a                                   ; $67a0: $30 $18

	inc  [hl]                                        ; $67a2: $34
	add  hl, bc                                      ; $67a3: $09
	jr   nz, jr_03f_67be                             ; $67a4: $20 $18

	inc  l                                           ; $67a6: $2c
	ld   a, [bc]                                     ; $67a7: $0a
	db   $10                                         ; $67a8: $10
	jr   jr_03f_67cf                                 ; $67a9: $18 $24

	ld   a, [de]                                     ; $67ab: $1a
	jr   z, jr_03f_67ae                              ; $67ac: $28 $00

jr_03f_67ae:
	ld   l, h                                        ; $67ae: $6c
	add  hl, bc                                      ; $67af: $09
	jr   jr_03f_67b2                                 ; $67b0: $18 $00

jr_03f_67b2:
	ld   l, d                                        ; $67b2: $6a
	add  hl, bc                                      ; $67b3: $09
	jr   z, jr_03f_67ae                              ; $67b4: $28 $f8

jr_03f_67b6:
	ld   l, b                                        ; $67b6: $68
	add  hl, bc                                      ; $67b7: $09
	ld   b, b                                        ; $67b8: $40
	ld   [$0938], sp                                 ; $67b9: $08 $38 $09
	jr   nc, @+$0a                                   ; $67bc: $30 $08

jr_03f_67be:
	jr   nc, jr_03f_67c9                             ; $67be: $30 $09

	jr   nz, jr_03f_67ca                             ; $67c0: $20 $08

	jr   z, jr_03f_67ce                              ; $67c2: $28 $0a

	db   $10                                         ; $67c4: $10
	ld   [$0a20], sp                                 ; $67c5: $08 $20 $0a
	ld   b, b                                        ; $67c8: $40

jr_03f_67c9:
	db   $10                                         ; $67c9: $10

jr_03f_67ca:
	ld   a, [hl-]                                    ; $67ca: $3a
	add  hl, bc                                      ; $67cb: $09
	jr   nc, @+$12                                   ; $67cc: $30 $10

jr_03f_67ce:
	ld   [hl-], a                                    ; $67ce: $32

jr_03f_67cf:
	add  hl, bc                                      ; $67cf: $09
	jr   nz, jr_03f_67e2                             ; $67d0: $20 $10

	ld   a, [hl+]                                    ; $67d2: $2a
	ld   a, [bc]                                     ; $67d3: $0a
	db   $10                                         ; $67d4: $10
	db   $10                                         ; $67d5: $10
	ld   [hl+], a                                    ; $67d6: $22
	ld   a, [bc]                                     ; $67d7: $0a
	jr   nz, @+$22                                   ; $67d8: $20 $20

	ld   l, $0a                                      ; $67da: $2e $0a
	db   $10                                         ; $67dc: $10
	jr   nz, jr_03f_6805                             ; $67dd: $20 $26

	ld   a, [bc]                                     ; $67df: $0a
	jr   nc, @+$1a                                   ; $67e0: $30 $18

jr_03f_67e2:
	inc  [hl]                                        ; $67e2: $34
	add  hl, bc                                      ; $67e3: $09
	jr   nz, jr_03f_67fe                             ; $67e4: $20 $18

	inc  l                                           ; $67e6: $2c
	ld   a, [bc]                                     ; $67e7: $0a
	db   $10                                         ; $67e8: $10
	jr   jr_03f_680f                                 ; $67e9: $18 $24

	ld   a, [de]                                     ; $67eb: $1a
	jr   nc, jr_03f_67ee                             ; $67ec: $30 $00

jr_03f_67ee:
	ld   [hl], h                                     ; $67ee: $74
	add  hl, bc                                      ; $67ef: $09
	jr   nc, @-$06                                   ; $67f0: $30 $f8

	ld   [hl], d                                     ; $67f2: $72
	add  hl, bc                                      ; $67f3: $09
	jr   nz, jr_03f_67f6                             ; $67f4: $20 $00

jr_03f_67f6:
	ld   [hl], b                                     ; $67f6: $70
	add  hl, bc                                      ; $67f7: $09
	ld   b, b                                        ; $67f8: $40
	ld   [$0938], sp                                 ; $67f9: $08 $38 $09
	jr   nc, @+$0a                                   ; $67fc: $30 $08

jr_03f_67fe:
	jr   nc, jr_03f_6809                             ; $67fe: $30 $09

	jr   nz, jr_03f_680a                             ; $6800: $20 $08

	jr   z, jr_03f_680e                              ; $6802: $28 $0a

	db   $10                                         ; $6804: $10

jr_03f_6805:
	ld   [$0a20], sp                                 ; $6805: $08 $20 $0a
	ld   b, b                                        ; $6808: $40

jr_03f_6809:
	db   $10                                         ; $6809: $10

jr_03f_680a:
	ld   a, [hl-]                                    ; $680a: $3a
	add  hl, bc                                      ; $680b: $09
	jr   nc, @+$12                                   ; $680c: $30 $10

jr_03f_680e:
	ld   [hl-], a                                    ; $680e: $32

jr_03f_680f:
	add  hl, bc                                      ; $680f: $09
	jr   nz, jr_03f_6822                             ; $6810: $20 $10

	ld   a, [hl+]                                    ; $6812: $2a
	ld   a, [bc]                                     ; $6813: $0a
	db   $10                                         ; $6814: $10
	db   $10                                         ; $6815: $10
	ld   [hl+], a                                    ; $6816: $22
	ld   a, [bc]                                     ; $6817: $0a
	jr   nz, jr_03f_683a                             ; $6818: $20 $20

	ld   l, $0a                                      ; $681a: $2e $0a
	db   $10                                         ; $681c: $10
	jr   nz, jr_03f_6845                             ; $681d: $20 $26

	ld   a, [bc]                                     ; $681f: $0a
	jr   nc, jr_03f_683a                             ; $6820: $30 $18

jr_03f_6822:
	inc  [hl]                                        ; $6822: $34
	add  hl, bc                                      ; $6823: $09
	jr   nz, jr_03f_683e                             ; $6824: $20 $18

	inc  l                                           ; $6826: $2c
	ld   a, [bc]                                     ; $6827: $0a
	db   $10                                         ; $6828: $10
	jr   jr_03f_684f                                 ; $6829: $18 $24

	ld   a, [de]                                     ; $682b: $1a
	jr   nc, @+$2a                                   ; $682c: $30 $28

	ld   h, [hl]                                     ; $682e: $66
	add  hl, hl                                      ; $682f: $29
	jr   nz, jr_03f_685a                             ; $6830: $20 $28

	ld   h, h                                        ; $6832: $64
	add  hl, hl                                      ; $6833: $29
	ld   b, b                                        ; $6834: $40
	jr   nz, jr_03f_686f                             ; $6835: $20 $38

	add  hl, hl                                      ; $6837: $29
	jr   nc, jr_03f_685a                             ; $6838: $30 $20

jr_03f_683a:
	jr   nc, jr_03f_6865                             ; $683a: $30 $29

	jr   nz, jr_03f_685e                             ; $683c: $20 $20

jr_03f_683e:
	jr   z, jr_03f_686a                              ; $683e: $28 $2a

	db   $10                                         ; $6840: $10
	jr   nz, @+$22                                   ; $6841: $20 $20

	ld   a, [hl+]                                    ; $6843: $2a
	ld   b, b                                        ; $6844: $40

jr_03f_6845:
	jr   jr_03f_6881                                 ; $6845: $18 $3a

	add  hl, hl                                      ; $6847: $29
	jr   nc, @+$1a                                   ; $6848: $30 $18

	ld   [hl-], a                                    ; $684a: $32
	add  hl, hl                                      ; $684b: $29
	jr   nz, jr_03f_6866                             ; $684c: $20 $18

	ld   a, [hl+]                                    ; $684e: $2a

jr_03f_684f:
	ld   a, [hl+]                                    ; $684f: $2a
	db   $10                                         ; $6850: $10
	jr   @+$24                                       ; $6851: $18 $22

	ld   a, [hl+]                                    ; $6853: $2a
	ld   b, b                                        ; $6854: $40
	ld   [$293e], sp                                 ; $6855: $08 $3e $29
	jr   nc, @+$0a                                   ; $6858: $30 $08

jr_03f_685a:
	ld   [hl], $29                                   ; $685a: $36 $29
	jr   nz, jr_03f_6866                             ; $685c: $20 $08

jr_03f_685e:
	ld   l, $2a                                      ; $685e: $2e $2a
	db   $10                                         ; $6860: $10
	ld   [$2a26], sp                                 ; $6861: $08 $26 $2a
	ld   b, b                                        ; $6864: $40

jr_03f_6865:
	db   $10                                         ; $6865: $10

jr_03f_6866:
	inc  a                                           ; $6866: $3c
	add  hl, hl                                      ; $6867: $29
	jr   nc, jr_03f_687a                             ; $6868: $30 $10

jr_03f_686a:
	inc  [hl]                                        ; $686a: $34
	add  hl, hl                                      ; $686b: $29
	jr   nz, jr_03f_687e                             ; $686c: $20 $10

	inc  l                                           ; $686e: $2c

jr_03f_686f:
	ld   a, [hl+]                                    ; $686f: $2a
	db   $10                                         ; $6870: $10
	db   $10                                         ; $6871: $10
	inc  h                                           ; $6872: $24
	ld   a, [hl-]                                    ; $6873: $3a
	jr   z, @+$2a                                    ; $6874: $28 $28

	ld   l, h                                        ; $6876: $6c
	add  hl, hl                                      ; $6877: $29
	jr   jr_03f_68a2                                 ; $6878: $18 $28

jr_03f_687a:
	ld   l, d                                        ; $687a: $6a
	add  hl, hl                                      ; $687b: $29
	jr   z, jr_03f_68ae                              ; $687c: $28 $30

jr_03f_687e:
	ld   l, b                                        ; $687e: $68
	add  hl, hl                                      ; $687f: $29
	ld   b, b                                        ; $6880: $40

jr_03f_6881:
	jr   nz, jr_03f_68bb                             ; $6881: $20 $38

	add  hl, hl                                      ; $6883: $29
	jr   nc, @+$22                                   ; $6884: $30 $20

	jr   nc, jr_03f_68b1                             ; $6886: $30 $29

	jr   nz, jr_03f_68aa                             ; $6888: $20 $20

	jr   z, jr_03f_68b6                              ; $688a: $28 $2a

	db   $10                                         ; $688c: $10
	jr   nz, jr_03f_68af                             ; $688d: $20 $20

	ld   a, [hl+]                                    ; $688f: $2a
	ld   b, b                                        ; $6890: $40
	jr   jr_03f_68cd                                 ; $6891: $18 $3a

	add  hl, hl                                      ; $6893: $29
	jr   nc, jr_03f_68ae                             ; $6894: $30 $18

	ld   [hl-], a                                    ; $6896: $32
	add  hl, hl                                      ; $6897: $29
	jr   nz, jr_03f_68b2                             ; $6898: $20 $18

	ld   a, [hl+]                                    ; $689a: $2a
	ld   a, [hl+]                                    ; $689b: $2a
	db   $10                                         ; $689c: $10
	jr   jr_03f_68c1                                 ; $689d: $18 $22

	ld   a, [hl+]                                    ; $689f: $2a
	jr   nz, jr_03f_68aa                             ; $68a0: $20 $08

jr_03f_68a2:
	ld   l, $2a                                      ; $68a2: $2e $2a
	db   $10                                         ; $68a4: $10
	ld   [$2a26], sp                                 ; $68a5: $08 $26 $2a
	jr   nc, jr_03f_68ba                             ; $68a8: $30 $10

jr_03f_68aa:
	inc  [hl]                                        ; $68aa: $34
	add  hl, hl                                      ; $68ab: $29
	jr   nz, jr_03f_68be                             ; $68ac: $20 $10

jr_03f_68ae:
	inc  l                                           ; $68ae: $2c

jr_03f_68af:
	ld   a, [hl+]                                    ; $68af: $2a
	db   $10                                         ; $68b0: $10

jr_03f_68b1:
	db   $10                                         ; $68b1: $10

jr_03f_68b2:
	inc  h                                           ; $68b2: $24
	ld   a, [hl-]                                    ; $68b3: $3a
	jr   nc, @+$2a                                   ; $68b4: $30 $28

jr_03f_68b6:
	ld   [hl], h                                     ; $68b6: $74
	add  hl, hl                                      ; $68b7: $29
	jr   nc, jr_03f_68ea                             ; $68b8: $30 $30

jr_03f_68ba:
	ld   [hl], d                                     ; $68ba: $72

jr_03f_68bb:
	add  hl, hl                                      ; $68bb: $29
	jr   nz, @+$2a                                   ; $68bc: $20 $28

jr_03f_68be:
	ld   [hl], b                                     ; $68be: $70
	add  hl, hl                                      ; $68bf: $29
	ld   b, b                                        ; $68c0: $40

jr_03f_68c1:
	jr   nz, jr_03f_68fb                             ; $68c1: $20 $38

	add  hl, hl                                      ; $68c3: $29
	jr   nc, @+$22                                   ; $68c4: $30 $20

	jr   nc, jr_03f_68f1                             ; $68c6: $30 $29

	jr   nz, jr_03f_68ea                             ; $68c8: $20 $20

	jr   z, jr_03f_68f6                              ; $68ca: $28 $2a

	db   $10                                         ; $68cc: $10

jr_03f_68cd:
	jr   nz, jr_03f_68ef                             ; $68cd: $20 $20

	ld   a, [hl+]                                    ; $68cf: $2a
	ld   b, b                                        ; $68d0: $40
	jr   @+$3c                                       ; $68d1: $18 $3a

	add  hl, hl                                      ; $68d3: $29
	jr   nc, jr_03f_68ee                             ; $68d4: $30 $18

	ld   [hl-], a                                    ; $68d6: $32
	add  hl, hl                                      ; $68d7: $29
	jr   nz, jr_03f_68f2                             ; $68d8: $20 $18

	ld   a, [hl+]                                    ; $68da: $2a
	ld   a, [hl+]                                    ; $68db: $2a
	db   $10                                         ; $68dc: $10
	jr   @+$24                                       ; $68dd: $18 $22

	ld   a, [hl+]                                    ; $68df: $2a
	jr   nz, jr_03f_68ea                             ; $68e0: $20 $08

	ld   l, $2a                                      ; $68e2: $2e $2a
	db   $10                                         ; $68e4: $10
	ld   [$2a26], sp                                 ; $68e5: $08 $26 $2a
	jr   nc, @+$12                                   ; $68e8: $30 $10

jr_03f_68ea:
	inc  [hl]                                        ; $68ea: $34
	add  hl, hl                                      ; $68eb: $29
	jr   nz, jr_03f_68fe                             ; $68ec: $20 $10

jr_03f_68ee:
	inc  l                                           ; $68ee: $2c

jr_03f_68ef:
	ld   a, [hl+]                                    ; $68ef: $2a
	db   $10                                         ; $68f0: $10

jr_03f_68f1:
	db   $10                                         ; $68f1: $10

jr_03f_68f2:
	inc  h                                           ; $68f2: $24
	ld   a, [hl-]                                    ; $68f3: $3a
	jr   c, jr_03f_691e                              ; $68f4: $38 $28

jr_03f_68f6:
	halt                                             ; $68f6: $76
	add  hl, hl                                      ; $68f7: $29
	ld   b, b                                        ; $68f8: $40
	jr   nz, jr_03f_6933                             ; $68f9: $20 $38

jr_03f_68fb:
	add  hl, hl                                      ; $68fb: $29
	jr   nc, jr_03f_691e                             ; $68fc: $30 $20

jr_03f_68fe:
	jr   nc, jr_03f_6929                             ; $68fe: $30 $29

	jr   nz, jr_03f_6922                             ; $6900: $20 $20

	jr   z, jr_03f_692e                              ; $6902: $28 $2a

	db   $10                                         ; $6904: $10
	jr   nz, @+$22                                   ; $6905: $20 $20

	ld   a, [hl+]                                    ; $6907: $2a
	ld   b, b                                        ; $6908: $40
	jr   jr_03f_6945                                 ; $6909: $18 $3a

	add  hl, hl                                      ; $690b: $29
	jr   nc, @+$1a                                   ; $690c: $30 $18

	ld   [hl-], a                                    ; $690e: $32
	add  hl, hl                                      ; $690f: $29
	jr   nz, jr_03f_692a                             ; $6910: $20 $18

	ld   a, [hl+]                                    ; $6912: $2a
	ld   a, [hl+]                                    ; $6913: $2a
	db   $10                                         ; $6914: $10
	jr   @+$24                                       ; $6915: $18 $22

	ld   a, [hl+]                                    ; $6917: $2a
	ld   b, b                                        ; $6918: $40
	ld   [$293e], sp                                 ; $6919: $08 $3e $29
	jr   nc, @+$0a                                   ; $691c: $30 $08

jr_03f_691e:
	ld   [hl], $29                                   ; $691e: $36 $29
	jr   nz, jr_03f_692a                             ; $6920: $20 $08

jr_03f_6922:
	ld   l, $2a                                      ; $6922: $2e $2a
	db   $10                                         ; $6924: $10
	ld   [$2a26], sp                                 ; $6925: $08 $26 $2a
	ld   b, b                                        ; $6928: $40

jr_03f_6929:
	db   $10                                         ; $6929: $10

jr_03f_692a:
	inc  a                                           ; $692a: $3c
	add  hl, hl                                      ; $692b: $29
	jr   nc, jr_03f_693e                             ; $692c: $30 $10

jr_03f_692e:
	inc  [hl]                                        ; $692e: $34
	add  hl, hl                                      ; $692f: $29
	jr   nz, jr_03f_6942                             ; $6930: $20 $10

	inc  l                                           ; $6932: $2c

jr_03f_6933:
	ld   a, [hl+]                                    ; $6933: $2a
	db   $10                                         ; $6934: $10
	db   $10                                         ; $6935: $10
	inc  h                                           ; $6936: $24
	ld   a, [hl-]                                    ; $6937: $3a
	jr   c, @+$2a                                    ; $6938: $38 $28

	ld   a, h                                        ; $693a: $7c
	add  hl, hl                                      ; $693b: $29
	jr   z, jr_03f_6966                              ; $693c: $28 $28

jr_03f_693e:
	ld   a, d                                        ; $693e: $7a
	add  hl, hl                                      ; $693f: $29
	jr   z, jr_03f_6972                              ; $6940: $28 $30

jr_03f_6942:
	ld   a, b                                        ; $6942: $78
	add  hl, hl                                      ; $6943: $29
	ld   b, b                                        ; $6944: $40

jr_03f_6945:
	jr   nz, jr_03f_697f                             ; $6945: $20 $38

	add  hl, hl                                      ; $6947: $29
	jr   nc, @+$22                                   ; $6948: $30 $20

	jr   nc, @+$2b                                   ; $694a: $30 $29

	jr   nz, jr_03f_696e                             ; $694c: $20 $20

	jr   z, jr_03f_697a                              ; $694e: $28 $2a

	db   $10                                         ; $6950: $10
	jr   nz, jr_03f_6973                             ; $6951: $20 $20

	ld   a, [hl+]                                    ; $6953: $2a
	ld   b, b                                        ; $6954: $40
	jr   @+$3c                                       ; $6955: $18 $3a

	add  hl, hl                                      ; $6957: $29
	jr   nc, jr_03f_6972                             ; $6958: $30 $18

	ld   [hl-], a                                    ; $695a: $32
	add  hl, hl                                      ; $695b: $29
	jr   nz, jr_03f_6976                             ; $695c: $20 $18

	ld   a, [hl+]                                    ; $695e: $2a
	ld   a, [hl+]                                    ; $695f: $2a
	db   $10                                         ; $6960: $10
	jr   jr_03f_6985                                 ; $6961: $18 $22

	ld   a, [hl+]                                    ; $6963: $2a
	jr   nz, jr_03f_696e                             ; $6964: $20 $08

jr_03f_6966:
	ld   l, $2a                                      ; $6966: $2e $2a
	db   $10                                         ; $6968: $10
	ld   [$2a26], sp                                 ; $6969: $08 $26 $2a
	ld   b, b                                        ; $696c: $40
	db   $10                                         ; $696d: $10

jr_03f_696e:
	inc  a                                           ; $696e: $3c
	add  hl, hl                                      ; $696f: $29
	jr   nc, @+$12                                   ; $6970: $30 $10

jr_03f_6972:
	inc  [hl]                                        ; $6972: $34

jr_03f_6973:
	add  hl, hl                                      ; $6973: $29
	jr   nz, @+$12                                   ; $6974: $20 $10

jr_03f_6976:
	inc  l                                           ; $6976: $2c
	ld   a, [hl+]                                    ; $6977: $2a
	db   $10                                         ; $6978: $10
	db   $10                                         ; $6979: $10

jr_03f_697a:
	inc  h                                           ; $697a: $24
	ld   a, [hl-]                                    ; $697b: $3a
	jr   z, jr_03f_697e                              ; $697c: $28 $00

jr_03f_697e:
	ld   h, b                                        ; $697e: $60

jr_03f_697f:
	add  hl, hl                                      ; $697f: $29
	ld   b, b                                        ; $6980: $40
	jr   nz, jr_03f_69bb                             ; $6981: $20 $38

	add  hl, hl                                      ; $6983: $29
	ld   b, b                                        ; $6984: $40

jr_03f_6985:
	jr   @+$3c                                       ; $6985: $18 $3a

	add  hl, hl                                      ; $6987: $29
	ld   b, b                                        ; $6988: $40
	ld   [$293e], sp                                 ; $6989: $08 $3e $29
	ld   b, b                                        ; $698c: $40
	db   $10                                         ; $698d: $10
	inc  a                                           ; $698e: $3c
	add  hl, hl                                      ; $698f: $29
	jr   nc, @+$22                                   ; $6990: $30 $20

	jr   nc, jr_03f_69bd                             ; $6992: $30 $29

	jr   nz, jr_03f_69b6                             ; $6994: $20 $20

	jr   z, jr_03f_69c2                              ; $6996: $28 $2a

	db   $10                                         ; $6998: $10
	jr   nz, jr_03f_69bb                             ; $6999: $20 $20

	ld   a, [hl+]                                    ; $699b: $2a
	jr   nc, jr_03f_69b6                             ; $699c: $30 $18

	ld   [hl-], a                                    ; $699e: $32
	add  hl, hl                                      ; $699f: $29
	jr   nz, jr_03f_69ba                             ; $69a0: $20 $18

	ld   a, [hl+]                                    ; $69a2: $2a
	ld   a, [hl+]                                    ; $69a3: $2a
	db   $10                                         ; $69a4: $10
	jr   @+$24                                       ; $69a5: $18 $22

	ld   a, [hl+]                                    ; $69a7: $2a
	jr   nc, @+$0a                                   ; $69a8: $30 $08

	ld   [hl], $29                                   ; $69aa: $36 $29
	jr   nz, jr_03f_69b6                             ; $69ac: $20 $08

	ld   l, $2a                                      ; $69ae: $2e $2a
	db   $10                                         ; $69b0: $10
	ld   [$2a26], sp                                 ; $69b1: $08 $26 $2a
	jr   nc, @+$12                                   ; $69b4: $30 $10

jr_03f_69b6:
	inc  [hl]                                        ; $69b6: $34
	add  hl, hl                                      ; $69b7: $29
	jr   nz, jr_03f_69ca                             ; $69b8: $20 $10

jr_03f_69ba:
	inc  l                                           ; $69ba: $2c

jr_03f_69bb:
	ld   a, [hl+]                                    ; $69bb: $2a
	db   $10                                         ; $69bc: $10

jr_03f_69bd:
	db   $10                                         ; $69bd: $10
	inc  h                                           ; $69be: $24
	ld   a, [hl-]                                    ; $69bf: $3a
	jr   z, jr_03f_69c2                              ; $69c0: $28 $00

jr_03f_69c2:
	ld   h, d                                        ; $69c2: $62
	add  hl, hl                                      ; $69c3: $29
	ld   b, b                                        ; $69c4: $40
	jr   nz, jr_03f_69ff                             ; $69c5: $20 $38

	add  hl, hl                                      ; $69c7: $29
	jr   nc, jr_03f_69ea                             ; $69c8: $30 $20

jr_03f_69ca:
	jr   nc, jr_03f_69f5                             ; $69ca: $30 $29

	jr   nz, jr_03f_69ee                             ; $69cc: $20 $20

	jr   z, jr_03f_69fa                              ; $69ce: $28 $2a

	db   $10                                         ; $69d0: $10
	jr   nz, @+$22                                   ; $69d1: $20 $20

	ld   a, [hl+]                                    ; $69d3: $2a
	ld   b, b                                        ; $69d4: $40
	jr   @+$3c                                       ; $69d5: $18 $3a

	add  hl, hl                                      ; $69d7: $29
	jr   nc, @+$1a                                   ; $69d8: $30 $18

	ld   [hl-], a                                    ; $69da: $32
	add  hl, hl                                      ; $69db: $29
	jr   nz, jr_03f_69f6                             ; $69dc: $20 $18

	ld   a, [hl+]                                    ; $69de: $2a
	ld   a, [hl+]                                    ; $69df: $2a
	db   $10                                         ; $69e0: $10
	jr   @+$24                                       ; $69e1: $18 $22

	ld   a, [hl+]                                    ; $69e3: $2a
	ld   b, b                                        ; $69e4: $40
	ld   [$293e], sp                                 ; $69e5: $08 $3e $29
	jr   nc, @+$0a                                   ; $69e8: $30 $08

jr_03f_69ea:
	ld   [hl], $29                                   ; $69ea: $36 $29
	jr   nz, jr_03f_69f6                             ; $69ec: $20 $08

jr_03f_69ee:
	ld   l, $2a                                      ; $69ee: $2e $2a
	db   $10                                         ; $69f0: $10
	ld   [$2a26], sp                                 ; $69f1: $08 $26 $2a
	ld   b, b                                        ; $69f4: $40

jr_03f_69f5:
	db   $10                                         ; $69f5: $10

jr_03f_69f6:
	inc  a                                           ; $69f6: $3c
	add  hl, hl                                      ; $69f7: $29
	jr   nc, @+$12                                   ; $69f8: $30 $10

jr_03f_69fa:
	inc  [hl]                                        ; $69fa: $34
	add  hl, hl                                      ; $69fb: $29
	jr   nz, @+$12                                   ; $69fc: $20 $10

	inc  l                                           ; $69fe: $2c

jr_03f_69ff:
	ld   a, [hl+]                                    ; $69ff: $2a
	db   $10                                         ; $6a00: $10
	db   $10                                         ; $6a01: $10
	inc  h                                           ; $6a02: $24
	ld   a, [hl-]                                    ; $6a03: $3a
	ld   [rRAMG], sp                                 ; $6a04: $08 $00 $00
	inc  de                                          ; $6a07: $13
	ld   [$0200], sp                                 ; $6a08: $08 $00 $02
	inc  de                                          ; $6a0b: $13
	ld   [$0400], sp                                 ; $6a0c: $08 $00 $04
	inc  de                                          ; $6a0f: $13
	ld   [$0600], sp                                 ; $6a10: $08 $00 $06
	inc  de                                          ; $6a13: $13
	ld   [$0800], sp                                 ; $6a14: $08 $00 $08
	inc  de                                          ; $6a17: $13
	ld   [$0a00], sp                                 ; $6a18: $08 $00 $0a
	inc  de                                          ; $6a1b: $13
	ld   [$0c00], sp                                 ; $6a1c: $08 $00 $0c
	inc  de                                          ; $6a1f: $13
	ld   [$0e00], sp                                 ; $6a20: $08 $00 $0e
	inc  de                                          ; $6a23: $13
	ld   [$1000], sp                                 ; $6a24: $08 $00 $10
	inc  de                                          ; $6a27: $13
	ld   [$1200], sp                                 ; $6a28: $08 $00 $12
	inc  de                                          ; $6a2b: $13
	ld   [$2c11], sp                                 ; $6a2c: $08 $11 $2c
	inc  b                                           ; $6a2f: $04
	ld   [$1809], sp                                 ; $6a30: $08 $09 $18
	inc  b                                           ; $6a33: $04
	ld   [$1601], sp                                 ; $6a34: $08 $01 $16
	inc  b                                           ; $6a37: $04
	ld   [$14f9], sp                                 ; $6a38: $08 $f9 $14
	inc  d                                           ; $6a3b: $14
	ld   [$1c08], sp                                 ; $6a3c: $08 $08 $1c
	rlca                                             ; $6a3f: $07
	ld   [$1a00], sp                                 ; $6a40: $08 $00 $1a
	rla                                              ; $6a43: $17
	ld   [$2008], sp                                 ; $6a44: $08 $08 $20
	rlca                                             ; $6a47: $07
	ld   [$1e00], sp                                 ; $6a48: $08 $00 $1e
	rla                                              ; $6a4b: $17
	ld   [$2200], sp                                 ; $6a4c: $08 $00 $22
	ld   d, $08                                      ; $6a4f: $16 $08
	dec  d                                           ; $6a51: $15
	ld   l, $05                                      ; $6a52: $2e $05
	ld   [$2a0d], sp                                 ; $6a54: $08 $0d $2a
	dec  b                                           ; $6a57: $05
	ld   [$2805], sp                                 ; $6a58: $08 $05 $28
	dec  b                                           ; $6a5b: $05
	ld   [$26fd], sp                                 ; $6a5c: $08 $fd $26
	dec  b                                           ; $6a5f: $05
	ld   [$24f5], sp                                 ; $6a60: $08 $f5 $24
	dec  d                                           ; $6a63: $15
	ld   b, b                                        ; $6a64: $40
	ld   [$0818], sp                                 ; $6a65: $08 $18 $08
	jr   nc, @+$0a                                   ; $6a68: $30 $08

	db   $10                                         ; $6a6a: $10
	add  hl, bc                                      ; $6a6b: $09
	jr   nz, jr_03f_6a76                             ; $6a6c: $20 $08

	ld   [$1009], sp                                 ; $6a6e: $08 $09 $10
	ld   [$0900], sp                                 ; $6a71: $08 $00 $09
	ld   b, b                                        ; $6a74: $40
	db   $10                                         ; $6a75: $10

jr_03f_6a76:
	ld   a, [de]                                     ; $6a76: $1a
	ld   [$1030], sp                                 ; $6a77: $08 $30 $10
	ld   [de], a                                     ; $6a7a: $12
	add  hl, bc                                      ; $6a7b: $09
	jr   nz, jr_03f_6a8e                             ; $6a7c: $20 $10

	ld   a, [bc]                                     ; $6a7e: $0a
	add  hl, bc                                      ; $6a7f: $09
	db   $10                                         ; $6a80: $10
	db   $10                                         ; $6a81: $10
	ld   [bc], a                                     ; $6a82: $02
	add  hl, bc                                      ; $6a83: $09
	ld   b, b                                        ; $6a84: $40
	jr   nz, @+$20                                   ; $6a85: $20 $1e

	ld   [$2030], sp                                 ; $6a87: $08 $30 $20
	ld   d, $09                                      ; $6a8a: $16 $09
	jr   nz, jr_03f_6aae                             ; $6a8c: $20 $20

jr_03f_6a8e:
	ld   c, $09                                      ; $6a8e: $0e $09
	db   $10                                         ; $6a90: $10
	jr   nz, @+$08                                   ; $6a91: $20 $06

	add  hl, bc                                      ; $6a93: $09
	ld   b, b                                        ; $6a94: $40
	jr   @+$1e                                       ; $6a95: $18 $1c

	ld   [$1830], sp                                 ; $6a97: $08 $30 $18
	inc  d                                           ; $6a9a: $14
	add  hl, bc                                      ; $6a9b: $09
	jr   nz, @+$1a                                   ; $6a9c: $20 $18

	inc  c                                           ; $6a9e: $0c
	add  hl, bc                                      ; $6a9f: $09
	db   $10                                         ; $6aa0: $10
	jr   jr_03f_6aa7                                 ; $6aa1: $18 $04

	add  hl, de                                      ; $6aa3: $19
	jr   z, jr_03f_6ace                              ; $6aa4: $28 $28

	ld   b, b                                        ; $6aa6: $40

jr_03f_6aa7:
	add  hl, bc                                      ; $6aa7: $09
	ld   b, b                                        ; $6aa8: $40
	ld   [$0818], sp                                 ; $6aa9: $08 $18 $08
	jr   nc, @+$0a                                   ; $6aac: $30 $08

jr_03f_6aae:
	db   $10                                         ; $6aae: $10
	add  hl, bc                                      ; $6aaf: $09
	jr   nz, jr_03f_6aba                             ; $6ab0: $20 $08

	ld   [$1009], sp                                 ; $6ab2: $08 $09 $10
	ld   [$0900], sp                                 ; $6ab5: $08 $00 $09
	ld   b, b                                        ; $6ab8: $40
	db   $10                                         ; $6ab9: $10

jr_03f_6aba:
	ld   a, [de]                                     ; $6aba: $1a
	ld   [$1030], sp                                 ; $6abb: $08 $30 $10
	ld   [de], a                                     ; $6abe: $12
	add  hl, bc                                      ; $6abf: $09
	jr   nz, jr_03f_6ad2                             ; $6ac0: $20 $10

	ld   a, [bc]                                     ; $6ac2: $0a
	add  hl, bc                                      ; $6ac3: $09
	db   $10                                         ; $6ac4: $10
	db   $10                                         ; $6ac5: $10
	ld   [bc], a                                     ; $6ac6: $02
	add  hl, bc                                      ; $6ac7: $09
	ld   b, b                                        ; $6ac8: $40
	jr   nz, @+$20                                   ; $6ac9: $20 $1e

	ld   [$2030], sp                                 ; $6acb: $08 $30 $20

jr_03f_6ace:
	ld   d, $09                                      ; $6ace: $16 $09
	jr   nz, @+$22                                   ; $6ad0: $20 $20

jr_03f_6ad2:
	ld   c, $09                                      ; $6ad2: $0e $09
	db   $10                                         ; $6ad4: $10
	jr   nz, @+$08                                   ; $6ad5: $20 $06

	add  hl, bc                                      ; $6ad7: $09
	ld   b, b                                        ; $6ad8: $40
	jr   @+$1e                                       ; $6ad9: $18 $1c

	ld   [$1830], sp                                 ; $6adb: $08 $30 $18
	inc  d                                           ; $6ade: $14
	add  hl, bc                                      ; $6adf: $09
	jr   nz, jr_03f_6afa                             ; $6ae0: $20 $18

	inc  c                                           ; $6ae2: $0c
	add  hl, bc                                      ; $6ae3: $09
	db   $10                                         ; $6ae4: $10
	jr   jr_03f_6aeb                                 ; $6ae5: $18 $04

	add  hl, de                                      ; $6ae7: $19
	jr   z, @+$2a                                    ; $6ae8: $28 $28

	ld   b, d                                        ; $6aea: $42

jr_03f_6aeb:
	add  hl, bc                                      ; $6aeb: $09
	jr   nz, @+$0a                                   ; $6aec: $20 $08

	ld   [$1009], sp                                 ; $6aee: $08 $09 $10
	ld   [$0900], sp                                 ; $6af1: $08 $00 $09
	ld   b, b                                        ; $6af4: $40
	ld   [$0818], sp                                 ; $6af5: $08 $18 $08
	jr   nc, jr_03f_6b02                             ; $6af8: $30 $08

jr_03f_6afa:
	db   $10                                         ; $6afa: $10
	add  hl, bc                                      ; $6afb: $09
	jr   nz, jr_03f_6b0e                             ; $6afc: $20 $10

	ld   a, [bc]                                     ; $6afe: $0a
	add  hl, bc                                      ; $6aff: $09
	db   $10                                         ; $6b00: $10
	db   $10                                         ; $6b01: $10

jr_03f_6b02:
	ld   [bc], a                                     ; $6b02: $02
	add  hl, bc                                      ; $6b03: $09
	ld   b, b                                        ; $6b04: $40
	db   $10                                         ; $6b05: $10
	ld   a, [de]                                     ; $6b06: $1a
	ld   [$1030], sp                                 ; $6b07: $08 $30 $10
	ld   [de], a                                     ; $6b0a: $12
	add  hl, bc                                      ; $6b0b: $09
	jr   nz, jr_03f_6b2e                             ; $6b0c: $20 $20

jr_03f_6b0e:
	ld   c, $09                                      ; $6b0e: $0e $09
	db   $10                                         ; $6b10: $10
	jr   nz, @+$08                                   ; $6b11: $20 $06

	add  hl, bc                                      ; $6b13: $09
	ld   b, b                                        ; $6b14: $40
	jr   nz, @+$20                                   ; $6b15: $20 $1e

	ld   [$2030], sp                                 ; $6b17: $08 $30 $20
	ld   d, $09                                      ; $6b1a: $16 $09
	jr   nz, jr_03f_6b36                             ; $6b1c: $20 $18

	inc  c                                           ; $6b1e: $0c
	add  hl, bc                                      ; $6b1f: $09
	db   $10                                         ; $6b20: $10
	jr   jr_03f_6b27                                 ; $6b21: $18 $04

	add  hl, bc                                      ; $6b23: $09
	ld   b, b                                        ; $6b24: $40
	jr   jr_03f_6b43                                 ; $6b25: $18 $1c

jr_03f_6b27:
	ld   [$1830], sp                                 ; $6b27: $08 $30 $18
	inc  d                                           ; $6b2a: $14
	add  hl, de                                      ; $6b2b: $19
	jr   nc, jr_03f_6b2e                             ; $6b2c: $30 $00

jr_03f_6b2e:
	ld   d, [hl]                                     ; $6b2e: $56
	ld   [$0830], sp                                 ; $6b2f: $08 $30 $08
	db   $10                                         ; $6b32: $10
	ld   [$0820], sp                                 ; $6b33: $08 $20 $08

jr_03f_6b36:
	ld   [$1009], sp                                 ; $6b36: $08 $09 $10
	ld   [$0900], sp                                 ; $6b39: $08 $00 $09
	ld   b, b                                        ; $6b3c: $40
	db   $10                                         ; $6b3d: $10
	ld   a, [de]                                     ; $6b3e: $1a
	ld   [$1030], sp                                 ; $6b3f: $08 $30 $10
	ld   [de], a                                     ; $6b42: $12

jr_03f_6b43:
	add  hl, bc                                      ; $6b43: $09
	jr   nz, @+$12                                   ; $6b44: $20 $10

	ld   a, [bc]                                     ; $6b46: $0a
	add  hl, bc                                      ; $6b47: $09
	db   $10                                         ; $6b48: $10
	db   $10                                         ; $6b49: $10
	ld   [bc], a                                     ; $6b4a: $02
	add  hl, bc                                      ; $6b4b: $09
	jr   nc, jr_03f_6b6e                             ; $6b4c: $30 $20

	ld   d, $09                                      ; $6b4e: $16 $09
	jr   nz, jr_03f_6b72                             ; $6b50: $20 $20

	ld   c, $09                                      ; $6b52: $0e $09
	db   $10                                         ; $6b54: $10
	jr   nz, @+$08                                   ; $6b55: $20 $06

	ld   [$1840], sp                                 ; $6b57: $08 $40 $18
	inc  e                                           ; $6b5a: $1c
	ld   [$1830], sp                                 ; $6b5b: $08 $30 $18
	inc  d                                           ; $6b5e: $14
	add  hl, bc                                      ; $6b5f: $09
	jr   nz, jr_03f_6b7a                             ; $6b60: $20 $18

	inc  c                                           ; $6b62: $0c
	add  hl, bc                                      ; $6b63: $09
	db   $10                                         ; $6b64: $10
	jr   jr_03f_6b6b                                 ; $6b65: $18 $04

	add  hl, de                                      ; $6b67: $19
	jr   z, jr_03f_6b6a                              ; $6b68: $28 $00

jr_03f_6b6a:
	ld   e, d                                        ; $6b6a: $5a

jr_03f_6b6b:
	ld   [$f828], sp                                 ; $6b6b: $08 $28 $f8

jr_03f_6b6e:
	ld   e, b                                        ; $6b6e: $58
	ld   [$0840], sp                                 ; $6b6f: $08 $40 $08

jr_03f_6b72:
	jr   @+$0a                                       ; $6b72: $18 $08

	jr   nc, @+$0a                                   ; $6b74: $30 $08

	db   $10                                         ; $6b76: $10
	add  hl, bc                                      ; $6b77: $09
	jr   nz, jr_03f_6b82                             ; $6b78: $20 $08

jr_03f_6b7a:
	ld   [$1009], sp                                 ; $6b7a: $08 $09 $10
	ld   [$0900], sp                                 ; $6b7d: $08 $00 $09
	ld   b, b                                        ; $6b80: $40
	db   $10                                         ; $6b81: $10

jr_03f_6b82:
	ld   a, [de]                                     ; $6b82: $1a
	ld   [$1030], sp                                 ; $6b83: $08 $30 $10
	ld   [de], a                                     ; $6b86: $12
	add  hl, bc                                      ; $6b87: $09
	jr   nz, @+$12                                   ; $6b88: $20 $10

	ld   a, [bc]                                     ; $6b8a: $0a
	add  hl, bc                                      ; $6b8b: $09
	db   $10                                         ; $6b8c: $10
	db   $10                                         ; $6b8d: $10
	ld   [bc], a                                     ; $6b8e: $02
	add  hl, bc                                      ; $6b8f: $09
	jr   nc, @+$22                                   ; $6b90: $30 $20

	ld   d, $09                                      ; $6b92: $16 $09
	jr   nz, jr_03f_6bb6                             ; $6b94: $20 $20

	ld   c, $09                                      ; $6b96: $0e $09
	db   $10                                         ; $6b98: $10
	jr   nz, @+$08                                   ; $6b99: $20 $06

	ld   [$1830], sp                                 ; $6b9b: $08 $30 $18
	inc  d                                           ; $6b9e: $14
	add  hl, bc                                      ; $6b9f: $09
	jr   nz, jr_03f_6bba                             ; $6ba0: $20 $18

	inc  c                                           ; $6ba2: $0c
	add  hl, bc                                      ; $6ba3: $09
	db   $10                                         ; $6ba4: $10
	jr   jr_03f_6bab                                 ; $6ba5: $18 $04

	add  hl, de                                      ; $6ba7: $19
	jr   nc, jr_03f_6baa                             ; $6ba8: $30 $00

jr_03f_6baa:
	ld   b, [hl]                                     ; $6baa: $46

jr_03f_6bab:
	add  hl, bc                                      ; $6bab: $09
	jr   nz, jr_03f_6bae                             ; $6bac: $20 $00

jr_03f_6bae:
	ld   b, h                                        ; $6bae: $44
	add  hl, bc                                      ; $6baf: $09
	ld   b, b                                        ; $6bb0: $40
	ld   [$0818], sp                                 ; $6bb1: $08 $18 $08
	jr   nc, @+$0a                                   ; $6bb4: $30 $08

jr_03f_6bb6:
	db   $10                                         ; $6bb6: $10
	add  hl, bc                                      ; $6bb7: $09
	jr   nz, jr_03f_6bc2                             ; $6bb8: $20 $08

jr_03f_6bba:
	ld   [$1009], sp                                 ; $6bba: $08 $09 $10
	ld   [$0900], sp                                 ; $6bbd: $08 $00 $09
	ld   b, b                                        ; $6bc0: $40
	db   $10                                         ; $6bc1: $10

jr_03f_6bc2:
	ld   a, [de]                                     ; $6bc2: $1a
	ld   [$1030], sp                                 ; $6bc3: $08 $30 $10
	ld   [de], a                                     ; $6bc6: $12
	add  hl, bc                                      ; $6bc7: $09
	jr   nz, jr_03f_6bda                             ; $6bc8: $20 $10

	ld   a, [bc]                                     ; $6bca: $0a
	add  hl, bc                                      ; $6bcb: $09
	db   $10                                         ; $6bcc: $10
	db   $10                                         ; $6bcd: $10
	ld   [bc], a                                     ; $6bce: $02
	add  hl, bc                                      ; $6bcf: $09
	ld   b, b                                        ; $6bd0: $40
	jr   nz, @+$20                                   ; $6bd1: $20 $1e

	ld   [$2030], sp                                 ; $6bd3: $08 $30 $20
	ld   d, $09                                      ; $6bd6: $16 $09
	jr   nz, jr_03f_6bfa                             ; $6bd8: $20 $20

jr_03f_6bda:
	ld   c, $09                                      ; $6bda: $0e $09
	db   $10                                         ; $6bdc: $10
	jr   nz, @+$08                                   ; $6bdd: $20 $06

	add  hl, bc                                      ; $6bdf: $09
	ld   b, b                                        ; $6be0: $40
	jr   @+$1e                                       ; $6be1: $18 $1c

	ld   [$1830], sp                                 ; $6be3: $08 $30 $18
	inc  d                                           ; $6be6: $14
	add  hl, bc                                      ; $6be7: $09
	jr   nz, jr_03f_6c02                             ; $6be8: $20 $18

	inc  c                                           ; $6bea: $0c
	add  hl, bc                                      ; $6beb: $09
	db   $10                                         ; $6bec: $10
	jr   jr_03f_6bf3                                 ; $6bed: $18 $04

	add  hl, de                                      ; $6bef: $19
	jr   z, jr_03f_6bf2                              ; $6bf0: $28 $00

jr_03f_6bf2:
	ld   c, h                                        ; $6bf2: $4c

jr_03f_6bf3:
	add  hl, bc                                      ; $6bf3: $09
	jr   jr_03f_6bf6                                 ; $6bf4: $18 $00

jr_03f_6bf6:
	ld   c, b                                        ; $6bf6: $48
	add  hl, bc                                      ; $6bf7: $09
	jr   z, jr_03f_6bf2                              ; $6bf8: $28 $f8

jr_03f_6bfa:
	ld   c, d                                        ; $6bfa: $4a
	ld   [$0840], sp                                 ; $6bfb: $08 $40 $08
	jr   @+$0a                                       ; $6bfe: $18 $08

	jr   nc, @+$0a                                   ; $6c00: $30 $08

jr_03f_6c02:
	db   $10                                         ; $6c02: $10
	add  hl, bc                                      ; $6c03: $09
	jr   nz, jr_03f_6c0e                             ; $6c04: $20 $08

	ld   [$1009], sp                                 ; $6c06: $08 $09 $10
	ld   [$0900], sp                                 ; $6c09: $08 $00 $09
	ld   b, b                                        ; $6c0c: $40
	db   $10                                         ; $6c0d: $10

jr_03f_6c0e:
	ld   a, [de]                                     ; $6c0e: $1a
	ld   [$1030], sp                                 ; $6c0f: $08 $30 $10
	ld   [de], a                                     ; $6c12: $12
	add  hl, bc                                      ; $6c13: $09
	jr   nz, @+$12                                   ; $6c14: $20 $10

	ld   a, [bc]                                     ; $6c16: $0a
	add  hl, bc                                      ; $6c17: $09
	db   $10                                         ; $6c18: $10
	db   $10                                         ; $6c19: $10
	ld   [bc], a                                     ; $6c1a: $02
	add  hl, bc                                      ; $6c1b: $09
	jr   nc, jr_03f_6c3e                             ; $6c1c: $30 $20

	ld   d, $09                                      ; $6c1e: $16 $09
	jr   nz, @+$22                                   ; $6c20: $20 $20

	ld   c, $09                                      ; $6c22: $0e $09
	db   $10                                         ; $6c24: $10
	jr   nz, @+$08                                   ; $6c25: $20 $06

	add  hl, bc                                      ; $6c27: $09
	jr   nc, @+$1a                                   ; $6c28: $30 $18

	inc  d                                           ; $6c2a: $14
	add  hl, bc                                      ; $6c2b: $09
	jr   nz, jr_03f_6c46                             ; $6c2c: $20 $18

	inc  c                                           ; $6c2e: $0c
	add  hl, bc                                      ; $6c2f: $09
	db   $10                                         ; $6c30: $10
	jr   jr_03f_6c37                                 ; $6c31: $18 $04

	add  hl, de                                      ; $6c33: $19
	jr   nc, jr_03f_6c36                             ; $6c34: $30 $00

jr_03f_6c36:
	ld   d, h                                        ; $6c36: $54

jr_03f_6c37:
	ld   [$f830], sp                                 ; $6c37: $08 $30 $f8
	ld   d, d                                        ; $6c3a: $52
	ld   [$0020], sp                                 ; $6c3b: $08 $20 $00

jr_03f_6c3e:
	ld   d, b                                        ; $6c3e: $50
	add  hl, bc                                      ; $6c3f: $09
	ld   b, b                                        ; $6c40: $40
	ld   [$0818], sp                                 ; $6c41: $08 $18 $08
	jr   nc, @+$0a                                   ; $6c44: $30 $08

jr_03f_6c46:
	db   $10                                         ; $6c46: $10
	add  hl, bc                                      ; $6c47: $09
	jr   nz, jr_03f_6c52                             ; $6c48: $20 $08

	ld   [$1009], sp                                 ; $6c4a: $08 $09 $10
	ld   [$0900], sp                                 ; $6c4d: $08 $00 $09
	ld   b, b                                        ; $6c50: $40
	db   $10                                         ; $6c51: $10

jr_03f_6c52:
	ld   a, [de]                                     ; $6c52: $1a
	ld   [$1030], sp                                 ; $6c53: $08 $30 $10
	ld   [de], a                                     ; $6c56: $12
	add  hl, bc                                      ; $6c57: $09
	jr   nz, @+$12                                   ; $6c58: $20 $10

	ld   a, [bc]                                     ; $6c5a: $0a
	add  hl, bc                                      ; $6c5b: $09
	db   $10                                         ; $6c5c: $10
	db   $10                                         ; $6c5d: $10
	ld   [bc], a                                     ; $6c5e: $02
	add  hl, bc                                      ; $6c5f: $09
	jr   nc, @+$22                                   ; $6c60: $30 $20

	ld   d, $09                                      ; $6c62: $16 $09
	jr   nz, @+$22                                   ; $6c64: $20 $20

	ld   c, $09                                      ; $6c66: $0e $09
	db   $10                                         ; $6c68: $10
	jr   nz, @+$08                                   ; $6c69: $20 $06

	add  hl, bc                                      ; $6c6b: $09
	jr   nc, @+$1a                                   ; $6c6c: $30 $18

	inc  d                                           ; $6c6e: $14
	add  hl, bc                                      ; $6c6f: $09
	jr   nz, jr_03f_6c8a                             ; $6c70: $20 $18

	inc  c                                           ; $6c72: $0c
	add  hl, bc                                      ; $6c73: $09
	db   $10                                         ; $6c74: $10
	jr   jr_03f_6c7b                                 ; $6c75: $18 $04

	add  hl, de                                      ; $6c77: $19
	jr   nc, @+$2a                                   ; $6c78: $30 $28

	ld   b, [hl]                                     ; $6c7a: $46

jr_03f_6c7b:
	add  hl, hl                                      ; $6c7b: $29
	jr   nz, jr_03f_6ca6                             ; $6c7c: $20 $28

	ld   b, h                                        ; $6c7e: $44
	add  hl, hl                                      ; $6c7f: $29
	ld   b, b                                        ; $6c80: $40
	jr   nz, jr_03f_6c9b                             ; $6c81: $20 $18

	jr   z, jr_03f_6cb5                              ; $6c83: $28 $30

	jr   nz, jr_03f_6c97                             ; $6c85: $20 $10

	add  hl, hl                                      ; $6c87: $29
	jr   nz, jr_03f_6caa                             ; $6c88: $20 $20

jr_03f_6c8a:
	ld   [$1029], sp                                 ; $6c8a: $08 $29 $10
	jr   nz, jr_03f_6c8f                             ; $6c8d: $20 $00

jr_03f_6c8f:
	add  hl, hl                                      ; $6c8f: $29
	ld   b, b                                        ; $6c90: $40
	jr   jr_03f_6cad                                 ; $6c91: $18 $1a

	jr   z, @+$32                                    ; $6c93: $28 $30

	jr   @+$14                                       ; $6c95: $18 $12

jr_03f_6c97:
	add  hl, hl                                      ; $6c97: $29
	jr   nz, jr_03f_6cb2                             ; $6c98: $20 $18

	ld   a, [bc]                                     ; $6c9a: $0a

jr_03f_6c9b:
	add  hl, hl                                      ; $6c9b: $29
	db   $10                                         ; $6c9c: $10
	jr   jr_03f_6ca1                                 ; $6c9d: $18 $02

	add  hl, hl                                      ; $6c9f: $29
	ld   b, b                                        ; $6ca0: $40

jr_03f_6ca1:
	ld   [$281e], sp                                 ; $6ca1: $08 $1e $28
	jr   nc, @+$0a                                   ; $6ca4: $30 $08

jr_03f_6ca6:
	ld   d, $29                                      ; $6ca6: $16 $29
	jr   nz, jr_03f_6cb2                             ; $6ca8: $20 $08

jr_03f_6caa:
	ld   c, $29                                      ; $6caa: $0e $29
	db   $10                                         ; $6cac: $10

jr_03f_6cad:
	ld   [$2906], sp                                 ; $6cad: $08 $06 $29
	ld   b, b                                        ; $6cb0: $40
	db   $10                                         ; $6cb1: $10

jr_03f_6cb2:
	inc  e                                           ; $6cb2: $1c
	jr   z, @+$32                                    ; $6cb3: $28 $30

jr_03f_6cb5:
	db   $10                                         ; $6cb5: $10
	inc  d                                           ; $6cb6: $14
	add  hl, hl                                      ; $6cb7: $29
	jr   nz, jr_03f_6cca                             ; $6cb8: $20 $10

	inc  c                                           ; $6cba: $0c
	add  hl, hl                                      ; $6cbb: $29
	db   $10                                         ; $6cbc: $10
	db   $10                                         ; $6cbd: $10
	inc  b                                           ; $6cbe: $04
	add  hl, sp                                      ; $6cbf: $39
	jr   z, @+$2a                                    ; $6cc0: $28 $28

	ld   c, h                                        ; $6cc2: $4c
	add  hl, hl                                      ; $6cc3: $29
	jr   jr_03f_6cee                                 ; $6cc4: $18 $28

	ld   c, b                                        ; $6cc6: $48
	add  hl, hl                                      ; $6cc7: $29
	jr   z, jr_03f_6cfa                              ; $6cc8: $28 $30

jr_03f_6cca:
	ld   c, d                                        ; $6cca: $4a
	jr   z, jr_03f_6d0d                              ; $6ccb: $28 $40

	jr   nz, jr_03f_6ce7                             ; $6ccd: $20 $18

	jr   z, jr_03f_6d01                              ; $6ccf: $28 $30

	jr   nz, jr_03f_6ce3                             ; $6cd1: $20 $10

	add  hl, hl                                      ; $6cd3: $29
	jr   nz, @+$22                                   ; $6cd4: $20 $20

	ld   [$1029], sp                                 ; $6cd6: $08 $29 $10
	jr   nz, jr_03f_6cdb                             ; $6cd9: $20 $00

jr_03f_6cdb:
	add  hl, hl                                      ; $6cdb: $29
	ld   b, b                                        ; $6cdc: $40
	jr   @+$1c                                       ; $6cdd: $18 $1a

	jr   z, jr_03f_6d11                              ; $6cdf: $28 $30

	jr   jr_03f_6cf5                                 ; $6ce1: $18 $12

jr_03f_6ce3:
	add  hl, hl                                      ; $6ce3: $29
	jr   nz, jr_03f_6cfe                             ; $6ce4: $20 $18

	ld   a, [bc]                                     ; $6ce6: $0a

jr_03f_6ce7:
	add  hl, hl                                      ; $6ce7: $29
	db   $10                                         ; $6ce8: $10
	jr   @+$04                                       ; $6ce9: $18 $02

	add  hl, hl                                      ; $6ceb: $29
	jr   nc, @+$0a                                   ; $6cec: $30 $08

jr_03f_6cee:
	ld   d, $29                                      ; $6cee: $16 $29
	jr   nz, jr_03f_6cfa                             ; $6cf0: $20 $08

	ld   c, $29                                      ; $6cf2: $0e $29
	db   $10                                         ; $6cf4: $10

jr_03f_6cf5:
	ld   [$2906], sp                                 ; $6cf5: $08 $06 $29
	jr   nc, @+$12                                   ; $6cf8: $30 $10

jr_03f_6cfa:
	inc  d                                           ; $6cfa: $14
	add  hl, hl                                      ; $6cfb: $29
	jr   nz, @+$12                                   ; $6cfc: $20 $10

jr_03f_6cfe:
	inc  c                                           ; $6cfe: $0c
	add  hl, hl                                      ; $6cff: $29
	db   $10                                         ; $6d00: $10

jr_03f_6d01:
	db   $10                                         ; $6d01: $10
	inc  b                                           ; $6d02: $04
	add  hl, sp                                      ; $6d03: $39
	jr   nc, @+$2a                                   ; $6d04: $30 $28

	ld   d, h                                        ; $6d06: $54
	jr   z, jr_03f_6d39                              ; $6d07: $28 $30

	jr   nc, jr_03f_6d5d                             ; $6d09: $30 $52

	jr   z, jr_03f_6d2d                              ; $6d0b: $28 $20

jr_03f_6d0d:
	jr   z, jr_03f_6d5f                              ; $6d0d: $28 $50

	add  hl, hl                                      ; $6d0f: $29
	ld   b, b                                        ; $6d10: $40

jr_03f_6d11:
	jr   nz, jr_03f_6d2b                             ; $6d11: $20 $18

	jr   z, jr_03f_6d45                              ; $6d13: $28 $30

	jr   nz, jr_03f_6d27                             ; $6d15: $20 $10

	add  hl, hl                                      ; $6d17: $29
	jr   nz, @+$22                                   ; $6d18: $20 $20

	ld   [$1029], sp                                 ; $6d1a: $08 $29 $10
	jr   nz, jr_03f_6d1f                             ; $6d1d: $20 $00

jr_03f_6d1f:
	add  hl, hl                                      ; $6d1f: $29
	ld   b, b                                        ; $6d20: $40
	jr   @+$1c                                       ; $6d21: $18 $1a

	jr   z, jr_03f_6d55                              ; $6d23: $28 $30

	jr   jr_03f_6d39                                 ; $6d25: $18 $12

jr_03f_6d27:
	add  hl, hl                                      ; $6d27: $29
	jr   nz, jr_03f_6d42                             ; $6d28: $20 $18

	ld   a, [bc]                                     ; $6d2a: $0a

jr_03f_6d2b:
	add  hl, hl                                      ; $6d2b: $29
	db   $10                                         ; $6d2c: $10

jr_03f_6d2d:
	jr   @+$04                                       ; $6d2d: $18 $02

	add  hl, hl                                      ; $6d2f: $29
	jr   nc, @+$0a                                   ; $6d30: $30 $08

	ld   d, $29                                      ; $6d32: $16 $29
	jr   nz, jr_03f_6d3e                             ; $6d34: $20 $08

	ld   c, $29                                      ; $6d36: $0e $29
	db   $10                                         ; $6d38: $10

jr_03f_6d39:
	ld   [$2906], sp                                 ; $6d39: $08 $06 $29
	jr   nc, @+$12                                   ; $6d3c: $30 $10

jr_03f_6d3e:
	inc  d                                           ; $6d3e: $14
	add  hl, hl                                      ; $6d3f: $29
	jr   nz, @+$12                                   ; $6d40: $20 $10

jr_03f_6d42:
	inc  c                                           ; $6d42: $0c
	add  hl, hl                                      ; $6d43: $29
	db   $10                                         ; $6d44: $10

jr_03f_6d45:
	db   $10                                         ; $6d45: $10
	inc  b                                           ; $6d46: $04
	add  hl, sp                                      ; $6d47: $39
	jr   nc, @+$2a                                   ; $6d48: $30 $28

	ld   d, [hl]                                     ; $6d4a: $56
	jr   z, @+$32                                    ; $6d4b: $28 $30

	jr   nz, jr_03f_6d5f                             ; $6d4d: $20 $10

	jr   z, jr_03f_6d71                              ; $6d4f: $28 $20

	jr   nz, jr_03f_6d5b                             ; $6d51: $20 $08

	add  hl, hl                                      ; $6d53: $29
	db   $10                                         ; $6d54: $10

jr_03f_6d55:
	jr   nz, jr_03f_6d57                             ; $6d55: $20 $00

jr_03f_6d57:
	add  hl, hl                                      ; $6d57: $29
	ld   b, b                                        ; $6d58: $40
	jr   jr_03f_6d75                                 ; $6d59: $18 $1a

jr_03f_6d5b:
	jr   z, jr_03f_6d8d                              ; $6d5b: $28 $30

jr_03f_6d5d:
	jr   jr_03f_6d71                                 ; $6d5d: $18 $12

jr_03f_6d5f:
	add  hl, hl                                      ; $6d5f: $29
	jr   nz, jr_03f_6d7a                             ; $6d60: $20 $18

	ld   a, [bc]                                     ; $6d62: $0a
	add  hl, hl                                      ; $6d63: $29
	db   $10                                         ; $6d64: $10
	jr   @+$04                                       ; $6d65: $18 $02

	add  hl, hl                                      ; $6d67: $29
	jr   nc, @+$0a                                   ; $6d68: $30 $08

	ld   d, $29                                      ; $6d6a: $16 $29
	jr   nz, jr_03f_6d76                             ; $6d6c: $20 $08

	ld   c, $29                                      ; $6d6e: $0e $29
	db   $10                                         ; $6d70: $10

jr_03f_6d71:
	ld   [$2806], sp                                 ; $6d71: $08 $06 $28
	ld   b, b                                        ; $6d74: $40

jr_03f_6d75:
	db   $10                                         ; $6d75: $10

jr_03f_6d76:
	inc  e                                           ; $6d76: $1c
	jr   z, jr_03f_6da9                              ; $6d77: $28 $30

	db   $10                                         ; $6d79: $10

jr_03f_6d7a:
	inc  d                                           ; $6d7a: $14
	add  hl, hl                                      ; $6d7b: $29
	jr   nz, @+$12                                   ; $6d7c: $20 $10

	inc  c                                           ; $6d7e: $0c
	add  hl, hl                                      ; $6d7f: $29
	db   $10                                         ; $6d80: $10
	db   $10                                         ; $6d81: $10
	inc  b                                           ; $6d82: $04
	add  hl, sp                                      ; $6d83: $39
	jr   z, jr_03f_6dae                              ; $6d84: $28 $28

	ld   e, d                                        ; $6d86: $5a
	jr   z, @+$2a                                    ; $6d87: $28 $28

	jr   nc, jr_03f_6de3                             ; $6d89: $30 $58

	jr   z, jr_03f_6dcd                              ; $6d8b: $28 $40

jr_03f_6d8d:
	jr   nz, jr_03f_6da7                             ; $6d8d: $20 $18

	jr   z, jr_03f_6dc1                              ; $6d8f: $28 $30

	jr   nz, jr_03f_6da3                             ; $6d91: $20 $10

	add  hl, hl                                      ; $6d93: $29
	jr   nz, @+$22                                   ; $6d94: $20 $20

	ld   [$1029], sp                                 ; $6d96: $08 $29 $10
	jr   nz, jr_03f_6d9b                             ; $6d99: $20 $00

jr_03f_6d9b:
	add  hl, hl                                      ; $6d9b: $29
	ld   b, b                                        ; $6d9c: $40
	jr   @+$1c                                       ; $6d9d: $18 $1a

	jr   z, @+$32                                    ; $6d9f: $28 $30

	jr   jr_03f_6db5                                 ; $6da1: $18 $12

jr_03f_6da3:
	add  hl, hl                                      ; $6da3: $29
	jr   nz, jr_03f_6dbe                             ; $6da4: $20 $18

	ld   a, [bc]                                     ; $6da6: $0a

jr_03f_6da7:
	add  hl, hl                                      ; $6da7: $29
	db   $10                                         ; $6da8: $10

jr_03f_6da9:
	jr   @+$04                                       ; $6da9: $18 $02

	add  hl, hl                                      ; $6dab: $29
	jr   nc, @+$0a                                   ; $6dac: $30 $08

jr_03f_6dae:
	ld   d, $29                                      ; $6dae: $16 $29
	jr   nz, jr_03f_6dba                             ; $6db0: $20 $08

	ld   c, $29                                      ; $6db2: $0e $29
	db   $10                                         ; $6db4: $10

jr_03f_6db5:
	ld   [$2806], sp                                 ; $6db5: $08 $06 $28
	jr   nc, @+$12                                   ; $6db8: $30 $10

jr_03f_6dba:
	inc  d                                           ; $6dba: $14
	add  hl, hl                                      ; $6dbb: $29
	jr   nz, @+$12                                   ; $6dbc: $20 $10

jr_03f_6dbe:
	inc  c                                           ; $6dbe: $0c
	add  hl, hl                                      ; $6dbf: $29
	db   $10                                         ; $6dc0: $10

jr_03f_6dc1:
	db   $10                                         ; $6dc1: $10
	inc  b                                           ; $6dc2: $04
	add  hl, sp                                      ; $6dc3: $39
	jr   z, jr_03f_6dc6                              ; $6dc4: $28 $00

jr_03f_6dc6:
	ld   b, b                                        ; $6dc6: $40
	add  hl, hl                                      ; $6dc7: $29
	ld   b, b                                        ; $6dc8: $40
	jr   nz, jr_03f_6de3                             ; $6dc9: $20 $18

	jr   z, jr_03f_6dfd                              ; $6dcb: $28 $30

jr_03f_6dcd:
	jr   nz, jr_03f_6ddf                             ; $6dcd: $20 $10

	add  hl, hl                                      ; $6dcf: $29
	jr   nz, jr_03f_6df2                             ; $6dd0: $20 $20

	ld   [$1029], sp                                 ; $6dd2: $08 $29 $10
	jr   nz, jr_03f_6dd7                             ; $6dd5: $20 $00

jr_03f_6dd7:
	add  hl, hl                                      ; $6dd7: $29
	ld   b, b                                        ; $6dd8: $40
	jr   jr_03f_6df5                                 ; $6dd9: $18 $1a

	jr   z, @+$32                                    ; $6ddb: $28 $30

	jr   @+$14                                       ; $6ddd: $18 $12

jr_03f_6ddf:
	add  hl, hl                                      ; $6ddf: $29
	jr   nz, jr_03f_6dfa                             ; $6de0: $20 $18

	ld   a, [bc]                                     ; $6de2: $0a

jr_03f_6de3:
	add  hl, hl                                      ; $6de3: $29
	db   $10                                         ; $6de4: $10
	jr   jr_03f_6de9                                 ; $6de5: $18 $02

	add  hl, hl                                      ; $6de7: $29
	ld   b, b                                        ; $6de8: $40

jr_03f_6de9:
	ld   [$281e], sp                                 ; $6de9: $08 $1e $28
	jr   nc, @+$0a                                   ; $6dec: $30 $08

	ld   d, $29                                      ; $6dee: $16 $29
	jr   nz, jr_03f_6dfa                             ; $6df0: $20 $08

jr_03f_6df2:
	ld   c, $29                                      ; $6df2: $0e $29
	db   $10                                         ; $6df4: $10

jr_03f_6df5:
	ld   [$2906], sp                                 ; $6df5: $08 $06 $29
	ld   b, b                                        ; $6df8: $40
	db   $10                                         ; $6df9: $10

jr_03f_6dfa:
	inc  e                                           ; $6dfa: $1c
	jr   z, @+$32                                    ; $6dfb: $28 $30

jr_03f_6dfd:
	db   $10                                         ; $6dfd: $10
	inc  d                                           ; $6dfe: $14
	add  hl, hl                                      ; $6dff: $29
	jr   nz, @+$12                                   ; $6e00: $20 $10

	inc  c                                           ; $6e02: $0c
	add  hl, hl                                      ; $6e03: $29
	db   $10                                         ; $6e04: $10
	db   $10                                         ; $6e05: $10
	inc  b                                           ; $6e06: $04
	add  hl, sp                                      ; $6e07: $39
	jr   z, jr_03f_6e0a                              ; $6e08: $28 $00

jr_03f_6e0a:
	ld   b, d                                        ; $6e0a: $42
	add  hl, hl                                      ; $6e0b: $29
	jr   nz, jr_03f_6e2e                             ; $6e0c: $20 $20

	ld   [$1029], sp                                 ; $6e0e: $08 $29 $10
	jr   nz, jr_03f_6e13                             ; $6e11: $20 $00

jr_03f_6e13:
	add  hl, hl                                      ; $6e13: $29
	ld   b, b                                        ; $6e14: $40
	jr   nz, @+$1a                                   ; $6e15: $20 $18

	jr   z, jr_03f_6e49                              ; $6e17: $28 $30

	jr   nz, jr_03f_6e2b                             ; $6e19: $20 $10

	add  hl, hl                                      ; $6e1b: $29
	jr   nz, @+$1a                                   ; $6e1c: $20 $18

	ld   a, [bc]                                     ; $6e1e: $0a
	add  hl, hl                                      ; $6e1f: $29
	db   $10                                         ; $6e20: $10
	jr   jr_03f_6e25                                 ; $6e21: $18 $02

	add  hl, hl                                      ; $6e23: $29
	ld   b, b                                        ; $6e24: $40

jr_03f_6e25:
	jr   jr_03f_6e41                                 ; $6e25: $18 $1a

	jr   z, jr_03f_6e59                              ; $6e27: $28 $30

	jr   @+$14                                       ; $6e29: $18 $12

jr_03f_6e2b:
	add  hl, hl                                      ; $6e2b: $29
	jr   nz, @+$0a                                   ; $6e2c: $20 $08

jr_03f_6e2e:
	ld   c, $29                                      ; $6e2e: $0e $29
	db   $10                                         ; $6e30: $10
	ld   [$2906], sp                                 ; $6e31: $08 $06 $29
	ld   b, b                                        ; $6e34: $40
	ld   [$281e], sp                                 ; $6e35: $08 $1e $28
	jr   nc, jr_03f_6e42                             ; $6e38: $30 $08

	ld   d, $29                                      ; $6e3a: $16 $29
	jr   nz, jr_03f_6e4e                             ; $6e3c: $20 $10

	inc  c                                           ; $6e3e: $0c
	add  hl, hl                                      ; $6e3f: $29
	db   $10                                         ; $6e40: $10

jr_03f_6e41:
	db   $10                                         ; $6e41: $10

jr_03f_6e42:
	inc  b                                           ; $6e42: $04
	add  hl, hl                                      ; $6e43: $29
	ld   b, b                                        ; $6e44: $40

jr_03f_6e45:
	db   $10                                         ; $6e45: $10
	inc  e                                           ; $6e46: $1c
	jr   z, jr_03f_6e79                              ; $6e47: $28 $30

jr_03f_6e49:
	db   $10                                         ; $6e49: $10
	inc  d                                           ; $6e4a: $14

jr_03f_6e4b:
	add  hl, sp                                      ; $6e4b: $39
	jr   jr_03f_6e56                                 ; $6e4c: $18 $08

jr_03f_6e4e:
	add  e                                           ; $6e4e: $83
	inc  b                                           ; $6e4f: $04
	db   $10                                         ; $6e50: $10
	ld   [$1482], sp                                 ; $6e51: $08 $82 $14
	jr   jr_03f_6e5e                                 ; $6e54: $18 $08

jr_03f_6e56:
	add  l                                           ; $6e56: $85
	inc  b                                           ; $6e57: $04
	db   $10                                         ; $6e58: $10

jr_03f_6e59:
	ld   [$1484], sp                                 ; $6e59: $08 $84 $14

jr_03f_6e5c:
	jr   jr_03f_6e66                                 ; $6e5c: $18 $08

jr_03f_6e5e:
	add  a                                           ; $6e5e: $87

jr_03f_6e5f:
	nop                                              ; $6e5f: $00
	db   $10                                         ; $6e60: $10
	ld   [$1486], sp                                 ; $6e61: $08 $86 $14
	jr   jr_03f_6e6e                                 ; $6e64: $18 $08

jr_03f_6e66:
	sub  a                                           ; $6e66: $97
	nop                                              ; $6e67: $00
	db   $10                                         ; $6e68: $10
	ld   [$1096], sp                                 ; $6e69: $08 $96 $10
	jr   jr_03f_6e76                                 ; $6e6c: $18 $08

jr_03f_6e6e:
	sbc  c                                           ; $6e6e: $99
	nop                                              ; $6e6f: $00

jr_03f_6e70:
	db   $10                                         ; $6e70: $10
	ld   [$1098], sp                                 ; $6e71: $08 $98 $10
	jr   @+$0a                                       ; $6e74: $18 $08

jr_03f_6e76:
	sbc  e                                           ; $6e76: $9b
	nop                                              ; $6e77: $00
	db   $10                                         ; $6e78: $10

jr_03f_6e79:
	ld   [$109a], sp                                 ; $6e79: $08 $9a $10
	db   $10                                         ; $6e7c: $10
	jr   z, jr_03f_6e45                              ; $6e7d: $28 $c6

	inc  b                                           ; $6e7f: $04
	db   $10                                         ; $6e80: $10
	jr   nz, @-$39                                   ; $6e81: $20 $c5

	inc  b                                           ; $6e83: $04
	db   $10                                         ; $6e84: $10
	jr   jr_03f_6e4b                                 ; $6e85: $18 $c4

	inc  b                                           ; $6e87: $04
	db   $10                                         ; $6e88: $10
	db   $10                                         ; $6e89: $10

jr_03f_6e8a:
	jp   $1004                                       ; $6e8a: $c3 $04 $10


jr_03f_6e8d:
	ld   [$14c2], sp                                 ; $6e8d: $08 $c2 $14

jr_03f_6e90:
	db   $10                                         ; $6e90: $10
	jr   z, jr_03f_6e59                              ; $6e91: $28 $c6

	inc  b                                           ; $6e93: $04
	db   $10                                         ; $6e94: $10
	jr   nz, jr_03f_6e5c                             ; $6e95: $20 $c5

	inc  b                                           ; $6e97: $04
	db   $10                                         ; $6e98: $10
	jr   jr_03f_6e5f                                 ; $6e99: $18 $c4

	inc  b                                           ; $6e9b: $04
	db   $10                                         ; $6e9c: $10
	db   $10                                         ; $6e9d: $10
	ret  z                                           ; $6e9e: $c8

	inc  b                                           ; $6e9f: $04
	db   $10                                         ; $6ea0: $10
	ld   [$14c7], sp                                 ; $6ea1: $08 $c7 $14
	db   $10                                         ; $6ea4: $10
	jr   z, @-$38                                    ; $6ea5: $28 $c6

	inc  b                                           ; $6ea7: $04
	db   $10                                         ; $6ea8: $10

jr_03f_6ea9:
	jr   nz, jr_03f_6e70                             ; $6ea9: $20 $c5

	inc  b                                           ; $6eab: $04
	db   $10                                         ; $6eac: $10
	jr   @-$3a                                       ; $6ead: $18 $c4

	inc  b                                           ; $6eaf: $04
	db   $10                                         ; $6eb0: $10
	db   $10                                         ; $6eb1: $10
	jp   z, $1004                                    ; $6eb2: $ca $04 $10

	ld   [$14c9], sp                                 ; $6eb5: $08 $c9 $14
	db   $10                                         ; $6eb8: $10
	jr   z, jr_03f_6e8a                              ; $6eb9: $28 $cf

	inc  b                                           ; $6ebb: $04

jr_03f_6ebc:
	db   $10                                         ; $6ebc: $10
	jr   nz, jr_03f_6e8d                             ; $6ebd: $20 $ce

jr_03f_6ebf:
	inc  b                                           ; $6ebf: $04
	db   $10                                         ; $6ec0: $10
	jr   jr_03f_6e90                                 ; $6ec1: $18 $cd

	inc  b                                           ; $6ec3: $04
	db   $10                                         ; $6ec4: $10
	db   $10                                         ; $6ec5: $10
	call z, $1004                                    ; $6ec6: $cc $04 $10
	ld   [$14cb], sp                                 ; $6ec9: $08 $cb $14
	db   $10                                         ; $6ecc: $10
	jr   z, @-$2a                                    ; $6ecd: $28 $d4

	inc  b                                           ; $6ecf: $04
	db   $10                                         ; $6ed0: $10
	jr   nz, @-$2b                                   ; $6ed1: $20 $d3

	inc  b                                           ; $6ed3: $04
	db   $10                                         ; $6ed4: $10
	jr   jr_03f_6ea9                                 ; $6ed5: $18 $d2

	inc  b                                           ; $6ed7: $04
	db   $10                                         ; $6ed8: $10
	db   $10                                         ; $6ed9: $10
	pop  de                                          ; $6eda: $d1
	inc  b                                           ; $6edb: $04
	db   $10                                         ; $6edc: $10
	ld   [$14d0], sp                                 ; $6edd: $08 $d0 $14
	db   $10                                         ; $6ee0: $10
	jr   z, jr_03f_6ebc                              ; $6ee1: $28 $d9

	inc  b                                           ; $6ee3: $04
	db   $10                                         ; $6ee4: $10
	jr   nz, jr_03f_6ebf                             ; $6ee5: $20 $d8

	inc  b                                           ; $6ee7: $04
	db   $10                                         ; $6ee8: $10
	jr   @-$27                                       ; $6ee9: $18 $d7

	inc  b                                           ; $6eeb: $04
	db   $10                                         ; $6eec: $10
	db   $10                                         ; $6eed: $10
	sub  $04                                         ; $6eee: $d6 $04
	db   $10                                         ; $6ef0: $10
	ld   [$14d5], sp                                 ; $6ef1: $08 $d5 $14
	jr   z, jr_03f_6f06                              ; $6ef4: $28 $10

	ld   d, a                                        ; $6ef6: $57
	ld   [bc], a                                     ; $6ef7: $02
	jr   nz, jr_03f_6f0a                             ; $6ef8: $20 $10

	ld   d, [hl]                                     ; $6efa: $56
	ld   [bc], a                                     ; $6efb: $02
	jr   z, jr_03f_6f06                              ; $6efc: $28 $08

	ld   d, l                                        ; $6efe: $55
	ld   [bc], a                                     ; $6eff: $02
	jr   nz, jr_03f_6f0a                             ; $6f00: $20 $08

	ld   d, h                                        ; $6f02: $54
	ld   [bc], a                                     ; $6f03: $02
	jr   jr_03f_6f16                                 ; $6f04: $18 $10

jr_03f_6f06:
	dec  de                                          ; $6f06: $1b
	ld   [bc], a                                     ; $6f07: $02
	db   $10                                         ; $6f08: $10
	db   $10                                         ; $6f09: $10

jr_03f_6f0a:
	ld   a, [de]                                     ; $6f0a: $1a
	ld   [bc], a                                     ; $6f0b: $02
	jr   jr_03f_6f16                                 ; $6f0c: $18 $08

	add  hl, de                                      ; $6f0e: $19
	ld   [bc], a                                     ; $6f0f: $02
	db   $10                                         ; $6f10: $10
	ld   [$0218], sp                                 ; $6f11: $08 $18 $02
	jr   c, jr_03f_6f26                              ; $6f14: $38 $10

jr_03f_6f16:
	ld   a, c                                        ; $6f16: $79
	jr   nz, @+$32                                   ; $6f17: $20 $30

	db   $10                                         ; $6f19: $10
	ld   a, b                                        ; $6f1a: $78
	jr   nz, @+$3a                                   ; $6f1b: $20 $38

	ld   [$0079], sp                                 ; $6f1d: $08 $79 $00
	jr   nc, jr_03f_6f2a                             ; $6f20: $30 $08

	ld   a, b                                        ; $6f22: $78
	nop                                              ; $6f23: $00
	jr   z, jr_03f_6f36                              ; $6f24: $28 $10

jr_03f_6f26:
	inc  sp                                          ; $6f26: $33
	ld   bc, $1020                                   ; $6f27: $01 $20 $10

jr_03f_6f2a:
	ld   [hl-], a                                    ; $6f2a: $32
	ld   bc, $0828                                   ; $6f2b: $01 $28 $08
	ld   sp, $2001                                   ; $6f2e: $31 $01 $20
	ld   [$0130], sp                                 ; $6f31: $08 $30 $01
	jr   jr_03f_6f46                                 ; $6f34: $18 $10

jr_03f_6f36:
	inc  bc                                          ; $6f36: $03
	nop                                              ; $6f37: $00
	db   $10                                         ; $6f38: $10
	db   $10                                         ; $6f39: $10
	ld   [bc], a                                     ; $6f3a: $02
	nop                                              ; $6f3b: $00
	jr   jr_03f_6f46                                 ; $6f3c: $18 $08

	ld   bc, $1000                                   ; $6f3e: $01 $00 $10
	ld   [$1000], sp                                 ; $6f41: $08 $00 $10
	jr   z, jr_03f_6f56                              ; $6f44: $28 $10

jr_03f_6f46:
	ld   e, e                                        ; $6f46: $5b
	ld   [bc], a                                     ; $6f47: $02
	jr   nz, jr_03f_6f5a                             ; $6f48: $20 $10

	ld   e, d                                        ; $6f4a: $5a
	ld   [bc], a                                     ; $6f4b: $02
	jr   z, jr_03f_6f56                              ; $6f4c: $28 $08

	ld   e, c                                        ; $6f4e: $59
	ld   [bc], a                                     ; $6f4f: $02
	jr   nz, jr_03f_6f5a                             ; $6f50: $20 $08

	ld   e, b                                        ; $6f52: $58
	ld   [bc], a                                     ; $6f53: $02
	jr   jr_03f_6f66                                 ; $6f54: $18 $10

jr_03f_6f56:
	dec  de                                          ; $6f56: $1b
	ld   [bc], a                                     ; $6f57: $02
	db   $10                                         ; $6f58: $10
	db   $10                                         ; $6f59: $10

jr_03f_6f5a:
	ld   a, [de]                                     ; $6f5a: $1a
	ld   [bc], a                                     ; $6f5b: $02
	jr   jr_03f_6f66                                 ; $6f5c: $18 $08

	add  hl, de                                      ; $6f5e: $19
	ld   [bc], a                                     ; $6f5f: $02
	db   $10                                         ; $6f60: $10
	ld   [$0218], sp                                 ; $6f61: $08 $18 $02
	jr   c, jr_03f_6f76                              ; $6f64: $38 $10

jr_03f_6f66:
	ld   a, c                                        ; $6f66: $79
	jr   nz, @+$32                                   ; $6f67: $20 $30

	db   $10                                         ; $6f69: $10
	ld   a, b                                        ; $6f6a: $78
	jr   nz, @+$3a                                   ; $6f6b: $20 $38

	ld   [$0079], sp                                 ; $6f6d: $08 $79 $00
	jr   nc, jr_03f_6f7a                             ; $6f70: $30 $08

	ld   a, b                                        ; $6f72: $78
	nop                                              ; $6f73: $00
	jr   z, jr_03f_6f86                              ; $6f74: $28 $10

jr_03f_6f76:
	scf                                              ; $6f76: $37
	ld   bc, $1020                                   ; $6f77: $01 $20 $10

jr_03f_6f7a:
	ld   [hl], $01                                   ; $6f7a: $36 $01
	jr   z, jr_03f_6f86                              ; $6f7c: $28 $08

	dec  [hl]                                        ; $6f7e: $35
	ld   bc, $0820                                   ; $6f7f: $01 $20 $08
	inc  [hl]                                        ; $6f82: $34
	ld   bc, $1018                                   ; $6f83: $01 $18 $10

jr_03f_6f86:
	inc  bc                                          ; $6f86: $03
	nop                                              ; $6f87: $00
	db   $10                                         ; $6f88: $10
	db   $10                                         ; $6f89: $10
	ld   [bc], a                                     ; $6f8a: $02
	nop                                              ; $6f8b: $00
	jr   jr_03f_6f96                                 ; $6f8c: $18 $08

	ld   bc, $1000                                   ; $6f8e: $01 $00 $10
	ld   [$1000], sp                                 ; $6f91: $08 $00 $10
	jr   z, jr_03f_6fa6                              ; $6f94: $28 $10

jr_03f_6f96:
	ld   e, a                                        ; $6f96: $5f
	ld   [bc], a                                     ; $6f97: $02
	jr   nz, jr_03f_6faa                             ; $6f98: $20 $10

	ld   e, [hl]                                     ; $6f9a: $5e
	ld   [bc], a                                     ; $6f9b: $02
	jr   z, jr_03f_6fa6                              ; $6f9c: $28 $08

	ld   e, l                                        ; $6f9e: $5d
	ld   [bc], a                                     ; $6f9f: $02
	jr   nz, jr_03f_6faa                             ; $6fa0: $20 $08

	ld   e, h                                        ; $6fa2: $5c
	ld   [bc], a                                     ; $6fa3: $02
	jr   jr_03f_6fb6                                 ; $6fa4: $18 $10

jr_03f_6fa6:
	dec  de                                          ; $6fa6: $1b
	ld   [bc], a                                     ; $6fa7: $02
	db   $10                                         ; $6fa8: $10
	db   $10                                         ; $6fa9: $10

jr_03f_6faa:
	ld   a, [de]                                     ; $6faa: $1a
	ld   [bc], a                                     ; $6fab: $02
	jr   jr_03f_6fb6                                 ; $6fac: $18 $08

	add  hl, de                                      ; $6fae: $19
	ld   [bc], a                                     ; $6faf: $02
	db   $10                                         ; $6fb0: $10
	ld   [$0218], sp                                 ; $6fb1: $08 $18 $02
	jr   c, jr_03f_6fc6                              ; $6fb4: $38 $10

jr_03f_6fb6:
	ld   a, c                                        ; $6fb6: $79
	jr   nz, @+$32                                   ; $6fb7: $20 $30

	db   $10                                         ; $6fb9: $10
	ld   a, b                                        ; $6fba: $78
	jr   nz, @+$3a                                   ; $6fbb: $20 $38

	ld   [$0079], sp                                 ; $6fbd: $08 $79 $00
	jr   nc, jr_03f_6fca                             ; $6fc0: $30 $08

	ld   a, b                                        ; $6fc2: $78
	nop                                              ; $6fc3: $00
	jr   z, jr_03f_6fd6                              ; $6fc4: $28 $10

jr_03f_6fc6:
	dec  sp                                          ; $6fc6: $3b
	ld   bc, $1020                                   ; $6fc7: $01 $20 $10

jr_03f_6fca:
	ld   a, [hl-]                                    ; $6fca: $3a
	ld   bc, $0828                                   ; $6fcb: $01 $28 $08
	add  hl, sp                                      ; $6fce: $39
	ld   bc, $0820                                   ; $6fcf: $01 $20 $08
	jr   c, @+$03                                    ; $6fd2: $38 $01

	jr   jr_03f_6fe6                                 ; $6fd4: $18 $10

jr_03f_6fd6:
	inc  bc                                          ; $6fd6: $03
	nop                                              ; $6fd7: $00
	db   $10                                         ; $6fd8: $10
	db   $10                                         ; $6fd9: $10
	ld   [bc], a                                     ; $6fda: $02
	nop                                              ; $6fdb: $00
	jr   jr_03f_6fe6                                 ; $6fdc: $18 $08

	ld   bc, $1000                                   ; $6fde: $01 $00 $10
	ld   [$1000], sp                                 ; $6fe1: $08 $00 $10
	jr   z, jr_03f_6ff6                              ; $6fe4: $28 $10

jr_03f_6fe6:
	ld   h, e                                        ; $6fe6: $63
	ld   [bc], a                                     ; $6fe7: $02
	jr   nz, jr_03f_6ffa                             ; $6fe8: $20 $10

	ld   h, d                                        ; $6fea: $62
	ld   [bc], a                                     ; $6feb: $02
	jr   z, jr_03f_6ff6                              ; $6fec: $28 $08

	ld   h, c                                        ; $6fee: $61
	ld   [bc], a                                     ; $6fef: $02
	jr   nz, jr_03f_6ffa                             ; $6ff0: $20 $08

	ld   h, b                                        ; $6ff2: $60
	ld   [bc], a                                     ; $6ff3: $02
	jr   jr_03f_7006                                 ; $6ff4: $18 $10

jr_03f_6ff6:
	rra                                              ; $6ff6: $1f
	ld   [bc], a                                     ; $6ff7: $02
	db   $10                                         ; $6ff8: $10
	db   $10                                         ; $6ff9: $10

jr_03f_6ffa:
	ld   e, $02                                      ; $6ffa: $1e $02
	jr   jr_03f_7006                                 ; $6ffc: $18 $08

	dec  e                                           ; $6ffe: $1d
	ld   [bc], a                                     ; $6fff: $02
	db   $10                                         ; $7000: $10
	ld   [$021c], sp                                 ; $7001: $08 $1c $02
	jr   c, jr_03f_7016                              ; $7004: $38 $10

jr_03f_7006:
	ld   a, e                                        ; $7006: $7b
	ld   [bc], a                                     ; $7007: $02
	jr   nc, jr_03f_701a                             ; $7008: $30 $10

	ld   a, d                                        ; $700a: $7a
	nop                                              ; $700b: $00
	jr   c, jr_03f_7016                              ; $700c: $38 $08

	ld   a, c                                        ; $700e: $79
	nop                                              ; $700f: $00
	jr   nc, jr_03f_701a                             ; $7010: $30 $08

	ld   a, b                                        ; $7012: $78
	nop                                              ; $7013: $00
	jr   z, jr_03f_7026                              ; $7014: $28 $10

jr_03f_7016:
	ccf                                              ; $7016: $3f
	ld   bc, $1020                                   ; $7017: $01 $20 $10

jr_03f_701a:
	ld   a, $01                                      ; $701a: $3e $01
	jr   z, jr_03f_7026                              ; $701c: $28 $08

	dec  a                                           ; $701e: $3d
	ld   bc, $0820                                   ; $701f: $01 $20 $08
	inc  a                                           ; $7022: $3c
	ld   bc, $1018                                   ; $7023: $01 $18 $10

jr_03f_7026:
	rlca                                             ; $7026: $07
	nop                                              ; $7027: $00
	db   $10                                         ; $7028: $10
	db   $10                                         ; $7029: $10
	ld   b, $00                                      ; $702a: $06 $00
	jr   @+$0a                                       ; $702c: $18 $08

	dec  b                                           ; $702e: $05
	nop                                              ; $702f: $00
	db   $10                                         ; $7030: $10
	ld   [$1004], sp                                 ; $7031: $08 $04 $10
	dec  de                                          ; $7034: $1b
	ld   d, $7f                                      ; $7035: $16 $7f
	ld   [bc], a                                     ; $7037: $02
	inc  de                                          ; $7038: $13
	ld   d, $7e                                      ; $7039: $16 $7e
	ld   [bc], a                                     ; $703b: $02
	jr   c, jr_03f_704e                              ; $703c: $38 $10

	ld   a, e                                        ; $703e: $7b
	ld   [bc], a                                     ; $703f: $02
	jr   nc, jr_03f_7052                             ; $7040: $30 $10

	ld   a, d                                        ; $7042: $7a
	nop                                              ; $7043: $00
	jr   c, jr_03f_704e                              ; $7044: $38 $08

	ld   a, c                                        ; $7046: $79
	nop                                              ; $7047: $00
	jr   nc, jr_03f_7052                             ; $7048: $30 $08

	ld   a, b                                        ; $704a: $78
	nop                                              ; $704b: $00
	jr   z, jr_03f_705e                              ; $704c: $28 $10

jr_03f_704e:
	ld   h, a                                        ; $704e: $67
	ld   [bc], a                                     ; $704f: $02
	jr   nz, jr_03f_7062                             ; $7050: $20 $10

jr_03f_7052:
	ld   h, [hl]                                     ; $7052: $66
	ld   [bc], a                                     ; $7053: $02
	jr   z, jr_03f_705e                              ; $7054: $28 $08

	ld   h, l                                        ; $7056: $65
	ld   [bc], a                                     ; $7057: $02
	jr   nz, jr_03f_7062                             ; $7058: $20 $08

	ld   h, h                                        ; $705a: $64
	ld   [bc], a                                     ; $705b: $02
	jr   jr_03f_706e                                 ; $705c: $18 $10

jr_03f_705e:
	inc  hl                                          ; $705e: $23
	ld   [bc], a                                     ; $705f: $02
	db   $10                                         ; $7060: $10
	db   $10                                         ; $7061: $10

jr_03f_7062:
	ld   [hl+], a                                    ; $7062: $22
	ld   [bc], a                                     ; $7063: $02
	jr   jr_03f_706e                                 ; $7064: $18 $08

	ld   hl, $1002                                   ; $7066: $21 $02 $10
	ld   [$0220], sp                                 ; $7069: $08 $20 $02
	jr   z, jr_03f_707e                              ; $706c: $28 $10

jr_03f_706e:
	ld   b, e                                        ; $706e: $43
	ld   bc, $1020                                   ; $706f: $01 $20 $10
	ld   b, d                                        ; $7072: $42
	ld   bc, $0828                                   ; $7073: $01 $28 $08
	ld   b, c                                        ; $7076: $41
	ld   bc, $0820                                   ; $7077: $01 $20 $08
	ld   b, b                                        ; $707a: $40
	ld   bc, $1018                                   ; $707b: $01 $18 $10

jr_03f_707e:
	dec  bc                                          ; $707e: $0b
	nop                                              ; $707f: $00
	db   $10                                         ; $7080: $10
	db   $10                                         ; $7081: $10
	ld   a, [bc]                                     ; $7082: $0a
	nop                                              ; $7083: $00
	jr   jr_03f_708e                                 ; $7084: $18 $08

	add  hl, bc                                      ; $7086: $09
	nop                                              ; $7087: $00
	db   $10                                         ; $7088: $10
	ld   [$1008], sp                                 ; $7089: $08 $08 $10
	jr   c, jr_03f_709e                              ; $708c: $38 $10

jr_03f_708e:
	ld   a, e                                        ; $708e: $7b
	ld   [bc], a                                     ; $708f: $02
	jr   nc, jr_03f_70a2                             ; $7090: $30 $10

	ld   a, d                                        ; $7092: $7a
	nop                                              ; $7093: $00
	jr   c, jr_03f_709e                              ; $7094: $38 $08

	ld   a, c                                        ; $7096: $79
	nop                                              ; $7097: $00
	jr   nc, jr_03f_70a2                             ; $7098: $30 $08

	ld   a, b                                        ; $709a: $78
	nop                                              ; $709b: $00
	jr   z, jr_03f_70a6                              ; $709c: $28 $08

jr_03f_709e:
	ld   [hl], e                                     ; $709e: $73
	ld   [bc], a                                     ; $709f: $02
	jr   nz, jr_03f_70aa                             ; $70a0: $20 $08

jr_03f_70a2:
	ld   [hl], d                                     ; $70a2: $72
	ld   [bc], a                                     ; $70a3: $02
	jr   z, jr_03f_70b6                              ; $70a4: $28 $10

jr_03f_70a6:
	ld   [hl], l                                     ; $70a6: $75
	ld   [bc], a                                     ; $70a7: $02
	jr   nz, @+$12                                   ; $70a8: $20 $10

jr_03f_70aa:
	ld   [hl], h                                     ; $70aa: $74
	ld   [bc], a                                     ; $70ab: $02
	jr   jr_03f_70be                                 ; $70ac: $18 $10

jr_03f_70ae:
	dec  l                                           ; $70ae: $2d
	ld   [bc], a                                     ; $70af: $02
	db   $10                                         ; $70b0: $10
	db   $10                                         ; $70b1: $10
	inc  l                                           ; $70b2: $2c
	ld   [bc], a                                     ; $70b3: $02
	jr   jr_03f_70be                                 ; $70b4: $18 $08

jr_03f_70b6:
	dec  hl                                          ; $70b6: $2b
	ld   [bc], a                                     ; $70b7: $02
	db   $10                                         ; $70b8: $10
	ld   [$022a], sp                                 ; $70b9: $08 $2a $02
	jr   z, jr_03f_70ce                              ; $70bc: $28 $10

jr_03f_70be:
	ld   d, c                                        ; $70be: $51
	ld   bc, $1020                                   ; $70bf: $01 $20 $10
	ld   d, b                                        ; $70c2: $50
	ld   bc, $0828                                   ; $70c3: $01 $28 $08
	ld   c, a                                        ; $70c6: $4f
	ld   bc, $0820                                   ; $70c7: $01 $20 $08
	ld   c, [hl]                                     ; $70ca: $4e
	ld   bc, $1018                                   ; $70cb: $01 $18 $10

jr_03f_70ce:
	dec  d                                           ; $70ce: $15
	nop                                              ; $70cf: $00
	db   $10                                         ; $70d0: $10
	db   $10                                         ; $70d1: $10
	inc  d                                           ; $70d2: $14
	nop                                              ; $70d3: $00
	db   $10                                         ; $70d4: $10
	ld   [$0012], sp                                 ; $70d5: $08 $12 $00
	db $18, $08

	inc  de                                          ; $70da: $13
	db   $10                                         ; $70db: $10


if def(VWF)
else
SpriteGroupA_Idx3fh:
endc
	db $28, $d0, $3c, $00
	db $28, $1d, $3a, $05
	db $52, $00, $30, $00
	db $42, $00, $2c, $00
	db $58, $08, $32, $05
	db $46, $f8, $22, $02
	db $4e, $fe, $24, $02
	db $5e, $fe, $28, $02
	db $56, $f6, $26, $02
	db $36, $00, $1c, $02
	db $40, $08, $2e, $00
	db $48, $f0, $20, $02
	db $36, $08, $1e, $02
	db $36, $f8, $1a, $02
	db $21, $e8, $0a, $01
	db $20, $05, $0e, $04
	db $30, $c8, $0c, $04
	db $11, $f0, $04, $00
	db $08, $df, $00, $00
	db $08, $e8, $02, $00
	db $18, $e0, $08, $00
	db $18, $d8, $06, $00
	db $40, $f8, $2a, $00
	db $38, $d0, $10, $00
	db $50, $e0, $18, $03
	db $50, $d8, $16, $03
	db $40, $e0, $14, $03
	db $40, $d8, $12, $13


SpriteGroupA_Idx40h:
	db   $10                                         ; $714c: $10
	ld   [$1134], sp                                 ; $714d: $08 $34 $11
	db   $10                                         ; $7150: $10
	ld   [$1136], sp                                 ; $7151: $08 $36 $11
	db   $10                                         ; $7154: $10
	ld   [$1138], sp                                 ; $7155: $08 $38 $11


if def(VWF)
else
SpriteGroupA_Idx43h:
endc
	db $08, $1e, $16, $02
	db $18, $18, $12, $00
	db $f0, $00, $00, $00
	db $1a, $43, $14, $02
	db $08, $18, $10, $01
	db $08, $10, $0e, $01
	db $08, $08, $0c, $01
	db $f1, $20, $0a, $00
	db $f1, $18, $08, $00
	db $f0, $10, $06, $00
	db $f0, $08, $04, $00
	db $00, $00, $02, $00
	db $38, $45, $60, $03
	db $28, $45, $4e, $03
	db $28, $3d, $4c, $03
	db $28, $35, $4a, $03
	db $28, $2d, $48, $03
	db $28, $25, $46, $03
	db $28, $1d, $44, $03
	db $38, $3d, $5e, $03
	db $38, $35, $5c, $03
	db $38, $2d, $5a, $03
	db $38, $25, $58, $03
	db $38, $1d, $56, $03
	db $38, $16, $54, $03
	db $38, $0e, $52, $03
	db $30, $03, $50, $03
	db $28, $0e, $40, $03
	db $08, $18, $1c, $02
	db $08, $10, $1a, $02
	db $08, $08, $18, $12


SpriteGroupA_Idx44h:
	db   $10                                         ; $71d4: $10
	ld   [$1330], sp                                 ; $71d5: $08 $30 $13
	db   $10                                         ; $71d8: $10
	ld   [$1332], sp                                 ; $71d9: $08 $32 $13
	db   $10                                         ; $71dc: $10
	ld   [$1334], sp                                 ; $71dd: $08 $34 $13


if def(VWF)
else
SpriteGroupA_Idx47h:
endc
	db $48, $28, $42, $02
	db $48, $20, $3a, $02
	db $00, $28, $3c, $00
	db $30, $20, $38, $03
	db $20, $20, $36, $03
	db $08, $20, $34, $00
	db $18, $18, $32, $05
	db $f0, $18, $30, $01
	db $10, $10, $2e, $02
	db $10, $08, $2c, $03
	db $00, $08, $2a, $01
	db $38, $00, $28, $01
	db $08, $00, $26, $02
	db $f8, $00, $24, $01
	db $38, $f8, $22, $02
	db $10, $f8, $20, $05
	db $20, $f0, $1e, $01
	db $20, $f0, $1c, $03
	db $10, $f0, $1a, $05
	db $48, $e8, $18, $03
	db $38, $e8, $16, $03
	db $20, $e8, $14, $04
	db $08, $e8, $12, $00
	db $50, $e0, $10, $03
	db $40, $e0, $0e, $03
	db $30, $e0, $0c, $03
	db $20, $e0, $0a, $04
	db $48, $d8, $08, $03
	db $38, $d8, $06, $03
	db $20, $d8, $04, $02
	db $18, $d0, $02, $02
	db $18, $c8, $00, $12


SpriteGroupA_Idx48h:
	db $30, $3e, $4a, $06
	db $30, $36, $48, $06
	db $30, $2e, $46, $06
	db $28, $30, $44, $03
	db $28, $28, $40, $03
	db $10, $28, $3e, $10


SpriteGroupA_Idx49h:
	db   $10                                         ; $7278: $10
	ld   [$164c], sp                                 ; $7279: $08 $4c $16
	db   $10                                         ; $727c: $10
	ld   [$164e], sp                                 ; $727d: $08 $4e $16
	db   $10                                         ; $7280: $10
	ld   [$1650], sp                                 ; $7281: $08 $50 $16


; Kanna - always appears
if def(VWF)
else
SpriteGroupA_Idx4ch:
endc
	db $08, $08, $44, $04
	db $fd, $10, $40, $04
	db $26, $60, $20, $01
	db $18, $3e, $1e, $02
	db $18, $36, $1c, $02
	db $20, $11, $1a, $02
	db $18, $0b, $18, $03
	db $1e, $03, $16, $03
	db $20, $fb, $14, $01
	db $20, $f3, $12, $01
	db $08, $46, $10, $01
	db $08, $3e, $0e, $01
	db $08, $36, $0c, $01
	db $01, $23, $0a, $00
	db $04, $0c, $08, $00
	db $ea, $20, $06, $01
	db $ea, $18, $04, $01
	db $ed, $10, $02, $01
	db $f0, $08, $00, $11
	
	
	db $10, $08 ; $72d0
	ld   b, [hl]                                     ; $72d2: $46
	ld   d, $10                                      ; $72d3: $16 $10
	ld   [$1648], sp                                 ; $72d5: $08 $48 $16
	db   $10                                         ; $72d8: $10
	ld   [$164a], sp                                 ; $72d9: $08 $4a $16


; Kanna MG - when press A disappears
SpriteGroupA_Idx50h:
	db $44, $d0, $22, $01
	db $40, $d8, $26, $01
	db $30, $d8, $24, $11
	
	
; Kanna MG - always appears
if def(VWF)
else
SpriteGroupA_Idx51h:
endc
	db $08, $08, $44, $04
	db $fd, $10, $40, $04
	db $26, $60, $20, $01
	db $18, $3e, $1e, $02
	db $18, $36, $1c, $02
	db $20, $11, $1a, $02
	db $18, $0b, $18, $03
	db $1e, $03, $16, $03
	db $20, $fb, $14, $01
	db $20, $f3, $12, $01
	db $08, $46, $10, $01
	db $08, $3e, $0e, $01
	db $08, $36, $0c, $01
	db $01, $23, $0a, $00
	db $04, $0c, $08, $00
	db $ea, $20, $06, $01
	db $ea, $18, $04, $01
	db $ed, $10, $02, $01
	db $f0, $08, $00, $11
	
	
; Kanna MG - when popup box appears
; Kanna MG - when press A disappears
SpriteGroupA_Idx52h:
	db $48, $00, $42, $04
	db $48, $60, $3e, $02
	db $38, $60, $3c, $02
	db $48, $58, $3a, $02
	db $38, $58, $38, $02
	db $48, $50, $36, $02
	db $38, $50, $34, $02
	db $40, $48, $32, $02
	db $50, $37, $30, $05
	db $48, $2d, $2e, $02
	db $50, $e0, $2c, $02
	db $40, $e8, $2a, $02
	db $40, $e0, $28, $12


; Kanna - when press A appears
SpriteGroupA_Idx53h:
	db $40, $e0, $52, $02
	db $40, $e8, $4c, $02
	db $30, $d8, $50, $01
	db $48, $00, $4e, $04
	db $40, $d8, $26, $01
	db $48, $60, $3e, $02
	db $38, $60, $3c, $02
	db $48, $58, $3a, $02
	db $38, $58, $38, $02
	db $48, $50, $36, $02
	db $38, $50, $34, $02
	db $40, $48, $32, $02
	db $50, $37, $30, $05
	db $48, $2d, $2e, $02
	db $50, $e0, $2c, $02
	db $44, $d0, $22, $11
	
	
if def(VWF)
else
SpriteGroupA_Idx54h:
endc
	db $f0, $18, $0e, $01
	db $68, $10, $3c, $06
	db $58, $18, $3a, $06
	db $58, $10, $2a, $06
	db $58, $08, $28, $06
	db $58, $00, $26, $06
	db $58, $f8, $24, $06
	db $58, $f0, $22, $06
	db $58, $e8, $20, $06
	db $58, $d8, $1e, $06
	db $68, $08, $38, $06
	db $68, $00, $36, $06
	db $68, $f8, $34, $06
	db $68, $f0, $32, $06
	db $68, $e8, $30, $06
	db $68, $e0, $2e, $06
	db $68, $d8, $2c, $06
	db $f8, $d5, $0a, $01
	db $f8, $cd, $08, $01
	db $f0, $10, $0c, $01
	db $40, $d8, $14, $01
	db $40, $d0, $12, $01
	db $40, $c8, $10, $01
	db $18, $24, $06, $00
	db $0f, $2f, $00, $12


SpriteGroupA_Idx55h:
	db $34, $20, $04, $00
	db $34, $18, $02, $10


SpriteGroupA_Idx56h:
	ld   [$4000], sp                                 ; $7414: $08 $00 $40
	ld   [de], a                                     ; $7417: $12
	ld   [$4200], sp                                 ; $7418: $08 $00 $42
	ld   [de], a                                     ; $741b: $12
	ld   [$4400], sp                                 ; $741c: $08 $00 $44
	ld   [de], a                                     ; $741f: $12
	add  b                                           ; $7420: $80
	dec  a                                           ; $7421: $3d
	jr   jr_03f_7424                                 ; $7422: $18 $00

jr_03f_7424:
	add  b                                           ; $7424: $80
	dec  [hl]                                        ; $7425: $35
	ld   d, $00                                      ; $7426: $16 $00
	add  b                                           ; $7428: $80
	ld   hl, $0014                                   ; $7429: $21 $14 $00
	add  b                                           ; $742c: $80
	add  hl, de                                      ; $742d: $19
	ld   [de], a                                     ; $742e: $12
	nop                                              ; $742f: $00
	jr   z, jr_03f_7452                              ; $7430: $28 $20

	jr   nz, @+$05                                   ; $7432: $20 $03

	jr   z, @+$3a                                    ; $7434: $28 $38

	ld   e, $03                                      ; $7436: $1e $03
	ld   e, b                                        ; $7438: $58
	ld   b, b                                        ; $7439: $40
	inc  e                                           ; $743a: $1c
	inc  bc                                          ; $743b: $03
	ld   e, b                                        ; $743c: $58
	db   $10                                         ; $743d: $10
	ld   a, [de]                                     ; $743e: $1a
	inc  bc                                          ; $743f: $03
	db   $10                                         ; $7440: $10
	ld   l, b                                        ; $7441: $68
	db   $10                                         ; $7442: $10
	ld   [bc], a                                     ; $7443: $02
	db   $10                                         ; $7444: $10
	ld   h, b                                        ; $7445: $60
	ld   c, $02                                      ; $7446: $0e $02
	db   $10                                         ; $7448: $10
	ld   e, b                                        ; $7449: $58
	inc  c                                           ; $744a: $0c
	ld   [bc], a                                     ; $744b: $02
	jr   @+$5a                                       ; $744c: $18 $58

	ld   a, [bc]                                     ; $744e: $0a
	nop                                              ; $744f: $00
	jr   jr_03f_7484                                 ; $7450: $18 $32

jr_03f_7452:
	ld   [$1801], sp                                 ; $7452: $08 $01 $18
	ld   a, [hl+]                                    ; $7455: $2a
	ld   b, $01                                      ; $7456: $06 $01
	ld   [$0432], sp                                 ; $7458: $08 $32 $04
	ld   bc, $2a08                                   ; $745b: $01 $08 $2a
	ld   [bc], a                                     ; $745e: $02
	ld   bc, $2208                                   ; $745f: $01 $08 $22
	nop                                              ; $7462: $00
	ld   de, $0810                                   ; $7463: $11 $10 $08
	jr   nc, jr_03f_7478                             ; $7466: $30 $10

	db   $10                                         ; $7468: $10
	ld   [$1032], sp                                 ; $7469: $08 $32 $10
	db   $10                                         ; $746c: $10
	ld   [$1034], sp                                 ; $746d: $08 $34 $10
	jr   jr_03f_747a                                 ; $7470: $18 $08

	ld   bc, $1007                                   ; $7472: $01 $07 $10
	ld   [$1700], sp                                 ; $7475: $08 $00 $17

jr_03f_7478:
	jr   jr_03f_7482                                 ; $7478: $18 $08

jr_03f_747a:
	inc  bc                                          ; $747a: $03
	rlca                                             ; $747b: $07
	db   $10                                         ; $747c: $10
	ld   [$1702], sp                                 ; $747d: $08 $02 $17
	jr   jr_03f_748a                                 ; $7480: $18 $08

jr_03f_7482:
	dec  b                                           ; $7482: $05
	rlca                                             ; $7483: $07

jr_03f_7484:
	db   $10                                         ; $7484: $10
	ld   [$1704], sp                                 ; $7485: $08 $04 $17
	jr   z, jr_03f_749a                              ; $7488: $28 $10

jr_03f_748a:
	dec  c                                           ; $748a: $0d
	inc  bc                                          ; $748b: $03
	jr   nz, jr_03f_749e                             ; $748c: $20 $10

	inc  c                                           ; $748e: $0c
	inc  bc                                          ; $748f: $03
	jr   @+$12                                       ; $7490: $18 $10

	dec  bc                                          ; $7492: $0b
	inc  bc                                          ; $7493: $03
	db   $10                                         ; $7494: $10
	db   $10                                         ; $7495: $10
	ld   a, [bc]                                     ; $7496: $0a
	inc  bc                                          ; $7497: $03
	jr   z, @+$0a                                    ; $7498: $28 $08

jr_03f_749a:
	add  hl, bc                                      ; $749a: $09
	inc  bc                                          ; $749b: $03
	jr   nz, @+$0a                                   ; $749c: $20 $08

jr_03f_749e:
	ld   [$1803], sp                                 ; $749e: $08 $03 $18
	ld   [$0307], sp                                 ; $74a1: $08 $07 $03
	db   $10                                         ; $74a4: $10
	ld   [$1306], sp                                 ; $74a5: $08 $06 $13
	jr   z, jr_03f_74ba                              ; $74a8: $28 $10

	dec  d                                           ; $74aa: $15
	inc  bc                                          ; $74ab: $03
	jr   nz, @+$12                                   ; $74ac: $20 $10

	inc  d                                           ; $74ae: $14
	inc  bc                                          ; $74af: $03
	jr   jr_03f_74c2                                 ; $74b0: $18 $10

	inc  de                                          ; $74b2: $13
	inc  bc                                          ; $74b3: $03
	db   $10                                         ; $74b4: $10
	db   $10                                         ; $74b5: $10
	ld   [de], a                                     ; $74b6: $12
	inc  bc                                          ; $74b7: $03
	jr   z, jr_03f_74c2                              ; $74b8: $28 $08

jr_03f_74ba:
	ld   de, $2003                                   ; $74ba: $11 $03 $20
	ld   [$0310], sp                                 ; $74bd: $08 $10 $03
	jr   jr_03f_74ca                                 ; $74c0: $18 $08

jr_03f_74c2:
	rrca                                             ; $74c2: $0f
	inc  bc                                          ; $74c3: $03
	db   $10                                         ; $74c4: $10
	ld   [$130e], sp                                 ; $74c5: $08 $0e $13
	jr   jr_03f_74d2                                 ; $74c8: $18 $08

jr_03f_74ca:
	rla                                              ; $74ca: $17
	ld   bc, $0810                                   ; $74cb: $01 $10 $08
	ld   d, $11                                      ; $74ce: $16 $11
	jr   jr_03f_74e2                                 ; $74d0: $18 $10

jr_03f_74d2:
	dec  de                                          ; $74d2: $1b
	ld   [bc], a                                     ; $74d3: $02
	db   $10                                         ; $74d4: $10
	db   $10                                         ; $74d5: $10
	ld   a, [de]                                     ; $74d6: $1a
	ld   [bc], a                                     ; $74d7: $02
	jr   jr_03f_74e2                                 ; $74d8: $18 $08

	add  hl, de                                      ; $74da: $19
	ld   [bc], a                                     ; $74db: $02
	db   $10                                         ; $74dc: $10
	ld   [$1218], sp                                 ; $74dd: $08 $18 $12
	jr   jr_03f_74f2                                 ; $74e0: $18 $10

jr_03f_74e2:
	rra                                              ; $74e2: $1f
	ld   [bc], a                                     ; $74e3: $02
	db   $10                                         ; $74e4: $10
	db   $10                                         ; $74e5: $10
	ld   e, $02                                      ; $74e6: $1e $02
	jr   jr_03f_74f2                                 ; $74e8: $18 $08

	dec  e                                           ; $74ea: $1d
	ld   [bc], a                                     ; $74eb: $02
	db   $10                                         ; $74ec: $10
	ld   [$121c], sp                                 ; $74ed: $08 $1c $12
	jr   z, jr_03f_7512                              ; $74f0: $28 $20

jr_03f_74f2:
	inc  sp                                          ; $74f2: $33
	nop                                              ; $74f3: $00
	jr   nz, @+$22                                   ; $74f4: $20 $20

	ld   [hl-], a                                    ; $74f6: $32
	nop                                              ; $74f7: $00
	jr   z, jr_03f_7512                              ; $74f8: $28 $18

	ld   sp, $2000                                   ; $74fa: $31 $00 $20
	jr   @+$32                                       ; $74fd: $18 $30

	nop                                              ; $74ff: $00
	jr   z, jr_03f_7512                              ; $7500: $28 $10

	cpl                                              ; $7502: $2f
	nop                                              ; $7503: $00
	jr   nz, @+$12                                   ; $7504: $20 $10

	ld   l, $00                                      ; $7506: $2e $00
	jr   z, jr_03f_7512                              ; $7508: $28 $08

	dec  l                                           ; $750a: $2d
	nop                                              ; $750b: $00
	jr   nz, @+$0a                                   ; $750c: $20 $08

	inc  l                                           ; $750e: $2c
	nop                                              ; $750f: $00
	jr   jr_03f_7532                                 ; $7510: $18 $20

jr_03f_7512:
	dec  hl                                          ; $7512: $2b
	nop                                              ; $7513: $00
	db   $10                                         ; $7514: $10
	jr   nz, @+$2c                                   ; $7515: $20 $2a

	nop                                              ; $7517: $00
	jr   jr_03f_7532                                 ; $7518: $18 $18

	add  hl, hl                                      ; $751a: $29
	nop                                              ; $751b: $00
	db   $10                                         ; $751c: $10
	jr   @+$2a                                       ; $751d: $18 $28

	nop                                              ; $751f: $00
	jr   jr_03f_7532                                 ; $7520: $18 $10

	daa                                              ; $7522: $27
	nop                                              ; $7523: $00
	db   $10                                         ; $7524: $10
	db   $10                                         ; $7525: $10
	ld   h, $00                                      ; $7526: $26 $00
	jr   jr_03f_7532                                 ; $7528: $18 $08

	dec  h                                           ; $752a: $25
	nop                                              ; $752b: $00
	db   $10                                         ; $752c: $10
	ld   [$1024], sp                                 ; $752d: $08 $24 $10
	jr   z, jr_03f_7552                              ; $7530: $28 $20

jr_03f_7532:
	ld   b, e                                        ; $7532: $43
	nop                                              ; $7533: $00
	jr   nz, @+$22                                   ; $7534: $20 $20

	ld   b, d                                        ; $7536: $42
	nop                                              ; $7537: $00
	jr   z, jr_03f_7552                              ; $7538: $28 $18

	ld   b, c                                        ; $753a: $41
	nop                                              ; $753b: $00
	jr   nz, @+$1a                                   ; $753c: $20 $18

	ld   b, b                                        ; $753e: $40
	nop                                              ; $753f: $00
	jr   z, jr_03f_7552                              ; $7540: $28 $10

	ccf                                              ; $7542: $3f
	nop                                              ; $7543: $00
	jr   nz, @+$12                                   ; $7544: $20 $10

	ld   a, $00                                      ; $7546: $3e $00
	jr   z, jr_03f_7552                              ; $7548: $28 $08

	dec  a                                           ; $754a: $3d
	nop                                              ; $754b: $00
	jr   nz, @+$0a                                   ; $754c: $20 $08

	inc  a                                           ; $754e: $3c
	nop                                              ; $754f: $00
	jr   jr_03f_7572                                 ; $7550: $18 $20

jr_03f_7552:
	dec  sp                                          ; $7552: $3b
	nop                                              ; $7553: $00
	db   $10                                         ; $7554: $10
	jr   nz, @+$3c                                   ; $7555: $20 $3a

	nop                                              ; $7557: $00
	jr   jr_03f_7572                                 ; $7558: $18 $18

	add  hl, sp                                      ; $755a: $39
	nop                                              ; $755b: $00
	db   $10                                         ; $755c: $10
	jr   @+$3a                                       ; $755d: $18 $38

	nop                                              ; $755f: $00
	jr   jr_03f_7572                                 ; $7560: $18 $10

	scf                                              ; $7562: $37
	nop                                              ; $7563: $00
	db   $10                                         ; $7564: $10
	db   $10                                         ; $7565: $10
	ld   [hl], $00                                   ; $7566: $36 $00
	jr   jr_03f_7572                                 ; $7568: $18 $08

	dec  [hl]                                        ; $756a: $35
	nop                                              ; $756b: $00
	db   $10                                         ; $756c: $10
	ld   [$1034], sp                                 ; $756d: $08 $34 $10
	jr   z, jr_03f_757a                              ; $7570: $28 $08

jr_03f_7572:
	jr   nz, jr_03f_7574                             ; $7572: $20 $00

jr_03f_7574:
	jr   z, jr_03f_7586                              ; $7574: $28 $10

	jr   nz, jr_03f_7578                             ; $7576: $20 $00

jr_03f_7578:
	jr   z, jr_03f_7592                              ; $7578: $28 $18

jr_03f_757a:
	jr   nz, jr_03f_757c                             ; $757a: $20 $00

jr_03f_757c:
	jr   z, jr_03f_759e                              ; $757c: $28 $20

	jr   nz, jr_03f_7580                             ; $757e: $20 $00

jr_03f_7580:
	jr   nz, @+$22                                   ; $7580: $20 $20

	jr   nz, jr_03f_7584                             ; $7582: $20 $00

jr_03f_7584:
	jr   nz, jr_03f_759e                             ; $7584: $20 $18

jr_03f_7586:
	jr   nz, jr_03f_7588                             ; $7586: $20 $00

jr_03f_7588:
	jr   nz, jr_03f_759a                             ; $7588: $20 $10

	jr   nz, jr_03f_758c                             ; $758a: $20 $00

jr_03f_758c:
	jr   nz, jr_03f_7596                             ; $758c: $20 $08

	jr   nz, jr_03f_7590                             ; $758e: $20 $00

jr_03f_7590:
	jr   jr_03f_759a                                 ; $7590: $18 $08

jr_03f_7592:
	jr   nz, jr_03f_7594                             ; $7592: $20 $00

jr_03f_7594:
	jr   @+$12                                       ; $7594: $18 $10

jr_03f_7596:
	jr   nz, jr_03f_7598                             ; $7596: $20 $00

jr_03f_7598:
	jr   jr_03f_75b2                                 ; $7598: $18 $18

jr_03f_759a:
	jr   nz, jr_03f_759c                             ; $759a: $20 $00

jr_03f_759c:
	jr   @+$22                                       ; $759c: $18 $20

jr_03f_759e:
	jr   nz, jr_03f_75a0                             ; $759e: $20 $00

jr_03f_75a0:
	db   $10                                         ; $75a0: $10
	jr   nz, @+$22                                   ; $75a1: $20 $20

	nop                                              ; $75a3: $00
	db   $10                                         ; $75a4: $10
	jr   @+$22                                       ; $75a5: $18 $20

	nop                                              ; $75a7: $00
	db   $10                                         ; $75a8: $10
	db   $10                                         ; $75a9: $10
	jr   nz, jr_03f_75ac                             ; $75aa: $20 $00

jr_03f_75ac:
	db   $10                                         ; $75ac: $10
	ld   [$1020], sp                                 ; $75ad: $08 $20 $10
	jr   nz, jr_03f_75d2                             ; $75b0: $20 $20

jr_03f_75b2:
	ld   hl, $2840                                   ; $75b2: $21 $40 $28
	jr   nz, jr_03f_75d7                             ; $75b5: $20 $20

	ld   b, b                                        ; $75b7: $40
	jr   nz, jr_03f_75d2                             ; $75b8: $20 $18

	ld   hl, $2840                                   ; $75ba: $21 $40 $28
	jr   jr_03f_75df                                 ; $75bd: $18 $20

	ld   b, b                                        ; $75bf: $40
	jr   nz, jr_03f_75d2                             ; $75c0: $20 $10

	ld   hl, $2840                                   ; $75c2: $21 $40 $28
	db   $10                                         ; $75c5: $10
	jr   nz, jr_03f_7608                             ; $75c6: $20 $40

	jr   nz, jr_03f_75d2                             ; $75c8: $20 $08

	ld   hl, $2840                                   ; $75ca: $21 $40 $28
	ld   [$4020], sp                                 ; $75cd: $08 $20 $40
	jr   jr_03f_75f2                                 ; $75d0: $18 $20

jr_03f_75d2:
	ld   hl, $1000                                   ; $75d2: $21 $00 $10
	jr   nz, jr_03f_75f7                             ; $75d5: $20 $20

jr_03f_75d7:
	nop                                              ; $75d7: $00
	jr   jr_03f_75f2                                 ; $75d8: $18 $18

	ld   hl, $1000                                   ; $75da: $21 $00 $10
	jr   jr_03f_75ff                                 ; $75dd: $18 $20

jr_03f_75df:
	nop                                              ; $75df: $00
	jr   jr_03f_75f2                                 ; $75e0: $18 $10

	ld   hl, $1000                                   ; $75e2: $21 $00 $10
	db   $10                                         ; $75e5: $10
	jr   nz, jr_03f_75e8                             ; $75e6: $20 $00

jr_03f_75e8:
	jr   jr_03f_75f2                                 ; $75e8: $18 $08

	ld   hl, $1000                                   ; $75ea: $21 $00 $10
	ld   [$1020], sp                                 ; $75ed: $08 $20 $10
	jr   nz, jr_03f_7612                             ; $75f0: $20 $20

jr_03f_75f2:
	inc  hl                                          ; $75f2: $23
	ld   b, b                                        ; $75f3: $40
	jr   z, @+$22                                    ; $75f4: $28 $20

	ld   [hl+], a                                    ; $75f6: $22

jr_03f_75f7:
	ld   b, b                                        ; $75f7: $40
	jr   nz, jr_03f_760a                             ; $75f8: $20 $10

	inc  hl                                          ; $75fa: $23
	ld   b, b                                        ; $75fb: $40
	jr   z, jr_03f_760e                              ; $75fc: $28 $10

	ld   [hl+], a                                    ; $75fe: $22

jr_03f_75ff:
	ld   b, b                                        ; $75ff: $40
	jr   nz, jr_03f_761a                             ; $7600: $20 $18

	inc  hl                                          ; $7602: $23
	ld   b, b                                        ; $7603: $40
	jr   z, jr_03f_761e                              ; $7604: $28 $18

	ld   [hl+], a                                    ; $7606: $22
	ld   b, b                                        ; $7607: $40

jr_03f_7608:
	jr   nz, jr_03f_7612                             ; $7608: $20 $08

jr_03f_760a:
	inc  hl                                          ; $760a: $23
	ld   b, b                                        ; $760b: $40
	jr   z, @+$0a                                    ; $760c: $28 $08

jr_03f_760e:
	ld   [hl+], a                                    ; $760e: $22
	ld   b, b                                        ; $760f: $40
	jr   jr_03f_7632                                 ; $7610: $18 $20

jr_03f_7612:
	inc  hl                                          ; $7612: $23
	nop                                              ; $7613: $00
	db   $10                                         ; $7614: $10
	jr   nz, @+$24                                   ; $7615: $20 $22

	nop                                              ; $7617: $00
	jr   jr_03f_762a                                 ; $7618: $18 $10

jr_03f_761a:
	inc  hl                                          ; $761a: $23
	nop                                              ; $761b: $00
	db   $10                                         ; $761c: $10
	db   $10                                         ; $761d: $10

jr_03f_761e:
	ld   [hl+], a                                    ; $761e: $22
	nop                                              ; $761f: $00
	jr   jr_03f_763a                                 ; $7620: $18 $18

	inc  hl                                          ; $7622: $23
	nop                                              ; $7623: $00
	db   $10                                         ; $7624: $10
	jr   @+$24                                       ; $7625: $18 $22

	nop                                              ; $7627: $00
	jr   jr_03f_7632                                 ; $7628: $18 $08

jr_03f_762a:
	inc  hl                                          ; $762a: $23
	nop                                              ; $762b: $00
	db   $10                                         ; $762c: $10
	ld   [$1022], sp                                 ; $762d: $08 $22 $10
	jr   z, jr_03f_7652                              ; $7630: $28 $20

jr_03f_7632:
	ld   d, e                                        ; $7632: $53
	inc  b                                           ; $7633: $04
	jr   nz, @+$22                                   ; $7634: $20 $20

	ld   d, d                                        ; $7636: $52
	inc  b                                           ; $7637: $04
	jr   z, jr_03f_7652                              ; $7638: $28 $18

jr_03f_763a:
	ld   d, c                                        ; $763a: $51
	inc  b                                           ; $763b: $04
	jr   nz, @+$1a                                   ; $763c: $20 $18

	ld   d, b                                        ; $763e: $50
	inc  b                                           ; $763f: $04
	jr   z, jr_03f_7652                              ; $7640: $28 $10

	ld   c, a                                        ; $7642: $4f
	inc  b                                           ; $7643: $04
	jr   nz, @+$12                                   ; $7644: $20 $10

	ld   c, [hl]                                     ; $7646: $4e
	inc  b                                           ; $7647: $04
	jr   z, jr_03f_7652                              ; $7648: $28 $08

	ld   c, l                                        ; $764a: $4d
	inc  b                                           ; $764b: $04
	jr   nz, @+$0a                                   ; $764c: $20 $08

	ld   c, h                                        ; $764e: $4c
	inc  b                                           ; $764f: $04
	jr   jr_03f_7672                                 ; $7650: $18 $20

jr_03f_7652:
	ld   c, e                                        ; $7652: $4b
	inc  b                                           ; $7653: $04
	db   $10                                         ; $7654: $10
	jr   nz, @+$4c                                   ; $7655: $20 $4a

	inc  b                                           ; $7657: $04
	jr   jr_03f_7672                                 ; $7658: $18 $18

	ld   c, c                                        ; $765a: $49
	inc  b                                           ; $765b: $04
	db   $10                                         ; $765c: $10
	jr   jr_03f_76a7                                 ; $765d: $18 $48

	inc  b                                           ; $765f: $04
	jr   jr_03f_7672                                 ; $7660: $18 $10

	ld   b, a                                        ; $7662: $47
	inc  b                                           ; $7663: $04
	db   $10                                         ; $7664: $10
	db   $10                                         ; $7665: $10
	ld   b, [hl]                                     ; $7666: $46
	inc  b                                           ; $7667: $04
	jr   jr_03f_7672                                 ; $7668: $18 $08

	ld   b, l                                        ; $766a: $45
	inc  b                                           ; $766b: $04
	db   $10                                         ; $766c: $10
	ld   [$1444], sp                                 ; $766d: $08 $44 $14
	jr   z, jr_03f_7692                              ; $7670: $28 $20

jr_03f_7672:
	ld   h, e                                        ; $7672: $63
	inc  b                                           ; $7673: $04
	jr   nz, @+$22                                   ; $7674: $20 $20

	ld   h, d                                        ; $7676: $62
	inc  b                                           ; $7677: $04
	jr   z, jr_03f_7692                              ; $7678: $28 $18

	ld   h, c                                        ; $767a: $61
	inc  b                                           ; $767b: $04
	jr   nz, @+$1a                                   ; $767c: $20 $18

	ld   h, b                                        ; $767e: $60
	inc  b                                           ; $767f: $04
	jr   z, jr_03f_7692                              ; $7680: $28 $10

	ld   e, a                                        ; $7682: $5f
	inc  b                                           ; $7683: $04
	jr   nz, @+$12                                   ; $7684: $20 $10

	ld   e, [hl]                                     ; $7686: $5e
	inc  b                                           ; $7687: $04
	jr   z, jr_03f_7692                              ; $7688: $28 $08

	ld   e, l                                        ; $768a: $5d
	inc  b                                           ; $768b: $04
	jr   nz, @+$0a                                   ; $768c: $20 $08

	ld   e, h                                        ; $768e: $5c
	inc  b                                           ; $768f: $04
	jr   jr_03f_76b2                                 ; $7690: $18 $20

jr_03f_7692:
	ld   e, e                                        ; $7692: $5b
	inc  b                                           ; $7693: $04
	db   $10                                         ; $7694: $10
	jr   nz, @+$5c                                   ; $7695: $20 $5a

	inc  b                                           ; $7697: $04
	jr   jr_03f_76b2                                 ; $7698: $18 $18

	ld   e, c                                        ; $769a: $59
	inc  b                                           ; $769b: $04
	db   $10                                         ; $769c: $10
	jr   jr_03f_76f7                                 ; $769d: $18 $58

	inc  b                                           ; $769f: $04
	jr   jr_03f_76b2                                 ; $76a0: $18 $10

	ld   d, a                                        ; $76a2: $57
	inc  b                                           ; $76a3: $04
	db   $10                                         ; $76a4: $10
	db   $10                                         ; $76a5: $10
	ld   d, [hl]                                     ; $76a6: $56

jr_03f_76a7:
	inc  b                                           ; $76a7: $04
	jr   jr_03f_76b2                                 ; $76a8: $18 $08

	ld   d, l                                        ; $76aa: $55
	inc  b                                           ; $76ab: $04
	db   $10                                         ; $76ac: $10
	ld   [$1454], sp                                 ; $76ad: $08 $54 $14
	jr   z, jr_03f_76d2                              ; $76b0: $28 $20

jr_03f_76b2:
	ld   [hl], e                                     ; $76b2: $73
	inc  b                                           ; $76b3: $04
	jr   nz, @+$22                                   ; $76b4: $20 $20

	ld   [hl], d                                     ; $76b6: $72
	inc  b                                           ; $76b7: $04
	jr   z, jr_03f_76d2                              ; $76b8: $28 $18

	ld   [hl], c                                     ; $76ba: $71
	inc  b                                           ; $76bb: $04
	jr   nz, @+$1a                                   ; $76bc: $20 $18

	ld   [hl], b                                     ; $76be: $70
	inc  b                                           ; $76bf: $04
	jr   z, jr_03f_76d2                              ; $76c0: $28 $10

	ld   l, a                                        ; $76c2: $6f
	inc  b                                           ; $76c3: $04
	jr   nz, @+$12                                   ; $76c4: $20 $10

	ld   l, [hl]                                     ; $76c6: $6e
	inc  b                                           ; $76c7: $04
	jr   z, jr_03f_76d2                              ; $76c8: $28 $08

	ld   l, l                                        ; $76ca: $6d
	inc  b                                           ; $76cb: $04
	jr   nz, @+$0a                                   ; $76cc: $20 $08

	ld   l, h                                        ; $76ce: $6c
	inc  b                                           ; $76cf: $04
	jr   jr_03f_76f2                                 ; $76d0: $18 $20

jr_03f_76d2:
	ld   l, e                                        ; $76d2: $6b
	inc  b                                           ; $76d3: $04
	db   $10                                         ; $76d4: $10
	jr   nz, @+$6c                                   ; $76d5: $20 $6a

	inc  b                                           ; $76d7: $04
	jr   jr_03f_76f2                                 ; $76d8: $18 $18

	ld   l, c                                        ; $76da: $69
	inc  b                                           ; $76db: $04
	db   $10                                         ; $76dc: $10
	jr   jr_03f_7747                                 ; $76dd: $18 $68

	inc  b                                           ; $76df: $04
	jr   jr_03f_76f2                                 ; $76e0: $18 $10

	ld   h, a                                        ; $76e2: $67
	inc  b                                           ; $76e3: $04
	db   $10                                         ; $76e4: $10
	db   $10                                         ; $76e5: $10
	ld   h, [hl]                                     ; $76e6: $66
	inc  b                                           ; $76e7: $04
	jr   jr_03f_76f2                                 ; $76e8: $18 $08

	ld   h, l                                        ; $76ea: $65
	inc  b                                           ; $76eb: $04
	db   $10                                         ; $76ec: $10
	ld   [$1464], sp                                 ; $76ed: $08 $64 $14
	jr   z, jr_03f_7712                              ; $76f0: $28 $20

jr_03f_76f2:
	ld   a, e                                        ; $76f2: $7b
	inc  h                                           ; $76f3: $24
	jr   nz, jr_03f_7716                             ; $76f4: $20 $20

	ld   a, d                                        ; $76f6: $7a

jr_03f_76f7:
	inc  h                                           ; $76f7: $24
	jr   jr_03f_771a                                 ; $76f8: $18 $20

	ld   [hl], l                                     ; $76fa: $75
	inc  h                                           ; $76fb: $24
	db   $10                                         ; $76fc: $10
	jr   nz, jr_03f_7773                             ; $76fd: $20 $74

	inc  h                                           ; $76ff: $24
	jr   z, jr_03f_771a                              ; $7700: $28 $18

	ld   a, a                                        ; $7702: $7f
	inc  b                                           ; $7703: $04
	jr   nz, @+$1a                                   ; $7704: $20 $18

	ld   a, [hl]                                     ; $7706: $7e
	inc  b                                           ; $7707: $04
	jr   z, jr_03f_771a                              ; $7708: $28 $10

	ld   a, l                                        ; $770a: $7d
	inc  b                                           ; $770b: $04
	jr   nz, @+$12                                   ; $770c: $20 $10

	ld   a, h                                        ; $770e: $7c
	inc  b                                           ; $770f: $04
	jr   z, jr_03f_771a                              ; $7710: $28 $08

jr_03f_7712:
	ld   a, e                                        ; $7712: $7b
	inc  b                                           ; $7713: $04
	jr   nz, @+$0a                                   ; $7714: $20 $08

jr_03f_7716:
	ld   a, d                                        ; $7716: $7a
	inc  b                                           ; $7717: $04
	jr   jr_03f_7732                                 ; $7718: $18 $18

jr_03f_771a:
	ld   a, c                                        ; $771a: $79
	inc  b                                           ; $771b: $04
	db   $10                                         ; $771c: $10
	jr   jr_03f_7797                                 ; $771d: $18 $78

	inc  b                                           ; $771f: $04
	jr   jr_03f_7732                                 ; $7720: $18 $10

	ld   [hl], a                                     ; $7722: $77
	inc  b                                           ; $7723: $04
	db   $10                                         ; $7724: $10
	db   $10                                         ; $7725: $10
	halt                                             ; $7726: $76
	inc  b                                           ; $7727: $04
	jr   jr_03f_7732                                 ; $7728: $18 $08

	ld   [hl], l                                     ; $772a: $75
	inc  b                                           ; $772b: $04
	db   $10                                         ; $772c: $10
	ld   [$1474], sp                                 ; $772d: $08 $74 $14
	jr   z, @+$22                                    ; $7730: $28 $20

jr_03f_7732:
	rrca                                             ; $7732: $0f
	inc  c                                           ; $7733: $0c
	jr   nz, @+$22                                   ; $7734: $20 $20

	ld   c, $0c                                      ; $7736: $0e $0c
	jr   z, @+$1a                                    ; $7738: $28 $18

	dec  c                                           ; $773a: $0d
	inc  c                                           ; $773b: $0c
	jr   nz, @+$1a                                   ; $773c: $20 $18

	inc  c                                           ; $773e: $0c
	inc  c                                           ; $773f: $0c
	jr   z, @+$12                                    ; $7740: $28 $10

	dec  bc                                          ; $7742: $0b
	inc  c                                           ; $7743: $0c
	jr   nz, @+$12                                   ; $7744: $20 $10

	ld   a, [bc]                                     ; $7746: $0a

jr_03f_7747:
	inc  c                                           ; $7747: $0c
	jr   z, @+$0a                                    ; $7748: $28 $08

	add  hl, bc                                      ; $774a: $09
	inc  c                                           ; $774b: $0c
	jr   nz, @+$0a                                   ; $774c: $20 $08

	ld   [$180c], sp                                 ; $774e: $08 $0c $18
	jr   nz, jr_03f_775a                             ; $7751: $20 $07

	inc  c                                           ; $7753: $0c
	db   $10                                         ; $7754: $10
	jr   nz, jr_03f_775d                             ; $7755: $20 $06

	inc  c                                           ; $7757: $0c
	jr   jr_03f_7772                                 ; $7758: $18 $18

jr_03f_775a:
	dec  b                                           ; $775a: $05
	inc  c                                           ; $775b: $0c
	db   $10                                         ; $775c: $10

jr_03f_775d:
	jr   jr_03f_7763                                 ; $775d: $18 $04

	inc  c                                           ; $775f: $0c
	jr   jr_03f_7772                                 ; $7760: $18 $10

	inc  bc                                          ; $7762: $03

jr_03f_7763:
	inc  c                                           ; $7763: $0c
	db   $10                                         ; $7764: $10
	db   $10                                         ; $7765: $10
	ld   [bc], a                                     ; $7766: $02
	inc  c                                           ; $7767: $0c
	jr   jr_03f_7772                                 ; $7768: $18 $08

	ld   bc, FarPopulateKanjiConvoStructForCurrTextBox                                   ; $776a: $01 $0c $10
	ld   [$1c00], sp                                 ; $776d: $08 $00 $1c
	jr   z, jr_03f_7792                              ; $7770: $28 $20

jr_03f_7772:
	rra                                              ; $7772: $1f

jr_03f_7773:
	inc  c                                           ; $7773: $0c
	jr   nz, @+$22                                   ; $7774: $20 $20

	ld   e, $0c                                      ; $7776: $1e $0c
	jr   z, jr_03f_7792                              ; $7778: $28 $18

	dec  e                                           ; $777a: $1d
	inc  c                                           ; $777b: $0c
	jr   nz, @+$1a                                   ; $777c: $20 $18

	inc  e                                           ; $777e: $1c
	inc  c                                           ; $777f: $0c
	jr   z, jr_03f_7792                              ; $7780: $28 $10

	dec  de                                          ; $7782: $1b
	inc  c                                           ; $7783: $0c
	jr   nz, @+$12                                   ; $7784: $20 $10

	ld   a, [de]                                     ; $7786: $1a
	inc  c                                           ; $7787: $0c
	jr   z, jr_03f_7792                              ; $7788: $28 $08

	add  hl, de                                      ; $778a: $19
	inc  c                                           ; $778b: $0c
	jr   nz, @+$0a                                   ; $778c: $20 $08

	jr   jr_03f_779c                                 ; $778e: $18 $0c

	jr   jr_03f_77b2                                 ; $7790: $18 $20

jr_03f_7792:
	rla                                              ; $7792: $17
	inc  c                                           ; $7793: $0c
	db   $10                                         ; $7794: $10
	jr   nz, jr_03f_77ad                             ; $7795: $20 $16

jr_03f_7797:
	inc  c                                           ; $7797: $0c
	jr   jr_03f_77b2                                 ; $7798: $18 $18

	dec  d                                           ; $779a: $15
	inc  c                                           ; $779b: $0c

jr_03f_779c:
	db   $10                                         ; $779c: $10
	jr   jr_03f_77b3                                 ; $779d: $18 $14

	inc  c                                           ; $779f: $0c
	jr   jr_03f_77b2                                 ; $77a0: $18 $10

	inc  de                                          ; $77a2: $13
	inc  c                                           ; $77a3: $0c
	db   $10                                         ; $77a4: $10
	db   $10                                         ; $77a5: $10
	ld   [de], a                                     ; $77a6: $12
	inc  c                                           ; $77a7: $0c
	jr   jr_03f_77b2                                 ; $77a8: $18 $08

	ld   de, FarPopulateKanjiConvoStructForCurrTextBox                                   ; $77aa: $11 $0c $10

jr_03f_77ad:
	ld   [$1c10], sp                                 ; $77ad: $08 $10 $1c
	jr   z, jr_03f_77d2                              ; $77b0: $28 $20

jr_03f_77b2:
	cpl                                              ; $77b2: $2f

jr_03f_77b3:
	inc  c                                           ; $77b3: $0c
	jr   nz, @+$22                                   ; $77b4: $20 $20

	ld   l, $0c                                      ; $77b6: $2e $0c
	jr   z, jr_03f_77d2                              ; $77b8: $28 $18

	dec  l                                           ; $77ba: $2d
	inc  c                                           ; $77bb: $0c
	jr   nz, @+$1a                                   ; $77bc: $20 $18

	inc  l                                           ; $77be: $2c
	inc  c                                           ; $77bf: $0c
	jr   z, jr_03f_77d2                              ; $77c0: $28 $10

	dec  hl                                          ; $77c2: $2b
	inc  c                                           ; $77c3: $0c
	jr   nz, @+$12                                   ; $77c4: $20 $10

	ld   a, [hl+]                                    ; $77c6: $2a
	inc  c                                           ; $77c7: $0c
	jr   z, jr_03f_77d2                              ; $77c8: $28 $08

	add  hl, hl                                      ; $77ca: $29
	inc  c                                           ; $77cb: $0c
	jr   nz, @+$0a                                   ; $77cc: $20 $08

	jr   z, jr_03f_77dc                              ; $77ce: $28 $0c

	jr   jr_03f_77f2                                 ; $77d0: $18 $20

jr_03f_77d2:
	daa                                              ; $77d2: $27
	inc  c                                           ; $77d3: $0c
	db   $10                                         ; $77d4: $10
	jr   nz, @+$28                                   ; $77d5: $20 $26

	inc  c                                           ; $77d7: $0c
	jr   jr_03f_77f2                                 ; $77d8: $18 $18

	dec  h                                           ; $77da: $25
	inc  c                                           ; $77db: $0c

jr_03f_77dc:
	db   $10                                         ; $77dc: $10
	jr   jr_03f_7803                                 ; $77dd: $18 $24

	inc  c                                           ; $77df: $0c
	jr   jr_03f_77f2                                 ; $77e0: $18 $10

	inc  hl                                          ; $77e2: $23
	inc  c                                           ; $77e3: $0c
	db   $10                                         ; $77e4: $10
	db   $10                                         ; $77e5: $10
	ld   [hl+], a                                    ; $77e6: $22
	inc  c                                           ; $77e7: $0c
	jr   jr_03f_77f2                                 ; $77e8: $18 $08

	ld   hl, FarPopulateKanjiConvoStructForCurrTextBox                                   ; $77ea: $21 $0c $10
	ld   [$1c20], sp                                 ; $77ed: $08 $20 $1c
	jr   z, jr_03f_7812                              ; $77f0: $28 $20

jr_03f_77f2:
	ccf                                              ; $77f2: $3f
	inc  c                                           ; $77f3: $0c
	jr   nz, @+$22                                   ; $77f4: $20 $20

	ld   a, $0c                                      ; $77f6: $3e $0c
	jr   z, jr_03f_7812                              ; $77f8: $28 $18

	dec  a                                           ; $77fa: $3d
	inc  c                                           ; $77fb: $0c
	jr   nz, @+$1a                                   ; $77fc: $20 $18

	inc  a                                           ; $77fe: $3c
	inc  c                                           ; $77ff: $0c
	jr   z, jr_03f_7812                              ; $7800: $28 $10

	dec  sp                                          ; $7802: $3b

jr_03f_7803:
	inc  c                                           ; $7803: $0c
	jr   nz, @+$12                                   ; $7804: $20 $10

	ld   a, [hl-]                                    ; $7806: $3a
	inc  c                                           ; $7807: $0c
	jr   z, jr_03f_7812                              ; $7808: $28 $08

	add  hl, sp                                      ; $780a: $39
	inc  c                                           ; $780b: $0c
	jr   nz, @+$0a                                   ; $780c: $20 $08

	jr   c, jr_03f_781c                              ; $780e: $38 $0c

	jr   jr_03f_7832                                 ; $7810: $18 $20

jr_03f_7812:
	scf                                              ; $7812: $37
	inc  c                                           ; $7813: $0c
	db   $10                                         ; $7814: $10
	jr   nz, @+$38                                   ; $7815: $20 $36

	inc  c                                           ; $7817: $0c
	jr   jr_03f_7832                                 ; $7818: $18 $18

	dec  [hl]                                        ; $781a: $35
	inc  c                                           ; $781b: $0c

jr_03f_781c:
	db   $10                                         ; $781c: $10
	jr   jr_03f_7853                                 ; $781d: $18 $34

	inc  c                                           ; $781f: $0c
	jr   jr_03f_7832                                 ; $7820: $18 $10

	inc  sp                                          ; $7822: $33
	inc  c                                           ; $7823: $0c
	db   $10                                         ; $7824: $10
	db   $10                                         ; $7825: $10
	ld   [hl-], a                                    ; $7826: $32
	inc  c                                           ; $7827: $0c
	jr   jr_03f_7832                                 ; $7828: $18 $08

	ld   sp, FarPopulateKanjiConvoStructForCurrTextBox                                   ; $782a: $31 $0c $10
	ld   [$1c30], sp                                 ; $782d: $08 $30 $1c
	jr   z, jr_03f_7852                              ; $7830: $28 $20

jr_03f_7832:
	ld   c, a                                        ; $7832: $4f
	inc  c                                           ; $7833: $0c
	jr   nz, @+$22                                   ; $7834: $20 $20

	ld   c, [hl]                                     ; $7836: $4e
	inc  c                                           ; $7837: $0c
	jr   z, jr_03f_7852                              ; $7838: $28 $18

	ld   c, l                                        ; $783a: $4d
	inc  c                                           ; $783b: $0c
	jr   nz, @+$1a                                   ; $783c: $20 $18

	ld   c, h                                        ; $783e: $4c
	inc  c                                           ; $783f: $0c
	jr   z, jr_03f_7852                              ; $7840: $28 $10

	ld   c, e                                        ; $7842: $4b
	inc  c                                           ; $7843: $0c
	jr   nz, @+$12                                   ; $7844: $20 $10

	ld   c, d                                        ; $7846: $4a
	inc  c                                           ; $7847: $0c
	jr   z, jr_03f_7852                              ; $7848: $28 $08

	ld   c, c                                        ; $784a: $49
	inc  c                                           ; $784b: $0c
	jr   nz, @+$0a                                   ; $784c: $20 $08

	ld   c, b                                        ; $784e: $48
	inc  c                                           ; $784f: $0c
	jr   jr_03f_7872                                 ; $7850: $18 $20

jr_03f_7852:
	ld   b, a                                        ; $7852: $47

jr_03f_7853:
	inc  c                                           ; $7853: $0c
	db   $10                                         ; $7854: $10
	jr   nz, @+$48                                   ; $7855: $20 $46

	inc  c                                           ; $7857: $0c
	jr   jr_03f_7872                                 ; $7858: $18 $18

	ld   b, l                                        ; $785a: $45
	inc  c                                           ; $785b: $0c
	db   $10                                         ; $785c: $10
	jr   jr_03f_78a3                                 ; $785d: $18 $44

	inc  c                                           ; $785f: $0c
	jr   jr_03f_7872                                 ; $7860: $18 $10

	ld   b, e                                        ; $7862: $43
	inc  c                                           ; $7863: $0c
	db   $10                                         ; $7864: $10
	db   $10                                         ; $7865: $10
	ld   b, d                                        ; $7866: $42
	inc  c                                           ; $7867: $0c
	jr   jr_03f_7872                                 ; $7868: $18 $08

	ld   b, c                                        ; $786a: $41
	inc  c                                           ; $786b: $0c
	db   $10                                         ; $786c: $10
	ld   [$1c40], sp                                 ; $786d: $08 $40 $1c
	jr   jr_03f_787a                                 ; $7870: $18 $08

jr_03f_7872:
	ld   d, e                                        ; $7872: $53
	rrca                                             ; $7873: $0f
	db   $10                                         ; $7874: $10
	ld   [$1f52], sp                                 ; $7875: $08 $52 $1f
	jr   @+$0a                                       ; $7878: $18 $08

jr_03f_787a:
	ld   d, c                                        ; $787a: $51
	ld   [$0810], sp                                 ; $787b: $08 $10 $08
	ld   d, b                                        ; $787e: $50
	jr   @+$19                                       ; $787f: $18 $17

	ld   [$0851], sp                                 ; $7881: $08 $51 $08
	rrca                                             ; $7884: $0f
	ld   [$1850], sp                                 ; $7885: $08 $50 $18
	ld   d, $08                                      ; $7888: $16 $08
	ld   d, c                                        ; $788a: $51
	ld   [$080e], sp                                 ; $788b: $08 $0e $08
	ld   d, b                                        ; $788e: $50
	jr   jr_03f_78a6                                 ; $788f: $18 $15

	add  hl, bc                                      ; $7891: $09
	ld   d, c                                        ; $7892: $51
	ld   [$090d], sp                                 ; $7893: $08 $0d $09
	ld   d, b                                        ; $7896: $50
	jr   @+$16                                       ; $7897: $18 $14

	ld   a, [bc]                                     ; $7899: $0a
	ld   d, c                                        ; $789a: $51
	ld   [$0a0c], sp                                 ; $789b: $08 $0c $0a
	ld   d, b                                        ; $789e: $50
	jr   @+$15                                       ; $789f: $18 $13

	dec  bc                                          ; $78a1: $0b
	ld   d, c                                        ; $78a2: $51

jr_03f_78a3:
	ld   [$0b0b], sp                                 ; $78a3: $08 $0b $0b

jr_03f_78a6:
	ld   d, b                                        ; $78a6: $50
	jr   jr_03f_78bb                                 ; $78a7: $18 $12

	inc  c                                           ; $78a9: $0c
	ld   d, c                                        ; $78aa: $51
	ld   [$0c0a], sp                                 ; $78ab: $08 $0a $0c
	ld   d, b                                        ; $78ae: $50
	jr   jr_03f_78c2                                 ; $78af: $18 $11

	dec  c                                           ; $78b1: $0d
	ld   d, c                                        ; $78b2: $51
	ld   [$0d09], sp                                 ; $78b3: $08 $09 $0d
	ld   d, b                                        ; $78b6: $50
	jr   jr_03f_78c9                                 ; $78b7: $18 $10

	ld   c, $51                                      ; $78b9: $0e $51

jr_03f_78bb:
	ld   [$0e08], sp                                 ; $78bb: $08 $08 $0e
	ld   d, b                                        ; $78be: $50
	jr   jr_03f_78d1                                 ; $78bf: $18 $10

	rrca                                             ; $78c1: $0f

jr_03f_78c2:
	ld   d, c                                        ; $78c2: $51
	ld   [$0f08], sp                                 ; $78c3: $08 $08 $0f
	ld   d, b                                        ; $78c6: $50
	jr   jr_03f_78d9                                 ; $78c7: $18 $10

jr_03f_78c9:
	db   $10                                         ; $78c9: $10
	ld   d, c                                        ; $78ca: $51
	ld   [$1008], sp                                 ; $78cb: $08 $08 $10
	ld   d, b                                        ; $78ce: $50
	jr   jr_03f_78e1                                 ; $78cf: $18 $10

jr_03f_78d1:
	ld   de, $0851                                   ; $78d1: $11 $51 $08
	ld   [$5011], sp                                 ; $78d4: $08 $11 $50
	jr   jr_03f_78e9                                 ; $78d7: $18 $10

jr_03f_78d9:
	ld   [de], a                                     ; $78d9: $12
	ld   d, c                                        ; $78da: $51
	ld   [$1208], sp                                 ; $78db: $08 $08 $12
	ld   d, b                                        ; $78de: $50
	jr   jr_03f_78f1                                 ; $78df: $18 $10

jr_03f_78e1:
	inc  de                                          ; $78e1: $13
	ld   d, c                                        ; $78e2: $51
	ld   [$1308], sp                                 ; $78e3: $08 $08 $13
	ld   d, b                                        ; $78e6: $50
	jr   @+$13                                       ; $78e7: $18 $11

jr_03f_78e9:
	inc  d                                           ; $78e9: $14
	ld   d, c                                        ; $78ea: $51
	ld   [ClearTextBoxDimensionsAndSetDefaultTextStyle], sp                                 ; $78eb: $08 $09 $14
	ld   d, b                                        ; $78ee: $50
	jr   jr_03f_7903                                 ; $78ef: $18 $12

jr_03f_78f1:
	dec  d                                           ; $78f1: $15
	ld   d, c                                        ; $78f2: $51
	ld   [$150a], sp                                 ; $78f3: $08 $0a $15
	ld   d, b                                        ; $78f6: $50
	jr   @+$15                                       ; $78f7: $18 $13

	ld   d, $51                                      ; $78f9: $16 $51
	ld   [$160b], sp                                 ; $78fb: $08 $0b $16
	ld   d, b                                        ; $78fe: $50
	jr   @+$16                                       ; $78ff: $18 $14

	rla                                              ; $7901: $17
	ld   d, c                                        ; $7902: $51

jr_03f_7903:
	ld   [$170c], sp                                 ; $7903: $08 $0c $17
	ld   d, b                                        ; $7906: $50
	jr   jr_03f_791e                                 ; $7907: $18 $15

	db $18, $51

	ld   [$180d], sp                                 ; $790b: $08 $0d $18
	ld   d, b                                        ; $790e: $50
	jr   jr_03f_7927                                 ; $790f: $18 $16

	add  hl, de                                      ; $7911: $19
	ld   d, c                                        ; $7912: $51
	ld   [$190e], sp                                 ; $7913: $08 $0e $19
	ld   d, b                                        ; $7916: $50
	db $18, $17

	add  hl, de                                      ; $7919: $19
	ld   d, c                                        ; $791a: $51
	ld   [$190f], sp                                 ; $791b: $08 $0f $19

jr_03f_791e:
	ld   d, b                                        ; $791e: $50
	db $18, $18

	add  hl, de                                      ; $7921: $19
	ld   d, c                                        ; $7922: $51
	ld   [$1910], sp                                 ; $7923: $08 $10 $19
	ld   d, b                                        ; $7926: $50

jr_03f_7927:
	db $18


if def(VWF)
SpriteGroupA_Idx47h:
	;db $48, $28, $42, $02
	;db $48, $20, $3a, $02
	db $00, $28, $3c, $00
	db $30, $20, $38, $03
	db $20, $20, $36, $03
	db $08, $20, $34, $00
	db $18, $18, $32, $05
	db $f0, $18, $30, $01
	db $10, $10, $2e, $02
	db $10, $08, $2c, $03
	db $00, $08, $2a, $01
	;db $38, $00, $28, $01
	db $08, $00, $26, $02
	db $f8, $00, $24, $01
	;db $38, $f8, $22, $02
	db $10, $f8, $20, $05
	db $20, $f0, $1e, $01
	db $20, $f0, $1c, $03
	db $10, $f0, $1a, $05
	;db $48, $e8, $18, $03
	db $38, $e8, $16, $03
	db $20, $e8, $14, $04
	db $08, $e8, $12, $00
	db $50, $e0, $10, $03
	;db $40, $e0, $0e, $03
	db $30, $e0, $0c, $03
	db $20, $e0, $0a, $04
	;db $48, $d8, $08, $03
	;db $38, $d8, $06, $03
	db $20, $d8, $04, $02
	db $18, $d0, $02, $02

	db 9*8+1 +$10-$20, 4*8+7 +8-$50, $52, $03 ; purple
	db 11*8+0 +$10-$20, 6*8+0 +8-$50, $54, $03 ; purple
	db 11*8+1 +$10-$20, 13*8+0 +8-$50, $52, $01 ; red
	db 10*8+0 +$10-$20, 14*8+0 +8-$50, $56, $05 ; pink
	db 9*8+0 +$10-$20, 9*8+0 +8-$50, $58, $01 ; red
	db 9*8+0 +$10-$20, 6*8+0 +8-$50, $5a, $05 ; pink
	db 9*8+0 +$10-$20, 7*8+0 +8-$50, $5c, $05 ; pink

	db $18, $c8, $00, $12


SpriteGroupA_Idx54h:
	db $f0, $18, $0e, $01
	;db $68, $10, $3c, $06
	;db $58, $18, $3a, $06
	;db $58, $10, $2a, $06
	;db $58, $08, $28, $06
	;db $58, $00, $26, $06
	;db $58, $f8, $24, $06
	;db $58, $f0, $22, $06
	;db $58, $e8, $20, $06
	;db $58, $d8, $1e, $06
	;db $68, $08, $38, $06
	;db $68, $00, $36, $06
	;db $68, $f8, $34, $06
	;db $68, $f0, $32, $06
	;db $68, $e8, $30, $06
	;db $68, $e0, $2e, $06
	;db $68, $d8, $2c, $06
	db $f8, $d5, $0a, $01
	db $f8, $cd, $08, $01
	db $f0, $10, $0c, $01
	db $40, $d8, $14, $01
	db $40, $d0, $12, $01
	db $40, $c8, $10, $01
	db $18, $24, $06, $00

	db 12*8+2 +$10-$20, 1*8+5 +8-$50, $1e, $06
	db 12*8+2 +$10-$20, 2*8+5 +8-$50, $20, $06
	db 12*8+2 +$10-$20, 5*8+5 +8-$50, $22, $06
	db 12*8+6 +$10-$20, 6*8+4 +8-$50, $24, $06
	db 12*8+6 +$10-$20, 7*8+6 +8-$50, $26, $06
	db 12*8+6 +$10-$20, 8*8+6 +8-$50, $28, $06
	db 13*8+0 +$10-$20, 10*8+2 +8-$50, $2a, $06
	db 13*8+0 +$10-$20, 11*8+2 +8-$50, $2c, $06
	db 12*8+6 +$10-$20, 12*8+1 +8-$50, $2e, $06
	db 12*8+2 +$10-$20, 13*8+4 +8-$50, $30, $06
	db 12*8+6 +$10-$20, 14*8+5 +8-$50, $32, $06
	db 12*8+6 +$10-$20, 15*8+5 +8-$50, $34, $06
	db 14*8+0 +$10-$20, 4*8+0 +8-$50, $3e, $06

	db 14*8+7 +$10-$20, 1*8+4 +8-$50, $36, $06
	db 15*8+2 +$10-$20, 8*8+0 +8-$50, $38, $06
	db 15*8+2 +$10-$20, 9*8+0 +8-$50, $3a, $06
	db 16*8+0 +$10-$20, 10*8+1 +8-$50, $3c, $06

	db $0f, $2f, $00, $12


SpriteGroupA_Idx43h:
	db $08, $1e, $16, $02
	db $18, $18, $12, $00
	db $f0, $00, $00, $00
	db $1a, $43, $14, $02
	db $08, $18, $10, $01
	db $08, $10, $0e, $01
	db $08, $08, $0c, $01
	db $f1, $20, $0a, $00
	db $f1, $18, $08, $00
	db $f0, $10, $06, $00
	db $f0, $08, $04, $00
	db $00, $00, $02, $00
	;db $38, $45, $60, $03
	;db $28, $45, $4e, $03
	;db $28, $3d, $4c, $03
	;db $28, $35, $4a, $03
	;db $28, $2d, $48, $03
	;db $28, $25, $46, $03
	;db $28, $1d, $44, $03
	;db $38, $3d, $5e, $03
	;db $38, $35, $5c, $03
	;db $38, $2d, $5a, $03
	;db $38, $25, $58, $03
	;db $38, $1d, $56, $03
	;db $38, $16, $54, $03
	;db $38, $0e, $52, $03
	;db $30, $03, $50, $03
	;db $28, $0e, $40, $03
	db $08, $18, $1c, $02
	db $08, $10, $1a, $02

	db 8*8+0 +$10-$20, 0*8+0 +8-$50, $36, $03
	db 7*8+0 +$10-$20, 9*8+0 +8-$50, $38, $03
	db 7*8+0 +$10-$20, 10*8+0 +8-$50, $3a, $03
	db 9*8+0 +$10-$20, 10*8+0 +8-$50, $3c, $03
	db 11*8+0 +$10-$20, 9*8+7 +8-$50, $3e, $03
	db 11*8+3 +$10-$20, 9*8+6 +8-$50, $40, $04
	db 13*8+1 +$10-$20, 10*8+4 +8-$50, $42, $03
	db 13*8+1 +$10-$20, 11*8+4 +8-$50, $44, $03
	db 15*8+0 +$10-$20, 10*8+4 +8-$50, $46, $03
	db 13*8+7 +$10-$20, 12*8+1 +8-$50, $4c, $03
	db 13*8+7 +$10-$20, 13*8+1 +8-$50, $4e, $03
	db 13*8+7 +$10-$20, 14*8+1 +8-$50, $50, $03
	db 13*8+7 +$10-$20, 15*8+1 +8-$50, $52, $03
	db 13*8+7 +$10-$20, 16*8+1 +8-$50, $54, $03
	db 13*8+7 +$10-$20, 17*8+1 +8-$50, $56, $03

	db 13*8+7 +$10-$20, 18*8+1 +8-$50, $48, $03 ; 8-wide
	db 15*8+7 +$10-$20, 12*8+5 +8-$50, $48, $03 ; 8-wide
	db 15*8+7 +$10-$20, 14*8+4 +8-$50, $4a, $03 ; 5-wide
	db 15*8+7 +$10-$20, 16*8+2 +8-$50, $48, $03 ; 8-wide
	db 15*8+7 +$10-$20, 17*8+7 +8-$50, $4a, $03 ; 5-wide

	db $08, $08, $18, $12


SpriteGroupA_Idx4ch:
SpriteGroupA_Idx51h:
	db $08, $08, $44, $04
	db $fd, $10, $40, $04
	db $26, $60, $20, $01
	db $18, $3e, $1e, $02
	db $18, $36, $1c, $02
	db $20, $11, $1a, $02
	db $18, $0b, $18, $03
	db $1e, $03, $16, $03
	db $20, $fb, $14, $01
	db $20, $f3, $12, $01
	db $08, $46, $10, $01
	db $08, $3e, $0e, $01
	db $08, $36, $0c, $01
	db $01, $23, $0a, $00
	db $04, $0c, $08, $00
	db $ea, $20, $06, $01
	db $ea, $18, $04, $01
	db $ed, $10, $02, $01

	db 1*8+1 +$10-$40, 6*8+0 +8-$40, $54, $07
	db 1*8+1 +$10-$40, 7*8+0 +8-$40, $56, $07
	db 1*8+1 +$10-$40, 8*8+3 +8-$40, $58, $07
	db 1*8+1 +$10-$40, 9*8+3 +8-$40, $5a, $07
	db 1*8+1 +$10-$40, 10*8+3 +8-$40, $5c, $07

	db $f0, $08, $00, $11


SpriteGroupA_Idx3fh:
	db $28, $d0, $3c, $00
	;db $28, $1d, $3a, $05
	db $52, $00, $30, $00
	db $42, $00, $2c, $00
	;db $58, $08, $32, $05
	db $46, $f8, $22, $02
	db $4e, $fe, $24, $02
	db $5e, $fe, $28, $02
	db $56, $f6, $26, $02
	db $36, $00, $1c, $02
	db $40, $08, $2e, $05
	db $48, $f0, $20, $02
	db $36, $08, $1e, $02
	db $36, $f8, $1a, $02
	db $21, $e8, $0a, $01
	db $20, $05, $0e, $04
	db $30, $c8, $0c, $04
	db $11, $f0, $04, $00
	db $08, $df, $00, $00
	db $08, $e8, $02, $00
	db $18, $e0, $08, $00
	db $18, $d8, $06, $00
	db $40, $f8, $2a, $00
	db $38, $d0, $10, $00
	db $50, $e0, $18, $03
	db $50, $d8, $16, $03
	db $40, $e0, $14, $03

	db 7*8+0 +$10-$20, 10*8+6 +8-$50, $3e, $05
	db 7*8+7 +$10-$20, 11*8+4 +8-$50, $40, $06
	db 9*8+0 +$10-$20, 10*8+6 +8-$50, $42, $00
	db 12*8+0 +$10-$20, 10*8+6 +8-$50, $44, $05
	db 13*8+6 +$10-$20, 10*8+6 +8-$50, $46, $05

	db $40, $d8, $12, $13


KannaMiniGameTitleScreenBank1_8800hHook:
	call RLEXorCopy

	M_FarCall ReplaceKannaMiniGameTSPopup
	ret

KannaMiniGameTitleScreenBank1_8c00hHook:
	call EnqueueHDMATransfer
	rst  WaitUntilVBlankIntHandledIfLCDOn

	M_FarCall LoadKannaMiniGameTitleScreenGfx1_2

	ret

KannaMiniGameTitleScreenBank0_8000hHook:
	call RLEXorCopy

	M_FarCall LoadKannaMiniGameTitleScreenGfxSpr
	ret

endc