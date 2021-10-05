; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $011", ROMX[$4000], BANK[$11]

GameState0b_KannaMiniGameMain::
	ld   a, [wGameSubstate]                                  ; $4000: $fa $a1 $c2
	rst  JumpTable                                         ; $4003: $df
	dw KannaMiniGameMainSubstate0
	dw KannaMiniGameMainSubstate1
	dw $4190
	dw $41b7
	dw $41df
	dw $4221
	dw $4242


KannaMiniGameMainSubstate0:
	xor  a                                           ; $4012: $af
	ld   [$c806], a                                  ; $4013: $ea $06 $c8
	ld   [$c808], a                                  ; $4016: $ea $08 $c8
	ld   a, [$c805]                                  ; $4019: $fa $05 $c8
	or   a                                           ; $401c: $b7
	jr   z, jr_011_4024                              ; $401d: $28 $05

	ld   a, $05                                      ; $401f: $3e $05
	ld   [$c806], a                                  ; $4021: $ea $06 $c8

jr_011_4024:
	ld   hl, wGameSubstate                                   ; $4024: $21 $a1 $c2
	inc  [hl]                                        ; $4027: $34
	ret                                              ; $4028: $c9


	call ClearOam                                       ; $4029: $cd $d7 $0d
	ld   a, [$c806]                                  ; $402c: $fa $06 $c8
	inc  a                                           ; $402f: $3c
	ld   [$c807], a                                  ; $4030: $ea $07 $c8
	ld   hl, $c807                                   ; $4033: $21 $07 $c8
	ld   a, $60                                      ; $4036: $3e $60
	ld   c, $20                                      ; $4038: $0e $20
	call Call_011_492c                               ; $403a: $cd $2c $49
	ld   hl, $c806                                   ; $403d: $21 $06 $c8
	ld   a, [wInGameStickyButtonsPressed]                                  ; $4040: $fa $11 $c2
	bit  7, a                                        ; $4043: $cb $7f
	jr   z, jr_011_404d                              ; $4045: $28 $06

	ld   a, $0a                                      ; $4047: $3e $0a
	cp   [hl]                                        ; $4049: $be
	jr   z, jr_011_404d                              ; $404a: $28 $01

	inc  [hl]                                        ; $404c: $34

jr_011_404d:
	ld   a, [wInGameStickyButtonsPressed]                                  ; $404d: $fa $11 $c2
	bit  6, a                                        ; $4050: $cb $77
	jr   z, jr_011_4059                              ; $4052: $28 $05

	ld   a, [hl]                                     ; $4054: $7e
	or   a                                           ; $4055: $b7
	jr   z, jr_011_4059                              ; $4056: $28 $01

	dec  [hl]                                        ; $4058: $35

jr_011_4059:
	ld   a, [wInGameButtonsPressed]                                  ; $4059: $fa $10 $c2
	and  $09                                         ; $405c: $e6 $09
	jr   z, jr_011_4064                              ; $405e: $28 $04

	ld   hl, wGameSubstate                                   ; $4060: $21 $a1 $c2
	inc  [hl]                                        ; $4063: $34

jr_011_4064:
	ret                                              ; $4064: $c9


	xor  a                                           ; $4065: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4066: $ea $62 $c3
	ld   a, $40                                      ; $4069: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $406b: $ea $63 $c3
	ld   a, $03                                      ; $406e: $3e $03
	ld   b, $1e                                      ; $4070: $06 $1e
	ld   hl, $63fc                                   ; $4072: $21 $fc $63
	ld   c, $01                                      ; $4075: $0e $01
	ld   de, $7000                                   ; $4077: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $407a: $cd $48 $07
	call FadeBGpals8timesHandlingAnimatedSpriteSpecs                               ; $407d: $cd $54 $57
	call TurnOffLCD                                       ; $4080: $cd $e3 $08
	ld   hl, wGameSubstate                                   ; $4083: $21 $a1 $c2
	inc  [hl]                                        ; $4086: $34
	ret                                              ; $4087: $c9


KannaMiniGameMainSubstate1:
	call TurnOffLCD                                       ; $4088: $cd $e3 $08
	ld   a, $00                                      ; $408b: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $408d: $cd $e0 $1c
	ld   a, $ff                                      ; $4090: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $4092: $ea $0e $c2
	ld   a, $0c                                      ; $4095: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $4097: $ea $13 $c2
	ld   a, $04                                      ; $409a: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $409c: $ea $14 $c2
	call ClearOam                                       ; $409f: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $40a2: $cd $59 $0b
	ld   a, $07                                      ; $40a5: $3e $07
	ld   [wLCDC], a                                  ; $40a7: $ea $03 $c2

;
	ld   a, $01                                      ; $40aa: $3e $01
	ldh  [rVBK], a                                   ; $40ac: $e0 $4f
	ld   a, $1d                                      ; $40ae: $3e $1d
	ld   hl, $9800                                   ; $40b0: $21 $00 $98
	ld   de, $7340                                   ; $40b3: $11 $40 $73
	call RLEXorCopy                                       ; $40b6: $cd $d2 $09

;
	ld   a, $1d                                      ; $40b9: $3e $1d
	ld   hl, $8400                                   ; $40bb: $21 $00 $84
	ld   de, $5e9f                                   ; $40be: $11 $9f $5e
	call RLEXorCopy                                       ; $40c1: $cd $d2 $09

;
	ld   a, $1b                                      ; $40c4: $3e $1b
	ld   hl, $9000                                   ; $40c6: $21 $00 $90
	ld   de, $6ed5                                   ; $40c9: $11 $d5 $6e
if def(VWF)
	call KannaMiniGameBank1_9000hHook
else
	call RLEXorCopy                                       ; $40cc: $cd $d2 $09
endc

;
	call Call_011_4a41                               ; $40cf: $cd $41 $4a

;
	xor  a                                           ; $40d2: $af
	ldh  [rVBK], a                                   ; $40d3: $e0 $4f
	ld   a, $1c                                      ; $40d5: $3e $1c
	ld   hl, $9800                                   ; $40d7: $21 $00 $98
	ld   de, $73b8                                   ; $40da: $11 $b8 $73
	call RLEXorCopy                                       ; $40dd: $cd $d2 $09

;
	ld   a, $1d                                      ; $40e0: $3e $1d
	ld   hl, $8000                                   ; $40e2: $21 $00 $80
	ld   de, $6570                                   ; $40e5: $11 $70 $65
	call RLEXorCopy                                       ; $40e8: $cd $d2 $09

;
	ld   a, $15                                      ; $40eb: $3e $15
	ld   hl, $8800                                   ; $40ed: $21 $00 $88
	ld   de, $4d2b                                   ; $40f0: $11 $2b $4d
if def(VWF)
	call KannaMiniGameBank0_8800hHook
else
	call RLEXorCopy                                       ; $40f3: $cd $d2 $09
endc

;
	call Call_011_4ad4                               ; $40f6: $cd $d4 $4a
	xor  a                                           ; $40f9: $af
	ld   [wWY], a                                  ; $40fa: $ea $0a $c2
	ld   [wWX], a                                  ; $40fd: $ea $09 $c2
	ld   [wSCX], a                                  ; $4100: $ea $07 $c2
	ld   [wSCY], a                                  ; $4103: $ea $08 $c2
	ld   hl, $c7ee                                   ; $4106: $21 $ee $c7
	ld   a, [$c805]                                  ; $4109: $fa $05 $c8
	ld   c, a                                        ; $410c: $4f
	ld   a, $05                                      ; $410d: $3e $05
	push af                                          ; $410f: $f5
	ld   a, $6e                                      ; $4110: $3e $6e
	ld   [wFarCallAddr], a                                  ; $4112: $ea $98 $c2
	ld   a, $71                                      ; $4115: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $4117: $ea $99 $c2
	ld   a, $0b                                      ; $411a: $3e $0b
	ld   [wFarCallBank], a                                  ; $411c: $ea $9a $c2
	pop  af                                          ; $411f: $f1
	call FarCall                                       ; $4120: $cd $62 $09
	ld   a, $00                                      ; $4123: $3e $00
	ld   [$c7fa], a                                  ; $4125: $ea $fa $c7
	call ClearOam                                       ; $4128: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $412b: $cd $c9 $2e
	ld   a, $01                                      ; $412e: $3e $01
	ld   hl, $7000                                   ; $4130: $21 $00 $70
	ld   de, wBGPalettes                                   ; $4133: $11 $de $c2
	ld   bc, $0080                                   ; $4136: $01 $80 $00
	call FarMemCopy                                       ; $4139: $cd $b2 $09
	ld   bc, $003f                                   ; $413c: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $413f: $cd $aa $04
	xor  a                                           ; $4142: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4143: $ea $62 $c3
	ld   a, $40                                      ; $4146: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4148: $ea $63 $c3
	ld   a, $03                                      ; $414b: $3e $03
	ld   b, $01                                      ; $414d: $06 $01
	ld   hl, $7000                                   ; $414f: $21 $00 $70
	ld   c, $1e                                      ; $4152: $0e $1e
	ld   de, $63fc                                   ; $4154: $11 $fc $63
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4157: $cd $48 $07
	call TurnOnLCD                                       ; $415a: $cd $09 $09
	ld   a, $0c                                      ; $415d: $3e $0c
	call PlaySong                                       ; $415f: $cd $92 $1a
	ld   a, $07                                      ; $4162: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $4164: $cd $e0 $1c
	xor  a                                           ; $4167: $af
	ld   [$c7f0], a                                  ; $4168: $ea $f0 $c7
	ld   [$c7f1], a                                  ; $416b: $ea $f1 $c7
	call $499e                                       ; $416e: $cd $9e $49
	call Call_011_42ca                               ; $4171: $cd $ca $42
	call Call_011_6a43                               ; $4174: $cd $43 $6a
	ld   a, $1e                                      ; $4177: $3e $1e
	ld   hl, $63fc                                   ; $4179: $21 $fc $63
	ld   de, wBGPalettes                                   ; $417c: $11 $de $c2
	ld   bc, $0080                                   ; $417f: $01 $80 $00
	call FarMemCopy                                       ; $4182: $cd $b2 $09
	ld   bc, $003f                                   ; $4185: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4188: $cd $aa $04
	ld   hl, wGameSubstate                                   ; $418b: $21 $a1 $c2
	inc  [hl]                                        ; $418e: $34
	ret                                              ; $418f: $c9


	ld   bc, $003c                                   ; $4190: $01 $3c $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $4193: $cd $79 $0a
	call Call_011_4a10                               ; $4196: $cd $10 $4a
	ld   bc, $0078                                   ; $4199: $01 $78 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $419c: $cd $79 $0a
	call Call_011_4a38                               ; $419f: $cd $38 $4a
	call ClearOam                                       ; $41a2: $cd $d7 $0d
	call $499e                                       ; $41a5: $cd $9e $49
	call Call_011_448c                               ; $41a8: $cd $8c $44
	call Call_011_4741                               ; $41ab: $cd $41 $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41ae: $cf
	call Call_011_4397                               ; $41af: $cd $97 $43
	ld   hl, wGameSubstate                                   ; $41b2: $21 $a1 $c2
	inc  [hl]                                        ; $41b5: $34
	ret                                              ; $41b6: $c9


	call Call_011_44da                               ; $41b7: $cd $da $44
	call Call_011_4509                               ; $41ba: $cd $09 $45
	call ClearOam                                       ; $41bd: $cd $d7 $0d
	call Call_011_4435                               ; $41c0: $cd $35 $44
	ld   a, [$c7e6]                                  ; $41c3: $fa $e6 $c7
	ld   hl, $c7e7                                   ; $41c6: $21 $e7 $c7
	cp   [hl]                                        ; $41c9: $be
	jr   z, jr_011_41d2                              ; $41ca: $28 $06

	call Call_011_4570                               ; $41cc: $cd $70 $45
	call Call_011_4871                               ; $41cf: $cd $71 $48

jr_011_41d2:
	call Call_011_4741                               ; $41d2: $cd $41 $47
	call Call_011_45bc                               ; $41d5: $cd $bc $45
	call $499e                                       ; $41d8: $cd $9e $49
	call Call_011_49fb                               ; $41db: $cd $fb $49
	ret                                              ; $41de: $c9


	ld   a, [$c7fa]                                  ; $41df: $fa $fa $c7
	cp   $00                                         ; $41e2: $fe $00
	jr   z, jr_011_41fc                              ; $41e4: $28 $16

	ld   hl, $c806                                   ; $41e6: $21 $06 $c8
	ld   a, [$c805]                                  ; $41e9: $fa $05 $c8
	or   a                                           ; $41ec: $b7
	jr   nz, jr_011_41f6                             ; $41ed: $20 $07

	ld   a, [hl]                                     ; $41ef: $7e
	cp   $04                                         ; $41f0: $fe $04
	jr   z, jr_011_4219                              ; $41f2: $28 $25

	jr   jr_011_41fb                                 ; $41f4: $18 $05

jr_011_41f6:
	ld   a, [hl]                                     ; $41f6: $7e
	cp   $0a                                         ; $41f7: $fe $0a
	jr   z, jr_011_4219                              ; $41f9: $28 $1e

jr_011_41fb:
	inc  [hl]                                        ; $41fb: $34

jr_011_41fc:
	ld   a, $03                                      ; $41fc: $3e $03
	ld   [wGameSubstate], a                                  ; $41fe: $ea $a1 $c2
	call ClearOam                                       ; $4201: $cd $d7 $0d
	call $499e                                       ; $4204: $cd $9e $49
	call Call_011_4a38                               ; $4207: $cd $38 $4a
	call Call_011_4369                               ; $420a: $cd $69 $43
	call Call_011_448c                               ; $420d: $cd $8c $44
	call Call_011_4741                               ; $4210: $cd $41 $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4213: $cf
	call Call_011_4397                               ; $4214: $cd $97 $43
	jr   jr_011_4220                                 ; $4217: $18 $07

jr_011_4219:
	ld   hl, wGameSubstate                                   ; $4219: $21 $a1 $c2
	inc  [hl]                                        ; $421c: $34
	call Call_011_4a2f                               ; $421d: $cd $2f $4a

jr_011_4220:
	ret                                              ; $4220: $c9


	ld   c, $f0                                      ; $4221: $0e $f0

jr_011_4223:
	push bc                                          ; $4223: $c5
	call ClearOam                                       ; $4224: $cd $d7 $0d
	call $499e                                       ; $4227: $cd $9e $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $422a: $cf
	pop  bc                                          ; $422b: $c1
	ld   a, [wInGameButtonsPressed]                                  ; $422c: $fa $10 $c2
	and  $01                                         ; $422f: $e6 $01
	jr   nz, jr_011_4238                             ; $4231: $20 $05

	dec  c                                           ; $4233: $0d
	jr   nz, jr_011_4223                             ; $4234: $20 $ed

	jr   jr_011_423d                                 ; $4236: $18 $05

jr_011_4238:
	ld   a, $21                                      ; $4238: $3e $21
	call PlaySoundEffect                                       ; $423a: $cd $df $1a

jr_011_423d:
	ld   hl, wGameSubstate                                   ; $423d: $21 $a1 $c2
	inc  [hl]                                        ; $4240: $34
	ret                                              ; $4241: $c9


	ld   a, [$cb1d]                                  ; $4242: $fa $1d $cb
	or   a                                           ; $4245: $b7
	jr   z, jr_011_424f                              ; $4246: $28 $07

	call todo_GetKannaMiniGameRankInA_2                               ; $4248: $cd $96 $4b
	ld   b, $04                                      ; $424b: $06 $04
	jr   jr_011_4254                                 ; $424d: $18 $05

jr_011_424f:
	call todo_GetKannaMiniGameRankInA_1                               ; $424f: $cd $81 $4b
	ld   b, $02                                      ; $4252: $06 $02

jr_011_4254:
	cp   b                                           ; $4254: $b8
	jr   c, jr_011_425c                              ; $4255: $38 $05

	ld   a, $68                                      ; $4257: $3e $68
	call PlaySampledSound                                       ; $4259: $cd $64 $1b

jr_011_425c:
	xor  a                                           ; $425c: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $425d: $ea $62 $c3
	ld   a, $40                                      ; $4260: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4262: $ea $63 $c3
	ld   a, $03                                      ; $4265: $3e $03
	ld   b, $1e                                      ; $4267: $06 $1e
	ld   hl, $63fc                                   ; $4269: $21 $fc $63
	ld   c, $01                                      ; $426c: $0e $01
	ld   de, $7000                                   ; $426e: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4271: $cd $48 $07
	call Call_011_6a58                               ; $4274: $cd $58 $6a
	call TurnOffLCD                                       ; $4277: $cd $e3 $08
	ld   a, [$cb1d]                                  ; $427a: $fa $1d $cb
	or   a                                           ; $427d: $b7
	jr   nz, jr_011_4293                             ; $427e: $20 $13

	call todo_GetKannaMiniGameRankInA_1                               ; $4280: $cd $81 $4b
	ld   [wMiniGameTrainingBattleRank], a                                  ; $4283: $ea $21 $cb
	ld   a, [$c809]                                  ; $4286: $fa $09 $c8
	ld   [wGameState], a                                  ; $4289: $ea $a0 $c2
	ld   a, [$c80a]                                  ; $428c: $fa $0a $c8
	ld   [wGameSubstate], a                                  ; $428f: $ea $a1 $c2
	ret                                              ; $4292: $c9


jr_011_4293:
	ld   hl, $c986                                   ; $4293: $21 $86 $c9
	ld   a, [$c7f0]                                  ; $4296: $fa $f0 $c7
	ld   [hl+], a                                    ; $4299: $22
	ld   a, [$c7f1]                                  ; $429a: $fa $f1 $c7
	ld   [hl], a                                     ; $429d: $77
	call todo_GetKannaMiniGameRankInA_2                               ; $429e: $cd $96 $4b
	push af                                          ; $42a1: $f5
	ld   h, $0b                                      ; $42a2: $26 $0b
	ld   l, $00                                      ; $42a4: $2e $00
	ld   a, [$c809]                                  ; $42a6: $fa $09 $c8
	ld   d, a                                        ; $42a9: $57
	ld   a, [$c80a]                                  ; $42aa: $fa $0a $c8
	ld   e, a                                        ; $42ad: $5f
	ld   b, $05                                      ; $42ae: $06 $05
	ld   a, [$c805]                                  ; $42b0: $fa $05 $c8
	ld   c, a                                        ; $42b3: $4f
	pop  af                                          ; $42b4: $f1
	push af                                          ; $42b5: $f5
	ld   a, $3c                                      ; $42b6: $3e $3c
	ld   [wFarCallAddr], a                                  ; $42b8: $ea $98 $c2
	ld   a, $55                                      ; $42bb: $3e $55
	ld   [wFarCallAddr+1], a                                  ; $42bd: $ea $99 $c2
	ld   a, $3e                                      ; $42c0: $3e $3e
	ld   [wFarCallBank], a                                  ; $42c2: $ea $9a $c2
	pop  af                                          ; $42c5: $f1
	call FarCall                                       ; $42c6: $cd $62 $09
	ret                                              ; $42c9: $c9


Call_011_42ca:
	xor  a                                           ; $42ca: $af
	ldh  [rVBK], a                                   ; $42cb: $e0 $4f
	call Call_011_42d8                               ; $42cd: $cd $d8 $42
	ld   a, $01                                      ; $42d0: $3e $01
	ldh  [rVBK], a                                   ; $42d2: $e0 $4f
	call Call_011_42d8                               ; $42d4: $cd $d8 $42
	ret                                              ; $42d7: $c9


Call_011_42d8:
	ld   a, [$c7fa]                                  ; $42d8: $fa $fa $c7
	cp   $00                                         ; $42db: $fe $00
	jr   z, jr_011_42fd                              ; $42dd: $28 $1e

	ld   de, $9961                                   ; $42df: $11 $61 $99
	ld   a, $00                                      ; $42e2: $3e $00
	ld   hl, $98d4                                   ; $42e4: $21 $d4 $98
	ld   bc, $0008                                   ; $42e7: $01 $08 $00
	call HBlankFarMemCopy                                       ; $42ea: $cd $23 $0a
	ld   de, $9981                                   ; $42ed: $11 $81 $99
	ld   a, $00                                      ; $42f0: $3e $00
	ld   hl, $98f4                                   ; $42f2: $21 $f4 $98
	ld   bc, $0008                                   ; $42f5: $01 $08 $00
	call HBlankFarMemCopy                                       ; $42f8: $cd $23 $0a
	jr   jr_011_4319                                 ; $42fb: $18 $1c

jr_011_42fd:
	ld   de, $996b                                   ; $42fd: $11 $6b $99
	ld   a, $00                                      ; $4300: $3e $00
	ld   hl, $9914                                   ; $4302: $21 $14 $99
	ld   bc, $0008                                   ; $4305: $01 $08 $00
	call HBlankFarMemCopy                                       ; $4308: $cd $23 $0a
	ld   de, $998b                                   ; $430b: $11 $8b $99
	ld   a, $00                                      ; $430e: $3e $00
	ld   hl, $9934                                   ; $4310: $21 $34 $99
	ld   bc, $0008                                   ; $4313: $01 $08 $00
	call HBlankFarMemCopy                                       ; $4316: $cd $23 $0a

jr_011_4319:
	ret                                              ; $4319: $c9


Call_011_431a:
	xor  a                                           ; $431a: $af
	ldh  [rVBK], a                                   ; $431b: $e0 $4f
	call Call_011_4328                               ; $431d: $cd $28 $43
	ld   a, $01                                      ; $4320: $3e $01
	ldh  [rVBK], a                                   ; $4322: $e0 $4f
	call Call_011_4328                               ; $4324: $cd $28 $43
	ret                                              ; $4327: $c9


Call_011_4328:
	ld   a, [$c7fa]                                  ; $4328: $fa $fa $c7
	cp   $00                                         ; $432b: $fe $00
	jr   z, jr_011_434c                              ; $432d: $28 $1d

	ld   de, $9961                                   ; $432f: $11 $61 $99
	ld   a, $00                                      ; $4332: $3e $00
	ld   hl, $9954                                   ; $4334: $21 $54 $99
	ld   bc, $0008                                   ; $4337: $01 $08 $00
	call HBlankFarMemCopy                                       ; $433a: $cd $23 $0a
	ld   de, $9981                                   ; $433d: $11 $81 $99
	ld   a, $00                                      ; $4340: $3e $00
	ld   hl, $9974                                   ; $4342: $21 $74 $99
	ld   bc, $0008                                   ; $4345: $01 $08 $00
	call HBlankFarMemCopy                                       ; $4348: $cd $23 $0a
	ret                                              ; $434b: $c9


jr_011_434c:
	ld   de, $996b                                   ; $434c: $11 $6b $99
	ld   a, $00                                      ; $434f: $3e $00
	ld   hl, $9994                                   ; $4351: $21 $94 $99
	ld   bc, $0008                                   ; $4354: $01 $08 $00
	call HBlankFarMemCopy                                       ; $4357: $cd $23 $0a
	ld   de, $998b                                   ; $435a: $11 $8b $99
	ld   a, $00                                      ; $435d: $3e $00
	ld   hl, $99b4                                   ; $435f: $21 $b4 $99
	ld   bc, $0008                                   ; $4362: $01 $08 $00
	call HBlankFarMemCopy                                       ; $4365: $cd $23 $0a
	ret                                              ; $4368: $c9


Call_011_4369:
	call Call_011_431a                               ; $4369: $cd $1a $43
	ld   hl, $c7fa                                   ; $436c: $21 $fa $c7
	ld   a, [hl]                                     ; $436f: $7e
	cp   $01                                         ; $4370: $fe $01
	jr   z, jr_011_4379                              ; $4372: $28 $05

	ld   a, $01                                      ; $4374: $3e $01
	ld   [hl], a                                     ; $4376: $77
	jr   jr_011_437c                                 ; $4377: $18 $03

jr_011_4379:
	ld   a, $00                                      ; $4379: $3e $00
	ld   [hl], a                                     ; $437b: $77

jr_011_437c:
	ld   b, $0a                                      ; $437c: $06 $0a

jr_011_437e:
	ld   c, $04                                      ; $437e: $0e $04
	push bc                                          ; $4380: $c5
	ld   a, b                                        ; $4381: $78
	and  $01                                         ; $4382: $e6 $01
	jr   z, jr_011_438b                              ; $4384: $28 $05

	call Call_011_42ca                               ; $4386: $cd $ca $42
	jr   jr_011_438e                                 ; $4389: $18 $03

jr_011_438b:
	call Call_011_431a                               ; $438b: $cd $1a $43

jr_011_438e:
	pop  bc                                          ; $438e: $c1

jr_011_438f:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $438f: $cf
	dec  c                                           ; $4390: $0d
	jr   nz, jr_011_438f                             ; $4391: $20 $fc

	dec  b                                           ; $4393: $05
	jr   nz, jr_011_437e                             ; $4394: $20 $e8

	ret                                              ; $4396: $c9


Call_011_4397:
	ld   hl, $d900                                   ; $4397: $21 $00 $d9
	ld   de, $d800                                   ; $439a: $11 $00 $d8
	ld   a, [$c7fa]                                  ; $439d: $fa $fa $c7
	cp   $00                                         ; $43a0: $fe $00
	jr   z, jr_011_43aa                              ; $43a2: $28 $06

	ld   hl, $d700                                   ; $43a4: $21 $00 $d7
	ld   de, $d600                                   ; $43a7: $11 $00 $d6

jr_011_43aa:
	jr   jr_011_43ac                                 ; $43aa: $18 $00

Jump_011_43ac:
jr_011_43ac:
	push de                                          ; $43ac: $d5
	ld   a, $03                                      ; $43ad: $3e $03
	ld   de, $9840                                   ; $43af: $11 $40 $98
	ld   c, $81                                      ; $43b2: $0e $81
	ld   b, $10                                      ; $43b4: $06 $10
	call EnqueueHDMATransfer                                       ; $43b6: $cd $7c $02
	pop  hl                                          ; $43b9: $e1
	ld   a, $03                                      ; $43ba: $3e $03
	ld   de, $9840                                   ; $43bc: $11 $40 $98
	ld   c, $80                                      ; $43bf: $0e $80
	ld   b, $10                                      ; $43c1: $06 $10
	call EnqueueHDMATransfer                                       ; $43c3: $cd $7c $02
	ret                                              ; $43c6: $c9


Call_011_43c7:
	ld   a, $08                                      ; $43c7: $3e $08

jr_011_43c9:
	push af                                          ; $43c9: $f5
	ld   a, $00                                      ; $43ca: $3e $00
	ld   bc, $0004                                   ; $43cc: $01 $04 $00
	call MemCopy                                       ; $43cf: $cd $a9 $09
	pop  af                                          ; $43d2: $f1
	dec  a                                           ; $43d3: $3d
	jr   z, jr_011_43e3                              ; $43d4: $28 $0d

	ld   bc, $001c                                   ; $43d6: $01 $1c $00
	add  hl, bc                                      ; $43d9: $09
	push hl                                          ; $43da: $e5
	ld   h, d                                        ; $43db: $62
	ld   l, e                                        ; $43dc: $6b
	add  hl, bc                                      ; $43dd: $09
	ld   e, l                                        ; $43de: $5d
	ld   d, h                                        ; $43df: $54
	pop  hl                                          ; $43e0: $e1
	jr   jr_011_43c9                                 ; $43e1: $18 $e6

jr_011_43e3:
	ret                                              ; $43e3: $c9


Call_011_43e4:
	xor  a                                           ; $43e4: $af
	ldh  [rVBK], a                                   ; $43e5: $e0 $4f
	ld   de, $99c4                                   ; $43e7: $11 $c4 $99
	ld   a, $00                                      ; $43ea: $3e $00
	ld   hl, $9874                                   ; $43ec: $21 $74 $98
	ld   bc, $0004                                   ; $43ef: $01 $04 $00
	call HBlankFarMemCopy                                       ; $43f2: $cd $23 $0a
	ld   de, $9a04                                   ; $43f5: $11 $04 $9a
	ld   a, $00                                      ; $43f8: $3e $00
	ld   hl, $98b4                                   ; $43fa: $21 $b4 $98
	ld   bc, $0004                                   ; $43fd: $01 $04 $00
	call HBlankFarMemCopy                                       ; $4400: $cd $23 $0a
	ret                                              ; $4403: $c9


Call_011_4404:
	xor  a                                           ; $4404: $af
	ldh  [rVBK], a                                   ; $4405: $e0 $4f
	ld   de, $99c4                                   ; $4407: $11 $c4 $99
	ld   a, $00                                      ; $440a: $3e $00
	ld   hl, $9814                                   ; $440c: $21 $14 $98
	ld   bc, $0004                                   ; $440f: $01 $04 $00
	call HBlankFarMemCopy                                       ; $4412: $cd $23 $0a
	ld   de, $9a04                                   ; $4415: $11 $04 $9a
	ld   a, $00                                      ; $4418: $3e $00
	ld   hl, $9854                                   ; $441a: $21 $54 $98
	ld   bc, $0004                                   ; $441d: $01 $04 $00
	call HBlankFarMemCopy                                       ; $4420: $cd $23 $0a
	ret                                              ; $4423: $c9


Call_011_4424:
	bit  0, a                                        ; $4424: $cb $47
	jr   z, jr_011_442c                              ; $4426: $28 $04

	res  0, a                                        ; $4428: $cb $87
	set  4, a                                        ; $442a: $cb $e7

jr_011_442c:
	bit  1, a                                        ; $442c: $cb $4f
	jr   z, jr_011_4434                              ; $442e: $28 $04

	res  1, a                                        ; $4430: $cb $8f
	set  5, a                                        ; $4432: $cb $ef

jr_011_4434:
	ret                                              ; $4434: $c9


Call_011_4435:
	xor  a                                           ; $4435: $af
	ld   [$c7f6], a                                  ; $4436: $ea $f6 $c7
	ld   a, [wInGameButtonsPressed]                                  ; $4439: $fa $10 $c2
	and  $33                                         ; $443c: $e6 $33
	jr   z, jr_011_4446                              ; $443e: $28 $06

	call Call_011_4424                               ; $4440: $cd $24 $44
	ld   [$c7f6], a                                  ; $4443: $ea $f6 $c7

jr_011_4446:
	ld   a, [wInGameButtonsHeld]                                  ; $4446: $fa $0f $c2
	and  $33                                         ; $4449: $e6 $33
	jr   z, jr_011_4488                              ; $444b: $28 $3b

	call Call_011_4424                               ; $444d: $cd $24 $44
	ld   [$c7f7], a                                  ; $4450: $ea $f7 $c7
	call Call_011_43e4                               ; $4453: $cd $e4 $43
	ld   a, [$c7f7]                                  ; $4456: $fa $f7 $c7
	bit  7, a                                        ; $4459: $cb $7f
	jr   z, jr_011_4462                              ; $445b: $28 $05

	ld   a, $10                                      ; $445d: $3e $10
	call Call_011_48fe                               ; $445f: $cd $fe $48

jr_011_4462:
	ld   a, [$c7f7]                                  ; $4462: $fa $f7 $c7
	bit  6, a                                        ; $4465: $cb $77
	jr   z, jr_011_446e                              ; $4467: $28 $05

	ld   a, $10                                      ; $4469: $3e $10
	call Call_011_48ee                               ; $446b: $cd $ee $48

jr_011_446e:
	ld   a, [$c7f7]                                  ; $446e: $fa $f7 $c7
	bit  5, a                                        ; $4471: $cb $6f
	jr   z, jr_011_447a                              ; $4473: $28 $05

	ld   a, $10                                      ; $4475: $3e $10
	call Call_011_491e                               ; $4477: $cd $1e $49

jr_011_447a:
	ld   a, [$c7f7]                                  ; $447a: $fa $f7 $c7
	bit  4, a                                        ; $447d: $cb $67
	jr   z, jr_011_448b                              ; $447f: $28 $0a

	ld   a, $10                                      ; $4481: $3e $10
	call Call_011_490e                               ; $4483: $cd $0e $49
	jr   jr_011_448b                                 ; $4486: $18 $03

jr_011_4488:
	call Call_011_4404                               ; $4488: $cd $04 $44

jr_011_448b:
	ret                                              ; $448b: $c9


Call_011_448c:
	xor  a                                           ; $448c: $af
	ld   [$c7e6], a                                  ; $448d: $ea $e6 $c7
	ld   [$c7e7], a                                  ; $4490: $ea $e7 $c7
	ld   [$c7ea], a                                  ; $4493: $ea $ea $c7
	ld   [$c7f2], a                                  ; $4496: $ea $f2 $c7
	ld   [$c7f3], a                                  ; $4499: $ea $f3 $c7
	ld   [$c7f8], a                                  ; $449c: $ea $f8 $c7
	ld   [$c7f9], a                                  ; $449f: $ea $f9 $c7
	ld   a, $01                                      ; $44a2: $3e $01
	ld   [$c7e9], a                                  ; $44a4: $ea $e9 $c7
	ld   a, $02                                      ; $44a7: $3e $02
	ld   [$c7e8], a                                  ; $44a9: $ea $e8 $c7
	ld   hl, $4db7                                   ; $44ac: $21 $b7 $4d
	ld   a, [$c806]                                  ; $44af: $fa $06 $c8
	add  a                                           ; $44b2: $87
	ld   c, a                                        ; $44b3: $4f
	ld   b, $00                                      ; $44b4: $06 $00
	add  hl, bc                                      ; $44b6: $09
	ld   a, [hl+]                                    ; $44b7: $2a
	ld   [$c802], a                                  ; $44b8: $ea $02 $c8
	ld   h, [hl]                                     ; $44bb: $66
	ld   l, a                                        ; $44bc: $6f
	ld   a, h                                        ; $44bd: $7c
	ld   [$c803], a                                  ; $44be: $ea $03 $c8
	ld   a, [hl+]                                    ; $44c1: $2a
	ld   [$c800], a                                  ; $44c2: $ea $00 $c8
	ld   [$c7eb], a                                  ; $44c5: $ea $eb $c7
	ld   a, [hl+]                                    ; $44c8: $2a
	ld   [$c801], a                                  ; $44c9: $ea $01 $c8
	ld   [$c7ec], a                                  ; $44cc: $ea $ec $c7
	ld   a, $ff                                      ; $44cf: $3e $ff
	ld   [$c7ff], a                                  ; $44d1: $ea $ff $c7
	ld   a, $00                                      ; $44d4: $3e $00
	call Call_011_4803                               ; $44d6: $cd $03 $48
	ret                                              ; $44d9: $c9


Call_011_44da:
	ld   e, $00                                      ; $44da: $1e $00
	ld   a, [$c7eb]                                  ; $44dc: $fa $eb $c7
	ld   l, a                                        ; $44df: $6f
	ld   a, [$c7ec]                                  ; $44e0: $fa $ec $c7
	ld   h, a                                        ; $44e3: $67
	ld   bc, $ff00                                   ; $44e4: $01 $00 $ff
	add  hl, bc                                      ; $44e7: $09
	ld   a, [$c800]                                  ; $44e8: $fa $00 $c8
	ld   c, a                                        ; $44eb: $4f
	ld   a, [$c801]                                  ; $44ec: $fa $01 $c8
	ld   b, a                                        ; $44ef: $47

jr_011_44f0:
	bit  7, h                                        ; $44f0: $cb $7c
	jr   nz, jr_011_44f8                             ; $44f2: $20 $04

	ld   a, h                                        ; $44f4: $7c
	or   l                                           ; $44f5: $b5
	jr   nz, jr_011_44fc                             ; $44f6: $20 $04

jr_011_44f8:
	add  hl, bc                                      ; $44f8: $09
	inc  e                                           ; $44f9: $1c
	jr   jr_011_44f0                                 ; $44fa: $18 $f4

jr_011_44fc:
	ld   a, e                                        ; $44fc: $7b
	ld   [$c7ed], a                                  ; $44fd: $ea $ed $c7
	ld   a, l                                        ; $4500: $7d
	ld   [$c7eb], a                                  ; $4501: $ea $eb $c7
	ld   a, h                                        ; $4504: $7c
	ld   [$c7ec], a                                  ; $4505: $ea $ec $c7
	ret                                              ; $4508: $c9


Call_011_4509:
	ld   a, [$c7e8]                                  ; $4509: $fa $e8 $c7
	cp   $ff                                         ; $450c: $fe $ff
	jr   z, jr_011_456f                              ; $450e: $28 $5f

	ld   hl, $c7e9                                   ; $4510: $21 $e9 $c7
	dec  [hl]                                        ; $4513: $35
	jr   nz, jr_011_456f                             ; $4514: $20 $59

	ld   hl, $c7e8                                   ; $4516: $21 $e8 $c7
	ld   a, [hl]                                     ; $4519: $7e
	inc  [hl]                                        ; $451a: $34
	inc  [hl]                                        ; $451b: $34
	inc  [hl]                                        ; $451c: $34
	ld   c, a                                        ; $451d: $4f
	ld   b, $00                                      ; $451e: $06 $00
	ld   hl, $c802                                   ; $4520: $21 $02 $c8
	ld   a, [hl+]                                    ; $4523: $2a
	ld   h, [hl]                                     ; $4524: $66
	ld   l, a                                        ; $4525: $6f
	add  hl, bc                                      ; $4526: $09
	ld   a, [hl+]                                    ; $4527: $2a
	cp   $ff                                         ; $4528: $fe $ff
	jr   z, jr_011_456a                              ; $452a: $28 $3e

	ld   [$c7e9], a                                  ; $452c: $ea $e9 $c7
	ld   d, h                                        ; $452f: $54
	ld   e, l                                        ; $4530: $5d
	ld   a, [$c7e7]                                  ; $4531: $fa $e7 $c7
	call Call_011_49f5                               ; $4534: $cd $f5 $49
	ld   hl, $c7e6                                   ; $4537: $21 $e6 $c7
	cp   [hl]                                        ; $453a: $be
	jr   z, jr_011_4561                              ; $453b: $28 $24

	ld   a, [$c7e7]                                  ; $453d: $fa $e7 $c7
	ld   c, a                                        ; $4540: $4f
	ld   b, $00                                      ; $4541: $06 $00
	ld   hl, $c7a8                                   ; $4543: $21 $a8 $c7
	add  hl, bc                                      ; $4546: $09
	ld   a, [de]                                     ; $4547: $1a
	ld   [hl], a                                     ; $4548: $77
	inc  de                                          ; $4549: $13
	ld   hl, $c7c7                                   ; $454a: $21 $c7 $c7
	add  hl, bc                                      ; $454d: $09
	ld   a, [de]                                     ; $454e: $1a
	ld   [hl], a                                     ; $454f: $77
	ld   hl, $c789                                   ; $4550: $21 $89 $c7
	add  hl, bc                                      ; $4553: $09
	ld   a, $99                                      ; $4554: $3e $99
	ld   [hl], a                                     ; $4556: $77
	ld   hl, $c7e7                                   ; $4557: $21 $e7 $c7
	ld   a, [hl]                                     ; $455a: $7e
	call Call_011_49f5                               ; $455b: $cd $f5 $49
	ld   [hl], a                                     ; $455e: $77
	jr   jr_011_456f                                 ; $455f: $18 $0e

jr_011_4561:
	jr   jr_011_4561                                 ; $4561: $18 $fe

	xor  a                                           ; $4563: $af
	ld   [$c7e6], a                                  ; $4564: $ea $e6 $c7
	ld   [$c7e7], a                                  ; $4567: $ea $e7 $c7

jr_011_456a:
	ld   a, $ff                                      ; $456a: $3e $ff
	ld   [$c7e8], a                                  ; $456c: $ea $e8 $c7

jr_011_456f:
	ret                                              ; $456f: $c9


Call_011_4570:
	ld   a, [$c7e6]                                  ; $4570: $fa $e6 $c7
	ld   c, a                                        ; $4573: $4f
	ld   b, $00                                      ; $4574: $06 $00

jr_011_4576:
	ld   hl, $c789                                   ; $4576: $21 $89 $c7
	add  hl, bc                                      ; $4579: $09
	ld   a, [$c7ed]                                  ; $457a: $fa $ed $c7
	ld   e, a                                        ; $457d: $5f
	ld   a, [hl]                                     ; $457e: $7e
	sub  e                                           ; $457f: $93
	ld   [hl], a                                     ; $4580: $77
	cp   $0f                                         ; $4581: $fe $0f
	jr   nc, jr_011_458f                             ; $4583: $30 $0a

	ld   hl, $c7e6                                   ; $4585: $21 $e6 $c7
	ld   a, [hl]                                     ; $4588: $7e
	call Call_011_49f5                               ; $4589: $cd $f5 $49
	ld   [hl], a                                     ; $458c: $77
	jr   jr_011_45a7                                 ; $458d: $18 $18

jr_011_458f:
	push bc                                          ; $458f: $c5
	ld   hl, $c7a8                                   ; $4590: $21 $a8 $c7
	add  hl, bc                                      ; $4593: $09
	ld   b, a                                        ; $4594: $47
	ld   a, [hl]                                     ; $4595: $7e
	cp   $08                                         ; $4596: $fe $08
	jr   z, jr_011_45a6                              ; $4598: $28 $0c

	ld   c, $80                                      ; $459a: $0e $80
	ld   a, $0a                                      ; $459c: $3e $0a
	ld   [wSpriteGroup], a                                  ; $459e: $ea $1a $c2
	ld   a, $1c                                      ; $45a1: $3e $1c
	call LoadSpriteFromMainTable                                       ; $45a3: $cd $16 $0e

jr_011_45a6:
	pop  bc                                          ; $45a6: $c1

jr_011_45a7:
	ld   a, c                                        ; $45a7: $79
	call Call_011_49f5                               ; $45a8: $cd $f5 $49
	ld   c, a                                        ; $45ab: $4f
	ld   hl, $c7e7                                   ; $45ac: $21 $e7 $c7
	cp   [hl]                                        ; $45af: $be
	jr   nz, jr_011_4576                             ; $45b0: $20 $c4

	ret                                              ; $45b2: $c9


Call_011_45b3:
	ld   hl, $c7ea                                   ; $45b3: $21 $ea $c7
	ld   a, [hl]                                     ; $45b6: $7e
	call Call_011_49f5                               ; $45b7: $cd $f5 $49
	ld   [hl], a                                     ; $45ba: $77
	ret                                              ; $45bb: $c9


Call_011_45bc:
	ld   hl, $c7f8                                   ; $45bc: $21 $f8 $c7
	ld   a, [hl]                                     ; $45bf: $7e
	and  a                                           ; $45c0: $a7
	jr   z, jr_011_45d9                              ; $45c1: $28 $16

	dec  [hl]                                        ; $45c3: $35
	ld   b, $2c                                      ; $45c4: $06 $2c
	ld   c, $68                                      ; $45c6: $0e $68
	ld   a, $0a                                      ; $45c8: $3e $0a
	ld   [wSpriteGroup], a                                  ; $45ca: $ea $1a $c2
	ld   a, $1d                                      ; $45cd: $3e $1d
	call LoadSpriteFromMainTable                                       ; $45cf: $cd $16 $0e
	ld   a, $4c                                      ; $45d2: $3e $4c
	ld   c, $58                                      ; $45d4: $0e $58
	ld   hl, $c7f2                                   ; $45d6: $21 $f2 $c7

jr_011_45d9:
	ld   hl, $c7f9                                   ; $45d9: $21 $f9 $c7
	ld   a, [hl]                                     ; $45dc: $7e
	and  a                                           ; $45dd: $a7
	jr   z, jr_011_45fd                              ; $45de: $28 $1d

	dec  [hl]                                        ; $45e0: $35
	cp   $01                                         ; $45e1: $fe $01
	jr   nz, jr_011_45ef                             ; $45e3: $20 $0a

	ld   a, [$c7fe]                                  ; $45e5: $fa $fe $c7
	cp   $00                                         ; $45e8: $fe $00
	jr   nz, jr_011_45ef                             ; $45ea: $20 $03

	call Call_011_4397                               ; $45ec: $cd $97 $43

jr_011_45ef:
	ld   b, $2c                                      ; $45ef: $06 $2c
	ld   c, $68                                      ; $45f1: $0e $68
	ld   a, $0a                                      ; $45f3: $3e $0a
	ld   [wSpriteGroup], a                                  ; $45f5: $ea $1a $c2
	ld   a, $19                                      ; $45f8: $3e $19
	call LoadSpriteFromMainTable                                       ; $45fa: $cd $16 $0e

jr_011_45fd:
	ret                                              ; $45fd: $c9


Call_011_45fe:
	xor  a                                           ; $45fe: $af
	ld   [$c7f9], a                                  ; $45ff: $ea $f9 $c7
	ld   a, $10                                      ; $4602: $3e $10
	ld   [$c7f8], a                                  ; $4604: $ea $f8 $c7
	ret                                              ; $4607: $c9


Call_011_4608:
	xor  a                                           ; $4608: $af
	ld   [$c7f8], a                                  ; $4609: $ea $f8 $c7
	ld   a, $10                                      ; $460c: $3e $10
	ld   [$c7f9], a                                  ; $460e: $ea $f9 $c7
	ld   a, $09                                      ; $4611: $3e $09
	call PlaySoundEffect                                       ; $4613: $cd $df $1a
	ld   hl, $db00                                   ; $4616: $21 $00 $db
	ld   de, $da00                                   ; $4619: $11 $00 $da
	jp   Jump_011_43ac                               ; $461c: $c3 $ac $43


Call_011_461f:
	ld   hl, $c789                                   ; $461f: $21 $89 $c7
	add  hl, bc                                      ; $4622: $09
	ld   a, [hl]                                     ; $4623: $7e
	sub  $03                                         ; $4624: $d6 $03
	sub  $27                                         ; $4626: $d6 $27
	cp   $0b                                         ; $4628: $fe $0b
	jr   nc, jr_011_4656                             ; $462a: $30 $2a

	ld   e, a                                        ; $462c: $5f
	ld   d, $00                                      ; $462d: $16 $00
	ld   hl, $4657                                   ; $462f: $21 $57 $46
	add  hl, de                                      ; $4632: $19
	ld   a, [hl]                                     ; $4633: $7e
	ld   [$c7f2], a                                  ; $4634: $ea $f2 $c7
	ld   e, a                                        ; $4637: $5f
	ld   d, $00                                      ; $4638: $16 $00
	ld   hl, $c7f0                                   ; $463a: $21 $f0 $c7
	ld   a, [hl+]                                    ; $463d: $2a
	ld   h, [hl]                                     ; $463e: $66
	ld   l, a                                        ; $463f: $6f
	add  hl, de                                      ; $4640: $19
	ld   a, h                                        ; $4641: $7c
	cp   $27                                         ; $4642: $fe $27
	jr   c, jr_011_464e                              ; $4644: $38 $08

	ld   a, l                                        ; $4646: $7d
	cp   $0f                                         ; $4647: $fe $0f
	jr   c, jr_011_464e                              ; $4649: $38 $03

	ld   hl, $270f                                   ; $464b: $21 $0f $27

jr_011_464e:
	ld   a, l                                        ; $464e: $7d
	ld   [$c7f0], a                                  ; $464f: $ea $f0 $c7
	ld   a, h                                        ; $4652: $7c
	ld   [$c7f1], a                                  ; $4653: $ea $f1 $c7

jr_011_4656:
	ret                                              ; $4656: $c9


	inc  d                                           ; $4657: $14
	jr   z, @+$3e                                    ; $4658: $28 $3c

	ld   d, b                                        ; $465a: $50
	ld   h, h                                        ; $465b: $64
	ld   h, h                                        ; $465c: $64
	ld   h, h                                        ; $465d: $64
	ld   d, b                                        ; $465e: $50
	inc  a                                           ; $465f: $3c
	jr   z, @+$16                                    ; $4660: $28 $14

Call_011_4662:
	push bc                                          ; $4662: $c5
	ld   hl, $c7a8                                   ; $4663: $21 $a8 $c7
	add  hl, bc                                      ; $4666: $09
	ld   a, [hl]                                     ; $4667: $7e
	cp   $08                                         ; $4668: $fe $08
	jr   z, jr_011_4687                              ; $466a: $28 $1b

	ld   a, [$c7f6]                                  ; $466c: $fa $f6 $c7
	and  a                                           ; $466f: $a7
	jr   z, jr_011_46ad                              ; $4670: $28 $3b

	ld   e, [hl]                                     ; $4672: $5e
	ld   d, $00                                      ; $4673: $16 $00
	ld   hl, $46af                                   ; $4675: $21 $af $46
	add  hl, de                                      ; $4678: $19
	cp   [hl]                                        ; $4679: $be
	jr   nz, jr_011_4697                             ; $467a: $20 $1b

	call Call_011_461f                               ; $467c: $cd $1f $46
	call Call_011_45fe                               ; $467f: $cd $fe $45
	push bc                                          ; $4682: $c5
	call Call_011_4397                               ; $4683: $cd $97 $43
	pop  bc                                          ; $4686: $c1

jr_011_4687:
	ld   hl, $c7c7                                   ; $4687: $21 $c7 $c7
	add  hl, bc                                      ; $468a: $09
	ld   a, [hl]                                     ; $468b: $7e
	call Call_011_4803                               ; $468c: $cd $03 $48
	call Func_11_4bc2                                       ; $468f: $cd $c2 $4b
	call Call_011_45b3                               ; $4692: $cd $b3 $45
	jr   jr_011_46ad                                 ; $4695: $18 $16

jr_011_4697:
	ld   hl, $c7c7                                   ; $4697: $21 $c7 $c7
	add  hl, bc                                      ; $469a: $09
	ld   a, [hl]                                     ; $469b: $7e
	ld   e, a                                        ; $469c: $5f
	ld   d, $00                                      ; $469d: $16 $00
	ld   hl, $46b7                                   ; $469f: $21 $b7 $46
	add  hl, de                                      ; $46a2: $19
	ld   a, [hl]                                     ; $46a3: $7e
	call Call_011_4803                               ; $46a4: $cd $03 $48
	call Call_011_4608                               ; $46a7: $cd $08 $46
	call Call_011_45b3                               ; $46aa: $cd $b3 $45

jr_011_46ad:
	pop  bc                                          ; $46ad: $c1
	ret                                              ; $46ae: $c9


	nop                                              ; $46af: $00
	nop                                              ; $46b0: $00
	nop                                              ; $46b1: $00
	nop                                              ; $46b2: $00
	db   $10                                         ; $46b3: $10
	jr   nz, @+$42                                   ; $46b4: $20 $40

	add  b                                           ; $46b6: $80
	nop                                              ; $46b7: $00
	ld   bc, $0302                                   ; $46b8: $01 $02 $03
	inc  b                                           ; $46bb: $04
	dec  b                                           ; $46bc: $05
	ld   b, $07                                      ; $46bd: $06 $07
	ld   [$0a09], sp                                 ; $46bf: $08 $09 $0a
	dec  bc                                          ; $46c2: $0b
	inc  c                                           ; $46c3: $0c
	dec  c                                           ; $46c4: $0d
	ld   c, $0f                                      ; $46c5: $0e $0f
	db   $10                                         ; $46c7: $10
	ld   de, $1312                                   ; $46c8: $11 $12 $13
	inc  d                                           ; $46cb: $14
	dec  d                                           ; $46cc: $15
	ld   d, $17                                      ; $46cd: $16 $17
	jr   @+$1b                                       ; $46cf: $18 $19

	ld   a, [de]                                     ; $46d1: $1a
	dec  de                                          ; $46d2: $1b
	inc  e                                           ; $46d3: $1c
	dec  e                                           ; $46d4: $1d
	ld   e, $87                                      ; $46d5: $1e $87
	ld   c, a                                        ; $46d7: $4f
	ld   b, $00                                      ; $46d8: $06 $00
	ld   hl, $4703                                   ; $46da: $21 $03 $47
	add  hl, bc                                      ; $46dd: $09
	ld   a, [hl+]                                    ; $46de: $2a
	ld   b, [hl]                                     ; $46df: $46
	ld   c, a                                        ; $46e0: $4f
	ld   a, [$c7fa]                                  ; $46e1: $fa $fa $c7
	cp   $00                                         ; $46e4: $fe $00
	jr   z, jr_011_46f2                              ; $46e6: $28 $0a

	ld   hl, $4000                                   ; $46e8: $21 $00 $40
	ld   a, $12                                      ; $46eb: $3e $12
	ld   de, $8200                                   ; $46ed: $11 $00 $82
	jr   jr_011_46fa                                 ; $46f0: $18 $08

jr_011_46f2:
	ld   hl, $4000                                   ; $46f2: $21 $00 $40
	ld   a, $13                                      ; $46f5: $3e $13
	ld   de, $8000                                   ; $46f7: $11 $00 $80

jr_011_46fa:
	add  hl, bc                                      ; $46fa: $09
	ld   c, $01                                      ; $46fb: $0e $01
	ld   b, $20                                      ; $46fd: $06 $20
	call EnqueueHDMATransfer                                       ; $46ff: $cd $7c $02
	ret                                              ; $4702: $c9


	nop                                              ; $4703: $00
	nop                                              ; $4704: $00
	nop                                              ; $4705: $00
	ld   [bc], a                                     ; $4706: $02
	nop                                              ; $4707: $00
	inc  b                                           ; $4708: $04
	nop                                              ; $4709: $00
	ld   b, $00                                      ; $470a: $06 $00
	ld   [$0a00], sp                                 ; $470c: $08 $00 $0a
	nop                                              ; $470f: $00
	inc  c                                           ; $4710: $0c
	nop                                              ; $4711: $00
	ld   c, $00                                      ; $4712: $0e $00
	stop                                             ; $4714: $10 $00
	ld   [de], a                                     ; $4716: $12
	nop                                              ; $4717: $00
	inc  d                                           ; $4718: $14
	nop                                              ; $4719: $00
	ld   d, $00                                      ; $471a: $16 $00
	jr   jr_011_471e                                 ; $471c: $18 $00

jr_011_471e:
	ld   a, [de]                                     ; $471e: $1a
	nop                                              ; $471f: $00
	inc  e                                           ; $4720: $1c
	nop                                              ; $4721: $00
	ld   e, $00                                      ; $4722: $1e $00
	jr   nz, jr_011_4726                             ; $4724: $20 $00

jr_011_4726:
	ld   [hl+], a                                    ; $4726: $22
	nop                                              ; $4727: $00
	inc  h                                           ; $4728: $24
	nop                                              ; $4729: $00
	jr   jr_011_472c                                 ; $472a: $18 $00

jr_011_472c:
	ld   a, [de]                                     ; $472c: $1a
	nop                                              ; $472d: $00
	jr   nz, jr_011_4730                             ; $472e: $20 $00

jr_011_4730:
	ld   [hl+], a                                    ; $4730: $22
	nop                                              ; $4731: $00
	inc  h                                           ; $4732: $24
	nop                                              ; $4733: $00
	inc  e                                           ; $4734: $1c
	nop                                              ; $4735: $00
	ld   e, $00                                      ; $4736: $1e $00
	inc  e                                           ; $4738: $1c
	nop                                              ; $4739: $00
	inc  e                                           ; $473a: $1c
	nop                                              ; $473b: $00
	ld   h, $00                                      ; $473c: $26 $00
	jr   z, jr_011_4740                              ; $473e: $28 $00

jr_011_4740:
	nop                                              ; $4740: $00

Call_011_4741:
	ld   hl, $c7fd                                   ; $4741: $21 $fd $c7
	ld   a, [hl]                                     ; $4744: $7e
	and  a                                           ; $4745: $a7
	jr   z, jr_011_4779                              ; $4746: $28 $31

	dec  [hl]                                        ; $4748: $35
	jr   nz, jr_011_4779                             ; $4749: $20 $2e

	ld   a, [$c7fb]                                  ; $474b: $fa $fb $c7
	add  a                                           ; $474e: $87
	ld   c, a                                        ; $474f: $4f
	ld   b, $00                                      ; $4750: $06 $00
	ld   hl, $477d                                   ; $4752: $21 $7d $47
	add  hl, bc                                      ; $4755: $09
	ld   a, [hl+]                                    ; $4756: $2a
	ld   h, [hl]                                     ; $4757: $66
	ld   l, a                                        ; $4758: $6f
	ld   a, [$c7fc]                                  ; $4759: $fa $fc $c7
	inc  a                                           ; $475c: $3c
	ld   [$c7fc], a                                  ; $475d: $ea $fc $c7
	add  a                                           ; $4760: $87
	ld   c, a                                        ; $4761: $4f
	ld   b, $00                                      ; $4762: $06 $00
	add  hl, bc                                      ; $4764: $09

jr_011_4765:
	ld   a, [hl+]                                    ; $4765: $2a
	cp   $ff                                         ; $4766: $fe $ff
	jr   nz, jr_011_476f                             ; $4768: $20 $05

	ld   hl, $47bb                                   ; $476a: $21 $bb $47
	jr   jr_011_4765                                 ; $476d: $18 $f6

jr_011_476f:
	ld   [$c7fd], a                                  ; $476f: $ea $fd $c7
	ld   a, [hl]                                     ; $4772: $7e
	ld   [$c7fe], a                                  ; $4773: $ea $fe $c7
	call $46d6                                       ; $4776: $cd $d6 $46

jr_011_4779:
	call Call_011_4811                               ; $4779: $cd $11 $48
	ret                                              ; $477c: $c9


	cp   e                                           ; $477d: $bb
	ld   b, a                                        ; $477e: $47
	cp   l                                           ; $477f: $bd
	ld   b, a                                        ; $4780: $47
	jp   nz, $c747                                   ; $4781: $c2 $47 $c7

	ld   b, a                                        ; $4784: $47
	ret                                              ; $4785: $c9


	ld   b, a                                        ; $4786: $47
	bit  0, a                                        ; $4787: $cb $47
	adc  $47                                         ; $4789: $ce $47
	ret  nc                                          ; $478b: $d0

	ld   b, a                                        ; $478c: $47
	db   $d3                                         ; $478d: $d3
	ld   b, a                                        ; $478e: $47
	push de                                          ; $478f: $d5
	ld   b, a                                        ; $4790: $47
	ret  c                                           ; $4791: $d8

	ld   b, a                                        ; $4792: $47
	jp   c, $dd47                                    ; $4793: $da $47 $dd

	ld   b, a                                        ; $4796: $47
	rst  JumpTable                                         ; $4797: $df
	ld   b, a                                        ; $4798: $47
	ldh  [c], a                                      ; $4799: $e2
	ld   b, a                                        ; $479a: $47
	db   $e4                                         ; $479b: $e4
	ld   b, a                                        ; $479c: $47
	jp   hl                                          ; $479d: $e9


	ld   b, a                                        ; $479e: $47
	db   $eb                                         ; $479f: $eb
	ld   b, a                                        ; $47a0: $47
	db   $ed                                         ; $47a1: $ed
	ld   b, a                                        ; $47a2: $47
	ldh  a, [rBGP]                                   ; $47a3: $f0 $47
	ldh  a, [c]                                      ; $47a5: $f2
	ld   b, a                                        ; $47a6: $47
	db   $fc                                         ; $47a7: $fc
	ld   b, a                                        ; $47a8: $47
	cp   $47                                         ; $47a9: $fe $47
	nop                                              ; $47ab: $00
	ld   c, b                                        ; $47ac: $48
	push af                                          ; $47ad: $f5
	ld   b, a                                        ; $47ae: $47
	rst  $30                                         ; $47af: $f7
	ld   b, a                                        ; $47b0: $47
	ld   sp, hl                                      ; $47b1: $f9
	ld   b, a                                        ; $47b2: $47
	and  $47                                         ; $47b3: $e6 $47
	cp   a                                           ; $47b5: $bf
	ld   b, a                                        ; $47b6: $47
	call nz, $bb47                                   ; $47b7: $c4 $47 $bb
	ld   b, a                                        ; $47ba: $47
	nop                                              ; $47bb: $00
	nop                                              ; $47bc: $00
	inc  b                                           ; $47bd: $04
	ld   bc, $1c09                                   ; $47be: $01 $09 $1c
	rst  $38                                         ; $47c1: $ff
	inc  b                                           ; $47c2: $04
	ld   [bc], a                                     ; $47c3: $02
	add  hl, bc                                      ; $47c4: $09
	dec  e                                           ; $47c5: $1d
	rst  $38                                         ; $47c6: $ff
	dec  b                                           ; $47c7: $05
	inc  bc                                          ; $47c8: $03
	dec  c                                           ; $47c9: $0d
	inc  b                                           ; $47ca: $04
	rlca                                             ; $47cb: $07
	dec  b                                           ; $47cc: $05
	rst  $38                                         ; $47cd: $ff
	ld   [$1406], sp                                 ; $47ce: $08 $06 $14
	rlca                                             ; $47d1: $07
	rst  $38                                         ; $47d2: $ff
	ld   [$0b08], sp                                 ; $47d3: $08 $08 $0b
	add  hl, bc                                      ; $47d6: $09
	rst  $38                                         ; $47d7: $ff
	add  hl, bc                                      ; $47d8: $09
	ld   a, [bc]                                     ; $47d9: $0a
	dec  bc                                          ; $47da: $0b
	dec  bc                                          ; $47db: $0b
	rst  $38                                         ; $47dc: $ff
	rlca                                             ; $47dd: $07
	inc  c                                           ; $47de: $0c
	ld   a, [bc]                                     ; $47df: $0a
	dec  c                                           ; $47e0: $0d
	rst  $38                                         ; $47e1: $ff
	inc  bc                                          ; $47e2: $03
	ld   c, $0a                                      ; $47e3: $0e $0a
	rrca                                             ; $47e5: $0f
	ld   a, [bc]                                     ; $47e6: $0a
	dec  de                                          ; $47e7: $1b
	rst  $38                                         ; $47e8: $ff
	ld   [$0710], sp                                 ; $47e9: $08 $10 $07
	ld   de, $120a                                   ; $47ec: $11 $0a $12
	rst  $38                                         ; $47ef: $ff
	rlca                                             ; $47f0: $07
	inc  de                                          ; $47f1: $13
	ld   a, [bc]                                     ; $47f2: $0a
	inc  d                                           ; $47f3: $14
	rst  $38                                         ; $47f4: $ff
	inc  bc                                          ; $47f5: $03
	jr   jr_011_4802                                 ; $47f6: $18 $0a

	add  hl, de                                      ; $47f8: $19
	ld   a, [bc]                                     ; $47f9: $0a
	ld   a, [de]                                     ; $47fa: $1a
	rst  $38                                         ; $47fb: $ff
	ld   [$0715], sp                                 ; $47fc: $08 $15 $07
	ld   d, $0a                                      ; $47ff: $16 $0a
	rla                                              ; $4801: $17

jr_011_4802:
	rst  $38                                         ; $4802: $ff

Call_011_4803:
	ld   [$c7fb], a                                  ; $4803: $ea $fb $c7
	ld   a, $ff                                      ; $4806: $3e $ff
	ld   [$c7fc], a                                  ; $4808: $ea $fc $c7
	ld   a, $01                                      ; $480b: $3e $01
	ld   [$c7fd], a                                  ; $480d: $ea $fd $c7
	ret                                              ; $4810: $c9


Call_011_4811:
	ld   a, $0a                                      ; $4811: $3e $0a
	ld   [wSpriteGroup], a                                  ; $4813: $ea $1a $c2
	ld   b, $68                                      ; $4816: $06 $68
	ld   c, $10                                      ; $4818: $0e $10
	ld   hl, $4835                                   ; $481a: $21 $35 $48
	ld   a, [$c7fa]                                  ; $481d: $fa $fa $c7
	cp   $00                                         ; $4820: $fe $00
	jr   z, jr_011_4829                              ; $4822: $28 $05

	ld   b, $18                                      ; $4824: $06 $18
	ld   hl, $4853                                   ; $4826: $21 $53 $48

jr_011_4829:
	ld   a, [$c7fe]                                  ; $4829: $fa $fe $c7
	ld   e, a                                        ; $482c: $5f
	ld   d, $00                                      ; $482d: $16 $00
	add  hl, de                                      ; $482f: $19
	ld   a, [hl]                                     ; $4830: $7e
	call LoadSpriteFromMainTable                                       ; $4831: $cd $16 $0e
	ret                                              ; $4834: $c9


	ld   e, $1e                                      ; $4835: $1e $1e
	ld   e, $1e                                      ; $4837: $1e $1e
	ld   e, $1e                                      ; $4839: $1e $1e
	ld   e, $1e                                      ; $483b: $1e $1e
	ld   e, $1e                                      ; $483d: $1e $1e
	ld   e, $1e                                      ; $483f: $1e $1e
	rra                                              ; $4841: $1f
	jr   nz, @+$23                                   ; $4842: $20 $21

	ld   [hl+], a                                    ; $4844: $22
	inc  hl                                          ; $4845: $23
	inc  h                                           ; $4846: $24
	dec  h                                           ; $4847: $25
	dec  hl                                          ; $4848: $2b
	inc  l                                           ; $4849: $2c
	ld   h, $27                                      ; $484a: $26 $27
	jr   z, jr_011_4877                              ; $484c: $28 $29

	ld   a, [hl+]                                    ; $484e: $2a
	add  hl, hl                                      ; $484f: $29
	ld   hl, $1e1e                                   ; $4850: $21 $1e $1e
	nop                                              ; $4853: $00
	nop                                              ; $4854: $00
	nop                                              ; $4855: $00
	nop                                              ; $4856: $00
	nop                                              ; $4857: $00
	nop                                              ; $4858: $00
	nop                                              ; $4859: $00
	nop                                              ; $485a: $00
	nop                                              ; $485b: $00
	nop                                              ; $485c: $00
	nop                                              ; $485d: $00
	nop                                              ; $485e: $00
	ld   bc, $0302                                   ; $485f: $01 $02 $03
	inc  b                                           ; $4862: $04
	dec  b                                           ; $4863: $05
	ld   b, $07                                      ; $4864: $06 $07
	dec  c                                           ; $4866: $0d
	ld   c, $08                                      ; $4867: $0e $08
	add  hl, bc                                      ; $4869: $09
	ld   a, [bc]                                     ; $486a: $0a
	dec  bc                                          ; $486b: $0b
	inc  c                                           ; $486c: $0c
	dec  bc                                          ; $486d: $0b
	inc  bc                                          ; $486e: $03
	nop                                              ; $486f: $00
	nop                                              ; $4870: $00

Call_011_4871:
	ld   hl, $c7e7                                   ; $4871: $21 $e7 $c7
	ld   a, [$c7ea]                                  ; $4874: $fa $ea $c7

jr_011_4877:
	cp   [hl]                                        ; $4877: $be
	ret  z                                           ; $4878: $c8

	ld   c, a                                        ; $4879: $4f
	ld   b, $00                                      ; $487a: $06 $00
	ld   hl, $c789                                   ; $487c: $21 $89 $c7
	add  hl, bc                                      ; $487f: $09
	ld   a, [hl]                                     ; $4880: $7e
	sub  $03                                         ; $4881: $d6 $03
	cp   $27                                         ; $4883: $fe $27
	jr   c, jr_011_48c4                              ; $4885: $38 $3d

	cp   $32                                         ; $4887: $fe $32
	jr   nc, jr_011_48ed                             ; $4889: $30 $62

	ld   a, [$c7fa]                                  ; $488b: $fa $fa $c7
	cp   $01                                         ; $488e: $fe $01
	jr   nz, jr_011_4897                             ; $4890: $20 $05

	call Call_011_4662                               ; $4892: $cd $62 $46
	jr   jr_011_48ac                                 ; $4895: $18 $15

jr_011_4897:
	ld   a, [$c7ea]                                  ; $4897: $fa $ea $c7
	ld   hl, $c7ff                                   ; $489a: $21 $ff $c7
	cp   [hl]                                        ; $489d: $be
	jr   z, jr_011_48ac                              ; $489e: $28 $0c

	ld   [hl], a                                     ; $48a0: $77
	ld   hl, $c7c7                                   ; $48a1: $21 $c7 $c7
	add  hl, bc                                      ; $48a4: $09
	ld   a, [hl]                                     ; $48a5: $7e
	call Call_011_4803                               ; $48a6: $cd $03 $48
	call Func_11_4bc2                                       ; $48a9: $cd $c2 $4b

jr_011_48ac:
	ld   hl, $c7a8                                   ; $48ac: $21 $a8 $c7
	add  hl, bc                                      ; $48af: $09
	ld   a, [hl]                                     ; $48b0: $7e
	rst  JumpTable                                         ; $48b1: $df
	db   $ed                                         ; $48b2: $ed
	ld   c, b                                        ; $48b3: $48
	db   $ed                                         ; $48b4: $ed
	ld   c, b                                        ; $48b5: $48
	db   $ed                                         ; $48b6: $ed
	ld   c, b                                        ; $48b7: $48
	db   $ed                                         ; $48b8: $ed
	ld   c, b                                        ; $48b9: $48
	pop  hl                                          ; $48ba: $e1
	ld   c, b                                        ; $48bb: $48
	add  sp, $48                                     ; $48bc: $e8 $48
	db   $d3                                         ; $48be: $d3
	ld   c, b                                        ; $48bf: $48
	jp   c, $ed48                                    ; $48c0: $da $48 $ed

	ld   c, b                                        ; $48c3: $48

jr_011_48c4:
	ld   a, [$c7fa]                                  ; $48c4: $fa $fa $c7
	cp   $01                                         ; $48c7: $fe $01
	jr   nz, jr_011_48ce                             ; $48c9: $20 $03

	call Call_011_4608                               ; $48cb: $cd $08 $46

jr_011_48ce:
	call Call_011_45b3                               ; $48ce: $cd $b3 $45
	jr   jr_011_48ed                                 ; $48d1: $18 $1a

	ld   a, $60                                      ; $48d3: $3e $60
	call Call_011_48ee                               ; $48d5: $cd $ee $48
	jr   jr_011_48ed                                 ; $48d8: $18 $13

	ld   a, $60                                      ; $48da: $3e $60
	call Call_011_48fe                               ; $48dc: $cd $fe $48
	jr   jr_011_48ed                                 ; $48df: $18 $0c

	ld   a, $60                                      ; $48e1: $3e $60
	call Call_011_490e                               ; $48e3: $cd $0e $49
	jr   jr_011_48ed                                 ; $48e6: $18 $05

	ld   a, $60                                      ; $48e8: $3e $60
	call Call_011_491e                               ; $48ea: $cd $1e $49

jr_011_48ed:
	ret                                              ; $48ed: $c9


Call_011_48ee:
	add  $18                                         ; $48ee: $c6 $18
	ld   b, a                                        ; $48f0: $47
	ld   c, $10                                      ; $48f1: $0e $10
	ld   a, $0a                                      ; $48f3: $3e $0a
	ld   [wSpriteGroup], a                                  ; $48f5: $ea $1a $c2
	ld   a, $1a                                      ; $48f8: $3e $1a
	call LoadSpriteFromMainTable                                       ; $48fa: $cd $16 $0e
	ret                                              ; $48fd: $c9


Call_011_48fe:
	add  $18                                         ; $48fe: $c6 $18
	ld   b, a                                        ; $4900: $47
	ld   c, $48                                      ; $4901: $0e $48
	ld   a, $0a                                      ; $4903: $3e $0a
	ld   [wSpriteGroup], a                                  ; $4905: $ea $1a $c2
	ld   a, $1b                                      ; $4908: $3e $1b
	call LoadSpriteFromMainTable                                       ; $490a: $cd $16 $0e
	ret                                              ; $490d: $c9


Call_011_490e:
	add  $30                                         ; $490e: $c6 $30
	ld   b, a                                        ; $4910: $47
	ld   c, $40                                      ; $4911: $0e $40
	ld   a, $0a                                      ; $4913: $3e $0a
	ld   [wSpriteGroup], a                                  ; $4915: $ea $1a $c2
	ld   a, $1a                                      ; $4918: $3e $1a
	call LoadSpriteFromMainTable                                       ; $491a: $cd $16 $0e
	ret                                              ; $491d: $c9


Call_011_491e:
	ld   b, a                                        ; $491e: $47
	ld   c, $40                                      ; $491f: $0e $40
	ld   a, $0a                                      ; $4921: $3e $0a
	ld   [wSpriteGroup], a                                  ; $4923: $ea $1a $c2
	ld   a, $1b                                      ; $4926: $3e $1b
	call LoadSpriteFromMainTable                                       ; $4928: $cd $16 $0e
	ret                                              ; $492b: $c9


Call_011_492c:
	ld   [$c7f4], a                                  ; $492c: $ea $f4 $c7
	ld   a, c                                        ; $492f: $79
	ld   [$c7f5], a                                  ; $4930: $ea $f5 $c7
	ld   a, $0a                                      ; $4933: $3e $0a
	ld   [wSpriteGroup], a                                  ; $4935: $ea $1a $c2
	ld   a, [hl+]                                    ; $4938: $2a
	ld   h, [hl]                                     ; $4939: $66
	ld   l, a                                        ; $493a: $6f
	call $0da8                                       ; $493b: $cd $a8 $0d
	ld   c, a                                        ; $493e: $4f
	ld   b, $00                                      ; $493f: $06 $00
	ld   hl, $4994                                   ; $4941: $21 $94 $49
	add  hl, bc                                      ; $4944: $09
	ld   a, [$c7f4]                                  ; $4945: $fa $f4 $c7
	ld   b, a                                        ; $4948: $47
	ld   a, [$c7f5]                                  ; $4949: $fa $f5 $c7
	ld   c, a                                        ; $494c: $4f
	ld   a, [hl]                                     ; $494d: $7e
	call LoadSpriteFromMainTable                                       ; $494e: $cd $16 $0e
	pop  af                                          ; $4951: $f1
	ld   c, a                                        ; $4952: $4f
	ld   b, $00                                      ; $4953: $06 $00
	ld   hl, $4994                                   ; $4955: $21 $94 $49
	add  hl, bc                                      ; $4958: $09
	ld   a, [$c7f4]                                  ; $4959: $fa $f4 $c7
	sub  $08                                         ; $495c: $d6 $08
	ld   b, a                                        ; $495e: $47
	ld   a, [$c7f5]                                  ; $495f: $fa $f5 $c7
	ld   c, a                                        ; $4962: $4f
	ld   a, [hl]                                     ; $4963: $7e
	call LoadSpriteFromMainTable                                       ; $4964: $cd $16 $0e
	pop  af                                          ; $4967: $f1
	ld   c, a                                        ; $4968: $4f
	ld   b, $00                                      ; $4969: $06 $00
	ld   hl, $4994                                   ; $496b: $21 $94 $49
	add  hl, bc                                      ; $496e: $09
	ld   a, [$c7f4]                                  ; $496f: $fa $f4 $c7
	sub  $10                                         ; $4972: $d6 $10
	ld   b, a                                        ; $4974: $47
	ld   a, [$c7f5]                                  ; $4975: $fa $f5 $c7
	ld   c, a                                        ; $4978: $4f
	ld   a, [hl]                                     ; $4979: $7e
	call LoadSpriteFromMainTable                                       ; $497a: $cd $16 $0e
	pop  af                                          ; $497d: $f1
	ld   c, a                                        ; $497e: $4f
	ld   b, $00                                      ; $497f: $06 $00
	ld   hl, $4994                                   ; $4981: $21 $94 $49
	add  hl, bc                                      ; $4984: $09
	ld   a, [$c7f4]                                  ; $4985: $fa $f4 $c7
	sub  $18                                         ; $4988: $d6 $18
	ld   b, a                                        ; $498a: $47
	ld   a, [$c7f5]                                  ; $498b: $fa $f5 $c7
	ld   c, a                                        ; $498e: $4f
	ld   a, [hl]                                     ; $498f: $7e
	call LoadSpriteFromMainTable                                       ; $4990: $cd $16 $0e
	ret                                              ; $4993: $c9


	rrca                                             ; $4994: $0f
	db   $10                                         ; $4995: $10
	ld   de, $1312                                   ; $4996: $11 $12 $13

jr_011_4999:
	inc  d                                           ; $4999: $14
	dec  d                                           ; $499a: $15
	ld   d, $17                                      ; $499b: $16 $17
	jr   jr_011_4999                                 ; $499d: $18 $fa

	sub  e                                           ; $499f: $93
	jp   nz, $3ef5                                   ; $49a0: $c2 $f5 $3e

	inc  bc                                          ; $49a3: $03
	ld   [wWramBank], a                                  ; $49a4: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $49a7: $e0 $70
	ld   hl, $c7ee                                   ; $49a9: $21 $ee $c7
	ld   a, [hl+]                                    ; $49ac: $2a
	ld   h, [hl]                                     ; $49ad: $66
	ld   l, a                                        ; $49ae: $6f
	call $0da8                                       ; $49af: $cd $a8 $0d
	ld   hl, $de12                                   ; $49b2: $21 $12 $de
	add  $40                                         ; $49b5: $c6 $40
	ld   [hl-], a                                    ; $49b7: $32
	pop  af                                          ; $49b8: $f1
	add  $40                                         ; $49b9: $c6 $40
	ld   [hl-], a                                    ; $49bb: $32
	pop  af                                          ; $49bc: $f1
	add  $40                                         ; $49bd: $c6 $40
	ld   [hl-], a                                    ; $49bf: $32
	pop  af                                          ; $49c0: $f1
	add  $40                                         ; $49c1: $c6 $40
	ld   [hl-], a                                    ; $49c3: $32
	ld   hl, $c7f0                                   ; $49c4: $21 $f0 $c7
	ld   a, [hl+]                                    ; $49c7: $2a
	ld   h, [hl]                                     ; $49c8: $66
	ld   l, a                                        ; $49c9: $6f
	call $0da8                                       ; $49ca: $cd $a8 $0d
	ld   hl, $de08                                   ; $49cd: $21 $08 $de
	add  $40                                         ; $49d0: $c6 $40
	ld   [hl-], a                                    ; $49d2: $32
	pop  af                                          ; $49d3: $f1
	add  $40                                         ; $49d4: $c6 $40
	ld   [hl-], a                                    ; $49d6: $32
	pop  af                                          ; $49d7: $f1
	add  $40                                         ; $49d8: $c6 $40
	ld   [hl-], a                                    ; $49da: $32
	pop  af                                          ; $49db: $f1
	add  $40                                         ; $49dc: $c6 $40
	ld   [hl-], a                                    ; $49de: $32
	pop  af                                          ; $49df: $f1
	ld   [wWramBank], a                                  ; $49e0: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $49e3: $e0 $70
	ld   c, $80                                      ; $49e5: $0e $80
	ld   de, $9800                                   ; $49e7: $11 $00 $98
	ld   a, $03                                      ; $49ea: $3e $03
	ld   hl, $de00                                   ; $49ec: $21 $00 $de
	ld   b, $02                                      ; $49ef: $06 $02
	call EnqueueHDMATransfer                                       ; $49f1: $cd $7c $02
	ret                                              ; $49f4: $c9


Call_011_49f5:
	inc  a                                           ; $49f5: $3c
	cp   $1f                                         ; $49f6: $fe $1f
	ret  c                                           ; $49f8: $d8

	xor  a                                           ; $49f9: $af
	ret                                              ; $49fa: $c9


Call_011_49fb:
	ld   a, [$c7e6]                                  ; $49fb: $fa $e6 $c7
	ld   hl, $c7e7                                   ; $49fe: $21 $e7 $c7
	cp   [hl]                                        ; $4a01: $be
	jr   nz, jr_011_4a0f                             ; $4a02: $20 $0b

	ld   a, [$c7e8]                                  ; $4a04: $fa $e8 $c7
	cp   $ff                                         ; $4a07: $fe $ff
	jr   nz, jr_011_4a0f                             ; $4a09: $20 $04

	ld   hl, wGameSubstate                                   ; $4a0b: $21 $a1 $c2
	inc  [hl]                                        ; $4a0e: $34

jr_011_4a0f:
	ret                                              ; $4a0f: $c9


Call_011_4a10:
	ld   c, $80                                      ; $4a10: $0e $80
	ld   de, $9880                                   ; $4a12: $11 $80 $98
	ld   a, $03                                      ; $4a15: $3e $03
	ld   hl, $d100                                   ; $4a17: $21 $00 $d1
	ld   b, $0a                                      ; $4a1a: $06 $0a
	call EnqueueHDMATransfer                                       ; $4a1c: $cd $7c $02
	ld   c, $81                                      ; $4a1f: $0e $81
	ld   de, $9880                                   ; $4a21: $11 $80 $98
	ld   a, $03                                      ; $4a24: $3e $03
	ld   hl, $d400                                   ; $4a26: $21 $00 $d4
	ld   b, $0a                                      ; $4a29: $06 $0a
	call EnqueueHDMATransfer                                       ; $4a2b: $cd $7c $02
	ret                                              ; $4a2e: $c9


Call_011_4a2f:
	ld   hl, $d500                                   ; $4a2f: $21 $00 $d5
	ld   de, $d200                                   ; $4a32: $11 $00 $d2
	jp   Jump_011_43ac                               ; $4a35: $c3 $ac $43


Call_011_4a38:
	ld   hl, $d300                                   ; $4a38: $21 $00 $d3
	ld   de, $d000                                   ; $4a3b: $11 $00 $d0
	jp   Jump_011_43ac                               ; $4a3e: $c3 $ac $43


Call_011_4a41:
	ld   a, [wWramBank]                                  ; $4a41: $fa $93 $c2
	push af                                          ; $4a44: $f5
	ld   a, $03                                      ; $4a45: $3e $03
	ld   [wWramBank], a                                  ; $4a47: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4a4a: $e0 $70
	ld   hl, $9840                                   ; $4a4c: $21 $40 $98
	ld   de, $d300                                   ; $4a4f: $11 $00 $d3
	ld   bc, $0100                                   ; $4a52: $01 $00 $01
	call MemCopy                                       ; $4a55: $cd $a9 $09
	ld   hl, $9880                                   ; $4a58: $21 $80 $98
	ld   de, $d400                                   ; $4a5b: $11 $00 $d4
	ld   bc, $00a0                                   ; $4a5e: $01 $a0 $00
	call MemCopy                                       ; $4a61: $cd $a9 $09
	ld   hl, $9840                                   ; $4a64: $21 $40 $98
	ld   de, $d500                                   ; $4a67: $11 $00 $d5
	ld   bc, $0100                                   ; $4a6a: $01 $00 $01
	call MemCopy                                       ; $4a6d: $cd $a9 $09
	ld   hl, $99d4                                   ; $4a70: $21 $d4 $99
	ld   de, $d405                                   ; $4a73: $11 $05 $d4
	call Call_011_4b67                               ; $4a76: $cd $67 $4b
	ld   hl, $9a74                                   ; $4a79: $21 $74 $9a
	ld   de, $d545                                   ; $4a7c: $11 $45 $d5
	call Call_011_4b67                               ; $4a7f: $cd $67 $4b
	ld   hl, $9840                                   ; $4a82: $21 $40 $98
	ld   de, $d700                                   ; $4a85: $11 $00 $d7
	ld   bc, $0100                                   ; $4a88: $01 $00 $01
	call MemCopy                                       ; $4a8b: $cd $a9 $09
	ld   hl, $9a48                                   ; $4a8e: $21 $48 $9a
	ld   de, $d703                                   ; $4a91: $11 $03 $d7
	call Call_011_43c7                               ; $4a94: $cd $c7 $43
	ld   hl, $9840                                   ; $4a97: $21 $40 $98
	ld   de, $d900                                   ; $4a9a: $11 $00 $d9
	ld   bc, $0100                                   ; $4a9d: $01 $00 $01
	call MemCopy                                       ; $4aa0: $cd $a9 $09
	ld   hl, $9a48                                   ; $4aa3: $21 $48 $9a
	ld   de, $d90d                                   ; $4aa6: $11 $0d $d9
	call Call_011_43c7                               ; $4aa9: $cd $c7 $43
	ld   hl, $9840                                   ; $4aac: $21 $40 $98
	ld   de, $db00                                   ; $4aaf: $11 $00 $db
	ld   bc, $0100                                   ; $4ab2: $01 $00 $01
	call MemCopy                                       ; $4ab5: $cd $a9 $09
	ld   hl, $9a50                                   ; $4ab8: $21 $50 $9a
	ld   de, $db03                                   ; $4abb: $11 $03 $db
	call Call_011_43c7                               ; $4abe: $cd $c7 $43
	ld   de, $de20                                   ; $4ac1: $11 $20 $de
	ld   hl, $9800                                   ; $4ac4: $21 $00 $98
	ld   bc, $0020                                   ; $4ac7: $01 $20 $00
	call MemCopy                                       ; $4aca: $cd $a9 $09
	pop  af                                          ; $4acd: $f1
	ld   [wWramBank], a                                  ; $4ace: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4ad1: $e0 $70
	ret                                              ; $4ad3: $c9


Call_011_4ad4:
	ld   a, [wWramBank]                                  ; $4ad4: $fa $93 $c2
	push af                                          ; $4ad7: $f5
	ld   a, $03                                      ; $4ad8: $3e $03
	ld   [wWramBank], a                                  ; $4ada: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4add: $e0 $70
	ld   hl, $9840                                   ; $4adf: $21 $40 $98
	ld   de, $d000                                   ; $4ae2: $11 $00 $d0
	ld   bc, $0100                                   ; $4ae5: $01 $00 $01
	call MemCopy                                       ; $4ae8: $cd $a9 $09
	ld   hl, $9880                                   ; $4aeb: $21 $80 $98
	ld   de, $d100                                   ; $4aee: $11 $00 $d1
	ld   bc, $00a0                                   ; $4af1: $01 $a0 $00
	call MemCopy                                       ; $4af4: $cd $a9 $09
	ld   hl, $9840                                   ; $4af7: $21 $40 $98
	ld   de, $d200                                   ; $4afa: $11 $00 $d2
	ld   bc, $0100                                   ; $4afd: $01 $00 $01
	call MemCopy                                       ; $4b00: $cd $a9 $09
	ld   hl, $99d4                                   ; $4b03: $21 $d4 $99
	ld   de, $d105                                   ; $4b06: $11 $05 $d1
	call Call_011_4b67                               ; $4b09: $cd $67 $4b
	ld   hl, $9a74                                   ; $4b0c: $21 $74 $9a
	ld   de, $d245                                   ; $4b0f: $11 $45 $d2
	call Call_011_4b67                               ; $4b12: $cd $67 $4b
	ld   hl, $9840                                   ; $4b15: $21 $40 $98
	ld   de, $d600                                   ; $4b18: $11 $00 $d6
	ld   bc, $0100                                   ; $4b1b: $01 $00 $01
	call MemCopy                                       ; $4b1e: $cd $a9 $09
	ld   hl, $9a48                                   ; $4b21: $21 $48 $9a
	ld   de, $d603                                   ; $4b24: $11 $03 $d6
	call Call_011_43c7                               ; $4b27: $cd $c7 $43
	ld   hl, $9840                                   ; $4b2a: $21 $40 $98
	ld   de, $d800                                   ; $4b2d: $11 $00 $d8
	ld   bc, $0100                                   ; $4b30: $01 $00 $01
	call MemCopy                                       ; $4b33: $cd $a9 $09
	ld   hl, $9a48                                   ; $4b36: $21 $48 $9a
	ld   de, $d80d                                   ; $4b39: $11 $0d $d8
	call Call_011_43c7                               ; $4b3c: $cd $c7 $43
	ld   hl, $9840                                   ; $4b3f: $21 $40 $98
	ld   de, $da00                                   ; $4b42: $11 $00 $da
	ld   bc, $0100                                   ; $4b45: $01 $00 $01
	call MemCopy                                       ; $4b48: $cd $a9 $09
	ld   hl, $9a50                                   ; $4b4b: $21 $50 $9a
	ld   de, $da03                                   ; $4b4e: $11 $03 $da
	call Call_011_43c7                               ; $4b51: $cd $c7 $43
	ld   de, $de00                                   ; $4b54: $11 $00 $de
	ld   hl, $9800                                   ; $4b57: $21 $00 $98
	ld   bc, $0020                                   ; $4b5a: $01 $20 $00
	call MemCopy                                       ; $4b5d: $cd $a9 $09
	pop  af                                          ; $4b60: $f1
	ld   [wWramBank], a                                  ; $4b61: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4b64: $e0 $70
	ret                                              ; $4b66: $c9


Call_011_4b67:
	ld   a, $05                                      ; $4b67: $3e $05

jr_011_4b69:
	push af                                          ; $4b69: $f5
	ld   bc, $000a                                   ; $4b6a: $01 $0a $00
	call MemCopy                                       ; $4b6d: $cd $a9 $09
	ld   bc, $0016                                   ; $4b70: $01 $16 $00
	add  hl, bc                                      ; $4b73: $09
	push hl                                          ; $4b74: $e5
	ld   hl, $0016                                   ; $4b75: $21 $16 $00
	add  hl, de                                      ; $4b78: $19
	ld   d, h                                        ; $4b79: $54
	ld   e, l                                        ; $4b7a: $5d
	pop  hl                                          ; $4b7b: $e1
	pop  af                                          ; $4b7c: $f1
	dec  a                                           ; $4b7d: $3d
	jr   nz, jr_011_4b69                             ; $4b7e: $20 $e9

	ret                                              ; $4b80: $c9


todo_GetKannaMiniGameRankInA_1:
	ld   c, $02                                      ; $4b81: $0e $02
	ld   hl, $c7f0                                   ; $4b83: $21 $f0 $c7
	ld   a, [hl+]                                    ; $4b86: $2a
	ld   d, [hl]                                     ; $4b87: $56
	ld   e, a                                        ; $4b88: $5f
	ld   hl, .table                                   ; $4b89: $21 $90 $4b
	call ReturnMiniGameRankInA                               ; $4b8c: $cd $5b $58
	ret                                              ; $4b8f: $c9

.table:
	dw 0
	dw 1000
	dw 2000


todo_GetKannaMiniGameRankInA_2:
	ld   c, $04                                      ; $4b96: $0e $04
	ld   hl, $c7f0                                   ; $4b98: $21 $f0 $c7
	ld   a, [hl+]                                    ; $4b9b: $2a
	ld   d, [hl]                                     ; $4b9c: $56
	ld   e, a                                        ; $4b9d: $5f
	ld   hl, .table1                                  ; $4b9e: $21 $ae $4b
	ld   a, [$c805]                                  ; $4ba1: $fa $05 $c8
	or   a                                           ; $4ba4: $b7
	jr   z, :+                              ; $4ba5: $28 $03
	ld   hl, .table2                                   ; $4ba7: $21 $b8 $4b
:	call ReturnMiniGameRankInA                               ; $4baa: $cd $5b $58
	ret                                              ; $4bad: $c9

.table1:
	dw 0
	dw 840
	dw 1680
	dw 2520
	dw 3360

.table2:
	dw 0
	dw 1560
	dw 3120
	dw 4680
	dw 6240


Func_11_4bc2:
	push bc ; $4bc2: $c5
	ld   a, [$c7fb]                                  ; $4bc3: $fa $fb $c7
	ld   c, a                                        ; $4bc6: $4f
	ld   b, $00                                      ; $4bc7: $06 $00
	ld   hl, $4bd7                                   ; $4bc9: $21 $d7 $4b
	add  hl, bc                                      ; $4bcc: $09
	ld   a, [hl]                                     ; $4bcd: $7e
	cp   $00                                         ; $4bce: $fe $00
	jr   z, jr_011_4bd5                              ; $4bd0: $28 $03

	call PlaySoundEffect                                       ; $4bd2: $cd $df $1a

jr_011_4bd5:
	pop  bc                                          ; $4bd5: $c1
	ret                                              ; $4bd6: $c9


	nop                                              ; $4bd7: $00
	inc  de                                          ; $4bd8: $13
	inc  de                                          ; $4bd9: $13
	inc  de                                          ; $4bda: $13
	inc  de                                          ; $4bdb: $13
	inc  de                                          ; $4bdc: $13
	nop                                              ; $4bdd: $00
	nop                                              ; $4bde: $00
	inc  d                                           ; $4bdf: $14
	inc  d                                           ; $4be0: $14
	inc  de                                          ; $4be1: $13
	inc  de                                          ; $4be2: $13
	dec  d                                           ; $4be3: $15
	dec  d                                           ; $4be4: $15
	inc  d                                           ; $4be5: $14
	inc  d                                           ; $4be6: $14
	dec  d                                           ; $4be7: $15
	dec  d                                           ; $4be8: $15
	dec  d                                           ; $4be9: $15
	dec  d                                           ; $4bea: $15
	dec  d                                           ; $4beb: $15
	dec  d                                           ; $4bec: $15
	dec  d                                           ; $4bed: $15
	dec  d                                           ; $4bee: $15
	inc  d                                           ; $4bef: $14
	inc  d                                           ; $4bf0: $14
	inc  d                                           ; $4bf1: $14
	inc  de                                          ; $4bf2: $13
	inc  de                                          ; $4bf3: $13
	inc  de                                          ; $4bf4: $13
	nop                                              ; $4bf5: $00
	ld   a, c                                        ; $4bf6: $79
	ld   [$c805], a                                  ; $4bf7: $ea $05 $c8
	ld   a, h                                        ; $4bfa: $7c
	ld   [$c809], a                                  ; $4bfb: $ea $09 $c8
	ld   a, l                                        ; $4bfe: $7d
	ld   [$c80a], a                                  ; $4bff: $ea $0a $c8
	ld   a, GS_KANNA_MINI_GAME_MAIN                                      ; $4c02: $3e $0b
	ld   [wGameState], a                                  ; $4c04: $ea $a0 $c2
	ld   a, $00                                      ; $4c07: $3e $00
	ld   [wGameSubstate], a                                  ; $4c09: $ea $a1 $c2
	ret                                              ; $4c0c: $c9


	ld   b, b                                        ; $4c0d: $40
	ld   bc, $08a0                                   ; $4c0e: $01 $a0 $08
	ld   b, $20                                      ; $4c11: $06 $20
	inc  b                                           ; $4c13: $04
	ld   bc, $0420                                   ; $4c14: $01 $20 $04
	ld   [bc], a                                     ; $4c17: $02
	jr   nz, jr_011_4c1e                             ; $4c18: $20 $04

	ld   bc, $0420                                   ; $4c1a: $01 $20 $04
	ld   [bc], a                                     ; $4c1d: $02

jr_011_4c1e:
	jr   nz, jr_011_4c24                             ; $4c1e: $20 $04

	inc  bc                                          ; $4c20: $03
	jr   nz, jr_011_4c27                             ; $4c21: $20 $04

	inc  c                                           ; $4c23: $0c

jr_011_4c24:
	jr   nz, jr_011_4c2a                             ; $4c24: $20 $04

	ld   a, [bc]                                     ; $4c26: $0a

jr_011_4c27:
	jr   nz, @+$06                                   ; $4c27: $20 $04

	db   $10                                         ; $4c29: $10

jr_011_4c2a:
	rst  $38                                         ; $4c2a: $ff
	ld   b, b                                        ; $4c2b: $40
	ld   bc, $0410                                   ; $4c2c: $01 $10 $04
	ld   bc, $0410                                   ; $4c2f: $01 $10 $04
	ld   [bc], a                                     ; $4c32: $02
	db   $10                                         ; $4c33: $10
	ld   [$1000], sp                                 ; $4c34: $08 $00 $10
	inc  b                                           ; $4c37: $04
	inc  bc                                          ; $4c38: $03
	db   $10                                         ; $4c39: $10
	inc  b                                           ; $4c3a: $04
	inc  c                                           ; $4c3b: $0c
	jr   nc, jr_011_4c46                             ; $4c3c: $30 $08

	nop                                              ; $4c3e: $00
	db   $10                                         ; $4c3f: $10
	inc  b                                           ; $4c40: $04
	ld   bc, $0410                                   ; $4c41: $01 $10 $04
	ld   [bc], a                                     ; $4c44: $02
	db   $10                                         ; $4c45: $10

jr_011_4c46:
	ld   [$1000], sp                                 ; $4c46: $08 $00 $10
	inc  b                                           ; $4c49: $04
	inc  bc                                          ; $4c4a: $03
	db   $10                                         ; $4c4b: $10
	inc  b                                           ; $4c4c: $04
	ld   [$40ff], sp                                 ; $4c4d: $08 $ff $40
	ld   bc, $0420                                   ; $4c50: $01 $20 $04
	ld   bc, $0420                                   ; $4c53: $01 $20 $04
	ld   [bc], a                                     ; $4c56: $02
	db   $10                                         ; $4c57: $10
	dec  b                                           ; $4c58: $05
	ld   a, [bc]                                     ; $4c59: $0a
	jr   nz, jr_011_4c61                             ; $4c5a: $20 $05

	ld   c, $10                                      ; $4c5c: $0e $10
	ld   [rROMB0], sp                                 ; $4c5e: $08 $00 $20

jr_011_4c61:
	inc  b                                           ; $4c61: $04
	ld   bc, $0420                                   ; $4c62: $01 $20 $04
	ld   [bc], a                                     ; $4c65: $02
	db   $10                                         ; $4c66: $10
	dec  b                                           ; $4c67: $05
	ld   a, [bc]                                     ; $4c68: $0a
	jr   nz, @+$07                                   ; $4c69: $20 $05

	db   $10                                         ; $4c6b: $10
	rst  $38                                         ; $4c6c: $ff
	daa                                              ; $4c6d: $27
	ld   bc, $0420                                   ; $4c6e: $01 $20 $04
	ld   [bc], a                                     ; $4c71: $02
	db   $10                                         ; $4c72: $10
	dec  b                                           ; $4c73: $05
	ld   a, [bc]                                     ; $4c74: $0a
	jr   nz, jr_011_4c7b                             ; $4c75: $20 $04

	ld   [$0510], sp                                 ; $4c77: $08 $10 $05
	ld   a, [bc]                                     ; $4c7a: $0a

jr_011_4c7b:
	jr   nz, jr_011_4c81                             ; $4c7b: $20 $04

	ld   bc, $0510                                   ; $4c7d: $01 $10 $05
	db   $10                                         ; $4c80: $10

jr_011_4c81:
	jr   nz, @+$06                                   ; $4c81: $20 $04

	ld   [bc], a                                     ; $4c83: $02
	db   $10                                         ; $4c84: $10
	dec  b                                           ; $4c85: $05
	ld   c, $ff                                      ; $4c86: $0e $ff
	ldh  a, [rP1]                                    ; $4c88: $f0 $00
	jr   nc, jr_011_4c90                             ; $4c8a: $30 $04

	ld   [$0530], sp                                 ; $4c8c: $08 $30 $05
	db   $10                                         ; $4c8f: $10

jr_011_4c90:
	jr   jr_011_4c96                                 ; $4c90: $18 $04

	ld   bc, $0418                                   ; $4c92: $01 $18 $04
	ld   [bc], a                                     ; $4c95: $02

jr_011_4c96:
	jr   nc, @+$07                                   ; $4c96: $30 $05

	ld   c, $30                                      ; $4c98: $0e $30
	inc  b                                           ; $4c9a: $04
	ld   bc, $0530                                   ; $4c9b: $01 $30 $05
	ld   [bc], a                                     ; $4c9e: $02
	jr   jr_011_4ca5                                 ; $4c9f: $18 $04

	inc  bc                                          ; $4ca1: $03
	jr   @+$06                                       ; $4ca2: $18 $04

	inc  c                                           ; $4ca4: $0c

jr_011_4ca5:
	ld   h, b                                        ; $4ca5: $60
	dec  b                                           ; $4ca6: $05
	ld   c, $30                                      ; $4ca7: $0e $30
	ld   [$ff06], sp                                 ; $4ca9: $08 $06 $ff
	ld   b, b                                        ; $4cac: $40
	ld   bc, $08a0                                   ; $4cad: $01 $a0 $08
	ld   b, $18                                      ; $4cb0: $06 $18
	inc  b                                           ; $4cb2: $04
	ld   bc, $0530                                   ; $4cb3: $01 $30 $05
	ld   [bc], a                                     ; $4cb6: $02
	jr   nc, jr_011_4cbd                             ; $4cb7: $30 $04

	db   $10                                         ; $4cb9: $10
	jr   @+$06                                       ; $4cba: $18 $04

	inc  bc                                          ; $4cbc: $03

jr_011_4cbd:
	jr   nc, @+$07                                   ; $4cbd: $30 $05

	ld   c, $30                                      ; $4cbf: $0e $30
	inc  b                                           ; $4cc1: $04
	inc  de                                          ; $4cc2: $13
	jr   nc, jr_011_4ccd                             ; $4cc3: $30 $08

	nop                                              ; $4cc5: $00
	jr   nc, @+$06                                   ; $4cc6: $30 $04

	jr   jr_011_4cfa                                 ; $4cc8: $18 $30

	ld   [$ff00], sp                                 ; $4cca: $08 $00 $ff

jr_011_4ccd:
	nop                                              ; $4ccd: $00
	ld   bc, $0420                                   ; $4cce: $01 $20 $04
	inc  bc                                          ; $4cd1: $03
	jr   nz, @+$06                                   ; $4cd2: $20 $04

	inc  c                                           ; $4cd4: $0c
	jr   nz, @+$07                                   ; $4cd5: $20 $05

	ld   c, $20                                      ; $4cd7: $0e $20
	dec  b                                           ; $4cd9: $05
	db   $10                                         ; $4cda: $10
	jr   nz, jr_011_4ce1                             ; $4cdb: $20 $04

	ld   bc, $0420                                   ; $4cdd: $01 $20 $04
	ld   [bc], a                                     ; $4ce0: $02

jr_011_4ce1:
	jr   nz, @+$07                                   ; $4ce1: $20 $05

	ld   a, [bc]                                     ; $4ce3: $0a
	jr   nz, @+$07                                   ; $4ce4: $20 $05

	ld   [$0420], sp                                 ; $4ce6: $08 $20 $04
	ld   a, [bc]                                     ; $4ce9: $0a
	jr   nz, jr_011_4cf0                             ; $4cea: $20 $04

	jr   @+$22                                       ; $4cec: $18 $20

	dec  b                                           ; $4cee: $05
	inc  de                                          ; $4cef: $13

jr_011_4cf0:
	jr   nz, @+$07                                   ; $4cf0: $20 $05

	ld   c, $40                                      ; $4cf2: $0e $40
	inc  b                                           ; $4cf4: $04
	ld   bc, $0440                                   ; $4cf5: $01 $40 $04
	ld   [bc], a                                     ; $4cf8: $02
	rst  $38                                         ; $4cf9: $ff

jr_011_4cfa:
	nop                                              ; $4cfa: $00
	ld   bc, $0520                                   ; $4cfb: $01 $20 $05
	db   $10                                         ; $4cfe: $10
	jr   nz, @+$07                                   ; $4cff: $20 $05

	ld   c, $20                                      ; $4d01: $0e $20
	dec  b                                           ; $4d03: $05
	db   $10                                         ; $4d04: $10
	jr   nz, jr_011_4d0b                             ; $4d05: $20 $04

	inc  c                                           ; $4d07: $0c
	jr   nz, jr_011_4d0f                             ; $4d08: $20 $05

	inc  bc                                          ; $4d0a: $03

jr_011_4d0b:
	jr   nz, @+$07                                   ; $4d0b: $20 $05

	ld   c, $20                                      ; $4d0d: $0e $20

jr_011_4d0f:
	dec  b                                           ; $4d0f: $05
	db   $10                                         ; $4d10: $10
	jr   nz, jr_011_4d17                             ; $4d11: $20 $04

	inc  bc                                          ; $4d13: $03
	jr   nz, @+$07                                   ; $4d14: $20 $05

	inc  c                                           ; $4d16: $0c

jr_011_4d17:
	jr   nz, @+$07                                   ; $4d17: $20 $05

	ld   [bc], a                                     ; $4d19: $02
	jr   nz, @+$07                                   ; $4d1a: $20 $05

	ld   bc, $0420                                   ; $4d1c: $01 $20 $04
	ld   [$0520], sp                                 ; $4d1f: $08 $20 $05
	ld   a, [bc]                                     ; $4d22: $0a
	jr   nz, jr_011_4d2a                             ; $4d23: $20 $05

	inc  de                                          ; $4d25: $13
	db   $10                                         ; $4d26: $10
	dec  b                                           ; $4d27: $05
	ld   [bc], a                                     ; $4d28: $02
	db   $10                                         ; $4d29: $10

jr_011_4d2a:
	dec  b                                           ; $4d2a: $05
	ld   bc, $0420                                   ; $4d2b: $01 $20 $04
	dec  d                                           ; $4d2e: $15
	rst  $38                                         ; $4d2f: $ff
	ld   b, b                                        ; $4d30: $40
	ld   bc, $0410                                   ; $4d31: $01 $10 $04
	ld   bc, $0510                                   ; $4d34: $01 $10 $05
	ld   [bc], a                                     ; $4d37: $02
	db   $10                                         ; $4d38: $10
	inc  b                                           ; $4d39: $04
	ld   bc, $0510                                   ; $4d3a: $01 $10 $05
	ld   [bc], a                                     ; $4d3d: $02
	db   $10                                         ; $4d3e: $10
	inc  b                                           ; $4d3f: $04
	ld   bc, $0510                                   ; $4d40: $01 $10 $05
	ld   [bc], a                                     ; $4d43: $02
	db   $10                                         ; $4d44: $10
	inc  b                                           ; $4d45: $04
	inc  bc                                          ; $4d46: $03
	db   $10                                         ; $4d47: $10
	dec  b                                           ; $4d48: $05
	inc  c                                           ; $4d49: $0c
	db   $10                                         ; $4d4a: $10
	inc  b                                           ; $4d4b: $04
	jr   jr_011_4d8e                                 ; $4d4c: $18 $40

	dec  b                                           ; $4d4e: $05
	ld   c, $ff                                      ; $4d4f: $0e $ff
	nop                                              ; $4d51: $00
	ld   [rRAMG], sp                                 ; $4d52: $08 $00 $00
	ld   bc, $0418                                   ; $4d55: $01 $18 $04
	ld   [bc], a                                     ; $4d58: $02
	jr   jr_011_4d5f                                 ; $4d59: $18 $04

	ld   bc, $0418                                   ; $4d5b: $01 $18 $04
	ld   [bc], a                                     ; $4d5e: $02

jr_011_4d5f:
	jr   nc, jr_011_4d65                             ; $4d5f: $30 $04

	inc  bc                                          ; $4d61: $03
	jr   @+$06                                       ; $4d62: $18 $04

	ld   [bc], a                                     ; $4d64: $02

jr_011_4d65:
	jr   jr_011_4d6b                                 ; $4d65: $18 $04

	ld   bc, $0418                                   ; $4d67: $01 $18 $04
	ld   [bc], a                                     ; $4d6a: $02

jr_011_4d6b:
	jr   nc, jr_011_4d71                             ; $4d6b: $30 $04

	inc  c                                           ; $4d6d: $0c
	jr   @+$06                                       ; $4d6e: $18 $04

	ld   [bc], a                                     ; $4d70: $02

jr_011_4d71:
	jr   jr_011_4d77                                 ; $4d71: $18 $04

	ld   bc, $0418                                   ; $4d73: $01 $18 $04
	ld   [bc], a                                     ; $4d76: $02

jr_011_4d77:
	jr   nc, @+$07                                   ; $4d77: $30 $05

	ld   a, [bc]                                     ; $4d79: $0a
	jr   jr_011_4d80                                 ; $4d7a: $18 $04

	ld   bc, $0418                                   ; $4d7c: $01 $18 $04
	ld   [bc], a                                     ; $4d7f: $02

jr_011_4d80:
	jr   jr_011_4d86                                 ; $4d80: $18 $04

	ld   bc, $0530                                   ; $4d82: $01 $30 $05
	db   $10                                         ; $4d85: $10

jr_011_4d86:
	jr   jr_011_4d8c                                 ; $4d86: $18 $04

	jr   @+$1a                                       ; $4d88: $18 $18

	inc  b                                           ; $4d8a: $04
	inc  bc                                          ; $4d8b: $03

jr_011_4d8c:
	jr   nc, @+$07                                   ; $4d8c: $30 $05

jr_011_4d8e:
	ld   [$00ff], sp                                 ; $4d8e: $08 $ff $00
	ld   bc, $0420                                   ; $4d91: $01 $20 $04
	db   $10                                         ; $4d94: $10
	db   $10                                         ; $4d95: $10
	inc  b                                           ; $4d96: $04
	ld   bc, $0510                                   ; $4d97: $01 $10 $05
	ld   [bc], a                                     ; $4d9a: $02
	ld   h, b                                        ; $4d9b: $60
	inc  b                                           ; $4d9c: $04
	inc  bc                                          ; $4d9d: $03
	jr   nz, jr_011_4da4                             ; $4d9e: $20 $04

	dec  d                                           ; $4da0: $15
	jr   nz, @+$06                                   ; $4da1: $20 $04

	ld   [bc], a                                     ; $4da3: $02

jr_011_4da4:
	jr   nz, jr_011_4daa                             ; $4da4: $20 $04

	ld   bc, $0420                                   ; $4da6: $01 $20 $04
	ld   a, [bc]                                     ; $4da9: $0a

jr_011_4daa:
	db   $10                                         ; $4daa: $10
	inc  b                                           ; $4dab: $04
	ld   [$0510], sp                                 ; $4dac: $08 $10 $05
	inc  bc                                          ; $4daf: $03
	ld   h, b                                        ; $4db0: $60
	inc  b                                           ; $4db1: $04
	ld   c, $30                                      ; $4db2: $0e $30
	ld   [$ff06], sp                                 ; $4db4: $08 $06 $ff
	dec  c                                           ; $4db7: $0d
	ld   c, h                                        ; $4db8: $4c
	dec  hl                                          ; $4db9: $2b
	ld   c, h                                        ; $4dba: $4c
	ld   c, a                                        ; $4dbb: $4f
	ld   c, h                                        ; $4dbc: $4c
	ld   l, l                                        ; $4dbd: $6d
	ld   c, h                                        ; $4dbe: $4c
	adc  b                                           ; $4dbf: $88
	ld   c, h                                        ; $4dc0: $4c
	xor  h                                           ; $4dc1: $ac
	ld   c, h                                        ; $4dc2: $4c
	call $fa4c                                       ; $4dc3: $cd $4c $fa
	ld   c, h                                        ; $4dc6: $4c
	jr   nc, @+$4f                                   ; $4dc7: $30 $4d

	ld   d, h                                        ; $4dc9: $54
	ld   c, l                                        ; $4dca: $4d
	sub  b                                           ; $4dcb: $90
	ld   c, l                                        ; $4dcc: $4d


GameState0c_SakuraMiniGameMain::
	ld   a, [wGameSubstate]                                  ; $4dcd: $fa $a1 $c2
	rst  JumpTable                                         ; $4dd0: $df
	dw SakuraMiniGameMainSubstate0
	dw SakuraMiniGameMainSubstate1
	dw SakuraMiniGameMainSubstate2
	dw SakuraMiniGameMainSubstate3
	dw SakuraMiniGameMainSubstate4
	dw SakuraMiniGameMainSubstate5
	dw SakuraMiniGameMainSubstate6
	dw SakuraMiniGameMainSubstate7
	dw SakuraMiniGameMainSubstate8
	dw SakuraMiniGameMainSubstate9


SakuraMiniGameMainSubstate0:
;
	ld   a, $ff                                    ; $4de5: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $4de7: $ea $0e $c2
	ld   a, $0c                                      ; $4dea: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $4dec: $ea $13 $c2
	ld   a, $04                                      ; $4def: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $4df1: $ea $14 $c2

;
	call ClearOam                                       ; $4df4: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $4df7: $cd $59 $0b

	ld   a, $c3                                      ; $4dfa: $3e $c3
	ld   [wLCDC], a                                  ; $4dfc: $ea $03 $c2

;
	ld   a, [wWramBank]                                  ; $4dff: $fa $93 $c2
	push af                                          ; $4e02: $f5

	ld   a, $03                                      ; $4e03: $3e $03
	ld   [wWramBank], a                                  ; $4e05: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4e08: $e0 $70

;
	ld   a, $15                                      ; $4e0a: $3e $15
	ld   hl, $d000                                   ; $4e0c: $21 $00 $d0
	ld   de, $7f25                                   ; $4e0f: $11 $25 $7f
if def(VWF)
	call SakuraMiniGameHelpScreenTileAttrHook
else
	call RLEXorCopy                                       ; $4e12: $cd $d2 $09
endc

;
	ld   c, $81                                      ; $4e15: $0e $81
	ld   de, $9800                                   ; $4e17: $11 $00 $98
	ld   a, $03                                      ; $4e1a: $3e $03
	ld   hl, $d000                                   ; $4e1c: $21 $00 $d0
	ld   b, $24                                      ; $4e1f: $06 $24
	call EnqueueHDMATransfer                                       ; $4e21: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e24: $cf

;
	ld   a, $1e                                      ; $4e25: $3e $1e
	ld   hl, $d000                                   ; $4e27: $21 $00 $d0
	ld   de, $4604                                   ; $4e2a: $11 $04 $46
if def(VWF)
	call SakuraMiniGameHelpScreenTileMapHook
else
	call RLEXorCopy                                       ; $4e2d: $cd $d2 $09
endc

;
	ld   c, $80                                      ; $4e30: $0e $80
	ld   de, $9800                                   ; $4e32: $11 $00 $98
	ld   a, $03                                      ; $4e35: $3e $03
	ld   hl, $d000                                   ; $4e37: $21 $00 $d0
	ld   b, $24                                      ; $4e3a: $06 $24
	call EnqueueHDMATransfer                                       ; $4e3c: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e3f: $cf

;
	ld   a, $1a                                      ; $4e40: $3e $1a
	ld   hl, $d000                                   ; $4e42: $21 $00 $d0
	ld   de, $6257                                   ; $4e45: $11 $57 $62
if def(VWF)
	call SakuraMiniGameHelpScreenTileDataHook
else
	call RLEXorCopy                                       ; $4e48: $cd $d2 $09
endc

;
	ld   c, $80                                      ; $4e4b: $0e $80
	ld   de, $8800                                   ; $4e4d: $11 $00 $88
	ld   a, $03                                      ; $4e50: $3e $03
	ld   hl, $d000                                   ; $4e52: $21 $00 $d0
	ld   b, $40                                      ; $4e55: $06 $40
	call EnqueueHDMATransfer                                       ; $4e57: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e5a: $cf

;
	ld   c, $80                                      ; $4e5b: $0e $80
	ld   de, $8c00                                   ; $4e5d: $11 $00 $8c
	ld   a, $03                                      ; $4e60: $3e $03
	ld   hl, $d400                                   ; $4e62: $21 $00 $d4
if def(VWF)
	ld   b, $70
else
	ld   b, $40                                      ; $4e65: $06 $40
endc
	call EnqueueHDMATransfer                                       ; $4e67: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e6a: $cf

;
	pop  af                                          ; $4e6b: $f1
	ld   [wWramBank], a                                  ; $4e6c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4e6f: $e0 $70

;
	xor  a                                           ; $4e71: $af
	ld   [wWX], a                                  ; $4e72: $ea $09 $c2
	ld   [wWY], a                                  ; $4e75: $ea $0a $c2
	ld   [wSCX], a                                  ; $4e78: $ea $07 $c2
	ld   [wSCY], a                                  ; $4e7b: $ea $08 $c2
	call ClearBaseAnimSpriteSpecDetails                                       ; $4e7e: $cd $c9 $2e

;
	ld   a, $01                                      ; $4e81: $3e $01
	ld   hl, $7000                                   ; $4e83: $21 $00 $70
	ld   de, wBGPalettes                                   ; $4e86: $11 $de $c2
	ld   bc, $0080                                   ; $4e89: $01 $80 $00
	call FarMemCopy                                       ; $4e8c: $cd $b2 $09

	ld   bc, $003f                                   ; $4e8f: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4e92: $cd $aa $04

;
	xor  a                                           ; $4e95: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4e96: $ea $62 $c3
	ld   a, $20                                      ; $4e99: $3e $20
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4e9b: $ea $63 $c3

	ld   a, $03                                      ; $4e9e: $3e $03
	ld   b, $01                                      ; $4ea0: $06 $01
	ld   hl, $7000                                   ; $4ea2: $21 $00 $70
	ld   c, $1e                                      ; $4ea5: $0e $1e
	ld   de, $798e                                   ; $4ea7: $11 $8e $79
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4eaa: $cd $48 $07

;
	call TurnOnLCD                                       ; $4ead: $cd $09 $09

	ld   a, $07                                      ; $4eb0: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $4eb2: $cd $e0 $1c
	call FadeBGpals8timesHandlingAnimatedSpriteSpecs                               ; $4eb5: $cd $54 $57

;
	ld   a, $1e                                      ; $4eb8: $3e $1e
	ld   hl, $798e                                   ; $4eba: $21 $8e $79
	ld   de, wBGPalettes                                   ; $4ebd: $11 $de $c2
	ld   bc, $0040                                   ; $4ec0: $01 $40 $00
	call FarMemCopy                                       ; $4ec3: $cd $b2 $09

	ld   bc, $001f                                   ; $4ec6: $01 $1f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4ec9: $cd $aa $04

;
	ld   hl, wGameSubstate                                   ; $4ecc: $21 $a1 $c2
	inc  [hl]                                        ; $4ecf: $34
	ret                                              ; $4ed0: $c9


SakuraMiniGameMainSubstate1:
	ld   a, [wInGameButtonsPressed]                                  ; $4ed1: $fa $10 $c2
	and  $03                                         ; $4ed4: $e6 $03
	jr   z, .done                              ; $4ed6: $28 $09

	ld   a, $21                                      ; $4ed8: $3e $21
	call PlaySoundEffect                                       ; $4eda: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $4edd: $21 $a1 $c2
	inc  [hl]                                        ; $4ee0: $34

.done:
	ret                                              ; $4ee1: $c9


SakuraMiniGameMainSubstate2:
	xor  a                                           ; $4ee2: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4ee3: $ea $62 $c3
	ld   a, $20                                      ; $4ee6: $3e $20
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4ee8: $ea $63 $c3
	ld   a, $03                                      ; $4eeb: $3e $03
	ld   b, $1e                                      ; $4eed: $06 $1e
	ld   hl, $798e                                   ; $4eef: $21 $8e $79
	ld   c, $01                                      ; $4ef2: $0e $01
	ld   de, $7000                                   ; $4ef4: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4ef7: $cd $48 $07
	call FadeBGpals8timesHandlingAnimatedSpriteSpecs                               ; $4efa: $cd $54 $57
	ld   a, $01                                      ; $4efd: $3e $01
	ld   hl, $7000                                   ; $4eff: $21 $00 $70
	ld   de, wBGPalettes                                   ; $4f02: $11 $de $c2
	ld   bc, $0040                                   ; $4f05: $01 $40 $00
	call FarMemCopy                                       ; $4f08: $cd $b2 $09
	ld   bc, $001f                                   ; $4f0b: $01 $1f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4f0e: $cd $aa $04
	ld   a, [$c837]                                  ; $4f11: $fa $37 $c8
	ld   [wGameState], a                                  ; $4f14: $ea $a0 $c2
	ld   a, [$c838]                                  ; $4f17: $fa $38 $c8
	ld   [wGameSubstate], a                                  ; $4f1a: $ea $a1 $c2
	ret                                              ; $4f1d: $c9


SakuraMiniGameMainSubstate3:
	call TurnOffLCD                                       ; $4f1e: $cd $e3 $08
	ld   a, $00                                      ; $4f21: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $4f23: $cd $e0 $1c
	xor  a                                           ; $4f26: $af
	call PlaySong                                       ; $4f27: $cd $92 $1a
	ld   a, $ff                                      ; $4f2a: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $4f2c: $ea $0e $c2
	ld   a, $0c                                      ; $4f2f: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $4f31: $ea $13 $c2
	ld   a, $04                                      ; $4f34: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $4f36: $ea $14 $c2
	call ClearOam                                       ; $4f39: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $4f3c: $cd $59 $0b
	ld   a, $03                                      ; $4f3f: $3e $03
	ld   [wLCDC], a                                  ; $4f41: $ea $03 $c2

;
	ld   a, $01                                      ; $4f44: $3e $01
	ldh  [rVBK], a                                   ; $4f46: $e0 $4f
	ld   a, $1d                                      ; $4f48: $3e $1d
	ld   hl, $9800                                   ; $4f4a: $21 $00 $98
	ld   de, $6d99                                   ; $4f4d: $11 $99 $6d
if def(VWF)
	call SakuraMiniGameTileAttrHook1
else
	call RLEXorCopy                                       ; $4f50: $cd $d2 $09
endc

;
	ld   a, $17                                      ; $4f53: $3e $17
	ld   hl, $8800                                   ; $4f55: $21 $00 $88
	ld   de, $4000                                   ; $4f58: $11 $00 $40
if def(VWF)
	call SakuraMiniGameBank1_8800hHook
else
	call RLEXorCopy                                       ; $4f5b: $cd $d2 $09
endc

;
	xor  a                                           ; $4f5e: $af
	ldh  [rVBK], a                                   ; $4f5f: $e0 $4f
	ld   a, $1d                                      ; $4f61: $3e $1d
	ld   hl, $9800                                   ; $4f63: $21 $00 $98
	ld   de, $53b8                                   ; $4f66: $11 $b8 $53
if def(VWF)
	call SakuraMiniGameTileMap1Hook
else
	call RLEXorCopy                                       ; $4f69: $cd $d2 $09
endc

;
	ld   a, $12                                      ; $4f6c: $3e $12
	ld   hl, $8000                                   ; $4f6e: $21 $00 $80
	ld   de, $6a00                                   ; $4f71: $11 $00 $6a
if def(VWF)
	call SakuraMiniGameBank0_8000hHook
else
	call RLEXorCopy                                       ; $4f74: $cd $d2 $09
endc

;
	ld   a, [wWramBank]                                  ; $4f77: $fa $93 $c2
	push af                                          ; $4f7a: $f5
	ld   a, $03                                      ; $4f7b: $3e $03
	ld   [wWramBank], a                                  ; $4f7d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4f80: $e0 $70

; Copy tile map into ram
	ld   a, $1d                                      ; $4f82: $3e $1d
	ld   hl, $d000                                   ; $4f84: $21 $00 $d0
	ld   de, $53b8                                   ; $4f87: $11 $b8 $53
if def(VWF)
	call SakuraMiniGameTileMap2Hook
else
	call RLEXorCopy                                       ; $4f8a: $cd $d2 $09
endc

; Copy tile attr into ram
if def(VWF)
	M_FarCall SakuraMiniGameTileAttrHook2
else
	ld   a, $1d                                      ; $4f8d: $3e $1d
	ld   hl, $d400                                   ; $4f8f: $21 $00 $d4
	ld   de, $6d99                                   ; $4f92: $11 $99 $6d
	call RLEXorCopy                                       ; $4f95: $cd $d2 $09

;
	ld   de, $d800                                   ; $4f98: $11 $00 $d8
	ld   hl, $d040                                   ; $4f9b: $21 $40 $d0
	ld   bc, $0080                                   ; $4f9e: $01 $80 $00
endc
	call MemCopy                                       ; $4fa1: $cd $a9 $09
	ld   de, $d880                                   ; $4fa4: $11 $80 $d8
	ld   hl, $d440                                   ; $4fa7: $21 $40 $d4
	ld   bc, $0080                                   ; $4faa: $01 $80 $00
	call MemCopy                                       ; $4fad: $cd $a9 $09
	pop  af                                          ; $4fb0: $f1
	ld   [wWramBank], a                                  ; $4fb1: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4fb4: $e0 $70
	xor  a                                           ; $4fb6: $af
	ld   [wWY], a                                  ; $4fb7: $ea $0a $c2
	ld   [wWX], a                                  ; $4fba: $ea $09 $c2
	ld   [wSCX], a                                  ; $4fbd: $ea $07 $c2
	ld   [wSCY], a                                  ; $4fc0: $ea $08 $c2
	ld   hl, $c81c                                   ; $4fc3: $21 $1c $c8
	ld   [hl+], a                                    ; $4fc6: $22
	ld   [hl], a                                     ; $4fc7: $77
	ld   [$c818], a                                  ; $4fc8: $ea $18 $c8
	ld   [$c832], a                                  ; $4fcb: $ea $32 $c8
	ld   [$c833], a                                  ; $4fce: $ea $33 $c8
	ld   a, $0a                                      ; $4fd1: $3e $0a
	ld   [$c82a], a                                  ; $4fd3: $ea $2a $c8
	ld   a, $02                                      ; $4fd6: $3e $02
	ld   [$c819], a                                  ; $4fd8: $ea $19 $c8
	ld   a, $3c                                      ; $4fdb: $3e $3c
	ld   [wRandomNumRange], a                                  ; $4fdd: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $4fe0: $cd $70 $0c
	call GetRandomNumInPreSpecifiedRange                                       ; $4fe3: $cd $10 $0d
	and  $f0                                         ; $4fe6: $e6 $f0
	swap a                                           ; $4fe8: $cb $37
	or   a                                           ; $4fea: $b7
	jr   z, :+                              ; $4feb: $28 $02
	add  $05                                         ; $4fed: $c6 $05
:	ld   [$c831], a                                  ; $4fef: $ea $31 $c8
	call Call_011_525d                               ; $4ff2: $cd $5d $52
	call AnimateAllAnimatedSpriteSpecs                                       ; $4ff5: $cd $d3 $2e
	xor  a                                           ; $4ff8: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4ff9: $ea $62 $c3
	ld   a, $40                                      ; $4ffc: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4ffe: $ea $63 $c3
	ld   a, $03                                      ; $5001: $3e $03
	ld   b, $01                                      ; $5003: $06 $01
	ld   hl, $7000                                   ; $5005: $21 $00 $70
	ld   c, $1e                                      ; $5008: $0e $1e
	ld   de, $64fc                                   ; $500a: $11 $fc $64
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $500d: $cd $48 $07
	call TurnOnLCD                                       ; $5010: $cd $09 $09
	ld   a, $0e                                      ; $5013: $3e $0e
	call PlaySong                                       ; $5015: $cd $92 $1a
	ld   a, $07                                      ; $5018: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $501a: $cd $e0 $1c
	call Call_011_56e5                               ; $501d: $cd $e5 $56
	call FadeBGpals8timesHandlingAnimatedSpriteSpecs                               ; $5020: $cd $54 $57
	ld   a, $1e                                      ; $5023: $3e $1e
	ld   hl, $64fc                                   ; $5025: $21 $fc $64
	ld   de, wBGPalettes                                   ; $5028: $11 $de $c2
	ld   bc, $0080                                   ; $502b: $01 $80 $00
	call FarMemCopy                                       ; $502e: $cd $b2 $09
	ld   bc, $003f                                   ; $5031: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5034: $cd $aa $04
	ld   hl, wGameSubstate                                   ; $5037: $21 $a1 $c2
	inc  [hl]                                        ; $503a: $34
	ret                                              ; $503b: $c9


SakuraMiniGameMainSubstate4:
	ld   bc, $0014                                   ; $503c: $01 $14 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $503f: $cd $79 $0a
	ld   c, $80                                      ; $5042: $0e $80
	ld   de, $9840                                   ; $5044: $11 $40 $98
	ld   a, $03                                      ; $5047: $3e $03
	ld   hl, $d340                                   ; $5049: $21 $40 $d3
	ld   b, $08                                      ; $504c: $06 $08
	call EnqueueHDMATransfer                                       ; $504e: $cd $7c $02
	ld   c, $81                                      ; $5051: $0e $81
	ld   de, $9840                                   ; $5053: $11 $40 $98
	ld   a, $03                                      ; $5056: $3e $03
	ld   hl, $d740                                   ; $5058: $21 $40 $d7
	ld   b, $08                                      ; $505b: $06 $08
	call EnqueueHDMATransfer                                       ; $505d: $cd $7c $02
	ld   c, $3c                                      ; $5060: $0e $3c

jr_011_5062:
	push bc                                          ; $5062: $c5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5063: $cf
	pop  bc                                          ; $5064: $c1
	ld   a, [wInGameButtonsPressed]                                  ; $5065: $fa $10 $c2
	and  $01                                         ; $5068: $e6 $01
	jr   z, jr_011_5073                              ; $506a: $28 $07

	ld   a, $21                                      ; $506c: $3e $21
	call PlaySoundEffect                                       ; $506e: $cd $df $1a
	jr   jr_011_5076                                 ; $5071: $18 $03

jr_011_5073:
	dec  c                                           ; $5073: $0d
	jr   nz, jr_011_5062                             ; $5074: $20 $ec

jr_011_5076:
	call Call_011_507e                               ; $5076: $cd $7e $50
	ld   hl, wGameSubstate                                   ; $5079: $21 $a1 $c2
	inc  [hl]                                        ; $507c: $34
	ret                                              ; $507d: $c9


Call_011_507e:
	ld   c, $80                                      ; $507e: $0e $80
	ld   de, $9840                                   ; $5080: $11 $40 $98
	ld   a, $03                                      ; $5083: $3e $03
	ld   hl, $d040                                   ; $5085: $21 $40 $d0
	ld   b, $08                                      ; $5088: $06 $08
	call EnqueueHDMATransfer                                       ; $508a: $cd $7c $02
	ld   c, $81                                      ; $508d: $0e $81
	ld   de, $9840                                   ; $508f: $11 $40 $98
	ld   a, $03                                      ; $5092: $3e $03
	ld   hl, $d440                                   ; $5094: $21 $40 $d4
	ld   b, $08                                      ; $5097: $06 $08
	call EnqueueHDMATransfer                                       ; $5099: $cd $7c $02
	ret                                              ; $509c: $c9


SakuraMiniGameMainSubstate5:
	call ClearOam                                       ; $509d: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $50a0: $cd $d3 $2e
	call Call_011_5386                               ; $50a3: $cd $86 $53
	call Call_011_5411                               ; $50a6: $cd $11 $54
	call Call_011_5475                               ; $50a9: $cd $75 $54
	call $5692                                       ; $50ac: $cd $92 $56
	call Call_011_5573                               ; $50af: $cd $73 $55
	ld   a, [$c832]                                  ; $50b2: $fa $32 $c8
	cp   $29                                         ; $50b5: $fe $29
	jr   nz, jr_011_50c3                             ; $50b7: $20 $0a

	ld   hl, $c833                                   ; $50b9: $21 $33 $c8
	ld   a, [hl]                                     ; $50bc: $7e
	or   a                                           ; $50bd: $b7
	jr   z, jr_011_50c3                              ; $50be: $28 $03

	dec  [hl]                                        ; $50c0: $35
	jr   jr_011_50cf                                 ; $50c1: $18 $0c

jr_011_50c3:
	ld   hl, $c832                                   ; $50c3: $21 $32 $c8
	ld   a, [hl]                                     ; $50c6: $7e
	or   a                                           ; $50c7: $b7
	jr   z, jr_011_50cf                              ; $50c8: $28 $05

	ld   [hl], $00                                   ; $50ca: $36 $00
	call PlaySoundEffect                                       ; $50cc: $cd $df $1a

jr_011_50cf:
	ret                                              ; $50cf: $c9


SakuraMiniGameMainSubstate6:
	ld   hl, wGameSubstate                                   ; $50d0: $21 $a1 $c2
	inc  [hl]                                        ; $50d3: $34
	ld   hl, $c82a                                   ; $50d4: $21 $2a $c8
	dec  [hl]                                        ; $50d7: $35
	jr   z, jr_011_50e2                              ; $50d8: $28 $08

	call Call_011_525d                               ; $50da: $cd $5d $52
	ld   a, $05                                      ; $50dd: $3e $05
	ld   [wGameSubstate], a                                  ; $50df: $ea $a1 $c2

jr_011_50e2:
	call Call_011_56e5                               ; $50e2: $cd $e5 $56
	ret                                              ; $50e5: $c9


SakuraMiniGameMainSubstate7:
	ld   c, $80                                      ; $50e6: $0e $80
	ld   de, $9840                                   ; $50e8: $11 $40 $98
	ld   a, $03                                      ; $50eb: $3e $03
	ld   hl, $d2c0                                   ; $50ed: $21 $c0 $d2
	ld   b, $08                                      ; $50f0: $06 $08
	call EnqueueHDMATransfer                                       ; $50f2: $cd $7c $02
	ld   c, $81                                      ; $50f5: $0e $81
	ld   de, $9840                                   ; $50f7: $11 $40 $98
	ld   a, $03                                      ; $50fa: $3e $03
	ld   hl, $d6c0                                   ; $50fc: $21 $c0 $d6
	ld   b, $08                                      ; $50ff: $06 $08
	call EnqueueHDMATransfer                                       ; $5101: $cd $7c $02
	call Call_011_581d                               ; $5104: $cd $1d $58
	ld   a, $09                                      ; $5107: $3e $09
	ld   [wGameSubstate], a                                  ; $5109: $ea $a1 $c2
	ld   hl, $c81d                                   ; $510c: $21 $1d $c8
	ld   a, [hl-]                                    ; $510f: $3a
	cp   $03                                         ; $5110: $fe $03
	jr   c, jr_011_5121                              ; $5112: $38 $0d

	jr   nz, jr_011_511b                             ; $5114: $20 $05

	ld   a, [hl]                                     ; $5116: $7e
	cp   $e8                                         ; $5117: $fe $e8
	jr   c, jr_011_5121                              ; $5119: $38 $06

jr_011_511b:
	ld   a, $08                                      ; $511b: $3e $08
	ld   [wGameSubstate], a                                  ; $511d: $ea $a1 $c2
	ret                                              ; $5120: $c9


jr_011_5121:
	ld   c, $f0                                      ; $5121: $0e $f0

jr_011_5123:
	push bc                                          ; $5123: $c5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5124: $cf
	pop  bc                                          ; $5125: $c1
	ld   a, [wInGameButtonsPressed]                                  ; $5126: $fa $10 $c2
	and  $01                                         ; $5129: $e6 $01
	jr   nz, jr_011_5132                             ; $512b: $20 $05

	dec  c                                           ; $512d: $0d
	jr   nz, jr_011_5123                             ; $512e: $20 $f3

	jr   jr_011_5137                                 ; $5130: $18 $05

jr_011_5132:
	ld   a, $21                                      ; $5132: $3e $21
	call PlaySoundEffect                                       ; $5134: $cd $df $1a

jr_011_5137:
	ret                                              ; $5137: $c9


SakuraMiniGameMainSubstate8:
	ld   c, $f0                                      ; $5138: $0e $f0

jr_011_513a:
	push bc                                          ; $513a: $c5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $513b: $cf
	pop  bc                                          ; $513c: $c1
	ld   a, [wInGameButtonsPressed]                                  ; $513d: $fa $10 $c2
	and  $01                                         ; $5140: $e6 $01
	jr   nz, jr_011_5149                             ; $5142: $20 $05

	dec  c                                           ; $5144: $0d
	jr   nz, jr_011_513a                             ; $5145: $20 $f3

	jr   jr_011_514e                                 ; $5147: $18 $05

jr_011_5149:
	ld   a, $21                                      ; $5149: $3e $21
	call PlaySoundEffect                                       ; $514b: $cd $df $1a

jr_011_514e:
	call Call_011_507e                               ; $514e: $cd $7e $50
	call Call_011_5159                               ; $5151: $cd $59 $51
	ld   hl, wGameSubstate                                   ; $5154: $21 $a1 $c2
	inc  [hl]                                        ; $5157: $34
	ret                                              ; $5158: $c9


Call_011_5159:
	ld   a, [wWramBank]                                  ; $5159: $fa $93 $c2
	push af                                          ; $515c: $f5
	ld   a, $03                                      ; $515d: $3e $03
	ld   [wWramBank], a                                  ; $515f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5162: $e0 $70
	ld   bc, $0000                                   ; $5164: $01 $00 $00
	ld   hl, .table                                   ; $5167: $21 $be $51

.loop:
; Get src addr, then bank, then preserve pointer in table
	ld   a, [hl+]                                    ; $516a: $2a
	ld   e, a                                        ; $516b: $5f
	ld   a, [hl+]                                    ; $516c: $2a
	ld   d, a                                        ; $516d: $57
	ld   a, [hl+]                                    ; $516e: $2a
	push hl                                          ; $516f: $e5

;
	ld   hl, $d882                                   ; $5170: $21 $82 $d8
	add  hl, bc                                      ; $5173: $09
	push bc                                          ; $5174: $c5
	push af                                          ; $5175: $f5
	ld   bc, $0404                                   ; $5176: $01 $04 $04
	call FarCopyLayout                                       ; $5179: $cd $2c $0b
	pop  af                                          ; $517c: $f1
	pop  bc                                          ; $517d: $c1
	ld   hl, $d802                                   ; $517e: $21 $02 $d8
	add  hl, bc                                      ; $5181: $09
	push bc                                          ; $5182: $c5
	ld   bc, $0404                                   ; $5183: $01 $04 $04
	call FarCopyLayout                                       ; $5186: $cd $2c $0b

;
	ld   c, $80                                      ; $5189: $0e $80
	ld   de, $9840                                   ; $518b: $11 $40 $98
	ld   a, $03                                      ; $518e: $3e $03
	ld   hl, $d800                                   ; $5190: $21 $00 $d8
	ld   b, $08                                      ; $5193: $06 $08
	call EnqueueHDMATransfer                                       ; $5195: $cd $7c $02
	ld   c, $81                                      ; $5198: $0e $81
	ld   de, $9840                                   ; $519a: $11 $40 $98
	ld   a, $03                                      ; $519d: $3e $03
	ld   hl, $d880                                   ; $519f: $21 $80 $d8
	ld   b, $08                                      ; $51a2: $06 $08
	call EnqueueHDMATransfer                                       ; $51a4: $cd $7c $02
	ld   bc, $0014                                   ; $51a7: $01 $14 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $51aa: $cd $79 $0a
	pop  bc                                          ; $51ad: $c1
	pop  hl                                          ; $51ae: $e1
	ld   a, $04                                      ; $51af: $3e $04
	add  c                                           ; $51b1: $81
	ld   c, a                                        ; $51b2: $4f
	cp   $10                                         ; $51b3: $fe $10
	jr   c, .loop                              ; $51b5: $38 $b3

	pop  af                                          ; $51b7: $f1
	ld   [wWramBank], a                                  ; $51b8: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $51bb: $e0 $70
	ret                                              ; $51bd: $c9

.table:
	AddrBank Layout_SakuraYoureAPro1
	AddrBank Layout_SakuraYoureAPro2
	AddrBank Layout_SakuraYoureAPro3
	AddrBank Layout_SakuraYoureAPro4
	
	
SakuraMiniGameMainSubstate9:
	ld   b, $02 ; $51ca: $06 $02
	ld   a, [$cb1d]                                  ; $51cc: $fa $1d $cb
	or   a                                           ; $51cf: $b7
	jr   z, jr_011_51d4                              ; $51d0: $28 $02

	ld   b, $04                                      ; $51d2: $06 $04

jr_011_51d4:
	ld   a, [$c82d]                                  ; $51d4: $fa $2d $c8
	cp   b                                           ; $51d7: $b8
	jr   c, jr_011_51df                              ; $51d8: $38 $05

	ld   a, $2c                                      ; $51da: $3e $2c
	call PlaySampledSound                                       ; $51dc: $cd $64 $1b

jr_011_51df:
	xor  a                                           ; $51df: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $51e0: $ea $62 $c3
	ld   a, $40                                      ; $51e3: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $51e5: $ea $63 $c3
	ld   a, $03                                      ; $51e8: $3e $03
	ld   b, $1e                                      ; $51ea: $06 $1e
	ld   hl, $64fc                                   ; $51ec: $21 $fc $64
	ld   c, $01                                      ; $51ef: $0e $01
	ld   de, $7000                                   ; $51f1: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $51f4: $cd $48 $07
	call FadeBGpalsToWhiteAndAudVol8timesHandlingAnimatedSpriteSpecs                               ; $51f7: $cd $6f $57
	call TurnOffLCD                                       ; $51fa: $cd $e3 $08
	ld   a, [$cb1d]                                  ; $51fd: $fa $1d $cb
	or   a                                           ; $5200: $b7
	jr   nz, jr_011_5216                             ; $5201: $20 $13

	ld   a, [$c82d]                                  ; $5203: $fa $2d $c8
	ld   [wMiniGameTrainingBattleRank], a                                  ; $5206: $ea $21 $cb
	ld   a, [$c837]                                  ; $5209: $fa $37 $c8
	ld   [wGameState], a                                  ; $520c: $ea $a0 $c2
	ld   a, [$c838]                                  ; $520f: $fa $38 $c8
	ld   [wGameSubstate], a                                  ; $5212: $ea $a1 $c2
	ret                                              ; $5215: $c9


jr_011_5216:
	call Call_011_524b                               ; $5216: $cd $4b $52
	ld   de, $c986                                   ; $5219: $11 $86 $c9
	ld   a, l                                        ; $521c: $7d
	ld   [de], a                                     ; $521d: $12
	inc  de                                          ; $521e: $13
	ld   a, h                                        ; $521f: $7c
	ld   [de], a                                     ; $5220: $12
	ld   h, $0c                                      ; $5221: $26 $0c
	ld   l, $03                                      ; $5223: $2e $03
	ld   a, [$c837]                                  ; $5225: $fa $37 $c8
	ld   d, a                                        ; $5228: $57
	ld   a, [$c838]                                  ; $5229: $fa $38 $c8
	ld   e, a                                        ; $522c: $5f
	ld   b, $00                                      ; $522d: $06 $00
	ld   a, [$c82f]                                  ; $522f: $fa $2f $c8
	ld   c, a                                        ; $5232: $4f
	ld   a, [$c82d]                                  ; $5233: $fa $2d $c8
	push af                                          ; $5236: $f5
	ld   a, $3c                                      ; $5237: $3e $3c
	ld   [wFarCallAddr], a                                  ; $5239: $ea $98 $c2
	ld   a, $55                                      ; $523c: $3e $55
	ld   [wFarCallAddr+1], a                                  ; $523e: $ea $99 $c2
	ld   a, $3e                                      ; $5241: $3e $3e
	ld   [wFarCallBank], a                                  ; $5243: $ea $9a $c2
	pop  af                                          ; $5246: $f1
	call FarCall                                       ; $5247: $cd $62 $09
	ret                                              ; $524a: $c9


Call_011_524b:
	ld   hl, $0000                                   ; $524b: $21 $00 $00
	ld   a, [$c81c]                                  ; $524e: $fa $1c $c8
	ld   e, a                                        ; $5251: $5f
	ld   a, [$c81d]                                  ; $5252: $fa $1d $c8
	ld   d, a                                        ; $5255: $57
	ld   c, $0a                                      ; $5256: $0e $0a

jr_011_5258:
	add  hl, de                                      ; $5258: $19
	dec  c                                           ; $5259: $0d
	jr   nz, jr_011_5258                             ; $525a: $20 $fc

	ret                                              ; $525c: $c9


Call_011_525d:
	call GetRandomNumInPreSpecifiedRange                                       ; $525d: $cd $10 $0d
	add  $96                                         ; $5260: $c6 $96
	ld   [$c81a], a                                  ; $5262: $ea $1a $c8
	ld   hl, $5372                                   ; $5265: $21 $72 $53
	ld   de, $0000                                   ; $5268: $11 $00 $00
	ld   a, [$c82f]                                  ; $526b: $fa $2f $c8
	or   a                                           ; $526e: $b7
	jr   z, jr_011_5281                              ; $526f: $28 $10

	ld   hl, $c831                                   ; $5271: $21 $31 $c8
	ld   a, [hl]                                     ; $5274: $7e
	or   a                                           ; $5275: $b7
	jr   z, jr_011_527e                              ; $5276: $28 $06

	dec  [hl]                                        ; $5278: $35
	jr   nz, jr_011_527e                             ; $5279: $20 $03

	ld   de, $fe00                                   ; $527b: $11 $00 $fe

jr_011_527e:
	ld   hl, $537c                                   ; $527e: $21 $7c $53

jr_011_5281:
	ld   a, [$c818]                                  ; $5281: $fa $18 $c8
	add  a                                           ; $5284: $87
	ld   c, a                                        ; $5285: $4f
	ld   b, $00                                      ; $5286: $06 $00
	add  hl, bc                                      ; $5288: $09
	ld   a, [hl+]                                    ; $5289: $2a
	ld   h, [hl]                                     ; $528a: $66
	ld   l, a                                        ; $528b: $6f
	add  hl, de                                      ; $528c: $19
	ld   a, l                                        ; $528d: $7d
	ld   [$c810], a                                  ; $528e: $ea $10 $c8
	ld   a, h                                        ; $5291: $7c
	ld   [$c811], a                                  ; $5292: $ea $11 $c8
	xor  a                                           ; $5295: $af
	ld   [$c812], a                                  ; $5296: $ea $12 $c8
	ld   [$c813], a                                  ; $5299: $ea $13 $c8
	ld   [$c81b], a                                  ; $529c: $ea $1b $c8
	ld   [$c82b], a                                  ; $529f: $ea $2b $c8
	ld   [$c82c], a                                  ; $52a2: $ea $2c $c8
	call ClearBaseAnimSpriteSpecDetails                                       ; $52a5: $cd $c9 $2e
	ld   a, $01                                      ; $52a8: $3e $01
	ld   hl, $0000                                   ; $52aa: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $52ad: $cd $4b $2f
	ld   [$c80c], a                                  ; $52b0: $ea $0c $c8
	call StartAnimatingAnimatedSpriteSpec                                       ; $52b3: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $52b6: $cd $76 $30
	ld   a, $02                                      ; $52b9: $3e $02
	ld   [$c80e], a                                  ; $52bb: $ea $0e $c8
	ld   bc, $1a48                                   ; $52be: $01 $48 $1a
	ld   de, $7180                                   ; $52c1: $11 $80 $71
	push af                                          ; $52c4: $f5
	ld   a, $03                                      ; $52c5: $3e $03
	ld   [wFarCallAddr], a                                  ; $52c7: $ea $98 $c2
	ld   a, $41                                      ; $52ca: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $52cc: $ea $99 $c2
	ld   a, $01                                      ; $52cf: $3e $01
	ld   [wFarCallBank], a                                  ; $52d1: $ea $9a $c2
	pop  af                                          ; $52d4: $f1
	call FarCall                                       ; $52d5: $cd $62 $09
	ld   a, $01                                      ; $52d8: $3e $01
	ld   hl, $0000                                   ; $52da: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $52dd: $cd $4b $2f
	ld   [$c82e], a                                  ; $52e0: $ea $2e $c8
	call StartAnimatingAnimatedSpriteSpec                                       ; $52e3: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $52e6: $cd $76 $30
	ld   bc, $8448                                   ; $52e9: $01 $48 $84
	ld   a, $00                                      ; $52ec: $3e $00
	ld   de, $7180                                   ; $52ee: $11 $80 $71
	push af                                          ; $52f1: $f5
	ld   a, $03                                      ; $52f2: $3e $03
	ld   [wFarCallAddr], a                                  ; $52f4: $ea $98 $c2
	ld   a, $41                                      ; $52f7: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $52f9: $ea $99 $c2
	ld   a, $01                                      ; $52fc: $3e $01
	ld   [wFarCallBank], a                                  ; $52fe: $ea $9a $c2
	pop  af                                          ; $5301: $f1
	call FarCall                                       ; $5302: $cd $62 $09
	ld   a, $01                                      ; $5305: $3e $01
	ld   hl, $0000                                   ; $5307: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $530a: $cd $4b $2f
	ld   [$c80b], a                                  ; $530d: $ea $0b $c8
	call StartAnimatingAnimatedSpriteSpec                                       ; $5310: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5313: $cd $76 $30
	ld   bc, $2f48                                   ; $5316: $01 $48 $2f
	ld   a, b                                        ; $5319: $78
	ld   [$c815], a                                  ; $531a: $ea $15 $c8
	ld   a, c                                        ; $531d: $79
	ld   [$c817], a                                  ; $531e: $ea $17 $c8
	xor  a                                           ; $5321: $af
	ld   [$c814], a                                  ; $5322: $ea $14 $c8
	ld   [$c816], a                                  ; $5325: $ea $16 $c8
	ld   a, $00                                      ; $5328: $3e $00
	ld   de, $7180                                   ; $532a: $11 $80 $71
	push af                                          ; $532d: $f5
	ld   a, $03                                      ; $532e: $3e $03
	ld   [wFarCallAddr], a                                  ; $5330: $ea $98 $c2
	ld   a, $41                                      ; $5333: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5335: $ea $99 $c2
	ld   a, $01                                      ; $5338: $3e $01
	ld   [wFarCallBank], a                                  ; $533a: $ea $9a $c2
	pop  af                                          ; $533d: $f1
	call FarCall                                       ; $533e: $cd $62 $09
	ld   a, $01                                      ; $5341: $3e $01
	ld   hl, $0000                                   ; $5343: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $5346: $cd $4b $2f
	ld   [$c80d], a                                  ; $5349: $ea $0d $c8
	call StartAnimatingAnimatedSpriteSpec                                       ; $534c: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $534f: $cd $76 $30
	ld   a, $04                                      ; $5352: $3e $04
	ld   [$c80f], a                                  ; $5354: $ea $0f $c8
	ld   bc, $8448                                   ; $5357: $01 $48 $84
	ld   de, $7180                                   ; $535a: $11 $80 $71
	push af                                          ; $535d: $f5
	ld   a, $03                                      ; $535e: $3e $03
	ld   [wFarCallAddr], a                                  ; $5360: $ea $98 $c2
	ld   a, $41                                      ; $5363: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5365: $ea $99 $c2
	ld   a, $01                                      ; $5368: $3e $01
	ld   [wFarCallBank], a                                  ; $536a: $ea $9a $c2
	pop  af                                          ; $536d: $f1
	call FarCall                                       ; $536e: $cd $62 $09
	ret                                              ; $5371: $c9


	nop                                              ; $5372: $00
	inc  bc                                          ; $5373: $03
	ldh  [$03], a                                    ; $5374: $e0 $03
	ret  nz                                          ; $5376: $c0

	inc  b                                           ; $5377: $04
	and  b                                           ; $5378: $a0
	dec  b                                           ; $5379: $05
	add  b                                           ; $537a: $80
	ld   b, $00                                      ; $537b: $06 $00
	dec  b                                           ; $537d: $05
	nop                                              ; $537e: $00
	rlca                                             ; $537f: $07
	nop                                              ; $5380: $00
	ld   b, $00                                      ; $5381: $06 $00
	ld   [$0a00], sp                                 ; $5383: $08 $00 $0a

Call_011_5386:
	ld   a, [$c80c]                                  ; $5386: $fa $0c $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5389: $cd $76 $30
	push af                                          ; $538c: $f5
	ld   a, $43                                      ; $538d: $3e $43
	ld   [wFarCallAddr], a                                  ; $538f: $ea $98 $c2
	ld   a, $41                                      ; $5392: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5394: $ea $99 $c2
	ld   a, $01                                      ; $5397: $3e $01
	ld   [wFarCallBank], a                                  ; $5399: $ea $9a $c2
	pop  af                                          ; $539c: $f1
	call FarCall                                       ; $539d: $cd $62 $09
	ld   a, $d2                                      ; $53a0: $3e $d2
	cp   c                                           ; $53a2: $b9
	jr   z, jr_011_53cc                              ; $53a3: $28 $27

	ld   a, [$c81a]                                  ; $53a5: $fa $1a $c8
	dec  a                                           ; $53a8: $3d
	ld   [$c81a], a                                  ; $53a9: $ea $1a $c8
	jr   nz, jr_011_5410                             ; $53ac: $20 $62

	ld   a, $03                                      ; $53ae: $3e $03
	ld   [$c80e], a                                  ; $53b0: $ea $0e $c8
	ld   de, $7180                                   ; $53b3: $11 $80 $71
	push af                                          ; $53b6: $f5
	ld   a, $1c                                      ; $53b7: $3e $1c
	ld   [wFarCallAddr], a                                  ; $53b9: $ea $98 $c2
	ld   a, $41                                      ; $53bc: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $53be: $ea $99 $c2
	ld   a, $01                                      ; $53c1: $3e $01
	ld   [wFarCallBank], a                                  ; $53c3: $ea $9a $c2
	pop  af                                          ; $53c6: $f1
	call FarCall                                       ; $53c7: $cd $62 $09
	jr   jr_011_5410                                 ; $53ca: $18 $44

jr_011_53cc:
	ld   a, [$c80f]                                  ; $53cc: $fa $0f $c8
	cp   $06                                         ; $53cf: $fe $06
	jr   z, jr_011_5410                              ; $53d1: $28 $3d

	ld   a, [$c80b]                                  ; $53d3: $fa $0b $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $53d6: $cd $76 $30
	push af                                          ; $53d9: $f5
	ld   a, $43                                      ; $53da: $3e $43
	ld   [wFarCallAddr], a                                  ; $53dc: $ea $98 $c2
	ld   a, $41                                      ; $53df: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $53e1: $ea $99 $c2
	ld   a, $01                                      ; $53e4: $3e $01
	ld   [wFarCallBank], a                                  ; $53e6: $ea $9a $c2
	pop  af                                          ; $53e9: $f1
	call FarCall                                       ; $53ea: $cd $62 $09
	ld   a, b                                        ; $53ed: $78
	cp   $80                                         ; $53ee: $fe $80
	jr   c, jr_011_5410                              ; $53f0: $38 $1e

	ld   a, $01                                      ; $53f2: $3e $01
	ld   de, $7180                                   ; $53f4: $11 $80 $71
	push af                                          ; $53f7: $f5
	ld   a, $1c                                      ; $53f8: $3e $1c
	ld   [wFarCallAddr], a                                  ; $53fa: $ea $98 $c2
	ld   a, $41                                      ; $53fd: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $53ff: $ea $99 $c2
	ld   a, $01                                      ; $5402: $3e $01
	ld   [wFarCallBank], a                                  ; $5404: $ea $9a $c2
	pop  af                                          ; $5407: $f1
	call FarCall                                       ; $5408: $cd $62 $09
	ld   a, $28                                      ; $540b: $3e $28
	ld   [$c832], a                                  ; $540d: $ea $32 $c8

jr_011_5410:
	ret                                              ; $5410: $c9


Call_011_5411:
	ld   a, [$c80d]                                  ; $5411: $fa $0d $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5414: $cd $76 $30
	ld   a, [$c80f]                                  ; $5417: $fa $0f $c8
	cp   $05                                         ; $541a: $fe $05
	jr   z, jr_011_5456                              ; $541c: $28 $38

	cp   $06                                         ; $541e: $fe $06
	jr   z, jr_011_5474                              ; $5420: $28 $52

	ld   a, [wInGameButtonsPressed]                                  ; $5422: $fa $10 $c2
	bit  0, a                                        ; $5425: $cb $47
	jr   z, jr_011_5474                              ; $5427: $28 $4b

	ld   a, $05                                      ; $5429: $3e $05
	ld   [$c80f], a                                  ; $542b: $ea $0f $c8
	ld   de, $7180                                   ; $542e: $11 $80 $71
	push af                                          ; $5431: $f5
	ld   a, $1c                                      ; $5432: $3e $1c
	ld   [wFarCallAddr], a                                  ; $5434: $ea $98 $c2
	ld   a, $41                                      ; $5437: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5439: $ea $99 $c2
	ld   a, $01                                      ; $543c: $3e $01
	ld   [wFarCallBank], a                                  ; $543e: $ea $9a $c2
	pop  af                                          ; $5441: $f1
	call FarCall                                       ; $5442: $cd $62 $09
	ld   a, $06                                      ; $5445: $3e $06
	ld   [$c81b], a                                  ; $5447: $ea $1b $c8
	ld   a, $29                                      ; $544a: $3e $29
	ld   [$c832], a                                  ; $544c: $ea $32 $c8
	ld   a, $06                                      ; $544f: $3e $06
	ld   [$c833], a                                  ; $5451: $ea $33 $c8
	jr   jr_011_5474                                 ; $5454: $18 $1e

jr_011_5456:
	push af                                          ; $5456: $f5
	ld   a, $43                                      ; $5457: $3e $43
	ld   [wFarCallAddr], a                                  ; $5459: $ea $98 $c2
	ld   a, $41                                      ; $545c: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $545e: $ea $99 $c2
	ld   a, $01                                      ; $5461: $3e $01
	ld   [wFarCallBank], a                                  ; $5463: $ea $9a $c2
	pop  af                                          ; $5466: $f1
	call FarCall                                       ; $5467: $cd $62 $09
	ld   a, $d4                                      ; $546a: $3e $d4
	cp   c                                           ; $546c: $b9
	jr   nz, jr_011_5474                             ; $546d: $20 $05

	ld   a, $04                                      ; $546f: $3e $04
	ld   [$c80f], a                                  ; $5471: $ea $0f $c8

jr_011_5474:
	ret                                              ; $5474: $c9


Call_011_5475:
	ld   a, [$c80b]                                  ; $5475: $fa $0b $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5478: $cd $76 $30
	push af                                          ; $547b: $f5
	ld   a, $43                                      ; $547c: $3e $43
	ld   [wFarCallAddr], a                                  ; $547e: $ea $98 $c2
	ld   a, $41                                      ; $5481: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5483: $ea $99 $c2
	ld   a, $01                                      ; $5486: $3e $01
	ld   [wFarCallBank], a                                  ; $5488: $ea $9a $c2
	pop  af                                          ; $548b: $f1
	call FarCall                                       ; $548c: $cd $62 $09
	ld   a, b                                        ; $548f: $78
	cp   $80                                         ; $5490: $fe $80
	jr   nc, jr_011_54fe                             ; $5492: $30 $6a

	push hl                                          ; $5494: $e5
	ld   a, [$c82c]                                  ; $5495: $fa $2c $c8
	and  a                                           ; $5498: $a7
	jr   z, jr_011_54bf                              ; $5499: $28 $24

	ld   a, [$c82b]                                  ; $549b: $fa $2b $c8
	add  a                                           ; $549e: $87
	add  a                                           ; $549f: $87
	ld   c, a                                        ; $54a0: $4f
	ld   b, $00                                      ; $54a1: $06 $00
	ld   hl, $54ff                                   ; $54a3: $21 $ff $54
	add  hl, bc                                      ; $54a6: $09
	ld   a, [hl+]                                    ; $54a7: $2a
	ld   [$c810], a                                  ; $54a8: $ea $10 $c8
	ld   a, [hl+]                                    ; $54ab: $2a
	ld   [$c811], a                                  ; $54ac: $ea $11 $c8
	ld   a, [hl+]                                    ; $54af: $2a
	ld   [$c812], a                                  ; $54b0: $ea $12 $c8
	ld   a, [hl+]                                    ; $54b3: $2a
	ld   [$c813], a                                  ; $54b4: $ea $13 $c8
	ld   a, [hl+]                                    ; $54b7: $2a
	or   [hl]                                        ; $54b8: $b6
	jr   z, jr_011_54bf                              ; $54b9: $28 $04

	ld   hl, $c82b                                   ; $54bb: $21 $2b $c8
	inc  [hl]                                        ; $54be: $34

jr_011_54bf:
	ld   hl, $c810                                   ; $54bf: $21 $10 $c8
	ld   a, [hl+]                                    ; $54c2: $2a
	ld   d, [hl]                                     ; $54c3: $56
	ld   e, a                                        ; $54c4: $5f
	ld   hl, $c814                                   ; $54c5: $21 $14 $c8
	push hl                                          ; $54c8: $e5
	ld   a, [hl+]                                    ; $54c9: $2a
	ld   h, [hl]                                     ; $54ca: $66
	ld   l, a                                        ; $54cb: $6f
	add  hl, de                                      ; $54cc: $19
	pop  de                                          ; $54cd: $d1
	ld   a, l                                        ; $54ce: $7d
	ld   [de], a                                     ; $54cf: $12
	inc  de                                          ; $54d0: $13
	ld   a, h                                        ; $54d1: $7c
	ld   b, h                                        ; $54d2: $44
	ld   [de], a                                     ; $54d3: $12
	ld   hl, $c812                                   ; $54d4: $21 $12 $c8
	ld   a, [hl+]                                    ; $54d7: $2a
	ld   d, [hl]                                     ; $54d8: $56
	ld   e, a                                        ; $54d9: $5f
	ld   hl, $c816                                   ; $54da: $21 $16 $c8
	push hl                                          ; $54dd: $e5
	ld   a, [hl+]                                    ; $54de: $2a
	ld   h, [hl]                                     ; $54df: $66
	ld   l, a                                        ; $54e0: $6f
	add  hl, de                                      ; $54e1: $19
	pop  de                                          ; $54e2: $d1
	ld   a, l                                        ; $54e3: $7d
	ld   [de], a                                     ; $54e4: $12
	inc  de                                          ; $54e5: $13
	ld   a, h                                        ; $54e6: $7c
	ld   c, h                                        ; $54e7: $4c
	ld   [de], a                                     ; $54e8: $12
	pop  hl                                          ; $54e9: $e1
	push af                                          ; $54ea: $f5
	ld   a, $2f                                      ; $54eb: $3e $2f
	ld   [wFarCallAddr], a                                  ; $54ed: $ea $98 $c2
	ld   a, $41                                      ; $54f0: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $54f2: $ea $99 $c2
	ld   a, $01                                      ; $54f5: $3e $01
	ld   [wFarCallBank], a                                  ; $54f7: $ea $9a $c2
	pop  af                                          ; $54fa: $f1
	call FarCall                                       ; $54fb: $cd $62 $09

jr_011_54fe:
	ret                                              ; $54fe: $c9


	ld   b, a                                        ; $54ff: $47
	nop                                              ; $5500: $00
	dec  b                                           ; $5501: $05
	db   $fd                                         ; $5502: $fd
	call nc, $2000                                   ; $5503: $d4 $00 $20
	db   $fd                                         ; $5506: $fd
	ld   e, d                                        ; $5507: $5a
	ld   bc, $fd54                                   ; $5508: $01 $54 $fd
	db   $d3                                         ; $550b: $d3
	ld   bc, $fda1                                   ; $550c: $01 $a1 $fd
	inc  a                                           ; $550f: $3c
	ld   [bc], a                                     ; $5510: $02
	inc  bc                                          ; $5511: $03
	cp   $91                                         ; $5512: $fe $91
	ld   [bc], a                                     ; $5514: $02
	ld   [hl], a                                     ; $5515: $77
	cp   $cf                                         ; $5516: $fe $cf
	ld   [bc], a                                     ; $5518: $02
	ld   hl, sp-$02                                  ; $5519: $f8 $fe
	db   $f4                                         ; $551b: $f4
	ld   [bc], a                                     ; $551c: $02
	add  e                                           ; $551d: $83
	rst  $38                                         ; $551e: $ff
	cp   $02                                         ; $551f: $fe $02
	ld   de, $ed00                                   ; $5521: $11 $00 $ed
	ld   [bc], a                                     ; $5524: $02
	and  b                                           ; $5525: $a0
	nop                                              ; $5526: $00
	jp   nz, $2902                                   ; $5527: $c2 $02 $29

	ld   bc, $027f                                   ; $552a: $01 $7f $02
	and  a                                           ; $552d: $a7
	ld   bc, $0224                                   ; $552e: $01 $24 $02
	rla                                              ; $5531: $17
	ld   [bc], a                                     ; $5532: $02
	or   a                                           ; $5533: $b7
	ld   bc, $0274                                   ; $5534: $01 $74 $02
	ld   a, [hl-]                                    ; $5537: $3a
	ld   bc, $02bb                                   ; $5538: $01 $bb $02
	or   d                                           ; $553b: $b2
	nop                                              ; $553c: $00
	jp   hl                                          ; $553d: $e9


	ld   [bc], a                                     ; $553e: $02
	nop                                              ; $553f: $00
	nop                                              ; $5540: $00

Call_011_5541:
	ld   a, [$c815]                                  ; $5541: $fa $15 $c8
	ld   b, a                                        ; $5544: $47
	ld   a, [$c817]                                  ; $5545: $fa $17 $c8
	ld   c, a                                        ; $5548: $4f
	ret                                              ; $5549: $c9


Call_011_554a:
	ld   hl, $c819                                   ; $554a: $21 $19 $c8
	dec  [hl]                                        ; $554d: $35
	jr   nz, jr_011_5560                             ; $554e: $20 $10

	ld   a, $02                                      ; $5550: $3e $02
	ld   [hl], a                                     ; $5552: $77
	ld   a, [$c818]                                  ; $5553: $fa $18 $c8
	inc  a                                           ; $5556: $3c
	cp   $05                                         ; $5557: $fe $05
	jr   c, jr_011_555d                              ; $5559: $38 $02

	ld   a, $04                                      ; $555b: $3e $04

jr_011_555d:
	ld   [$c818], a                                  ; $555d: $ea $18 $c8

jr_011_5560:
	ret                                              ; $5560: $c9


Call_011_5561:
	ld   a, [$c818]                                  ; $5561: $fa $18 $c8
	and  a                                           ; $5564: $a7
	jr   z, jr_011_556d                              ; $5565: $28 $06

	dec  a                                           ; $5567: $3d
	ld   [$c818], a                                  ; $5568: $ea $18 $c8
	jr   jr_011_5572                                 ; $556b: $18 $05

jr_011_556d:
	ld   a, $02                                      ; $556d: $3e $02
	ld   [$c819], a                                  ; $556f: $ea $19 $c8

jr_011_5572:
	ret                                              ; $5572: $c9


Call_011_5573:
	ld   a, [$c80d]                                  ; $5573: $fa $0d $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5576: $cd $76 $30
	push af                                          ; $5579: $f5
	ld   a, $43                                      ; $557a: $3e $43
	ld   [wFarCallAddr], a                                  ; $557c: $ea $98 $c2
	ld   a, $41                                      ; $557f: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5581: $ea $99 $c2
	ld   a, $01                                      ; $5584: $3e $01
	ld   [wFarCallBank], a                                  ; $5586: $ea $9a $c2
	pop  af                                          ; $5589: $f1
	call FarCall                                       ; $558a: $cd $62 $09
	ld   hl, $c81b                                   ; $558d: $21 $1b $c8
	ld   a, [hl]                                     ; $5590: $7e
	and  a                                           ; $5591: $a7
	jr   z, jr_011_55c7                              ; $5592: $28 $33

	dec  [hl]                                        ; $5594: $35
	cp   $06                                         ; $5595: $fe $06
	jr   nc, jr_011_55c7                             ; $5597: $30 $2e

	call Call_011_5541                               ; $5599: $cd $41 $55
	ld   a, b                                        ; $559c: $78
	cp   $6c                                         ; $559d: $fe $6c
	jr   c, jr_011_560d                              ; $559f: $38 $6c

	ld   a, [$c811]                                  ; $55a1: $fa $11 $c8
	bit  7, a                                        ; $55a4: $cb $7f
	jr   nz, jr_011_560d                             ; $55a6: $20 $65

	ld   a, $2a                                      ; $55a8: $3e $2a
	ld   [$c832], a                                  ; $55aa: $ea $32 $c8
	call Call_011_5663                               ; $55ad: $cd $63 $56
	ld   a, $fc                                      ; $55b0: $3e $fc
	ld   [$c811], a                                  ; $55b2: $ea $11 $c8
	ld   [$c813], a                                  ; $55b5: $ea $13 $c8
	xor  a                                           ; $55b8: $af
	ld   [$c810], a                                  ; $55b9: $ea $10 $c8
	ld   [$c812], a                                  ; $55bc: $ea $12 $c8
	call Call_011_554a                               ; $55bf: $cd $4a $55
	call Call_011_57db                               ; $55c2: $cd $db $57
	jr   jr_011_560d                                 ; $55c5: $18 $46

jr_011_55c7:
	ld   a, c                                        ; $55c7: $79
	cp   $dd                                         ; $55c8: $fe $dd
	jr   z, jr_011_560d                              ; $55ca: $28 $41

	cp   $d8                                         ; $55cc: $fe $d8
	jr   z, jr_011_560d                              ; $55ce: $28 $3d

	cp   $dc                                         ; $55d0: $fe $dc
	jr   z, jr_011_560d                              ; $55d2: $28 $39

	ld   a, [$c80f]                                  ; $55d4: $fa $0f $c8
	cp   $06                                         ; $55d7: $fe $06
	jr   z, jr_011_5609                              ; $55d9: $28 $2e

	call Call_011_5541                               ; $55db: $cd $41 $55
	ld   a, b                                        ; $55de: $78
	cp   $7d                                         ; $55df: $fe $7d
	jr   nc, jr_011_560e                             ; $55e1: $30 $2b

	bit  7, c                                        ; $55e3: $cb $79
	jr   z, jr_011_560d                              ; $55e5: $28 $26

	xor  a                                           ; $55e7: $af
	ld   [$c813], a                                  ; $55e8: $ea $13 $c8
	ld   a, [$c80d]                                  ; $55eb: $fa $0d $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $55ee: $cd $76 $30
	push af                                          ; $55f1: $f5
	ld   a, $43                                      ; $55f2: $3e $43
	ld   [wFarCallAddr], a                                  ; $55f4: $ea $98 $c2
	ld   a, $41                                      ; $55f7: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $55f9: $ea $99 $c2
	ld   a, $01                                      ; $55fc: $3e $01
	ld   [wFarCallBank], a                                  ; $55fe: $ea $9a $c2
	pop  af                                          ; $5601: $f1
	call FarCall                                       ; $5602: $cd $62 $09
	cp   $d4                                         ; $5605: $fe $d4
	jr   nz, jr_011_560d                             ; $5607: $20 $04

jr_011_5609:
	ld   hl, wGameSubstate                                   ; $5609: $21 $a1 $c2
	inc  [hl]                                        ; $560c: $34

jr_011_560d:
	ret                                              ; $560d: $c9


jr_011_560e:
	ld   a, [$c811]                                  ; $560e: $fa $11 $c8
	bit  7, a                                        ; $5611: $cb $7f
	jr   nz, jr_011_560d                             ; $5613: $20 $f8

	ld   a, $2b                                      ; $5615: $3e $2b
	ld   [$c832], a                                  ; $5617: $ea $32 $c8
	ld   a, [$c80b]                                  ; $561a: $fa $0b $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $561d: $cd $76 $30
	ld   a, $00                                      ; $5620: $3e $00
	ld   de, $7180                                   ; $5622: $11 $80 $71
	push af                                          ; $5625: $f5
	ld   a, $1c                                      ; $5626: $3e $1c
	ld   [wFarCallAddr], a                                  ; $5628: $ea $98 $c2
	ld   a, $41                                      ; $562b: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $562d: $ea $99 $c2
	ld   a, $01                                      ; $5630: $3e $01
	ld   [wFarCallBank], a                                  ; $5632: $ea $9a $c2
	pop  af                                          ; $5635: $f1
	call FarCall                                       ; $5636: $cd $62 $09
	ld   a, [$c80d]                                  ; $5639: $fa $0d $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $563c: $cd $76 $30
	ld   a, $06                                      ; $563f: $3e $06
	ld   [$c80f], a                                  ; $5641: $ea $0f $c8
	ld   de, $7180                                   ; $5644: $11 $80 $71
	push af                                          ; $5647: $f5
	ld   a, $1c                                      ; $5648: $3e $1c
	ld   [wFarCallAddr], a                                  ; $564a: $ea $98 $c2
	ld   a, $41                                      ; $564d: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $564f: $ea $99 $c2
	ld   a, $01                                      ; $5652: $3e $01
	ld   [wFarCallBank], a                                  ; $5654: $ea $9a $c2
	pop  af                                          ; $5657: $f1
	call FarCall                                       ; $5658: $cd $62 $09
	call Call_011_5561                               ; $565b: $cd $61 $55
	xor  a                                           ; $565e: $af
	ld   [$c81b], a                                  ; $565f: $ea $1b $c8
	ret                                              ; $5662: $c9


Call_011_5663:
	ld   a, [$c818]                                  ; $5663: $fa $18 $c8
	ld   c, a                                        ; $5666: $4f
	ld   b, $00                                      ; $5667: $06 $00
	ld   hl, $568d                                   ; $5669: $21 $8d $56
	add  hl, bc                                      ; $566c: $09
	ld   c, [hl]                                     ; $566d: $4e
	ld   a, [$c81c]                                  ; $566e: $fa $1c $c8
	ld   l, a                                        ; $5671: $6f
	ld   a, [$c81d]                                  ; $5672: $fa $1d $c8
	ld   h, a                                        ; $5675: $67
	add  hl, bc                                      ; $5676: $09
	ld   a, h                                        ; $5677: $7c
	cp   $03                                         ; $5678: $fe $03
	jr   c, jr_011_5684                              ; $567a: $38 $08

	ld   a, l                                        ; $567c: $7d
	cp   $e8                                         ; $567d: $fe $e8
	jr   c, jr_011_5684                              ; $567f: $38 $03

	ld   hl, $03e8                                   ; $5681: $21 $e8 $03

jr_011_5684:
	ld   a, l                                        ; $5684: $7d
	ld   [$c81c], a                                  ; $5685: $ea $1c $c8
	ld   a, h                                        ; $5688: $7c
	ld   [$c81d], a                                  ; $5689: $ea $1d $c8
	ret                                              ; $568c: $c9


	inc  d                                           ; $568d: $14
	jr   z, @+$52                                    ; $568e: $28 $50

	adc  h                                           ; $5690: $8c
	call c, $1c21                                    ; $5691: $dc $21 $1c
	ret  z                                           ; $5694: $c8

	ld   a, [hl+]                                    ; $5695: $2a
	ld   h, [hl]                                     ; $5696: $66
	ld   l, a                                        ; $5697: $6f
	call $0da8                                       ; $5698: $cd $a8 $0d
	ld   c, $04                                      ; $569b: $0e $04
	ld   hl, $c821                                   ; $569d: $21 $21 $c8
	ld   de, $0004                                   ; $56a0: $11 $04 $00

jr_011_56a3:
	add  $d0                                         ; $56a3: $c6 $d0
	ld   [hl], a                                     ; $56a5: $77
	push hl                                          ; $56a6: $e5
	add  $10                                         ; $56a7: $c6 $10
	add  hl, de                                      ; $56a9: $19
	ld   [hl], a                                     ; $56aa: $77
	add  $10                                         ; $56ab: $c6 $10
	add  hl, de                                      ; $56ad: $19
	ld   [hl], a                                     ; $56ae: $77
	pop  hl                                          ; $56af: $e1
	dec  hl                                          ; $56b0: $2b
	dec  c                                           ; $56b1: $0d
	jr   z, jr_011_56b7                              ; $56b2: $28 $03

	pop  af                                          ; $56b4: $f1
	jr   jr_011_56a3                                 ; $56b5: $18 $ec

jr_011_56b7:
	xor  a                                           ; $56b7: $af
	ldh  [rVBK], a                                   ; $56b8: $e0 $4f
	ld   de, $99cd                                   ; $56ba: $11 $cd $99
	ld   a, $00                                      ; $56bd: $3e $00
	ld   hl, $c81e                                   ; $56bf: $21 $1e $c8
	ld   bc, $0004                                   ; $56c2: $01 $04 $00
	call HBlankFarMemCopy                                       ; $56c5: $cd $23 $0a
	ld   de, $99ed                                   ; $56c8: $11 $ed $99
	ld   a, $04                                      ; $56cb: $3e $04
	ld   hl, $c822                                   ; $56cd: $21 $22 $c8
	ld   bc, $0004                                   ; $56d0: $01 $04 $00
	call HBlankFarMemCopy                                       ; $56d3: $cd $23 $0a
	ld   de, $9a0d                                   ; $56d6: $11 $0d $9a
	ld   a, $08                                      ; $56d9: $3e $08
	ld   hl, $c826                                   ; $56db: $21 $26 $c8
	ld   bc, $0004                                   ; $56de: $01 $04 $00
	call HBlankFarMemCopy                                       ; $56e1: $cd $23 $0a
	ret                                              ; $56e4: $c9


Call_011_56e5:
	ld   a, [$c82a]                                  ; $56e5: $fa $2a $c8
	call ConvertAintoBCD                                       ; $56e8: $cd $7d $0d
	ld   c, $02                                      ; $56eb: $0e $02
	ld   hl, $c81f                                   ; $56ed: $21 $1f $c8
	ld   de, $0004                                   ; $56f0: $11 $04 $00

jr_011_56f3:
	cp   $0a                                         ; $56f3: $fe $0a
	jr   nz, jr_011_56f8                             ; $56f5: $20 $01

	xor  a                                           ; $56f7: $af

jr_011_56f8:
	add  $d0                                         ; $56f8: $c6 $d0
	ld   [hl], a                                     ; $56fa: $77
	push hl                                          ; $56fb: $e5
	add  $10                                         ; $56fc: $c6 $10
	add  hl, de                                      ; $56fe: $19
	ld   [hl], a                                     ; $56ff: $77
	add  $10                                         ; $5700: $c6 $10
	add  hl, de                                      ; $5702: $19
	ld   [hl], a                                     ; $5703: $77
	pop  hl                                          ; $5704: $e1
	dec  hl                                          ; $5705: $2b
	dec  c                                           ; $5706: $0d
	jr   z, jr_011_570c                              ; $5707: $28 $03

	pop  af                                          ; $5709: $f1
	jr   jr_011_56f3                                 ; $570a: $18 $e7

jr_011_570c:
	pop  af                                          ; $570c: $f1
	ld   hl, $574e                                   ; $570d: $21 $4e $57
	ld   de, $c820                                   ; $5710: $11 $20 $c8
	ld   c, $03                                      ; $5713: $0e $03

jr_011_5715:
	ld   a, [hl+]                                    ; $5715: $2a
	ld   [de], a                                     ; $5716: $12
	inc  de                                          ; $5717: $13
	ld   a, [hl+]                                    ; $5718: $2a
	ld   [de], a                                     ; $5719: $12
	inc  de                                          ; $571a: $13
	inc  de                                          ; $571b: $13
	inc  de                                          ; $571c: $13
	dec  c                                           ; $571d: $0d
	jr   nz, jr_011_5715                             ; $571e: $20 $f5

	xor  a                                           ; $5720: $af
	ldh  [rVBK], a                                   ; $5721: $e0 $4f
	ld   de, $99c5                                   ; $5723: $11 $c5 $99
	ld   a, $00                                      ; $5726: $3e $00
	ld   hl, $c81e                                   ; $5728: $21 $1e $c8
	ld   bc, $0004                                   ; $572b: $01 $04 $00
	call HBlankFarMemCopy                                       ; $572e: $cd $23 $0a
	ld   de, $99e5                                   ; $5731: $11 $e5 $99
	ld   a, $04                                      ; $5734: $3e $04
	ld   hl, $c822                                   ; $5736: $21 $22 $c8
	ld   bc, $0004                                   ; $5739: $01 $04 $00
	call HBlankFarMemCopy                                       ; $573c: $cd $23 $0a
	ld   de, $9a05                                   ; $573f: $11 $05 $9a
	ld   a, $08                                      ; $5742: $3e $08
	ld   hl, $c826                                   ; $5744: $21 $26 $c8
	ld   bc, $0004                                   ; $5747: $01 $04 $00
	call HBlankFarMemCopy                                       ; $574a: $cd $23 $0a
	ret                                              ; $574d: $c9


	scf                                              ; $574e: $37
	jr   c, @+$46                                    ; $574f: $38 $44

	ld   b, l                                        ; $5751: $45
	ld   d, b                                        ; $5752: $50
	ld   d, c                                        ; $5753: $51


FadeBGpals8timesHandlingAnimatedSpriteSpecs::
; Fade 8 times
	ld   a, $08                                                     ; $5754

.loop:
	push af                                                         ; $5756

; Fade palettes
	ld   b, $00                                                     ; $5757
	ld   c, $40                                                     ; $5759
	call FadePalettesAndSetRangeToUpdate                            ; $575b

; Set oam based on animated sprites
	call ClearOam                                                   ; $575e
	call AnimateAllAnimatedSpriteSpecs                              ; $5761

; Wait 4 vblanks
	ld   bc, $0004                                                  ; $5764
	call WaitUntilBCVBlankIntsHandledIfLCDOn                        ; $5767

; To next loop
	pop  af                                                         ; $576a
	dec  a                                                          ; $576b
	jr   nz, .loop                                                  ; $576c

	ret                                                             ; $576e


FadeBGpalsToWhiteAndAudVol8timesHandlingAnimatedSpriteSpecs::
; Fade 8 times
	ld   a, $08                                                     ; $576f

.loop:
	push af                                                         ; $5771

; Fade palettes
	ld   b, $00                                                     ; $5772
	ld   c, $40                                                     ; $5774
	call FadePalettesAndSetRangeToUpdate                            ; $5776

; Set oam based on animated sprites
	call ClearOam                                                   ; $5779
	call AnimateAllAnimatedSpriteSpecs                              ; $577c

; Wait 4 vblanks
	ld   bc, $0004                                                  ; $577f
	call WaitUntilBCVBlankIntsHandledIfLCDOn                        ; $5782

; Fade volume out
	pop  af                                                         ; $5785
	push af                                                         ; $5786
	dec  a                                                          ; $5787
	call SafeSetAudVolForMultipleChannels                           ; $5788

; To next loop
	pop  af                                                         ; $578b
	dec  a                                                          ; $578c
	jr   nz, .loop                                                  ; $578d

; Set final palettes, and update all
	ld   a, BANK(Palettes_AllWhite)                                 ; $578f
	ld   hl, Palettes_AllWhite                                      ; $5791
	ld   de, wBGPalettes                                            ; $5794
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $5797
	call FarMemCopy                                                 ; $579a

	ld   bc, $003f                                                  ; $579d
	call SetBGandOBJPaletteRangesToUpdate                           ; $57a0
	ret                                                             ; $57a3


;
	ld   a, [$c80b]                                  ; $57a4: $fa $0b $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $57a7: $cd $76 $30
	push af                                          ; $57aa: $f5
	ld   a, $43                                      ; $57ab: $3e $43
	ld   [wFarCallAddr], a                                  ; $57ad: $ea $98 $c2
	ld   a, $41                                      ; $57b0: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $57b2: $ea $99 $c2
	ld   a, $01                                      ; $57b5: $3e $01
	ld   [wFarCallBank], a                                  ; $57b7: $ea $9a $c2
	pop  af                                          ; $57ba: $f1
	call FarCall                                       ; $57bb: $cd $62 $09
	ld   a, b                                        ; $57be: $78
	cp   $80                                         ; $57bf: $fe $80
	jr   nc, jr_011_57da                             ; $57c1: $30 $17

	call Call_011_5541                               ; $57c3: $cd $41 $55
	push af                                          ; $57c6: $f5
	ld   a, $2f                                      ; $57c7: $3e $2f
	ld   [wFarCallAddr], a                                  ; $57c9: $ea $98 $c2
	ld   a, $41                                      ; $57cc: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $57ce: $ea $99 $c2
	ld   a, $01                                      ; $57d1: $3e $01
	ld   [wFarCallBank], a                                  ; $57d3: $ea $9a $c2
	pop  af                                          ; $57d6: $f1
	call FarCall                                       ; $57d7: $cd $62 $09

jr_011_57da:
	ret                                              ; $57da: $c9


Call_011_57db:
	ld   a, [$c80d]                                  ; $57db: $fa $0d $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $57de: $cd $76 $30
	push af                                          ; $57e1: $f5
	ld   a, $43                                      ; $57e2: $3e $43
	ld   [wFarCallAddr], a                                  ; $57e4: $ea $98 $c2
	ld   a, $41                                      ; $57e7: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $57e9: $ea $99 $c2
	ld   a, $01                                      ; $57ec: $3e $01
	ld   [wFarCallBank], a                                  ; $57ee: $ea $9a $c2
	pop  af                                          ; $57f1: $f1
	call FarCall                                       ; $57f2: $cd $62 $09
	ld   e, $08                                      ; $57f5: $1e $08
	ld   a, $d6                                      ; $57f7: $3e $d6
	cp   c                                           ; $57f9: $b9
	jr   z, jr_011_57fe                              ; $57fa: $28 $02

	ld   e, $07                                      ; $57fc: $1e $07

jr_011_57fe:
	ld   a, [$c82e]                                  ; $57fe: $fa $2e $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5801: $cd $76 $30
	ld   a, e                                        ; $5804: $7b
	ld   de, $7180                                   ; $5805: $11 $80 $71
	push af                                          ; $5808: $f5
	ld   a, $1c                                      ; $5809: $3e $1c
	ld   [wFarCallAddr], a                                  ; $580b: $ea $98 $c2
	ld   a, $41                                      ; $580e: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5810: $ea $99 $c2
	ld   a, $01                                      ; $5813: $3e $01
	ld   [wFarCallBank], a                                  ; $5815: $ea $9a $c2
	pop  af                                          ; $5818: $f1
	call FarCall                                       ; $5819: $cd $62 $09
	ret                                              ; $581c: $c9


Call_011_581d:
	ld   a, [$cb1d]                                  ; $581d: $fa $1d $cb
	or   a                                           ; $5820: $b7
	jr   nz, jr_011_583d                             ; $5821: $20 $1a

	ld   c, $02                                      ; $5823: $0e $02
	ld   hl, $c81c                                   ; $5825: $21 $1c $c8
	ld   a, [hl+]                                    ; $5828: $2a
	ld   d, [hl]                                     ; $5829: $56
	ld   e, a                                        ; $582a: $5f
	ld   hl, $5837                                   ; $582b: $21 $37 $58
	call ReturnMiniGameRankInA                               ; $582e: $cd $5b $58
	ld   [$c82d], a                                  ; $5831: $ea $2d $c8
	cp   $02                                         ; $5834: $fe $02
	ret                                              ; $5836: $c9


	nop                                              ; $5837: $00
	nop                                              ; $5838: $00
	jr   jr_011_583c                                 ; $5839: $18 $01

	cp   h                                           ; $583b: $bc

jr_011_583c:
	ld   [bc], a                                     ; $583c: $02

jr_011_583d:
	ld   c, $04                                      ; $583d: $0e $04
	ld   hl, $c81c                                   ; $583f: $21 $1c $c8
	ld   a, [hl+]                                    ; $5842: $2a
	ld   d, [hl]                                     ; $5843: $56
	ld   e, a                                        ; $5844: $5f
	ld   hl, $5851                                   ; $5845: $21 $51 $58
	call ReturnMiniGameRankInA                               ; $5848: $cd $5b $58
	ld   [$c82d], a                                  ; $584b: $ea $2d $c8
	cp   $04                                         ; $584e: $fe $04
	ret                                              ; $5850: $c9


	nop                                              ; $5851: $00
	nop                                              ; $5852: $00
	jr   jr_011_5856                                 ; $5853: $18 $01

	db   $f4                                         ; $5855: $f4

jr_011_5856:
	ld   bc, $030c                                   ; $5856: $01 $0c $03
	add  sp, $03                                     ; $5859: $e8 $03


; C - idx of last table entry
; DE - score
; HL - table of score thresholds
ReturnMiniGameRankInA:
	sla  c                                           ; $585b: $cb $21
	ld   b, $00                                      ; $585d: $06 $00
	add  hl, bc                                      ; $585f: $09
	inc  hl                                          ; $5860: $23

.nextRank:
	ld   a, d                                        ; $5861: $7a
	cp   [hl]                                        ; $5862: $be
	jr   c, .toNextRank                              ; $5863: $38 $08

	jr   nz, .done                             ; $5865: $20 $0c

	dec  hl                                          ; $5867: $2b
	ld   a, e                                        ; $5868: $7b
	cp   [hl]                                        ; $5869: $be
	jr   nc, .done                             ; $586a: $30 $07

	inc  hl                                          ; $586c: $23

.toNextRank:
	dec  hl                                          ; $586d: $2b
	dec  hl                                          ; $586e: $2b
	dec  c                                           ; $586f: $0d
	dec  c                                           ; $5870: $0d
	jr   nz, .nextRank                             ; $5871: $20 $ee

.done:
	ld   a, c                                        ; $5873: $79
	srl  a                                           ; $5874: $cb $3f
	ret                                              ; $5876: $c9


	inc  de                                          ; $5877: $13
	inc  hl                                          ; $5878: $23
	ld   b, $01                                      ; $5879: $06 $01
	ld   c, $02                                      ; $587b: $0e $02

jr_011_587d:
	ld   a, [de]                                     ; $587d: $1a
	cp   [hl]                                        ; $587e: $be
	jr   c, jr_011_588a                              ; $587f: $38 $09

	jr   nz, jr_011_5888                             ; $5881: $20 $05

	dec  de                                          ; $5883: $1b
	dec  hl                                          ; $5884: $2b
	dec  c                                           ; $5885: $0d
	jr   nz, jr_011_587d                             ; $5886: $20 $f5

jr_011_5888:
	ld   b, $00                                      ; $5888: $06 $00

jr_011_588a:
	ld   a, b                                        ; $588a: $78
	ret                                              ; $588b: $c9


	ld   [$c830], a                                  ; $588c: $ea $30 $c8
	ld   a, [$cb1d]                                  ; $588f: $fa $1d $cb
	or   a                                           ; $5892: $b7
	jr   nz, jr_011_5897                             ; $5893: $20 $02

	ld   c, $00                                      ; $5895: $0e $00

jr_011_5897:
	ld   a, c                                        ; $5897: $79
	ld   [$c82f], a                                  ; $5898: $ea $2f $c8
	ld   a, h                                        ; $589b: $7c
	ld   [$c837], a                                  ; $589c: $ea $37 $c8
	ld   a, l                                        ; $589f: $7d
	ld   [$c838], a                                  ; $58a0: $ea $38 $c8
	ld   a, GS_SAKURA_MINI_GAME_MAIN                                      ; $58a3: $3e $0c
	ld   [wGameState], a                                  ; $58a5: $ea $a0 $c2
	ld   a, $03                                      ; $58a8: $3e $03
	ld   [wGameSubstate], a                                  ; $58aa: $ea $a1 $c2
	ret                                              ; $58ad: $c9


	ld   a, h                                        ; $58ae: $7c
	ld   [$c837], a                                  ; $58af: $ea $37 $c8
	ld   a, l                                        ; $58b2: $7d
	ld   [$c838], a                                  ; $58b3: $ea $38 $c8
	ld   a, GS_SAKURA_MINI_GAME_MAIN                                      ; $58b6: $3e $0c
	ld   [wGameState], a                                  ; $58b8: $ea $a0 $c2
	ld   a, $00                                      ; $58bb: $3e $00
	ld   [wGameSubstate], a                                  ; $58bd: $ea $a1 $c2
	ret                                              ; $58c0: $c9


GameState0d_MariaMiniGame::
	ld   a, [wGameSubstate]                                  ; $58c1: $fa $a1 $c2
	rst  JumpTable                                         ; $58c4: $df
	dw MariaMiniGameSubstate00
	dw $58ee
	dw $5b58
	dw $5ba1
	dw $5c0b
	dw $5c53
	dw MariaMiniGameSubstate06
	dw $5dbd
	dw $5dce
	dw MariaMiniGameSubstate09
	dw $5f70
	dw $61ba
	dw $6287
	dw $5f9a
	dw $5fe8
	dw $6093
	dw $620c


MariaMiniGameSubstate00:
	xor  a                                           ; $58e7: $af
	ld   [$c89c], a                                  ; $58e8: $ea $9c $c8
	ld   [$c8a0], a                                  ; $58eb: $ea $a0 $c8
	call TurnOnLCD                                       ; $58ee: $cd $09 $09
	ld   a, $07                                      ; $58f1: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $58f3: $cd $e0 $1c
	ld   a, $00                                      ; $58f6: $3e $00
	ld   [$c89f], a                                  ; $58f8: $ea $9f $c8
	ld   a, [$cb1d]                                  ; $58fb: $fa $1d $cb
	or   a                                           ; $58fe: $b7
	jr   z, jr_011_5920                              ; $58ff: $28 $1f

	ld   hl, $0120                                   ; $5901: $21 $20 $01
	push af                                          ; $5904: $f5
	ld   a, $d7                                      ; $5905: $3e $d7
	ld   [wFarCallAddr], a                                  ; $5907: $ea $98 $c2
	ld   a, $71                                      ; $590a: $3e $71
	ld   [wFarCallAddr+1], a                                  ; $590c: $ea $99 $c2
	ld   a, $0c                                      ; $590f: $3e $0c
	ld   [wFarCallBank], a                                  ; $5911: $ea $9a $c2
	pop  af                                          ; $5914: $f1
	call FarCall                                       ; $5915: $cd $62 $09
	or   a                                           ; $5918: $b7
	jr   z, jr_011_5920                              ; $5919: $28 $05

	ld   a, $01                                      ; $591b: $3e $01
	ld   [$c89f], a                                  ; $591d: $ea $9f $c8

jr_011_5920:
	ld   a, $ff                                      ; $5920: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $5922: $ea $0e $c2
	ld   a, $0c                                      ; $5925: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $5927: $ea $13 $c2
	ld   a, $04                                      ; $592a: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $592c: $ea $14 $c2
	call ClearOam                                       ; $592f: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $5932: $cd $59 $0b
	ld   a, $87                                      ; $5935: $3e $87
	ld   [wLCDC], a                                  ; $5937: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $593a: $fa $93 $c2
	push af                                          ; $593d: $f5
	ld   a, $03                                      ; $593e: $3e $03
	ld   [wWramBank], a                                  ; $5940: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5943: $e0 $70

;
	ld   a, $1a                                      ; $5945: $3e $1a
	ld   hl, $d000                                   ; $5947: $21 $00 $d0
	ld   de, $4bbe                                   ; $594a: $11 $be $4b
if def(VWF)
	call EnMariaMiniGameTitleScreenBank1_8800hHook                                       ; $594d: $cd $d2 $09
else
	call RLEXorCopy                                       ; $594d: $cd $d2 $09
endc

;
	ld   c, $81                                      ; $5950: $0e $81
	ld   de, $8800                                   ; $5952: $11 $00 $88
	ld   a, $03                                      ; $5955: $3e $03
	ld   hl, $d000                                   ; $5957: $21 $00 $d0
	ld   b, $40                                      ; $595a: $06 $40
	call EnqueueHDMATransfer                                       ; $595c: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $595f: $cf

;
	ld   c, $81                                      ; $5960: $0e $81
	ld   de, $8c00                                   ; $5962: $11 $00 $8c
	ld   a, $03                                      ; $5965: $3e $03
	ld   hl, $d400                                   ; $5967: $21 $00 $d4
	ld   b, $40                                      ; $596a: $06 $40
if def(VWF)
	call EnMariaTSHDMATransferHook
else
	call EnqueueHDMATransfer                                       ; $596c: $cd $7c $02
endc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $596f: $cf

;
	ld   a, $19                                      ; $5970: $3e $19
	ld   hl, $d000                                   ; $5972: $21 $00 $d0
	ld   de, $532a                                   ; $5975: $11 $2a $53
	call RLEXorCopy                                       ; $5978: $cd $d2 $09

;
	ld   c, $80                                      ; $597b: $0e $80
	ld   de, $8000                                   ; $597d: $11 $00 $80
	ld   a, $03                                      ; $5980: $3e $03
	ld   hl, $d000                                   ; $5982: $21 $00 $d0
	ld   b, $40                                      ; $5985: $06 $40
	call EnqueueHDMATransfer                                       ; $5987: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $598a: $cf

;
	ld   c, $80                                      ; $598b: $0e $80
	ld   de, $8400                                   ; $598d: $11 $00 $84
	ld   a, $03                                      ; $5990: $3e $03
	ld   hl, $d400                                   ; $5992: $21 $00 $d4
	ld   b, $60                                      ; $5995: $06 $60
	call EnqueueHDMATransfer                                       ; $5997: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $599a: $cf

;
	ld   c, $80                                      ; $599b: $0e $80
	ld   de, $8a00                                   ; $599d: $11 $00 $8a
	ld   a, $03                                      ; $59a0: $3e $03
	ld   hl, $da00                                   ; $59a2: $21 $00 $da
	ld   b, $60                                      ; $59a5: $06 $60
	call EnqueueHDMATransfer                                       ; $59a7: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59aa: $cf

;
	ld   a, BANK(TileAttr_MariaMiniGameTitleScreen)                                      ; $59ab: $3e $1a
	ld   de, TileAttr_MariaMiniGameTitleScreen                                   ; $59ad: $11 $30 $7d
	ld   hl, $dc40                                   ; $59b0: $21 $40 $dc
	ld   bc, $1412                                   ; $59b3: $01 $12 $14
	call FarCopyLayout                                       ; $59b6: $cd $2c $0b

	ld   a, BANK(TileMap_MariaMiniGameTitleScreen)                                      ; $59b9: $3e $1a
	ld   hl, $da00                                   ; $59bb: $21 $00 $da
	call FarCopyLayout                                       ; $59be: $cd $2c $0b

;
	ld   c, $81                                      ; $59c1: $0e $81
	ld   de, $9800                                   ; $59c3: $11 $00 $98
	ld   a, $03                                      ; $59c6: $3e $03
	ld   hl, $dc40                                   ; $59c8: $21 $40 $dc
	ld   b, $24                                      ; $59cb: $06 $24
	call EnqueueHDMATransfer                                       ; $59cd: $cd $7c $02
	ld   c, $80                                      ; $59d0: $0e $80
	ld   de, $9800                                   ; $59d2: $11 $00 $98
	ld   a, $03                                      ; $59d5: $3e $03
	ld   hl, $da00                                   ; $59d7: $21 $00 $da
	ld   b, $24                                      ; $59da: $06 $24
	call EnqueueHDMATransfer                                       ; $59dc: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59df: $cf
	ld   de, $d500                                   ; $59e0: $11 $00 $d5
	ld   hl, $dda0                                   ; $59e3: $21 $a0 $dd
	ld   bc, $00c0                                   ; $59e6: $01 $c0 $00
	call MemCopy                                       ; $59e9: $cd $a9 $09
	ld   de, $d400                                   ; $59ec: $11 $00 $d4
	ld   hl, $dda0                                   ; $59ef: $21 $a0 $dd
	ld   bc, $00c0                                   ; $59f2: $01 $c0 $00
	call MemCopy                                       ; $59f5: $cd $a9 $09
	ld   de, $d300                                   ; $59f8: $11 $00 $d3
	ld   hl, $dda0                                   ; $59fb: $21 $a0 $dd
	ld   bc, $00c0                                   ; $59fe: $01 $c0 $00
	call MemCopy                                       ; $5a01: $cd $a9 $09
	ld   de, $d700                                   ; $5a04: $11 $00 $d7
	ld   hl, $ddc0                                   ; $5a07: $21 $c0 $dd
	ld   bc, $0060                                   ; $5a0a: $01 $60 $00
	call MemCopy                                       ; $5a0d: $cd $a9 $09
	ld   de, $d900                                   ; $5a10: $11 $00 $d9
	ld   hl, $dda0                                   ; $5a13: $21 $a0 $dd
	ld   bc, $00c0                                   ; $5a16: $01 $c0 $00
	call MemCopy                                       ; $5a19: $cd $a9 $09
	ld   de, $d200                                   ; $5a1c: $11 $00 $d2
	ld   hl, $db60                                   ; $5a1f: $21 $60 $db
	ld   bc, $00c0                                   ; $5a22: $01 $c0 $00
	call MemCopy                                       ; $5a25: $cd $a9 $09
	ld   de, $d100                                   ; $5a28: $11 $00 $d1
	ld   hl, $db60                                   ; $5a2b: $21 $60 $db
	ld   bc, $00c0                                   ; $5a2e: $01 $c0 $00
	call MemCopy                                       ; $5a31: $cd $a9 $09
	ld   de, $d000                                   ; $5a34: $11 $00 $d0
	ld   hl, $db60                                   ; $5a37: $21 $60 $db
	ld   bc, $00c0                                   ; $5a3a: $01 $c0 $00
	call MemCopy                                       ; $5a3d: $cd $a9 $09
	ld   de, $d600                                   ; $5a40: $11 $00 $d6
	ld   hl, $db80                                   ; $5a43: $21 $80 $db
	ld   bc, $0060                                   ; $5a46: $01 $60 $00
	call MemCopy                                       ; $5a49: $cd $a9 $09
	ld   de, $d800                                   ; $5a4c: $11 $00 $d8
	ld   hl, $db60                                   ; $5a4f: $21 $60 $db
	ld   bc, $00c0                                   ; $5a52: $01 $c0 $00
	call MemCopy                                       ; $5a55: $cd $a9 $09

; Practice popup box
	ld   a, BANK(TileAttr_MariaMiniGameTSPracticeBox)                                      ; $5a58: $3e $1e
	ld   de, TileAttr_MariaMiniGameTSPracticeBox                                  ; $5a5a: $11 $40 $73
	ld   hl, $d409                                   ; $5a5d: $21 $09 $d4
	ld   bc, $0806                                   ; $5a60: $01 $06 $08
	call FarCopyLayout                                       ; $5a63: $cd $2c $0b

	ld   a, BANK(TileMap_MariaMiniGameTSPracticeBox)                                      ; $5a66: $3e $1e
	ld   hl, $d109                                   ; $5a68: $21 $09 $d1
	call FarCopyLayout                                       ; $5a6b: $cd $2c $0b

; 1st popup box
	ld   a, BANK(TileAttr_MariaMiniGameTSPopupBox)                                      ; $5a6e: $3e $1e
	ld   de, TileAttr_MariaMiniGameTSPopupBox                                   ; $5a70: $11 $ce $7a
	ld   hl, $d329                                   ; $5a73: $21 $29 $d3
	ld   bc, $0804                                   ; $5a76: $01 $04 $08
	call FarCopyLayout                                       ; $5a79: $cd $2c $0b

	ld   a, BANK(TileMap_MariaMiniGameTSPopupBox)                                      ; $5a7c: $3e $1e
	ld   hl, $d029                                   ; $5a7e: $21 $29 $d0
	call FarCopyLayout                                       ; $5a81: $cd $2c $0b

;
	ld   a, $1e                                      ; $5a84: $3e $1e
	ld   de, $7d81                                   ; $5a86: $11 $81 $7d
	ld   hl, $d709                                   ; $5a89: $21 $09 $d7
	ld   bc, $0803                                   ; $5a8c: $01 $03 $08
	call FarCopyLayout                                       ; $5a8f: $cd $2c $0b
	ld   a, $1e                                      ; $5a92: $3e $1e
	ld   hl, $d609                                   ; $5a94: $21 $09 $d6
	call FarCopyLayout                                       ; $5a97: $cd $2c $0b

; Difficulty popup box
	ld   a, BANK(TileAttr_MariaMiniGameTSDifficultyBox)                                      ; $5a9a: $3e $1e
	ld   de, TileAttr_MariaMiniGameTSDifficultyBox                                   ; $5a9c: $11 $a0 $73
	ld   hl, $d909                                   ; $5a9f: $21 $09 $d9
	ld   bc, $0806                                   ; $5aa2: $01 $06 $08
	call FarCopyLayout                                       ; $5aa5: $cd $2c $0b

	ld   a, BANK(TileMap_MariaMiniGameTSDifficultyBox)                                      ; $5aa8: $3e $1e
	ld   hl, $d809                                   ; $5aaa: $21 $09 $d8
	call FarCopyLayout                                       ; $5aad: $cd $2c $0b

;
	pop  af                                          ; $5ab0: $f1
	ld   [wWramBank], a                                  ; $5ab1: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5ab4: $e0 $70
	xor  a                                           ; $5ab6: $af
	ld   [wWX], a                                  ; $5ab7: $ea $09 $c2
	ld   [wWY], a                                  ; $5aba: $ea $0a $c2
	ld   [wSCX], a                                  ; $5abd: $ea $07 $c2
	ld   [wSCY], a                                  ; $5ac0: $ea $08 $c2
	call ClearBaseAnimSpriteSpecDetails                                       ; $5ac3: $cd $c9 $2e
	ld   a, $01                                      ; $5ac6: $3e $01
	ld   hl, $0000                                   ; $5ac8: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $5acb: $cd $4b $2f
	ld   [$c8a1], a                                  ; $5ace: $ea $a1 $c8
	call StartAnimatingAnimatedSpriteSpec                                       ; $5ad1: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5ad4: $cd $76 $30
	ld   a, $00                                      ; $5ad7: $3e $00
	ld   bc, $0000                                   ; $5ad9: $01 $00 $00
	ld   de, $7180                                   ; $5adc: $11 $80 $71
	push af                                          ; $5adf: $f5
	ld   a, $03                                      ; $5ae0: $3e $03
	ld   [wFarCallAddr], a                                  ; $5ae2: $ea $98 $c2
	ld   a, $41                                      ; $5ae5: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5ae7: $ea $99 $c2
	ld   a, $01                                      ; $5aea: $3e $01
	ld   [wFarCallBank], a                                  ; $5aec: $ea $9a $c2
	pop  af                                          ; $5aef: $f1
	call FarCall                                       ; $5af0: $cd $62 $09
	ld   a, $01                                      ; $5af3: $3e $01
	ld   hl, $7000                                   ; $5af5: $21 $00 $70
	ld   de, wBGPalettes                                   ; $5af8: $11 $de $c2
	ld   bc, $0080                                   ; $5afb: $01 $80 $00
	call FarMemCopy                                       ; $5afe: $cd $b2 $09
	ld   bc, $003f                                   ; $5b01: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5b04: $cd $aa $04
	xor  a                                           ; $5b07: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5b08: $ea $62 $c3
	ld   a, $40                                      ; $5b0b: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5b0d: $ea $63 $c3
	ld   a, $03                                      ; $5b10: $3e $03
	ld   b, $01                                      ; $5b12: $06 $01
	ld   hl, $7000                                   ; $5b14: $21 $00 $70
	ld   c, $1e                                      ; $5b17: $0e $1e
	ld   de, $6a7c                                   ; $5b19: $11 $7c $6a
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5b1c: $cd $48 $07
	ld   a, $08                                      ; $5b1f: $3e $08
	call PlaySong                                       ; $5b21: $cd $92 $1a
	ld   a, [wGameSubstate]                                  ; $5b24: $fa $a1 $c2
	cp   $01                                         ; $5b27: $fe $01
	jr   z, jr_011_5b35                              ; $5b29: $28 $0a

	call Call_011_6ba7                               ; $5b2b: $cd $a7 $6b
	ld   a, $02                                      ; $5b2e: $3e $02
	ld   [wGameSubstate], a                                  ; $5b30: $ea $a1 $c2
	jr   jr_011_5b3d                                 ; $5b33: $18 $08

jr_011_5b35:
	call DisplayMaria1stPopupBox                               ; $5b35: $cd $b1 $6b
	ld   a, $03                                      ; $5b38: $3e $03
	ld   [wGameSubstate], a                                  ; $5b3a: $ea $a1 $c2

jr_011_5b3d:
	call Call_011_6ad7                               ; $5b3d: $cd $d7 $6a
	call Call_011_6a43                               ; $5b40: $cd $43 $6a
	ld   a, $1e                                      ; $5b43: $3e $1e
	ld   hl, $6a7c                                   ; $5b45: $21 $7c $6a
	ld   de, wBGPalettes                                   ; $5b48: $11 $de $c2
	ld   bc, $0080                                   ; $5b4b: $01 $80 $00
	call FarMemCopy                                       ; $5b4e: $cd $b2 $09
	ld   bc, $003f                                   ; $5b51: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5b54: $cd $aa $04
	ret                                              ; $5b57: $c9


	call Call_011_6ad7                               ; $5b58: $cd $d7 $6a
	call Call_011_6b56                               ; $5b5b: $cd $56 $6b
	push af                                          ; $5b5e: $f5
	ld   a, $47                                      ; $5b5f: $3e $47
	ld   [wFarCallAddr], a                                  ; $5b61: $ea $98 $c2
	ld   a, $46                                      ; $5b64: $3e $46
	ld   [wFarCallAddr+1], a                                  ; $5b66: $ea $99 $c2
	ld   a, $3f                                      ; $5b69: $3e $3f
	ld   [wFarCallBank], a                                  ; $5b6b: $ea $9a $c2
	pop  af                                          ; $5b6e: $f1
	call FarCall                                       ; $5b6f: $cd $62 $09
	ld   a, [wInGameButtonsPressed]                                  ; $5b72: $fa $10 $c2
	bit  0, a                                        ; $5b75: $cb $47
	jr   z, jr_011_5b87                              ; $5b77: $28 $0e

	call DisplayMaria1stPopupBox                               ; $5b79: $cd $b1 $6b
	ld   hl, wGameSubstate                                   ; $5b7c: $21 $a1 $c2
	inc  [hl]                                        ; $5b7f: $34
	ld   a, $21                                      ; $5b80: $3e $21
	call PlaySoundEffect                                       ; $5b82: $cd $df $1a
	jr   jr_011_5ba0                                 ; $5b85: $18 $19

jr_011_5b87:
	bit  1, a                                        ; $5b87: $cb $4f
	jr   z, jr_011_5ba0                              ; $5b89: $28 $15

	ld   a, [$cb1d]                                  ; $5b8b: $fa $1d $cb
	or   a                                           ; $5b8e: $b7
	jr   z, jr_011_5ba0                              ; $5b8f: $28 $0f

	ld   a, $04                                      ; $5b91: $3e $04
	ld   [$c89c], a                                  ; $5b93: $ea $9c $c8
	ld   a, $05                                      ; $5b96: $3e $05
	ld   [wGameSubstate], a                                  ; $5b98: $ea $a1 $c2
	ld   a, $22                                      ; $5b9b: $3e $22
	call PlaySoundEffect                                       ; $5b9d: $cd $df $1a

jr_011_5ba0:
	ret                                              ; $5ba0: $c9


	ld   hl, $c89c                                   ; $5ba1: $21 $9c $c8
	ld   c, $01                                      ; $5ba4: $0e $01
	ld   a, [$cb1d]                                  ; $5ba6: $fa $1d $cb
	or   a                                           ; $5ba9: $b7
	jr   nz, jr_011_5bae                             ; $5baa: $20 $02

	ld   c, $02                                      ; $5bac: $0e $02

jr_011_5bae:
	ld   a, [wInGameButtonsPressed]                                  ; $5bae: $fa $10 $c2
	bit  6, a                                        ; $5bb1: $cb $77
	jr   z, jr_011_5bbc                              ; $5bb3: $28 $07

	ld   a, [hl]                                     ; $5bb5: $7e
	or   a                                           ; $5bb6: $b7
	jr   z, jr_011_5c07                              ; $5bb7: $28 $4e

	dec  [hl]                                        ; $5bb9: $35
	jr   jr_011_5bc5                                 ; $5bba: $18 $09

jr_011_5bbc:
	bit  7, a                                        ; $5bbc: $cb $7f
	jr   z, jr_011_5bcf                              ; $5bbe: $28 $0f

	ld   a, [hl]                                     ; $5bc0: $7e
	cp   c                                           ; $5bc1: $b9
	jr   z, jr_011_5c07                              ; $5bc2: $28 $43

	inc  [hl]                                        ; $5bc4: $34

jr_011_5bc5:
	call Call_011_6b19                               ; $5bc5: $cd $19 $6b
	ld   a, $20                                      ; $5bc8: $3e $20
	call PlaySoundEffect                                       ; $5bca: $cd $df $1a
	jr   jr_011_5c07                                 ; $5bcd: $18 $38

jr_011_5bcf:
	bit  1, a                                        ; $5bcf: $cb $4f
	jr   z, jr_011_5be4                              ; $5bd1: $28 $11

	call Call_011_6c1b                               ; $5bd3: $cd $1b $6c
	call Call_011_6ba7                               ; $5bd6: $cd $a7 $6b
	ld   hl, wGameSubstate                                   ; $5bd9: $21 $a1 $c2
	dec  [hl]                                        ; $5bdc: $35
	ld   a, $22                                      ; $5bdd: $3e $22
	call PlaySoundEffect                                       ; $5bdf: $cd $df $1a
	jr   jr_011_5c07                                 ; $5be2: $18 $23

jr_011_5be4:
	bit  0, a                                        ; $5be4: $cb $47
	jr   z, jr_011_5c07                              ; $5be6: $28 $1f

	ld   a, $21                                      ; $5be8: $3e $21
	call PlaySoundEffect                                       ; $5bea: $cd $df $1a
	ld   a, $05                                      ; $5bed: $3e $05
	ld   [wGameSubstate], a                                  ; $5bef: $ea $a1 $c2
	ld   a, [$c89c]                                  ; $5bf2: $fa $9c $c8
	or   a                                           ; $5bf5: $b7
	jr   z, jr_011_5c07                              ; $5bf6: $28 $0f

	ld   a, [$c89f]                                  ; $5bf8: $fa $9f $c8
	cp   $00                                         ; $5bfb: $fe $00
	jr   z, jr_011_5c07                              ; $5bfd: $28 $08

	call DisplayMariaDifficultyPopupBox                               ; $5bff: $cd $f9 $6b
	ld   a, $04                                      ; $5c02: $3e $04
	ld   [wGameSubstate], a                                  ; $5c04: $ea $a1 $c2

jr_011_5c07:
	call Call_011_6ad7                               ; $5c07: $cd $d7 $6a
	ret                                              ; $5c0a: $c9


	ld   hl, $c8a0                                   ; $5c0b: $21 $a0 $c8
	ld   a, [wInGameButtonsPressed]                                  ; $5c0e: $fa $10 $c2
	bit  6, a                                        ; $5c11: $cb $77
	jr   z, jr_011_5c1c                              ; $5c13: $28 $07

	ld   a, [hl]                                     ; $5c15: $7e
	or   a                                           ; $5c16: $b7
	jr   z, jr_011_5c4f                              ; $5c17: $28 $36

	dec  [hl]                                        ; $5c19: $35
	jr   jr_011_5c26                                 ; $5c1a: $18 $0a

jr_011_5c1c:
	bit  7, a                                        ; $5c1c: $cb $7f
	jr   z, jr_011_5c30                              ; $5c1e: $28 $10

	ld   a, [hl]                                     ; $5c20: $7e
	cp   $01                                         ; $5c21: $fe $01
	jr   z, jr_011_5c4f                              ; $5c23: $28 $2a

	inc  [hl]                                        ; $5c25: $34

jr_011_5c26:
	call Call_011_6b0f                               ; $5c26: $cd $0f $6b
	ld   a, $20                                      ; $5c29: $3e $20
	call PlaySoundEffect                                       ; $5c2b: $cd $df $1a
	jr   jr_011_5c4f                                 ; $5c2e: $18 $1f

jr_011_5c30:
	bit  1, a                                        ; $5c30: $cb $4f
	jr   z, jr_011_5c42                              ; $5c32: $28 $0e

	call DisplayMaria1stPopupBox                               ; $5c34: $cd $b1 $6b
	ld   hl, wGameSubstate                                   ; $5c37: $21 $a1 $c2
	dec  [hl]                                        ; $5c3a: $35
	ld   a, $22                                      ; $5c3b: $3e $22
	call PlaySoundEffect                                       ; $5c3d: $cd $df $1a
	jr   jr_011_5c4f                                 ; $5c40: $18 $0d

jr_011_5c42:
	bit  0, a                                        ; $5c42: $cb $47
	jr   z, jr_011_5c4f                              ; $5c44: $28 $09

	ld   a, $21                                      ; $5c46: $3e $21
	call PlaySoundEffect                                       ; $5c48: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $5c4b: $21 $a1 $c2
	inc  [hl]                                        ; $5c4e: $34

jr_011_5c4f:
	call Call_011_6ad7                               ; $5c4f: $cd $d7 $6a
	ret                                              ; $5c52: $c9


	call Call_011_6ad7                               ; $5c53: $cd $d7 $6a
	ld   a, [$c89c]                                  ; $5c56: $fa $9c $c8
	or   a                                           ; $5c59: $b7
	jr   z, jr_011_5c84                              ; $5c5a: $28 $28

	cp   $04                                         ; $5c5c: $fe $04
	jr   z, jr_011_5c84                              ; $5c5e: $28 $24

	ld   a, [$c8a1]                                  ; $5c60: $fa $a1 $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5c63: $cd $76 $30
	push af                                          ; $5c66: $f5
	ld   a, $43                                      ; $5c67: $3e $43
	ld   [wFarCallAddr], a                                  ; $5c69: $ea $98 $c2
	ld   a, $41                                      ; $5c6c: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5c6e: $ea $99 $c2
	ld   a, $01                                      ; $5c71: $3e $01
	ld   [wFarCallBank], a                                  ; $5c73: $ea $9a $c2
	pop  af                                          ; $5c76: $f1
	call FarCall                                       ; $5c77: $cd $62 $09
	ld   a, c                                        ; $5c7a: $79
	cp   $5a                                         ; $5c7b: $fe $5a
	ret  nz                                          ; $5c7d: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c7e: $cf
	ld   a, $43                                      ; $5c7f: $3e $43
	call PlaySampledSound                                       ; $5c81: $cd $64 $1b

jr_011_5c84:
	xor  a                                           ; $5c84: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5c85: $ea $62 $c3
	ld   a, $40                                      ; $5c88: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5c8a: $ea $63 $c3
	ld   a, $03                                      ; $5c8d: $3e $03
	ld   b, $1e                                      ; $5c8f: $06 $1e
	ld   hl, $6a7c                                   ; $5c91: $21 $7c $6a
	ld   c, $01                                      ; $5c94: $0e $01
	ld   de, $7000                                   ; $5c96: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5c99: $cd $48 $07
	ld   a, [$c89c]                                  ; $5c9c: $fa $9c $c8
	push af                                          ; $5c9f: $f5
	ld   a, $83                                      ; $5ca0: $3e $83
	ld   [wFarCallAddr], a                                  ; $5ca2: $ea $98 $c2
	ld   a, $77                                      ; $5ca5: $3e $77
	ld   [wFarCallAddr+1], a                                  ; $5ca7: $ea $99 $c2
	ld   a, $3e                                      ; $5caa: $3e $3e
	ld   [wFarCallBank], a                                  ; $5cac: $ea $9a $c2
	pop  af                                          ; $5caf: $f1
	call FarCall                                       ; $5cb0: $cd $62 $09
	ld   a, $06                                      ; $5cb3: $3e $06
	ld   [wGameSubstate], a                                  ; $5cb5: $ea $a1 $c2
	ld   a, [$c89c]                                  ; $5cb8: $fa $9c $c8
	or   a                                           ; $5cbb: $b7
	jr   z, jr_011_5cdc                              ; $5cbc: $28 $1e

	ld   a, [$c8a0]                                  ; $5cbe: $fa $a0 $c8
	ld   [$c8ab], a                                  ; $5cc1: $ea $ab $c8
	ld   a, $09                                      ; $5cc4: $3e $09
	ld   [wGameSubstate], a                                  ; $5cc6: $ea $a1 $c2
	ld   a, [$c89c]                                  ; $5cc9: $fa $9c $c8
	cp   $04                                         ; $5ccc: $fe $04
	jr   nz, jr_011_5cdc                             ; $5cce: $20 $0c

	ld   a, [$c8ad]                                  ; $5cd0: $fa $ad $c8
	ld   [wGameState], a                                  ; $5cd3: $ea $a0 $c2
	ld   a, [$c8ae]                                  ; $5cd6: $fa $ae $c8
	ld   [wGameSubstate], a                                  ; $5cd9: $ea $a1 $c2

jr_011_5cdc:
	ret                                              ; $5cdc: $c9


MariaMiniGameSubstate06:
	ld   a, $ff                                      ; $5cdd: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $5cdf: $ea $0e $c2
	ld   a, $0c                                      ; $5ce2: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $5ce4: $ea $13 $c2
	ld   a, $04                                      ; $5ce7: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $5ce9: $ea $14 $c2
	call ClearOam                                       ; $5cec: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $5cef: $cd $59 $0b
	ld   a, $83                                      ; $5cf2: $3e $83
	ld   [wLCDC], a                                  ; $5cf4: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $5cf7: $fa $93 $c2
	push af                                          ; $5cfa: $f5
	ld   a, $03                                      ; $5cfb: $3e $03
	ld   [wWramBank], a                                  ; $5cfd: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5d00: $e0 $70

;
	ld   a, $1e                                      ; $5d02: $3e $1e
	ld   hl, $d000                                   ; $5d04: $21 $00 $d0
	ld   de, $4d0f                                   ; $5d07: $11 $0f $4d
if def(VWF)
	call MariaMiniGameHelpScreenTileAttrHook
else
	call RLEXorCopy                                       ; $5d0a: $cd $d2 $09
endc

;
	ld   c, $81                                      ; $5d0d: $0e $81
	ld   de, $9800                                   ; $5d0f: $11 $00 $98
	ld   a, $03                                      ; $5d12: $3e $03
	ld   hl, $d000                                   ; $5d14: $21 $00 $d0
	ld   b, $24                                      ; $5d17: $06 $24
	call EnqueueHDMATransfer                                       ; $5d19: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d1c: $cf

;
	ld   a, $1e                                      ; $5d1d: $3e $1e
	ld   hl, $d000                                   ; $5d1f: $21 $00 $d0
	ld   de, $4769                                   ; $5d22: $11 $69 $47
if def(VWF)
	call MariaMiniGameHelpScreenTileMapHook
else
	call RLEXorCopy                                       ; $5d25: $cd $d2 $09
endc

;
	ld   c, $80                                      ; $5d28: $0e $80
	ld   de, $9800                                   ; $5d2a: $11 $00 $98
	ld   a, $03                                      ; $5d2d: $3e $03
	ld   hl, $d000                                   ; $5d2f: $21 $00 $d0
	ld   b, $24                                      ; $5d32: $06 $24
	call EnqueueHDMATransfer                                       ; $5d34: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d37: $cf

;
	ld   a, $19                                      ; $5d38: $3e $19
	ld   hl, $d000                                   ; $5d3a: $21 $00 $d0
	ld   de, $5972                                   ; $5d3d: $11 $72 $59
if def(VWF)
	call MariaMiniGameHelpScreenTileDataHook
else
	call RLEXorCopy                                       ; $5d40: $cd $d2 $09
endc

;
	ld   c, $80                                      ; $5d43: $0e $80
	ld   de, $8800                                   ; $5d45: $11 $00 $88
	ld   a, $03                                      ; $5d48: $3e $03
	ld   hl, $d000                                   ; $5d4a: $21 $00 $d0
	ld   b, $40                                      ; $5d4d: $06 $40
	call EnqueueHDMATransfer                                       ; $5d4f: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d52: $cf

;
	ld   c, $80                                      ; $5d53: $0e $80
	ld   de, $8c00                                   ; $5d55: $11 $00 $8c
	ld   a, $03                                      ; $5d58: $3e $03
	ld   hl, $d400                                   ; $5d5a: $21 $00 $d4
	ld   b, $60                                      ; $5d5d: $06 $60
	call EnqueueHDMATransfer                                       ; $5d5f: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d62: $cf

;
	ld   c, $80                                      ; $5d63: $0e $80
	ld   de, $9200                                   ; $5d65: $11 $00 $92
	ld   a, $03                                      ; $5d68: $3e $03
	ld   hl, $da00                                   ; $5d6a: $21 $00 $da
	ld   b, $60                                      ; $5d6d: $06 $60
	call EnqueueHDMATransfer                                       ; $5d6f: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d72: $cf

;
	pop  af                                          ; $5d73: $f1
	ld   [wWramBank], a                                  ; $5d74: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5d77: $e0 $70
	xor  a                                           ; $5d79: $af
	ld   [wWX], a                                  ; $5d7a: $ea $09 $c2
	ld   [wWY], a                                  ; $5d7d: $ea $0a $c2
	ld   [wSCX], a                                  ; $5d80: $ea $07 $c2
	ld   [wSCY], a                                  ; $5d83: $ea $08 $c2
	call ClearBaseAnimSpriteSpecDetails                                       ; $5d86: $cd $c9 $2e
	xor  a                                           ; $5d89: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5d8a: $ea $62 $c3
	ld   a, $40                                      ; $5d8d: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5d8f: $ea $63 $c3
	ld   a, $03                                      ; $5d92: $3e $03
	ld   b, $01                                      ; $5d94: $06 $01
	ld   hl, $7000                                   ; $5d96: $21 $00 $70
	ld   c, $1e                                      ; $5d99: $0e $1e
	ld   de, $79ce                                   ; $5d9b: $11 $ce $79
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5d9e: $cd $48 $07
	call Call_011_6a43                               ; $5da1: $cd $43 $6a
	ld   a, $1e                                      ; $5da4: $3e $1e
	ld   hl, $79ce                                   ; $5da6: $21 $ce $79
	ld   de, wBGPalettes                                   ; $5da9: $11 $de $c2
	ld   bc, $0040                                   ; $5dac: $01 $40 $00
	call FarMemCopy                                       ; $5daf: $cd $b2 $09
	ld   bc, $001f                                   ; $5db2: $01 $1f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5db5: $cd $aa $04
	ld   hl, wGameSubstate                                   ; $5db8: $21 $a1 $c2
	inc  [hl]                                        ; $5dbb: $34
	ret                                              ; $5dbc: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $5dbd: $fa $10 $c2
	and  $03                                         ; $5dc0: $e6 $03
	jr   z, jr_011_5dcd                              ; $5dc2: $28 $09

	ld   a, $21                                      ; $5dc4: $3e $21
	call PlaySoundEffect                                       ; $5dc6: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $5dc9: $21 $a1 $c2
	inc  [hl]                                        ; $5dcc: $34

jr_011_5dcd:
	ret                                              ; $5dcd: $c9


	xor  a                                           ; $5dce: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5dcf: $ea $62 $c3
	ld   a, $20                                      ; $5dd2: $3e $20
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5dd4: $ea $63 $c3
	ld   a, $03                                      ; $5dd7: $3e $03
	ld   b, $1e                                      ; $5dd9: $06 $1e
	ld   hl, $79ce                                   ; $5ddb: $21 $ce $79
	ld   c, $01                                      ; $5dde: $0e $01
	ld   de, $7000                                   ; $5de0: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5de3: $cd $48 $07
	call Call_011_6a43                               ; $5de6: $cd $43 $6a
	ld   a, $01                                      ; $5de9: $3e $01
	ld   hl, $7000                                   ; $5deb: $21 $00 $70
	ld   de, wBGPalettes                                   ; $5dee: $11 $de $c2
	ld   bc, $0040                                   ; $5df1: $01 $40 $00
	call FarMemCopy                                       ; $5df4: $cd $b2 $09
	ld   bc, $001f                                   ; $5df7: $01 $1f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5dfa: $cd $aa $04
	ld   a, $01                                      ; $5dfd: $3e $01
	ld   [wGameSubstate], a                                  ; $5dff: $ea $a1 $c2
	ret                                              ; $5e02: $c9


MariaMiniGameSubstate09:
	ld   a, $ff                                      ; $5e03: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $5e05: $ea $0e $c2
	ld   a, $0c                                      ; $5e08: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $5e0a: $ea $13 $c2
	ld   a, $04                                      ; $5e0d: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $5e0f: $ea $14 $c2
	call ClearOam                                       ; $5e12: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $5e15: $cd $59 $0b
	ld   a, $43                                      ; $5e18: $3e $43
	ld   [wLCDC], a                                  ; $5e1a: $ea $03 $c2

	ld   a, $01                                      ; $5e1d: $3e $01
	ldh  [rVBK], a                                   ; $5e1f: $e0 $4f

; Load tile attr
	ld   a, $1d                                      ; $5e21: $3e $1d
	ld   hl, $9800                                   ; $5e23: $21 $00 $98
	ld   de, $6f7d                                   ; $5e26: $11 $7d $6f
if def(VWF)
	call MariaMiniGameMainTileAttrHook
else
	call RLEXorCopy                                       ; $5e29: $cd $d2 $09
endc

; Load bank 1 OBJ tile data
	ld   a, $17                                      ; $5e2c: $3e $17
	ld   hl, $8000                                   ; $5e2e: $21 $00 $80
	ld   de, $7b8e                                   ; $5e31: $11 $8e $7b
	call RLEXorCopy                                       ; $5e34: $cd $d2 $09

; Load bank 1 BG tile data
	ld   a, $18                                      ; $5e37: $3e $18
	ld   hl, $8800                                   ; $5e39: $21 $00 $88
	ld   de, $5b56                                   ; $5e3c: $11 $56 $5b
if def(VWF)
	call MariaMiniGameMainBank0_8800hHook
else
	call RLEXorCopy                                       ; $5e3f: $cd $d2 $09
endc

;
	ld   hl, $9c00                                   ; $5e42: $21 $00 $9c
	ld   bc, $0400                                   ; $5e45: $01 $00 $04
	call MemClear                                       ; $5e48: $cd $95 $09
	xor  a                                           ; $5e4b: $af
	ldh  [rVBK], a                                   ; $5e4c: $e0 $4f

; Load tile map
	ld   a, $1d                                      ; $5e4e: $3e $1d
	ld   hl, $9800                                   ; $5e50: $21 $00 $98
	ld   de, $4000                                   ; $5e53: $11 $00 $40
if def(VWF)
	call MariaMiniGameMainTileMapHook
else
	call RLEXorCopy                                       ; $5e56: $cd $d2 $09
endc

;
	ld   a, $14                                      ; $5e59: $3e $14
	ld   hl, $8000                                   ; $5e5b: $21 $00 $80
	ld   de, $4000                                   ; $5e5e: $11 $00 $40
	call RLEXorCopy                                       ; $5e61: $cd $d2 $09

;
	ld   hl, $9c00                                   ; $5e64: $21 $00 $9c
	ld   bc, $0400                                   ; $5e67: $01 $00 $04
	ld   a, $56                                      ; $5e6a: $3e $56
	call MemSet                                       ; $5e6c: $cd $96 $09
	ld   de, $c8a2                                   ; $5e6f: $11 $a2 $c8
	ld   hl, $9a0e                                   ; $5e72: $21 $0e $9a
	ld   bc, $0004                                   ; $5e75: $01 $04 $00
	call MemCopy                                       ; $5e78: $cd $a9 $09
	ld   a, $37                                      ; $5e7b: $3e $37
	ld   [wWX], a                                  ; $5e7d: $ea $09 $c2
	xor  a                                           ; $5e80: $af
	ld   [wWY], a                                  ; $5e81: $ea $0a $c2
	ld   [wSCX], a                                  ; $5e84: $ea $07 $c2
	ld   [wSCY], a                                  ; $5e87: $ea $08 $c2
	ld   hl, $c85e                                   ; $5e8a: $21 $5e $c8
	ld   [hl+], a                                    ; $5e8d: $22
	ld   [hl+], a                                    ; $5e8e: $22
	ld   [hl+], a                                    ; $5e8f: $22
	ld   [hl+], a                                    ; $5e90: $22
	ld   [hl+], a                                    ; $5e91: $22
	ld   [hl+], a                                    ; $5e92: $22
	ld   [$c896], a                                  ; $5e93: $ea $96 $c8
	ld   [$c897], a                                  ; $5e96: $ea $97 $c8
	ld   [$c894], a                                  ; $5e99: $ea $94 $c8
	ld   [$c895], a                                  ; $5e9c: $ea $95 $c8
	ld   [$c898], a                                  ; $5e9f: $ea $98 $c8
	ld   [$c8aa], a                                  ; $5ea2: $ea $aa $c8
	ld   a, $0a                                      ; $5ea5: $3e $0a
	ld   [$c85d], a                                  ; $5ea7: $ea $5d $c8
	ld   a, $06                                      ; $5eaa: $3e $06
	ld   [$c876], a                                  ; $5eac: $ea $76 $c8
	ld   [$c877], a                                  ; $5eaf: $ea $77 $c8
	ld   a, $3c                                      ; $5eb2: $3e $3c
	ld   [$c83f], a                                  ; $5eb4: $ea $3f $c8
	ld   a, $04                                      ; $5eb7: $3e $04
	ld   [$c83d], a                                  ; $5eb9: $ea $3d $c8
	ld   a, $04                                      ; $5ebc: $3e $04
	ld   [$c8ac], a                                  ; $5ebe: $ea $ac $c8
	ld   a, $90                                      ; $5ec1: $3e $90
	ld   [wRandomNumRange], a                                  ; $5ec3: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $5ec6: $cd $70 $0c
	call Call_011_62a2                               ; $5ec9: $cd $a2 $62
	call Call_011_693b                               ; $5ecc: $cd $3b $69
	call Call_011_696f                               ; $5ecf: $cd $6f $69
	call ClearBaseAnimSpriteSpecDetails                                       ; $5ed2: $cd $c9 $2e
	ld   a, $01                                      ; $5ed5: $3e $01
	ld   hl, $0000                                   ; $5ed7: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $5eda: $cd $4b $2f
	ld   [$c839], a                                  ; $5edd: $ea $39 $c8
	call StartAnimatingAnimatedSpriteSpec                                       ; $5ee0: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5ee3: $cd $76 $30
	ld   a, $09                                      ; $5ee6: $3e $09
	ld   bc, $3828                                   ; $5ee8: $01 $28 $38
	ld   de, $7180                                   ; $5eeb: $11 $80 $71
	push af                                          ; $5eee: $f5
	ld   a, $03                                      ; $5eef: $3e $03
	ld   [wFarCallAddr], a                                  ; $5ef1: $ea $98 $c2
	ld   a, $41                                      ; $5ef4: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5ef6: $ea $99 $c2
	ld   a, $01                                      ; $5ef9: $3e $01
	ld   [wFarCallBank], a                                  ; $5efb: $ea $9a $c2
	pop  af                                          ; $5efe: $f1
	call FarCall                                       ; $5eff: $cd $62 $09
	ld   a, $01                                      ; $5f02: $3e $01
	ld   hl, $0000                                   ; $5f04: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $5f07: $cd $4b $2f
	ld   [$c83a], a                                  ; $5f0a: $ea $3a $c8
	call StartAnimatingAnimatedSpriteSpec                                       ; $5f0d: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5f10: $cd $76 $30
	ld   a, $0b                                      ; $5f13: $3e $0b
	ld   bc, $5828                                   ; $5f15: $01 $28 $58
	ld   de, $7180                                   ; $5f18: $11 $80 $71
	push af                                          ; $5f1b: $f5
	ld   a, $03                                      ; $5f1c: $3e $03
	ld   [wFarCallAddr], a                                  ; $5f1e: $ea $98 $c2
	ld   a, $41                                      ; $5f21: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5f23: $ea $99 $c2
	ld   a, $01                                      ; $5f26: $3e $01
	ld   [wFarCallBank], a                                  ; $5f28: $ea $9a $c2
	pop  af                                          ; $5f2b: $f1
	call FarCall                                       ; $5f2c: $cd $62 $09
	xor  a                                           ; $5f2f: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5f30: $ea $62 $c3
	ld   a, $40                                      ; $5f33: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5f35: $ea $63 $c3
	ld   a, $03                                      ; $5f38: $3e $03
	ld   b, $01                                      ; $5f3a: $06 $01
	ld   hl, $7000                                   ; $5f3c: $21 $00 $70
	ld   c, $1e                                      ; $5f3f: $0e $1e
	ld   de, $657c                                   ; $5f41: $11 $7c $65
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5f44: $cd $48 $07
	call TurnOnLCD                                       ; $5f47: $cd $09 $09
	ld   a, $0c                                      ; $5f4a: $3e $0c
	call PlaySong                                       ; $5f4c: $cd $92 $1a
	ld   a, $07                                      ; $5f4f: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $5f51: $cd $e0 $1c
	call Call_011_6a43                               ; $5f54: $cd $43 $6a
	ld   a, $1e                                      ; $5f57: $3e $1e
	ld   hl, $657c                                   ; $5f59: $21 $7c $65
	ld   de, wBGPalettes                                   ; $5f5c: $11 $de $c2
	ld   bc, $0080                                   ; $5f5f: $01 $80 $00
	call FarMemCopy                                       ; $5f62: $cd $b2 $09
	ld   bc, $003f                                   ; $5f65: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5f68: $cd $aa $04
	ld   hl, wGameSubstate                                   ; $5f6b: $21 $a1 $c2
	inc  [hl]                                        ; $5f6e: $34
	ret                                              ; $5f6f: $c9


	call ClearOam                                       ; $5f70: $cd $d7 $0d
	call Call_011_69f6                               ; $5f73: $cd $f6 $69
	call Call_011_685d                               ; $5f76: $cd $5d $68
	ld   b, $68                                      ; $5f79: $06 $68
	ld   c, $28                                      ; $5f7b: $0e $28
	ld   a, $02                                      ; $5f7d: $3e $02
	ld   [wSpriteGroup], a                                  ; $5f7f: $ea $1a $c2
	ld   a, $07                                      ; $5f82: $3e $07
	call LoadSpriteFromMainTable                                       ; $5f84: $cd $16 $0e
	ld   bc, $00b4                                   ; $5f87: $01 $b4 $00

jr_011_5f8a:
	push bc                                          ; $5f8a: $c5
	call Call_011_67d9                               ; $5f8b: $cd $d9 $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f8e: $cf
	pop  bc                                          ; $5f8f: $c1
	dec  bc                                          ; $5f90: $0b
	ld   a, b                                        ; $5f91: $78
	or   c                                           ; $5f92: $b1
	jr   nz, jr_011_5f8a                             ; $5f93: $20 $f5

	ld   hl, wGameSubstate                                   ; $5f95: $21 $a1 $c2
	inc  [hl]                                        ; $5f98: $34
	ret                                              ; $5f99: $c9


	call ClearOam                                       ; $5f9a: $cd $d7 $0d
	call Call_011_69f6                               ; $5f9d: $cd $f6 $69
	ld   a, [wLCDC]                                  ; $5fa0: $fa $03 $c2
	and  $df                                         ; $5fa3: $e6 $df
	ld   [wLCDC], a                                  ; $5fa5: $ea $03 $c2
	ld   a, [$c83a]                                  ; $5fa8: $fa $3a $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5fab: $cd $76 $30
	call Call_011_653f                               ; $5fae: $cd $3f $65
	ld   a, [$c839]                                  ; $5fb1: $fa $39 $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5fb4: $cd $76 $30
	call Call_011_653f                               ; $5fb7: $cd $3f $65
	xor  a                                           ; $5fba: $af
	ld   [$c8aa], a                                  ; $5fbb: $ea $aa $c8
	call AnimateAllAnimatedSpriteSpecs                                       ; $5fbe: $cd $d3 $2e
	xor  a                                           ; $5fc1: $af
	ld   [$c897], a                                  ; $5fc2: $ea $97 $c8
	ld   [$c896], a                                  ; $5fc5: $ea $96 $c8
	ld   [$c85d], a                                  ; $5fc8: $ea $5d $c8
	call Call_011_685d                               ; $5fcb: $cd $5d $68
	ld   b, $68                                      ; $5fce: $06 $68
	ld   c, $28                                      ; $5fd0: $0e $28
	ld   a, $02                                      ; $5fd2: $3e $02
	ld   [wSpriteGroup], a                                  ; $5fd4: $ea $1a $c2
	ld   a, $06                                      ; $5fd7: $3e $06
	call LoadSpriteFromMainTable                                       ; $5fd9: $cd $16 $0e
	ld   bc, $00b4                                   ; $5fdc: $01 $b4 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $5fdf: $cd $79 $0a
	ld   a, $0b                                      ; $5fe2: $3e $0b
	ld   [wGameSubstate], a                                  ; $5fe4: $ea $a1 $c2
	ret                                              ; $5fe7: $c9


	call ClearOam                                       ; $5fe8: $cd $d7 $0d
	ld   a, [$c85f]                                  ; $5feb: $fa $5f $c8
	ld   hl, $c863                                   ; $5fee: $21 $63 $c8
	cp   [hl]                                        ; $5ff1: $be
	jr   c, jr_011_600a                              ; $5ff2: $38 $16

	jr   nz, jr_011_6001                             ; $5ff4: $20 $0b

	ld   a, [$c85e]                                  ; $5ff6: $fa $5e $c8
	ld   hl, $c862                                   ; $5ff9: $21 $62 $c8
	cp   [hl]                                        ; $5ffc: $be
	jr   c, jr_011_600a                              ; $5ffd: $38 $0b

	jr   z, jr_011_6024                              ; $5fff: $28 $23

jr_011_6001:
	ld   hl, $c894                                   ; $6001: $21 $94 $c8
	inc  [hl]                                        ; $6004: $34
	call Call_011_699f                               ; $6005: $cd $9f $69
	jr   jr_011_6011                                 ; $6008: $18 $07

jr_011_600a:
	ld   hl, $c895                                   ; $600a: $21 $95 $c8
	inc  [hl]                                        ; $600d: $34
	call Call_011_69bc                               ; $600e: $cd $bc $69

jr_011_6011:
	ld   hl, $c85e                                   ; $6011: $21 $5e $c8
	ld   a, [hl+]                                    ; $6014: $2a
	ld   e, a                                        ; $6015: $5f
	ld   a, [hl+]                                    ; $6016: $2a
	ld   d, a                                        ; $6017: $57
	ld   a, [hl+]                                    ; $6018: $2a
	ld   h, [hl]                                     ; $6019: $66
	ld   l, a                                        ; $601a: $6f
	add  hl, de                                      ; $601b: $19
	ld   a, l                                        ; $601c: $7d
	ld   [$c860], a                                  ; $601d: $ea $60 $c8
	ld   a, h                                        ; $6020: $7c
	ld   [$c861], a                                  ; $6021: $ea $61 $c8

jr_011_6024:
	xor  a                                           ; $6024: $af
	ld   [$c85e], a                                  ; $6025: $ea $5e $c8
	ld   [$c85f], a                                  ; $6028: $ea $5f $c8
	ld   [$c862], a                                  ; $602b: $ea $62 $c8
	ld   [$c863], a                                  ; $602e: $ea $63 $c8
	ld   a, [$c894]                                  ; $6031: $fa $94 $c8
	cp   $02                                         ; $6034: $fe $02
	jr   z, jr_011_605a                              ; $6036: $28 $22

	ld   a, [$c895]                                  ; $6038: $fa $95 $c8
	cp   $02                                         ; $603b: $fe $02
	jr   z, jr_011_6063                              ; $603d: $28 $24

	call Call_011_69f6                               ; $603f: $cd $f6 $69
	ld   bc, $00b4                                   ; $6042: $01 $b4 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $6045: $cd $79 $0a
	call Call_011_674a                               ; $6048: $cd $4a $67
	call Call_011_69d9                               ; $604b: $cd $d9 $69
	call Call_011_619b                               ; $604e: $cd $9b $61
	call Call_011_62a2                               ; $6051: $cd $a2 $62
	ld   a, $0a                                      ; $6054: $3e $0a
	ld   [wGameSubstate], a                                  ; $6056: $ea $a1 $c2
	ret                                              ; $6059: $c9


jr_011_605a:
	ld   a, $02                                      ; $605a: $3e $02
	ld   [wSpriteGroup], a                                  ; $605c: $ea $1a $c2
	ld   a, $04                                      ; $605f: $3e $04
	jr   jr_011_606a                                 ; $6061: $18 $07

jr_011_6063:
	ld   a, $02                                      ; $6063: $3e $02
	ld   [wSpriteGroup], a                                  ; $6065: $ea $1a $c2
	ld   a, $05                                      ; $6068: $3e $05

jr_011_606a:
	ld   b, $68                                      ; $606a: $06 $68
	ld   c, $28                                      ; $606c: $0e $28
	call LoadSpriteFromMainTable                                       ; $606e: $cd $16 $0e
	call Call_011_69f6                               ; $6071: $cd $f6 $69
	call Call_011_674a                               ; $6074: $cd $4a $67
	ld   c, $f0                                      ; $6077: $0e $f0

jr_011_6079:
	push bc                                          ; $6079: $c5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $607a: $cf
	pop  bc                                          ; $607b: $c1
	ld   a, [wInGameButtonsPressed]                                  ; $607c: $fa $10 $c2
	bit  0, a                                        ; $607f: $cb $47
	jr   nz, jr_011_6088                             ; $6081: $20 $05

	dec  c                                           ; $6083: $0d
	jr   nz, jr_011_6079                             ; $6084: $20 $f3

	jr   jr_011_608d                                 ; $6086: $18 $05

jr_011_6088:
	ld   a, $21                                      ; $6088: $3e $21
	call PlaySoundEffect                                       ; $608a: $cd $df $1a

jr_011_608d:
	ld   a, $0f                                      ; $608d: $3e $0f
	ld   [wGameSubstate], a                                  ; $608f: $ea $a1 $c2
	ret                                              ; $6092: $c9


	ld   a, [$cb1d]                                  ; $6093: $fa $1d $cb
	or   a                                           ; $6096: $b7
	jr   z, jr_011_60d8                              ; $6097: $28 $3f

	ld   a, [$c895]                                  ; $6099: $fa $95 $c8
	or   a                                           ; $609c: $b7
	jr   nz, jr_011_60d8                             ; $609d: $20 $39

	call ClearOam                                       ; $609f: $cd $d7 $0d
	ld   a, $02                                      ; $60a2: $3e $02
	ld   [wSpriteGroup], a                                  ; $60a4: $ea $1a $c2
	ld   a, $14                                      ; $60a7: $3e $14
	ld   b, $68                                      ; $60a9: $06 $68
	ld   c, $28                                      ; $60ab: $0e $28
	call LoadSpriteFromMainTable                                       ; $60ad: $cd $16 $0e
	ld   c, $f0                                      ; $60b0: $0e $f0

jr_011_60b2:
	push bc                                          ; $60b2: $c5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60b3: $cf
	pop  bc                                          ; $60b4: $c1
	ld   a, [wInGameButtonsPressed]                                  ; $60b5: $fa $10 $c2
	bit  0, a                                        ; $60b8: $cb $47
	jr   nz, jr_011_60c1                             ; $60ba: $20 $05

	dec  c                                           ; $60bc: $0d
	jr   nz, jr_011_60b2                             ; $60bd: $20 $f3

	jr   jr_011_60c6                                 ; $60bf: $18 $05

jr_011_60c1:
	ld   a, $21                                      ; $60c1: $3e $21
	call PlaySoundEffect                                       ; $60c3: $cd $df $1a

jr_011_60c6:
	ld   hl, $c860                                   ; $60c6: $21 $60 $c8
	ld   a, [hl+]                                    ; $60c9: $2a
	ld   h, [hl]                                     ; $60ca: $66
	ld   l, a                                        ; $60cb: $6f
	ld   de, $012c                                   ; $60cc: $11 $2c $01
	add  hl, de                                      ; $60cf: $19
	ld   a, l                                        ; $60d0: $7d
	ld   [$c860], a                                  ; $60d1: $ea $60 $c8
	ld   a, h                                        ; $60d4: $7c
	ld   [$c861], a                                  ; $60d5: $ea $61 $c8

jr_011_60d8:
	ld   a, [$cb1d]                                  ; $60d8: $fa $1d $cb
	or   a                                           ; $60db: $b7
	jr   z, jr_011_60e5                              ; $60dc: $28 $07

	call Call_011_6a97                               ; $60de: $cd $97 $6a
	ld   b, $04                                      ; $60e1: $06 $04
	jr   jr_011_60ea                                 ; $60e3: $18 $05

jr_011_60e5:
	call Call_011_6a86                               ; $60e5: $cd $86 $6a
	ld   b, $02                                      ; $60e8: $06 $02

jr_011_60ea:
	cp   b                                           ; $60ea: $b8
	jr   c, jr_011_60f2                              ; $60eb: $38 $05

	ld   a, $44                                      ; $60ed: $3e $44
	call PlaySampledSound                                       ; $60ef: $cd $64 $1b

jr_011_60f2:
	ld   hl, wGameSubstate                                   ; $60f2: $21 $a1 $c2
	inc  [hl]                                        ; $60f5: $34
	ret                                              ; $60f6: $c9


Call_011_60f7:
	ld   a, [$c85d]                                  ; $60f7: $fa $5d $c8
	cp   $02                                         ; $60fa: $fe $02
	jr   nz, jr_011_610a                             ; $60fc: $20 $0c

	call GetRandomNumInPreSpecifiedRange                                       ; $60fe: $cd $10 $0d
	and  $f0                                         ; $6101: $e6 $f0
	or   a                                           ; $6103: $b7
	jr   z, jr_011_610a                              ; $6104: $28 $04

	ld   a, $0e                                      ; $6106: $3e $0e
	jr   jr_011_612e                                 ; $6108: $18 $24

jr_011_610a:
	ld   c, $00                                      ; $610a: $0e $00
	ld   a, [$c894]                                  ; $610c: $fa $94 $c8
	and  a                                           ; $610f: $a7
	jr   z, jr_011_6113                              ; $6110: $28 $01

	inc  c                                           ; $6112: $0c

jr_011_6113:
	ld   a, [$c895]                                  ; $6113: $fa $95 $c8
	and  a                                           ; $6116: $a7
	jr   z, jr_011_611b                              ; $6117: $28 $02

	inc  c                                           ; $6119: $0c
	inc  c                                           ; $611a: $0c

jr_011_611b:
	sla  c                                           ; $611b: $cb $21
	ld   b, $00                                      ; $611d: $06 $00
	ld   hl, $6132                                   ; $611f: $21 $32 $61
	add  hl, bc                                      ; $6122: $09
	ld   a, [hl+]                                    ; $6123: $2a
	ld   h, [hl]                                     ; $6124: $66
	ld   l, a                                        ; $6125: $6f
	ld   a, [$c85d]                                  ; $6126: $fa $5d $c8
	ld   c, a                                        ; $6129: $4f
	ld   b, $00                                      ; $612a: $06 $00
	add  hl, bc                                      ; $612c: $09
	ld   a, [hl]                                     ; $612d: $7e

jr_011_612e:
	ld   [$c840], a                                  ; $612e: $ea $40 $c8
	ret                                              ; $6131: $c9


	ld   a, [hl-]                                    ; $6132: $3a
	ld   h, c                                        ; $6133: $61
	ld   d, b                                        ; $6134: $50
	ld   h, c                                        ; $6135: $61
	ld   a, [hl-]                                    ; $6136: $3a
	ld   h, c                                        ; $6137: $61
	ld   b, l                                        ; $6138: $45
	ld   h, c                                        ; $6139: $61
	nop                                              ; $613a: $00
	add  hl, de                                      ; $613b: $19
	ld   e, $21                                      ; $613c: $1e $21
	inc  hl                                          ; $613e: $23
	inc  h                                           ; $613f: $24
	daa                                              ; $6140: $27
	add  hl, hl                                      ; $6141: $29
	dec  l                                           ; $6142: $2d
	ld   sp, $0035                                   ; $6143: $31 $35 $00
	inc  de                                          ; $6146: $13
	jr   @+$1d                                       ; $6147: $18 $1b

	dec  e                                           ; $6149: $1d
	ld   e, $21                                      ; $614a: $1e $21
	inc  hl                                          ; $614c: $23
	daa                                              ; $614d: $27
	dec  hl                                          ; $614e: $2b
	cpl                                              ; $614f: $2f
	nop                                              ; $6150: $00
	inc  c                                           ; $6151: $0c
	ld   de, $1614                                   ; $6152: $11 $14 $16
	rla                                              ; $6155: $17

jr_011_6156:
	ld   a, [de]                                     ; $6156: $1a
	inc  e                                           ; $6157: $1c
	jr   nz, jr_011_617e                             ; $6158: $20 $24

	jr   z, jr_011_6156                              ; $615a: $28 $fa

	ld   a, [hl-]                                    ; $615c: $3a
	ret  z                                           ; $615d: $c8

	call HLequAddrOfAnimSpriteSpecDetails                                       ; $615e: $cd $76 $30
	ld   a, $0b                                      ; $6161: $3e $0b
	ld   de, $7180                                   ; $6163: $11 $80 $71
	push af                                          ; $6166: $f5
	ld   a, $1c                                      ; $6167: $3e $1c
	ld   [wFarCallAddr], a                                  ; $6169: $ea $98 $c2
	ld   a, $41                                      ; $616c: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $616e: $ea $99 $c2
	ld   a, $01                                      ; $6171: $3e $01
	ld   [wFarCallBank], a                                  ; $6173: $ea $9a $c2
	pop  af                                          ; $6176: $f1
	call FarCall                                       ; $6177: $cd $62 $09
	ret                                              ; $617a: $c9


Call_011_617b:
	ld   a, [$c839]                                  ; $617b: $fa $39 $c8

jr_011_617e:
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $617e: $cd $76 $30
	ld   a, $09                                      ; $6181: $3e $09
	ld   de, $7180                                   ; $6183: $11 $80 $71
	push af                                          ; $6186: $f5
	ld   a, $1c                                      ; $6187: $3e $1c
	ld   [wFarCallAddr], a                                  ; $6189: $ea $98 $c2
	ld   a, $41                                      ; $618c: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $618e: $ea $99 $c2
	ld   a, $01                                      ; $6191: $3e $01
	ld   [wFarCallBank], a                                  ; $6193: $ea $9a $c2
	pop  af                                          ; $6196: $f1
	call FarCall                                       ; $6197: $cd $62 $09
	ret                                              ; $619a: $c9


Call_011_619b:
	call $615b                                       ; $619b: $cd $5b $61
	call Call_011_617b                               ; $619e: $cd $7b $61
	ld   a, [$c876]                                  ; $61a1: $fa $76 $c8
	cp   $06                                         ; $61a4: $fe $06
	jr   z, jr_011_61ad                              ; $61a6: $28 $05

	ld   a, $08                                      ; $61a8: $3e $08
	ld   [$c896], a                                  ; $61aa: $ea $96 $c8

jr_011_61ad:
	ld   a, [$c877]                                  ; $61ad: $fa $77 $c8
	cp   $06                                         ; $61b0: $fe $06
	jr   z, jr_011_61b9                              ; $61b2: $28 $05

	ld   a, $08                                      ; $61b4: $3e $08
	ld   [$c897], a                                  ; $61b6: $ea $97 $c8

jr_011_61b9:
	ret                                              ; $61b9: $c9


	xor  a                                           ; $61ba: $af
	ld   [$c89a], a                                  ; $61bb: $ea $9a $c8
	ld   [$c89b], a                                  ; $61be: $ea $9b $c8
	ld   a, [wFrameCounter]                                  ; $61c1: $fa $8f $c2
	ld   [$c83b], a                                  ; $61c4: $ea $3b $c8
	ld   a, [wLCDC]                                  ; $61c7: $fa $03 $c2
	and  $df                                         ; $61ca: $e6 $df
	ld   [wLCDC], a                                  ; $61cc: $ea $03 $c2
	call Call_011_640d                               ; $61cf: $cd $0d $64
	call Call_011_6332                               ; $61d2: $cd $32 $63
	call ClearOam                                       ; $61d5: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $61d8: $cd $d3 $2e
	call Call_011_69f6                               ; $61db: $cd $f6 $69
	call Call_011_6c52                               ; $61de: $cd $52 $6c
	call Call_011_660c                               ; $61e1: $cd $0c $66
	call Call_011_674a                               ; $61e4: $cd $4a $67
	ld   a, [$c89b]                                  ; $61e7: $fa $9b $c8
	or   a                                           ; $61ea: $b7
	jr   nz, jr_011_61f3                             ; $61eb: $20 $06

	call Call_011_67d9                               ; $61ed: $cd $d9 $67
	call Call_011_685d                               ; $61f0: $cd $5d $68

jr_011_61f3:
	ld   hl, $c84a                                   ; $61f3: $21 $4a $c8
	ld   c, $09                                      ; $61f6: $0e $09

jr_011_61f8:
	ld   a, [hl+]                                    ; $61f8: $2a
	cp   $0a                                         ; $61f9: $fe $0a
	jr   nz, jr_011_6204                             ; $61fb: $20 $07

	dec  c                                           ; $61fd: $0d
	jr   nz, jr_011_61f8                             ; $61fe: $20 $f8

	ld   hl, wGameSubstate                                   ; $6200: $21 $a1 $c2
	inc  [hl]                                        ; $6203: $34

jr_011_6204:
	ld   a, [wFrameCounter]                                  ; $6204: $fa $8f $c2
	ld   hl, $c83b                                   ; $6207: $21 $3b $c8
	cp   [hl]                                        ; $620a: $be
	ret                                              ; $620b: $c9


	xor  a                                           ; $620c: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $620d: $ea $62 $c3
	ld   a, $40                                      ; $6210: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $6212: $ea $63 $c3
	ld   a, $03                                      ; $6215: $3e $03
	ld   b, $1e                                      ; $6217: $06 $1e
	ld   hl, $657c                                   ; $6219: $21 $7c $65
	ld   c, $01                                      ; $621c: $0e $01
	ld   de, $7000                                   ; $621e: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $6221: $cd $48 $07
	call Call_011_6a58                               ; $6224: $cd $58 $6a
	call TurnOffLCD                                       ; $6227: $cd $e3 $08
	ld   a, [$cb1d]                                  ; $622a: $fa $1d $cb
	or   a                                           ; $622d: $b7
	jr   nz, jr_011_6250                             ; $622e: $20 $20

	ld   a, $01                                      ; $6230: $3e $01
	ld   [wGameSubstate], a                                  ; $6232: $ea $a1 $c2
	ld   a, [$c89c]                                  ; $6235: $fa $9c $c8
	cp   $01                                         ; $6238: $fe $01
	jr   z, jr_011_6286                              ; $623a: $28 $4a

	call Call_011_6a86                               ; $623c: $cd $86 $6a
	ld   [wMiniGameTrainingBattleRank], a                                  ; $623f: $ea $21 $cb
	ld   a, [$c8ad]                                  ; $6242: $fa $ad $c8
	ld   [wGameState], a                                  ; $6245: $ea $a0 $c2
	ld   a, [$c8ae]                                  ; $6248: $fa $ae $c8
	ld   [wGameSubstate], a                                  ; $624b: $ea $a1 $c2
	jr   jr_011_6286                                 ; $624e: $18 $36

jr_011_6250:
	call Call_011_6a97                               ; $6250: $cd $97 $6a
	push af                                          ; $6253: $f5
	ld   hl, $c986                                   ; $6254: $21 $86 $c9
	ld   a, [$c860]                                  ; $6257: $fa $60 $c8
	ld   [hl+], a                                    ; $625a: $22
	ld   a, [$c861]                                  ; $625b: $fa $61 $c8
	ld   [hl], a                                     ; $625e: $77
	ld   h, $0d                                      ; $625f: $26 $0d
	ld   l, $09                                      ; $6261: $2e $09
	ld   a, [$c8ad]                                  ; $6263: $fa $ad $c8
	ld   d, a                                        ; $6266: $57
	ld   a, [$c8ae]                                  ; $6267: $fa $ae $c8
	ld   e, a                                        ; $626a: $5f
	ld   b, $02                                      ; $626b: $06 $02
	ld   a, [$c8ab]                                  ; $626d: $fa $ab $c8
	ld   c, a                                        ; $6270: $4f
	pop  af                                          ; $6271: $f1
	push af                                          ; $6272: $f5
	ld   a, $3c                                      ; $6273: $3e $3c
	ld   [wFarCallAddr], a                                  ; $6275: $ea $98 $c2
	ld   a, $55                                      ; $6278: $3e $55
	ld   [wFarCallAddr+1], a                                  ; $627a: $ea $99 $c2
	ld   a, $3e                                      ; $627d: $3e $3e
	ld   [wFarCallBank], a                                  ; $627f: $ea $9a $c2
	pop  af                                          ; $6282: $f1
	call FarCall                                       ; $6283: $cd $62 $09

jr_011_6286:
	ret                                              ; $6286: $c9


	ld   a, $0b                                      ; $6287: $3e $0b
	ld   [wGameSubstate], a                                  ; $6289: $ea $a1 $c2
	ld   hl, $c85d                                   ; $628c: $21 $5d $c8
	ld   a, [hl]                                     ; $628f: $7e
	or   a                                           ; $6290: $b7
	jr   z, jr_011_6296                              ; $6291: $28 $03

	dec  [hl]                                        ; $6293: $35
	jr   jr_011_629e                                 ; $6294: $18 $08

jr_011_6296:
	ld   a, $0a                                      ; $6296: $3e $0a
	ld   [hl], a                                     ; $6298: $77
	ld   a, $0e                                      ; $6299: $3e $0e
	ld   [wGameSubstate], a                                  ; $629b: $ea $a1 $c2

jr_011_629e:
	call Call_011_62a2                               ; $629e: $cd $a2 $62
	ret                                              ; $62a1: $c9


Call_011_62a2:
	ld   hl, $c841                                   ; $62a2: $21 $41 $c8
	ld   c, $12                                      ; $62a5: $0e $12
	xor  a                                           ; $62a7: $af

jr_011_62a8:
	ld   [hl+], a                                    ; $62a8: $22
	dec  c                                           ; $62a9: $0d
	jr   nz, jr_011_62a8                             ; $62aa: $20 $fc

	ld   hl, $c853                                   ; $62ac: $21 $53 $c8
	ld   c, $09                                      ; $62af: $0e $09
	ld   a, $5a                                      ; $62b1: $3e $5a

jr_011_62b3:
	ld   [hl+], a                                    ; $62b3: $22
	dec  c                                           ; $62b4: $0d
	jr   nz, jr_011_62b3                             ; $62b5: $20 $fc

	ld   c, $01                                      ; $62b7: $0e $01
	ld   a, [$c8ab]                                  ; $62b9: $fa $ab $c8
	or   a                                           ; $62bc: $b7
	jr   z, jr_011_62ca                              ; $62bd: $28 $0b

	ld   a, [$c85d]                                  ; $62bf: $fa $5d $c8
	ld   c, a                                        ; $62c2: $4f
	ld   b, $00                                      ; $62c3: $06 $00
	ld   hl, $62f6                                   ; $62c5: $21 $f6 $62
	add  hl, bc                                      ; $62c8: $09
	ld   c, [hl]                                     ; $62c9: $4e

jr_011_62ca:
	push bc                                          ; $62ca: $c5
	call GetRandomNumInPreSpecifiedRange                                       ; $62cb: $cd $10 $0d
	pop  bc                                          ; $62ce: $c1
	and  $f0                                         ; $62cf: $e6 $f0
	swap a                                           ; $62d1: $cb $37
	ld   e, a                                        ; $62d3: $5f
	ld   d, $00                                      ; $62d4: $16 $00
	ld   hl, $c841                                   ; $62d6: $21 $41 $c8
	add  hl, de                                      ; $62d9: $19
	ld   a, $02                                      ; $62da: $3e $02
	and  [hl]                                        ; $62dc: $a6
	jr   nz, jr_011_62ca                             ; $62dd: $20 $eb

	ld   a, $02                                      ; $62df: $3e $02
	ld   [hl], a                                     ; $62e1: $77
	dec  c                                           ; $62e2: $0d
	jr   nz, jr_011_62ca                             ; $62e3: $20 $e5

	call GetRandomNumInPreSpecifiedRange                                       ; $62e5: $cd $10 $0d
	and  $f0                                         ; $62e8: $e6 $f0
	swap a                                           ; $62ea: $cb $37
	ld   [$c83e], a                                  ; $62ec: $ea $3e $c8
	call $6301                                       ; $62ef: $cd $01 $63
	call Call_011_60f7                               ; $62f2: $cd $f7 $60
	ret                                              ; $62f5: $c9


	inc  b                                           ; $62f6: $04
	inc  b                                           ; $62f7: $04
	inc  b                                           ; $62f8: $04
	inc  b                                           ; $62f9: $04
	inc  b                                           ; $62fa: $04
	inc  b                                           ; $62fb: $04
	inc  b                                           ; $62fc: $04
	inc  b                                           ; $62fd: $04
	inc  bc                                          ; $62fe: $03
	ld   [bc], a                                     ; $62ff: $02
	ld   bc, $10cd                                   ; $6300: $01 $cd $10
	dec  c                                           ; $6303: $0d
	and  $f0                                         ; $6304: $e6 $f0
	swap a                                           ; $6306: $cb $37
	srl  a                                           ; $6308: $cb $3f
	ld   c, a                                        ; $630a: $4f
	sla  c                                           ; $630b: $cb $21
	ld   b, $00                                      ; $630d: $06 $00
	ld   hl, $6328                                   ; $630f: $21 $28 $63
	add  hl, bc                                      ; $6312: $09
	ld   a, [hl+]                                    ; $6313: $2a
	ld   h, [hl]                                     ; $6314: $66
	ld   l, a                                        ; $6315: $6f
	ld   a, $1e                                      ; $6316: $3e $1e
	ld   de, $c316                                   ; $6318: $11 $16 $c3
	ld   bc, $0008                                   ; $631b: $01 $08 $00
	call FarMemCopy                                       ; $631e: $cd $b2 $09
	ld   bc, $1c1f                                   ; $6321: $01 $1f $1c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6324: $cd $aa $04
	ret                                              ; $6327: $c9


	dec  c                                           ; $6328: $0d
	ld   a, a                                        ; $6329: $7f
	dec  d                                           ; $632a: $15
	ld   a, a                                        ; $632b: $7f
	dec  e                                           ; $632c: $1d
	ld   a, a                                        ; $632d: $7f
	dec  h                                           ; $632e: $25
	ld   a, a                                        ; $632f: $7f
	dec  c                                           ; $6330: $0d
	ld   a, a                                        ; $6331: $7f

Call_011_6332:
	ld   a, [$c839]                                  ; $6332: $fa $39 $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6335: $cd $76 $30
	push af                                          ; $6338: $f5
	ld   a, $43                                      ; $6339: $3e $43
	ld   [wFarCallAddr], a                                  ; $633b: $ea $98 $c2
	ld   a, $41                                      ; $633e: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6340: $ea $99 $c2
	ld   a, $01                                      ; $6343: $3e $01
	ld   [wFarCallBank], a                                  ; $6345: $ea $9a $c2
	pop  af                                          ; $6348: $f1
	call FarCall                                       ; $6349: $cd $62 $09
	ld   a, $00                                      ; $634c: $3e $00
	cp   c                                           ; $634e: $b9
	ret  nz                                          ; $634f: $c0

	ld   a, [$c897]                                  ; $6350: $fa $97 $c8
	and  a                                           ; $6353: $a7
	ret  nz                                          ; $6354: $c0

	ld   a, [$c877]                                  ; $6355: $fa $77 $c8
	and  a                                           ; $6358: $a7
	jr   nz, jr_011_6364                             ; $6359: $20 $09

	ld   a, $08                                      ; $635b: $3e $08
	ld   [$c897], a                                  ; $635d: $ea $97 $c8
	call Call_011_653f                               ; $6360: $cd $3f $65
	ret                                              ; $6363: $c9


jr_011_6364:
	ld   e, l                                        ; $6364: $5d
	ld   d, h                                        ; $6365: $54
	call Call_011_6d03                               ; $6366: $cd $03 $6d
	ret  nz                                          ; $6369: $c0

	ld   hl, $c84a                                   ; $636a: $21 $4a $c8
	add  hl, bc                                      ; $636d: $09
	ld   a, [hl]                                     ; $636e: $7e
	cp   $04                                         ; $636f: $fe $04
	jr   nz, jr_011_6384                             ; $6371: $20 $11

	ld   hl, $c840                                   ; $6373: $21 $40 $c8
	ld   a, [hl]                                     ; $6376: $7e
	or   a                                           ; $6377: $b7
	jr   z, jr_011_63c7                              ; $6378: $28 $4d

	dec  [hl]                                        ; $637a: $35
	ld   a, [hl]                                     ; $637b: $7e
	cp   $08                                         ; $637c: $fe $08
	ret  nc                                          ; $637e: $d0

	ld   h, d                                        ; $637f: $62
	ld   l, e                                        ; $6380: $6b
	ld   a, c                                        ; $6381: $79
	jr   jr_011_63af                                 ; $6382: $18 $2b

jr_011_6384:
	ld   a, [$c83f]                                  ; $6384: $fa $3f $c8
	dec  a                                           ; $6387: $3d
	ld   [$c83f], a                                  ; $6388: $ea $3f $c8
	ret  nz                                          ; $638b: $c0

	push de                                          ; $638c: $d5
	ld   c, $02                                      ; $638d: $0e $02

jr_011_638f:
	push bc                                          ; $638f: $c5
	call GetRandomNumInPreSpecifiedRange                                       ; $6390: $cd $10 $0d
	srl  a                                           ; $6393: $cb $3f
	srl  a                                           ; $6395: $cb $3f
	add  $3c                                         ; $6397: $c6 $3c
	ld   [$c83f], a                                  ; $6399: $ea $3f $c8
	call GetRandomNumInPreSpecifiedRange                                       ; $639c: $cd $10 $0d
	and  $f0                                         ; $639f: $e6 $f0
	swap a                                           ; $63a1: $cb $37
	pop  bc                                          ; $63a3: $c1
	cp   $04                                         ; $63a4: $fe $04
	jr   nz, jr_011_63ab                             ; $63a6: $20 $03

	dec  c                                           ; $63a8: $0d
	jr   nz, jr_011_638f                             ; $63a9: $20 $e4

jr_011_63ab:
	pop  hl                                          ; $63ab: $e1
	ld   [$c83d], a                                  ; $63ac: $ea $3d $c8

jr_011_63af:
	call Call_011_65ec                               ; $63af: $cd $ec $65
	push af                                          ; $63b2: $f5
	ld   a, $2f                                      ; $63b3: $3e $2f
	ld   [wFarCallAddr], a                                  ; $63b5: $ea $98 $c2
	ld   a, $41                                      ; $63b8: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $63ba: $ea $99 $c2
	ld   a, $01                                      ; $63bd: $3e $01
	ld   [wFarCallBank], a                                  ; $63bf: $ea $9a $c2
	pop  af                                          ; $63c2: $f1
	call FarCall                                       ; $63c3: $cd $62 $09
	ret                                              ; $63c6: $c9


jr_011_63c7:
	ld   a, $1e                                      ; $63c7: $3e $1e
	call PlaySoundEffect                                       ; $63c9: $cd $df $1a
	ld   hl, $c841                                   ; $63cc: $21 $41 $c8
	add  hl, bc                                      ; $63cf: $09
	ld   a, [hl]                                     ; $63d0: $7e
	or   $01                                         ; $63d1: $f6 $01
	ld   [hl], a                                     ; $63d3: $77
	call Call_011_6533                               ; $63d4: $cd $33 $65
	ld   l, e                                        ; $63d7: $6b
	ld   h, d                                        ; $63d8: $62
	ld   a, $0a                                      ; $63d9: $3e $0a
	ld   de, $7180                                   ; $63db: $11 $80 $71
	push af                                          ; $63de: $f5
	ld   a, $1c                                      ; $63df: $3e $1c
	ld   [wFarCallAddr], a                                  ; $63e1: $ea $98 $c2
	ld   a, $41                                      ; $63e4: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $63e6: $ea $99 $c2
	ld   a, $01                                      ; $63e9: $3e $01
	ld   [wFarCallBank], a                                  ; $63eb: $ea $9a $c2
	pop  af                                          ; $63ee: $f1
	call FarCall                                       ; $63ef: $cd $62 $09
	ld   de, $c862                                   ; $63f2: $11 $62 $c8
	call Call_011_6573                               ; $63f5: $cd $73 $65
	call Call_011_6562                               ; $63f8: $cd $62 $65
	ld   hl, $c877                                   ; $63fb: $21 $77 $c8
	dec  [hl]                                        ; $63fe: $35
	call Call_011_6559                               ; $63ff: $cd $59 $65
	ld   a, $19                                      ; $6402: $3e $19
	ld   [$c840], a                                  ; $6404: $ea $40 $c8
	ld   a, $08                                      ; $6407: $3e $08
	ld   [$c83f], a                                  ; $6409: $ea $3f $c8
	ret                                              ; $640c: $c9


Call_011_640d:
	xor  a                                           ; $640d: $af
	ld   [$c8a6], a                                  ; $640e: $ea $a6 $c8
	ld   a, [$c83a]                                  ; $6411: $fa $3a $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6414: $cd $76 $30
	push af                                          ; $6417: $f5
	ld   a, $43                                      ; $6418: $3e $43
	ld   [wFarCallAddr], a                                  ; $641a: $ea $98 $c2
	ld   a, $41                                      ; $641d: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $641f: $ea $99 $c2
	ld   a, $01                                      ; $6422: $3e $01
	ld   [wFarCallBank], a                                  ; $6424: $ea $9a $c2
	pop  af                                          ; $6427: $f1
	call FarCall                                       ; $6428: $cd $62 $09
	ld   a, $01                                      ; $642b: $3e $01
	cp   c                                           ; $642d: $b9
	jp   nz, Jump_011_652f                           ; $642e: $c2 $2f $65

	ld   a, [wInGameButtonsHeld]                                  ; $6431: $fa $0f $c2
	and  $f0                                         ; $6434: $e6 $f0
	jr   nz, jr_011_643c                             ; $6436: $20 $04

	ld   a, $04                                      ; $6438: $3e $04
	jr   jr_011_6476                                 ; $643a: $18 $3a

jr_011_643c:
	cp   $60                                         ; $643c: $fe $60
	jr   nz, jr_011_6444                             ; $643e: $20 $04

	ld   a, $00                                      ; $6440: $3e $00
	jr   jr_011_6476                                 ; $6442: $18 $32

jr_011_6444:
	cp   $40                                         ; $6444: $fe $40
	jr   nz, jr_011_644c                             ; $6446: $20 $04

	ld   a, $01                                      ; $6448: $3e $01
	jr   jr_011_6476                                 ; $644a: $18 $2a

jr_011_644c:
	cp   $50                                         ; $644c: $fe $50
	jr   nz, jr_011_6454                             ; $644e: $20 $04

	ld   a, $02                                      ; $6450: $3e $02
	jr   jr_011_6476                                 ; $6452: $18 $22

jr_011_6454:
	cp   $20                                         ; $6454: $fe $20
	jr   nz, jr_011_645c                             ; $6456: $20 $04

	ld   a, $03                                      ; $6458: $3e $03
	jr   jr_011_6476                                 ; $645a: $18 $1a

jr_011_645c:
	cp   $10                                         ; $645c: $fe $10
	jr   nz, jr_011_6464                             ; $645e: $20 $04

	ld   a, $05                                      ; $6460: $3e $05
	jr   jr_011_6476                                 ; $6462: $18 $12

jr_011_6464:
	cp   $a0                                         ; $6464: $fe $a0
	jr   nz, jr_011_646c                             ; $6466: $20 $04

	ld   a, $06                                      ; $6468: $3e $06
	jr   jr_011_6476                                 ; $646a: $18 $0a

jr_011_646c:
	cp   $80                                         ; $646c: $fe $80
	jr   nz, jr_011_6474                             ; $646e: $20 $04

	ld   a, $07                                      ; $6470: $3e $07
	jr   jr_011_6476                                 ; $6472: $18 $02

jr_011_6474:
	ld   a, $08                                      ; $6474: $3e $08

jr_011_6476:
	ld   [$c83c], a                                  ; $6476: $ea $3c $c8
	call Call_011_65ec                               ; $6479: $cd $ec $65
	push af                                          ; $647c: $f5
	ld   a, $2f                                      ; $647d: $3e $2f
	ld   [wFarCallAddr], a                                  ; $647f: $ea $98 $c2
	ld   a, $41                                      ; $6482: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6484: $ea $99 $c2
	ld   a, $01                                      ; $6487: $3e $01
	ld   [wFarCallBank], a                                  ; $6489: $ea $9a $c2
	pop  af                                          ; $648c: $f1
	call FarCall                                       ; $648d: $cd $62 $09
	push hl                                          ; $6490: $e5
	ld   a, [$c83c]                                  ; $6491: $fa $3c $c8
	ld   hl, $c8ac                                   ; $6494: $21 $ac $c8
	cp   [hl]                                        ; $6497: $be
	jr   z, jr_011_64a0                              ; $6498: $28 $06

	ld   [hl], a                                     ; $649a: $77
	ld   a, $1f                                      ; $649b: $3e $1f
	call PlaySoundEffect                                       ; $649d: $cd $df $1a

jr_011_64a0:
	pop  hl                                          ; $64a0: $e1
	ld   a, [$c896]                                  ; $64a1: $fa $96 $c8
	and  a                                           ; $64a4: $a7
	jp   nz, Jump_011_6515                           ; $64a5: $c2 $15 $65

	ld   a, [wInGameButtonsPressed]                                  ; $64a8: $fa $10 $c2
	bit  0, a                                        ; $64ab: $cb $47
	jr   z, jr_011_6515                              ; $64ad: $28 $66

	ld   a, [$c876]                                  ; $64af: $fa $76 $c8
	and  a                                           ; $64b2: $a7
	jr   z, jr_011_6515                              ; $64b3: $28 $60

	dec  a                                           ; $64b5: $3d
	ld   [$c876], a                                  ; $64b6: $ea $76 $c8
	or   a                                           ; $64b9: $b7
	jr   nz, jr_011_64c1                             ; $64ba: $20 $05

	ld   a, $28                                      ; $64bc: $3e $28
	ld   [$c899], a                                  ; $64be: $ea $99 $c8

jr_011_64c1:
	ld   a, $1e                                      ; $64c1: $3e $1e
	call PlaySoundEffect                                       ; $64c3: $cd $df $1a
	ld   a, $0c                                      ; $64c6: $3e $0c
	ld   de, $7180                                   ; $64c8: $11 $80 $71
	push af                                          ; $64cb: $f5
	ld   a, $1c                                      ; $64cc: $3e $1c
	ld   [wFarCallAddr], a                                  ; $64ce: $ea $98 $c2
	ld   a, $41                                      ; $64d1: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $64d3: $ea $99 $c2
	ld   a, $01                                      ; $64d6: $3e $01
	ld   [wFarCallBank], a                                  ; $64d8: $ea $9a $c2
	pop  af                                          ; $64db: $f1
	call FarCall                                       ; $64dc: $cd $62 $09
	ld   a, [$c83c]                                  ; $64df: $fa $3c $c8
	ld   c, a                                        ; $64e2: $4f
	ld   b, $00                                      ; $64e3: $06 $00
	ld   de, $c85e                                   ; $64e5: $11 $5e $c8
	call Call_011_65ba                               ; $64e8: $cd $ba $65
	call Call_011_6559                               ; $64eb: $cd $59 $65
	ld   hl, $c84a                                   ; $64ee: $21 $4a $c8
	add  hl, bc                                      ; $64f1: $09
	ld   a, [hl]                                     ; $64f2: $7e
	cp   $04                                         ; $64f3: $fe $04
	jr   nz, jr_011_6515                             ; $64f5: $20 $1e

	ld   hl, $c841                                   ; $64f7: $21 $41 $c8
	add  hl, bc                                      ; $64fa: $09
	ld   a, [hl]                                     ; $64fb: $7e
	bit  0, a                                        ; $64fc: $cb $47
	jr   nz, jr_011_6515                             ; $64fe: $20 $15

	or   $01                                         ; $6500: $f6 $01
	ld   [hl], a                                     ; $6502: $77
	call Call_011_6533                               ; $6503: $cd $33 $65
	bit  1, [hl]                                     ; $6506: $cb $4e
	jr   z, jr_011_652f                              ; $6508: $28 $25

	ld   de, $c85e                                   ; $650a: $11 $5e $c8
	call Call_011_6573                               ; $650d: $cd $73 $65
	call Call_011_6562                               ; $6510: $cd $62 $65
	jr   jr_011_652f                                 ; $6513: $18 $1a

Jump_011_6515:
jr_011_6515:
	ld   a, [wInGameButtonsPressed]                                  ; $6515: $fa $10 $c2
	bit  1, a                                        ; $6518: $cb $4f
	jr   z, jr_011_652f                              ; $651a: $28 $13

	bit  0, a                                        ; $651c: $cb $47
	jr   nz, jr_011_652f                             ; $651e: $20 $0f

	ld   a, [$c876]                                  ; $6520: $fa $76 $c8
	cp   $06                                         ; $6523: $fe $06
	jr   z, jr_011_652f                              ; $6525: $28 $08

	ld   a, $08                                      ; $6527: $3e $08
	ld   [$c896], a                                  ; $6529: $ea $96 $c8
	call Call_011_653f                               ; $652c: $cd $3f $65

Jump_011_652f:
jr_011_652f:
	call Call_011_6c3d                               ; $652f: $cd $3d $6c
	ret                                              ; $6532: $c9


Call_011_6533:
	ld   a, $01                                      ; $6533: $3e $01
	ld   [$c89a], a                                  ; $6535: $ea $9a $c8
	ret                                              ; $6538: $c9


Call_011_6539:
	ld   a, $01                                      ; $6539: $3e $01
	ld   [$c89b], a                                  ; $653b: $ea $9b $c8
	ret                                              ; $653e: $c9


Call_011_653f:
	ld   a, $00                                      ; $653f: $3e $00
	ld   de, $7180                                   ; $6541: $11 $80 $71
	push af                                          ; $6544: $f5
	ld   a, $1c                                      ; $6545: $3e $1c
	ld   [wFarCallAddr], a                                  ; $6547: $ea $98 $c2
	ld   a, $41                                      ; $654a: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $654c: $ea $99 $c2
	ld   a, $01                                      ; $654f: $3e $01
	ld   [wFarCallBank], a                                  ; $6551: $ea $9a $c2
	pop  af                                          ; $6554: $f1
	call FarCall                                       ; $6555: $cd $62 $09
	ret                                              ; $6558: $c9


Call_011_6559:
	ld   a, [wLCDC]                                  ; $6559: $fa $03 $c2
	or   $20                                         ; $655c: $f6 $20
	ld   [wLCDC], a                                  ; $655e: $ea $03 $c2
	ret                                              ; $6561: $c9


Call_011_6562:
	ld   a, [$c8ab]                                  ; $6562: $fa $ab $c8
	or   a                                           ; $6565: $b7
	ret  nz                                          ; $6566: $c0

	ld   hl, $c853                                   ; $6567: $21 $53 $c8
	ld   c, $09                                      ; $656a: $0e $09
	ld   a, $3c                                      ; $656c: $3e $3c

jr_011_656e:
	ld   [hl+], a                                    ; $656e: $22
	dec  c                                           ; $656f: $0d
	jr   nz, jr_011_656e                             ; $6570: $20 $fc

	ret                                              ; $6572: $c9


Call_011_6573:
	ld   a, [$c8ab]                                  ; $6573: $fa $ab $c8
	or   a                                           ; $6576: $b7
	jr   nz, jr_011_6593                             ; $6577: $20 $1a

	ld   hl, $c853                                   ; $6579: $21 $53 $c8
	add  hl, bc                                      ; $657c: $09
	ld   a, c                                        ; $657d: $79
	ld   [$c8a7], a                                  ; $657e: $ea $a7 $c8
	ld   c, $01                                      ; $6581: $0e $01
	ld   a, [hl]                                     ; $6583: $7e
	cp   $51                                         ; $6584: $fe $51
	jr   c, jr_011_658b                              ; $6586: $38 $03

	add  $af                                         ; $6588: $c6 $af
	ld   c, a                                        ; $658a: $4f

jr_011_658b:
	ld   b, $00                                      ; $658b: $06 $00
	ld   a, c                                        ; $658d: $79
	ld   [$c8a6], a                                  ; $658e: $ea $a6 $c8
	jr   jr_011_659f                                 ; $6591: $18 $0c

jr_011_6593:
	ld   a, c                                        ; $6593: $79
	ld   [$c8a7], a                                  ; $6594: $ea $a7 $c8
	ld   c, $19                                      ; $6597: $0e $19
	ld   b, $00                                      ; $6599: $06 $00
	ld   a, c                                        ; $659b: $79
	ld   [$c8a6], a                                  ; $659c: $ea $a6 $c8

jr_011_659f:
	ld   a, [de]                                     ; $659f: $1a
	ld   l, a                                        ; $65a0: $6f
	inc  de                                          ; $65a1: $13
	ld   a, [de]                                     ; $65a2: $1a
	ld   h, a                                        ; $65a3: $67
	add  hl, bc                                      ; $65a4: $09
	ld   a, $27                                      ; $65a5: $3e $27
	cp   h                                           ; $65a7: $bc
	jr   c, jr_011_65b1                              ; $65a8: $38 $07

	jr   nz, jr_011_65b4                             ; $65aa: $20 $08

	ld   a, $0f                                      ; $65ac: $3e $0f
	cp   l                                           ; $65ae: $bd
	jr   nc, jr_011_65b4                             ; $65af: $30 $03

jr_011_65b1:
	ld   hl, $270f                                   ; $65b1: $21 $0f $27

jr_011_65b4:
	ld   a, h                                        ; $65b4: $7c
	ld   [de], a                                     ; $65b5: $12
	dec  de                                          ; $65b6: $1b
	ld   a, l                                        ; $65b7: $7d
	ld   [de], a                                     ; $65b8: $12
	ret                                              ; $65b9: $c9


Call_011_65ba:
	push bc                                          ; $65ba: $c5
	ld   hl, $c84a                                   ; $65bb: $21 $4a $c8
	add  hl, bc                                      ; $65be: $09
	ld   a, [hl]                                     ; $65bf: $7e
	cp   $04                                         ; $65c0: $fe $04
	jr   nz, jr_011_65cc                             ; $65c2: $20 $08

	ld   hl, $c841                                   ; $65c4: $21 $41 $c8
	add  hl, bc                                      ; $65c7: $09
	bit  1, [hl]                                     ; $65c8: $cb $4e
	jr   nz, jr_011_65ea                             ; $65ca: $20 $1e

jr_011_65cc:
	ld   a, c                                        ; $65cc: $79
	ld   [$c8a7], a                                  ; $65cd: $ea $a7 $c8
	ld   a, $f6                                      ; $65d0: $3e $f6
	ld   [$c8a6], a                                  ; $65d2: $ea $a6 $c8
	ld   a, [de]                                     ; $65d5: $1a
	ld   l, a                                        ; $65d6: $6f
	inc  de                                          ; $65d7: $13
	ld   a, [de]                                     ; $65d8: $1a
	ld   h, a                                        ; $65d9: $67
	ld   bc, $fff6                                   ; $65da: $01 $f6 $ff
	add  hl, bc                                      ; $65dd: $09
	bit  7, h                                        ; $65de: $cb $7c
	jr   z, jr_011_65e5                              ; $65e0: $28 $03

	ld   hl, $0000                                   ; $65e2: $21 $00 $00

jr_011_65e5:
	ld   a, h                                        ; $65e5: $7c
	ld   [de], a                                     ; $65e6: $12
	dec  de                                          ; $65e7: $1b
	ld   a, l                                        ; $65e8: $7d
	ld   [de], a                                     ; $65e9: $12

jr_011_65ea:
	pop  bc                                          ; $65ea: $c1
	ret                                              ; $65eb: $c9


Call_011_65ec:
	push hl                                          ; $65ec: $e5
	add  a                                           ; $65ed: $87
	ld   c, a                                        ; $65ee: $4f
	ld   b, $00                                      ; $65ef: $06 $00
	ld   hl, $65fa                                   ; $65f1: $21 $fa $65
	add  hl, bc                                      ; $65f4: $09
	ld   a, [hl+]                                    ; $65f5: $2a
	ld   c, a                                        ; $65f6: $4f
	ld   b, [hl]                                     ; $65f7: $46
	pop  hl                                          ; $65f8: $e1
	ret                                              ; $65f9: $c9


	ld   [$0838], sp                                 ; $65fa: $08 $38 $08
	ld   e, b                                        ; $65fd: $58
	ld   [$2878], sp                                 ; $65fe: $08 $78 $28
	jr   c, @+$2a                                    ; $6601: $38 $28

	ld   e, b                                        ; $6603: $58
	jr   z, jr_011_667e                              ; $6604: $28 $78

	ld   c, b                                        ; $6606: $48
	jr   c, jr_011_6651                              ; $6607: $38 $48

	ld   e, b                                        ; $6609: $58
	ld   c, b                                        ; $660a: $48
	ld   a, b                                        ; $660b: $78

Call_011_660c:
	ld   c, $08                                      ; $660c: $0e $08
	ld   b, $00                                      ; $660e: $06 $00

jr_011_6610:
	ld   hl, $c853                                   ; $6610: $21 $53 $c8
	add  hl, bc                                      ; $6613: $09
	ld   a, [hl]                                     ; $6614: $7e
	and  a                                           ; $6615: $a7
	jr   z, jr_011_6648                              ; $6616: $28 $30

	dec  [hl]                                        ; $6618: $35
	jr   nz, jr_011_6648                             ; $6619: $20 $2d

	ld   hl, $c84a                                   ; $661b: $21 $4a $c8
	add  hl, bc                                      ; $661e: $09
	inc  [hl]                                        ; $661f: $34
	ld   a, [hl]                                     ; $6620: $7e
	ld   l, a                                        ; $6621: $6f
	dec  a                                           ; $6622: $3d
	cp   $05                                         ; $6623: $fe $05
	jr   nz, jr_011_6639                             ; $6625: $20 $12

	ld   a, [$c85d]                                  ; $6627: $fa $5d $c8
	cp   $01                                         ; $662a: $fe $01
	jr   nz, jr_011_6639                             ; $662c: $20 $0b

	ld   a, $0d                                      ; $662e: $3e $0d
	ld   [wGameSubstate], a                                  ; $6630: $ea $a1 $c2
	ld   hl, $6678                                   ; $6633: $21 $78 $66
	add  hl, bc                                      ; $6636: $09
	jr   jr_011_663f                                 ; $6637: $18 $06

jr_011_6639:
	ld   h, $00                                      ; $6639: $26 $00
	ld   de, $6681                                   ; $663b: $11 $81 $66
	add  hl, de                                      ; $663e: $19

jr_011_663f:
	ld   a, [hl]                                     ; $663f: $7e
	ld   hl, $c853                                   ; $6640: $21 $53 $c8
	add  hl, bc                                      ; $6643: $09
	ld   [hl], a                                     ; $6644: $77
	call Call_011_6533                               ; $6645: $cd $33 $65

jr_011_6648:
	ld   a, [$c89a]                                  ; $6648: $fa $9a $c8
	or   a                                           ; $664b: $b7
	jr   z, jr_011_6672                              ; $664c: $28 $24

	ld   hl, $c841                                   ; $664e: $21 $41 $c8

jr_011_6651:
	add  hl, bc                                      ; $6651: $09
	ld   a, [hl]                                     ; $6652: $7e
	and  $03                                         ; $6653: $e6 $03
	add  a                                           ; $6655: $87
	ld   e, a                                        ; $6656: $5f
	ld   d, $00                                      ; $6657: $16 $00
	ld   hl, $6699                                   ; $6659: $21 $99 $66
	add  hl, de                                      ; $665c: $19
	ld   a, [hl+]                                    ; $665d: $2a
	ld   h, [hl]                                     ; $665e: $66
	ld   l, a                                        ; $665f: $6f
	push hl                                          ; $6660: $e5
	ld   hl, $c84a                                   ; $6661: $21 $4a $c8
	add  hl, bc                                      ; $6664: $09
	ld   a, [hl]                                     ; $6665: $7e
	ld   e, a                                        ; $6666: $5f
	ld   d, $00                                      ; $6667: $16 $00
	pop  hl                                          ; $6669: $e1
	add  hl, de                                      ; $666a: $19
	ld   a, [hl]                                     ; $666b: $7e
	call $66d1                                       ; $666c: $cd $d1 $66
	call Call_011_6539                               ; $666f: $cd $39 $65

jr_011_6672:
	dec  c                                           ; $6672: $0d
	bit  7, c                                        ; $6673: $cb $79
	jr   z, jr_011_6610                              ; $6675: $28 $99

	ret                                              ; $6677: $c9


	ld   bc, $2b16                                   ; $6678: $01 $16 $2b
	ld   b, b                                        ; $667b: $40
	ld   d, l                                        ; $667c: $55
	ld   l, d                                        ; $667d: $6a

jr_011_667e:
	ld   a, a                                        ; $667e: $7f
	sub  h                                           ; $667f: $94
	xor  c                                           ; $6680: $a9
	nop                                              ; $6681: $00
	ld   [bc], a                                     ; $6682: $02
	ld   [bc], a                                     ; $6683: $02
	ld   [bc], a                                     ; $6684: $02
	or   h                                           ; $6685: $b4
	ld   bc, $0201                                   ; $6686: $01 $01 $02
	ld   [bc], a                                     ; $6689: $02
	ld   [bc], a                                     ; $668a: $02
	nop                                              ; $668b: $00
	nop                                              ; $668c: $00
	nop                                              ; $668d: $00

jr_011_668e:
	ld   [bc], a                                     ; $668e: $02
	ld   [bc], a                                     ; $668f: $02
	ld   [bc], a                                     ; $6690: $02
	or   h                                           ; $6691: $b4
	ld   bc, $0801                                   ; $6692: $01 $01 $08
	ld   [$0008], sp                                 ; $6695: $08 $08 $00
	nop                                              ; $6698: $00
	and  c                                           ; $6699: $a1
	ld   h, [hl]                                     ; $669a: $66

jr_011_669b:
	xor  l                                           ; $669b: $ad
	ld   h, [hl]                                     ; $669c: $66
	cp   c                                           ; $669d: $b9
	ld   h, [hl]                                     ; $669e: $66
	push bc                                          ; $669f: $c5
	ld   h, [hl]                                     ; $66a0: $66
	ld   [$0100], sp                                 ; $66a1: $08 $00 $01
	add  hl, bc                                      ; $66a4: $09
	ld   [$0808], sp                                 ; $66a5: $08 $08 $08
	add  hl, bc                                      ; $66a8: $09
	ld   bc, $0800                                   ; $66a9: $01 $00 $08
	ld   [$0008], sp                                 ; $66ac: $08 $08 $00
	ld   bc, $0609                                   ; $66af: $01 $09 $06
	ld   b, $06                                      ; $66b2: $06 $06
	rlca                                             ; $66b4: $07
	ld   bc, $0800                                   ; $66b5: $01 $00 $08
	ld   [$0008], sp                                 ; $66b8: $08 $08 $00
	ld   bc, $0302                                   ; $66bb: $01 $02 $03
	inc  bc                                          ; $66be: $03
	inc  bc                                          ; $66bf: $03
	ld   [bc], a                                     ; $66c0: $02
	ld   bc, $0800                                   ; $66c1: $01 $00 $08
	ld   [$0008], sp                                 ; $66c4: $08 $08 $00
	ld   bc, $0402                                   ; $66c7: $01 $02 $04
	inc  b                                           ; $66ca: $04
	inc  b                                           ; $66cb: $04
	dec  b                                           ; $66cc: $05
	ld   bc, $0800                                   ; $66cd: $01 $00 $08
	ld   [$f5c5], sp                                 ; $66d0: $08 $c5 $f5
	ld   a, c                                        ; $66d3: $79
	add  a                                           ; $66d4: $87
	ld   c, a                                        ; $66d5: $4f
	ld   b, $00                                      ; $66d6: $06 $00
	ld   hl, $6706                                   ; $66d8: $21 $06 $67
	add  hl, bc                                      ; $66db: $09
	ld   a, [hl+]                                    ; $66dc: $2a
	ld   d, [hl]                                     ; $66dd: $56
	ld   e, a                                        ; $66de: $5f
	pop  af                                          ; $66df: $f1
	add  a                                           ; $66e0: $87
	ld   c, a                                        ; $66e1: $4f
	ld   b, $00                                      ; $66e2: $06 $00
	ld   hl, $66f2                                   ; $66e4: $21 $f2 $66
	add  hl, bc                                      ; $66e7: $09
	ld   a, [hl+]                                    ; $66e8: $2a
	ld   h, [hl]                                     ; $66e9: $66
	ld   l, a                                        ; $66ea: $6f
	ld   a, $04                                      ; $66eb: $3e $04
	call Call_011_6718                               ; $66ed: $cd $18 $67
	pop  bc                                          ; $66f0: $c1
	ret                                              ; $66f1: $c9


	inc  d                                           ; $66f2: $14
	sbc  b                                           ; $66f3: $98
	jr   jr_011_668e                                 ; $66f4: $18 $98

	inc  e                                           ; $66f6: $1c
	sbc  b                                           ; $66f7: $98
	sub  h                                           ; $66f8: $94
	sbc  b                                           ; $66f9: $98
	sbc  b                                           ; $66fa: $98
	sbc  b                                           ; $66fb: $98
	sbc  h                                           ; $66fc: $9c
	sbc  b                                           ; $66fd: $98
	inc  d                                           ; $66fe: $14
	sbc  c                                           ; $66ff: $99
	jr   jr_011_669b                                 ; $6700: $18 $99

	inc  e                                           ; $6702: $1c
	sbc  c                                           ; $6703: $99
	sub  h                                           ; $6704: $94
	sbc  c                                           ; $6705: $99
	daa                                              ; $6706: $27
	sbc  b                                           ; $6707: $98
	dec  hl                                          ; $6708: $2b
	sbc  b                                           ; $6709: $98
	cpl                                              ; $670a: $2f
	sbc  b                                           ; $670b: $98
	and  a                                           ; $670c: $a7
	sbc  b                                           ; $670d: $98
	xor  e                                           ; $670e: $ab
	sbc  b                                           ; $670f: $98
	xor  a                                           ; $6710: $af
	sbc  b                                           ; $6711: $98
	daa                                              ; $6712: $27
	sbc  c                                           ; $6713: $99
	dec  hl                                          ; $6714: $2b
	sbc  c                                           ; $6715: $99
	cpl                                              ; $6716: $2f
	sbc  c                                           ; $6717: $99

Call_011_6718:
	ld   [$c893], a                                  ; $6718: $ea $93 $c8
	push hl                                          ; $671b: $e5
	push de                                          ; $671c: $d5
	xor  a                                           ; $671d: $af
	ldh  [rVBK], a                                   ; $671e: $e0 $4f
	call Call_011_672d                               ; $6720: $cd $2d $67
	pop  de                                          ; $6723: $d1
	pop  hl                                          ; $6724: $e1
	ld   a, $01                                      ; $6725: $3e $01
	ldh  [rVBK], a                                   ; $6727: $e0 $4f
	call Call_011_672d                               ; $6729: $cd $2d $67
	ret                                              ; $672c: $c9


Call_011_672d:
	ld   a, [$c893]                                  ; $672d: $fa $93 $c8

jr_011_6730:
	push af                                          ; $6730: $f5
	ld   bc, $0004                                   ; $6731: $01 $04 $00
	ld   a, $00                                      ; $6734: $3e $00
	call HBlankFarMemCopy                                       ; $6736: $cd $23 $0a
	ld   bc, $001c                                   ; $6739: $01 $1c $00
	add  hl, bc                                      ; $673c: $09
	push hl                                          ; $673d: $e5
	ld   hl, $001c                                   ; $673e: $21 $1c $00
	add  hl, de                                      ; $6741: $19
	ld   d, h                                        ; $6742: $54
	ld   e, l                                        ; $6743: $5d
	pop  hl                                          ; $6744: $e1
	pop  af                                          ; $6745: $f1
	dec  a                                           ; $6746: $3d
	jr   nz, jr_011_6730                             ; $6747: $20 $e7

	ret                                              ; $6749: $c9


Call_011_674a:
	xor  a                                           ; $674a: $af
	ldh  [rVBK], a                                   ; $674b: $e0 $4f
	ld   hl, $c85e                                   ; $674d: $21 $5e $c8
	ld   de, $c86d                                   ; $6750: $11 $6d $c8
	call Call_011_677c                               ; $6753: $cd $7c $67
	ld   hl, $c866                                   ; $6756: $21 $66 $c8
	ld   a, $00                                      ; $6759: $3e $00
	ld   de, $99dd                                   ; $675b: $11 $dd $99
	ld   bc, $0008                                   ; $675e: $01 $08 $00
	call HBlankFarMemCopy                                       ; $6761: $cd $23 $0a
	ld   hl, $c862                                   ; $6764: $21 $62 $c8
	ld   de, $c875                                   ; $6767: $11 $75 $c8
	call Call_011_677c                               ; $676a: $cd $7c $67
	ld   hl, $c86e                                   ; $676d: $21 $6e $c8
	ld   a, $00                                      ; $6770: $3e $00
	ld   de, $98bd                                   ; $6772: $11 $bd $98
	ld   bc, $0008                                   ; $6775: $01 $08 $00
	call HBlankFarMemCopy                                       ; $6778: $cd $23 $0a
	ret                                              ; $677b: $c9


Call_011_677c:
	ld   a, e                                        ; $677c: $7b
	ld   [$c864], a                                  ; $677d: $ea $64 $c8
	ld   a, d                                        ; $6780: $7a
	ld   [$c865], a                                  ; $6781: $ea $65 $c8
	ld   a, [hl+]                                    ; $6784: $2a
	ld   h, [hl]                                     ; $6785: $66
	ld   l, a                                        ; $6786: $6f
	call $0da8                                       ; $6787: $cd $a8 $0d
	ld   l, a                                        ; $678a: $6f
	ld   h, $00                                      ; $678b: $26 $00
	ld   bc, $6964                                   ; $678d: $01 $64 $69
	add  hl, bc                                      ; $6790: $09
	ld   a, [$c864]                                  ; $6791: $fa $64 $c8
	ld   e, a                                        ; $6794: $5f
	ld   a, [$c865]                                  ; $6795: $fa $65 $c8
	ld   d, a                                        ; $6798: $57
	ld   a, [hl]                                     ; $6799: $7e
	ld   [de], a                                     ; $679a: $12
	dec  de                                          ; $679b: $1b
	pop  af                                          ; $679c: $f1
	ld   l, a                                        ; $679d: $6f
	ld   h, $00                                      ; $679e: $26 $00
	add  hl, bc                                      ; $67a0: $09
	ld   a, [hl]                                     ; $67a1: $7e
	ld   [de], a                                     ; $67a2: $12
	dec  de                                          ; $67a3: $1b
	pop  af                                          ; $67a4: $f1
	ld   l, a                                        ; $67a5: $6f
	ld   h, $00                                      ; $67a6: $26 $00
	add  hl, bc                                      ; $67a8: $09
	ld   a, [hl]                                     ; $67a9: $7e
	ld   [de], a                                     ; $67aa: $12
	dec  de                                          ; $67ab: $1b
	pop  af                                          ; $67ac: $f1
	ld   l, a                                        ; $67ad: $6f
	ld   h, $00                                      ; $67ae: $26 $00
	add  hl, bc                                      ; $67b0: $09
	ld   a, [hl]                                     ; $67b1: $7e
	ld   [de], a                                     ; $67b2: $12
	ld   l, e                                        ; $67b3: $6b
	ld   h, d                                        ; $67b4: $62
	ld   a, [$696e]                                  ; $67b5: $fa $6e $69
	ld   e, a                                        ; $67b8: $5f
	ld   a, [$6964]                                  ; $67b9: $fa $64 $69
	ld   c, $03                                      ; $67bc: $0e $03

jr_011_67be:
	cp   [hl]                                        ; $67be: $be
	jr   nz, jr_011_67c6                             ; $67bf: $20 $05

	ld   [hl], e                                     ; $67c1: $73
	inc  hl                                          ; $67c2: $23
	dec  c                                           ; $67c3: $0d
	jr   nz, jr_011_67be                             ; $67c4: $20 $f8

jr_011_67c6:
	ret                                              ; $67c6: $c9


	ld   a, [hl]                                     ; $67c7: $7e
	and  a                                           ; $67c8: $a7
	jr   z, jr_011_67d8                              ; $67c9: $28 $0d

	dec  [hl]                                        ; $67cb: $35
	jr   nz, jr_011_67d8                             ; $67cc: $20 $0a

	ld   a, [bc]                                     ; $67ce: $0a
	cp   $06                                         ; $67cf: $fe $06
	jr   nc, jr_011_67d8                             ; $67d1: $30 $05

	inc  a                                           ; $67d3: $3c
	ld   [bc], a                                     ; $67d4: $02
	ld   a, $08                                      ; $67d5: $3e $08
	ld   [hl], a                                     ; $67d7: $77

jr_011_67d8:
	ret                                              ; $67d8: $c9


Call_011_67d9:
	ld   hl, $c897                                   ; $67d9: $21 $97 $c8
	ld   bc, $c877                                   ; $67dc: $01 $77 $c8
	ld   a, [hl]                                     ; $67df: $7e
	and  a                                           ; $67e0: $a7
	jr   z, jr_011_67f5                              ; $67e1: $28 $12

	dec  [hl]                                        ; $67e3: $35
	jr   nz, jr_011_67f5                             ; $67e4: $20 $0f

	ld   a, [bc]                                     ; $67e6: $0a
	cp   $06                                         ; $67e7: $fe $06
	jr   nc, jr_011_67f2                             ; $67e9: $30 $07

	inc  a                                           ; $67eb: $3c
	ld   [bc], a                                     ; $67ec: $02
	ld   a, $08                                      ; $67ed: $3e $08
	ld   [hl], a                                     ; $67ef: $77
	jr   jr_011_67f5                                 ; $67f0: $18 $03

jr_011_67f2:
	call Call_011_617b                               ; $67f2: $cd $7b $61

jr_011_67f5:
	ld   hl, $c896                                   ; $67f5: $21 $96 $c8
	ld   bc, $c876                                   ; $67f8: $01 $76 $c8
	ld   a, [hl]                                     ; $67fb: $7e
	and  a                                           ; $67fc: $a7
	jr   z, jr_011_6811                              ; $67fd: $28 $12

	dec  [hl]                                        ; $67ff: $35
	jr   nz, jr_011_6811                             ; $6800: $20 $0f

	ld   a, [bc]                                     ; $6802: $0a
	cp   $06                                         ; $6803: $fe $06
	jr   nc, jr_011_680e                             ; $6805: $30 $07

	inc  a                                           ; $6807: $3c
	ld   [bc], a                                     ; $6808: $02
	ld   a, $08                                      ; $6809: $3e $08
	ld   [hl], a                                     ; $680b: $77
	jr   jr_011_6811                                 ; $680c: $18 $03

jr_011_680e:
	call $615b                                       ; $680e: $cd $5b $61

jr_011_6811:
	xor  a                                           ; $6811: $af
	ldh  [rVBK], a                                   ; $6812: $e0 $4f
	ld   a, [$c876]                                  ; $6814: $fa $76 $c8
	ld   hl, $c87f                                   ; $6817: $21 $7f $c8
	call Call_011_6843                               ; $681a: $cd $43 $68
	ld   hl, $c878                                   ; $681d: $21 $78 $c8
	ld   a, $00                                      ; $6820: $3e $00
	ld   de, $9a1e                                   ; $6822: $11 $1e $9a
	ld   bc, $0008                                   ; $6825: $01 $08 $00
	call HBlankFarMemCopy                                       ; $6828: $cd $23 $0a
	ld   a, [$c877]                                  ; $682b: $fa $77 $c8
	ld   hl, $c887                                   ; $682e: $21 $87 $c8
	call Call_011_6843                               ; $6831: $cd $43 $68
	ld   hl, $c880                                   ; $6834: $21 $80 $c8
	ld   a, $00                                      ; $6837: $3e $00
	ld   de, $98fe                                   ; $6839: $11 $fe $98
	ld   bc, $0008                                   ; $683c: $01 $08 $00
	call HBlankFarMemCopy                                       ; $683f: $cd $23 $0a
	ret                                              ; $6842: $c9


Call_011_6843:
	ld   b, $06                                      ; $6843: $06 $06
	ld   c, a                                        ; $6845: $4f
	cp   $00                                         ; $6846: $fe $00
	jr   z, jr_011_6851                              ; $6848: $28 $07

	ld   a, $75                                      ; $684a: $3e $75

jr_011_684c:
	ld   [hl-], a                                    ; $684c: $32
	dec  b                                           ; $684d: $05
	dec  c                                           ; $684e: $0d
	jr   nz, jr_011_684c                             ; $684f: $20 $fb

jr_011_6851:
	ld   a, b                                        ; $6851: $78
	cp   $00                                         ; $6852: $fe $00
	jr   z, jr_011_685c                              ; $6854: $28 $06

	ld   a, $65                                      ; $6856: $3e $65

jr_011_6858:
	ld   [hl-], a                                    ; $6858: $32
	dec  b                                           ; $6859: $05
	jr   nz, jr_011_6858                             ; $685a: $20 $fc

jr_011_685c:
	ret                                              ; $685c: $c9


Call_011_685d:
	ld   a, [$c83a]                                  ; $685d: $fa $3a $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6860: $cd $76 $30
	push af                                          ; $6863: $f5
	ld   a, $43                                      ; $6864: $3e $43
	ld   [wFarCallAddr], a                                  ; $6866: $ea $98 $c2
	ld   a, $41                                      ; $6869: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $686b: $ea $99 $c2
	ld   a, $01                                      ; $686e: $3e $01
	ld   [wFarCallBank], a                                  ; $6870: $ea $9a $c2
	pop  af                                          ; $6873: $f1
	call FarCall                                       ; $6874: $cd $62 $09
	ld   a, $01                                      ; $6877: $3e $01
	cp   c                                           ; $6879: $b9
	jr   nz, jr_011_68a4                             ; $687a: $20 $28

	ld   a, [$c876]                                  ; $687c: $fa $76 $c8
	and  a                                           ; $687f: $a7
	jr   nz, jr_011_68a4                             ; $6880: $20 $22

	ld   a, [$c899]                                  ; $6882: $fa $99 $c8
	dec  a                                           ; $6885: $3d
	ld   [$c899], a                                  ; $6886: $ea $99 $c8
	cp   $28                                         ; $6889: $fe $28
	jr   nc, jr_011_68a4                             ; $688b: $30 $17

	cp   $00                                         ; $688d: $fe $00
	jr   nz, jr_011_6896                             ; $688f: $20 $05

	ld   a, $3c                                      ; $6891: $3e $3c
	ld   [$c899], a                                  ; $6893: $ea $99 $c8

jr_011_6896:
	xor  a                                           ; $6896: $af
	ldh  [rVBK], a                                   ; $6897: $e0 $4f
	call Call_011_68b5                               ; $6899: $cd $b5 $68
	ld   a, $01                                      ; $689c: $3e $01
	ldh  [rVBK], a                                   ; $689e: $e0 $4f
	call Call_011_68b5                               ; $68a0: $cd $b5 $68
	ret                                              ; $68a3: $c9


jr_011_68a4:
	xor  a                                           ; $68a4: $af
	ldh  [rVBK], a                                   ; $68a5: $e0 $4f
	call Call_011_68e0                               ; $68a7: $cd $e0 $68
	ld   a, $01                                      ; $68aa: $3e $01
	ldh  [rVBK], a                                   ; $68ac: $e0 $4f
	call Call_011_68e0                               ; $68ae: $cd $e0 $68
	call Call_011_690b                               ; $68b1: $cd $0b $69
	ret                                              ; $68b4: $c9


Call_011_68b5:
	ld   de, $99e6                                   ; $68b5: $11 $e6 $99
	ld   a, $00                                      ; $68b8: $3e $00
	ld   hl, $9aa0                                   ; $68ba: $21 $a0 $9a
	ld   bc, $0010                                   ; $68bd: $01 $10 $00
	call HBlankFarMemCopy                                       ; $68c0: $cd $23 $0a
	ld   de, $9a06                                   ; $68c3: $11 $06 $9a
	ld   a, $00                                      ; $68c6: $3e $00
	ld   hl, $9ac0                                   ; $68c8: $21 $c0 $9a
	ld   bc, $0010                                   ; $68cb: $01 $10 $00
	call HBlankFarMemCopy                                       ; $68ce: $cd $23 $0a
	ld   de, $9a26                                   ; $68d1: $11 $26 $9a
	ld   a, $00                                      ; $68d4: $3e $00
	ld   hl, $9ae0                                   ; $68d6: $21 $e0 $9a
	ld   bc, $0010                                   ; $68d9: $01 $10 $00
	call HBlankFarMemCopy                                       ; $68dc: $cd $23 $0a
	ret                                              ; $68df: $c9


Call_011_68e0:
	ld   de, $99e6                                   ; $68e0: $11 $e6 $99
	ld   a, $00                                      ; $68e3: $3e $00
	ld   hl, $9a40                                   ; $68e5: $21 $40 $9a
	ld   bc, $0010                                   ; $68e8: $01 $10 $00
	call HBlankFarMemCopy                                       ; $68eb: $cd $23 $0a
	ld   de, $9a06                                   ; $68ee: $11 $06 $9a
	ld   a, $00                                      ; $68f1: $3e $00
	ld   hl, $9a60                                   ; $68f3: $21 $60 $9a
	ld   bc, $0010                                   ; $68f6: $01 $10 $00
	call HBlankFarMemCopy                                       ; $68f9: $cd $23 $0a
	ld   de, $9a26                                   ; $68fc: $11 $26 $9a
	ld   a, $00                                      ; $68ff: $3e $00
	ld   hl, $9a80                                   ; $6901: $21 $80 $9a
	ld   bc, $0010                                   ; $6904: $01 $10 $00
	call HBlankFarMemCopy                                       ; $6907: $cd $23 $0a
	ret                                              ; $690a: $c9


Call_011_690b:
	ld   a, [$c85d]                                  ; $690b: $fa $5d $c8
	call ConvertAintoBCD                                       ; $690e: $cd $7d $0d
	ld   c, a                                        ; $6911: $4f
	ld   b, $00                                      ; $6912: $06 $00
	ld   hl, $6964                                   ; $6914: $21 $64 $69
	add  hl, bc                                      ; $6917: $09
	ld   a, [hl]                                     ; $6918: $7e
	ld   [$c8a5], a                                  ; $6919: $ea $a5 $c8
	pop  af                                          ; $691c: $f1
	ld   c, a                                        ; $691d: $4f
	ld   b, $00                                      ; $691e: $06 $00
	ld   hl, $6964                                   ; $6920: $21 $64 $69
	add  hl, bc                                      ; $6923: $09
	ld   a, [hl]                                     ; $6924: $7e
	ld   [$c8a4], a                                  ; $6925: $ea $a4 $c8
	pop  af                                          ; $6928: $f1
	xor  a                                           ; $6929: $af
	ldh  [rVBK], a                                   ; $692a: $e0 $4f
	ld   de, $9a0e                                   ; $692c: $11 $0e $9a
	ld   a, $00                                      ; $692f: $3e $00
	ld   hl, $c8a2                                   ; $6931: $21 $a2 $c8
	ld   bc, $0004                                   ; $6934: $01 $04 $00
	call HBlankFarMemCopy                                       ; $6937: $cd $23 $0a
	ret                                              ; $693a: $c9


Call_011_693b:
	xor  a                                           ; $693b: $af
	ldh  [rVBK], a                                   ; $693c: $e0 $4f
	ld   hl, $98bd                                   ; $693e: $21 $bd $98
	ld   de, $c86e                                   ; $6941: $11 $6e $c8
	ld   c, $08                                      ; $6944: $0e $08

jr_011_6946:
	ld   a, [hl+]                                    ; $6946: $2a
	ld   [de], a                                     ; $6947: $12
	inc  de                                          ; $6948: $13
	dec  c                                           ; $6949: $0d
	jr   nz, jr_011_6946                             ; $694a: $20 $fa

	ld   hl, $99dd                                   ; $694c: $21 $dd $99
	ld   de, $c866                                   ; $694f: $11 $66 $c8
	ld   c, $08                                      ; $6952: $0e $08

jr_011_6954:
	ld   a, [hl+]                                    ; $6954: $2a
	ld   [de], a                                     ; $6955: $12
	inc  de                                          ; $6956: $13
	dec  c                                           ; $6957: $0d
	jr   nz, jr_011_6954                             ; $6958: $20 $fa

	ld   a, [$6964]                                  ; $695a: $fa $64 $69
	ld   [$c86d], a                                  ; $695d: $ea $6d $c8
	ld   [$c875], a                                  ; $6960: $ea $75 $c8
	ret                                              ; $6963: $c9


	ld   l, e                                        ; $6964: $6b
	ld   l, h                                        ; $6965: $6c
	ld   l, l                                        ; $6966: $6d
	ld   l, [hl]                                     ; $6967: $6e
	ld   l, a                                        ; $6968: $6f
	ld   d, b                                        ; $6969: $50
	ld   d, c                                        ; $696a: $51
	ld   d, d                                        ; $696b: $52
	ld   d, e                                        ; $696c: $53
	ld   d, h                                        ; $696d: $54
	ld   d, l                                        ; $696e: $55

Call_011_696f:
	xor  a                                           ; $696f: $af
	ldh  [rVBK], a                                   ; $6970: $e0 $4f
	ld   hl, $98fe                                   ; $6972: $21 $fe $98
	ld   de, $c880                                   ; $6975: $11 $80 $c8
	call Call_011_6985                               ; $6978: $cd $85 $69
	ld   hl, $9a1e                                   ; $697b: $21 $1e $9a
	ld   de, $c878                                   ; $697e: $11 $78 $c8
	call Call_011_6985                               ; $6981: $cd $85 $69
	ret                                              ; $6984: $c9


Call_011_6985:
	ld   c, $02                                      ; $6985: $0e $02
	call Call_011_6992                               ; $6987: $cd $92 $69
	ld   a, $75                                      ; $698a: $3e $75
	ld   c, $06                                      ; $698c: $0e $06
	call Call_011_6999                               ; $698e: $cd $99 $69
	ret                                              ; $6991: $c9


Call_011_6992:
jr_011_6992:
	ld   a, [hl+]                                    ; $6992: $2a
	ld   [de], a                                     ; $6993: $12
	inc  de                                          ; $6994: $13
	dec  c                                           ; $6995: $0d
	jr   nz, jr_011_6992                             ; $6996: $20 $fa

	ret                                              ; $6998: $c9


Call_011_6999:
jr_011_6999:
	ld   [de], a                                     ; $6999: $12
	inc  de                                          ; $699a: $13
	dec  c                                           ; $699b: $0d
	jr   nz, jr_011_6999                             ; $699c: $20 $fb

	ret                                              ; $699e: $c9


Call_011_699f:
jr_011_699f:
	ldh  a, [rLY]                                    ; $699f: $f0 $44
	cp   $28                                         ; $69a1: $fe $28
	jr   c, jr_011_699f                              ; $69a3: $38 $fa

	ld   hl, $9a18                                   ; $69a5: $21 $18 $9a
	ld   de, $9961                                   ; $69a8: $11 $61 $99
	ld   a, $02                                      ; $69ab: $3e $02
	call Call_011_6718                               ; $69ad: $cd $18 $67
	ld   hl, $9a1c                                   ; $69b0: $21 $1c $9a
	ld   de, $9841                                   ; $69b3: $11 $41 $98
	ld   a, $02                                      ; $69b6: $3e $02
	call Call_011_6718                               ; $69b8: $cd $18 $67
	ret                                              ; $69bb: $c9


Call_011_69bc:
jr_011_69bc:
	ldh  a, [rLY]                                    ; $69bc: $f0 $44
	cp   $28                                         ; $69be: $fe $28
	jr   c, jr_011_69bc                              ; $69c0: $38 $fa

	ld   hl, $9a54                                   ; $69c2: $21 $54 $9a
	ld   de, $9961                                   ; $69c5: $11 $61 $99
	ld   a, $02                                      ; $69c8: $3e $02
	call Call_011_6718                               ; $69ca: $cd $18 $67
	ld   hl, $9a14                                   ; $69cd: $21 $14 $9a
	ld   de, $9841                                   ; $69d0: $11 $41 $98
	ld   a, $02                                      ; $69d3: $3e $02
	call Call_011_6718                               ; $69d5: $cd $18 $67
	ret                                              ; $69d8: $c9


Call_011_69d9:
jr_011_69d9:
	ldh  a, [rLY]                                    ; $69d9: $f0 $44
	cp   $28                                         ; $69db: $fe $28
	jr   c, jr_011_69d9                              ; $69dd: $38 $fa

	ld   hl, $99dc                                   ; $69df: $21 $dc $99
	ld   de, $9961                                   ; $69e2: $11 $61 $99
	ld   a, $02                                      ; $69e5: $3e $02
	call Call_011_6718                               ; $69e7: $cd $18 $67
	ld   hl, $99d8                                   ; $69ea: $21 $d8 $99
	ld   de, $9841                                   ; $69ed: $11 $41 $98
	ld   a, $02                                      ; $69f0: $3e $02
	call Call_011_6718                               ; $69f2: $cd $18 $67
	ret                                              ; $69f5: $c9


Call_011_69f6:
	ld   a, [$c894]                                  ; $69f6: $fa $94 $c8
	or   a                                           ; $69f9: $b7
	jr   z, jr_011_6a1c                              ; $69fa: $28 $20

	cp   $01                                         ; $69fc: $fe $01
	jr   z, jr_011_6a0e                              ; $69fe: $28 $0e

	ld   a, $02                                      ; $6a00: $3e $02
	ld   [wSpriteGroup], a                                  ; $6a02: $ea $1a $c2
	ld   a, $03                                      ; $6a05: $3e $03
	ld   b, $20                                      ; $6a07: $06 $20
	ld   c, $48                                      ; $6a09: $0e $48
	call LoadSpriteFromMainTable                                       ; $6a0b: $cd $16 $0e

jr_011_6a0e:
	ld   a, $02                                      ; $6a0e: $3e $02
	ld   [wSpriteGroup], a                                  ; $6a10: $ea $1a $c2
	ld   a, $03                                      ; $6a13: $3e $03
	ld   b, $28                                      ; $6a15: $06 $28
	ld   c, $48                                      ; $6a17: $0e $48
	call LoadSpriteFromMainTable                                       ; $6a19: $cd $16 $0e

jr_011_6a1c:
	ld   a, [$c895]                                  ; $6a1c: $fa $95 $c8
	or   a                                           ; $6a1f: $b7
	jr   z, jr_011_6a42                              ; $6a20: $28 $20

	cp   $01                                         ; $6a22: $fe $01
	jr   z, jr_011_6a34                              ; $6a24: $28 $0e

	ld   a, $02                                      ; $6a26: $3e $02
	ld   [wSpriteGroup], a                                  ; $6a28: $ea $1a $c2
	ld   a, $03                                      ; $6a2b: $3e $03
	ld   b, $20                                      ; $6a2d: $06 $20
	ld   c, $00                                      ; $6a2f: $0e $00
	call LoadSpriteFromMainTable                                       ; $6a31: $cd $16 $0e

jr_011_6a34:
	ld   a, $02                                      ; $6a34: $3e $02
	ld   [wSpriteGroup], a                                  ; $6a36: $ea $1a $c2
	ld   a, $03                                      ; $6a39: $3e $03
	ld   b, $28                                      ; $6a3b: $06 $28
	ld   c, $00                                      ; $6a3d: $0e $00
	call LoadSpriteFromMainTable                                       ; $6a3f: $cd $16 $0e

jr_011_6a42:
	ret                                              ; $6a42: $c9


Call_011_6a43::
	ld   a, $08                                      ; $6a43: $3e $08

.nextFade:
	push af                                          ; $6a45: $f5
	ld   b, $00                                      ; $6a46: $06 $00
	ld   c, $40                                      ; $6a48: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $6a4a: $cd $32 $08
	
	ld   bc, $0004                                   ; $6a4d: $01 $04 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $6a50: $cd $79 $0a
	pop  af                                          ; $6a53: $f1

	dec  a                                           ; $6a54: $3d
	jr   nz, .nextFade                             ; $6a55: $20 $ee

	ret                                              ; $6a57: $c9


Call_011_6a58:
	ld   a, $08                                      ; $6a58: $3e $08

jr_011_6a5a:
	push af                                          ; $6a5a: $f5
	ld   b, $00                                      ; $6a5b: $06 $00
	ld   c, $40                                      ; $6a5d: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $6a5f: $cd $32 $08
	ld   bc, $0004                                   ; $6a62: $01 $04 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $6a65: $cd $79 $0a
	pop  af                                          ; $6a68: $f1
	push af                                          ; $6a69: $f5
	call SafeSetAudVolForMultipleChannels                                       ; $6a6a: $cd $e0 $1c
	pop  af                                          ; $6a6d: $f1
	dec  a                                           ; $6a6e: $3d
	jr   nz, jr_011_6a5a                             ; $6a6f: $20 $e9

	ld   a, $01                                      ; $6a71: $3e $01
	ld   hl, $7000                                   ; $6a73: $21 $00 $70
	ld   de, wBGPalettes                                   ; $6a76: $11 $de $c2
	ld   bc, $0080                                   ; $6a79: $01 $80 $00
	call FarMemCopy                                       ; $6a7c: $cd $b2 $09
	ld   bc, $003f                                   ; $6a7f: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6a82: $cd $aa $04
	ret                                              ; $6a85: $c9


Call_011_6a86:
	ld   b, $02                                      ; $6a86: $06 $02
	ld   a, [$c894]                                  ; $6a88: $fa $94 $c8
	cp   $02                                         ; $6a8b: $fe $02
	jr   z, jr_011_6a95                              ; $6a8d: $28 $06

	dec  b                                           ; $6a8f: $05
	cp   $01                                         ; $6a90: $fe $01
	jr   z, jr_011_6a95                              ; $6a92: $28 $01

	dec  b                                           ; $6a94: $05

jr_011_6a95:
	ld   a, b                                        ; $6a95: $78
	ret                                              ; $6a96: $c9


Call_011_6a97:
	ld   hl, $c860                                   ; $6a97: $21 $60 $c8
	ld   a, [hl+]                                    ; $6a9a: $2a
	ld   d, [hl]                                     ; $6a9b: $56
	ld   e, a                                        ; $6a9c: $5f
	ld   hl, $0000                                   ; $6a9d: $21 $00 $00
	ld   a, [$c895]                                  ; $6aa0: $fa $95 $c8
	or   a                                           ; $6aa3: $b7
	jr   nz, :+                             ; $6aa4: $20 $00

:	add  hl, de                                      ; $6aa6: $19
	ld   e, l                                        ; $6aa7: $5d
	ld   a, l                                        ; $6aa8: $7d
	ld   [$c860], a                                  ; $6aa9: $ea $60 $c8
	ld   d, h                                        ; $6aac: $54
	ld   a, h                                        ; $6aad: $7c
	ld   [$c861], a                                  ; $6aae: $ea $61 $c8
	ld   hl, $6ac3                                   ; $6ab1: $21 $c3 $6a
	ld   a, [$c8ab]                                  ; $6ab4: $fa $ab $c8
	or   a                                           ; $6ab7: $b7
	jr   z, :+                              ; $6ab8: $28 $03
	ld   hl, $6acd                                   ; $6aba: $21 $cd $6a
:	ld   c, $04                                      ; $6abd: $0e $04
	call ReturnMiniGameRankInA                               ; $6abf: $cd $5b $58
	ret                                              ; $6ac2: $c9


	nop                                              ; $6ac3: $00
	nop                                              ; $6ac4: $00
	sub  b                                           ; $6ac5: $90
	ld   bc, $0258                                   ; $6ac6: $01 $58 $02
	jr   nz, jr_011_6ace                             ; $6ac9: $20 $03

	add  sp, $03                                     ; $6acb: $e8 $03
	nop                                              ; $6acd: $00

jr_011_6ace:
	nop                                              ; $6ace: $00
	sub  b                                           ; $6acf: $90
	ld   bc, $0320                                   ; $6ad0: $01 $20 $03
	or   b                                           ; $6ad3: $b0
	inc  b                                           ; $6ad4: $04
	ld   a, b                                        ; $6ad5: $78
	dec  b                                           ; $6ad6: $05

Call_011_6ad7:
	call ClearOam                                       ; $6ad7: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $6ada: $cd $d3 $2e
	call Call_011_6ae1                               ; $6add: $cd $e1 $6a
	ret                                              ; $6ae0: $c9


Call_011_6ae1:
	ld   bc, $0010                                   ; $6ae1: $01 $10 $00
	ld   a, $0a                                      ; $6ae4: $3e $0a
	ld   [wSpriteGroup], a                                  ; $6ae6: $ea $1a $c2
	ld   a, $59                                      ; $6ae9: $3e $59
	call LoadSpriteFromMainTable                                       ; $6aeb: $cd $16 $0e
	ret                                              ; $6aee: $c9


Call_011_6aef:
	ld   a, [$c8a1]                                  ; $6aef: $fa $a1 $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6af2: $cd $76 $30
	ld   a, $00                                      ; $6af5: $3e $00
	ld   de, $7180                                   ; $6af7: $11 $80 $71
	push af                                          ; $6afa: $f5
	ld   a, $1c                                      ; $6afb: $3e $1c
	ld   [wFarCallAddr], a                                  ; $6afd: $ea $98 $c2
	ld   a, $41                                      ; $6b00: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6b02: $ea $99 $c2
	ld   a, $01                                      ; $6b05: $3e $01
	ld   [wFarCallBank], a                                  ; $6b07: $ea $9a $c2
	pop  af                                          ; $6b0a: $f1
	call FarCall                                       ; $6b0b: $cd $62 $09
	ret                                              ; $6b0e: $c9


Call_011_6b0f:
	ld   hl, $6b17                                   ; $6b0f: $21 $17 $6b
	ld   a, [$c8a0]                                  ; $6b12: $fa $a0 $c8
	jr   jr_011_6b2f                                 ; $6b15: $18 $18

	ld   l, b                                        ; $6b17: $68
	halt                                             ; $6b18: $76

Call_011_6b19:
	ld   hl, $6b2d                                   ; $6b19: $21 $2d $6b
	ld   a, [$cb1d]                                  ; $6b1c: $fa $1d $cb
	or   a                                           ; $6b1f: $b7
	jr   nz, jr_011_6b25                             ; $6b20: $20 $03

	ld   hl, $6b2a                                   ; $6b22: $21 $2a $6b

jr_011_6b25:
	ld   a, [$c89c]                                  ; $6b25: $fa $9c $c8
	jr   jr_011_6b2f                                 ; $6b28: $18 $05

	ld   e, d                                        ; $6b2a: $5a
	ld   l, b                                        ; $6b2b: $68
	halt                                             ; $6b2c: $76
	ld   h, d                                        ; $6b2d: $62
	ld   l, [hl]                                     ; $6b2e: $6e

jr_011_6b2f:
	ld   c, a                                        ; $6b2f: $4f
	ld   b, $00                                      ; $6b30: $06 $00
	add  hl, bc                                      ; $6b32: $09
	ld   c, [hl]                                     ; $6b33: $4e
	ld   b, $4d                                      ; $6b34: $06 $4d
	ld   a, [$c8a1]                                  ; $6b36: $fa $a1 $c8
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6b39: $cd $76 $30
	ld   a, $6c                                      ; $6b3c: $3e $6c
	ld   de, $7180                                   ; $6b3e: $11 $80 $71
	push af                                          ; $6b41: $f5
	ld   a, $03                                      ; $6b42: $3e $03
	ld   [wFarCallAddr], a                                  ; $6b44: $ea $98 $c2
	ld   a, $41                                      ; $6b47: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6b49: $ea $99 $c2
	ld   a, $01                                      ; $6b4c: $3e $01
	ld   [wFarCallBank], a                                  ; $6b4e: $ea $9a $c2
	pop  af                                          ; $6b51: $f1
	call FarCall                                       ; $6b52: $cd $62 $09
	ret                                              ; $6b55: $c9


Call_011_6b56:
	ld   hl, $c89d                                   ; $6b56: $21 $9d $c8
	dec  [hl]                                        ; $6b59: $35
	jr   nz, jr_011_6ba6                             ; $6b5a: $20 $4a

	ld   [hl], $21                                   ; $6b5c: $36 $21
	ld   hl, $c89e                                   ; $6b5e: $21 $9e $c8
	ld   a, [hl]                                     ; $6b61: $7e
	xor  $01                                         ; $6b62: $ee $01
	ld   [hl], a                                     ; $6b64: $77
	or   a                                           ; $6b65: $b7
	jr   nz, jr_011_6b88                             ; $6b66: $20 $20

	ld   c, $80                                      ; $6b68: $0e $80
	ld   de, $9980                                   ; $6b6a: $11 $80 $99
	ld   a, $03                                      ; $6b6d: $3e $03
	ld   hl, $d220                                   ; $6b6f: $21 $20 $d2
	ld   b, $06                                      ; $6b72: $06 $06
	call EnqueueHDMATransfer                                       ; $6b74: $cd $7c $02
	ld   c, $81                                      ; $6b77: $0e $81
	ld   de, $9980                                   ; $6b79: $11 $80 $99
	ld   a, $03                                      ; $6b7c: $3e $03
	ld   hl, $d520                                   ; $6b7e: $21 $20 $d5
	ld   b, $06                                      ; $6b81: $06 $06
	call EnqueueHDMATransfer                                       ; $6b83: $cd $7c $02
	jr   jr_011_6ba6                                 ; $6b86: $18 $1e

jr_011_6b88:
	ld   c, $80                                      ; $6b88: $0e $80
	ld   de, $9980                                   ; $6b8a: $11 $80 $99
	ld   a, $03                                      ; $6b8d: $3e $03
	ld   hl, $d600                                   ; $6b8f: $21 $00 $d6
	ld   b, $06                                      ; $6b92: $06 $06
	call EnqueueHDMATransfer                                       ; $6b94: $cd $7c $02
	ld   c, $81                                      ; $6b97: $0e $81
	ld   de, $9980                                   ; $6b99: $11 $80 $99
	ld   a, $03                                      ; $6b9c: $3e $03
	ld   hl, $d700                                   ; $6b9e: $21 $00 $d7
	ld   b, $06                                      ; $6ba1: $06 $06
	call EnqueueHDMATransfer                                       ; $6ba3: $cd $7c $02

jr_011_6ba6:
	ret                                              ; $6ba6: $c9


Call_011_6ba7:
	ld   a, $21                                      ; $6ba7: $3e $21
	ld   [$c89d], a                                  ; $6ba9: $ea $9d $c8
	xor  a                                           ; $6bac: $af
	ld   [$c89e], a                                  ; $6bad: $ea $9e $c8
	ret                                              ; $6bb0: $c9


DisplayMaria1stPopupBox:
	call Call_011_6b19                               ; $6bb1: $cd $19 $6b
	ld   a, [$cb1d]                                  ; $6bb4: $fa $1d $cb
	or   a                                           ; $6bb7: $b7
	jr   nz, jr_011_6bda                             ; $6bb8: $20 $20

	ld   c, $80                                      ; $6bba: $0e $80
	ld   de, $9960                                   ; $6bbc: $11 $60 $99
	ld   a, $03                                      ; $6bbf: $3e $03
	ld   hl, $d100                                   ; $6bc1: $21 $00 $d1
	ld   b, $0c                                      ; $6bc4: $06 $0c
	call EnqueueHDMATransfer                                       ; $6bc6: $cd $7c $02
	ld   c, $81                                      ; $6bc9: $0e $81
	ld   de, $9960                                   ; $6bcb: $11 $60 $99
	ld   a, $03                                      ; $6bce: $3e $03
	ld   hl, $d400                                   ; $6bd0: $21 $00 $d4
	ld   b, $0c                                      ; $6bd3: $06 $0c
	call EnqueueHDMATransfer                                       ; $6bd5: $cd $7c $02
	jr   jr_011_6bf8                                 ; $6bd8: $18 $1e

jr_011_6bda:
	ld   c, $80                                      ; $6bda: $0e $80
	ld   de, $9960                                   ; $6bdc: $11 $60 $99
	ld   a, $03                                      ; $6bdf: $3e $03
	ld   hl, $d000                                   ; $6be1: $21 $00 $d0
	ld   b, $0c                                      ; $6be4: $06 $0c
	call EnqueueHDMATransfer                                       ; $6be6: $cd $7c $02
	ld   c, $81                                      ; $6be9: $0e $81
	ld   de, $9960                                   ; $6beb: $11 $60 $99
	ld   a, $03                                      ; $6bee: $3e $03
	ld   hl, $d300                                   ; $6bf0: $21 $00 $d3
	ld   b, $0c                                      ; $6bf3: $06 $0c
	call EnqueueHDMATransfer                                       ; $6bf5: $cd $7c $02

jr_011_6bf8:
	ret                                              ; $6bf8: $c9


DisplayMariaDifficultyPopupBox:
	call Call_011_6b0f                               ; $6bf9: $cd $0f $6b
	ld   c, $80                                      ; $6bfc: $0e $80
	ld   de, $9960                                   ; $6bfe: $11 $60 $99
	ld   a, $03                                      ; $6c01: $3e $03
	ld   hl, $d800                                   ; $6c03: $21 $00 $d8
	ld   b, $0c                                      ; $6c06: $06 $0c
	call EnqueueHDMATransfer                                       ; $6c08: $cd $7c $02
	ld   c, $81                                      ; $6c0b: $0e $81
	ld   de, $9960                                   ; $6c0d: $11 $60 $99
	ld   a, $03                                      ; $6c10: $3e $03
	ld   hl, $d900                                   ; $6c12: $21 $00 $d9
	ld   b, $0c                                      ; $6c15: $06 $0c
	call EnqueueHDMATransfer                                       ; $6c17: $cd $7c $02
	ret                                              ; $6c1a: $c9


Call_011_6c1b:
	call Call_011_6aef                               ; $6c1b: $cd $ef $6a
	ld   c, $80                                      ; $6c1e: $0e $80
	ld   de, $9960                                   ; $6c20: $11 $60 $99
	ld   a, $03                                      ; $6c23: $3e $03
	ld   hl, $d200                                   ; $6c25: $21 $00 $d2
	ld   b, $0c                                      ; $6c28: $06 $0c
	call EnqueueHDMATransfer                                       ; $6c2a: $cd $7c $02
	ld   c, $81                                      ; $6c2d: $0e $81
	ld   de, $9960                                   ; $6c2f: $11 $60 $99
	ld   a, $03                                      ; $6c32: $3e $03
	ld   hl, $d500                                   ; $6c34: $21 $00 $d5
	ld   b, $0c                                      ; $6c37: $06 $0c
	call EnqueueHDMATransfer                                       ; $6c39: $cd $7c $02
	ret                                              ; $6c3c: $c9


Call_011_6c3d:
	ld   a, [$c8a6]                                  ; $6c3d: $fa $a6 $c8
	or   a                                           ; $6c40: $b7
	jr   z, jr_011_6c51                              ; $6c41: $28 $0e

	ld   [$c8a9], a                                  ; $6c43: $ea $a9 $c8
	ld   a, [$c8a7]                                  ; $6c46: $fa $a7 $c8
	ld   [$c8a8], a                                  ; $6c49: $ea $a8 $c8
	ld   a, $3c                                      ; $6c4c: $3e $3c
	ld   [$c8aa], a                                  ; $6c4e: $ea $aa $c8

jr_011_6c51:
	ret                                              ; $6c51: $c9


Call_011_6c52:
	ld   hl, $c8aa                                   ; $6c52: $21 $aa $c8
	ld   a, [hl]                                     ; $6c55: $7e
	or   a                                           ; $6c56: $b7
	jr   z, jr_011_6c9e                              ; $6c57: $28 $45

	dec  [hl]                                        ; $6c59: $35
	ld   a, [$c8a9]                                  ; $6c5a: $fa $a9 $c8
	bit  7, a                                        ; $6c5d: $cb $7f
	jr   z, jr_011_6c72                              ; $6c5f: $28 $11

	ld   a, [$c8a8]                                  ; $6c61: $fa $a8 $c8
	call Call_011_6c9f                               ; $6c64: $cd $9f $6c
	ld   a, b                                        ; $6c67: $78
	add  $10                                         ; $6c68: $c6 $10
	ld   b, a                                        ; $6c6a: $47
	ld   a, $09                                      ; $6c6b: $3e $09
	call LoadSpriteFromMainTable                                       ; $6c6d: $cd $16 $0e
	jr   jr_011_6c9e                                 ; $6c70: $18 $2c

jr_011_6c72:
	call ConvertAintoBCD                                       ; $6c72: $cd $7d $0d
	push af                                          ; $6c75: $f5
	ld   a, [$c8a8]                                  ; $6c76: $fa $a8 $c8
	call Call_011_6c9f                               ; $6c79: $cd $9f $6c
	ld   a, b                                        ; $6c7c: $78
	add  $10                                         ; $6c7d: $c6 $10
	ld   b, a                                        ; $6c7f: $47
	pop  af                                          ; $6c80: $f1
	add  $0a                                         ; $6c81: $c6 $0a
	call LoadSpriteFromMainTable                                       ; $6c83: $cd $16 $0e
	ld   a, [$c8a8]                                  ; $6c86: $fa $a8 $c8
	call Call_011_6c9f                               ; $6c89: $cd $9f $6c
	ld   a, b                                        ; $6c8c: $78
	add  $08                                         ; $6c8d: $c6 $08
	ld   b, a                                        ; $6c8f: $47
	pop  af                                          ; $6c90: $f1
	or   a                                           ; $6c91: $b7
	jr   z, jr_011_6c9d                              ; $6c92: $28 $09

	cp   $0a                                         ; $6c94: $fe $0a
	jr   z, jr_011_6c9d                              ; $6c96: $28 $05

	add  $0a                                         ; $6c98: $c6 $0a
	call LoadSpriteFromMainTable                                       ; $6c9a: $cd $16 $0e

jr_011_6c9d:
	pop  af                                          ; $6c9d: $f1

jr_011_6c9e:
	ret                                              ; $6c9e: $c9


Call_011_6c9f:
	call Call_011_65ec                               ; $6c9f: $cd $ec $65
	ld   a, c                                        ; $6ca2: $79
	cp   $08                                         ; $6ca3: $fe $08
	jr   z, jr_011_6cb4                              ; $6ca5: $28 $0d

	ld   a, [$c8aa]                                  ; $6ca7: $fa $aa $c8
	srl  a                                           ; $6caa: $cb $3f
	srl  a                                           ; $6cac: $cb $3f
	sub  $0f                                         ; $6cae: $d6 $0f
	add  c                                           ; $6cb0: $81
	ld   c, a                                        ; $6cb1: $4f
	jr   jr_011_6cc3                                 ; $6cb2: $18 $0f

jr_011_6cb4:
	add  $28                                         ; $6cb4: $c6 $28
	ld   c, a                                        ; $6cb6: $4f
	ld   hl, $c8aa                                   ; $6cb7: $21 $aa $c8
	ld   a, $3c                                      ; $6cba: $3e $3c
	sub  [hl]                                        ; $6cbc: $96
	srl  a                                           ; $6cbd: $cb $3f
	srl  a                                           ; $6cbf: $cb $3f
	add  c                                           ; $6cc1: $81
	ld   c, a                                        ; $6cc2: $4f

jr_011_6cc3:
	ret                                              ; $6cc3: $c9


	call ClearOam                                       ; $6cc4: $cd $d7 $0d
	ld   a, [$c8aa]                                  ; $6cc7: $fa $aa $c8
	or   a                                           ; $6cca: $b7
	jr   z, jr_011_6cd9                              ; $6ccb: $28 $0c

	dec  a                                           ; $6ccd: $3d
	jr   z, jr_011_6ce2                              ; $6cce: $28 $12

	ld   a, $02                                      ; $6cd0: $3e $02
	ld   [wSpriteGroup], a                                  ; $6cd2: $ea $1a $c2
	ld   a, $14                                      ; $6cd5: $3e $14
	jr   jr_011_6ce9                                 ; $6cd7: $18 $10

jr_011_6cd9:
	ld   a, $02                                      ; $6cd9: $3e $02
	ld   [wSpriteGroup], a                                  ; $6cdb: $ea $1a $c2
	ld   a, $05                                      ; $6cde: $3e $05
	jr   jr_011_6ce9                                 ; $6ce0: $18 $07

jr_011_6ce2:
	ld   a, $02                                      ; $6ce2: $3e $02
	ld   [wSpriteGroup], a                                  ; $6ce4: $ea $1a $c2
	ld   a, $04                                      ; $6ce7: $3e $04

jr_011_6ce9:
	ld   b, $68                                      ; $6ce9: $06 $68
	ld   c, $28                                      ; $6ceb: $0e $28
	call LoadSpriteFromMainTable                                       ; $6ced: $cd $16 $0e
	ld   a, [wInGameButtonsPressed]                                  ; $6cf0: $fa $10 $c2
	bit  0, a                                        ; $6cf3: $cb $47
	jr   z, jr_011_6d02                              ; $6cf5: $28 $0b

	ld   hl, $c8aa                                   ; $6cf7: $21 $aa $c8
	inc  [hl]                                        ; $6cfa: $34
	ld   a, [hl]                                     ; $6cfb: $7e
	cp   $03                                         ; $6cfc: $fe $03
	jr   c, jr_011_6d02                              ; $6cfe: $38 $02

	ld   [hl], $00                                   ; $6d00: $36 $00

jr_011_6d02:
	ret                                              ; $6d02: $c9


Call_011_6d03:
	push de                                          ; $6d03: $d5
	ld   a, [$c83d]                                  ; $6d04: $fa $3d $c8
	add  a                                           ; $6d07: $87
	ld   c, a                                        ; $6d08: $4f
	ld   b, $00                                      ; $6d09: $06 $00
	ld   hl, $6d32                                   ; $6d0b: $21 $32 $6d
	add  hl, bc                                      ; $6d0e: $09
	ld   a, [hl+]                                    ; $6d0f: $2a
	ld   e, a                                        ; $6d10: $5f
	ld   d, [hl]                                     ; $6d11: $56

jr_011_6d12:
	ld   a, [de]                                     ; $6d12: $1a
	cp   $ff                                         ; $6d13: $fe $ff
	jr   z, jr_011_6d2a                              ; $6d15: $28 $13

	ld   c, a                                        ; $6d17: $4f
	ld   b, $00                                      ; $6d18: $06 $00
	ld   hl, $c841                                   ; $6d1a: $21 $41 $c8
	add  hl, bc                                      ; $6d1d: $09
	ld   a, [hl]                                     ; $6d1e: $7e
	bit  1, a                                        ; $6d1f: $cb $4f
	jr   z, jr_011_6d27                              ; $6d21: $28 $04

	bit  0, a                                        ; $6d23: $cb $47
	jr   z, jr_011_6d2e                              ; $6d25: $28 $07

jr_011_6d27:
	inc  de                                          ; $6d27: $13
	jr   jr_011_6d12                                 ; $6d28: $18 $e8

jr_011_6d2a:
	or   $ff                                         ; $6d2a: $f6 $ff
	jr   jr_011_6d30                                 ; $6d2c: $18 $02

jr_011_6d2e:
	and  $00                                         ; $6d2e: $e6 $00

jr_011_6d30:
	pop  de                                          ; $6d30: $d1
	ret                                              ; $6d31: $c9


	ld   b, h                                        ; $6d32: $44
	ld   l, l                                        ; $6d33: $6d
	ld   c, [hl]                                     ; $6d34: $4e
	ld   l, l                                        ; $6d35: $6d
	ld   e, b                                        ; $6d36: $58
	ld   l, l                                        ; $6d37: $6d
	ld   h, d                                        ; $6d38: $62
	ld   l, l                                        ; $6d39: $6d
	ld   l, h                                        ; $6d3a: $6c
	ld   l, l                                        ; $6d3b: $6d
	halt                                             ; $6d3c: $76
	ld   l, l                                        ; $6d3d: $6d
	add  b                                           ; $6d3e: $80
	ld   l, l                                        ; $6d3f: $6d
	adc  d                                           ; $6d40: $8a
	ld   l, l                                        ; $6d41: $6d
	sub  h                                           ; $6d42: $94
	ld   l, l                                        ; $6d43: $6d
	nop                                              ; $6d44: $00
	ld   bc, $0302                                   ; $6d45: $01 $02 $03
	inc  b                                           ; $6d48: $04
	dec  b                                           ; $6d49: $05
	ld   b, $07                                      ; $6d4a: $06 $07
	ld   [$01ff], sp                                 ; $6d4c: $08 $ff $01
	inc  b                                           ; $6d4f: $04
	rlca                                             ; $6d50: $07
	ld   [$0306], sp                                 ; $6d51: $08 $06 $03
	nop                                              ; $6d54: $00
	ld   [bc], a                                     ; $6d55: $02
	dec  b                                           ; $6d56: $05
	rst  $38                                         ; $6d57: $ff
	ld   [bc], a                                     ; $6d58: $02
	dec  b                                           ; $6d59: $05
	ld   [$0607], sp                                 ; $6d5a: $08 $07 $06
	inc  bc                                          ; $6d5d: $03
	nop                                              ; $6d5e: $00
	ld   bc, $ff04                                   ; $6d5f: $01 $04 $ff
	inc  bc                                          ; $6d62: $03
	inc  b                                           ; $6d63: $04
	dec  b                                           ; $6d64: $05
	ld   [bc], a                                     ; $6d65: $02
	ld   bc, $0600                                   ; $6d66: $01 $00 $06
	rlca                                             ; $6d69: $07
	ld   [$04ff], sp                                 ; $6d6a: $08 $ff $04
	dec  b                                           ; $6d6d: $05
	inc  bc                                          ; $6d6e: $03
	ld   bc, $0607                                   ; $6d6f: $01 $07 $06
	ld   [$0002], sp                                 ; $6d72: $08 $02 $00
	rst  $38                                         ; $6d75: $ff
	dec  b                                           ; $6d76: $05
	inc  bc                                          ; $6d77: $03
	ld   bc, $0007                                   ; $6d78: $01 $07 $00
	ld   [bc], a                                     ; $6d7b: $02
	ld   [$0406], sp                                 ; $6d7c: $08 $06 $04
	rst  $38                                         ; $6d7f: $ff
	ld   b, $03                                      ; $6d80: $06 $03
	nop                                              ; $6d82: $00
	rlca                                             ; $6d83: $07
	inc  b                                           ; $6d84: $04
	ld   bc, $0508                                   ; $6d85: $01 $08 $05
	ld   [bc], a                                     ; $6d88: $02
	rst  $38                                         ; $6d89: $ff
	rlca                                             ; $6d8a: $07
	inc  b                                           ; $6d8b: $04
	ld   bc, $0200                                   ; $6d8c: $01 $00 $02
	inc  bc                                          ; $6d8f: $03
	dec  b                                           ; $6d90: $05
	ld   b, $08                                      ; $6d91: $06 $08
	rst  $38                                         ; $6d93: $ff
	ld   [$0205], sp                                 ; $6d94: $08 $05 $02
	ld   bc, $0300                                   ; $6d97: $01 $00 $03
	ld   b, $07                                      ; $6d9a: $06 $07
	inc  b                                           ; $6d9c: $04
	rst  $38                                         ; $6d9d: $ff


SetMariaMiniGameTitleScreenState::
	ld   a, h                                        ; $6d9e: $7c
	ld   [$c8ad], a                                  ; $6d9f: $ea $ad $c8
	ld   a, l                                        ; $6da2: $7d
	ld   [$c8ae], a                                  ; $6da3: $ea $ae $c8
	ld   a, GS_MARIA_MINI_GAME_MAIN                                      ; $6da6: $3e $0d
	ld   [wGameState], a                                  ; $6da8: $ea $a0 $c2
	ld   a, $00                                      ; $6dab: $3e $00
	ld   [wGameSubstate], a                                  ; $6dad: $ea $a1 $c2
	ret                                              ; $6db0: $c9


GameState13_DMG::
	ld   a, [wGameSubstate]                                         ; $6db1
	rst  JumpTable                                                  ; $6db4
	dw .substate0_init
	dw .substate1_main
	
.substate0_init:
; Clear display-related vars and hw regs
	call TurnOffLCD                                                 ; $6db9
	call ClearOam                                                   ; $6dbc
	call ClearDisplayRegsAllowVBlankInt                             ; $6dbf
	ld   a, LCDCF_OFF|LCDCF_OBJON|LCDCF_BGON                        ; $6dc2
	ld   [wLCDC], a                                                 ; $6dc4

; Copy to screen, then tile data
	ld   a, BANK(RleXorTileMap_DMG)                                 ; $6dc7
if def(VWF)
	M_FarCall EnDMGScreen
else
	ld   hl, _SCRN0                                                 ; $6dc9
	ld   de, RleXorTileMap_DMG                                      ; $6dcc
	call RLEXorCopy                                                 ; $6dcf

	ld   a, BANK(RleXorGfx_DMG)                                     ; $6dd2
	ld   hl, _VRAM+$800                                             ; $6dd4
	ld   de, RleXorGfx_DMG                                          ; $6dd7
	call RLEXorCopy                                                 ; $6dda
endc

; Clear window and scroll regs, then turn on LCD
	xor  a                                                          ; $6ddd
	ld   [wWY], a                                                   ; $6dde
	ld   [wWX], a                                                   ; $6de1
	ld   [wSCX], a                                                  ; $6de4
	ld   [wSCY], a                                                  ; $6de7
	call TurnOnLCD                                                  ; $6dea

; Fade in by copying to BGP 4 times, waiting 4 frames between copies
	ld   c, $04                                                     ; $6ded
	ld   de, wBGP                                                   ; $6def
	ld   hl, .fadeInBGPs                                            ; $6df2

.nextBGP:
	ld   a, [hl+]                                                   ; $6df5
	ld   [de], a                                                    ; $6df6
	push bc                                                         ; $6df7
	push hl                                                         ; $6df8
	ld   bc, $0004                                                  ; $6df9
	call WaitUntilBCVBlankIntsHandledIfLCDOn                        ; $6dfc
	pop  hl                                                         ; $6dff
	pop  bc                                                         ; $6e00
	dec  c                                                          ; $6e01
	jr   nz, .nextBGP                                               ; $6e02

; Go to main substate
	ld   hl, wGameSubstate                                          ; $6e04
	inc  [hl]                                                       ; $6e07
	ret                                                             ; $6e08

.substate1_main:
	ret                                                             ; $6e09

.fadeInBGPs:
	db %00000000
	db %01000000
	db %10010000
	db %11100100


SetDMGState::
	ld   a, GS_DMG                                                  ; $6e0e
	ld   [wGameState], a                                            ; $6e10
	ld   a, $00                                                     ; $6e13
	ld   [wGameSubstate], a                                         ; $6e15
	ret                                                             ; $6e18


GameState20_GameResults::
	ld   a, [wGameSubstate]                                  ; $6e19: $fa $a1 $c2
	rst  JumpTable                                         ; $6e1c: $df
	dw GameResultsSubstate0
	dw GameResultsSubstate1
	dw GameResultsSubstate2
	dw GameResultsSubstate3
	dw GameResultsSubstate4
	dw GameResultsSubstate5
	dw GameResultsSubstate6
	dw GameResultsSubstate7
	dw GameResultsSubstate8
	dw GameResultsSubstate9
	dw GameResultsSubstateA
	dw GameResultsSubstateB
	dw GameResultsSubstateC
	dw GameResultsSubstateD


GameResultsSubstate3:
	call TurnOffLCD                                       ; $6e39: $cd $e3 $08
	ld   a, $00                                      ; $6e3c: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $6e3e: $cd $e0 $1c
	call Call_011_7ad9                               ; $6e41: $cd $d9 $7a
	ld   a, $ff                                      ; $6e44: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $6e46: $ea $0e $c2
	ld   a, $0c                                      ; $6e49: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $6e4b: $ea $13 $c2
	ld   a, $04                                      ; $6e4e: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $6e50: $ea $14 $c2
	call ClearOam                                       ; $6e53: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $6e56: $cd $59 $0b
	ld   a, $03                                      ; $6e59: $3e $03
	ld   [wLCDC], a                                  ; $6e5b: $ea $03 $c2
	ld   a, $01                                      ; $6e5e: $3e $01
	ldh  [rVBK], a                                   ; $6e60: $e0 $4f
	ld   hl, $8800                                   ; $6e62: $21 $00 $88
	ld   bc, $0400                                   ; $6e65: $01 $00 $04
	call MemClear                                       ; $6e68: $cd $95 $09

;
	ld   a, $1c                                      ; $6e6b: $3e $1c
	ld   de, $6073                                   ; $6e6d: $11 $73 $60
	ld   hl, $9800                                   ; $6e70: $21 $00 $98
	ld   bc, $1415                                   ; $6e73: $01 $15 $14
	call FarCopyLayout                                       ; $6e76: $cd $2c $0b

;
	xor  a                                           ; $6e79: $af
	ldh  [rVBK], a                                   ; $6e7a: $e0 $4f
	ld   a, $1c                                      ; $6e7c: $3e $1c
	ld   hl, $9800                                   ; $6e7e: $21 $00 $98
	call FarCopyLayout                                       ; $6e81: $cd $2c $0b

;
	ld   a, $15                                      ; $6e84: $3e $15
	ld   hl, $8000                                   ; $6e86: $21 $00 $80
	ld   de, $4000                                   ; $6e89: $11 $00 $40
	call RLEXorCopy                                       ; $6e8c: $cd $d2 $09
	ld   hl, $9200                                   ; $6e8f: $21 $00 $92
	ld   bc, $0100                                   ; $6e92: $01 $00 $01
	call Call_011_7acd                               ; $6e95: $cd $cd $7a
	ld   a, [wWramBank]                                  ; $6e98: $fa $93 $c2
	push af                                          ; $6e9b: $f5
	ld   a, $03                                      ; $6e9c: $3e $03
	ld   [wWramBank], a                                  ; $6e9e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6ea1: $e0 $70
	ld   hl, $d000                                   ; $6ea3: $21 $00 $d0
	ld   bc, $0800                                   ; $6ea6: $01 $00 $08
	call Call_011_7acd                               ; $6ea9: $cd $cd $7a
	pop  af                                          ; $6eac: $f1
	ld   [wWramBank], a                                  ; $6ead: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6eb0: $e0 $70
	xor  a                                           ; $6eb2: $af
	ld   [wWX], a                                  ; $6eb3: $ea $09 $c2
	ld   [wWY], a                                  ; $6eb6: $ea $0a $c2
	ld   [wSCX], a                                  ; $6eb9: $ea $07 $c2
	ld   [wSCY], a                                  ; $6ebc: $ea $08 $c2
	ld   [$ca0f], a                                  ; $6ebf: $ea $0f $ca
	ld   [$ca38], a                                  ; $6ec2: $ea $38 $ca
	ld   [$ca39], a                                  ; $6ec5: $ea $39 $ca
	ld   [$ca3b], a                                  ; $6ec8: $ea $3b $ca
	ld   a, $08                                      ; $6ecb: $3e $08
	ld   [$ca11], a                                  ; $6ecd: $ea $11 $ca
	xor  a                                           ; $6ed0: $af
	ld   hl, $ca03                                   ; $6ed1: $21 $03 $ca
	ld   c, $06                                      ; $6ed4: $0e $06

jr_011_6ed6:
	ld   [hl+], a                                    ; $6ed6: $22
	dec  c                                           ; $6ed7: $0d
	jr   nz, jr_011_6ed6                             ; $6ed8: $20 $fc

	ld   hl, $ca09                                   ; $6eda: $21 $09 $ca
	ld   c, $06                                      ; $6edd: $0e $06
	ld   a, $10                                      ; $6edf: $3e $10

jr_011_6ee1:
	ld   [hl+], a                                    ; $6ee1: $22
	dec  c                                           ; $6ee2: $0d
	jr   nz, jr_011_6ee1                             ; $6ee3: $20 $fc

	call Call_011_738d                               ; $6ee5: $cd $8d $73
	call ClearBaseAnimSpriteSpecDetails                                       ; $6ee8: $cd $c9 $2e
	ld   a, $90                                      ; $6eeb: $3e $90
	ld   b, $0a                                      ; $6eed: $06 $0a
	ld   c, $2d                                      ; $6eef: $0e $2d
	ld   de, $0608                                   ; $6ef1: $11 $08 $06
	ld   hl, $9820                                   ; $6ef4: $21 $20 $98
	push af                                          ; $6ef7: $f5
	ld   a, $79                                      ; $6ef8: $3e $79
	ld   [wFarCallAddr], a                                  ; $6efa: $ea $98 $c2
	ld   a, $5b                                      ; $6efd: $3e $5b
	ld   [wFarCallAddr+1], a                                  ; $6eff: $ea $99 $c2
	ld   a, $0c                                      ; $6f02: $3e $0c
	ld   [wFarCallBank], a                                  ; $6f04: $ea $9a $c2
	pop  af                                          ; $6f07: $f1
	call FarCall                                       ; $6f08: $cd $62 $09
	ld   a, $01                                      ; $6f0b: $3e $01
	ld   hl, $0000                                   ; $6f0d: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $6f10: $cd $4b $2f
	ld   [$ca00], a                                  ; $6f13: $ea $00 $ca
	call StartAnimatingAnimatedSpriteSpec                                       ; $6f16: $cd $14 $30
	call Call_011_7986                               ; $6f19: $cd $86 $79
	ld   a, $01                                      ; $6f1c: $3e $01
	ld   hl, $0000                                   ; $6f1e: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $6f21: $cd $4b $2f
	ld   [$c9ff], a                                  ; $6f24: $ea $ff $c9
	call StartAnimatingAnimatedSpriteSpec                                       ; $6f27: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6f2a: $cd $76 $30
	ld   a, $00                                      ; $6f2d: $3e $00
	ld   bc, $a063                                   ; $6f2f: $01 $63 $a0
	ld   de, $7180                                   ; $6f32: $11 $80 $71
	push af                                          ; $6f35: $f5
	ld   a, $03                                      ; $6f36: $3e $03
	ld   [wFarCallAddr], a                                  ; $6f38: $ea $98 $c2
	ld   a, $41                                      ; $6f3b: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6f3d: $ea $99 $c2
	ld   a, $01                                      ; $6f40: $3e $01
	ld   [wFarCallBank], a                                  ; $6f42: $ea $9a $c2
	pop  af                                          ; $6f45: $f1
	call FarCall                                       ; $6f46: $cd $62 $09
	ld   a, $01                                      ; $6f49: $3e $01
	ld   hl, $7000                                   ; $6f4b: $21 $00 $70
	ld   de, wBGPalettes                                   ; $6f4e: $11 $de $c2
	ld   bc, $0080                                   ; $6f51: $01 $80 $00
	call FarMemCopy                                       ; $6f54: $cd $b2 $09
	ld   bc, $003f                                   ; $6f57: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6f5a: $cd $aa $04
	xor  a                                           ; $6f5d: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $6f5e: $ea $62 $c3
	ld   a, $40                                      ; $6f61: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $6f63: $ea $63 $c3
	ld   a, $03                                      ; $6f66: $3e $03
	ld   b, $01                                      ; $6f68: $06 $01
	ld   hl, $7000                                   ; $6f6a: $21 $00 $70
	ld   c, $1e                                      ; $6f6d: $0e $1e
	ld   de, $6d7c                                   ; $6f6f: $11 $7c $6d
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $6f72: $cd $48 $07
	call TurnOnLCD                                       ; $6f75: $cd $09 $09
	ld   a, $0f                                      ; $6f78: $3e $0f
	call PlaySong                                       ; $6f7a: $cd $92 $1a
	ld   a, $07                                      ; $6f7d: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $6f7f: $cd $e0 $1c
	call Call_011_796e                               ; $6f82: $cd $6e $79
	push af                                          ; $6f85: $f5
	ld   a, $43                                      ; $6f86: $3e $43
	ld   [wFarCallAddr], a                                  ; $6f88: $ea $98 $c2
	ld   a, $6a                                      ; $6f8b: $3e $6a
	ld   [wFarCallAddr+1], a                                  ; $6f8d: $ea $99 $c2
	ld   a, $11                                      ; $6f90: $3e $11
	ld   [wFarCallBank], a                                  ; $6f92: $ea $9a $c2
	pop  af                                          ; $6f95: $f1
	call FarCall                                       ; $6f96: $cd $62 $09
	ld   a, $1e                                      ; $6f99: $3e $1e
	ld   hl, $6d7c                                   ; $6f9b: $21 $7c $6d
	ld   de, wBGPalettes                                   ; $6f9e: $11 $de $c2
	ld   bc, $0080                                   ; $6fa1: $01 $80 $00
	call FarMemCopy                                       ; $6fa4: $cd $b2 $09
	ld   bc, $003f                                   ; $6fa7: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6faa: $cd $aa $04
	ld   hl, wGameSubstate                                   ; $6fad: $21 $a1 $c2
	inc  [hl]                                        ; $6fb0: $34
	ret                                              ; $6fb1: $c9


GameResultsSubstate4:
	ld   a, [$ca0f]                                  ; $6fb2: $fa $0f $ca
	ld   c, a                                        ; $6fb5: $4f
	ld   b, $00                                      ; $6fb6: $06 $00
	ld   hl, sSramVals2+SRAM2_STAMINA                                   ; $6fb8: $21 $d0 $af
	add  hl, bc                                      ; $6fbb: $09
	ld   d, h                                        ; $6fbc: $54
	ld   e, l                                        ; $6fbd: $5d
	ld   hl, $ca03                                   ; $6fbe: $21 $03 $ca
	add  hl, bc                                      ; $6fc1: $09
	ld   c, $04                                      ; $6fc2: $0e $04

jr_011_6fc4:
	ld   a, [de]                                     ; $6fc4: $1a
	cp   [hl]                                        ; $6fc5: $be
	jr   z, jr_011_6fd5                              ; $6fc6: $28 $0d

	inc  [hl]                                        ; $6fc8: $34
	ld   a, [wInGameButtonsHeld]                                  ; $6fc9: $fa $0f $c2
	and  $03                                         ; $6fcc: $e6 $03
	jr   z, jr_011_6fec                              ; $6fce: $28 $1c

	dec  c                                           ; $6fd0: $0d
	jr   nz, jr_011_6fc4                             ; $6fd1: $20 $f1

	jr   jr_011_6fec                                 ; $6fd3: $18 $17

jr_011_6fd5:
	ld   hl, $ca0f                                   ; $6fd5: $21 $0f $ca
	inc  [hl]                                        ; $6fd8: $34
	call Call_011_7986                               ; $6fd9: $cd $86 $79
	ld   a, [$ca0f]                                  ; $6fdc: $fa $0f $ca
	cp   $06                                         ; $6fdf: $fe $06
	jr   c, jr_011_6fec                              ; $6fe1: $38 $09

	ld   hl, wGameSubstate                                   ; $6fe3: $21 $a1 $c2
	inc  [hl]                                        ; $6fe6: $34
	ld   a, $6e                                      ; $6fe7: $3e $6e
	call Call_011_7a8d                               ; $6fe9: $cd $8d $7a

jr_011_6fec:
	call ClearOam                                       ; $6fec: $cd $d7 $0d
	call Call_011_796e                               ; $6fef: $cd $6e $79
	call AnimateAllAnimatedSpriteSpecs                                       ; $6ff2: $cd $d3 $2e
	ret                                              ; $6ff5: $c9


GameResultsSubstate6:
	call ClearOam                                       ; $6ff6: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $6ff9: $cd $d3 $2e
	ld   a, [$c9ff]                                  ; $6ffc: $fa $ff $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6fff: $cd $76 $30
	push af                                          ; $7002: $f5
	ld   a, $39                                      ; $7003: $3e $39
	ld   [wFarCallAddr], a                                  ; $7005: $ea $98 $c2
	ld   a, $41                                      ; $7008: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $700a: $ea $99 $c2
	ld   a, $01                                      ; $700d: $3e $01
	ld   [wFarCallBank], a                                  ; $700f: $ea $9a $c2
	pop  af                                          ; $7012: $f1
	call FarCall                                       ; $7013: $cd $62 $09
	ld   a, b                                        ; $7016: $78
	cp   $72                                         ; $7017: $fe $72
	jr   z, jr_011_7033                              ; $7019: $28 $18

	dec  b                                           ; $701b: $05
	dec  b                                           ; $701c: $05
	push af                                          ; $701d: $f5
	ld   a, $2f                                      ; $701e: $3e $2f
	ld   [wFarCallAddr], a                                  ; $7020: $ea $98 $c2
	ld   a, $41                                      ; $7023: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $7025: $ea $99 $c2
	ld   a, $01                                      ; $7028: $3e $01
	ld   [wFarCallBank], a                                  ; $702a: $ea $9a $c2
	pop  af                                          ; $702d: $f1
	call FarCall                                       ; $702e: $cd $62 $09
	jr   jr_011_704d                                 ; $7031: $18 $1a

jr_011_7033:
	ld   a, $4f                                      ; $7033: $3e $4f
	call PlaySoundEffect                                       ; $7035: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $7038: $21 $a1 $c2
	inc  [hl]                                        ; $703b: $34
	xor  a                                           ; $703c: $af
	ld   [$ca13], a                                  ; $703d: $ea $13 $ca
	ld   [$ca14], a                                  ; $7040: $ea $14 $ca
	ld   a, $01                                      ; $7043: $3e $01
	ld   [$ca1a], a                                  ; $7045: $ea $1a $ca
	ld   a, $02                                      ; $7048: $3e $02
	ld   [$ca19], a                                  ; $704a: $ea $19 $ca

jr_011_704d:
	ret                                              ; $704d: $c9


GameResultsSubstate5:
	call ClearOam                                       ; $704e: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $7051: $cd $d3 $2e
	ld   bc, $0008                                   ; $7054: $01 $08 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $7057: $cd $79 $0a
	ld   a, $06                                      ; $705a: $3e $06
	call SafeSetAudVolForMultipleChannels                                       ; $705c: $cd $e0 $1c
	ld   bc, $0008                                   ; $705f: $01 $08 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $7062: $cd $79 $0a
	ld   a, $05                                      ; $7065: $3e $05
	call SafeSetAudVolForMultipleChannels                                       ; $7067: $cd $e0 $1c
	ld   bc, $0008                                   ; $706a: $01 $08 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $706d: $cd $79 $0a
	ld   a, $04                                      ; $7070: $3e $04
	call SafeSetAudVolForMultipleChannels                                       ; $7072: $cd $e0 $1c
	ld   bc, $0008                                   ; $7075: $01 $08 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $7078: $cd $79 $0a
	ld   a, $03                                      ; $707b: $3e $03
	call SafeSetAudVolForMultipleChannels                                       ; $707d: $cd $e0 $1c
	ld   bc, $0008                                   ; $7080: $01 $08 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $7083: $cd $79 $0a
	ld   a, $02                                      ; $7086: $3e $02
	call SafeSetAudVolForMultipleChannels                                       ; $7088: $cd $e0 $1c
	ld   bc, $0008                                   ; $708b: $01 $08 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $708e: $cd $79 $0a
	ld   a, $01                                      ; $7091: $3e $01
	call SafeSetAudVolForMultipleChannels                                       ; $7093: $cd $e0 $1c
	ld   bc, $0008                                   ; $7096: $01 $08 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $7099: $cd $79 $0a
	ld   a, $00                                      ; $709c: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $709e: $cd $e0 $1c
	ld   bc, $0008                                   ; $70a1: $01 $08 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $70a4: $cd $79 $0a
	xor  a                                           ; $70a7: $af
	call PlaySong                                       ; $70a8: $cd $92 $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70ab: $cf
	ld   a, $07                                      ; $70ac: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $70ae: $cd $e0 $1c
	ld   hl, wGameSubstate                                   ; $70b1: $21 $a1 $c2
	inc  [hl]                                        ; $70b4: $34
	ret                                              ; $70b5: $c9


GameResultsSubstate7:
	call ClearOam                                       ; $70b6: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $70b9: $cd $d3 $2e
	call Call_011_7dfb                               ; $70bc: $cd $fb $7d
	call Call_011_70c3                               ; $70bf: $cd $c3 $70
	ret                                              ; $70c2: $c9


Call_011_70c3:
	ld   a, [$ca13]                                  ; $70c3: $fa $13 $ca
	rst  JumpTable                                         ; $70c6: $df
	dw Func_11_7a27
	dw $78eb
	dw $78d1
	dw $78db
	dw $78eb
	dw $78d1
	dw $78db
	dw $78eb
	dw $78d1
	dw $78db
	dw $78eb
	dw $78d1
	dw $78db
	dw $78eb
	dw $78cb
	dw $78db
	dw $7938


GameResultsSubstate8:
	call ClearOam                                       ; $70e9: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $70ec: $cd $d3 $2e
	call Call_011_7dfb                               ; $70ef: $cd $fb $7d
	ld   a, [wWramBank]                                  ; $70f2: $fa $93 $c2
	push af                                          ; $70f5: $f5
	ld   a, $03                                      ; $70f6: $3e $03
	ld   [wWramBank], a                                  ; $70f8: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $70fb: $e0 $70
	ld   a, $1c                                      ; $70fd: $3e $1c
	ld   de, $6073                                   ; $70ff: $11 $73 $60
	ld   hl, $d000                                   ; $7102: $21 $00 $d0
	ld   bc, $1415                                   ; $7105: $01 $15 $14
	call FarCopyLayout                                       ; $7108: $cd $2c $0b
	pop  af                                          ; $710b: $f1
	ld   [wWramBank], a                                  ; $710c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $710f: $e0 $70
	call Call_011_7aad                               ; $7111: $cd $ad $7a
	ld   hl, wGameSubstate                                   ; $7114: $21 $a1 $c2
	inc  [hl]                                        ; $7117: $34
	ld   a, $04                                      ; $7118: $3e $04
	ld   [$ca18], a                                  ; $711a: $ea $18 $ca
	ld   a, $01                                      ; $711d: $3e $01
	ld   [$ca16], a                                  ; $711f: $ea $16 $ca
	ld   hl, $713d                                   ; $7122: $21 $3d $71
	ld   a, [$ca1d]                                  ; $7125: $fa $1d $ca
	cp   $0a                                         ; $7128: $fe $0a
	jr   nz, jr_011_712f                             ; $712a: $20 $03

	ld   hl, $713f                                   ; $712c: $21 $3f $71

jr_011_712f:
	ld   a, [hl+]                                    ; $712f: $2a
	ld   [$ca1b], a                                  ; $7130: $ea $1b $ca
	ld   a, [hl]                                     ; $7133: $7e
	call Call_011_7a8d                               ; $7134: $cd $8d $7a
	ld   a, $4e                                      ; $7137: $3e $4e
	call PlaySoundEffect                                       ; $7139: $cd $df $1a
	ret                                              ; $713c: $c9


	sub  b                                           ; $713d: $90
	ld   [hl], c                                     ; $713e: $71
	add  b                                           ; $713f: $80
	ld   [hl], b                                     ; $7140: $70

Call_011_7141:
	ld   hl, $ca18                                   ; $7141: $21 $18 $ca
	dec  [hl]                                        ; $7144: $35
	jr   nz, jr_011_715b                             ; $7145: $20 $14

	ld   a, $04                                      ; $7147: $3e $04
	ld   [hl], a                                     ; $7149: $77
	ld   hl, $ca16                                   ; $714a: $21 $16 $ca
	ld   a, [hl]                                     ; $714d: $7e
	xor  $01                                         ; $714e: $ee $01
	ld   [hl], a                                     ; $7150: $77
	jr   nz, jr_011_7158                             ; $7151: $20 $05

	call Call_011_7abd                               ; $7153: $cd $bd $7a
	jr   jr_011_715b                                 ; $7156: $18 $03

jr_011_7158:
	call Call_011_7aad                               ; $7158: $cd $ad $7a

jr_011_715b:
	ret                                              ; $715b: $c9


GameResultsSubstate9:
	call ClearOam                                       ; $715c: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $715f: $cd $d3 $2e

jr_011_7162:
	call Call_011_7141                               ; $7162: $cd $41 $71
	ld   hl, $ca1b                                   ; $7165: $21 $1b $ca
	dec  [hl]                                        ; $7168: $35
	jr   nz, jr_011_716f                             ; $7169: $20 $04

	ld   hl, wGameSubstate                                   ; $716b: $21 $a1 $c2
	inc  [hl]                                        ; $716e: $34

jr_011_716f:
	ret                                              ; $716f: $c9


GameResultsSubstateA:
	call ClearOam                                       ; $7170: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $7173: $cd $d3 $2e
	call Call_011_7141                               ; $7176: $cd $41 $71
	ld   a, [$c9ff]                                  ; $7179: $fa $ff $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $717c: $cd $76 $30
	push af                                          ; $717f: $f5
	ld   a, $39                                      ; $7180: $3e $39
	ld   [wFarCallAddr], a                                  ; $7182: $ea $98 $c2
	ld   a, $41                                      ; $7185: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $7187: $ea $99 $c2
	ld   a, $01                                      ; $718a: $3e $01
	ld   [wFarCallBank], a                                  ; $718c: $ea $9a $c2
	pop  af                                          ; $718f: $f1
	call FarCall                                       ; $7190: $cd $62 $09
	ld   a, b                                        ; $7193: $78
	cp   $b0                                         ; $7194: $fe $b0
	jr   z, jr_011_71b0                              ; $7196: $28 $18

	inc  b                                           ; $7198: $04
	inc  b                                           ; $7199: $04
	push af                                          ; $719a: $f5
	ld   a, $2f                                      ; $719b: $3e $2f
	ld   [wFarCallAddr], a                                  ; $719d: $ea $98 $c2
	ld   a, $41                                      ; $71a0: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $71a2: $ea $99 $c2
	ld   a, $01                                      ; $71a5: $3e $01
	ld   [wFarCallBank], a                                  ; $71a7: $ea $9a $c2
	pop  af                                          ; $71aa: $f1
	call FarCall                                       ; $71ab: $cd $62 $09
	jr   jr_011_71bc                                 ; $71ae: $18 $0c

jr_011_71b0:
	call Call_011_7abd                               ; $71b0: $cd $bd $7a
	ld   hl, wGameSubstate                                   ; $71b3: $21 $a1 $c2
	inc  [hl]                                        ; $71b6: $34
	ld   a, $0f                                      ; $71b7: $3e $0f
	call PlaySong                                       ; $71b9: $cd $92 $1a

jr_011_71bc:
	ret                                              ; $71bc: $c9


GameResultsSubstateB:
	call ClearOam                                       ; $71bd: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $71c0: $cd $d3 $2e
	call CheckIfReachedLastKanjiIdxInCurrTextBox                                       ; $71c3: $cd $71 $14
	or   a                                           ; $71c6: $b7
	jr   nz, jr_011_71e2                             ; $71c7: $20 $19

	M_FarCall Func_0a_5b7a

	ld   hl, wGameSubstate                                   ; $71dd: $21 $a1 $c2
	inc  [hl]                                        ; $71e0: $34
	ret                                              ; $71e1: $c9

jr_011_71e2:
	ld   a, [wInGameButtonsHeld]                                  ; $71e2: $fa $0f $c2
	and  $82                                         ; $71e5: $e6 $82
	jr   nz, jr_011_71f0                             ; $71e7: $20 $07

	ld   hl, $ca3a                                   ; $71e9: $21 $3a $ca
	dec  [hl]                                        ; $71ec: $35
	bit  7, [hl]                                     ; $71ed: $cb $7e
	ret  z                                           ; $71ef: $c8

jr_011_71f0:
	ld   a, [sTextSpeedBaseCounter]                                  ; $71f0: $fa $b3 $b1
	ld   [$ca3a], a                                  ; $71f3: $ea $3a $ca
	jp   HDMAEnqueueNextTextBoxKanji                                       ; $71f6: $c3 $55 $10


GameResultsSubstateC:
	call ClearOam                                       ; $71f9: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $71fc: $cd $d3 $2e
	push af                                          ; $71ff: $f5
	ld   a, $aa                                      ; $7200: $3e $aa
	ld   [wFarCallAddr], a                                  ; $7202: $ea $98 $c2
	ld   a, $5b                                      ; $7205: $3e $5b
	ld   [wFarCallAddr+1], a                                  ; $7207: $ea $99 $c2
	ld   a, $0a                                      ; $720a: $3e $0a
	ld   [wFarCallBank], a                                  ; $720c: $ea $9a $c2
	pop  af                                          ; $720f: $f1
	call FarCall                                       ; $7210: $cd $62 $09
	or   a                                           ; $7213: $b7
	jr   nz, jr_011_724d                             ; $7214: $20 $37

	ld   hl, wGameSubstate                                   ; $7216: $21 $a1 $c2
	inc  [hl]                                        ; $7219: $34
	call Call_011_738d                               ; $721a: $cd $8d $73
	jr   nz, jr_011_724d                             ; $721d: $20 $2e

	ld   a, [wWramBank]                                  ; $721f: $fa $93 $c2
	push af                                          ; $7222: $f5
	ld   a, $03                                      ; $7223: $3e $03
	ld   [wWramBank], a                                  ; $7225: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7228: $e0 $70
	ld   hl, $d000                                   ; $722a: $21 $00 $d0
	ld   bc, $0400                                   ; $722d: $01 $00 $04
	call MemClear                                       ; $7230: $cd $95 $09
	ld   c, $81                                      ; $7233: $0e $81
	ld   de, $8800                                   ; $7235: $11 $00 $88
	ld   a, $03                                      ; $7238: $3e $03
	ld   hl, $d000                                   ; $723a: $21 $00 $d0
	ld   b, $40                                      ; $723d: $06 $40
	call EnqueueHDMATransfer                                       ; $723f: $cd $7c $02
	pop  af                                          ; $7242: $f1
	ld   [wWramBank], a                                  ; $7243: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7246: $e0 $70
	ld   a, $0b                                      ; $7248: $3e $0b
	ld   [wGameSubstate], a                                  ; $724a: $ea $a1 $c2

jr_011_724d:
	ret                                              ; $724d: $c9


GameResultsSubstateD:
	xor  a                                           ; $724e: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $724f: $ea $62 $c3
	ld   a, $40                                      ; $7252: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $7254: $ea $63 $c3
	ld   a, $03                                      ; $7257: $3e $03
	ld   b, $1e                                      ; $7259: $06 $1e
	ld   hl, $6d7c                                   ; $725b: $21 $7c $6d
	ld   c, $01                                      ; $725e: $0e $01
	ld   de, $7000                                   ; $7260: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $7263: $cd $48 $07
	push af                                          ; $7266: $f5
	ld   a, $58                                      ; $7267: $3e $58
	ld   [wFarCallAddr], a                                  ; $7269: $ea $98 $c2
	ld   a, $6a                                      ; $726c: $3e $6a
	ld   [wFarCallAddr+1], a                                  ; $726e: $ea $99 $c2
	ld   a, $11                                      ; $7271: $3e $11
	ld   [wFarCallBank], a                                  ; $7273: $ea $9a $c2
	pop  af                                          ; $7276: $f1
	call FarCall                                       ; $7277: $cd $62 $09
	xor  a                                           ; $727a: $af
	call PlaySong                                       ; $727b: $cd $92 $1a
	call TurnOffLCD                                       ; $727e: $cd $e3 $08
	ld   a, [wGameResultsReturnState]                                  ; $7281: $fa $01 $ca
	ld   [wGameState], a                                  ; $7284: $ea $a0 $c2
	ld   a, [wGameResultsReturnSubstate]                                  ; $7287: $fa $02 $ca
	ld   [wGameSubstate], a                                  ; $728a: $ea $a1 $c2
	ret                                              ; $728d: $c9


GameResultsSubstate0:
	call TurnOffLCD                                       ; $728e: $cd $e3 $08
	ld   a, $00                                      ; $7291: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $7293: $cd $e0 $1c
	ld   a, $ff                                      ; $7296: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $7298: $ea $0e $c2
	ld   a, $0c                                      ; $729b: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $729d: $ea $13 $c2
	ld   a, $04                                      ; $72a0: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $72a2: $ea $14 $c2
	call ClearOam                                       ; $72a5: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $72a8: $cd $59 $0b
	ld   a, $03                                      ; $72ab: $3e $03
	ld   [wLCDC], a                                  ; $72ad: $ea $03 $c2

;
	ld   a, $01                                      ; $72b0: $3e $01
	ldh  [rVBK], a                                   ; $72b2: $e0 $4f
	ld   a, $1e                                      ; $72b4: $3e $1e
	ld   hl, $9800                                   ; $72b6: $21 $00 $98
	ld   de, $48c4                                   ; $72b9: $11 $c4 $48
	call RLEXorCopy                                       ; $72bc: $cd $d2 $09

;
	xor  a                                           ; $72bf: $af
	ldh  [rVBK], a                                   ; $72c0: $e0 $4f
	ld   a, $1e                                      ; $72c2: $3e $1e
if def(VWF)
	M_FarCall EndResultsTitleMapAndTileDataHook
else
	ld   hl, $9800                                   ; $72c4: $21 $00 $98
	ld   de, $419e                                   ; $72c7: $11 $9e $41
	call RLEXorCopy                                       ; $72ca: $cd $d2 $09

;
	ld   a, $1a                                      ; $72cd: $3e $1a
	ld   hl, $8800                                   ; $72cf: $21 $00 $88
	ld   de, $67e0                                   ; $72d2: $11 $e0 $67
	call RLEXorCopy                                       ; $72d5: $cd $d2 $09
endc

;
	xor  a                                           ; $72d8: $af
	ld   [wWX], a                                  ; $72d9: $ea $09 $c2
	ld   [wWY], a                                  ; $72dc: $ea $0a $c2
	ld   [wSCX], a                                  ; $72df: $ea $07 $c2
	ld   [wSCY], a                                  ; $72e2: $ea $08 $c2
	call ClearBaseAnimSpriteSpecDetails                                       ; $72e5: $cd $c9 $2e
	ld   a, $01                                      ; $72e8: $3e $01
	ld   hl, $7000                                   ; $72ea: $21 $00 $70
	ld   de, wBGPalettes                                   ; $72ed: $11 $de $c2
	ld   bc, $0080                                   ; $72f0: $01 $80 $00
	call FarMemCopy                                       ; $72f3: $cd $b2 $09
	ld   bc, $003f                                   ; $72f6: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $72f9: $cd $aa $04
	xor  a                                           ; $72fc: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $72fd: $ea $62 $c3
	ld   a, $40                                      ; $7300: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $7302: $ea $63 $c3
	ld   a, $04                                      ; $7305: $3e $04
	ld   b, $01                                      ; $7307: $06 $01
	ld   hl, $7000                                   ; $7309: $21 $00 $70
	ld   c, $1e                                      ; $730c: $0e $1e
	ld   de, $7c4e                                   ; $730e: $11 $4e $7c
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $7311: $cd $48 $07
	call TurnOnLCD                                       ; $7314: $cd $09 $09
	ld   a, $00                                      ; $7317: $3e $00
	call PlaySong                                       ; $7319: $cd $92 $1a
	ld   a, $07                                      ; $731c: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $731e: $cd $e0 $1c
	call Call_011_7959                               ; $7321: $cd $59 $79
	ld   a, $1e                                      ; $7324: $3e $1e
	ld   hl, $7c4e                                   ; $7326: $21 $4e $7c
	ld   de, wBGPalettes                                   ; $7329: $11 $de $c2
	ld   bc, $0080                                   ; $732c: $01 $80 $00
	call FarMemCopy                                       ; $732f: $cd $b2 $09
	ld   bc, $003f                                   ; $7332: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $7335: $cd $aa $04
	ld   hl, wGameSubstate                                   ; $7338: $21 $a1 $c2
	inc  [hl]                                        ; $733b: $34
	ret                                              ; $733c: $c9


GameResultsSubstate1:
	ld   bc, $005a                                   ; $733d: $01 $5a $00

jr_011_7340:
	push bc                                          ; $7340: $c5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7341: $cf
	pop  bc                                          ; $7342: $c1
	dec  bc                                          ; $7343: $0b
	ld   a, b                                        ; $7344: $78
	or   c                                           ; $7345: $b1
	jr   z, jr_011_7354                              ; $7346: $28 $0c

	ld   a, [wInGameButtonsPressed]                                  ; $7348: $fa $10 $c2
	and  $03                                         ; $734b: $e6 $03
	jr   z, jr_011_7340                              ; $734d: $28 $f1

	ld   a, $21                                      ; $734f: $3e $21
	call PlaySoundEffect                                       ; $7351: $cd $df $1a

jr_011_7354:
	ld   hl, wGameSubstate                                   ; $7354: $21 $a1 $c2
	inc  [hl]                                        ; $7357: $34
	ret                                              ; $7358: $c9


GameResultsSubstate2:
	xor  a                                           ; $7359: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $735a: $ea $62 $c3
	ld   a, $40                                      ; $735d: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $735f: $ea $63 $c3
	ld   a, $03                                      ; $7362: $3e $03
	ld   b, $1e                                      ; $7364: $06 $1e
	ld   hl, $7c4e                                   ; $7366: $21 $4e $7c
	ld   c, $01                                      ; $7369: $0e $01
	ld   de, $7000                                   ; $736b: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $736e: $cd $48 $07
	push af                                          ; $7371: $f5
	ld   a, $58                                      ; $7372: $3e $58
	ld   [wFarCallAddr], a                                  ; $7374: $ea $98 $c2
	ld   a, $6a                                      ; $7377: $3e $6a
	ld   [wFarCallAddr+1], a                                  ; $7379: $ea $99 $c2
	ld   a, $11                                      ; $737c: $3e $11
	ld   [wFarCallBank], a                                  ; $737e: $ea $9a $c2
	pop  af                                          ; $7381: $f1
	call FarCall                                       ; $7382: $cd $62 $09
	call TurnOffLCD                                       ; $7385: $cd $e3 $08
	ld   hl, wGameSubstate                                   ; $7388: $21 $a1 $c2
	inc  [hl]                                        ; $738b: $34
	ret                                              ; $738c: $c9


Call_011_738d:
	call InitWideTextBoxDimensions                                       ; $738d: $cd $ec $0f
	call ClearTextBoxDimensionsAndSetDefaultTextStyle                                       ; $7390: $cd $09 $14
	ld   bc, $1002                                   ; $7393: $01 $02 $10
	call SetKanjiTextBoxDimensions                                       ; $7396: $cd $24 $14
	ld   bc, $0000                                   ; $7399: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $739c: $cd $34 $14
	xor  a                                           ; $739f: $af
	ld   [$ca3a], a                                  ; $73a0: $ea $3a $ca

;
	ld   a, [$ca1d]                                  ; $73a3: $fa $1d $ca
	add  a                                           ; $73a6: $87
	ld   c, a                                        ; $73a7: $4f
	ld   b, $00                                      ; $73a8: $06 $00
	ld   hl, .table                                   ; $73aa: $21 $d7 $73
	add  hl, bc                                      ; $73ad: $09

;
	ld   a, [hl+]                                    ; $73ae: $2a
	ld   b, [hl]                                     ; $73af: $46
	ld   c, a                                        ; $73b0: $4f

;
	ld   hl, $ca3b                                   ; $73b1: $21 $3b $ca
	ld   a, [hl]                                     ; $73b4: $7e
	inc  [hl]                                        ; $73b5: $34
	ld   l, a                                        ; $73b6: $6f
	ld   h, $00                                      ; $73b7: $26 $00
	add  hl, bc                                      ; $73b9: $09
	ld   a, [hl]                                     ; $73ba: $7e
	cp   $ff                                         ; $73bb: $fe $ff
	jr   z, .orFFh                              ; $73bd: $28 $15

if def(VWF)
	M_FarCall PopulateCreditRankingsText
	ret
else
	add  a                                           ; $73bf: $87
	ld   l, a                                        ; $73c0: $6f
	ld   h, $00                                      ; $73c1: $26 $00
	ld   bc, $7422                                   ; $73c3: $01 $22 $74
	add  hl, bc                                      ; $73c6: $09
	ld   a, [hl+]                                    ; $73c7: $2a
	ld   h, [hl]                                     ; $73c8: $66
	ld   l, a                                        ; $73c9: $6f
	ld   bc, $7422                                   ; $73ca: $01 $22 $74
	add  hl, bc                                      ; $73cd: $09
	call PopulateKanjiConvoStructForCurrTextBox                                       ; $73ce: $cd $27 $10
	xor  a                                           ; $73d1: $af
	jr   .done                                 ; $73d2: $18 $02
endc

.orFFh:
	or   $ff                                         ; $73d4: $f6 $ff

.done:
	ret                                              ; $73d6: $c9

.table:
	dw .entry0
	dw .entry1
	dw .entry2
	dw .entry3
	dw .entry4
	dw .entry5
	dw .entry6
	dw .entry7
	dw .entry8
	dw .entry9
	dw .entryA
	dw .entryB
	dw .entryC
	dw .entryD
	dw .entryE

if def(VWF)

.entry0:
	db $00, $1e, $01, $ff
	
.entry1:
	db $02, $1f, $03, $20, $ff

.entry2:
	db $0a, $27, $0b, $28, $ff

.entry3:
	db $04, $21, $05, $22, $ff

.entry4:
	db $08, $25, $09, $26, $ff

.entry5:
	db $06, $23, $07, $24, $ff

.entry6:
	db $0c, $29, $0d, $2a, $ff

.entry7:
	db $0e, $2b, $0f, $2c, $ff

.entry8:
	db $10, $2d, $11, $2e, $ff

.entry9:
	db $12, $13, $2f, $30, $ff

.entryA:
	db $1c, $36, $1d, $37, $ff

.entryB:
	db $14, $31, $15, $ff

.entryC:
	db $16, $32, $17, $ff

.entryD:
	db $18, $19, $33, $ff

.entryE:
	db $1a, $34, $1b, $35, $ff

	ds $78cb-@, 0

else

.entry0:
	db $00, $01, $ff
	
.entry1:
	db $02, $03, $ff

.entry2:
	db $0a, $0b, $ff

.entry3:
	db $04, $05, $ff

.entry4:
	db $08, $09, $ff

.entry5:
	db $06, $07, $ff

.entry6:
	db $0c, $0d, $ff

.entry7:
	db $0e, $0f, $ff

.entry8:
	db $10, $11, $ff

.entry9:
	db $12, $13, $ff

.entryA:
	db $1c, $1d, $ff

.entryB:
	db $14, $15, $ff

.entryC:
	db $16, $17, $ff

.entryD:
	db $18, $19, $ff

.entryE:
	db $1a, $1b, $ff

;
	inc  a                                           ; $7422: $3c
	nop                                              ; $7423: $00
	ld   h, b                                        ; $7424: $60
	nop                                              ; $7425: $00
	adc  c                                           ; $7426: $89
	nop                                              ; $7427: $00
	or   b                                           ; $7428: $b0
	nop                                              ; $7429: $00
	call nc, $fd00                                   ; $742a: $d4 $00 $fd
	nop                                              ; $742d: $00
	ld   hl, $4d01                                   ; $742e: $21 $01 $4d
	ld   bc, $0170                                   ; $7431: $01 $70 $01
	sub  h                                           ; $7434: $94
	ld   bc, $01b5                                   ; $7435: $01 $b5 $01
	jp   c, $fe01                                    ; $7438: $da $01 $fe

	ld   bc, $0223                                   ; $743b: $01 $23 $02
	ld   b, a                                        ; $743e: $47
	ld   [bc], a                                     ; $743f: $02
	ld   [hl], b                                     ; $7440: $70
	ld   [bc], a                                     ; $7441: $02
	sub  b                                           ; $7442: $90
	ld   [bc], a                                     ; $7443: $02
	or   h                                           ; $7444: $b4
	ld   [bc], a                                     ; $7445: $02
	pop  hl                                          ; $7446: $e1
	ld   [bc], a                                     ; $7447: $02
	rst  $38                                         ; $7448: $ff
	ld   [bc], a                                     ; $7449: $02
	ld   h, $03                                      ; $744a: $26 $03
	ld   d, c                                        ; $744c: $51
	inc  bc                                          ; $744d: $03
	ld   a, d                                        ; $744e: $7a
	inc  bc                                          ; $744f: $03
	and  e                                           ; $7450: $a3
	inc  bc                                          ; $7451: $03
	call $ed03                                       ; $7452: $cd $03 $ed
	inc  bc                                          ; $7455: $03
	add  hl, de                                      ; $7456: $19
	inc  b                                           ; $7457: $04
	dec  sp                                          ; $7458: $3b
	inc  b                                           ; $7459: $04
	ld   e, b                                        ; $745a: $58
	inc  b                                           ; $745b: $04
	add  c                                           ; $745c: $81
	inc  b                                           ; $745d: $04
	ld   e, b                                        ; $745e: $58
	adc  a                                           ; $745f: $8f
	ld   [hl], l                                     ; $7460: $75
	halt                                             ; $7461: $76
	ld   d, h                                        ; $7462: $54
	ld   a, [$7850]                                  ; $7463: $fa $50 $78
	ld   l, l                                        ; $7466: $6d
	ld   a, l                                        ; $7467: $7d
	adc  l                                           ; $7468: $8d
	ld   h, d                                        ; $7469: $62
	halt                                             ; $746a: $76
	dec  c                                           ; $746b: $0d
	ld   [bc], a                                     ; $746c: $02
	sbc  b                                           ; $746d: $98
	inc  bc                                          ; $746e: $03
	nop                                              ; $746f: $00
	inc  b                                           ; $7470: $04
	ld   a, [bc]                                     ; $7471: $0a
	inc  bc                                          ; $7472: $03
	jp   nc, $8d02                                   ; $7473: $d2 $02 $8d

	inc  b                                           ; $7476: $04
	adc  e                                           ; $7477: $8b
	ld   a, c                                        ; $7478: $79
	inc  bc                                          ; $7479: $03
	ld   sp, $9a7e                                   ; $747a: $31 $7e $9a
	adc  h                                           ; $747d: $8c
	ld   h, l                                        ; $747e: $65
	ld   l, l                                        ; $747f: $6d
	ld   a, [$0200]                                  ; $7480: $fa $00 $02
	ld   hl, sp+$05                                  ; $7483: $f8 $05
	inc  bc                                          ; $7485: $03
	ld   [hl], l                                     ; $7486: $75
	ld   e, e                                        ; $7487: $5b
	sbc  c                                           ; $7488: $99
	inc  b                                           ; $7489: $04
	ld   b, c                                        ; $748a: $41
	ld   [bc], a                                     ; $748b: $02
	xor  c                                           ; $748c: $a9
	ld   l, l                                        ; $748d: $6d
	ld   l, a                                        ; $748e: $6f
	ld   e, d                                        ; $748f: $5a
	sbc  [hl]                                        ; $7490: $9e
	ld   d, b                                        ; $7491: $50
	ld   a, b                                        ; $7492: $78
	ld   l, l                                        ; $7493: $6d
	and  b                                           ; $7494: $a0
	dec  c                                           ; $7495: $0d
	inc  b                                           ; $7496: $04
	ld   a, [bc]                                     ; $7497: $0a
	inc  bc                                          ; $7498: $03
	jp   nc, $0276                                   ; $7499: $d2 $76 $02

	ld   a, b                                        ; $749c: $78
	add  a                                           ; $749d: $87
	sbc  c                                           ; $749e: $99
	inc  b                                           ; $749f: $04
	xor  d                                           ; $74a0: $aa
	and  b                                           ; $74a1: $a0
	inc  b                                           ; $74a2: $04
	rla                                              ; $74a3: $17
	ld   [hl], c                                     ; $74a4: $71
	ld   [hl], h                                     ; $74a5: $74
	ld   d, d                                        ; $74a6: $52
	adc  h                                           ; $74a7: $8c
	ld   h, a                                        ; $74a8: $67
	ld   a, [$5800]                                  ; $74a9: $fa $00 $58
	adc  a                                           ; $74ac: $8f
	ld   [hl], l                                     ; $74ad: $75
	halt                                             ; $74ae: $76
	ld   d, h                                        ; $74af: $54
	ld   a, [$7850]                                  ; $74b0: $fa $50 $78
	ld   l, l                                        ; $74b3: $6d
	ld   a, h                                        ; $74b4: $7c
	inc  b                                           ; $74b5: $04
	ld   b, e                                        ; $74b6: $43
	dec  b                                           ; $74b7: $05
	ld   a, [bc]                                     ; $74b8: $0a
	ld   a, b                                        ; $74b9: $78
	sub  a                                           ; $74ba: $97
	ld   a, [hl]                                     ; $74bb: $7e
	dec  c                                           ; $74bc: $0d
	ld   [bc], a                                     ; $74bd: $02
	sbc  b                                           ; $74be: $98
	inc  bc                                          ; $74bf: $03
	nop                                              ; $74c0: $00
	inc  b                                           ; $74c1: $04
	ld   a, [bc]                                     ; $74c2: $0a
	ld   [bc], a                                     ; $74c3: $02
	nop                                              ; $74c4: $00
	ld   a, c                                        ; $74c5: $79
	ld   a, b                                        ; $74c6: $78
	sbc  c                                           ; $74c7: $99
	ld   a, h                                        ; $74c8: $7c
	sub  b                                           ; $74c9: $90
	inc  b                                           ; $74ca: $04
	cp   [hl]                                        ; $74cb: $be
	ld   h, [hl]                                     ; $74cc: $66
	sub  c                                           ; $74cd: $91
	ld   a, b                                        ; $74ce: $78
	ld   d, d                                        ; $74cf: $52
	ld   a, [$5200]                                  ; $74d0: $fa $00 $52
	ld   [hl], d                                     ; $74d3: $72
	ld   a, h                                        ; $74d4: $7c
	inc  b                                           ; $74d5: $04

jr_011_74d6:
	xor  d                                           ; $74d6: $aa
	ld   e, c                                        ; $74d7: $59
	sbc  [hl]                                        ; $74d8: $9e
	inc  b                                           ; $74d9: $04
	ld   [$2f04], sp                                 ; $74da: $08 $04 $2f
	and  b                                           ; $74dd: $a0
	inc  bc                                          ; $74de: $03
	sub  e                                           ; $74df: $93
	sbc  c                                           ; $74e0: $99
	ld   l, l                                        ; $74e1: $6d
	adc  a                                           ; $74e2: $8f
	ld   a, c                                        ; $74e3: $79
	dec  c                                           ; $74e4: $0d
	inc  bc                                          ; $74e5: $03
	xor  b                                           ; $74e6: $a8
	ld   d, h                                        ; $74e7: $54
	inc  b                                           ; $74e8: $04
	xor  d                                           ; $74e9: $aa
	ld   e, d                                        ; $74ea: $5a
	ld   e, l                                        ; $74eb: $5d
	sbc  c                                           ; $74ec: $99
	ld   e, c                                        ; $74ed: $59
	sub  b                                           ; $74ee: $90
	ld   h, l                                        ; $74ef: $65
	sbc  d                                           ; $74f0: $9a
	adc  h                                           ; $74f1: $8c
	ld   l, c                                        ; $74f2: $69
	and  c                                           ; $74f3: $a1
	ld   a, [$5800]                                  ; $74f4: $fa $00 $58
	adc  a                                           ; $74f7: $8f
	ld   [hl], l                                     ; $74f8: $75
	halt                                             ; $74f9: $76
	ld   d, h                                        ; $74fa: $54
	ld   a, [$7850]                                  ; $74fb: $fa $50 $78
	ld   l, l                                        ; $74fe: $6d
	ld   a, h                                        ; $74ff: $7c
	ld   [bc], a                                     ; $7500: $02
	and  c                                           ; $7501: $a1
	dec  b                                           ; $7502: $05
	ld   a, [bc]                                     ; $7503: $0a
	ld   e, d                                        ; $7504: $5a
	ld   d, b                                        ; $7505: $50
	sbc  d                                           ; $7506: $9a
	ld   a, [hl]                                     ; $7507: $7e
	dec  c                                           ; $7508: $0d
	inc  bc                                          ; $7509: $03
	inc  bc                                          ; $750a: $03
	inc  bc                                          ; $750b: $03
	nop                                              ; $750c: $00
	inc  b                                           ; $750d: $04
	ld   a, [bc]                                     ; $750e: $0a
	ld   [bc], a                                     ; $750f: $02
	nop                                              ; $7510: $00
	ld   a, c                                        ; $7511: $79
	ld   a, b                                        ; $7512: $78
	sbc  c                                           ; $7513: $99
	ld   h, c                                        ; $7514: $61
	halt                                             ; $7515: $76
	sub  b                                           ; $7516: $90
	inc  b                                           ; $7517: $04
	cp   [hl]                                        ; $7518: $be
	ld   h, [hl]                                     ; $7519: $66
	sub  c                                           ; $751a: $91
	ld   a, b                                        ; $751b: $78
	ld   d, d                                        ; $751c: $52
	ld   a, [$7700]                                  ; $751d: $fa $00 $77
	and  c                                           ; $7520: $a1
	ld   a, b                                        ; $7521: $78
	ld   a, c                                        ; $7522: $79
	ld   e, e                                        ; $7523: $5b
	add  c                                           ; $7524: $81
	ld   h, l                                        ; $7525: $65
	ld   d, d                                        ; $7526: $52
	dec  b                                           ; $7527: $05
	pop  hl                                          ; $7528: $e1
	dec  b                                           ; $7529: $05
	add  e                                           ; $752a: $83
	ld   [hl], l                                     ; $752b: $75
	sub  b                                           ; $752c: $90
	dec  c                                           ; $752d: $0d
	ld   e, e                                        ; $752e: $5b
	ld   [hl], c                                     ; $752f: $71
	halt                                             ; $7530: $76
	inc  bc                                          ; $7531: $03
	ld   c, [hl]                                     ; $7532: $4e
	dec  b                                           ; $7533: $05
	ld   b, $a0                                      ; $7534: $06 $a0
	inc  bc                                          ; $7536: $03
	ld   c, [hl]                                     ; $7537: $4e
	ld   l, a                                        ; $7538: $6f
	inc  bc                                          ; $7539: $03
	jr   jr_011_74d6                                 ; $753a: $18 $9a

	sbc  c                                           ; $753c: $99
	ld   [hl], l                                     ; $753d: $75
	ld   h, l                                        ; $753e: $65
	sub  l                                           ; $753f: $95
	ld   d, h                                        ; $7540: $54
	ld   a, [$5800]                                  ; $7541: $fa $00 $58
	adc  a                                           ; $7544: $8f
	ld   [hl], l                                     ; $7545: $75
	halt                                             ; $7546: $76
	ld   d, h                                        ; $7547: $54
	ld   a, [$7c6b]                                  ; $7548: $fa $6b $7c
	inc  bc                                          ; $754b: $03
	ld   h, d                                        ; $754c: $62
	inc  b                                           ; $754d: $04
	dec  bc                                          ; $754e: $0b
	dec  b                                           ; $754f: $05
	ld   a, [bc]                                     ; $7550: $0a
	halt                                             ; $7551: $76
	inc  b                                           ; $7552: $04
	ld   h, e                                        ; $7553: $63
	inc  b                                           ; $7554: $04
	inc  h                                           ; $7555: $24
	dec  b                                           ; $7556: $05
	ld   a, [bc]                                     ; $7557: $0a
	ld   a, l                                        ; $7558: $7d
	dec  c                                           ; $7559: $0d
	inc  b                                           ; $755a: $04

Jump_011_755b:
	ld   [hl], a                                     ; $755b: $77
	inc  bc                                          ; $755c: $03
	nop                                              ; $755d: $00
	inc  b                                           ; $755e: $04
	ld   a, [bc]                                     ; $755f: $0a
	ld   [bc], a                                     ; $7560: $02
	nop                                              ; $7561: $00
	ld   a, h                                        ; $7562: $7c
	inc  bc                                          ; $7563: $03
	and  [hl]                                        ; $7564: $a6
	inc  bc                                          ; $7565: $03
	dec  d                                           ; $7566: $15
	dec  b                                           ; $7567: $05
	cp   h                                           ; $7568: $bc
	inc  b                                           ; $7569: $04
	sbc  [hl]                                        ; $756a: $9e
	ld   [hl], l                                     ; $756b: $75
	ld   h, a                                        ; $756c: $67
	ld   a, [$5000]                                  ; $756d: $fa $00 $50
	ld   a, b                                        ; $7570: $78
	ld   l, l                                        ; $7571: $6d
	ld   a, b                                        ; $7572: $78
	sub  a                                           ; $7573: $97
	sbc  [hl]                                        ; $7574: $9e
	dec  b                                           ; $7575: $05
	and  l                                           ; $7576: $a5
	inc  b                                           ; $7577: $04
	sub  l                                           ; $7578: $95
	inc  b                                           ; $7579: $04
	ld   a, [bc]                                     ; $757a: $0a
	add  [hl]                                        ; $757b: $86
	ld   a, h                                        ; $757c: $7c
	inc  b                                           ; $757d: $04
	jr   nz, jr_011_7582                             ; $757e: $20 $02

	sbc  a                                           ; $7580: $9f
	ld   a, b                                        ; $7581: $78

jr_011_7582:
	dec  c                                           ; $7582: $0d
	or   [hl]                                        ; $7583: $b6
	sbc  $fb                                         ; $7584: $de $fb
	ret                                              ; $7586: $c9


	ld   e, d                                        ; $7587: $5a
	ld   [bc], a                                     ; $7588: $02
	pop  bc                                          ; $7589: $c1
	inc  b                                           ; $758a: $04
	rla                                              ; $758b: $17
	ld   [hl], l                                     ; $758c: $75
	ld   e, e                                        ; $758d: $5b
	adc  h                                           ; $758e: $8c
	ld   h, a                                        ; $758f: $67
	ld   a, [$5800]                                  ; $7590: $fa $00 $58
	adc  a                                           ; $7593: $8f
	ld   [hl], l                                     ; $7594: $75
	halt                                             ; $7595: $76
	ld   d, h                                        ; $7596: $54
	ld   a, [$7850]                                  ; $7597: $fa $50 $78
	ld   l, l                                        ; $759a: $6d
	ld   a, h                                        ; $759b: $7c
	inc  bc                                          ; $759c: $03
	and  [hl]                                        ; $759d: $a6
	inc  bc                                          ; $759e: $03
	ld   [hl], b                                     ; $759f: $70
	ld   h, e                                        ; $75a0: $63
	ld   a, b                                        ; $75a1: $78
	sub  a                                           ; $75a2: $97
	dec  c                                           ; $75a3: $0d
	ld   [bc], a                                     ; $75a4: $02
	sbc  e                                           ; $75a5: $9b
	inc  bc                                          ; $75a6: $03
	nop                                              ; $75a7: $00
	ld   a, c                                        ; $75a8: $79
	inc  b                                           ; $75a9: $04
	ld   b, l                                        ; $75aa: $45
	inc  b                                           ; $75ab: $04
	ld   a, [bc]                                     ; $75ac: $0a
	sub  b                                           ; $75ad: $90
	inc  b                                           ; $75ae: $04
	cp   [hl]                                        ; $75af: $be
	ld   h, [hl]                                     ; $75b0: $66
	sub  c                                           ; $75b1: $91
	ld   a, b                                        ; $75b2: $78
	ld   d, d                                        ; $75b3: $52
	ld   a, [$0400]                                  ; $75b4: $fa $00 $04
	xor  d                                           ; $75b7: $aa
	ld   h, d                                        ; $75b8: $62
	sbc  e                                           ; $75b9: $9b
	inc  bc                                          ; $75ba: $03
	ld   h, d                                        ; $75bb: $62
	adc  a                                           ; $75bc: $8f
	ld   l, l                                        ; $75bd: $6d
	inc  bc                                          ; $75be: $03
	or   d                                           ; $75bf: $b2
	inc  b                                           ; $75c0: $04
	ld   l, a                                        ; $75c1: $6f
	ld   [hl], l                                     ; $75c2: $75
	dec  c                                           ; $75c3: $0d
	inc  bc                                          ; $75c4: $03
	xor  b                                           ; $75c5: $a8
	ld   d, d                                        ; $75c6: $52
	and  b                                           ; $75c7: $a0
	inc  b                                           ; $75c8: $04
	ldh  [c], a                                      ; $75c9: $e2
	dec  b                                           ; $75ca: $05
	ld   b, $78                                      ; $75cb: $06 $78
	sub  b                                           ; $75cd: $90
	ld   a, h                                        ; $75ce: $7c
	ld   a, c                                        ; $75cf: $79
	ld   h, l                                        ; $75d0: $65
	adc  h                                           ; $75d1: $8c
	ld   h, l                                        ; $75d2: $65
	sub  l                                           ; $75d3: $95
	ld   d, h                                        ; $75d4: $54
	ld   a, [$5800]                                  ; $75d5: $fa $00 $58
	adc  a                                           ; $75d8: $8f
	ld   [hl], l                                     ; $75d9: $75
	halt                                             ; $75da: $76
	ld   d, h                                        ; $75db: $54
	ld   a, [$7850]                                  ; $75dc: $fa $50 $78
	ld   l, l                                        ; $75df: $6d
	ld   a, h                                        ; $75e0: $7c
	ld   h, a                                        ; $75e1: $67
	ld   a, [hl]                                     ; $75e2: $7e
	sub  a                                           ; $75e3: $97
	ld   h, l                                        ; $75e4: $65
	ld   d, d                                        ; $75e5: $52
	dec  c                                           ; $75e6: $0d
	dec  b                                           ; $75e7: $05
	add  hl, bc                                      ; $75e8: $09
	dec  b                                           ; $75e9: $05
	ld   a, [bc]                                     ; $75ea: $0a
	ld   a, l                                        ; $75eb: $7d
	sbc  [hl]                                        ; $75ec: $9e
	adc  h                                           ; $75ed: $8c
	ld   h, e                                        ; $75ee: $63
	ld   a, c                                        ; $75ef: $79
	inc  b                                           ; $75f0: $04
	cp   [hl]                                        ; $75f1: $be
	inc  bc                                          ; $75f2: $03
	nop                                              ; $75f3: $00
	ld   a, c                                        ; $75f4: $79
	ld   d, h                                        ; $75f5: $54
	ld   [hl], c                                     ; $75f6: $71
	ld   [hl], h                                     ; $75f7: $74
	ld   [hl], d                                     ; $75f8: $72
	ld   e, a                                        ; $75f9: $5f
	ld   a, [$0200]                                  ; $75fa: $fa $00 $02
	jr   nz, jr_011_7604                             ; $75fd: $20 $05

	inc  d                                           ; $75ff: $14
	ld   a, h                                        ; $7600: $7c
	dec  b                                           ; $7601: $05
	add  hl, bc                                      ; $7602: $09
	dec  b                                           ; $7603: $05

jr_011_7604:
	ld   a, [bc]                                     ; $7604: $0a
	inc  bc                                          ; $7605: $03
	or   b                                           ; $7606: $b0
	halt                                             ; $7607: $76
	ld   h, l                                        ; $7608: $65
	ld   [hl], h                                     ; $7609: $74
	sbc  [hl]                                        ; $760a: $9e
	dec  c                                           ; $760b: $0d
	ld   [bc], a                                     ; $760c: $02
	sbc  b                                           ; $760d: $98
	inc  bc                                          ; $760e: $03
	nop                                              ; $760f: $00
	and  b                                           ; $7610: $a0
	or   [hl]                                        ; $7611: $b6
	sbc  $fb                                         ; $7612: $de $fb
	ret                                              ; $7614: $c9


	ld   h, a                                        ; $7615: $67
	sbc  c                                           ; $7616: $99
	inc  b                                           ; $7617: $04
	xor  d                                           ; $7618: $aa
	ld   e, d                                        ; $7619: $5a
	ld   e, l                                        ; $761a: $5d
	sbc  c                                           ; $761b: $99
	ld   e, c                                        ; $761c: $59
	sub  b                                           ; $761d: $90
	ld   a, [$5800]                                  ; $761e: $fa $00 $58
	adc  a                                           ; $7621: $8f
	ld   [hl], l                                     ; $7622: $75
	halt                                             ; $7623: $76
	ld   d, h                                        ; $7624: $54
	ld   a, [$7850]                                  ; $7625: $fa $50 $78
	ld   l, l                                        ; $7628: $6d
	ld   a, h                                        ; $7629: $7c
	inc  b                                           ; $762a: $04
	rst  $30                                         ; $762b: $f7
	inc  bc                                          ; $762c: $03
	xor  e                                           ; $762d: $ab
	ld   a, b                                        ; $762e: $78
	inc  bc                                          ; $762f: $03
	ret  c                                           ; $7630: $d8

	ld   b, $53                                      ; $7631: $06 $53
	ld   a, l                                        ; $7633: $7d
	dec  c                                           ; $7634: $0d
	adc  h                                           ; $7635: $8c
	ld   h, e                                        ; $7636: $63
	ld   a, c                                        ; $7637: $79
	ld   [bc], a                                     ; $7638: $02
	add  h                                           ; $7639: $84
	ld   [bc], a                                     ; $763a: $02
	and  d                                           ; $763b: $a2
	inc  bc                                          ; $763c: $03
	or   b                                           ; $763d: $b0
	ld   [bc], a                                     ; $763e: $02
	jp   nc, Jump_011_755b                           ; $763f: $d2 $5b $75

	ld   h, a                                        ; $7642: $67
	ld   a, [$0200]                                  ; $7643: $fa $00 $02
	jr   c, jr_011_764c                              ; $7646: $38 $04

	ld   d, d                                        ; $7648: $52
	sub  d                                           ; $7649: $92
	inc  bc                                          ; $764a: $03
	ld   d, c                                        ; $764b: $51

jr_011_764c:
	ld   [bc], a                                     ; $764c: $02
	ld   a, [hl]                                     ; $764d: $7e
	inc  b                                           ; $764e: $04
	ret  z                                           ; $764f: $c8

	ld   a, h                                        ; $7650: $7c
	ld   l, c                                        ; $7651: $69
	ld   d, d                                        ; $7652: $52
	add  c                                           ; $7653: $81
	sub  b                                           ; $7654: $90
	sbc  [hl]                                        ; $7655: $9e
	ld   [bc], a                                     ; $7656: $02
	ld   h, $03                                      ; $7657: $26 $03
	ld   [hl], l                                     ; $7659: $75
	ld   h, l                                        ; $765a: $65
	ld   [hl], h                                     ; $765b: $74
	dec  c                                           ; $765c: $0d
	adc  h                                           ; $765d: $8c
	ld   e, c                                        ; $765e: $59
	ld   l, c                                        ; $765f: $69
	sub  a                                           ; $7660: $97
	sbc  d                                           ; $7661: $9a
	sbc  c                                           ; $7662: $99
	ld   [hl], l                                     ; $7663: $75
	ld   h, l                                        ; $7664: $65
	sub  l                                           ; $7665: $95
	ld   d, h                                        ; $7666: $54
	ld   a, [$5800]                                  ; $7667: $fa $00 $58
	adc  a                                           ; $766a: $8f
	ld   [hl], l                                     ; $766b: $75
	halt                                             ; $766c: $76
	ld   d, h                                        ; $766d: $54
	ld   a, [$7850]                                  ; $766e: $fa $50 $78
	ld   l, l                                        ; $7671: $6d
	ld   a, h                                        ; $7672: $7c
	inc  b                                           ; $7673: $04
	dec  hl                                          ; $7674: $2b
	dec  b                                           ; $7675: $05
	ld   a, [bc]                                     ; $7676: $0a
	halt                                             ; $7677: $76
	ld   [bc], a                                     ; $7678: $02
	and  c                                           ; $7679: $a1
	ld   [bc], a                                     ; $767a: $02
	pop  de                                          ; $767b: $d1
	ld   d, d                                        ; $767c: $52
	dec  c                                           ; $767d: $0d
	ld   a, h                                        ; $767e: $7c
	sub  [hl]                                        ; $767f: $96
	ld   h, e                                        ; $7680: $63
	ld   a, l                                        ; $7681: $7d
	sbc  [hl]                                        ; $7682: $9e
	ld   [bc], a                                     ; $7683: $02
	jp   $d304                                       ; $7684: $c3 $04 $d3


	ld   [bc], a                                     ; $7687: $02
	ld   c, e                                        ; $7688: $4b
	ld   a, c                                        ; $7689: $79
	push de                                          ; $768a: $d5
	call nz, $ecc0                                   ; $768b: $c4 $c0 $ec
	ld   [hl], l                                     ; $768e: $75
	ld   h, a                                        ; $768f: $67
	sbc  a                                           ; $7690: $9f
	nop                                              ; $7691: $00
	inc  b                                           ; $7692: $04
	ld   [$9202], sp                                 ; $7693: $08 $02 $92
	ld   a, h                                        ; $7696: $7c
	ld   [bc], a                                     ; $7697: $02
	jr   nc, jr_011_76a0                             ; $7698: $30 $06

	reti                                             ; $769a: $d9


	ld   a, h                                        ; $769b: $7c
	ld   l, l                                        ; $769c: $6d
	adc  a                                           ; $769d: $8f
	ld   a, c                                        ; $769e: $79
	dec  c                                           ; $769f: $0d

jr_011_76a0:
	ld   d, d                                        ; $76a0: $52
	ld   [hl], d                                     ; $76a1: $72
	ld   a, h                                        ; $76a2: $7c
	inc  b                                           ; $76a3: $04
	xor  d                                           ; $76a4: $aa
	ld   e, c                                        ; $76a5: $59
	ld   b, $dd                                      ; $76a6: $06 $dd
	dec  b                                           ; $76a8: $05
	ld   a, [bc]                                     ; $76a9: $0a
	ld   h, l                                        ; $76aa: $65
	ld   [hl], h                                     ; $76ab: $74
	ld   [bc], a                                     ; $76ac: $02
	inc  [hl]                                        ; $76ad: $34
	ld   h, e                                        ; $76ae: $63
	ld   d, d                                        ; $76af: $52
	ld   a, [$5800]                                  ; $76b0: $fa $00 $58
	adc  a                                           ; $76b3: $8f
	ld   [hl], l                                     ; $76b4: $75
	halt                                             ; $76b5: $76
	ld   d, h                                        ; $76b6: $54
	ld   a, [$7850]                                  ; $76b7: $fa $50 $78
	ld   l, l                                        ; $76ba: $6d
	ld   a, h                                        ; $76bb: $7c
	inc  bc                                          ; $76bc: $03
	add  d                                           ; $76bd: $82
	inc  b                                           ; $76be: $04
	jr   @+$6f                                       ; $76bf: $18 $6d

	sbc  b                                           ; $76c1: $98
	ld   a, h                                        ; $76c2: $7c
	dec  c                                           ; $76c3: $0d
	sub  [hl]                                        ; $76c4: $96
	ld   h, e                                        ; $76c5: $63
	ld   a, l                                        ; $76c6: $7d
	sbc  [hl]                                        ; $76c7: $9e
	ld   b, $da                                      ; $76c8: $06 $da
	ld   b, $1a                                      ; $76ca: $06 $1a
	ld   [bc], a                                     ; $76cc: $02
	nop                                              ; $76cd: $00
	ld   a, c                                        ; $76ce: $79
	ld   d, h                                        ; $76cf: $54
	ld   [hl], c                                     ; $76d0: $71
	ld   [hl], h                                     ; $76d1: $74
	ld   [hl], d                                     ; $76d2: $72
	ld   e, a                                        ; $76d3: $5f
	ld   a, [$5800]                                  ; $76d4: $fa $00 $58
	ld   [bc], a                                     ; $76d7: $02
	add  c                                           ; $76d8: $81
	inc  bc                                          ; $76d9: $03
	sbc  b                                           ; $76da: $98
	ld   a, c                                        ; $76db: $79
	inc  bc                                          ; $76dc: $03
	rlca                                             ; $76dd: $07
	ld   [bc], a                                     ; $76de: $02
	ld   [hl], d                                     ; $76df: $72
	halt                                             ; $76e0: $76
	inc  b                                           ; $76e1: $04
	cp   [hl]                                        ; $76e2: $be
	and  b                                           ; $76e3: $a0
	ld   b, $1a                                      ; $76e4: $06 $1a
	sbc  c                                           ; $76e6: $99
	inc  bc                                          ; $76e7: $03
	dec  c                                           ; $76e8: $0d
	ld   [bc], a                                     ; $76e9: $02
	jp   $ffff                                       ; $76ea: $c3 $ff $ff


	dec  c                                           ; $76ed: $0d
	ld   l, e                                        ; $76ee: $6b
	sbc  d                                           ; $76ef: $9a
	ld   e, d                                        ; $76f0: $5a
	sbc  [hl]                                        ; $76f1: $9e
	inc  b                                           ; $76f2: $04
	ld   [$9202], sp                                 ; $76f3: $08 $02 $92
	ld   a, h                                        ; $76f6: $7c
	ld   b, $da                                      ; $76f7: $06 $da
	ld   b, $1a                                      ; $76f9: $06 $1a
	ld   [bc], a                                     ; $76fb: $02
	nop                                              ; $76fc: $00
	ld   a, b                                        ; $76fd: $78
	ld   a, h                                        ; $76fe: $7c
	ld   [hl], l                                     ; $76ff: $75
	ld   h, a                                        ; $7700: $67
	ld   a, [$0300]                                  ; $7701: $fa $00 $03
	add  d                                           ; $7704: $82
	halt                                             ; $7705: $76
	dec  b                                           ; $7706: $05
	jp   $9967                                       ; $7707: $c3 $67 $99


	ld   a, h                                        ; $770a: $7c
	ld   e, d                                        ; $770b: $5a
	inc  bc                                          ; $770c: $03
	ld   h, l                                        ; $770d: $65
	inc  bc                                          ; $770e: $03
	ld   l, e                                        ; $770f: $6b
	ld   a, b                                        ; $7710: $78
	ld   d, b                                        ; $7711: $50
	ld   a, b                                        ; $7712: $78
	ld   l, l                                        ; $7713: $6d
	ld   a, l                                        ; $7714: $7d
	dec  c                                           ; $7715: $0d
	sub  b                                           ; $7716: $90
	ld   e, h                                        ; $7717: $5c
	sbc  b                                           ; $7718: $98
	ld   a, c                                        ; $7719: $79
	ld   d, h                                        ; $771a: $54
	ld   [hl], c                                     ; $771b: $71
	ld   [hl], h                                     ; $771c: $74
	ld   [hl], d                                     ; $771d: $72
	ld   e, a                                        ; $771e: $5f
	ld   a, [$9000]                                  ; $771f: $fa $00 $90
	ld   e, h                                        ; $7722: $5c
	sbc  b                                           ; $7723: $98
	ld   a, l                                        ; $7724: $7d
	ld   [bc], a                                     ; $7725: $02
	sub  d                                           ; $7726: $92
	inc  b                                           ; $7727: $04
	ld   a, d                                        ; $7728: $7a
	ld   a, h                                        ; $7729: $7c
	inc  bc                                          ; $772a: $03
	pop  de                                          ; $772b: $d1
	ld   [bc], a                                     ; $772c: $02
	jr   nz, jr_011_7731                             ; $772d: $20 $02

	add  hl, hl                                      ; $772f: $29
	inc  bc                                          ; $7730: $03

jr_011_7731:
	and  c                                           ; $7731: $a1
	sbc  [hl]                                        ; $7732: $9e
	dec  c                                           ; $7733: $0d
	ld   d, b                                        ; $7734: $50
	ld   a, b                                        ; $7735: $78
	ld   l, l                                        ; $7736: $6d
	ld   a, h                                        ; $7737: $7c
	inc  bc                                          ; $7738: $03
	rlca                                             ; $7739: $07
	ld   [bc], a                                     ; $773a: $02
	ld   [hl], d                                     ; $773b: $72
	ld   e, d                                        ; $773c: $5a
	inc  b                                           ; $773d: $04
	ld   [$9202], sp                                 ; $773e: $08 $02 $92
	ld   a, h                                        ; $7741: $7c
	inc  bc                                          ; $7742: $03
	ld   [hl], l                                     ; $7743: $75
	ld   [hl], l                                     ; $7744: $75
	ld   h, a                                        ; $7745: $67
	sbc  a                                           ; $7746: $9f
	nop                                              ; $7747: $00
	ld   [bc], a                                     ; $7748: $02
	ld   c, [hl]                                     ; $7749: $4e
	ld   [bc], a                                     ; $774a: $02
	sub  d                                           ; $774b: $92
	inc  b                                           ; $774c: $04
	add  hl, bc                                      ; $774d: $09
	ld   a, h                                        ; $774e: $7c
	dec  b                                           ; $774f: $05
	ld   h, l                                        ; $7750: $65
	inc  b                                           ; $7751: $04
	ld   a, b                                        ; $7752: $78
	halt                                             ; $7753: $76
	ld   h, l                                        ; $7754: $65
	ld   [hl], h                                     ; $7755: $74
	sbc  [hl]                                        ; $7756: $9e
	inc  b                                           ; $7757: $04
	adc  [hl]                                        ; $7758: $8e
	inc  b                                           ; $7759: $04
	inc  c                                           ; $775a: $0c
	ld   a, h                                        ; $775b: $7c
	dec  c                                           ; $775c: $0d
	ld   [bc], a                                     ; $775d: $02
	rra                                              ; $775e: $1f
	inc  bc                                          ; $775f: $03
	add  b                                           ; $7760: $80
	and  b                                           ; $7761: $a0
	dec  b                                           ; $7762: $05
	inc  h                                           ; $7763: $24
	ld   e, c                                        ; $7764: $59
	sub  a                                           ; $7765: $97
	inc  bc                                          ; $7766: $03
	add  l                                           ; $7767: $85
	ld   d, [hl]                                     ; $7768: $56
	sbc  c                                           ; $7769: $99
	dec  b                                           ; $776a: $05
	ld   d, $74                                      ; $776b: $16 $74
	inc  b                                           ; $776d: $04
	db   $ec                                         ; $776e: $ec
	inc  bc                                          ; $776f: $03
	or   b                                           ; $7770: $b0
	sbc  a                                           ; $7771: $9f
	nop                                              ; $7772: $00
	ld   l, e                                        ; $7773: $6b
	ld   a, h                                        ; $7774: $7c
	inc  bc                                          ; $7775: $03
	and  [hl]                                        ; $7776: $a6
	inc  bc                                          ; $7777: $03
	ld   [hl], b                                     ; $7778: $70
	ld   d, d                                        ; $7779: $52
	inc  b                                           ; $777a: $04
	pop  de                                          ; $777b: $d1
	ld   a, h                                        ; $777c: $7c
	ld   h, c                                        ; $777d: $61
	ld   a, b                                        ; $777e: $78
	ld   h, l                                        ; $777f: $65
	and  b                                           ; $7780: $a0
	sbc  [hl]                                        ; $7781: $9e
	ld   [bc], a                                     ; $7782: $02
	dec  [hl]                                        ; $7783: $35
	inc  bc                                          ; $7784: $03
	add  [hl]                                        ; $7785: $86
	dec  c                                           ; $7786: $0d
	halt                                             ; $7787: $76
	ld   h, l                                        ; $7788: $65
	ld   [hl], h                                     ; $7789: $74
	inc  b                                           ; $778a: $04
	adc  [hl]                                        ; $778b: $8e
	inc  b                                           ; $778c: $04
	inc  c                                           ; $778d: $0c
	inc  bc                                          ; $778e: $03
	ld   h, l                                        ; $778f: $65
	ld   [hl], l                                     ; $7790: $75
	inc  b                                           ; $7791: $04
	ld   e, [hl]                                     ; $7792: $5e
	ld   b, $db                                      ; $7793: $06 $db
	ld   h, l                                        ; $7795: $65
	ld   [hl], h                                     ; $7796: $74
	adc  l                                           ; $7797: $8d
	sub  [hl]                                        ; $7798: $96
	ld   d, h                                        ; $7799: $54
	sbc  a                                           ; $779a: $9f
	nop                                              ; $779b: $00
	dec  b                                           ; $779c: $05
	ld   c, a                                        ; $779d: $4f
	ld   h, l                                        ; $779e: $65
	ld   e, l                                        ; $779f: $5d
	inc  b                                           ; $77a0: $04
	ld   a, [bc]                                     ; $77a1: $0a
	ld   [bc], a                                     ; $77a2: $02
	nop                                              ; $77a3: $00
	ld   a, c                                        ; $77a4: $79
	ld   [bc], a                                     ; $77a5: $02
	sbc  d                                           ; $77a6: $9a
	adc  h                                           ; $77a7: $8c
	sbc  d                                           ; $77a8: $9a
	ld   l, l                                        ; $77a9: $6d
	ld   d, b                                        ; $77aa: $50
	ld   a, b                                        ; $77ab: $78
	ld   l, l                                        ; $77ac: $6d
	ld   a, l                                        ; $77ad: $7d
	sbc  [hl]                                        ; $77ae: $9e
	dec  c                                           ; $77af: $0d
	inc  bc                                          ; $77b0: $03
	add  d                                           ; $77b1: $82
	ld   a, h                                        ; $77b2: $7c
	ld   [bc], a                                     ; $77b3: $02
	and  c                                           ; $77b4: $a1
	inc  bc                                          ; $77b5: $03
	and  b                                           ; $77b6: $a0
	ld   l, a                                        ; $77b7: $6f
	and  b                                           ; $77b8: $a0
	inc  b                                           ; $77b9: $04
	scf                                              ; $77ba: $37
	ld   e, c                                        ; $77bb: $59
	ld   e, l                                        ; $77bc: $5d
	ld   h, a                                        ; $77bd: $67
	sbc  c                                           ; $77be: $99
	inc  bc                                          ; $77bf: $03
	push bc                                          ; $77c0: $c5
	dec  b                                           ; $77c1: $05
	cp   b                                           ; $77c2: $b8
	sbc  a                                           ; $77c3: $9f
	nop                                              ; $77c4: $00
	ld   d, b                                        ; $77c5: $50
	ld   a, b                                        ; $77c6: $78
	ld   l, l                                        ; $77c7: $6d
	ld   a, h                                        ; $77c8: $7c
	inc  bc                                          ; $77c9: $03
	rlca                                             ; $77ca: $07
	ld   [bc], a                                     ; $77cb: $02
	ld   [hl], d                                     ; $77cc: $72
	ld   a, l                                        ; $77cd: $7d
	ld   e, b                                        ; $77ce: $58
	ld   [bc], a                                     ; $77cf: $02
	add  c                                           ; $77d0: $81
	inc  bc                                          ; $77d1: $03
	sbc  b                                           ; $77d2: $98
	and  b                                           ; $77d3: $a0
	ld   [bc], a                                     ; $77d4: $02
	ld   a, b                                        ; $77d5: $78
	add  c                                           ; $77d6: $81
	ld   [bc], a                                     ; $77d7: $02
	ld   b, b                                        ; $77d8: $40
	adc  l                                           ; $77d9: $8d
	sbc  [hl]                                        ; $77da: $9e
	dec  c                                           ; $77db: $0d
	ld   [bc], a                                     ; $77dc: $02
	ld   c, [hl]                                     ; $77dd: $4e
	ld   [bc], a                                     ; $77de: $02
	sub  d                                           ; $77df: $92
	inc  b                                           ; $77e0: $04
	add  hl, bc                                      ; $77e1: $09
	ld   a, h                                        ; $77e2: $7c
	dec  b                                           ; $77e3: $05
	dec  e                                           ; $77e4: $1d
	adc  l                                           ; $77e5: $8d
	halt                                             ; $77e6: $76
	ld   a, b                                        ; $77e7: $78
	sbc  c                                           ; $77e8: $99
	ld   [hl], l                                     ; $77e9: $75
	ld   h, l                                        ; $77ea: $65
	sub  l                                           ; $77eb: $95
	ld   d, h                                        ; $77ec: $54
	sbc  a                                           ; $77ed: $9f
	nop                                              ; $77ee: $00
	inc  b                                           ; $77ef: $04
	ld   c, c                                        ; $77f0: $49
	sub  b                                           ; $77f1: $90
	ld   a, b                                        ; $77f2: $78
	ld   d, d                                        ; $77f3: $52
	inc  b                                           ; $77f4: $04
	adc  [hl]                                        ; $77f5: $8e
	inc  b                                           ; $77f6: $04
	inc  c                                           ; $77f7: $0c
	ld   a, h                                        ; $77f8: $7c
	inc  bc                                          ; $77f9: $03
	ld   h, l                                        ; $77fa: $65
	ld   a, c                                        ; $77fb: $79
	sbc  [hl]                                        ; $77fc: $9e
	ld   d, b                                        ; $77fd: $50
	sub  a                                           ; $77fe: $97
	sub  h                                           ; $77ff: $94
	sbc  c                                           ; $7800: $99
	dec  c                                           ; $7801: $0d
	inc  bc                                          ; $7802: $03
	add  hl, de                                      ; $7803: $19
	ld   [bc], a                                     ; $7804: $02
	ld   b, d                                        ; $7805: $42
	and  b                                           ; $7806: $a0
	inc  bc                                          ; $7807: $03
	xor  h                                           ; $7808: $ac
	sbc  b                                           ; $7809: $98
	inc  bc                                          ; $780a: $03
	add  b                                           ; $780b: $80
	ld   h, a                                        ; $780c: $67
	sbc  a                                           ; $780d: $9f
	nop                                              ; $780e: $00
	ld   d, b                                        ; $780f: $50
	ld   a, b                                        ; $7810: $78
	ld   l, l                                        ; $7811: $6d
	ld   a, h                                        ; $7812: $7c
	inc  bc                                          ; $7813: $03
	xor  h                                           ; $7814: $ac
	sbc  b                                           ; $7815: $98
	inc  bc                                          ; $7816: $03
	add  b                                           ; $7817: $80
	ld   h, l                                        ; $7818: $65
	ld   l, l                                        ; $7819: $6d
	inc  bc                                          ; $781a: $03
	add  hl, de                                      ; $781b: $19
	ld   [bc], a                                     ; $781c: $02
	ld   b, d                                        ; $781d: $42
	ld   a, h                                        ; $781e: $7c
	ld   b, $dc                                      ; $781f: $06 $dc
	inc  bc                                          ; $7821: $03
	add  d                                           ; $7822: $82
	halt                                             ; $7823: $76
	dec  c                                           ; $7824: $0d
	ld   h, l                                        ; $7825: $65
	ld   [hl], h                                     ; $7826: $74
	ld   [bc], a                                     ; $7827: $02
	ld   c, [hl]                                     ; $7828: $4e
	ld   [bc], a                                     ; $7829: $02
	sub  d                                           ; $782a: $92
	inc  b                                           ; $782b: $04
	add  hl, bc                                      ; $782c: $09
	ld   a, l                                        ; $782d: $7d
	inc  b                                           ; $782e: $04
	and  c                                           ; $782f: $a1
	ld   h, l                                        ; $7830: $65
	ld   e, l                                        ; $7831: $5d
	inc  bc                                          ; $7832: $03
	ld   h, a                                        ; $7833: $67
	ld   e, l                                        ; $7834: $5d
	ld   [hl], l                                     ; $7835: $75
	ld   h, l                                        ; $7836: $65
	sub  l                                           ; $7837: $95
	ld   d, h                                        ; $7838: $54
	sbc  a                                           ; $7839: $9f
	nop                                              ; $783a: $00
	ld   [hl], d                                     ; $783b: $72
	ld   d, d                                        ; $783c: $52
	ld   [bc], a                                     ; $783d: $02
	sub  l                                           ; $783e: $95
	dec  b                                           ; $783f: $05
	ld   [de], a                                     ; $7840: $12
	halt                                             ; $7841: $76
	ld   h, l                                        ; $7842: $65
	ld   e, d                                        ; $7843: $5a
	ld   l, a                                        ; $7844: $6f
	ld   a, b                                        ; $7845: $78
	inc  b                                           ; $7846: $04
	xor  d                                           ; $7847: $aa
	inc  bc                                          ; $7848: $03
	ld   hl, $9e79                                   ; $7849: $21 $79 $9e
	dec  c                                           ; $784c: $0d
	ld   d, b                                        ; $784d: $50
	ld   a, b                                        ; $784e: $78
	ld   l, l                                        ; $784f: $6d
	ld   a, h                                        ; $7850: $7c
	inc  bc                                          ; $7851: $03
	xor  a                                           ; $7852: $af
	ld   h, e                                        ; $7853: $63
	ld   a, b                                        ; $7854: $78
	ld   [bc], a                                     ; $7855: $02
	and  c                                           ; $7856: $a1
	inc  b                                           ; $7857: $04
	xor  e                                           ; $7858: $ab
	sbc  b                                           ; $7859: $98
	and  b                                           ; $785a: $a0
	sbc  a                                           ; $785b: $9f
	nop                                              ; $785c: $00
	ld   l, e                                        ; $785d: $6b
	ld   a, h                                        ; $785e: $7c
	dec  b                                           ; $785f: $05
	ret  nz                                          ; $7860: $c0

	adc  l                                           ; $7861: $8d
	inc  bc                                          ; $7862: $03
	ccf                                              ; $7863: $3f
	ld   a, e                                        ; $7864: $7b
	ld   h, c                                        ; $7865: $61
	ld   l, e                                        ; $7866: $6b
	ld   e, d                                        ; $7867: $5a
	sbc  [hl]                                        ; $7868: $9e
	inc  bc                                          ; $7869: $03
	add  d                                           ; $786a: $82
	ld   a, c                                        ; $786b: $79
	inc  bc                                          ; $786c: $03
	rlca                                             ; $786d: $07
	ld   [bc], a                                     ; $786e: $02
	ld   [hl], d                                     ; $786f: $72
	and  b                                           ; $7870: $a0
	dec  c                                           ; $7871: $0d
	dec  b                                           ; $7872: $05
	cp   a                                           ; $7873: $bf
	sbc  c                                           ; $7874: $99
	ld   a, h                                        ; $7875: $7c
	ld   [hl], l                                     ; $7876: $75
	ld   h, a                                        ; $7877: $67
	sbc  a                                           ; $7878: $9f
	nop                                              ; $7879: $00
	inc  bc                                          ; $787a: $03
	ld   [de], a                                     ; $787b: $12
	inc  bc                                          ; $787c: $03
	dec  sp                                          ; $787d: $3b
	ld   a, l                                        ; $787e: $7d
	sbc  [hl]                                        ; $787f: $9e
	ld   [bc], a                                     ; $7880: $02
	and  l                                           ; $7881: $a5
	ld   [bc], a                                     ; $7882: $02
	jr   nz, jr_011_7889                             ; $7883: $20 $04

	sbc  a                                           ; $7885: $9f
	halt                                             ; $7886: $76
	ld   d, d                                        ; $7887: $52
	ld   [hl], c                                     ; $7888: $71

jr_011_7889:
	ld   l, l                                        ; $7889: $6d
	halt                                             ; $788a: $76
	ld   h, c                                        ; $788b: $61
	sbc  e                                           ; $788c: $9b
	rst  $38                                         ; $788d: $ff
	rst  $38                                         ; $788e: $ff
	dec  c                                           ; $788f: $0d
	ld   [hl], l                                     ; $7890: $75
	sub  b                                           ; $7891: $90
	sbc  [hl]                                        ; $7892: $9e
	inc  b                                           ; $7893: $04
	ld   d, $7d                                      ; $7894: $16 $7d
	inc  b                                           ; $7896: $04
	adc  d                                           ; $7897: $8a
	ld   l, b                                        ; $7898: $68
	ld   [bc], a                                     ; $7899: $02
	adc  b                                           ; $789a: $88
	ld   e, a                                        ; $789b: $5f
	sbc  c                                           ; $789c: $99
	ld   a, l                                        ; $789d: $7d
	ld   l, b                                        ; $789e: $68
	ld   [hl], l                                     ; $789f: $75
	ld   h, a                                        ; $78a0: $67
	ld   a, [$0400]                                  ; $78a1: $fa $00 $04
	ld   [$2f04], sp                                 ; $78a4: $08 $04 $2f
	and  b                                           ; $78a7: $a0
	inc  bc                                          ; $78a8: $03
	sub  e                                           ; $78a9: $93
	sbc  c                                           ; $78aa: $99
	ld   h, c                                        ; $78ab: $61
	ld   h, c                                        ; $78ac: $61
	sbc  e                                           ; $78ad: $9b
	ld   h, h                                        ; $78ae: $64
	ld   h, l                                        ; $78af: $65
	and  b                                           ; $78b0: $a0
	inc  b                                           ; $78b1: $04
	and  e                                           ; $78b2: $a3
	sbc  d                                           ; $78b3: $9a
	ld   l, b                                        ; $78b4: $68
	ld   a, c                                        ; $78b5: $79
	dec  c                                           ; $78b6: $0d
	inc  b                                           ; $78b7: $04
	xor  d                                           ; $78b8: $aa
	ld   bc, $7c14                                   ; $78b9: $01 $14 $7c
	inc  bc                                          ; $78bc: $03
	db   $d3                                         ; $78bd: $d3
	dec  b                                           ; $78be: $05
	ld   a, [bc]                                     ; $78bf: $0a
	and  b                                           ; $78c0: $a0
	inc  bc                                          ; $78c1: $03
	ld   [hl], l                                     ; $78c2: $75
	ld   e, d                                        ; $78c3: $5a
	ld   e, a                                        ; $78c4: $5f
	adc  h                                           ; $78c5: $8c
	ld   h, l                                        ; $78c6: $65
	sub  l                                           ; $78c7: $95
	ld   d, h                                        ; $78c8: $54
	sbc  a                                           ; $78c9: $9f
	nop                                              ; $78ca: $00

endc


;
	ld   a, [$ca1a]                                  ; $78cb: $fa $1a $ca
	dec  a                                           ; $78ce: $3d
	jr   jr_011_78d4                                 ; $78cf: $18 $03

	ld   a, [$ca1a]                                  ; $78d1: $fa $1a $ca

jr_011_78d4:
	ld   [$ca15], a                                  ; $78d4: $ea $15 $ca
	ld   hl, $ca13                                   ; $78d7: $21 $13 $ca
	inc  [hl]                                        ; $78da: $34
	ld   hl, $ca15                                   ; $78db: $21 $15 $ca
	ld   a, [hl]                                     ; $78de: $7e
	or   a                                           ; $78df: $b7
	jr   z, jr_011_78e4                              ; $78e0: $28 $02

	dec  [hl]                                        ; $78e2: $35
	ret                                              ; $78e3: $c9


jr_011_78e4:
	ld   hl, $ca13                                   ; $78e4: $21 $13 $ca
	inc  [hl]                                        ; $78e7: $34
	jp   Call_011_70c3                               ; $78e8: $c3 $c3 $70


	ld   a, [$ca10]                                  ; $78eb: $fa $10 $ca
	add  a                                           ; $78ee: $87
	ld   c, a                                        ; $78ef: $4f
	ld   b, $00                                      ; $78f0: $06 $00
	ld   hl, $7920                                   ; $78f2: $21 $20 $79
	add  hl, bc                                      ; $78f5: $09
	push hl                                          ; $78f6: $e5
	call Call_011_792a                               ; $78f7: $cd $2a $79
	ld   de, $9200                                   ; $78fa: $11 $00 $92
	ld   c, $80                                      ; $78fd: $0e $80
	ld   b, $10                                      ; $78ff: $06 $10
	ld   a, $03                                      ; $7901: $3e $03
	call EnqueueHDMATransfer                                       ; $7903: $cd $7c $02
	pop  hl                                          ; $7906: $e1
	inc  hl                                          ; $7907: $23
	call Call_011_792a                               ; $7908: $cd $2a $79
	ld   de, $9300                                   ; $790b: $11 $00 $93
	ld   c, $80                                      ; $790e: $0e $80
	ld   b, $10                                      ; $7910: $06 $10
	ld   a, $03                                      ; $7912: $3e $03
	call EnqueueHDMATransfer                                       ; $7914: $cd $7c $02
	ld   hl, $ca10                                   ; $7917: $21 $10 $ca
	inc  [hl]                                        ; $791a: $34
	ld   hl, $ca13                                   ; $791b: $21 $13 $ca
	inc  [hl]                                        ; $791e: $34
	ret                                              ; $791f: $c9


	dec  b                                           ; $7920: $05
	inc  b                                           ; $7921: $04
	ld   b, $04                                      ; $7922: $06 $04
	ld   [$0907], sp                                 ; $7924: $08 $07 $09
	ld   a, [bc]                                     ; $7927: $0a
	dec  bc                                          ; $7928: $0b
	inc  c                                           ; $7929: $0c

Call_011_792a:
	ld   a, [$ca11]                                  ; $792a: $fa $11 $ca
	add  [hl]                                        ; $792d: $86
	and  $0f                                         ; $792e: $e6 $0f
	ld   h, a                                        ; $7930: $67
	ld   l, $00                                      ; $7931: $2e $00
	ld   bc, $d000                                   ; $7933: $01 $00 $d0
	add  hl, bc                                      ; $7936: $09
	ret                                              ; $7937: $c9


	ld   a, [$ca1a]                                  ; $7938: $fa $1a $ca
	cp   $04                                         ; $793b: $fe $04
	jr   nz, jr_011_7948                             ; $793d: $20 $09

	ld   a, [$ca12]                                  ; $793f: $fa $12 $ca
	ld   hl, $ca1d                                   ; $7942: $21 $1d $ca
	cp   [hl]                                        ; $7945: $be
	jr   z, jr_011_794f                              ; $7946: $28 $07

jr_011_7948:
	xor  a                                           ; $7948: $af
	ld   [$ca13], a                                  ; $7949: $ea $13 $ca
	jp   Call_011_70c3                               ; $794c: $c3 $c3 $70


jr_011_794f:
	ld   a, $50                                      ; $794f: $3e $50
	call PlaySoundEffect                                       ; $7951: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $7954: $21 $a1 $c2
	inc  [hl]                                        ; $7957: $34
	ret                                              ; $7958: $c9


Call_011_7959:
	ld   a, $10                                      ; $7959: $3e $10

jr_011_795b:
	push af                                          ; $795b: $f5
	ld   b, $00                                      ; $795c: $06 $00
	ld   c, $40                                      ; $795e: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $7960: $cd $32 $08
	ld   bc, $0008                                   ; $7963: $01 $08 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $7966: $cd $79 $0a
	pop  af                                          ; $7969: $f1
	dec  a                                           ; $796a: $3d
	jr   nz, jr_011_795b                             ; $796b: $20 $ee

	ret                                              ; $796d: $c9


Call_011_796e:
	ld   hl, $ca03                                   ; $796e: $21 $03 $ca

	M_FarCall LoadStatBars
	ret                                              ; $7985: $c9


Call_011_7986:
	ld   a, [$ca0f]                                  ; $7986: $fa $0f $ca
	add  a                                           ; $7989: $87
	ld   c, a                                        ; $798a: $4f
	ld   b, $00                                      ; $798b: $06 $00
	ld   hl, $79b7                                   ; $798d: $21 $b7 $79
	add  hl, bc                                      ; $7990: $09
	ld   d, h                                        ; $7991: $54
	ld   e, l                                        ; $7992: $5d
	ld   a, [$ca00]                                  ; $7993: $fa $00 $ca
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $7996: $cd $76 $30
	ld   a, [de]                                     ; $7999: $1a
	ld   c, a                                        ; $799a: $4f
	ld   b, $08                                      ; $799b: $06 $08
	inc  de                                          ; $799d: $13
	ld   a, [de]                                     ; $799e: $1a
	ld   de, $7180                                   ; $799f: $11 $80 $71
	push af                                          ; $79a2: $f5
	ld   a, $03                                      ; $79a3: $3e $03
	ld   [wFarCallAddr], a                                  ; $79a5: $ea $98 $c2
	ld   a, $41                                      ; $79a8: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $79aa: $ea $99 $c2
	ld   a, $01                                      ; $79ad: $3e $01
	ld   [wFarCallBank], a                                  ; $79af: $ea $9a $c2
	pop  af                                          ; $79b2: $f1
	call FarCall                                       ; $79b3: $cd $62 $09
	ret                                              ; $79b6: $c9


	ld   [$1062], sp                                 ; $79b7: $08 $62 $10
	ld   h, e                                        ; $79ba: $63
	db $18, $64

	db $20, $65

	jr   z, jr_011_7a27                              ; $79bf: $28 $66

	jr   nc, jr_011_7a2a                             ; $79c1: $30 $67

	db $38, $00


Call_011_79c5:
;
	ld   a, [wWramBank]                                  ; $79c5: $fa $93 $c2
	push af                                          ; $79c8: $f5

	ld   a, $03                                      ; $79c9: $3e $03
	ld   [wWramBank], a                                  ; $79cb: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $79ce: $e0 $70

;
	ld   a, [$ca12]                                  ; $79d0: $fa $12 $ca
	ld   c, a                                        ; $79d3: $4f
	add  a                                           ; $79d4: $87
	add  c                                           ; $79d5: $81
	ld   c, a                                        ; $79d6: $4f
	ld   b, $00                                      ; $79d7: $06 $00
	ld   hl, .table                                   ; $79d9: $21 $fa $79
	add  hl, bc                                      ; $79dc: $09

;
	ld   a, [hl+]                                    ; $79dd: $2a
	ld   e, a                                        ; $79de: $5f
	ld   a, [hl+]                                    ; $79df: $2a
	ld   d, a                                        ; $79e0: $57
	ld   a, [hl]                                     ; $79e1: $7e

;
	push af                                          ; $79e2: $f5
	ld   hl, $d800                                   ; $79e3: $21 $00 $d8
	ld   a, [$ca11]                                  ; $79e6: $fa $11 $ca
	or   a                                           ; $79e9: $b7
	jr   nz, :+                             ; $79ea: $20 $03
	ld   hl, $d000                                   ; $79ec: $21 $00 $d0
:	pop  af                                          ; $79ef: $f1

; Copy tile data over and restore ram bank
	call RLEXorCopy                                       ; $79f0: $cd $d2 $09

	pop  af                                          ; $79f3: $f1
	ld   [wWramBank], a                                  ; $79f4: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $79f7: $e0 $70
	ret                                              ; $79f9: $c9

.table:
	db $00, $40, $19
	db $1b, $50, $17
	db $a0, $75, $18
	db $20, $6d, $17
	db $a4, $5e, $17
	db $e5, $65, $17
	db $6e, $46, $19
	db $e4, $76, $1b
	db $65, $5d, $1b
	db $bb, $63, $1c
	db $00, $40, $1c
	db $75, $6d, $1c
	db $45, $4b, $1c
	db $cf, $7a, $1b
	db $e3, $72, $1b


Func_11_7a27:
jr_011_7a27:
	ld   hl, $ca14                                   ; $7a27: $21 $14 $ca

jr_011_7a2a:
	ld   a, [hl]                                     ; $7a2a: $7e
	inc  [hl]                                        ; $7a2b: $34
	ld   c, a                                        ; $7a2c: $4f
	ld   b, $00                                      ; $7a2d: $06 $00
	ld   hl, $ca1e                                   ; $7a2f: $21 $1e $ca
	ld   a, [hl+]                                    ; $7a32: $2a
	ld   h, [hl]                                     ; $7a33: $66
	ld   l, a                                        ; $7a34: $6f
	add  hl, bc                                      ; $7a35: $09
	ld   a, [hl+]                                    ; $7a36: $2a
	cp   $ff                                         ; $7a37: $fe $ff
	jr   nz, jr_011_7a49                             ; $7a39: $20 $0e

	xor  a                                           ; $7a3b: $af
	ld   [$ca14], a                                  ; $7a3c: $ea $14 $ca
	ld   hl, $ca19                                   ; $7a3f: $21 $19 $ca
	ld   a, [hl]                                     ; $7a42: $7e
	or   a                                           ; $7a43: $b7
	jr   z, jr_011_7a27                              ; $7a44: $28 $e1

	dec  [hl]                                        ; $7a46: $35
	jr   jr_011_7a27                                 ; $7a47: $18 $de

jr_011_7a49:
	ld   [$ca12], a                                  ; $7a49: $ea $12 $ca
	ld   a, [$ca19]                                  ; $7a4c: $fa $19 $ca
	or   a                                           ; $7a4f: $b7
	jr   nz, jr_011_7a7a                             ; $7a50: $20 $28

	ld   a, [$ca1d]                                  ; $7a52: $fa $1d $ca
	ld   d, a                                        ; $7a55: $57
	ld   c, $08                                      ; $7a56: $0e $08

jr_011_7a58:
	ld   a, [hl+]                                    ; $7a58: $2a
	cp   $ff                                         ; $7a59: $fe $ff
	jr   nz, jr_011_7a65                             ; $7a5b: $20 $08

	ld   hl, $ca1e                                   ; $7a5d: $21 $1e $ca
	ld   a, [hl+]                                    ; $7a60: $2a
	ld   h, [hl]                                     ; $7a61: $66
	ld   l, a                                        ; $7a62: $6f
	jr   jr_011_7a58                                 ; $7a63: $18 $f3

jr_011_7a65:
	dec  c                                           ; $7a65: $0d
	jr   nz, jr_011_7a58                             ; $7a66: $20 $f0

	cp   d                                           ; $7a68: $ba
	jr   nz, jr_011_7a7a                             ; $7a69: $20 $0f

	ld   a, $04                                      ; $7a6b: $3e $04
	ld   [$ca1a], a                                  ; $7a6d: $ea $1a $ca
	ld   a, $6f                                      ; $7a70: $3e $6f
	call Call_011_7a8d                               ; $7a72: $cd $8d $7a
	ld   a, $01                                      ; $7a75: $3e $01
	ld   [$ca38], a                                  ; $7a77: $ea $38 $ca

jr_011_7a7a:
	call Call_011_79c5                               ; $7a7a: $cd $c5 $79
	ld   hl, $ca11                                   ; $7a7d: $21 $11 $ca
	ld   a, [hl]                                     ; $7a80: $7e
	xor  $08                                         ; $7a81: $ee $08
	ld   [hl], a                                     ; $7a83: $77
	ld   hl, $ca13                                   ; $7a84: $21 $13 $ca
	inc  [hl]                                        ; $7a87: $34
	xor  a                                           ; $7a88: $af
	ld   [$ca10], a                                  ; $7a89: $ea $10 $ca
	ret                                              ; $7a8c: $c9


Call_011_7a8d:
	push af                                          ; $7a8d: $f5
	ld   a, [$c9ff]                                  ; $7a8e: $fa $ff $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $7a91: $cd $76 $30
	pop  af                                          ; $7a94: $f1
	ld   de, $7180                                   ; $7a95: $11 $80 $71
	push af                                          ; $7a98: $f5
	ld   a, $1c                                      ; $7a99: $3e $1c
	ld   [wFarCallAddr], a                                  ; $7a9b: $ea $98 $c2
	ld   a, $41                                      ; $7a9e: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $7aa0: $ea $99 $c2
	ld   a, $01                                      ; $7aa3: $3e $01
	ld   [wFarCallBank], a                                  ; $7aa5: $ea $9a $c2
	pop  af                                          ; $7aa8: $f1
	call FarCall                                       ; $7aa9: $cd $62 $09
	ret                                              ; $7aac: $c9


Call_011_7aad:
	ld   c, $81                                      ; $7aad: $0e $81
	ld   de, $9920                                   ; $7aaf: $11 $20 $99
	ld   a, $03                                      ; $7ab2: $3e $03
	ld   hl, $d260                                   ; $7ab4: $21 $60 $d2
	ld   b, $04                                      ; $7ab7: $06 $04
	call EnqueueHDMATransfer                                       ; $7ab9: $cd $7c $02
	ret                                              ; $7abc: $c9


Call_011_7abd:
	ld   c, $81                                      ; $7abd: $0e $81
	ld   de, $9920                                   ; $7abf: $11 $20 $99
	ld   a, $03                                      ; $7ac2: $3e $03
	ld   hl, $d120                                   ; $7ac4: $21 $20 $d1
	ld   b, $04                                      ; $7ac7: $06 $04
	call EnqueueHDMATransfer                                       ; $7ac9: $cd $7c $02
	ret                                              ; $7acc: $c9


Call_011_7acd:
jr_011_7acd:
	ld   a, $ff                                      ; $7acd: $3e $ff
	ld   [hl+], a                                    ; $7acf: $22
	ld   a, $00                                      ; $7ad0: $3e $00
	ld   [hl+], a                                    ; $7ad2: $22
	dec  bc                                          ; $7ad3: $0b
	ld   a, b                                        ; $7ad4: $78
	or   c                                           ; $7ad5: $b1
	jr   nz, jr_011_7acd                             ; $7ad6: $20 $f5

	ret                                              ; $7ad8: $c9


Call_011_7ad9:
	call ReturnEndGameRankInA                               ; $7ad9: $cd $23 $7b
	ld   [$ca1d], a                                  ; $7adc: $ea $1d $ca
	ld   hl, $ca1e                                   ; $7adf: $21 $1e $ca
	ld   a, $e9                                      ; $7ae2: $3e $e9
	ld   [hl+], a                                    ; $7ae4: $22
	ld   a, $7a                                      ; $7ae5: $3e $7a
	ld   [hl], a                                     ; $7ae7: $77
	ret                                              ; $7ae8: $c9


	nop                                              ; $7ae9: $00
	rlca                                             ; $7aea: $07
	ld   bc, $0208                                   ; $7aeb: $01 $08 $02
	add  hl, bc                                      ; $7aee: $09
	inc  bc                                          ; $7aef: $03
	ld   a, [bc]                                     ; $7af0: $0a
	inc  b                                           ; $7af1: $04
	dec  bc                                          ; $7af2: $0b
	dec  b                                           ; $7af3: $05
	inc  c                                           ; $7af4: $0c
	ld   b, $0d                                      ; $7af5: $06 $0d
	ld   c, $ff                                      ; $7af7: $0e $ff


JpGetSramByte2:
	M_FarCall GetSramByte2
	ret                                                             ; $7b0d


JpCheckIfFlagSet2:
	M_FarCall CheckIfFlagSet2
	ret                                                             ; $7b22


ReturnEndGameRankInA:
; Total the 5 non-stamina stats, and all girl's affection
	call ProcessStatsTotal                                          ; $7b23
	call ProcessAffectionTotal                                      ; $7b26

; Check battles won from scripts 261, 359, 494, 658, 735, 769
	ld   hl, SRAM2_VICTORY_FLAG                                     ; $7b29
	call JpGetSramByte2                                             ; $7b2c
	ld   [wGameResultsBattlesWon], a                                ; $7b2f

; Check final exam performance from script 735
	ld   hl, SRAM2_TEST_POINT                                       ; $7b32
	call JpGetSramByte2                                             ; $7b35
	ld   [wGameResultsFinalExamPts], a                              ; $7b38

; Check if experimental koubo beat from script 768
	ld   hl, FLAG2_FINAL_BATTLE                                     ; $7b3b
	call JpCheckIfFlagSet2                                          ; $7b3e
	ld   [wGameResultsExperimentalKouboBeat], a                     ; $7b41

; Check if peeping from scripts 372, 470, 499, 501, 627, 663, 674, 681, 695, 748, 777
	ld   hl, FLAG2_PEEPING                                          ; $7b44
	call JpCheckIfFlagSet2                                          ; $7b47
	ld   [wGameResultsPeeping], a                                   ; $7b4a

; Check if finished office work week 1 from script 334
	ld   hl, FLAG2_OFFICE_WEEK_1_YURI                               ; $7b4d
	call JpCheckIfFlagSet2                                          ; $7b50
	ld   [wGameResultsOfficeWeek1Yuri], a                           ; $7b53

; Check if finished office work week 2 from script 475
	ld   hl, FLAG2_OFFICE_WEEK_2_KASUMI                             ; $7b56
	call JpCheckIfFlagSet2                                          ; $7b59
	ld   [wGameResultsOfficeWeek2Kasumi], a                         ; $7b5c

; Check if finished office work week 3 from script 633
	ld   hl, FLAG2_OFFICE_WEEK_3_YURI                               ; $7b5f
	call JpCheckIfFlagSet2                                          ; $7b62
	ld   [wGameResultsOfficeWeek3Yuri], a                           ; $7b65

; Check if finished office work week 4 from script 639
	ld   hl, FLAG2_OFFICE_WEEK_4_KASUMI                             ; $7b68
	call JpCheckIfFlagSet2                                          ; $7b6b
	ld   [wGameResultsOfficeWeek4Kasumi], a                         ; $7b6e

; Check if done Tsubaki's food quiz from script 8
	ld   hl, FLAG2_TSUBAKI_CONVO_6                                  ; $7b71
	call JpCheckIfFlagSet2                                          ; $7b74
	ld   [wGameResultsTsubakiFoodQuiz], a                           ; $7b77

; Based on above, check which rank player fits in
	call CheckIfRankFlowerDivisionCaptain                           ; $7b7a
	cp   $ff                                                        ; $7b7d
	ret  nz                                                         ; $7b7f

	call CheckIfRankNotAFarOffDream                                 ; $7b80
	cp   $ff                                                        ; $7b83
	ret  nz                                                         ; $7b85

	call CheckIfRankStatsFocused                                    ; $7b86
	cp   $ff                                                        ; $7b89
	ret  nz                                                         ; $7b8b

	call CheckIfRankPerfectForAccounting                            ; $7b8c
	cp   $ff                                                        ; $7b8f
	ret  nz                                                         ; $7b91

	call CheckIfRankPerfectSalesClerk                               ; $7b92
	cp   $ff                                                        ; $7b95
	ret  nz                                                         ; $7b97

	call CheckIfRankIdealUsher                                      ; $7b98
	cp   $ff                                                        ; $7b9b
	ret  nz                                                         ; $7b9d

	call CheckIfRankFromTheShadows                                  ; $7b9e
	cp   $ff                                                        ; $7ba1
	ret  nz                                                         ; $7ba3

	call CheckIfRankWellLiked                                       ; $7ba4
	cp   $ff                                                        ; $7ba7
	ret  nz                                                         ; $7ba9

	call CheckIfRankCountlessWorlds                                 ; $7baa
	cp   $ff                                                        ; $7bad
	ret  nz                                                         ; $7baf

	call CheckIfRankCleaningUpAfter                                 ; $7bb0
	cp   $ff                                                        ; $7bb3
	ret  nz                                                         ; $7bb5

; Default rank
	ld   a, GRR_RESULTS_ARE_LACKING                                 ; $7bb6
	ret                                                             ; $7bb8


; Returns $ff in A if requirements unfulfilled, else the rank value
CheckIfRankFlowerDivisionCaptain:
	ld   b, $ff                                                     ; $7bb9

; Requires 975+ stats
	ld   hl, 975                                                    ; $7bbb
	call CheckIfTotalStatsLtHL                                      ; $7bbe
	jr   nz, .done                                                  ; $7bc1

; Requires minigame + final battle beat
	ld   a, [wGameResultsFinalExamPts]                              ; $7bc3
	cp   $02                                                        ; $7bc6
	jr   c, .done                                                   ; $7bc8

; Requires 750+ affection
	ld   hl, 750                                                    ; $7bca
	call CheckIfTotalAffectionLtHL                                  ; $7bcd
	jr   nz, .done                                                  ; $7bd0

; Requires 3+ battles won (includes final battle)
	ld   a, [wGameResultsBattlesWon]                                ; $7bd2
	cp   $03                                                        ; $7bd5
	jr   c, .done                                                   ; $7bd7

; Requires beating experimental Koubo
	ld   a, [wGameResultsExperimentalKouboBeat]                     ; $7bd9
	or   a                                                          ; $7bdc
	jr   z, .done                                                   ; $7bdd

	ld   b, GRR_FLOWER_DIVISION_CAPTAIN                             ; $7bdf

.done:
	ld   a, b                                                       ; $7be1
	ret                                                             ; $7be2


; Returns $ff in A if requirements unfulfilled, else the rank value
CheckIfRankNotAFarOffDream:
	ld   b, $ff                                                     ; $7be3

; Requires not peeping
	ld   a, [wGameResultsPeeping]                                   ; $7be5
	or   a                                                          ; $7be8
	jr   nz, .done                                                  ; $7be9

; Requires 935+ stats
	ld   hl, 935                                                    ; $7beb
	call CheckIfTotalStatsLtHL                                      ; $7bee
	jr   nz, .done                                                  ; $7bf1

; Requires beating minigame and/or final battle
	ld   a, [wGameResultsFinalExamPts]                              ; $7bf3
	cp   $01                                                        ; $7bf6
	jr   c, .done                                                   ; $7bf8

; Requires beating experimental Koubo
	ld   a, [wGameResultsExperimentalKouboBeat]                     ; $7bfa
	or   a                                                          ; $7bfd
	jr   z, .done                                                   ; $7bfe

	ld   b, GRR_NOT_A_FAR_OFF_DREAM                                 ; $7c00

.done:
	ld   a, b                                                       ; $7c02
	ret                                                             ; $7c03


; Returns $ff in A if requirements unfulfilled, else the rank value
CheckIfRankStatsFocused:
	ld   hl, 830                                   ; $7c04: $21 $3e $03
	call CheckIfTotalStatsLtHL                               ; $7c07: $cd $e3 $7d
	jr   z, .passedTotalStats                              ; $7c0a: $28 $03

	ld   a, $ff                                      ; $7c0c: $3e $ff
	ret                                              ; $7c0e: $c9

.passedTotalStats:
;
	ld   hl, $ca33                                   ; $7c0f: $21 $33 $ca
	ld   a, [sSramVals2+SRAM2_SUMIRE_AFFECTION]                                  ; $7c12: $fa $c2 $af
	ld   [hl+], a                                    ; $7c15: $22
	ld   a, [sSramVals2+SRAM2_MARIA_AFFECTION]                                  ; $7c16: $fa $c3 $af
	ld   [hl+], a                                    ; $7c19: $22
	ld   a, [sSramVals2+SRAM2_IRIS_AFFECTION]                                  ; $7c1a: $fa $c4 $af
	ld   [hl+], a                                    ; $7c1d: $22
	ld   a, [sSramVals2+SRAM2_KANNA_AFFECTION]                                  ; $7c1e: $fa $c6 $af
	ld   [hl+], a                                    ; $7c21: $22
	ld   a, [sSramVals2+SRAM2_KOHRAN_AFFECTION]                                  ; $7c22: $fa $c5 $af
	ld   [hl], a                                     ; $7c25: $77

;
	ld   hl, $ca2d                                   ; $7c26: $21 $2d $ca
	ld   c, $05                                      ; $7c29: $0e $05
	xor  a                                           ; $7c2b: $af

jr_011_7c2c:
	ld   [hl+], a                                    ; $7c2c: $22
	inc  a                                           ; $7c2d: $3c
	dec  c                                           ; $7c2e: $0d
	jr   nz, jr_011_7c2c                             ; $7c2f: $20 $fb

;
	ld   a, $ff                                      ; $7c31: $3e $ff
	ld   [hl], a                                     ; $7c33: $77
	call Call_011_7cc4                               ; $7c34: $cd $c4 $7c
	ld   hl, $ca2d                                   ; $7c37: $21 $2d $ca

jr_011_7c3a:
	ld   a, [hl+]                                    ; $7c3a: $2a
	cp   $ff                                         ; $7c3b: $fe $ff
	ret  z                                           ; $7c3d: $c8

	push hl                                          ; $7c3e: $e5
	rst  JumpTable                                         ; $7c3f: $df
	dw Func_11_7c50
	dw Func_11_7c6c
	dw Func_11_7c82
	dw Func_11_7c98
	dw Func_11_7cae

jr_011_7c4a:
	pop  hl                                          ; $7c4a: $e1
	cp   $ff                                         ; $7c4b: $fe $ff
	jr   z, jr_011_7c3a                              ; $7c4d: $28 $eb

	ret                                              ; $7c4f: $c9


Func_11_7c50:
	ld   a, [wGameResultsBattlesWon]                                  ; $7c50: $fa $24 $ca
	cp   $03                                         ; $7c53: $fe $03
	jr   c, jr_011_7c68                              ; $7c55: $38 $11

	ld   a, [wGameResultsPeeping]                                  ; $7c57: $fa $27 $ca
	or   a                                           ; $7c5a: $b7
	jr   nz, jr_011_7c68                             ; $7c5b: $20 $0b

	ld   a, [sSramVals2+SRAM2_SPEED]                                  ; $7c5d: $fa $d4 $af
	cp   240                                         ; $7c60: $fe $f0
	jr   c, jr_011_7c68                              ; $7c62: $38 $04

	ld   a, GRR_MOON_DIVISION                                      ; $7c64: $3e $04
	jr   jr_011_7c6a                                 ; $7c66: $18 $02

jr_011_7c68:
	ld   a, $ff                                      ; $7c68: $3e $ff

jr_011_7c6a:
	jr   jr_011_7c4a                                 ; $7c6a: $18 $de


Func_11_7c6c:
	ld   a, [wGameResultsBattlesWon]                                  ; $7c6c: $fa $24 $ca
	cp   $03                                         ; $7c6f: $fe $03
	jr   c, jr_011_7c7e                              ; $7c71: $38 $0b

	ld   a, [sSramVals2+SRAM2_ACCURACY]                                  ; $7c73: $fa $d5 $af
	cp   240                                         ; $7c76: $fe $f0
	jr   c, jr_011_7c7e                              ; $7c78: $38 $04

	ld   a, GRR_WIND_DIVISION                                      ; $7c7a: $3e $05
	jr   jr_011_7c80                                 ; $7c7c: $18 $02

jr_011_7c7e:
	ld   a, $ff                                      ; $7c7e: $3e $ff

jr_011_7c80:
	jr   jr_011_7c4a                                 ; $7c80: $18 $c8


Func_11_7c82:
	ld   a, [wGameResultsBattlesWon]                                  ; $7c82: $fa $24 $ca
	cp   $03                                         ; $7c85: $fe $03
	jr   c, jr_011_7c94                              ; $7c87: $38 $0b

	ld   a, [sSramVals2+SRAM2_SPIRIT_POWER]                                  ; $7c89: $fa $d2 $af
	cp   240                                         ; $7c8c: $fe $f0
	jr   c, jr_011_7c94                              ; $7c8e: $38 $04

	ld   a, GRR_DREAM_DIVISION                                      ; $7c90: $3e $02
	jr   jr_011_7c96                                 ; $7c92: $18 $02

jr_011_7c94:
	ld   a, $ff                                      ; $7c94: $3e $ff

jr_011_7c96:
	jr   jr_011_7c4a                                 ; $7c96: $18 $b2


Func_11_7c98:
	ld   a, [wGameResultsBattlesWon]                                  ; $7c98: $fa $24 $ca
	cp   $03                                         ; $7c9b: $fe $03
	jr   c, jr_011_7caa                              ; $7c9d: $38 $0b

	ld   a, [sSramVals2+SRAM2_GUTS]                                  ; $7c9f: $fa $d3 $af
	cp   240                                         ; $7ca2: $fe $f0
	jr   c, jr_011_7caa                              ; $7ca4: $38 $04

	ld   a, GRR_SNOW_DIVISION                                      ; $7ca6: $3e $03
	jr   jr_011_7cac                                 ; $7ca8: $18 $02

jr_011_7caa:
	ld   a, $ff                                      ; $7caa: $3e $ff

jr_011_7cac:
	jr   jr_011_7c4a                                 ; $7cac: $18 $9c


Func_11_7cae:
	ld   a, [wGameResultsBattlesWon]                                  ; $7cae: $fa $24 $ca
	cp   $02                                         ; $7cb1: $fe $02
	jr   c, jr_011_7cc0                              ; $7cb3: $38 $0b

	ld   a, [sSramVals2+SRAM2_INTELLECT]                                  ; $7cb5: $fa $d1 $af
	cp   240                                        ; $7cb8: $fe $f0
	jr   c, jr_011_7cc0                              ; $7cba: $38 $04

	ld   a, GRR_IDEAL_SCIENTIST                                      ; $7cbc: $3e $06
	jr   jr_011_7cc2                                 ; $7cbe: $18 $02

jr_011_7cc0:
	ld   a, $ff                                      ; $7cc0: $3e $ff

jr_011_7cc2:
	jr   jr_011_7c4a                                 ; $7cc2: $18 $86


Call_011_7cc4:
	ld   b, $04                                      ; $7cc4: $06 $04

jr_011_7cc6:
	ld   hl, $ca33                                   ; $7cc6: $21 $33 $ca
	ld   de, $ca2d                                   ; $7cc9: $11 $2d $ca
	ld   c, b                                        ; $7ccc: $48

jr_011_7ccd:
	push bc                                          ; $7ccd: $c5
	ld   a, [hl+]                                    ; $7cce: $2a
	cp   [hl]                                        ; $7ccf: $be
	jr   nc, jr_011_7ce0                             ; $7cd0: $30 $0e

	ld   b, [hl]                                     ; $7cd2: $46
	ld   [hl-], a                                    ; $7cd3: $32
	ld   a, b                                        ; $7cd4: $78
	ld   [hl+], a                                    ; $7cd5: $22
	ld   a, [de]                                     ; $7cd6: $1a
	ld   b, a                                        ; $7cd7: $47
	inc  de                                          ; $7cd8: $13
	ld   a, [de]                                     ; $7cd9: $1a
	ld   c, a                                        ; $7cda: $4f
	ld   a, b                                        ; $7cdb: $78
	ld   [de], a                                     ; $7cdc: $12
	dec  de                                          ; $7cdd: $1b
	ld   a, c                                        ; $7cde: $79
	ld   [de], a                                     ; $7cdf: $12

jr_011_7ce0:
	inc  de                                          ; $7ce0: $13
	pop  bc                                          ; $7ce1: $c1
	dec  c                                           ; $7ce2: $0d
	jr   nz, jr_011_7ccd                             ; $7ce3: $20 $e8

	dec  b                                           ; $7ce5: $05
	jr   nz, jr_011_7cc6                             ; $7ce6: $20 $de

	ret                                              ; $7ce8: $c9


; Returns $ff in A if requirements unfulfilled, else the rank value
CheckIfRankPerfectForAccounting:
	ld   b, $ff                                                     ; $7ce9

; Requires 200+ intellect
	ld   a, [sSramVals2+SRAM2_INTELLECT]                            ; $7ceb
	cp   200                                                        ; $7cee
	jr   c, .done                                                   ; $7cf0

; Requires having finished office work on all 4 weeks
	ld   a, [wGameResultsOfficeWeek1Yuri]                           ; $7cf2
	or   a                                                          ; $7cf5
	jr   z, .done                                                   ; $7cf6

	ld   a, [wGameResultsOfficeWeek2Kasumi]                         ; $7cf8
	or   a                                                          ; $7cfb
	jr   z, .done                                                   ; $7cfc

	ld   a, [wGameResultsOfficeWeek3Yuri]                           ; $7cfe
	or   a                                                          ; $7d01
	jr   z, .done                                                   ; $7d02

	ld   a, [wGameResultsOfficeWeek4Kasumi]                         ; $7d04
	or   a                                                          ; $7d07
	jr   z, .done                                                   ; $7d08

	ld   b, GRR_PERFECT_FOR_ACCOUNTING                              ; $7d0a

.done:
	ld   a, b                                                       ; $7d0c
	ret                                                             ; $7d0d


; Returns $ff in A if requirements unfulfilled, else the rank value
CheckIfRankPerfectSalesClerk:
	ld   b, $ff                                                     ; $7d0e

; Requires finishing Tsubaki's food quiz
	ld   a, [wGameResultsTsubakiFoodQuiz]                           ; $7d10
	or   a                                                          ; $7d13
	jr   z, .done                                                   ; $7d14

; Requires 700+ affection
	ld   hl, 700                                                    ; $7d16
	call CheckIfTotalAffectionLtHL                                  ; $7d19
	jr   nz, .done                                                  ; $7d1c

	ld   b, GRR_PERFECT_SALES_CLERK                                 ; $7d1e

.done:
	ld   a, b                                                       ; $7d20
	ret                                                             ; $7d21


; Returns $ff in A if requirements unfulfilled, else the rank value
CheckIfRankIdealUsher:
	ld   b, $ff                                                     ; $7d22

; Requires 800+ affection
	ld   hl, 800                                                    ; $7d24
	call CheckIfTotalAffectionLtHL                                  ; $7d27
	jr   nz, :+                                                     ; $7d2a
	ld   b, GRR_IDEAL_USHER                                         ; $7d2c
:	ld   a, b                                                       ; $7d2e
	ret                                                             ; $7d2f


; Returns $ff in A if requirements unfulfilled, else the rank value
CheckIfRankFromTheShadows:
	ld   b, $ff                                                     ; $7d30

; Requires 200+ speed
	ld   a, [sSramVals2+SRAM2_SPEED]                                ; $7d32
	cp   200                                                        ; $7d35
	jr   c, :+                                                      ; $7d37
	ld   b, GRR_FROM_THE_SHADOWS                                    ; $7d39
:	ld   a, b                                                       ; $7d3b
	ret                                                             ; $7d3c


; Returns $ff in A if requirements unfulfilled, else the rank value
CheckIfRankCleaningUpAfter:
	ld   b, $ff                                                     ; $7d3d

; Requires not peeping
	ld   a, [wGameResultsPeeping]                                   ; $7d3f
	or   a                                                          ; $7d42
	jr   nz, :+                                                     ; $7d43
	ld   b, GRR_CLEANING_UP_AFTER                                   ; $7d45
:	ld   a, b                                                       ; $7d47
	ret                                                             ; $7d48


; Returns $ff in A if requirements unfulfilled, else the rank value
CheckIfRankWellLiked:
	ld   b, $ff                                                     ; $7d49

; Requires all affection values to be 121+
	ld   a, [sSramVals2+SRAM2_SAKURA_AFFECTION]                     ; $7d4b
	cp   121                                                        ; $7d4e
	jr   c, .done                                                   ; $7d50

	ld   a, [sSramVals2+SRAM2_SUMIRE_AFFECTION]                     ; $7d52
	cp   121                                                        ; $7d55
	jr   c, .done                                                   ; $7d57

	ld   a, [sSramVals2+SRAM2_MARIA_AFFECTION]                      ; $7d59
	cp   121                                                        ; $7d5c
	jr   c, .done                                                   ; $7d5e

	ld   a, [sSramVals2+SRAM2_IRIS_AFFECTION]                       ; $7d60
	cp   121                                                        ; $7d63
	jr   c, .done                                                   ; $7d65

	ld   a, [sSramVals2+SRAM2_KOHRAN_AFFECTION]                     ; $7d67
	cp   121                                                        ; $7d6a
	jr   c, .done                                                   ; $7d6c

	ld   a, [sSramVals2+SRAM2_KANNA_AFFECTION]                      ; $7d6e
	cp   121                                                        ; $7d71
	jr   c, .done                                                   ; $7d73

	ld   b, GRR_WELL_LIKED                                          ; $7d75

.done:
	ld   a, b                                                       ; $7d77
	ret                                                             ; $7d78


; Returns $ff in A if requirements unfulfilled, else the rank value
CheckIfRankCountlessWorlds:
	ld   b, $ff                                                     ; $7d79

; Requires 200+ guts
	ld   a, [sSramVals2+SRAM2_GUTS]                                 ; $7d7b
	cp   200                                                        ; $7d7e
	jr   c, :+                                                      ; $7d80
	ld   b, GRR_COUNTLESS_WORLDS                                    ; $7d82
:	ld   a, b                                                       ; $7d84
	ret                                                             ; $7d85


ProcessStatsTotal:
; Total all stats
	ld   b, $00                                                     ; $7d86
	ld   hl, $0000                                                  ; $7d88
	ld   a, [sSramVals2+SRAM2_INTELLECT]                            ; $7d8b
	ld   c, a                                                       ; $7d8e
	add  hl, bc                                                     ; $7d8f
	ld   a, [sSramVals2+SRAM2_SPIRIT_POWER]                         ; $7d90
	ld   c, a                                                       ; $7d93
	add  hl, bc                                                     ; $7d94
	ld   a, [sSramVals2+SRAM2_GUTS]                                 ; $7d95
	ld   c, a                                                       ; $7d98
	add  hl, bc                                                     ; $7d99
	ld   a, [sSramVals2+SRAM2_SPEED]                                ; $7d9a
	ld   c, a                                                       ; $7d9d
	add  hl, bc                                                     ; $7d9e
	ld   a, [sSramVals2+SRAM2_ACCURACY]                             ; $7d9f
	ld   c, a                                                       ; $7da2
	add  hl, bc                                                     ; $7da3

; Store in wram
	ld   a, l                                                       ; $7da4
	ld   [wGameResultsStatsTotal], a                                ; $7da5
	ld   a, h                                                       ; $7da8
	ld   [wGameResultsStatsTotal+1], a                              ; $7da9
	ret                                                             ; $7dac


ProcessAffectionTotal:
; Total all affection levels
	ld   b, $00                                                     ; $7dad
	ld   hl, $0000                                                  ; $7daf
	ld   a, [sSramVals2+SRAM2_SAKURA_AFFECTION]                     ; $7db2
	ld   c, a                                                       ; $7db5
	add  hl, bc                                                     ; $7db6
	ld   a, [sSramVals2+SRAM2_SUMIRE_AFFECTION]                     ; $7db7
	ld   c, a                                                       ; $7dba
	add  hl, bc                                                     ; $7dbb
	ld   a, [sSramVals2+SRAM2_MARIA_AFFECTION]                      ; $7dbc
	ld   c, a                                                       ; $7dbf
	add  hl, bc                                                     ; $7dc0
	ld   a, [sSramVals2+SRAM2_IRIS_AFFECTION]                       ; $7dc1
	ld   c, a                                                       ; $7dc4
	add  hl, bc                                                     ; $7dc5
	ld   a, [sSramVals2+SRAM2_KOHRAN_AFFECTION]                     ; $7dc6
	ld   c, a                                                       ; $7dc9
	add  hl, bc                                                     ; $7dca
	ld   a, [sSramVals2+SRAM2_KANNA_AFFECTION]                      ; $7dcb
	ld   c, a                                                       ; $7dce
	add  hl, bc                                                     ; $7dcf

; Store in wram
	ld   a, l                                                       ; $7dd0
	ld   [wGameResultsAffectionTotal], a                            ; $7dd1
	ld   a, h                                                       ; $7dd4
	ld   [wGameResultsAffectionTotal+1], a                          ; $7dd5
	ret                                                             ; $7dd8


; Returns $ff if affection < HL, else 0
CheckIfTotalAffectionLtHL:
	ld   a, [wGameResultsAffectionTotal]                            ; $7dd9
	ld   e, a                                                       ; $7ddc
	ld   a, [wGameResultsAffectionTotal+1]                          ; $7ddd
	ld   d, a                                                       ; $7de0
	jr   :+                                                         ; $7de1


; Returns $ff if stats < HL, else 0
CheckIfTotalStatsLtHL:
	ld   a, [wGameResultsStatsTotal]                                ; $7de3
	ld   e, a                                                       ; $7de6
	ld   a, [wGameResultsStatsTotal+1]                              ; $7de7
	ld   d, a                                                       ; $7dea

; If DE < HL, return $ff, else return 0
:	cp   h                                                          ; $7deb
	jr   c, .returnFFh                                              ; $7dec

	jr   nz, .return0                                               ; $7dee

	ld   a, e                                                       ; $7df0
	cp   l                                                          ; $7df1
	jr   c, .returnFFh                                              ; $7df2

.return0:
	and  $00                                                        ; $7df4
	jr   .done                                                      ; $7df6

.returnFFh:
	or   $ff                                                        ; $7df8

.done:
	ret                                                             ; $7dfa


Call_011_7dfb:
	ld   a, [$ca38]                                  ; $7dfb: $fa $38 $ca
	or   a                                           ; $7dfe: $b7
	jr   z, jr_011_7e56                              ; $7dff: $28 $55

	ld   a, [$c9ff]                                  ; $7e01: $fa $ff $c9
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $7e04: $cd $76 $30
	push af                                          ; $7e07: $f5
	ld   a, $43                                      ; $7e08: $3e $43
	ld   [wFarCallAddr], a                                  ; $7e0a: $ea $98 $c2
	ld   a, $41                                      ; $7e0d: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $7e0f: $ea $99 $c2
	ld   a, $01                                      ; $7e12: $3e $01
	ld   [wFarCallBank], a                                  ; $7e14: $ea $9a $c2
	pop  af                                          ; $7e17: $f1
	call FarCall                                       ; $7e18: $cd $62 $09
	ld   a, c                                        ; $7e1b: $79
	cp   $3c                                         ; $7e1c: $fe $3c
	jr   z, jr_011_7e33                              ; $7e1e: $28 $13

	ld   a, $03                                      ; $7e20: $3e $03
	ld   [$ca39], a                                  ; $7e22: $ea $39 $ca
	ld   a, $4f                                      ; $7e25: $3e $4f
	call Func_1d3d                                       ; $7e27: $cd $3d $1d
	or   a                                           ; $7e2a: $b7
	jr   z, jr_011_7e56                              ; $7e2b: $28 $29

	xor  a                                           ; $7e2d: $af
	call PlaySoundEffect                                       ; $7e2e: $cd $df $1a
	jr   jr_011_7e56                                 ; $7e31: $18 $23

jr_011_7e33:
	ld   a, $4f                                      ; $7e33: $3e $4f
	call Func_1d3d                                       ; $7e35: $cd $3d $1d
	or   a                                           ; $7e38: $b7
	jr   z, jr_011_7e4b                              ; $7e39: $28 $10

	ld   hl, $ca39                                   ; $7e3b: $21 $39 $ca
	ld   a, [hl]                                     ; $7e3e: $7e
	or   a                                           ; $7e3f: $b7
	jr   z, jr_011_7e45                              ; $7e40: $28 $03

	dec  [hl]                                        ; $7e42: $35
	jr   nz, jr_011_7e56                             ; $7e43: $20 $11

jr_011_7e45:
	xor  a                                           ; $7e45: $af
	call PlaySoundEffect                                       ; $7e46: $cd $df $1a
	jr   jr_011_7e56                                 ; $7e49: $18 $0b

jr_011_7e4b:
	ld   a, [$ca39]                                  ; $7e4b: $fa $39 $ca
	or   a                                           ; $7e4e: $b7
	jr   z, jr_011_7e56                              ; $7e4f: $28 $05

	ld   a, $4f                                      ; $7e51: $3e $4f
	call PlaySoundEffect                                       ; $7e53: $cd $df $1a

jr_011_7e56:
	ret                                              ; $7e56: $c9


; H - return state
; L - return substate
SetGameResultsState::
; Set return state
	ld   a, h                                                       ; $7e57
	ld   [wGameResultsReturnState], a                               ; $7e58
	ld   a, l                                                       ; $7e5b
	ld   [wGameResultsReturnSubstate], a                            ; $7e5c

; Set new state
	ld   a, GS_GAME_RESULTS                                         ; $7e5f
	ld   [wGameState], a                                            ; $7e61
	ld   a, $00                                                     ; $7e64
	ld   [wGameSubstate], a                                         ; $7e66
	ret                                                             ; $7e69

if def(VWF)

EnMariaMiniGameTitleScreenBank1_8800hHook:
	call RLEXorCopy

	M_FarCall LoadMariaMiniGameTitleScreenGfx1
	ret


EnMariaTSHDMATransferHook:
	call EnqueueHDMATransfer
	rst  WaitUntilVBlankIntHandledIfLCDOn

	ld   c, $81
	ld   de, $9000
	ld   a, $03
	ld   hl, $d800
	ld   b, $4c
	call EnqueueHDMATransfer

	ret


SakuraMiniGameHelpScreenTileAttrHook:
MariaMiniGameHelpScreenTileAttrHook:
	call RLEXorCopy

	M_FarCall AlterMiniGameHelpScreenAttrs
	ret


SakuraMiniGameHelpScreenTileMapHook:
	;call RLEXorCopy

	ld   a, BANK(TileMap_SakuraMiniGameHelpScreen)
	ldbc $14, $12
	ld   de, TileMap_SakuraMiniGameHelpScreen
	ld   hl, $d000
	call FarCopyLayout
	ret


SakuraMiniGameHelpScreenTileDataHook:
	;call RLEXorCopy

	ld   a, BANK(Gfx_SakuraMiniGameHelpScreen)
	ld   bc, Gfx_SakuraMiniGameHelpScreen.end-Gfx_SakuraMiniGameHelpScreen
	ld   de, $d000
	ld   hl, Gfx_SakuraMiniGameHelpScreen
	call FarMemCopy
	ret


MariaMiniGameHelpScreenTileMapHook:
	;call RLEXorCopy

	ld   a, BANK(TileMap_MariaMiniGameHelpScreen)
	ldbc $14, $12
	ld   de, TileMap_MariaMiniGameHelpScreen
	ld   hl, $d000
	call FarCopyLayout
	ret


MariaMiniGameHelpScreenTileDataHook:
	;call RLEXorCopy

	ld   a, BANK(Gfx_MariaMiniGameHelpScreen)
	ld   bc, Gfx_MariaMiniGameHelpScreen.end-Gfx_MariaMiniGameHelpScreen
	ld   de, $d000
	ld   hl, Gfx_MariaMiniGameHelpScreen
	call FarMemCopy
	ret
	
MariaMiniGameMainBank0_8800hHook:
	call RLEXorCopy

	ld   a, BANK(Gfx_MariaMiniGameMain)
	ld   bc, Gfx_MariaMiniGameMain.end-Gfx_MariaMiniGameMain
	ld   de, $8800
	ld   hl, Gfx_MariaMiniGameMain
	call FarMemCopy
	ret


MariaMiniGameMainTileMapHook:
	call RLEXorCopy
	
	ld   a, BANK(TileMap_EnMariaMiniGameMain)
	ldbc $04, $03
	ld   de, TileMap_EnMariaMiniGameMain
	ld   hl, $99ec
	call FarCopyLayout

	ld   a, BANK(TileMap_EnMariaMiniGameMain)
	ldbc $04, $03
	ld   de, TileMap_EnMariaMiniGameMain
	ld   hl, $9a46
	call FarCopyLayout
	ret


MariaMiniGameMainTileAttrHook:
	call RLEXorCopy

	ld   a, $0d
	ld   [$99ed], a
	ld   [$99ee], a
	ld   [$9a47], a
	ld   [$9a48], a
	ret


KannaMiniGameBank0_8800hHook:
	call RLEXorCopy

	M_FarCall EnLoadKannaMiniGameGfx0
	ret


KannaMiniGameBank1_9000hHook:
	call RLEXorCopy

	M_FarCall EnLoadKannaMiniGameGfx1
	ret


SakuraMiniGameBank0_8000hHook:
	call RLEXorCopy

	M_FarCall EnLoadSakuraMiniGameGfx0
	ret


SakuraMiniGameBank1_8800hHook:
	call RLEXorCopy

	M_FarCall EnLoadSakuraMiniGameGfx1
	ret


SakuraMiniGameTileMap1Hook:
	call RLEXorCopy

	ld   hl, $9800
	M_FarCall EnLoadSakuraMiniGameTileMap
	ret


SakuraMiniGameTileMap2Hook:
	call RLEXorCopy

	ld   hl, $d000
	M_FarCall EnLoadSakuraMiniGameTileMap
	ret


SakuraMiniGameTileAttrHook1:
	call RLEXorCopy

	ld   hl, $9800
	M_FarCall EnLoadSakuraMiniGameTileAttr
	ret

endc