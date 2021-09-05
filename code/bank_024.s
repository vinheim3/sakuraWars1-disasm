; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $024", ROMX[$4000], BANK[$24]

GameState2f_Battle::
	ld   a, [wGameSubstate]                                  ; $4000: $fa $a1 $c2
	rst  JumpTable                                         ; $4003: $df
	dw BattleSubstate00
	dw BattleSubstate01
	dw BattleSubstate02
	dw BattleSubstate03
	dw BattleSubstate04
	dw BattleSubstate05
	dw BattleSubstate06
	dw BattleSubstate07
	dw BattleSubstate08
	dw BattleSubstate09
	dw BattleSubstate0a
	dw BattleSubstate0b
	dw BattleSubstate0c
	dw BattleSubstate0d
	dw BattleSubstate0e
	dw BattleSubstate0f
	dw BattleSubstate10
	dw BattleSubstate11
	dw BattleSubstate12
	dw BattleSubstate13
	dw BattleSubstate14
	dw BattleSubstate15
	dw BattleSubstate16
	dw BattleSubstate17
	dw BattleSubstate18
	dw BattleSubstate19
	dw BattleSubstate1a
	dw BattleSubstate1b
	dw BattleSubstate1c
	dw BattleSubstate1d
	dw BattleSubstate1e
	dw BattleSubstate1f
	dw BattleSubstate20
	dw BattleSubstate21
	dw BattleSubstate22
	dw BattleSubstate23
	dw BattleSubstate24
	dw BattleSubstate25
	dw BattleSubstate26
	dw BattleSubstate27
	dw BattleSubstate28
	dw BattleSubstate29
	dw BattleSubstate2a
	dw BattleSubstate2b
	dw BattleSubstate2c
	dw BattleSubstate2d
	dw BattleSubstate2e
	dw BattleSubstate2f
	dw BattleSubstate30
	dw BattleSubstate31
	dw BattleSubstate32
	dw BattleSubstate33
	dw BattleSubstate34
	dw BattleSubstate35
	dw BattleSubstate36
	dw BattleSubstate37
	dw BattleSubstate38
	dw BattleSubstate39
	dw BattleSubstate3a
	dw BattleSubstate3b
	dw BattleSubstate3c
	dw BattleSubstate3d
	dw BattleSubstate3e
	dw BattleSubstate3f
	dw BattleSubstate40
	dw BattleSubstate41
	dw BattleSubstate42
	dw BattleSubstate43
	dw BattleSubstate44
	dw BattleSubstate45
	dw BattleSubstate46
	dw BattleSubstate47
	dw BattleSubstate48
	dw BattleSubstate49
	dw BattleSubstate4a
	dw BattleSubstate4b
	dw BattleSubstate4c
	dw BattleSubstate4d
	dw BattleSubstate4e
	dw BattleSubstate4f
	dw BattleSubstate50
	dw BattleSubstate51


	
	rst  $38                                         ; $40a8: $ff
	ld   a, a                                        ; $40a9: $7f
	rst  $38                                         ; $40aa: $ff
	ld   a, a                                        ; $40ab: $7f
	rst  $38                                         ; $40ac: $ff
	ld   a, a                                        ; $40ad: $7f
	nop                                              ; $40ae: $00
	nop                                              ; $40af: $00


; A -
; B -
; H - return state
; L - return substate
SetBattleState::
	ld   [$ca6f], a                                  ; $40b0: $ea $6f $ca
	ld   a, b                                        ; $40b3: $78
	ld   [$ca70], a                                  ; $40b4: $ea $70 $ca

; Set return state/substate
	ld   a, h                                                       ; $40b7
	ld   [wBattleReturnState], a                                    ; $40b8
	ld   a, l                                                       ; $40bb
	ld   [wBattleReturnSubstate], a                                 ; $40bc

;
	xor  a                                           ; $40bf: $af
	ld   [$ca9f], a                                  ; $40c0: $ea $9f $ca

;
	ld   a, [$ca70]                                  ; $40c3: $fa $70 $ca
	cp   $07                                         ; $40c6: $fe $07
	jr   c, .setState                              ; $40c8: $38 $10

;
	ld   a, [$ca70]                                  ; $40ca: $fa $70 $ca
	sub  $03                                         ; $40cd: $d6 $03
	ld   [$ca70], a                                  ; $40cf: $ea $70 $ca

;
	ld   a, $01                                      ; $40d2: $3e $01
	ld   [$ca9f], a                                  ; $40d4: $ea $9f $ca
	call Call_024_5ec9                               ; $40d7: $cd $c9 $5e

.setState:
; To battle state
	ld   a, GS_BATTLE                                               ; $40da
	ld   [wGameState], a                                            ; $40dc

	ld   a, $00                                                     ; $40df
	ld   [wGameSubstate], a                                         ; $40e1
	ret                                                             ; $40e4


BattleSubstate00:
	call TurnOffLCD                                       ; $40e5: $cd $e3 $08
	ld   a, $ff                                      ; $40e8: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $40ea: $ea $0e $c2
	xor  a                                           ; $40ed: $af
	call PlaySong                                       ; $40ee: $cd $92 $1a
	ld   a, $0c                                      ; $40f1: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $40f3: $ea $13 $c2
	ld   a, $04                                      ; $40f6: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $40f8: $ea $14 $c2
	call ClearOam                                       ; $40fb: $cd $d7 $0d
	call ClearDisplayRegsAllowVBlankInt                                       ; $40fe: $cd $59 $0b
	ld   a, $07                                      ; $4101: $3e $07
	ld   [wLCDC], a                                  ; $4103: $ea $03 $c2
	call ClearBaseAnimSpriteSpecDetails                                       ; $4106: $cd $c9 $2e
	ld   a, $00                                      ; $4109: $3e $00
	ld   [$ca89], a                                  ; $410b: $ea $89 $ca
	ld   [$ca8a], a                                  ; $410e: $ea $8a $ca
	ld   [$ca86], a                                  ; $4111: $ea $86 $ca
	ld   [$ca78], a                                  ; $4114: $ea $78 $ca
	ld   [$caa0], a                                  ; $4117: $ea $a0 $ca
	ld   [$ca76], a                                  ; $411a: $ea $76 $ca
	ld   [$ca75], a                                  ; $411d: $ea $75 $ca
	ld   [$ca97], a                                  ; $4120: $ea $97 $ca
	ld   [$ca9a], a                                  ; $4123: $ea $9a $ca
	ld   a, $00                                      ; $4126: $3e $00
	ld   [$ca98], a                                  ; $4128: $ea $98 $ca
	ld   [$ca99], a                                  ; $412b: $ea $99 $ca
	ld   [$caa1], a                                  ; $412e: $ea $a1 $ca
	call Call_024_6055                               ; $4131: $cd $55 $60
	ld   a, [wWramBank]                                  ; $4134: $fa $93 $c2
	push af                                          ; $4137: $f5
	ld   a, $07                                      ; $4138: $3e $07
	ld   [wWramBank], a                                  ; $413a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $413d: $e0 $70
	ld   hl, $d840                                   ; $413f: $21 $40 $d8
	ld   bc, $0540                                   ; $4142: $01 $40 $05
	call MemClear                                       ; $4145: $cd $95 $09
	pop  af                                          ; $4148: $f1
	ld   [wWramBank], a                                  ; $4149: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $414c: $e0 $70
	ld   a, $01                                      ; $414e: $3e $01
	ld   [$ca71], a                                  ; $4150: $ea $71 $ca

	M_FarCall todo_ClearsAndLoadsGfxForConvoScreens

	ld   a, $00                                      ; $4167: $3e $00

	M_FarCall Func_0a_4930
	M_FarCall Func_0a_4934

	xor  a                                           ; $4191: $af
	ld   [$ca96], a                                  ; $4192: $ea $96 $ca
	ld   a, [$ca9f]                                  ; $4195: $fa $9f $ca
	and  a                                           ; $4198: $a7
	jr   nz, jr_024_41c0                             ; $4199: $20 $25

	ld   a, [$ca6f]                                  ; $419b: $fa $6f $ca
	sla  a                                           ; $419e: $cb $27
	ld   b, $00                                      ; $41a0: $06 $00
	ld   c, a                                        ; $41a2: $4f
	ld   hl, $4294                                   ; $41a3: $21 $94 $42
	add  hl, bc                                      ; $41a6: $09
	ld   a, [hl+]                                    ; $41a7: $2a
	ld   h, [hl]                                     ; $41a8: $66
	ld   l, a                                        ; $41a9: $6f

	M_FarCall CheckIfFlagSet2

	jr   jr_024_41c2                                 ; $41be: $18 $02

jr_024_41c0:
	ld   a, $ff                                      ; $41c0: $3e $ff

jr_024_41c2:
	ld   [$ca96], a                                  ; $41c2: $ea $96 $ca
	ld   a, [$ca79]                                  ; $41c5: $fa $79 $ca
	ld   c, a                                        ; $41c8: $4f
	ld   a, [$ca70]                                  ; $41c9: $fa $70 $ca
	cp   $04                                         ; $41cc: $fe $04
	jr   z, jr_024_41d3                              ; $41ce: $28 $03

	xor  a                                           ; $41d0: $af
	jr   jr_024_41d5                                 ; $41d1: $18 $02

jr_024_41d3:
	ld   a, $01                                      ; $41d3: $3e $01

jr_024_41d5:
	ld   d, a                                        ; $41d5: $57
	ld   a, $64                                      ; $41d6: $3e $64
	ld   b, a                                        ; $41d8: $47
	ld   a, [$ca7b]                                  ; $41d9: $fa $7b $ca

	M_FarCall LoadBattleScreen

	ld   b, $00                                      ; $41f0: $06 $00
	ld   c, $01                                      ; $41f2: $0e $01

	M_FarCall Func_0a_54ba

	ld   a, $0c                                      ; $4208: $3e $0c
	call PlaySong                                       ; $420a: $cd $92 $1a
	ld   a, $07                                      ; $420d: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $420f: $cd $e0 $1c
	call ClearOam                                       ; $4212: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4215: $cd $d3 $2e
	ld   a, [wWramBank]                                  ; $4218: $fa $93 $c2
	push af                                          ; $421b: $f5
	ld   a, $07                                      ; $421c: $3e $07
	ld   [wWramBank], a                                  ; $421e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4221: $e0 $70
	ld   a, $1e                                      ; $4223: $3e $1e
	ld   de, $df19                                   ; $4225: $11 $19 $df
	ld   hl, $687c                                   ; $4228: $21 $7c $68
	ld   bc, $0080                                   ; $422b: $01 $80 $00
	call FarMemCopy                                       ; $422e: $cd $b2 $09
	ld   a, $a2                                      ; $4231: $3e $a2
	ld   de, $df21                                   ; $4233: $11 $21 $df
	ld   hl, $4613                                   ; $4236: $21 $13 $46
	ld   bc, $0008                                   ; $4239: $01 $08 $00
	call FarMemCopy                                       ; $423c: $cd $b2 $09
	ld   a, $24                                      ; $423f: $3e $24
	ld   de, $df19                                   ; $4241: $11 $19 $df
	ld   hl, $42a0                                   ; $4244: $21 $a0 $42
	ld   bc, $0008                                   ; $4247: $01 $08 $00
	call FarMemCopy                                       ; $424a: $cd $b2 $09
	ld   a, [$ca70]                                  ; $424d: $fa $70 $ca
	cp   $04                                         ; $4250: $fe $04
	jr   nz, jr_024_427e                             ; $4252: $20 $2a

	ld   a, $1e                                      ; $4254: $3e $1e
	ld   de, $df19                                   ; $4256: $11 $19 $df
	ld   hl, $697c                                   ; $4259: $21 $7c $69
	ld   bc, $0080                                   ; $425c: $01 $80 $00
	call FarMemCopy                                       ; $425f: $cd $b2 $09
	ld   a, $a2                                      ; $4262: $3e $a2
	ld   de, $df21                                   ; $4264: $11 $21 $df
	ld   hl, $4613                                   ; $4267: $21 $13 $46
	ld   bc, $0008                                   ; $426a: $01 $08 $00
	call FarMemCopy                                       ; $426d: $cd $b2 $09
	ld   a, $24                                      ; $4270: $3e $24
	ld   de, $df19                                   ; $4272: $11 $19 $df
	ld   hl, $42a0                                   ; $4275: $21 $a0 $42
	ld   bc, $0008                                   ; $4278: $01 $08 $00
	call FarMemCopy                                       ; $427b: $cd $b2 $09

jr_024_427e:
	call TurnOnLCD                                       ; $427e: $cd $09 $09
	ld   c, $00                                      ; $4281: $0e $00
	ld   de, $df19                                   ; $4283: $11 $19 $df
	call Call_024_7709                               ; $4286: $cd $09 $77
	pop  af                                          ; $4289: $f1
	ld   [wWramBank], a                                  ; $428a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $428d: $e0 $70
	ld   hl, wGameSubstate                                   ; $428f: $21 $a1 $c2
	inc  [hl]                                        ; $4292: $34
	ret                                              ; $4293: $c9


	call z, $cd00                                    ; $4294: $cc $00 $cd
	nop                                              ; $4297: $00
	adc  $00                                         ; $4298: $ce $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $429a: $cf
	nop                                              ; $429b: $00
	ret  nc                                          ; $429c: $d0

	nop                                              ; $429d: $00
	pop  de                                          ; $429e: $d1
	nop                                              ; $429f: $00
	rst  $38                                         ; $42a0: $ff
	ld   a, a                                        ; $42a1: $7f
	db   $fc                                         ; $42a2: $fc
	ld   [bc], a                                     ; $42a3: $02
	or   h                                           ; $42a4: $b4
	inc  c                                           ; $42a5: $0c
	nop                                              ; $42a6: $00
	nop                                              ; $42a7: $00


BattleSubstate01:
	call ClearOam                                       ; $42a8: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $42ab: $cd $d3 $2e
	ld   a, [$ca9f]                                  ; $42ae: $fa $9f $ca
	and  a                                           ; $42b1: $a7
	jr   nz, jr_024_42de                             ; $42b2: $20 $2a

	ld   a, [$ca70]                                  ; $42b4: $fa $70 $ca
	cp   $00                                         ; $42b7: $fe $00
	jr   z, jr_024_42d3                              ; $42b9: $28 $18

	cp   $01                                         ; $42bb: $fe $01
	jr   z, jr_024_42de                              ; $42bd: $28 $1f

	cp   $02                                         ; $42bf: $fe $02
	jr   z, jr_024_42de                              ; $42c1: $28 $1b

	cp   $03                                         ; $42c3: $fe $03
	jr   z, jr_024_42de                              ; $42c5: $28 $17

	cp   $05                                         ; $42c7: $fe $05
	jr   z, jr_024_42de                              ; $42c9: $28 $13

	cp   $04                                         ; $42cb: $fe $04
	jr   z, jr_024_42e9                              ; $42cd: $28 $1a

	cp   $06                                         ; $42cf: $fe $06
	jr   z, jr_024_42f4                              ; $42d1: $28 $21

jr_024_42d3:
	ld   d, $3d                                      ; $42d3: $16 $3d
	ld   a, d                                        ; $42d5: $7a
	ld   [$ca87], a                                  ; $42d6: $ea $87 $ca
	call Call_024_6bdf                               ; $42d9: $cd $df $6b
	jr   jr_024_42fd                                 ; $42dc: $18 $1f

jr_024_42de:
	ld   d, $3f                                      ; $42de: $16 $3f
	ld   a, d                                        ; $42e0: $7a
	ld   [$ca87], a                                  ; $42e1: $ea $87 $ca
	call Call_024_6bdf                               ; $42e4: $cd $df $6b
	jr   jr_024_42fd                                 ; $42e7: $18 $14

jr_024_42e9:
	ld   d, $40                                      ; $42e9: $16 $40
	ld   a, d                                        ; $42eb: $7a
	ld   [$ca87], a                                  ; $42ec: $ea $87 $ca
	call Call_024_6bdf                               ; $42ef: $cd $df $6b
	jr   jr_024_42fd                                 ; $42f2: $18 $09

jr_024_42f4:
	ld   d, $41                                      ; $42f4: $16 $41
	ld   a, d                                        ; $42f6: $7a
	ld   [$ca87], a                                  ; $42f7: $ea $87 $ca
	call Call_024_6bdf                               ; $42fa: $cd $df $6b

jr_024_42fd:
	ld   hl, wGameSubstate                                   ; $42fd: $21 $a1 $c2
	inc  [hl]                                        ; $4300: $34
	ret                                              ; $4301: $c9


BattleSubstate02:
	call ClearOam                                       ; $4302: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4305: $cd $d3 $2e
	call Call_024_6c6d                               ; $4308: $cd $6d $6c
	ret  nc                                          ; $430b: $d0

	ld   c, $01                                      ; $430c: $0e $01
	ld   de, $8000                                   ; $430e: $11 $00 $80
	ld   a, $8d                                      ; $4311: $3e $8d
	ld   hl, $7fe0                                   ; $4313: $21 $e0 $7f
	ld   b, $02                                      ; $4316: $06 $02
	call EnqueueHDMATransfer                                       ; $4318: $cd $7c $02
	ld   a, $24                                      ; $431b: $3e $24
	ld   hl, $40a8                                   ; $431d: $21 $a8 $40
	ld   de, $c356                                   ; $4320: $11 $56 $c3
	ld   bc, $0008                                   ; $4323: $01 $08 $00
	call FarMemCopy                                       ; $4326: $cd $b2 $09
	ld   bc, $3c3f                                   ; $4329: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $432c: $cd $aa $04
	ld   a, [$ca86]                                  ; $432f: $fa $86 $ca
	srl  a                                           ; $4332: $cb $3f
	srl  a                                           ; $4334: $cb $3f
	and  $07                                         ; $4336: $e6 $07
	ld   b, $4c                                      ; $4338: $06 $4c
	ld   h, $00                                      ; $433a: $26 $00
	ld   l, a                                        ; $433c: $6f
	ld   de, $467e                                   ; $433d: $11 $7e $46
	add  hl, de                                      ; $4340: $19
	ld   a, [hl]                                     ; $4341: $7e
	add  $84                                         ; $4342: $c6 $84
	ld   c, a                                        ; $4344: $4f
	ld   a, $01                                      ; $4345: $3e $01
	ld   [wSpriteGroup], a                                  ; $4347: $ea $1a $c2
	ld   a, $34                                      ; $434a: $3e $34
	call LoadSpriteFromMainTable                                       ; $434c: $cd $16 $0e
	ld   a, [wInGameButtonsHeld]                                  ; $434f: $fa $0f $c2
	and  $02                                         ; $4352: $e6 $02
	jr   nz, jr_024_4365                             ; $4354: $20 $0f

	ld   a, [wInGameButtonsPressed]                                  ; $4356: $fa $10 $c2
	and  $01                                         ; $4359: $e6 $01
	jr   nz, jr_024_4365                             ; $435b: $20 $08

	ld   a, [$ca86]                                  ; $435d: $fa $86 $ca
	inc  a                                           ; $4360: $3c
	ld   [$ca86], a                                  ; $4361: $ea $86 $ca
	ret                                              ; $4364: $c9


jr_024_4365:
	xor  a                                           ; $4365: $af
	ld   [$ca86], a                                  ; $4366: $ea $86 $ca
	xor  a                                           ; $4369: $af
	call PlaySoundEffect                                       ; $436a: $cd $df $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $436d: $cf
	ld   a, $01                                      ; $436e: $3e $01
	call PlaySoundEffect                                       ; $4370: $cd $df $1a
	ld   a, [$ca87]                                  ; $4373: $fa $87 $ca
	cp   $3d                                         ; $4376: $fe $3d
	jr   nz, jr_024_4384                             ; $4378: $20 $0a

	ld   d, $3e                                      ; $437a: $16 $3e
	call Call_024_6bdf                               ; $437c: $cd $df $6b
	ld   hl, wGameSubstate                                   ; $437f: $21 $a1 $c2
	inc  [hl]                                        ; $4382: $34
	ret                                              ; $4383: $c9


jr_024_4384:
	ld   a, $04                                      ; $4384: $3e $04
	ld   [wGameSubstate], a                                  ; $4386: $ea $a1 $c2
	ret                                              ; $4389: $c9


BattleSubstate03:
	call ClearOam                                       ; $438a: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $438d: $cd $d3 $2e
	call Call_024_6c6d                               ; $4390: $cd $6d $6c
	ret  nc                                          ; $4393: $d0

	ld   c, $01                                      ; $4394: $0e $01
	ld   de, $8000                                   ; $4396: $11 $00 $80
	ld   a, $8d                                      ; $4399: $3e $8d
	ld   hl, $7fe0                                   ; $439b: $21 $e0 $7f
	ld   b, $02                                      ; $439e: $06 $02
	call EnqueueHDMATransfer                                       ; $43a0: $cd $7c $02
	ld   a, $24                                      ; $43a3: $3e $24
	ld   hl, $40a8                                   ; $43a5: $21 $a8 $40
	ld   de, $c356                                   ; $43a8: $11 $56 $c3
	ld   bc, $0008                                   ; $43ab: $01 $08 $00
	call FarMemCopy                                       ; $43ae: $cd $b2 $09
	ld   bc, $3c3f                                   ; $43b1: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $43b4: $cd $aa $04
	ld   a, [$ca86]                                  ; $43b7: $fa $86 $ca
	srl  a                                           ; $43ba: $cb $3f
	srl  a                                           ; $43bc: $cb $3f
	and  $07                                         ; $43be: $e6 $07
	ld   b, $4c                                      ; $43c0: $06 $4c
	ld   h, $00                                      ; $43c2: $26 $00
	ld   l, a                                        ; $43c4: $6f
	ld   de, $467e                                   ; $43c5: $11 $7e $46
	add  hl, de                                      ; $43c8: $19
	ld   a, [hl]                                     ; $43c9: $7e
	add  $84                                         ; $43ca: $c6 $84
	ld   c, a                                        ; $43cc: $4f
	ld   a, $01                                      ; $43cd: $3e $01
	ld   [wSpriteGroup], a                                  ; $43cf: $ea $1a $c2
	ld   a, $34                                      ; $43d2: $3e $34
	call LoadSpriteFromMainTable                                       ; $43d4: $cd $16 $0e
	ld   a, [wInGameButtonsHeld]                                  ; $43d7: $fa $0f $c2
	and  $02                                         ; $43da: $e6 $02
	jr   nz, jr_024_43ed                             ; $43dc: $20 $0f

	ld   a, [wInGameButtonsPressed]                                  ; $43de: $fa $10 $c2
	and  $01                                         ; $43e1: $e6 $01
	jr   nz, jr_024_43ed                             ; $43e3: $20 $08

	ld   a, [$ca86]                                  ; $43e5: $fa $86 $ca
	inc  a                                           ; $43e8: $3c
	ld   [$ca86], a                                  ; $43e9: $ea $86 $ca
	ret                                              ; $43ec: $c9


jr_024_43ed:
	xor  a                                           ; $43ed: $af
	ld   [$ca86], a                                  ; $43ee: $ea $86 $ca
	xor  a                                           ; $43f1: $af
	call PlaySoundEffect                                       ; $43f2: $cd $df $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43f5: $cf
	ld   a, $01                                      ; $43f6: $3e $01
	call PlaySoundEffect                                       ; $43f8: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $43fb: $21 $a1 $c2
	inc  [hl]                                        ; $43fe: $34
	ret                                              ; $43ff: $c9


BattleSubstate04:
	ld   a, [$ca6f]                                  ; $4400: $fa $6f $ca
	cp   $00                                         ; $4403: $fe $00
	jr   z, jr_024_441b                              ; $4405: $28 $14

	cp   $05                                         ; $4407: $fe $05
	jr   z, jr_024_441b                              ; $4409: $28 $10

	cp   $01                                         ; $440b: $fe $01
	jr   z, jr_024_441f                              ; $440d: $28 $10

	cp   $03                                         ; $440f: $fe $03
	jr   z, jr_024_441f                              ; $4411: $28 $0c

	cp   $02                                         ; $4413: $fe $02
	jr   z, jr_024_4423                              ; $4415: $28 $0c

	cp   $04                                         ; $4417: $fe $04
	jr   z, jr_024_4423                              ; $4419: $28 $08

jr_024_441b:
	ld   d, $3b                                      ; $441b: $16 $3b
	jr   jr_024_4425                                 ; $441d: $18 $06

jr_024_441f:
	ld   d, $3c                                      ; $441f: $16 $3c
	jr   jr_024_4425                                 ; $4421: $18 $02

jr_024_4423:
	ld   d, $42                                      ; $4423: $16 $42

jr_024_4425:
	call Call_024_6bdf                               ; $4425: $cd $df $6b
	ld   hl, wGameSubstate                                   ; $4428: $21 $a1 $c2
	inc  [hl]                                        ; $442b: $34
	ret                                              ; $442c: $c9


BattleSubstate05:
	call ClearOam                                       ; $442d: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4430: $cd $d3 $2e
	call Call_024_6c6d                               ; $4433: $cd $6d $6c
	ret  nc                                          ; $4436: $d0

	ld   c, $01                                      ; $4437: $0e $01
	ld   de, $8000                                   ; $4439: $11 $00 $80
	ld   a, $8d                                      ; $443c: $3e $8d
	ld   hl, $7fe0                                   ; $443e: $21 $e0 $7f
	ld   b, $02                                      ; $4441: $06 $02
	call EnqueueHDMATransfer                                       ; $4443: $cd $7c $02
	ld   a, $24                                      ; $4446: $3e $24
	ld   hl, $40a8                                   ; $4448: $21 $a8 $40
	ld   de, $c356                                   ; $444b: $11 $56 $c3
	ld   bc, $0008                                   ; $444e: $01 $08 $00
	call FarMemCopy                                       ; $4451: $cd $b2 $09
	ld   bc, $3c3f                                   ; $4454: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4457: $cd $aa $04
	ld   a, [$ca86]                                  ; $445a: $fa $86 $ca
	srl  a                                           ; $445d: $cb $3f
	srl  a                                           ; $445f: $cb $3f
	and  $07                                         ; $4461: $e6 $07
	ld   b, $4c                                      ; $4463: $06 $4c
	ld   h, $00                                      ; $4465: $26 $00
	ld   l, a                                        ; $4467: $6f
	ld   de, $467e                                   ; $4468: $11 $7e $46
	add  hl, de                                      ; $446b: $19
	ld   a, [hl]                                     ; $446c: $7e
	add  $84                                         ; $446d: $c6 $84
	ld   c, a                                        ; $446f: $4f
	ld   a, $01                                      ; $4470: $3e $01
	ld   [wSpriteGroup], a                                  ; $4472: $ea $1a $c2
	ld   a, $34                                      ; $4475: $3e $34
	call LoadSpriteFromMainTable                                       ; $4477: $cd $16 $0e
	ld   a, [wInGameButtonsHeld]                                  ; $447a: $fa $0f $c2
	and  $02                                         ; $447d: $e6 $02
	jr   nz, jr_024_4490                             ; $447f: $20 $0f

	ld   a, [wInGameButtonsPressed]                                  ; $4481: $fa $10 $c2
	and  $01                                         ; $4484: $e6 $01
	jr   nz, jr_024_4490                             ; $4486: $20 $08

	ld   a, [$ca86]                                  ; $4488: $fa $86 $ca
	inc  a                                           ; $448b: $3c
	ld   [$ca86], a                                  ; $448c: $ea $86 $ca
	ret                                              ; $448f: $c9


jr_024_4490:
	xor  a                                           ; $4490: $af
	ld   [$ca86], a                                  ; $4491: $ea $86 $ca
	xor  a                                           ; $4494: $af
	call PlaySoundEffect                                       ; $4495: $cd $df $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4498: $cf
	ld   a, $01                                      ; $4499: $3e $01
	call PlaySoundEffect                                       ; $449b: $cd $df $1a
	xor  a                                           ; $449e: $af
	ld   [$cbe5], a                                  ; $449f: $ea $e5 $cb
	ld   a, $0b                                      ; $44a2: $3e $0b
	ld   [wGameSubstate], a                                  ; $44a4: $ea $a1 $c2
	ret                                              ; $44a7: $c9


BattleSubstate06:
	call ClearOam                                       ; $44a8: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $44ab: $cd $d3 $2e
	ld   hl, wGameSubstate                                   ; $44ae: $21 $a1 $c2
	inc  [hl]                                        ; $44b1: $34
	ret                                              ; $44b2: $c9


BattleSubstate07:
	call ClearOam                                       ; $44b3: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $44b6: $cd $d3 $2e
	call Call_024_7731                               ; $44b9: $cd $31 $77
	ld   a, $00                                      ; $44bc: $3e $00
	ld   [$ca8a], a                                  ; $44be: $ea $8a $ca
	ld   a, [$ca6f]                                  ; $44c1: $fa $6f $ca
	cp   $00                                         ; $44c4: $fe $00
	jr   z, jr_024_44fa                              ; $44c6: $28 $32

	cp   $05                                         ; $44c8: $fe $05
	jr   z, jr_024_44fa                              ; $44ca: $28 $2e

	cp   $01                                         ; $44cc: $fe $01
	jr   z, jr_024_44eb                              ; $44ce: $28 $1b

	cp   $03                                         ; $44d0: $fe $03
	jr   z, jr_024_44eb                              ; $44d2: $28 $17

	cp   $02                                         ; $44d4: $fe $02
	jr   z, jr_024_44dc                              ; $44d6: $28 $04

	cp   $04                                         ; $44d8: $fe $04
	jr   z, jr_024_44dc                              ; $44da: $28 $00

jr_024_44dc:
	ld   a, [$ca71]                                  ; $44dc: $fa $71 $ca
	cp   $00                                         ; $44df: $fe $00
	jr   z, jr_024_450a                              ; $44e1: $28 $27

	cp   $01                                         ; $44e3: $fe $01
	jp   z, Jump_024_452e                            ; $44e5: $ca $2e $45

	jp   Jump_024_4598                               ; $44e8: $c3 $98 $45


jr_024_44eb:
	ld   a, [$ca71]                                  ; $44eb: $fa $71 $ca
	cp   $00                                         ; $44ee: $fe $00
	jr   z, jr_024_452e                              ; $44f0: $28 $3c

	cp   $02                                         ; $44f2: $fe $02
	jp   z, Jump_024_4575                            ; $44f4: $ca $75 $45

	jp   Jump_024_4598                               ; $44f7: $c3 $98 $45


jr_024_44fa:
	ld   a, [$ca71]                                  ; $44fa: $fa $71 $ca
	cp   $02                                         ; $44fd: $fe $02
	jp   z, Jump_024_4552                            ; $44ff: $ca $52 $45

	cp   $01                                         ; $4502: $fe $01
	jp   z, Jump_024_4575                            ; $4504: $ca $75 $45

	jp   Jump_024_4598                               ; $4507: $c3 $98 $45


jr_024_450a:
	ld   d, $39                                      ; $450a: $16 $39
	ld   a, [$ca99]                                  ; $450c: $fa $99 $ca
	cp   d                                           ; $450f: $ba
	jp   z, Jump_024_45ac                            ; $4510: $ca $ac $45

	ld   a, d                                        ; $4513: $7a
	ld   [$ca99], a                                  ; $4514: $ea $99 $ca
	ld   a, $02                                      ; $4517: $3e $02
	ld   [wRandomNumRange], a                                  ; $4519: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $451c: $cd $70 $0c
	call GetRandomNumInPreSpecifiedRange                                       ; $451f: $cd $10 $0d
	cp   $00                                         ; $4522: $fe $00
	jr   z, jr_024_452a                              ; $4524: $28 $04

	ld   d, $39                                      ; $4526: $16 $39
	jr   jr_024_452c                                 ; $4528: $18 $02

jr_024_452a:
	ld   d, $45                                      ; $452a: $16 $45

jr_024_452c:
	jr   jr_024_45a4                                 ; $452c: $18 $76

Jump_024_452e:
jr_024_452e:
	ld   d, $3a                                      ; $452e: $16 $3a
	ld   a, [$ca99]                                  ; $4530: $fa $99 $ca
	cp   d                                           ; $4533: $ba
	jp   z, Jump_024_45ac                            ; $4534: $ca $ac $45

	ld   a, d                                        ; $4537: $7a
	ld   [$ca99], a                                  ; $4538: $ea $99 $ca
	ld   a, $02                                      ; $453b: $3e $02
	ld   [wRandomNumRange], a                                  ; $453d: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $4540: $cd $70 $0c
	call GetRandomNumInPreSpecifiedRange                                       ; $4543: $cd $10 $0d
	cp   $00                                         ; $4546: $fe $00
	jr   z, jr_024_454e                              ; $4548: $28 $04

	ld   d, $3a                                      ; $454a: $16 $3a
	jr   jr_024_4550                                 ; $454c: $18 $02

jr_024_454e:
	ld   d, $46                                      ; $454e: $16 $46

jr_024_4550:
	jr   jr_024_45a4                                 ; $4550: $18 $52

Jump_024_4552:
	ld   d, $37                                      ; $4552: $16 $37
	ld   a, [$ca99]                                  ; $4554: $fa $99 $ca
	cp   d                                           ; $4557: $ba
	jr   z, jr_024_45ac                              ; $4558: $28 $52

	ld   a, d                                        ; $455a: $7a
	ld   [$ca99], a                                  ; $455b: $ea $99 $ca
	ld   a, $02                                      ; $455e: $3e $02
	ld   [wRandomNumRange], a                                  ; $4560: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $4563: $cd $70 $0c
	call GetRandomNumInPreSpecifiedRange                                       ; $4566: $cd $10 $0d
	cp   $00                                         ; $4569: $fe $00
	jr   z, jr_024_4571                              ; $456b: $28 $04

	ld   d, $37                                      ; $456d: $16 $37
	jr   jr_024_4573                                 ; $456f: $18 $02

jr_024_4571:
	ld   d, $43                                      ; $4571: $16 $43

jr_024_4573:
	jr   jr_024_45a4                                 ; $4573: $18 $2f

Jump_024_4575:
	ld   d, $38                                      ; $4575: $16 $38
	ld   a, [$ca99]                                  ; $4577: $fa $99 $ca
	cp   d                                           ; $457a: $ba
	jr   z, jr_024_45ac                              ; $457b: $28 $2f

	ld   a, d                                        ; $457d: $7a
	ld   [$ca99], a                                  ; $457e: $ea $99 $ca
	ld   a, $02                                      ; $4581: $3e $02
	ld   [wRandomNumRange], a                                  ; $4583: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $4586: $cd $70 $0c
	call GetRandomNumInPreSpecifiedRange                                       ; $4589: $cd $10 $0d
	cp   $00                                         ; $458c: $fe $00
	jr   z, jr_024_4594                              ; $458e: $28 $04

	ld   d, $38                                      ; $4590: $16 $38
	jr   jr_024_4596                                 ; $4592: $18 $02

jr_024_4594:
	ld   d, $44                                      ; $4594: $16 $44

jr_024_4596:
	jr   jr_024_45a4                                 ; $4596: $18 $0c

Jump_024_4598:
	ld   d, $00                                      ; $4598: $16 $00
	ld   a, [$ca99]                                  ; $459a: $fa $99 $ca
	cp   d                                           ; $459d: $ba
	jr   z, jr_024_45ac                              ; $459e: $28 $0c

	ld   a, d                                        ; $45a0: $7a
	ld   [$ca99], a                                  ; $45a1: $ea $99 $ca

jr_024_45a4:
	call Call_024_6bdf                               ; $45a4: $cd $df $6b
	ld   hl, wGameSubstate                                   ; $45a7: $21 $a1 $c2
	inc  [hl]                                        ; $45aa: $34
	ret                                              ; $45ab: $c9


Jump_024_45ac:
jr_024_45ac:
	xor  a                                           ; $45ac: $af
	ld   [$cbe5], a                                  ; $45ad: $ea $e5 $cb
	ld   a, $0b                                      ; $45b0: $3e $0b
	ld   [wGameSubstate], a                                  ; $45b2: $ea $a1 $c2
	ret                                              ; $45b5: $c9


BattleSubstate08:
	call ClearOam                                       ; $45b6: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $45b9: $cd $d3 $2e
	ld   b, $00                                      ; $45bc: $06 $00
	ld   c, $01                                      ; $45be: $0e $01
	push af                                          ; $45c0: $f5
	ld   a, $ba                                      ; $45c1: $3e $ba
	ld   [wFarCallAddr], a                                  ; $45c3: $ea $98 $c2
	ld   a, $54                                      ; $45c6: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $45c8: $ea $99 $c2
	ld   a, $0a                                      ; $45cb: $3e $0a
	ld   [wFarCallBank], a                                  ; $45cd: $ea $9a $c2
	pop  af                                          ; $45d0: $f1
	call FarCall                                       ; $45d1: $cd $62 $09
	ld   hl, wGameSubstate                                   ; $45d4: $21 $a1 $c2
	inc  [hl]                                        ; $45d7: $34
	ret                                              ; $45d8: $c9


BattleSubstate09:
	call ClearOam                                       ; $45d9: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $45dc: $cd $d3 $2e
	ld   a, [$ca76]                                  ; $45df: $fa $76 $ca
	ld   b, a                                        ; $45e2: $47
	ld   a, [$ca77]                                  ; $45e3: $fa $77 $ca
	cp   b                                           ; $45e6: $b8
	jr   z, jr_024_45ff                              ; $45e7: $28 $16

	push af                                          ; $45e9: $f5
	ld   a, $a5                                      ; $45ea: $3e $a5
	ld   [wFarCallAddr], a                                  ; $45ec: $ea $98 $c2
	ld   a, $66                                      ; $45ef: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $45f1: $ea $99 $c2
	ld   a, $3e                                      ; $45f4: $3e $3e
	ld   [wFarCallBank], a                                  ; $45f6: $ea $9a $c2
	pop  af                                          ; $45f9: $f1
	call FarCall                                       ; $45fa: $cd $62 $09
	jr   nz, jr_024_4603                             ; $45fd: $20 $04

jr_024_45ff:
	ld   hl, wGameSubstate                                   ; $45ff: $21 $a1 $c2
	inc  [hl]                                        ; $4602: $34

jr_024_4603:
	ret                                              ; $4603: $c9


BattleSubstate0a:
	call ClearOam                                       ; $4604: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4607: $cd $d3 $2e
	call Call_024_6c6d                               ; $460a: $cd $6d $6c
	ret  nc                                          ; $460d: $d0

	ld   c, $01                                      ; $460e: $0e $01
	ld   de, $8000                                   ; $4610: $11 $00 $80
	ld   a, $8d                                      ; $4613: $3e $8d
	ld   hl, $7fe0                                   ; $4615: $21 $e0 $7f
	ld   b, $02                                      ; $4618: $06 $02
	call EnqueueHDMATransfer                                       ; $461a: $cd $7c $02
	ld   a, $24                                      ; $461d: $3e $24
	ld   hl, $40a8                                   ; $461f: $21 $a8 $40
	ld   de, $c356                                   ; $4622: $11 $56 $c3
	ld   bc, $0008                                   ; $4625: $01 $08 $00
	call FarMemCopy                                       ; $4628: $cd $b2 $09
	ld   bc, $3c3f                                   ; $462b: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $462e: $cd $aa $04
	ld   a, [$ca86]                                  ; $4631: $fa $86 $ca
	srl  a                                           ; $4634: $cb $3f
	srl  a                                           ; $4636: $cb $3f
	and  $07                                         ; $4638: $e6 $07
	ld   b, $4c                                      ; $463a: $06 $4c
	ld   h, $00                                      ; $463c: $26 $00
	ld   l, a                                        ; $463e: $6f
	ld   de, $467e                                   ; $463f: $11 $7e $46
	add  hl, de                                      ; $4642: $19
	ld   a, [hl]                                     ; $4643: $7e
	add  $84                                         ; $4644: $c6 $84
	ld   c, a                                        ; $4646: $4f
	ld   a, $01                                      ; $4647: $3e $01
	ld   [wSpriteGroup], a                                  ; $4649: $ea $1a $c2
	ld   a, $34                                      ; $464c: $3e $34
	call LoadSpriteFromMainTable                                       ; $464e: $cd $16 $0e
	ld   a, [wInGameButtonsHeld]                                  ; $4651: $fa $0f $c2
	and  $02                                         ; $4654: $e6 $02
	jr   nz, jr_024_4667                             ; $4656: $20 $0f

	ld   a, [wInGameButtonsPressed]                                  ; $4658: $fa $10 $c2
	and  $01                                         ; $465b: $e6 $01
	jr   nz, jr_024_4667                             ; $465d: $20 $08

	ld   a, [$ca86]                                  ; $465f: $fa $86 $ca
	inc  a                                           ; $4662: $3c
	ld   [$ca86], a                                  ; $4663: $ea $86 $ca
	ret                                              ; $4666: $c9


jr_024_4667:
	xor  a                                           ; $4667: $af
	ld   [$ca86], a                                  ; $4668: $ea $86 $ca
	xor  a                                           ; $466b: $af
	call PlaySoundEffect                                       ; $466c: $cd $df $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $466f: $cf
	ld   a, $01                                      ; $4670: $3e $01
	call PlaySoundEffect                                       ; $4672: $cd $df $1a
	xor  a                                           ; $4675: $af
	ld   [$cbe5], a                                  ; $4676: $ea $e5 $cb
	ld   hl, wGameSubstate                                   ; $4679: $21 $a1 $c2
	inc  [hl]                                        ; $467c: $34
	ret                                              ; $467d: $c9


	nop                                              ; $467e: $00
	ld   bc, $0302                                   ; $467f: $01 $02 $03
	inc  b                                           ; $4682: $04
	inc  bc                                          ; $4683: $03
	ld   [bc], a                                     ; $4684: $02
	db $01 
	
	
BattleSubstate0b:
	call ClearOam ; $4686: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4689: $cd $d3 $2e
	ld   a, [$cbe5]                                  ; $468c: $fa $e5 $cb
	or   a                                           ; $468f: $b7
	jr   nz, jr_024_46aa                             ; $4690: $20 $18

	xor  a                                           ; $4692: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4693: $ea $62 $c3
	ld   a, $0c                                      ; $4696: $3e $0c
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4698: $ea $63 $c3
	ld   a, $03                                      ; $469b: $3e $03
	ld   b, $00                                      ; $469d: $06 $00
	ld   hl, wBGPalettes                                   ; $469f: $21 $de $c2
	ld   c, $24                                      ; $46a2: $0e $24
	ld   de, $46d4                                   ; $46a4: $11 $d4 $46
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $46a7: $cd $48 $07

jr_024_46aa:
	ld   hl, $cbe5                                   ; $46aa: $21 $e5 $cb
	ld   a, [hl]                                     ; $46ad: $7e
	inc  [hl]                                        ; $46ae: $34
	cp   $07                                         ; $46af: $fe $07
	jr   nc, jr_024_46bb                             ; $46b1: $30 $08

	ld   bc, $000c                                   ; $46b3: $01 $0c $00
	call FadePalettesAndSetRangeToUpdate                                       ; $46b6: $cd $32 $08
	jr   jr_024_46d3                                 ; $46b9: $18 $18

jr_024_46bb:
	ld   a, $24                                      ; $46bb: $3e $24
	ld   hl, $46d4                                   ; $46bd: $21 $d4 $46
	ld   de, wBGPalettes                                   ; $46c0: $11 $de $c2
	ld   bc, $0010                                   ; $46c3: $01 $10 $00
	call FarMemCopy                                       ; $46c6: $cd $b2 $09
	ld   bc, $000b                                   ; $46c9: $01 $0b $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $46cc: $cd $aa $04
	ld   hl, wGameSubstate                                   ; $46cf: $21 $a1 $c2
	inc  [hl]                                        ; $46d2: $34

jr_024_46d3:
	ret                                              ; $46d3: $c9


	rst  $38                                         ; $46d4: $ff
	ld   a, a                                        ; $46d5: $7f
	rst  $38                                         ; $46d6: $ff
	ld   a, a                                        ; $46d7: $7f
	rst  $38                                         ; $46d8: $ff
	ld   a, a                                        ; $46d9: $7f
	rst  $38                                         ; $46da: $ff
	ld   a, a                                        ; $46db: $7f
	rst  $38                                         ; $46dc: $ff
	ld   a, a                                        ; $46dd: $7f
	rst  $38                                         ; $46de: $ff
	ld   a, a                                        ; $46df: $7f
	rst  $38                                         ; $46e0: $ff
	ld   a, a                                        ; $46e1: $7f
	rst  $38                                         ; $46e2: $ff
	ld   a, a                                        ; $46e3: $7f
	rst  $38                                         ; $46e4: $ff
	ld   a, a                                        ; $46e5: $7f
	rst  $38                                         ; $46e6: $ff
	ld   a, a                                        ; $46e7: $7f
	rst  $38                                         ; $46e8: $ff
	ld   a, a                                        ; $46e9: $7f
	rst  $38                                         ; $46ea: $ff
	ld   a, a                                        ; $46eb: $7f


BattleSubstate0c:
	call ClearOam                                       ; $46ec: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $46ef: $cd $d3 $2e
	push af                                          ; $46f2: $f5
	ld   a, $cb                                      ; $46f3: $3e $cb
	ld   [wFarCallAddr], a                                  ; $46f5: $ea $98 $c2
	ld   a, $4f                                      ; $46f8: $3e $4f
	ld   [wFarCallAddr+1], a                                  ; $46fa: $ea $99 $c2
	ld   a, $09                                      ; $46fd: $3e $09
	ld   [wFarCallBank], a                                  ; $46ff: $ea $9a $c2
	pop  af                                          ; $4702: $f1
	call FarCall                                       ; $4703: $cd $62 $09
	call ClearTextBoxDimensionsAndSetDefaultTextStyle                                       ; $4706: $cd $09 $14
	ld   bc, $0000                                   ; $4709: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $470c: $cd $34 $14
	ld   bc, $1003                                   ; $470f: $01 $03 $10
	call SetKanjiTextBoxDimensions                                       ; $4712: $cd $24 $14
	call ClearTextBoxDimensionsAndSetDefaultTextStyle                                       ; $4715: $cd $09 $14
	call Call_024_6c8d                               ; $4718: $cd $8d $6c
	ld   a, [wWramBank]                                  ; $471b: $fa $93 $c2
	push af                                          ; $471e: $f5
	ld   a, $02                                      ; $471f: $3e $02
	ld   [wWramBank], a                                  ; $4721: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4724: $e0 $70
	ld   a, [$ca6d]                                  ; $4726: $fa $6d $ca
	sla  a                                           ; $4729: $cb $27
	ld   b, $00                                      ; $472b: $06 $00
	ld   c, a                                        ; $472d: $4f
	ld   b, $00                                      ; $472e: $06 $00
	ld   hl, $4758                                   ; $4730: $21 $58 $47
	add  hl, bc                                      ; $4733: $09
	ld   a, [hl+]                                    ; $4734: $2a
	ld   [$cbe9], a                                  ; $4735: $ea $e9 $cb
	ld   a, [hl]                                     ; $4738: $7e
	ld   [$cbea], a                                  ; $4739: $ea $ea $cb
	xor  a                                           ; $473c: $af
	ld   [$cbe6], a                                  ; $473d: $ea $e6 $cb
	ld   [$cbe7], a                                  ; $4740: $ea $e7 $cb
	ld   [$cbe8], a                                  ; $4743: $ea $e8 $cb
	ld   a, [$ca98]                                  ; $4746: $fa $98 $ca
	inc  a                                           ; $4749: $3c
	ld   [$ca98], a                                  ; $474a: $ea $98 $ca
	pop  af                                          ; $474d: $f1
	ld   [wWramBank], a                                  ; $474e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4751: $e0 $70
	ld   hl, wGameSubstate                                   ; $4753: $21 $a1 $c2
	inc  [hl]                                        ; $4756: $34
	ret                                              ; $4757: $c9


	cp   e                                           ; $4758: $bb
	cp   e                                           ; $4759: $bb
	db   $dd                                         ; $475a: $dd
	ld   e, l                                        ; $475b: $5d
	sub  e                                           ; $475c: $93
	ld   a, $ee                                      ; $475d: $3e $ee
	ld   l, $8b                                      ; $475f: $2e $8b
	dec  h                                           ; $4761: $25
	ld   c, c                                        ; $4762: $49
	rra                                              ; $4763: $1f
	pop  de                                          ; $4764: $d1
	ld   a, [de]                                     ; $4765: $1a
	ld   [hl], a                                     ; $4766: $77
	rla                                              ; $4767: $17
	db   $db                                         ; $4768: $db
	inc  d                                           ; $4769: $14
	push bc                                          ; $476a: $c5
	ld   [de], a                                     ; $476b: $12
	ld   de, $a411                                   ; $476c: $11 $11 $a4
	rrca                                             ; $476f: $0f
	ld   [hl], b                                     ; $4770: $70
	ld   c, $68                                      ; $4771: $0e $68
	dec  c                                           ; $4773: $0d
	add  e                                           ; $4774: $83
	inc  c                                           ; $4775: $0c
	cp   e                                           ; $4776: $bb
	dec  bc                                          ; $4777: $0b
	dec  bc                                          ; $4778: $0b
	dec  bc                                          ; $4779: $0b
	ld   l, l                                        ; $477a: $6d
	ld   a, [bc]                                     ; $477b: $0a
	pop  hl                                          ; $477c: $e1
	add  hl, bc                                      ; $477d: $09
	ld   h, d                                        ; $477e: $62
	add  hl, bc                                      ; $477f: $09
	ldh  a, [$08]                                    ; $4780: $f0 $08
	adc  b                                           ; $4782: $88
	ld   [$0829], sp                                 ; $4783: $08 $29 $08
	jp   nc, $8207                                   ; $4786: $d2 $07 $82

	rlca                                             ; $4789: $07
	jr   c, jr_024_4793                              ; $478a: $38 $07

	di                                               ; $478c: $f3
	ld   b, $b4                                      ; $478d: $06 $b4
	ld   b, $79                                      ; $478f: $06 $79
	ld   b, $41                                      ; $4791: $06 $41

jr_024_4793:
	ld   b, $0e                                      ; $4793: $06 $0e
	ld   b, $dd                                      ; $4795: $06 $dd
	dec  b                                           ; $4797: $05
	or   b                                           ; $4798: $b0
	dec  b                                           ; $4799: $05
	add  l                                           ; $479a: $85
	dec  b                                           ; $479b: $05
	ld   e, l                                        ; $479c: $5d
	dec  b                                           ; $479d: $05
	ld   [hl], $05                                   ; $479e: $36 $05
	ld   [de], a                                     ; $47a0: $12
	dec  b                                           ; $47a1: $05
	ldh  a, [rDIV]                                   ; $47a2: $f0 $04
	ret  nc                                          ; $47a4: $d0

	inc  b                                           ; $47a5: $04
	or   c                                           ; $47a6: $b1
	inc  b                                           ; $47a7: $04
	sub  h                                           ; $47a8: $94
	inc  b                                           ; $47a9: $04
	ld   a, b                                        ; $47aa: $78
	inc  b                                           ; $47ab: $04
	ld   e, l                                        ; $47ac: $5d
	inc  b                                           ; $47ad: $04
	ld   b, h                                        ; $47ae: $44
	inc  b                                           ; $47af: $04
	dec  hl                                          ; $47b0: $2b
	inc  b                                           ; $47b1: $04
	inc  d                                           ; $47b2: $14
	inc  b                                           ; $47b3: $04
	cp   $03                                         ; $47b4: $fe $03
	jp   hl                                          ; $47b6: $e9


	inc  bc                                          ; $47b7: $03
	call nc, $c103                                   ; $47b8: $d4 $03 $c1
	inc  bc                                          ; $47bb: $03
	xor  [hl]                                        ; $47bc: $ae
	inc  bc                                          ; $47bd: $03
	sbc  h                                           ; $47be: $9c
	inc  bc                                          ; $47bf: $03
	adc  d                                           ; $47c0: $8a
	inc  bc                                          ; $47c1: $03
	ld   a, c                                        ; $47c2: $79
	inc  bc                                          ; $47c3: $03
	ld   l, c                                        ; $47c4: $69
	inc  bc                                          ; $47c5: $03
	ld   e, d                                        ; $47c6: $5a
	inc  bc                                          ; $47c7: $03
	ld   c, e                                        ; $47c8: $4b
	inc  bc                                          ; $47c9: $03
	inc  a                                           ; $47ca: $3c
	inc  bc                                          ; $47cb: $03
	ld   l, $03                                      ; $47cc: $2e $03
	jr   nz, jr_024_47d3                             ; $47ce: $20 $03


BattleSubstate0d:
	call ClearOam                                       ; $47d0: $cd $d7 $0d

jr_024_47d3:
	call AnimateAllAnimatedSpriteSpecs                                       ; $47d3: $cd $d3 $2e
	push af                                          ; $47d6: $f5
	ld   a, $dd                                      ; $47d7: $3e $dd
	ld   [wFarCallAddr], a                                  ; $47d9: $ea $98 $c2
	ld   a, $4f                                      ; $47dc: $3e $4f
	ld   [wFarCallAddr+1], a                                  ; $47de: $ea $99 $c2
	ld   a, $09                                      ; $47e1: $3e $09
	ld   [wFarCallBank], a                                  ; $47e3: $ea $9a $c2
	pop  af                                          ; $47e6: $f1
	call FarCall                                       ; $47e7: $cd $62 $09
	ld   a, [$cbe4]                                  ; $47ea: $fa $e4 $cb
	bit  7, a                                        ; $47ed: $cb $7f
	jr   z, jr_024_4820                              ; $47ef: $28 $2f

	ld   a, [$cbec]                                  ; $47f1: $fa $ec $cb
	cp   $ff                                         ; $47f4: $fe $ff
	jr   z, jr_024_4800                              ; $47f6: $28 $08

	ld   b, $00                                      ; $47f8: $06 $00
	ld   c, a                                        ; $47fa: $4f
	ld   hl, $cbef                                   ; $47fb: $21 $ef $cb
	add  hl, bc                                      ; $47fe: $09
	ld   a, [hl]                                     ; $47ff: $7e

jr_024_4800:
	push af                                          ; $4800: $f5
	ld   a, $34                                      ; $4801: $3e $34
	ld   [wFarCallAddr], a                                  ; $4803: $ea $98 $c2
	ld   a, $49                                      ; $4806: $3e $49
	ld   [wFarCallAddr+1], a                                  ; $4808: $ea $99 $c2
	ld   a, $0a                                      ; $480b: $3e $0a
	ld   [wFarCallBank], a                                  ; $480d: $ea $9a $c2
	pop  af                                          ; $4810: $f1
	call FarCall                                       ; $4811: $cd $62 $09
	xor  a                                           ; $4814: $af
	ld   [$cbe5], a                                  ; $4815: $ea $e5 $cb
	xor  a                                           ; $4818: $af
	call PlaySoundEffect                                       ; $4819: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $481c: $21 $a1 $c2
	inc  [hl]                                        ; $481f: $34

jr_024_4820:
	ret                                              ; $4820: $c9


	ld   a, $a2                                      ; $4821: $3e $a2
	ld   de, $df21                                   ; $4823: $11 $21 $df
	ld   hl, $4613                                   ; $4826: $21 $13 $46
	ld   bc, $0008                                   ; $4829: $01 $08 $00
	call FarMemCopy                                       ; $482c: $cd $b2 $09


BattleSubstate0e:
	call ClearOam                                       ; $482f: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4832: $cd $d3 $2e
	ld   a, [$cbe5]                                  ; $4835: $fa $e5 $cb
	or   a                                           ; $4838: $b7
	jr   nz, jr_024_4853                             ; $4839: $20 $18

	xor  a                                           ; $483b: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $483c: $ea $62 $c3
	ld   a, $08                                      ; $483f: $3e $08
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $4841: $ea $63 $c3
	ld   a, $03                                      ; $4844: $3e $03
	ld   b, $00                                      ; $4846: $06 $00
	ld   hl, wBGPalettes                                   ; $4848: $21 $de $c2
	ld   c, $24                                      ; $484b: $0e $24
	ld   de, $48d9                                   ; $484d: $11 $d9 $48
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4850: $cd $48 $07

jr_024_4853:
	ld   hl, $cbe5                                   ; $4853: $21 $e5 $cb
	ld   a, [hl]                                     ; $4856: $7e
	inc  [hl]                                        ; $4857: $34
	cp   $07                                         ; $4858: $fe $07
	jr   nc, jr_024_4865                             ; $485a: $30 $09

	ld   bc, $0008                                   ; $485c: $01 $08 $00
	call FadePalettesAndSetRangeToUpdate                                       ; $485f: $cd $32 $08
	jp   Jump_024_48d8                               ; $4862: $c3 $d8 $48


jr_024_4865:
	ld   a, $24                                      ; $4865: $3e $24
	ld   hl, $48d9                                   ; $4867: $21 $d9 $48
	ld   de, wBGPalettes                                   ; $486a: $11 $de $c2
	ld   bc, $0010                                   ; $486d: $01 $10 $00
	call FarMemCopy                                       ; $4870: $cd $b2 $09
	ld   bc, $0007                                   ; $4873: $01 $07 $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4876: $cd $aa $04
	ld   a, [$cbec]                                  ; $4879: $fa $ec $cb
	cp   $ff                                         ; $487c: $fe $ff
	jr   z, jr_024_48d4                              ; $487e: $28 $54

	ld   c, a                                        ; $4880: $4f
	ld   b, $00                                      ; $4881: $06 $00
	ld   hl, $ca72                                   ; $4883: $21 $72 $ca
	add  hl, bc                                      ; $4886: $09
	call Call_024_77cc                               ; $4887: $cd $cc $77
	jr   c, jr_024_48d4                              ; $488a: $38 $48

	ld   a, [$ca96]                                  ; $488c: $fa $96 $ca
	and  a                                           ; $488f: $a7
	jr   z, jr_024_48d4                              ; $4890: $28 $42

	ld   a, [$ca95]                                  ; $4892: $fa $95 $ca
	and  a                                           ; $4895: $a7
	jr   nz, jr_024_48d4                             ; $4896: $20 $3c

	ld   a, [$ca9f]                                  ; $4898: $fa $9f $ca
	and  a                                           ; $489b: $a7
	jr   nz, jr_024_48a5                             ; $489c: $20 $07

	ld   a, [$ca70]                                  ; $489e: $fa $70 $ca
	cp   $04                                         ; $48a1: $fe $04
	jr   nz, jr_024_48d4                             ; $48a3: $20 $2f

jr_024_48a5:
	ld   a, [$ca7e]                                  ; $48a5: $fa $7e $ca
	cp   $64                                         ; $48a8: $fe $64
	jr   nz, jr_024_48d4                             ; $48aa: $20 $28

	ld   a, [hl]                                     ; $48ac: $7e
	cp   $03                                         ; $48ad: $fe $03
	jr   nz, jr_024_48d4                             ; $48af: $20 $23

	ld   a, [$ca6f]                                  ; $48b1: $fa $6f $ca
	cp   $01                                         ; $48b4: $fe $01
	jr   z, jr_024_48be                              ; $48b6: $28 $06

	cp   $05                                         ; $48b8: $fe $05
	jr   z, jr_024_48c7                              ; $48ba: $28 $0b

	jr   jr_024_48ce                                 ; $48bc: $18 $10

jr_024_48be:
	ld   a, [$ca71]                                  ; $48be: $fa $71 $ca
	cp   $02                                         ; $48c1: $fe $02
	jr   z, jr_024_48d4                              ; $48c3: $28 $0f

	jr   jr_024_48ce                                 ; $48c5: $18 $07

jr_024_48c7:
	ld   a, [$ca71]                                  ; $48c7: $fa $71 $ca
	cp   $01                                         ; $48ca: $fe $01
	jr   nc, jr_024_48d4                             ; $48cc: $30 $06

jr_024_48ce:
	ld   a, $3d                                      ; $48ce: $3e $3d
	ld   [wGameSubstate], a                                  ; $48d0: $ea $a1 $c2
	ret                                              ; $48d3: $c9


jr_024_48d4:
	ld   hl, wGameSubstate                                   ; $48d4: $21 $a1 $c2
	inc  [hl]                                        ; $48d7: $34

Jump_024_48d8:
	ret                                              ; $48d8: $c9


	rst  $38                                         ; $48d9: $ff
	ld   a, a                                        ; $48da: $7f
	db   $fc                                         ; $48db: $fc
	ld   [bc], a                                     ; $48dc: $02
	or   h                                           ; $48dd: $b4
	inc  c                                           ; $48de: $0c
	nop                                              ; $48df: $00
	nop                                              ; $48e0: $00
	rra                                              ; $48e1: $1f
	nop                                              ; $48e2: $00
	dec  d                                           ; $48e3: $15
	nop                                              ; $48e4: $00
	ld   a, [bc]                                     ; $48e5: $0a
	nop                                              ; $48e6: $00
	nop                                              ; $48e7: $00
	nop                                              ; $48e8: $00


BattleSubstate0f:
	call ClearOam                                       ; $48e9: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $48ec: $cd $d3 $2e
	ld   bc, $0001                                   ; $48ef: $01 $01 $00
	push af                                          ; $48f2: $f5
	ld   a, $ba                                      ; $48f3: $3e $ba
	ld   [wFarCallAddr], a                                  ; $48f5: $ea $98 $c2
	ld   a, $54                                      ; $48f8: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $48fa: $ea $99 $c2
	ld   a, $0a                                      ; $48fd: $3e $0a
	ld   [wFarCallBank], a                                  ; $48ff: $ea $9a $c2
	pop  af                                          ; $4902: $f1
	call FarCall                                       ; $4903: $cd $62 $09
	ld   a, [$cbec]                                  ; $4906: $fa $ec $cb
	cp   $ff                                         ; $4909: $fe $ff
	jr   z, jr_024_491e                              ; $490b: $28 $11

	ld   c, a                                        ; $490d: $4f
	ld   b, $00                                      ; $490e: $06 $00
	ld   hl, $ca72                                   ; $4910: $21 $72 $ca
	add  hl, bc                                      ; $4913: $09
	ld   a, [hl]                                     ; $4914: $7e
	cp   $00                                         ; $4915: $fe $00
	jr   nz, jr_024_491e                             ; $4917: $20 $05

	ld   hl, wGameSubstate                                   ; $4919: $21 $a1 $c2
	inc  [hl]                                        ; $491c: $34
	ret                                              ; $491d: $c9


jr_024_491e:
	ld   a, $12                                      ; $491e: $3e $12
	ld   [wGameSubstate], a                                  ; $4920: $ea $a1 $c2
	ret                                              ; $4923: $c9


BattleSubstate10:
	call ClearOam                                       ; $4924: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4927: $cd $d3 $2e
	ld   a, $03                                      ; $492a: $3e $03
	ld   [wRandomNumRange], a                                  ; $492c: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $492f: $cd $70 $0c
	call GetRandomNumInPreSpecifiedRange                                       ; $4932: $cd $10 $0d
	cp   $00                                         ; $4935: $fe $00
	jr   z, jr_024_4942                              ; $4937: $28 $09

	cp   $01                                         ; $4939: $fe $01
	jr   z, jr_024_4947                              ; $493b: $28 $0a

	ld   a, $1f                                      ; $493d: $3e $1f
	ld   d, a                                        ; $493f: $57
	jr   jr_024_494a                                 ; $4940: $18 $08

jr_024_4942:
	ld   a, $0f                                      ; $4942: $3e $0f
	ld   d, a                                        ; $4944: $57
	jr   jr_024_494a                                 ; $4945: $18 $03

jr_024_4947:
	ld   a, $13                                      ; $4947: $3e $13
	ld   d, a                                        ; $4949: $57

jr_024_494a:
	call Call_024_6bdf                               ; $494a: $cd $df $6b
	ld   hl, wGameSubstate                                   ; $494d: $21 $a1 $c2
	inc  [hl]                                        ; $4950: $34
	ret                                              ; $4951: $c9


BattleSubstate11:
	call ClearOam                                       ; $4952: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4955: $cd $d3 $2e
	call Call_024_6c6d                               ; $4958: $cd $6d $6c
	ret  nc                                          ; $495b: $d0

	ld   c, $01                                      ; $495c: $0e $01
	ld   de, $8000                                   ; $495e: $11 $00 $80
	ld   a, $8d                                      ; $4961: $3e $8d
	ld   hl, $7fe0                                   ; $4963: $21 $e0 $7f
	ld   b, $02                                      ; $4966: $06 $02
	call EnqueueHDMATransfer                                       ; $4968: $cd $7c $02
	ld   a, $24                                      ; $496b: $3e $24
	ld   hl, $40a8                                   ; $496d: $21 $a8 $40
	ld   de, $c356                                   ; $4970: $11 $56 $c3
	ld   bc, $0008                                   ; $4973: $01 $08 $00
	call FarMemCopy                                       ; $4976: $cd $b2 $09
	ld   bc, $3c3f                                   ; $4979: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $497c: $cd $aa $04
	ld   a, [$ca86]                                  ; $497f: $fa $86 $ca
	srl  a                                           ; $4982: $cb $3f
	srl  a                                           ; $4984: $cb $3f
	and  $07                                         ; $4986: $e6 $07
	ld   b, $4c                                      ; $4988: $06 $4c
	ld   h, $00                                      ; $498a: $26 $00
	ld   l, a                                        ; $498c: $6f
	ld   de, $467e                                   ; $498d: $11 $7e $46
	add  hl, de                                      ; $4990: $19
	ld   a, [hl]                                     ; $4991: $7e
	add  $84                                         ; $4992: $c6 $84
	ld   c, a                                        ; $4994: $4f
	ld   a, $01                                      ; $4995: $3e $01
	ld   [wSpriteGroup], a                                  ; $4997: $ea $1a $c2
	ld   a, $34                                      ; $499a: $3e $34
	call LoadSpriteFromMainTable                                       ; $499c: $cd $16 $0e
	ld   a, [wInGameButtonsHeld]                                  ; $499f: $fa $0f $c2
	and  $02                                         ; $49a2: $e6 $02
	jr   nz, jr_024_49b5                             ; $49a4: $20 $0f

	ld   a, [wInGameButtonsPressed]                                  ; $49a6: $fa $10 $c2
	and  $01                                         ; $49a9: $e6 $01
	jr   nz, jr_024_49b5                             ; $49ab: $20 $08

	ld   a, [$ca86]                                  ; $49ad: $fa $86 $ca
	inc  a                                           ; $49b0: $3c
	ld   [$ca86], a                                  ; $49b1: $ea $86 $ca
	ret                                              ; $49b4: $c9


jr_024_49b5:
	xor  a                                           ; $49b5: $af
	ld   [$ca86], a                                  ; $49b6: $ea $86 $ca
	xor  a                                           ; $49b9: $af
	call PlaySoundEffect                                       ; $49ba: $cd $df $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49bd: $cf
	ld   a, $01                                      ; $49be: $3e $01
	call PlaySoundEffect                                       ; $49c0: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $49c3: $21 $a1 $c2
	inc  [hl]                                        ; $49c6: $34
	ret                                              ; $49c7: $c9


BattleSubstate12:
	call ClearOam                                       ; $49c8: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $49cb: $cd $d3 $2e
	xor  a                                           ; $49ce: $af
	ld   [$ca8c], a                                  ; $49cf: $ea $8c $ca
	ld   [$ca8e], a                                  ; $49d2: $ea $8e $ca
	call Call_024_6aaa                               ; $49d5: $cd $aa $6a
	cp   $00                                         ; $49d8: $fe $00
	jr   z, jr_024_4a2b                              ; $49da: $28 $4f

	cp   $02                                         ; $49dc: $fe $02
	jr   z, jr_024_4a05                              ; $49de: $28 $25

	cp   $03                                         ; $49e0: $fe $03
	jr   z, jr_024_4a0d                              ; $49e2: $28 $29

	cp   $04                                         ; $49e4: $fe $04
	jr   z, jr_024_4a20                              ; $49e6: $28 $38

	ld   d, $20                                      ; $49e8: $16 $20
	ld   a, [$cbec]                                  ; $49ea: $fa $ec $cb
	cp   $ff                                         ; $49ed: $fe $ff
	jr   z, jr_024_49ff                              ; $49ef: $28 $0e

	ld   c, a                                        ; $49f1: $4f
	ld   b, $00                                      ; $49f2: $06 $00
	ld   hl, $ca72                                   ; $49f4: $21 $72 $ca
	add  hl, bc                                      ; $49f7: $09
	ld   a, [hl]                                     ; $49f8: $7e
	cp   $00                                         ; $49f9: $fe $00
	jr   nz, jr_024_49ff                             ; $49fb: $20 $02

	ld   d, $12                                      ; $49fd: $16 $12

jr_024_49ff:
	ld   a, d                                        ; $49ff: $7a
	ld   [$ca89], a                                  ; $4a00: $ea $89 $ca
	jr   jr_024_4a31                                 ; $4a03: $18 $2c

jr_024_4a05:
	ld   a, $10                                      ; $4a05: $3e $10
	ld   d, a                                        ; $4a07: $57
	ld   [$ca89], a                                  ; $4a08: $ea $89 $ca
	jr   jr_024_4a31                                 ; $4a0b: $18 $24

jr_024_4a0d:
	ld   a, $11                                      ; $4a0d: $3e $11
	ld   d, a                                        ; $4a0f: $57
	ld   [$ca89], a                                  ; $4a10: $ea $89 $ca
	jr   jr_024_4a31                                 ; $4a13: $18 $1c

	ld   a, $01                                      ; $4a15: $3e $01
	ld   d, a                                        ; $4a17: $57
	ld   [$ca89], a                                  ; $4a18: $ea $89 $ca
	ld   [$ca87], a                                  ; $4a1b: $ea $87 $ca
	jr   jr_024_4a31                                 ; $4a1e: $18 $11

jr_024_4a20:
	ld   a, $14                                      ; $4a20: $3e $14
	ld   d, a                                        ; $4a22: $57
	ld   [$ca89], a                                  ; $4a23: $ea $89 $ca
	ld   [$ca87], a                                  ; $4a26: $ea $87 $ca
	jr   jr_024_4a31                                 ; $4a29: $18 $06

jr_024_4a2b:
	ld   a, $19                                      ; $4a2b: $3e $19
	ld   d, a                                        ; $4a2d: $57
	ld   [$ca89], a                                  ; $4a2e: $ea $89 $ca

jr_024_4a31:
	call Call_024_644e                               ; $4a31: $cd $4e $64
	ld   a, [$ca87]                                  ; $4a34: $fa $87 $ca
	ld   d, a                                        ; $4a37: $57
	cp   $0e                                         ; $4a38: $fe $0e
	jr   z, jr_024_4a4c                              ; $4a3a: $28 $10

	cp   $ff                                         ; $4a3c: $fe $ff
	jr   z, jr_024_4a4c                              ; $4a3e: $28 $0c

	cp   $1b                                         ; $4a40: $fe $1b
	jr   z, jr_024_4a4c                              ; $4a42: $28 $08

	call Call_024_6bdf                               ; $4a44: $cd $df $6b
	ld   hl, wGameSubstate                                   ; $4a47: $21 $a1 $c2
	inc  [hl]                                        ; $4a4a: $34
	ret                                              ; $4a4b: $c9


jr_024_4a4c:
	ld   a, $14                                      ; $4a4c: $3e $14
	ld   [wGameSubstate], a                                  ; $4a4e: $ea $a1 $c2
	ret                                              ; $4a51: $c9


BattleSubstate13:
	call ClearOam                                       ; $4a52: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4a55: $cd $d3 $2e
	call Call_024_6c6d                               ; $4a58: $cd $6d $6c
	ret  nc                                          ; $4a5b: $d0

	ld   c, $01                                      ; $4a5c: $0e $01
	ld   de, $8000                                   ; $4a5e: $11 $00 $80
	ld   a, $8d                                      ; $4a61: $3e $8d
	ld   hl, $7fe0                                   ; $4a63: $21 $e0 $7f
	ld   b, $02                                      ; $4a66: $06 $02
	call EnqueueHDMATransfer                                       ; $4a68: $cd $7c $02
	ld   a, $24                                      ; $4a6b: $3e $24
	ld   hl, $40a8                                   ; $4a6d: $21 $a8 $40
	ld   de, $c356                                   ; $4a70: $11 $56 $c3
	ld   bc, $0008                                   ; $4a73: $01 $08 $00
	call FarMemCopy                                       ; $4a76: $cd $b2 $09
	ld   bc, $3c3f                                   ; $4a79: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4a7c: $cd $aa $04
	ld   a, [$ca86]                                  ; $4a7f: $fa $86 $ca
	srl  a                                           ; $4a82: $cb $3f
	srl  a                                           ; $4a84: $cb $3f
	and  $07                                         ; $4a86: $e6 $07
	ld   b, $4c                                      ; $4a88: $06 $4c
	ld   h, $00                                      ; $4a8a: $26 $00
	ld   l, a                                        ; $4a8c: $6f
	ld   de, $467e                                   ; $4a8d: $11 $7e $46
	add  hl, de                                      ; $4a90: $19
	ld   a, [hl]                                     ; $4a91: $7e
	add  $84                                         ; $4a92: $c6 $84
	ld   c, a                                        ; $4a94: $4f
	ld   a, $01                                      ; $4a95: $3e $01
	ld   [wSpriteGroup], a                                  ; $4a97: $ea $1a $c2
	ld   a, $34                                      ; $4a9a: $3e $34
	call LoadSpriteFromMainTable                                       ; $4a9c: $cd $16 $0e
	ld   a, [wInGameButtonsHeld]                                  ; $4a9f: $fa $0f $c2
	and  $02                                         ; $4aa2: $e6 $02
	jr   nz, jr_024_4ab5                             ; $4aa4: $20 $0f

	ld   a, [wInGameButtonsPressed]                                  ; $4aa6: $fa $10 $c2
	and  $01                                         ; $4aa9: $e6 $01
	jr   nz, jr_024_4ab5                             ; $4aab: $20 $08

	ld   a, [$ca86]                                  ; $4aad: $fa $86 $ca
	inc  a                                           ; $4ab0: $3c
	ld   [$ca86], a                                  ; $4ab1: $ea $86 $ca
	ret                                              ; $4ab4: $c9


jr_024_4ab5:
	xor  a                                           ; $4ab5: $af
	ld   [$ca86], a                                  ; $4ab6: $ea $86 $ca
	xor  a                                           ; $4ab9: $af
	call PlaySoundEffect                                       ; $4aba: $cd $df $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4abd: $cf
	ld   a, $01                                      ; $4abe: $3e $01
	call PlaySoundEffect                                       ; $4ac0: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $4ac3: $21 $a1 $c2
	inc  [hl]                                        ; $4ac6: $34
	ret                                              ; $4ac7: $c9


BattleSubstate14:
	call ClearOam                                       ; $4ac8: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4acb: $cd $d3 $2e
	ld   a, [$ca75]                                  ; $4ace: $fa $75 $ca
	cp   $ff                                         ; $4ad1: $fe $ff
	jr   z, jr_024_4afe                              ; $4ad3: $28 $29

	ld   a, [$ca76]                                  ; $4ad5: $fa $76 $ca
	push af                                          ; $4ad8: $f5
	ld   a, $cc                                      ; $4ad9: $3e $cc
	ld   [wFarCallAddr], a                                  ; $4adb: $ea $98 $c2
	ld   a, $65                                      ; $4ade: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $4ae0: $ea $99 $c2
	ld   a, $3e                                      ; $4ae3: $3e $3e
	ld   [wFarCallBank], a                                  ; $4ae5: $ea $9a $c2
	pop  af                                          ; $4ae8: $f1
	call FarCall                                       ; $4ae9: $cd $62 $09
	ld   hl, wGameSubstate                                   ; $4aec: $21 $a1 $c2
	inc  [hl]                                        ; $4aef: $34
	ld   a, $01                                      ; $4af0: $3e $01
	ld   [$c9bc], a                                  ; $4af2: $ea $bc $c9
	ld   a, $00                                      ; $4af5: $3e $00
	ld   [$c9bd], a                                  ; $4af7: $ea $bd $c9
	ld   [$ca86], a                                  ; $4afa: $ea $86 $ca
	ret                                              ; $4afd: $c9


jr_024_4afe:
	ld   a, $1b                                      ; $4afe: $3e $1b
	ld   [wGameSubstate], a                                  ; $4b00: $ea $a1 $c2
	push af                                          ; $4b03: $f5
	ld   a, $3c                                      ; $4b04: $3e $3c
	ld   [wFarCallAddr], a                                  ; $4b06: $ea $98 $c2
	ld   a, $61                                      ; $4b09: $3e $61
	ld   [wFarCallAddr+1], a                                  ; $4b0b: $ea $99 $c2
	ld   a, $3e                                      ; $4b0e: $3e $3e
	ld   [wFarCallBank], a                                  ; $4b10: $ea $9a $c2
	pop  af                                          ; $4b13: $f1
	call FarCall                                       ; $4b14: $cd $62 $09
	push af                                          ; $4b17: $f5
	ld   a, $e9                                      ; $4b18: $3e $e9
	ld   [wFarCallAddr], a                                  ; $4b1a: $ea $98 $c2
	ld   a, $61                                      ; $4b1d: $3e $61
	ld   [wFarCallAddr+1], a                                  ; $4b1f: $ea $99 $c2
	ld   a, $3e                                      ; $4b22: $3e $3e
	ld   [wFarCallBank], a                                  ; $4b24: $ea $9a $c2
	pop  af                                          ; $4b27: $f1
	call FarCall                                       ; $4b28: $cd $62 $09
	ret                                              ; $4b2b: $c9


BattleSubstate15:
	ld   a, $01                                      ; $4b2c: $3e $01
	ld   [$ca8a], a                                  ; $4b2e: $ea $8a $ca
	ld   a, [$ca87]                                  ; $4b31: $fa $87 $ca
	cp   $22                                         ; $4b34: $fe $22
	jr   nz, jr_024_4b5c                             ; $4b36: $20 $24

	ld   de, $5fc6                                   ; $4b38: $11 $c6 $5f
	push af                                          ; $4b3b: $f5
	ld   a, $97                                      ; $4b3c: $3e $97
	ld   [wFarCallAddr], a                                  ; $4b3e: $ea $98 $c2
	ld   a, $5f                                      ; $4b41: $3e $5f
	ld   [wFarCallAddr+1], a                                  ; $4b43: $ea $99 $c2
	ld   a, $3e                                      ; $4b46: $3e $3e
	ld   [wFarCallBank], a                                  ; $4b48: $ea $9a $c2
	pop  af                                          ; $4b4b: $f1
	call FarCall                                       ; $4b4c: $cd $62 $09
	ld   a, [$ca86]                                  ; $4b4f: $fa $86 $ca
	cp   $04                                         ; $4b52: $fe $04
	jr   z, jr_024_4b5c                              ; $4b54: $28 $06

	inc  a                                           ; $4b56: $3c
	ld   [$ca86], a                                  ; $4b57: $ea $86 $ca
	jr   jr_024_4b84                                 ; $4b5a: $18 $28

jr_024_4b5c:
	ld   a, [$ca76]                                  ; $4b5c: $fa $76 $ca
	ld   b, a                                        ; $4b5f: $47
	ld   a, [$ca77]                                  ; $4b60: $fa $77 $ca
	cp   b                                           ; $4b63: $b8
	jr   z, jr_024_4b7c                              ; $4b64: $28 $16

	push af                                          ; $4b66: $f5
	ld   a, $a5                                      ; $4b67: $3e $a5
	ld   [wFarCallAddr], a                                  ; $4b69: $ea $98 $c2
	ld   a, $66                                      ; $4b6c: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $4b6e: $ea $99 $c2
	ld   a, $3e                                      ; $4b71: $3e $3e
	ld   [wFarCallBank], a                                  ; $4b73: $ea $9a $c2
	pop  af                                          ; $4b76: $f1
	call FarCall                                       ; $4b77: $cd $62 $09
	jr   nz, jr_024_4b84                             ; $4b7a: $20 $08

jr_024_4b7c:
	xor  a                                           ; $4b7c: $af
	ld   [$ca86], a                                  ; $4b7d: $ea $86 $ca
	ld   hl, wGameSubstate                                   ; $4b80: $21 $a1 $c2
	inc  [hl]                                        ; $4b83: $34

jr_024_4b84:
	call ClearOam                                       ; $4b84: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4b87: $cd $d3 $2e
	ret                                              ; $4b8a: $c9


BattleSubstate16:
	call ClearOam                                       ; $4b8b: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4b8e: $cd $d3 $2e
	ld   a, [$ca75]                                  ; $4b91: $fa $75 $ca
	push af                                          ; $4b94: $f5
	ld   a, $de                                      ; $4b95: $3e $de
	ld   [wFarCallAddr], a                                  ; $4b97: $ea $98 $c2
	ld   a, $65                                      ; $4b9a: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $4b9c: $ea $99 $c2
	ld   a, $3e                                      ; $4b9f: $3e $3e
	ld   [wFarCallBank], a                                  ; $4ba1: $ea $9a $c2
	pop  af                                          ; $4ba4: $f1
	call FarCall                                       ; $4ba5: $cd $62 $09
	ld   hl, wGameSubstate                                   ; $4ba8: $21 $a1 $c2
	inc  [hl]                                        ; $4bab: $34
	ret                                              ; $4bac: $c9


BattleSubstate17:
	push af                                          ; $4bad: $f5
	ld   a, $ae                                      ; $4bae: $3e $ae
	ld   [wFarCallAddr], a                                  ; $4bb0: $ea $98 $c2
	ld   a, $66                                      ; $4bb3: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $4bb5: $ea $99 $c2
	ld   a, $3e                                      ; $4bb8: $3e $3e
	ld   [wFarCallBank], a                                  ; $4bba: $ea $9a $c2
	pop  af                                          ; $4bbd: $f1
	call FarCall                                       ; $4bbe: $cd $62 $09
	jr   nz, jr_024_4bf7                             ; $4bc1: $20 $34

	ld   hl, $ca79                                   ; $4bc3: $21 $79 $ca
	ld   a, [hl]                                     ; $4bc6: $7e
	push af                                          ; $4bc7: $f5
	ld   a, $fd                                      ; $4bc8: $3e $fd
	ld   [wFarCallAddr], a                                  ; $4bca: $ea $98 $c2
	ld   a, $66                                      ; $4bcd: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $4bcf: $ea $99 $c2
	ld   a, $3e                                      ; $4bd2: $3e $3e
	ld   [wFarCallBank], a                                  ; $4bd4: $ea $9a $c2
	pop  af                                          ; $4bd7: $f1
	call FarCall                                       ; $4bd8: $cd $62 $09
	ld   hl, $ca7b                                   ; $4bdb: $21 $7b $ca
	ld   a, [hl]                                     ; $4bde: $7e
	push af                                          ; $4bdf: $f5
	ld   a, $c7                                      ; $4be0: $3e $c7
	ld   [wFarCallAddr], a                                  ; $4be2: $ea $98 $c2
	ld   a, $66                                      ; $4be5: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $4be7: $ea $99 $c2
	ld   a, $3e                                      ; $4bea: $3e $3e
	ld   [wFarCallBank], a                                  ; $4bec: $ea $9a $c2
	pop  af                                          ; $4bef: $f1
	call FarCall                                       ; $4bf0: $cd $62 $09
	ld   hl, wGameSubstate                                   ; $4bf3: $21 $a1 $c2
	inc  [hl]                                        ; $4bf6: $34

jr_024_4bf7:
	call ClearOam                                       ; $4bf7: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4bfa: $cd $d3 $2e
	ret                                              ; $4bfd: $c9


BattleSubstate18:
	call ClearOam                                       ; $4bfe: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4c01: $cd $d3 $2e
	push af                                          ; $4c04: $f5
	ld   a, $9d                                      ; $4c05: $3e $9d
	ld   [wFarCallAddr], a                                  ; $4c07: $ea $98 $c2
	ld   a, $6b                                      ; $4c0a: $3e $6b
	ld   [wFarCallAddr+1], a                                  ; $4c0c: $ea $99 $c2
	ld   a, $3e                                      ; $4c0f: $3e $3e
	ld   [wFarCallBank], a                                  ; $4c11: $ea $9a $c2
	pop  af                                          ; $4c14: $f1
	call FarCall                                       ; $4c15: $cd $62 $09
	jr   nz, jr_024_4c3d                             ; $4c18: $20 $23

	push af                                          ; $4c1a: $f5
	ld   a, $18                                      ; $4c1b: $3e $18
	ld   [wFarCallAddr], a                                  ; $4c1d: $ea $98 $c2
	ld   a, $67                                      ; $4c20: $3e $67
	ld   [wFarCallAddr+1], a                                  ; $4c22: $ea $99 $c2
	ld   a, $3e                                      ; $4c25: $3e $3e
	ld   [wFarCallBank], a                                  ; $4c27: $ea $9a $c2
	pop  af                                          ; $4c2a: $f1
	call FarCall                                       ; $4c2b: $cd $62 $09
	jr   nz, jr_024_4c3d                             ; $4c2e: $20 $0d

	ld   a, [$ca79]                                  ; $4c30: $fa $79 $ca
	and  a                                           ; $4c33: $a7
	jr   z, jr_024_4c39                              ; $4c34: $28 $03

	call Call_024_7731                               ; $4c36: $cd $31 $77

jr_024_4c39:
	ld   hl, wGameSubstate                                   ; $4c39: $21 $a1 $c2
	inc  [hl]                                        ; $4c3c: $34

jr_024_4c3d:
	ret                                              ; $4c3d: $c9


BattleSubstate19:
	call ClearOam                                       ; $4c3e: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4c41: $cd $d3 $2e
	ld   bc, $0001                                   ; $4c44: $01 $01 $00
	push af                                          ; $4c47: $f5
	ld   a, $ba                                      ; $4c48: $3e $ba
	ld   [wFarCallAddr], a                                  ; $4c4a: $ea $98 $c2
	ld   a, $54                                      ; $4c4d: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $4c4f: $ea $99 $c2
	ld   a, $0a                                      ; $4c52: $3e $0a
	ld   [wFarCallBank], a                                  ; $4c54: $ea $9a $c2
	pop  af                                          ; $4c57: $f1
	call FarCall                                       ; $4c58: $cd $62 $09
	ld   hl, wGameSubstate                                   ; $4c5b: $21 $a1 $c2
	inc  [hl]                                        ; $4c5e: $34
	ret                                              ; $4c5f: $c9


BattleSubstate1a:
	call ClearOam                                       ; $4c60: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4c63: $cd $d3 $2e
	ld   a, [$ca79]                                  ; $4c66: $fa $79 $ca
	and  a                                           ; $4c69: $a7
	jr   z, jr_024_4c91                              ; $4c6a: $28 $25

	ld   a, [$ca76]                                  ; $4c6c: $fa $76 $ca
	ld   b, a                                        ; $4c6f: $47
	ld   a, [$ca77]                                  ; $4c70: $fa $77 $ca
	cp   b                                           ; $4c73: $b8
	jr   z, jr_024_4c8c                              ; $4c74: $28 $16

	push af                                          ; $4c76: $f5
	ld   a, $a5                                      ; $4c77: $3e $a5
	ld   [wFarCallAddr], a                                  ; $4c79: $ea $98 $c2
	ld   a, $66                                      ; $4c7c: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $4c7e: $ea $99 $c2
	ld   a, $3e                                      ; $4c81: $3e $3e
	ld   [wFarCallBank], a                                  ; $4c83: $ea $9a $c2
	pop  af                                          ; $4c86: $f1
	call FarCall                                       ; $4c87: $cd $62 $09
	jr   nz, jr_024_4c90                             ; $4c8a: $20 $04

jr_024_4c8c:
	ld   hl, wGameSubstate                                   ; $4c8c: $21 $a1 $c2
	inc  [hl]                                        ; $4c8f: $34

jr_024_4c90:
	ret                                              ; $4c90: $c9


jr_024_4c91:
	ld   a, $01                                      ; $4c91: $3e $01
	ld   [$ca85], a                                  ; $4c93: $ea $85 $ca
	ld   a, [$c9b2]                                  ; $4c96: $fa $b2 $c9
	cp   $01                                         ; $4c99: $fe $01
	jr   z, jr_024_4cb9                              ; $4c9b: $28 $1c

	ld   a, $01                                      ; $4c9d: $3e $01
	push af                                          ; $4c9f: $f5
	ld   a, $cc                                      ; $4ca0: $3e $cc
	ld   [wFarCallAddr], a                                  ; $4ca2: $ea $98 $c2
	ld   a, $65                                      ; $4ca5: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $4ca7: $ea $99 $c2
	ld   a, $3e                                      ; $4caa: $3e $3e
	ld   [wFarCallBank], a                                  ; $4cac: $ea $9a $c2
	pop  af                                          ; $4caf: $f1
	call FarCall                                       ; $4cb0: $cd $62 $09
	ld   a, $37                                      ; $4cb3: $3e $37
	ld   [wGameSubstate], a                                  ; $4cb5: $ea $a1 $c2
	ret                                              ; $4cb8: $c9


jr_024_4cb9:
	ld   a, $36                                      ; $4cb9: $3e $36
	ld   [wGameSubstate], a                                  ; $4cbb: $ea $a1 $c2
	ret                                              ; $4cbe: $c9


	ld   a, $06                                      ; $4cbf: $3e $06
	ld   [wGameSubstate], a                                  ; $4cc1: $ea $a1 $c2
	ret                                              ; $4cc4: $c9


BattleSubstate1b:
	call ClearOam                                       ; $4cc5: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4cc8: $cd $d3 $2e
	ld   a, [$ca8c]                                  ; $4ccb: $fa $8c $ca
	ld   a, [$ca87]                                  ; $4cce: $fa $87 $ca
	cp   $0e                                         ; $4cd1: $fe $0e
	jr   z, jr_024_4ce8                              ; $4cd3: $28 $13

	cp   $1b                                         ; $4cd5: $fe $1b
	jr   nz, jr_024_4ce2                             ; $4cd7: $20 $09

	ld   d, a                                        ; $4cd9: $57
	call Call_024_6bdf                               ; $4cda: $cd $df $6b
	ld   hl, wGameSubstate                                   ; $4cdd: $21 $a1 $c2
	inc  [hl]                                        ; $4ce0: $34
	ret                                              ; $4ce1: $c9


jr_024_4ce2:
	ld   a, $1d                                      ; $4ce2: $3e $1d
	ld   [wGameSubstate], a                                  ; $4ce4: $ea $a1 $c2
	ret                                              ; $4ce7: $c9


jr_024_4ce8:
	ld   a, $04                                      ; $4ce8: $3e $04
	ld   [wRandomNumRange], a                                  ; $4cea: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $4ced: $cd $70 $0c
	call GetRandomNumInPreSpecifiedRange                                       ; $4cf0: $cd $10 $0d
	cp   $00                                         ; $4cf3: $fe $00
	jr   nz, jr_024_4ce2                             ; $4cf5: $20 $eb

	ld   a, $02                                      ; $4cf7: $3e $02
	ld   [wRandomNumRange], a                                  ; $4cf9: $ea $a5 $c2
	cp   $00                                         ; $4cfc: $fe $00
	jr   nz, jr_024_4d0a                             ; $4cfe: $20 $0a

	ld   d, $07                                      ; $4d00: $16 $07
	call Call_024_6bdf                               ; $4d02: $cd $df $6b
	ld   hl, wGameSubstate                                   ; $4d05: $21 $a1 $c2
	inc  [hl]                                        ; $4d08: $34
	ret                                              ; $4d09: $c9


jr_024_4d0a:
	ld   d, $0e                                      ; $4d0a: $16 $0e
	call Call_024_6bdf                               ; $4d0c: $cd $df $6b
	ld   hl, wGameSubstate                                   ; $4d0f: $21 $a1 $c2
	inc  [hl]                                        ; $4d12: $34
	ret                                              ; $4d13: $c9


BattleSubstate1c:
	call ClearOam                                       ; $4d14: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4d17: $cd $d3 $2e
	ld   a, [$ca87]                                  ; $4d1a: $fa $87 $ca
	cp   $ff                                         ; $4d1d: $fe $ff
	jr   z, jr_024_4d86                              ; $4d1f: $28 $65

	cp   $02                                         ; $4d21: $fe $02
	jr   z, jr_024_4d86                              ; $4d23: $28 $61

	cp   $03                                         ; $4d25: $fe $03
	jr   z, jr_024_4d86                              ; $4d27: $28 $5d

	call Call_024_6c6d                               ; $4d29: $cd $6d $6c
	ret  nc                                          ; $4d2c: $d0

	ld   c, $01                                      ; $4d2d: $0e $01
	ld   de, $8000                                   ; $4d2f: $11 $00 $80
	ld   a, $8d                                      ; $4d32: $3e $8d
	ld   hl, $7fe0                                   ; $4d34: $21 $e0 $7f
	ld   b, $02                                      ; $4d37: $06 $02
	call EnqueueHDMATransfer                                       ; $4d39: $cd $7c $02
	ld   a, $24                                      ; $4d3c: $3e $24
	ld   hl, $40a8                                   ; $4d3e: $21 $a8 $40
	ld   de, $c356                                   ; $4d41: $11 $56 $c3
	ld   bc, $0008                                   ; $4d44: $01 $08 $00
	call FarMemCopy                                       ; $4d47: $cd $b2 $09
	ld   bc, $3c3f                                   ; $4d4a: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4d4d: $cd $aa $04
	ld   a, [$ca86]                                  ; $4d50: $fa $86 $ca
	srl  a                                           ; $4d53: $cb $3f
	srl  a                                           ; $4d55: $cb $3f
	and  $07                                         ; $4d57: $e6 $07
	ld   b, $4c                                      ; $4d59: $06 $4c
	ld   h, $00                                      ; $4d5b: $26 $00
	ld   l, a                                        ; $4d5d: $6f
	ld   de, $467e                                   ; $4d5e: $11 $7e $46
	add  hl, de                                      ; $4d61: $19
	ld   a, [hl]                                     ; $4d62: $7e
	add  $84                                         ; $4d63: $c6 $84
	ld   c, a                                        ; $4d65: $4f
	ld   a, $01                                      ; $4d66: $3e $01
	ld   [wSpriteGroup], a                                  ; $4d68: $ea $1a $c2
	ld   a, $34                                      ; $4d6b: $3e $34
	call LoadSpriteFromMainTable                                       ; $4d6d: $cd $16 $0e
	ld   a, [wInGameButtonsHeld]                                  ; $4d70: $fa $0f $c2
	and  $02                                         ; $4d73: $e6 $02
	jr   nz, jr_024_4d86                             ; $4d75: $20 $0f

	ld   a, [wInGameButtonsPressed]                                  ; $4d77: $fa $10 $c2
	and  $01                                         ; $4d7a: $e6 $01
	jr   nz, jr_024_4d86                             ; $4d7c: $20 $08

	ld   a, [$ca86]                                  ; $4d7e: $fa $86 $ca
	inc  a                                           ; $4d81: $3c
	ld   [$ca86], a                                  ; $4d82: $ea $86 $ca
	ret                                              ; $4d85: $c9


jr_024_4d86:
	xor  a                                           ; $4d86: $af
	ld   [$ca86], a                                  ; $4d87: $ea $86 $ca
	xor  a                                           ; $4d8a: $af
	call PlaySoundEffect                                       ; $4d8b: $cd $df $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d8e: $cf
	ld   a, $01                                      ; $4d8f: $3e $01
	call PlaySoundEffect                                       ; $4d91: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $4d94: $21 $a1 $c2
	inc  [hl]                                        ; $4d97: $34
	ret                                              ; $4d98: $c9


BattleSubstate1d:
	call ClearOam                                       ; $4d99: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4d9c: $cd $d3 $2e
	ld   a, [$ca98]                                  ; $4d9f: $fa $98 $ca
	cp   $06                                         ; $4da2: $fe $06
	jr   c, jr_024_4df1                              ; $4da4: $38 $4b

	xor  a                                           ; $4da6: $af
	ld   [$ca98], a                                  ; $4da7: $ea $98 $ca
	ld   hl, $4df7                                   ; $4daa: $21 $f7 $4d
	ld   a, [$ca70]                                  ; $4dad: $fa $70 $ca
	sla  a                                           ; $4db0: $cb $27
	ld   b, $00                                      ; $4db2: $06 $00
	ld   c, a                                        ; $4db4: $4f
	add  hl, bc                                      ; $4db5: $09
	ld   a, [hl+]                                    ; $4db6: $2a
	ld   h, [hl]                                     ; $4db7: $66
	ld   l, a                                        ; $4db8: $6f
	ld   a, [hl+]                                    ; $4db9: $2a
	ld   b, a                                        ; $4dba: $47
	ld   a, [hl+]                                    ; $4dbb: $2a
	ld   c, a                                        ; $4dbc: $4f
	ld   a, [$ca79]                                  ; $4dbd: $fa $79 $ca
	cp   b                                           ; $4dc0: $b8
	jr   nc, jr_024_4dc6                             ; $4dc1: $30 $03

	xor  a                                           ; $4dc3: $af
	jr   jr_024_4dc7                                 ; $4dc4: $18 $01

jr_024_4dc6:
	sub  b                                           ; $4dc6: $90

jr_024_4dc7:
	ld   d, a                                        ; $4dc7: $57
	ld   a, [$ca7b]                                  ; $4dc8: $fa $7b $ca
	cp   d                                           ; $4dcb: $ba
	jr   c, jr_024_4de7                              ; $4dcc: $38 $19

	ld   a, d                                        ; $4dce: $7a
	cp   c                                           ; $4dcf: $b9
	jr   c, jr_024_4dd6                              ; $4dd0: $38 $04

	ld   a, b                                        ; $4dd2: $78
	add  c                                           ; $4dd3: $81
	jr   jr_024_4dd8                                 ; $4dd4: $18 $02

jr_024_4dd6:
	add  b                                           ; $4dd6: $80
	add  b                                           ; $4dd7: $80

jr_024_4dd8:
	ld   d, a                                        ; $4dd8: $57
	ld   a, [$ca7b]                                  ; $4dd9: $fa $7b $ca
	cp   d                                           ; $4ddc: $ba
	jr   c, jr_024_4de3                              ; $4ddd: $38 $04

	ld   d, $1d                                      ; $4ddf: $16 $1d
	jr   jr_024_4de9                                 ; $4de1: $18 $06

jr_024_4de3:
	ld   d, $1c                                      ; $4de3: $16 $1c
	jr   jr_024_4de9                                 ; $4de5: $18 $02

jr_024_4de7:
	ld   d, $06                                      ; $4de7: $16 $06

jr_024_4de9:
	call Call_024_6bdf                               ; $4de9: $cd $df $6b
	ld   hl, wGameSubstate                                   ; $4dec: $21 $a1 $c2
	inc  [hl]                                        ; $4def: $34
	ret                                              ; $4df0: $c9


jr_024_4df1:
	ld   a, $20                                      ; $4df1: $3e $20
	ld   [wGameSubstate], a                                  ; $4df3: $ea $a1 $c2
	ret                                              ; $4df6: $c9


	dec  b                                           ; $4df7: $05
	ld   c, [hl]                                     ; $4df8: $4e
	rlca                                             ; $4df9: $07
	ld   c, [hl]                                     ; $4dfa: $4e
	add  hl, bc                                      ; $4dfb: $09
	ld   c, [hl]                                     ; $4dfc: $4e
	dec  bc                                          ; $4dfd: $0b
	ld   c, [hl]                                     ; $4dfe: $4e
	dec  c                                           ; $4dff: $0d
	ld   c, [hl]                                     ; $4e00: $4e
	rrca                                             ; $4e01: $0f
	ld   c, [hl]                                     ; $4e02: $4e
	ld   de, $074e                                   ; $4e03: $11 $4e $07
	ccf                                              ; $4e06: $3f
	inc  c                                           ; $4e07: $0c
	ld   l, h                                        ; $4e08: $6c
	db   $10                                         ; $4e09: $10
	sub  b                                           ; $4e0a: $90
	inc  d                                           ; $4e0b: $14
	or   h                                           ; $4e0c: $b4
	add  hl, de                                      ; $4e0d: $19
	pop  hl                                          ; $4e0e: $e1
	ld   d, $c6                                      ; $4e0f: $16 $c6
	ld   d, $c6                                      ; $4e11: $16 $c6


BattleSubstate1e:
	call ClearOam                                       ; $4e13: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4e16: $cd $d3 $2e
	call Call_024_6c6d                               ; $4e19: $cd $6d $6c
	ret  nc                                          ; $4e1c: $d0

	ld   c, $01                                      ; $4e1d: $0e $01
	ld   de, $8000                                   ; $4e1f: $11 $00 $80
	ld   a, $8d                                      ; $4e22: $3e $8d
	ld   hl, $7fe0                                   ; $4e24: $21 $e0 $7f
	ld   b, $02                                      ; $4e27: $06 $02
	call EnqueueHDMATransfer                                       ; $4e29: $cd $7c $02
	ld   a, $24                                      ; $4e2c: $3e $24
	ld   hl, $40a8                                   ; $4e2e: $21 $a8 $40
	ld   de, $c356                                   ; $4e31: $11 $56 $c3
	ld   bc, $0008                                   ; $4e34: $01 $08 $00
	call FarMemCopy                                       ; $4e37: $cd $b2 $09
	ld   bc, $3c3f                                   ; $4e3a: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4e3d: $cd $aa $04
	ld   a, [$ca86]                                  ; $4e40: $fa $86 $ca
	srl  a                                           ; $4e43: $cb $3f
	srl  a                                           ; $4e45: $cb $3f
	and  $07                                         ; $4e47: $e6 $07
	ld   b, $4c                                      ; $4e49: $06 $4c
	ld   h, $00                                      ; $4e4b: $26 $00
	ld   l, a                                        ; $4e4d: $6f
	ld   de, $467e                                   ; $4e4e: $11 $7e $46
	add  hl, de                                      ; $4e51: $19
	ld   a, [hl]                                     ; $4e52: $7e
	add  $84                                         ; $4e53: $c6 $84
	ld   c, a                                        ; $4e55: $4f
	ld   a, $01                                      ; $4e56: $3e $01
	ld   [wSpriteGroup], a                                  ; $4e58: $ea $1a $c2
	ld   a, $34                                      ; $4e5b: $3e $34
	call LoadSpriteFromMainTable                                       ; $4e5d: $cd $16 $0e
	ld   a, [wInGameButtonsHeld]                                  ; $4e60: $fa $0f $c2
	and  $02                                         ; $4e63: $e6 $02
	jr   nz, jr_024_4e76                             ; $4e65: $20 $0f

	ld   a, [wInGameButtonsPressed]                                  ; $4e67: $fa $10 $c2
	and  $01                                         ; $4e6a: $e6 $01
	jr   nz, jr_024_4e76                             ; $4e6c: $20 $08

	ld   a, [$ca86]                                  ; $4e6e: $fa $86 $ca
	inc  a                                           ; $4e71: $3c
	ld   [$ca86], a                                  ; $4e72: $ea $86 $ca
	ret                                              ; $4e75: $c9


jr_024_4e76:
	xor  a                                           ; $4e76: $af
	ld   [$ca86], a                                  ; $4e77: $ea $86 $ca
	xor  a                                           ; $4e7a: $af
	call PlaySoundEffect                                       ; $4e7b: $cd $df $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e7e: $cf
	ld   a, $01                                      ; $4e7f: $3e $01
	call PlaySoundEffect                                       ; $4e81: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $4e84: $21 $a1 $c2
	inc  [hl]                                        ; $4e87: $34
	ret                                              ; $4e88: $c9


BattleSubstate1f:
	call ClearOam                                       ; $4e89: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4e8c: $cd $d3 $2e
	ld   d, $04                                      ; $4e8f: $16 $04
	ld   a, [$ca70]                                  ; $4e91: $fa $70 $ca
	cp   $04                                         ; $4e94: $fe $04
	jr   nz, jr_024_4e9a                             ; $4e96: $20 $02

	ld   d, $00                                      ; $4e98: $16 $00

jr_024_4e9a:
	ld   b, $11                                      ; $4e9a: $06 $11
	ld   hl, wGameSubstate                                   ; $4e9c: $21 $a1 $c2
	inc  [hl]                                        ; $4e9f: $34
	ret                                              ; $4ea0: $c9


BattleSubstate20:
	call ClearOam                                       ; $4ea1: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4ea4: $cd $d3 $2e
	ld   a, [$ca7e]                                  ; $4ea7: $fa $7e $ca
	push af                                          ; $4eaa: $f5
	ld   a, $e2                                      ; $4eab: $3e $e2
	ld   [wFarCallAddr], a                                  ; $4ead: $ea $98 $c2
	ld   a, $66                                      ; $4eb0: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $4eb2: $ea $99 $c2
	ld   a, $3e                                      ; $4eb5: $3e $3e
	ld   [wFarCallBank], a                                  ; $4eb7: $ea $9a $c2
	pop  af                                          ; $4eba: $f1
	call FarCall                                       ; $4ebb: $cd $62 $09
	ld   hl, wGameSubstate                                   ; $4ebe: $21 $a1 $c2
	inc  [hl]                                        ; $4ec1: $34
	ret                                              ; $4ec2: $c9


BattleSubstate21:
	call ClearOam                                       ; $4ec3: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4ec6: $cd $d3 $2e
	ld   a, [$ca9a]                                  ; $4ec9: $fa $9a $ca
	cp   $ff                                         ; $4ecc: $fe $ff
	jr   nz, jr_024_4edd                             ; $4ece: $20 $0d

	xor  a                                           ; $4ed0: $af
	call PlaySoundEffect                                       ; $4ed1: $cd $df $1a
	ld   a, $0f                                      ; $4ed4: $3e $0f
	call PlaySoundEffect                                       ; $4ed6: $cd $df $1a
	xor  a                                           ; $4ed9: $af
	ld   [$ca9a], a                                  ; $4eda: $ea $9a $ca

jr_024_4edd:
	push af                                          ; $4edd: $f5
	ld   a, $33                                      ; $4ede: $3e $33
	ld   [wFarCallAddr], a                                  ; $4ee0: $ea $98 $c2
	ld   a, $67                                      ; $4ee3: $3e $67
	ld   [wFarCallAddr+1], a                                  ; $4ee5: $ea $99 $c2
	ld   a, $3e                                      ; $4ee8: $3e $3e
	ld   [wFarCallBank], a                                  ; $4eea: $ea $9a $c2
	pop  af                                          ; $4eed: $f1
	call FarCall                                       ; $4eee: $cd $62 $09
	jr   nz, jr_024_4ef7                             ; $4ef1: $20 $04

	ld   hl, wGameSubstate                                   ; $4ef3: $21 $a1 $c2
	inc  [hl]                                        ; $4ef6: $34

jr_024_4ef7:
	ret                                              ; $4ef7: $c9


BattleSubstate22:
	call ClearOam                                       ; $4ef8: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4efb: $cd $d3 $2e
	ld   a, [$caa0]                                  ; $4efe: $fa $a0 $ca
	cp   $00                                         ; $4f01: $fe $00
	jr   z, jr_024_4f09                              ; $4f03: $28 $04

	dec  a                                           ; $4f05: $3d
	ld   [$caa0], a                                  ; $4f06: $ea $a0 $ca

jr_024_4f09:
	ld   a, [$ca78]                                  ; $4f09: $fa $78 $ca
	cp   $00                                         ; $4f0c: $fe $00
	jr   z, jr_024_4f19                              ; $4f0e: $28 $09

	cp   $01                                         ; $4f10: $fe $01
	jp   z, Jump_024_4feb                            ; $4f12: $ca $eb $4f

	dec  a                                           ; $4f15: $3d
	ld   [$ca78], a                                  ; $4f16: $ea $78 $ca

jr_024_4f19:
	xor  a                                           ; $4f19: $af
	ld   [$ca8c], a                                  ; $4f1a: $ea $8c $ca
	ld   [$ca8e], a                                  ; $4f1d: $ea $8e $ca
	ld   a, [$ca78]                                  ; $4f20: $fa $78 $ca
	and  a                                           ; $4f23: $a7
	jp   nz, Jump_024_4fc1                           ; $4f24: $c2 $c1 $4f

	call Call_024_6b7b                               ; $4f27: $cd $7b $6b
	cp   $01                                         ; $4f2a: $fe $01
	jr   z, jr_024_4f88                              ; $4f2c: $28 $5a

	ld   a, [$ca8c]                                  ; $4f2e: $fa $8c $ca
	cp   $02                                         ; $4f31: $fe $02
	jr   nz, jr_024_4f3d                             ; $4f33: $20 $08

	ld   hl, $ca71                                   ; $4f35: $21 $71 $ca
	dec  [hl]                                        ; $4f38: $35
	ld   a, $10                                      ; $4f39: $3e $10
	jr   jr_024_4f43                                 ; $4f3b: $18 $06

jr_024_4f3d:
	ld   hl, $ca71                                   ; $4f3d: $21 $71 $ca
	inc  [hl]                                        ; $4f40: $34
	ld   a, $11                                      ; $4f41: $3e $11

jr_024_4f43:
	ld   d, a                                        ; $4f43: $57
	call Call_024_6bdf                               ; $4f44: $cd $df $6b
	call Call_024_7731                               ; $4f47: $cd $31 $77
	ld   a, [$ca76]                                  ; $4f4a: $fa $76 $ca
	ld   [$ca77], a                                  ; $4f4d: $ea $77 $ca
	ld   a, $11                                      ; $4f50: $3e $11
	ld   [$ca89], a                                  ; $4f52: $ea $89 $ca
	xor  a                                           ; $4f55: $af
	ld   [$ca76], a                                  ; $4f56: $ea $76 $ca
	call Func_24_7657                                       ; $4f59: $cd $57 $76
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f5c: $cf
	ld   d, $04                                      ; $4f5d: $16 $04
	ld   a, [$ca70]                                  ; $4f5f: $fa $70 $ca
	cp   $04                                         ; $4f62: $fe $04
	jr   nz, jr_024_4f68                             ; $4f64: $20 $02

	ld   d, $00                                      ; $4f66: $16 $00

jr_024_4f68:
	ld   b, $11                                      ; $4f68: $06 $11
	ld   a, $00                                      ; $4f6a: $3e $00
	add  d                                           ; $4f6c: $82
	ld   c, a                                        ; $4f6d: $4f
	push af                                          ; $4f6e: $f5
	ld   a, $ba                                      ; $4f6f: $3e $ba
	ld   [wFarCallAddr], a                                  ; $4f71: $ea $98 $c2
	ld   a, $54                                      ; $4f74: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $4f76: $ea $99 $c2
	ld   a, $0a                                      ; $4f79: $3e $0a
	ld   [wFarCallBank], a                                  ; $4f7b: $ea $9a $c2
	pop  af                                          ; $4f7e: $f1
	call FarCall                                       ; $4f7f: $cd $62 $09
	ld   a, $50                                      ; $4f82: $3e $50
	ld   [wGameSubstate], a                                  ; $4f84: $ea $a1 $c2
	ret                                              ; $4f87: $c9


jr_024_4f88:
	ld   a, [$ca76]                                  ; $4f88: $fa $76 $ca
	ld   [$ca77], a                                  ; $4f8b: $ea $77 $ca
	ld   a, [$ca71]                                  ; $4f8e: $fa $71 $ca
	cp   $00                                         ; $4f91: $fe $00
	jr   z, jr_024_4f99                              ; $4f93: $28 $04

	ld   a, $02                                      ; $4f95: $3e $02
	jr   jr_024_4f9b                                 ; $4f97: $18 $02

jr_024_4f99:
	ld   a, $03                                      ; $4f99: $3e $03

jr_024_4f9b:
	ld   [$ca76], a                                  ; $4f9b: $ea $76 $ca
	push af                                          ; $4f9e: $f5
	ld   a, $cc                                      ; $4f9f: $3e $cc
	ld   [wFarCallAddr], a                                  ; $4fa1: $ea $98 $c2
	ld   a, $65                                      ; $4fa4: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $4fa6: $ea $99 $c2
	ld   a, $3e                                      ; $4fa9: $3e $3e
	ld   [wFarCallBank], a                                  ; $4fab: $ea $9a $c2
	pop  af                                          ; $4fae: $f1
	call FarCall                                       ; $4faf: $cd $62 $09
	ld   d, $16                                      ; $4fb2: $16 $16
	call Call_024_6bdf                               ; $4fb4: $cd $df $6b
	ld   hl, wGameSubstate                                   ; $4fb7: $21 $a1 $c2
	inc  [hl]                                        ; $4fba: $34
	ld   a, $00                                      ; $4fbb: $3e $00
	ld   [$ca89], a                                  ; $4fbd: $ea $89 $ca
	ret                                              ; $4fc0: $c9


Jump_024_4fc1:
	ld   a, [$ca76]                                  ; $4fc1: $fa $76 $ca
	ld   [$ca77], a                                  ; $4fc4: $ea $77 $ca
	ld   a, $01                                      ; $4fc7: $3e $01
	ld   [$ca76], a                                  ; $4fc9: $ea $76 $ca
	push af                                          ; $4fcc: $f5
	ld   a, $cc                                      ; $4fcd: $3e $cc
	ld   [wFarCallAddr], a                                  ; $4fcf: $ea $98 $c2
	ld   a, $65                                      ; $4fd2: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $4fd4: $ea $99 $c2
	ld   a, $3e                                      ; $4fd7: $3e $3e
	ld   [wFarCallBank], a                                  ; $4fd9: $ea $9a $c2
	pop  af                                          ; $4fdc: $f1
	call FarCall                                       ; $4fdd: $cd $62 $09
	ld   d, $17                                      ; $4fe0: $16 $17
	call Call_024_6bdf                               ; $4fe2: $cd $df $6b
	ld   a, $4d                                      ; $4fe5: $3e $4d
	ld   [wGameSubstate], a                                  ; $4fe7: $ea $a1 $c2
	ret                                              ; $4fea: $c9


Jump_024_4feb:
	xor  a                                           ; $4feb: $af
	ld   [$ca78], a                                  ; $4fec: $ea $78 $ca
	ld   a, [$ca76]                                  ; $4fef: $fa $76 $ca
	ld   [$ca77], a                                  ; $4ff2: $ea $77 $ca
	ld   a, $00                                      ; $4ff5: $3e $00
	ld   [$ca76], a                                  ; $4ff7: $ea $76 $ca
	push af                                          ; $4ffa: $f5
	ld   a, $cc                                      ; $4ffb: $3e $cc
	ld   [wFarCallAddr], a                                  ; $4ffd: $ea $98 $c2
	ld   a, $65                                      ; $5000: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $5002: $ea $99 $c2
	ld   a, $3e                                      ; $5005: $3e $3e
	ld   [wFarCallBank], a                                  ; $5007: $ea $9a $c2
	pop  af                                          ; $500a: $f1
	call FarCall                                       ; $500b: $cd $62 $09
	ld   d, $04                                      ; $500e: $16 $04
	ld   a, [$ca70]                                  ; $5010: $fa $70 $ca
	cp   $04                                         ; $5013: $fe $04
	jr   nz, jr_024_5019                             ; $5015: $20 $02

	ld   d, $00                                      ; $5017: $16 $00

jr_024_5019:
	ld   b, $11                                      ; $5019: $06 $11
	ld   a, $00                                      ; $501b: $3e $00
	add  d                                           ; $501d: $82
	ld   c, a                                        ; $501e: $4f
	ld   bc, $0001                                   ; $501f: $01 $01 $00
	push af                                          ; $5022: $f5
	ld   a, $ba                                      ; $5023: $3e $ba
	ld   [wFarCallAddr], a                                  ; $5025: $ea $98 $c2
	ld   a, $54                                      ; $5028: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $502a: $ea $99 $c2
	ld   a, $0a                                      ; $502d: $3e $0a
	ld   [wFarCallBank], a                                  ; $502f: $ea $9a $c2
	pop  af                                          ; $5032: $f1
	call FarCall                                       ; $5033: $cd $62 $09
	ld   a, $4f                                      ; $5036: $3e $4f
	ld   [wGameSubstate], a                                  ; $5038: $ea $a1 $c2
	ret                                              ; $503b: $c9


BattleSubstate4d:
	call ClearOam                                       ; $503c: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $503f: $cd $d3 $2e
	ld   a, [$ca76]                                  ; $5042: $fa $76 $ca
	ld   b, a                                        ; $5045: $47
	ld   a, [$ca77]                                  ; $5046: $fa $77 $ca
	cp   b                                           ; $5049: $b8
	jr   z, jr_024_5062                              ; $504a: $28 $16

	push af                                          ; $504c: $f5
	ld   a, $a5                                      ; $504d: $3e $a5
	ld   [wFarCallAddr], a                                  ; $504f: $ea $98 $c2
	ld   a, $66                                      ; $5052: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $5054: $ea $99 $c2
	ld   a, $3e                                      ; $5057: $3e $3e
	ld   [wFarCallBank], a                                  ; $5059: $ea $9a $c2
	pop  af                                          ; $505c: $f1
	call FarCall                                       ; $505d: $cd $62 $09
	jr   nz, jr_024_5066                             ; $5060: $20 $04

jr_024_5062:
	ld   hl, wGameSubstate                                   ; $5062: $21 $a1 $c2
	inc  [hl]                                        ; $5065: $34

jr_024_5066:
	ret                                              ; $5066: $c9


BattleSubstate4e:
	call ClearOam                                       ; $5067: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $506a: $cd $d3 $2e
	call Call_024_6c6d                               ; $506d: $cd $6d $6c
	ret  nc                                          ; $5070: $d0

	ld   c, $01                                      ; $5071: $0e $01
	ld   de, $8000                                   ; $5073: $11 $00 $80
	ld   a, $8d                                      ; $5076: $3e $8d
	ld   hl, $7fe0                                   ; $5078: $21 $e0 $7f
	ld   b, $02                                      ; $507b: $06 $02
	call EnqueueHDMATransfer                                       ; $507d: $cd $7c $02
	ld   a, $24                                      ; $5080: $3e $24
	ld   hl, $40a8                                   ; $5082: $21 $a8 $40
	ld   de, $c356                                   ; $5085: $11 $56 $c3
	ld   bc, $0008                                   ; $5088: $01 $08 $00
	call FarMemCopy                                       ; $508b: $cd $b2 $09
	ld   bc, $3c3f                                   ; $508e: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5091: $cd $aa $04
	ld   a, [$ca86]                                  ; $5094: $fa $86 $ca
	srl  a                                           ; $5097: $cb $3f
	srl  a                                           ; $5099: $cb $3f
	and  $07                                         ; $509b: $e6 $07
	ld   b, $4c                                      ; $509d: $06 $4c
	ld   h, $00                                      ; $509f: $26 $00
	ld   l, a                                        ; $50a1: $6f
	ld   de, $467e                                   ; $50a2: $11 $7e $46
	add  hl, de                                      ; $50a5: $19
	ld   a, [hl]                                     ; $50a6: $7e
	add  $84                                         ; $50a7: $c6 $84
	ld   c, a                                        ; $50a9: $4f
	ld   a, $01                                      ; $50aa: $3e $01
	ld   [wSpriteGroup], a                                  ; $50ac: $ea $1a $c2
	ld   a, $34                                      ; $50af: $3e $34
	call LoadSpriteFromMainTable                                       ; $50b1: $cd $16 $0e
	ld   a, [wInGameButtonsHeld]                                  ; $50b4: $fa $0f $c2
	and  $02                                         ; $50b7: $e6 $02
	jr   nz, jr_024_50ca                             ; $50b9: $20 $0f

	ld   a, [wInGameButtonsPressed]                                  ; $50bb: $fa $10 $c2
	and  $01                                         ; $50be: $e6 $01
	jr   nz, jr_024_50ca                             ; $50c0: $20 $08

	ld   a, [$ca86]                                  ; $50c2: $fa $86 $ca
	inc  a                                           ; $50c5: $3c
	ld   [$ca86], a                                  ; $50c6: $ea $86 $ca
	ret                                              ; $50c9: $c9


jr_024_50ca:
	xor  a                                           ; $50ca: $af
	ld   [$ca86], a                                  ; $50cb: $ea $86 $ca
	xor  a                                           ; $50ce: $af
	call PlaySoundEffect                                       ; $50cf: $cd $df $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50d2: $cf
	ld   a, $01                                      ; $50d3: $3e $01
	call PlaySoundEffect                                       ; $50d5: $cd $df $1a
	ld   a, $06                                      ; $50d8: $3e $06
	ld   [wGameSubstate], a                                  ; $50da: $ea $a1 $c2
	ret                                              ; $50dd: $c9


BattleSubstate4f:
	call ClearOam                                       ; $50de: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $50e1: $cd $d3 $2e
	push af                                          ; $50e4: $f5
	ld   a, $a5                                      ; $50e5: $3e $a5
	ld   [wFarCallAddr], a                                  ; $50e7: $ea $98 $c2
	ld   a, $66                                      ; $50ea: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $50ec: $ea $99 $c2
	ld   a, $3e                                      ; $50ef: $3e $3e
	ld   [wFarCallBank], a                                  ; $50f1: $ea $9a $c2
	pop  af                                          ; $50f4: $f1
	call FarCall                                       ; $50f5: $cd $62 $09
	jr   nz, jr_024_50ff                             ; $50f8: $20 $05

	ld   a, $22                                      ; $50fa: $3e $22
	ld   [wGameSubstate], a                                  ; $50fc: $ea $a1 $c2

jr_024_50ff:
	ret                                              ; $50ff: $c9


BattleSubstate50:
	call ClearOam                                       ; $5100: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5103: $cd $d3 $2e
	call Call_024_6c6d                               ; $5106: $cd $6d $6c
	ret  nc                                          ; $5109: $d0

	ld   c, $01                                      ; $510a: $0e $01
	ld   de, $8000                                   ; $510c: $11 $00 $80
	ld   a, $8d                                      ; $510f: $3e $8d
	ld   hl, $7fe0                                   ; $5111: $21 $e0 $7f
	ld   b, $02                                      ; $5114: $06 $02
	call EnqueueHDMATransfer                                       ; $5116: $cd $7c $02
	ld   a, $24                                      ; $5119: $3e $24
	ld   hl, $40a8                                   ; $511b: $21 $a8 $40
	ld   de, $c356                                   ; $511e: $11 $56 $c3
	ld   bc, $0008                                   ; $5121: $01 $08 $00
	call FarMemCopy                                       ; $5124: $cd $b2 $09
	ld   bc, $3c3f                                   ; $5127: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $512a: $cd $aa $04
	ld   a, [$ca86]                                  ; $512d: $fa $86 $ca
	srl  a                                           ; $5130: $cb $3f
	srl  a                                           ; $5132: $cb $3f
	and  $07                                         ; $5134: $e6 $07
	ld   b, $4c                                      ; $5136: $06 $4c
	ld   h, $00                                      ; $5138: $26 $00
	ld   l, a                                        ; $513a: $6f
	ld   de, $467e                                   ; $513b: $11 $7e $46
	add  hl, de                                      ; $513e: $19
	ld   a, [hl]                                     ; $513f: $7e
	add  $84                                         ; $5140: $c6 $84
	ld   c, a                                        ; $5142: $4f
	ld   a, $01                                      ; $5143: $3e $01
	ld   [wSpriteGroup], a                                  ; $5145: $ea $1a $c2
	ld   a, $34                                      ; $5148: $3e $34
	call LoadSpriteFromMainTable                                       ; $514a: $cd $16 $0e
	ld   a, [wInGameButtonsHeld]                                  ; $514d: $fa $0f $c2
	and  $02                                         ; $5150: $e6 $02
	jr   nz, jr_024_5163                             ; $5152: $20 $0f

	ld   a, [wInGameButtonsPressed]                                  ; $5154: $fa $10 $c2
	and  $01                                         ; $5157: $e6 $01
	jr   nz, jr_024_5163                             ; $5159: $20 $08

	ld   a, [$ca86]                                  ; $515b: $fa $86 $ca
	inc  a                                           ; $515e: $3c
	ld   [$ca86], a                                  ; $515f: $ea $86 $ca
	ret                                              ; $5162: $c9


jr_024_5163:
	xor  a                                           ; $5163: $af
	ld   [$ca86], a                                  ; $5164: $ea $86 $ca
	xor  a                                           ; $5167: $af
	call PlaySoundEffect                                       ; $5168: $cd $df $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $516b: $cf
	ld   a, $01                                      ; $516c: $3e $01
	call PlaySoundEffect                                       ; $516e: $cd $df $1a
	push af                                          ; $5171: $f5
	ld   a, $3c                                      ; $5172: $3e $3c
	ld   [wFarCallAddr], a                                  ; $5174: $ea $98 $c2
	ld   a, $61                                      ; $5177: $3e $61
	ld   [wFarCallAddr+1], a                                  ; $5179: $ea $99 $c2
	ld   a, $3e                                      ; $517c: $3e $3e
	ld   [wFarCallBank], a                                  ; $517e: $ea $9a $c2
	pop  af                                          ; $5181: $f1
	call FarCall                                       ; $5182: $cd $62 $09
	push af                                          ; $5185: $f5
	ld   a, $e9                                      ; $5186: $3e $e9
	ld   [wFarCallAddr], a                                  ; $5188: $ea $98 $c2
	ld   a, $61                                      ; $518b: $3e $61
	ld   [wFarCallAddr+1], a                                  ; $518d: $ea $99 $c2
	ld   a, $3e                                      ; $5190: $3e $3e
	ld   [wFarCallBank], a                                  ; $5192: $ea $9a $c2
	pop  af                                          ; $5195: $f1
	call FarCall                                       ; $5196: $cd $62 $09
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5199: $cf
	ld   a, $06                                      ; $519a: $3e $06
	ld   [wGameSubstate], a                                  ; $519c: $ea $a1 $c2
	ret                                              ; $519f: $c9


BattleSubstate25:
	call ClearOam                                       ; $51a0: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $51a3: $cd $d3 $2e
	call Call_024_6c6d                               ; $51a6: $cd $6d $6c
	ret  nc                                          ; $51a9: $d0

	ld   hl, wGameSubstate                                   ; $51aa: $21 $a1 $c2
	inc  [hl]                                        ; $51ad: $34
	ret                                              ; $51ae: $c9


BattleSubstate23:
	call ClearOam                                       ; $51af: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $51b2: $cd $d3 $2e
	ld   a, [$ca89]                                  ; $51b5: $fa $89 $ca
	cp   $00                                         ; $51b8: $fe $00
	jr   z, jr_024_51c6                              ; $51ba: $28 $0a

	xor  a                                           ; $51bc: $af
	ld   [$cbe5], a                                  ; $51bd: $ea $e5 $cb
	ld   a, $29                                      ; $51c0: $3e $29
	ld   [wGameSubstate], a                                  ; $51c2: $ea $a1 $c2
	ret                                              ; $51c5: $c9


jr_024_51c6:
	call Func_24_7657                                       ; $51c6: $cd $57 $76
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51c9: $cf
	ld   d, $04                                      ; $51ca: $16 $04
	ld   a, [$ca70]                                  ; $51cc: $fa $70 $ca
	cp   $04                                         ; $51cf: $fe $04
	jr   nz, jr_024_51d5                             ; $51d1: $20 $02

	ld   d, $00                                      ; $51d3: $16 $00

jr_024_51d5:
	ld   b, $11                                      ; $51d5: $06 $11
	ld   a, [$ca76]                                  ; $51d7: $fa $76 $ca
	cp   $04                                         ; $51da: $fe $04
	jr   c, jr_024_51e0                              ; $51dc: $38 $02

	ld   a, $00                                      ; $51de: $3e $00

jr_024_51e0:
	add  d                                           ; $51e0: $82
	ld   c, a                                        ; $51e1: $4f
	push af                                          ; $51e2: $f5
	ld   a, $ba                                      ; $51e3: $3e $ba
	ld   [wFarCallAddr], a                                  ; $51e5: $ea $98 $c2
	ld   a, $54                                      ; $51e8: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $51ea: $ea $99 $c2
	ld   a, $0a                                      ; $51ed: $3e $0a
	ld   [wFarCallBank], a                                  ; $51ef: $ea $9a $c2
	pop  af                                          ; $51f2: $f1
	call FarCall                                       ; $51f3: $cd $62 $09
	ld   hl, wGameSubstate                                   ; $51f6: $21 $a1 $c2
	inc  [hl]                                        ; $51f9: $34
	ret                                              ; $51fa: $c9


BattleSubstate24:
	call ClearOam                                       ; $51fb: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $51fe: $cd $d3 $2e
	ld   a, [$ca76]                                  ; $5201: $fa $76 $ca
	ld   b, a                                        ; $5204: $47
	ld   a, [$ca77]                                  ; $5205: $fa $77 $ca
	cp   b                                           ; $5208: $b8
	jr   z, jr_024_5221                              ; $5209: $28 $16

	push af                                          ; $520b: $f5
	ld   a, $a5                                      ; $520c: $3e $a5
	ld   [wFarCallAddr], a                                  ; $520e: $ea $98 $c2
	ld   a, $66                                      ; $5211: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $5213: $ea $99 $c2
	ld   a, $3e                                      ; $5216: $3e $3e
	ld   [wFarCallBank], a                                  ; $5218: $ea $9a $c2
	pop  af                                          ; $521b: $f1
	call FarCall                                       ; $521c: $cd $62 $09
	jr   nz, jr_024_5225                             ; $521f: $20 $04

jr_024_5221:
	ld   hl, wGameSubstate                                   ; $5221: $21 $a1 $c2
	inc  [hl]                                        ; $5224: $34

jr_024_5225:
	ret                                              ; $5225: $c9


BattleSubstate26:
	call ClearOam                                       ; $5226: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5229: $cd $d3 $2e
	ld   a, [$ca71]                                  ; $522c: $fa $71 $ca
	cp   $00                                         ; $522f: $fe $00
	jr   z, jr_024_524e                              ; $5231: $28 $1b

	ld   a, $0b                                      ; $5233: $3e $0b
	push af                                          ; $5235: $f5
	ld   a, $de                                      ; $5236: $3e $de
	ld   [wFarCallAddr], a                                  ; $5238: $ea $98 $c2
	ld   a, $65                                      ; $523b: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $523d: $ea $99 $c2
	ld   a, $3e                                      ; $5240: $3e $3e
	ld   [wFarCallBank], a                                  ; $5242: $ea $9a $c2
	pop  af                                          ; $5245: $f1
	call FarCall                                       ; $5246: $cd $62 $09
	ld   hl, wGameSubstate                                   ; $5249: $21 $a1 $c2
	inc  [hl]                                        ; $524c: $34
	ret                                              ; $524d: $c9


jr_024_524e:
	ld   a, $05                                      ; $524e: $3e $05
	push af                                          ; $5250: $f5
	ld   a, $de                                      ; $5251: $3e $de
	ld   [wFarCallAddr], a                                  ; $5253: $ea $98 $c2
	ld   a, $65                                      ; $5256: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $5258: $ea $99 $c2
	ld   a, $3e                                      ; $525b: $3e $3e
	ld   [wFarCallBank], a                                  ; $525d: $ea $9a $c2
	pop  af                                          ; $5260: $f1
	call FarCall                                       ; $5261: $cd $62 $09
	ld   hl, wGameSubstate                                   ; $5264: $21 $a1 $c2
	inc  [hl]                                        ; $5267: $34
	ret                                              ; $5268: $c9


BattleSubstate27:
	push af                                          ; $5269: $f5
	ld   a, $ae                                      ; $526a: $3e $ae
	ld   [wFarCallAddr], a                                  ; $526c: $ea $98 $c2
	ld   a, $66                                      ; $526f: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $5271: $ea $99 $c2
	ld   a, $3e                                      ; $5274: $3e $3e
	ld   [wFarCallBank], a                                  ; $5276: $ea $9a $c2
	pop  af                                          ; $5279: $f1
	call FarCall                                       ; $527a: $cd $62 $09
	jr   nz, jr_024_5283                             ; $527d: $20 $04

	ld   hl, wGameSubstate                                   ; $527f: $21 $a1 $c2
	inc  [hl]                                        ; $5282: $34

jr_024_5283:
	call ClearOam                                       ; $5283: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5286: $cd $d3 $2e
	ret                                              ; $5289: $c9


BattleSubstate28:
	call ClearOam                                       ; $528a: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $528d: $cd $d3 $2e
	ld   c, $01                                      ; $5290: $0e $01
	ld   de, $8000                                   ; $5292: $11 $00 $80
	ld   a, $8d                                      ; $5295: $3e $8d
	ld   hl, $7fe0                                   ; $5297: $21 $e0 $7f
	ld   b, $02                                      ; $529a: $06 $02
	call EnqueueHDMATransfer                                       ; $529c: $cd $7c $02
	ld   a, $24                                      ; $529f: $3e $24
	ld   hl, $40a8                                   ; $52a1: $21 $a8 $40
	ld   de, $c356                                   ; $52a4: $11 $56 $c3
	ld   bc, $0008                                   ; $52a7: $01 $08 $00
	call FarMemCopy                                       ; $52aa: $cd $b2 $09
	ld   bc, $3c3f                                   ; $52ad: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $52b0: $cd $aa $04
	ld   a, [$ca86]                                  ; $52b3: $fa $86 $ca
	srl  a                                           ; $52b6: $cb $3f
	srl  a                                           ; $52b8: $cb $3f
	and  $07                                         ; $52ba: $e6 $07
	ld   b, $4c                                      ; $52bc: $06 $4c
	ld   h, $00                                      ; $52be: $26 $00
	ld   l, a                                        ; $52c0: $6f
	ld   de, $467e                                   ; $52c1: $11 $7e $46
	add  hl, de                                      ; $52c4: $19
	ld   a, [hl]                                     ; $52c5: $7e
	add  $84                                         ; $52c6: $c6 $84
	ld   c, a                                        ; $52c8: $4f
	ld   a, $01                                      ; $52c9: $3e $01
	ld   [wSpriteGroup], a                                  ; $52cb: $ea $1a $c2
	ld   a, $34                                      ; $52ce: $3e $34
	call LoadSpriteFromMainTable                                       ; $52d0: $cd $16 $0e
	ld   a, [wInGameButtonsHeld]                                  ; $52d3: $fa $0f $c2
	and  $02                                         ; $52d6: $e6 $02
	jr   nz, jr_024_52ea                             ; $52d8: $20 $10

	ld   a, [wInGameButtonsPressed]                                  ; $52da: $fa $10 $c2
	and  $01                                         ; $52dd: $e6 $01
	jr   nz, jr_024_52ea                             ; $52df: $20 $09

	ld   a, [$ca86]                                  ; $52e1: $fa $86 $ca
	inc  a                                           ; $52e4: $3c
	ld   [$ca86], a                                  ; $52e5: $ea $86 $ca
	jr   jr_024_5300                                 ; $52e8: $18 $16

jr_024_52ea:
	xor  a                                           ; $52ea: $af
	ld   [$ca86], a                                  ; $52eb: $ea $86 $ca
	xor  a                                           ; $52ee: $af
	call PlaySoundEffect                                       ; $52ef: $cd $df $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52f2: $cf
	ld   a, $01                                      ; $52f3: $3e $01
	call PlaySoundEffect                                       ; $52f5: $cd $df $1a
	xor  a                                           ; $52f8: $af
	ld   [$cbe5], a                                  ; $52f9: $ea $e5 $cb
	ld   hl, wGameSubstate                                   ; $52fc: $21 $a1 $c2
	inc  [hl]                                        ; $52ff: $34

jr_024_5300:
	ret                                              ; $5300: $c9


BattleSubstate29:
	call ClearOam                                       ; $5301: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5304: $cd $d3 $2e
	ld   a, [$cbe5]                                  ; $5307: $fa $e5 $cb
	or   a                                           ; $530a: $b7
	jr   nz, jr_024_5325                             ; $530b: $20 $18

	xor  a                                           ; $530d: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $530e: $ea $62 $c3
	ld   a, $0c                                      ; $5311: $3e $0c
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5313: $ea $63 $c3
	ld   a, $03                                      ; $5316: $3e $03
	ld   b, $00                                      ; $5318: $06 $00
	ld   hl, wBGPalettes                                   ; $531a: $21 $de $c2
	ld   c, $24                                      ; $531d: $0e $24
	ld   de, $534f                                   ; $531f: $11 $4f $53
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5322: $cd $48 $07

jr_024_5325:
	ld   hl, $cbe5                                   ; $5325: $21 $e5 $cb
	ld   a, [hl]                                     ; $5328: $7e
	inc  [hl]                                        ; $5329: $34
	cp   $07                                         ; $532a: $fe $07
	jr   nc, jr_024_5336                             ; $532c: $30 $08

	ld   bc, $000c                                   ; $532e: $01 $0c $00
	call FadePalettesAndSetRangeToUpdate                                       ; $5331: $cd $32 $08
	jr   jr_024_534e                                 ; $5334: $18 $18

jr_024_5336:
	ld   a, $24                                      ; $5336: $3e $24
	ld   hl, $534f                                   ; $5338: $21 $4f $53
	ld   de, wBGPalettes                                   ; $533b: $11 $de $c2
	ld   bc, $0010                                   ; $533e: $01 $10 $00
	call FarMemCopy                                       ; $5341: $cd $b2 $09
	ld   bc, $000b                                   ; $5344: $01 $0b $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5347: $cd $aa $04
	ld   hl, wGameSubstate                                   ; $534a: $21 $a1 $c2
	inc  [hl]                                        ; $534d: $34

jr_024_534e:
	ret                                              ; $534e: $c9


	rst  $38                                         ; $534f: $ff
	ld   a, a                                        ; $5350: $7f
	rst  $38                                         ; $5351: $ff
	ld   a, a                                        ; $5352: $7f
	rst  $38                                         ; $5353: $ff
	ld   a, a                                        ; $5354: $7f
	rst  $38                                         ; $5355: $ff
	ld   a, a                                        ; $5356: $7f
	rst  $38                                         ; $5357: $ff
	ld   a, a                                        ; $5358: $7f
	rst  $38                                         ; $5359: $ff
	ld   a, a                                        ; $535a: $7f
	rst  $38                                         ; $535b: $ff
	ld   a, a                                        ; $535c: $7f
	rst  $38                                         ; $535d: $ff
	ld   a, a                                        ; $535e: $7f
	rst  $38                                         ; $535f: $ff
	ld   a, a                                        ; $5360: $7f
	rst  $38                                         ; $5361: $ff
	ld   a, a                                        ; $5362: $7f
	rst  $38                                         ; $5363: $ff
	ld   a, a                                        ; $5364: $7f
	rst  $38                                         ; $5365: $ff
	ld   a, a                                        ; $5366: $7f


BattleSubstate2a:
	call ClearOam                                       ; $5367: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $536a: $cd $d3 $2e
	call ClearTextBoxDimensionsAndSetDefaultTextStyle                                       ; $536d: $cd $09 $14
	ld   bc, $0000                                   ; $5370: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $5373: $cd $34 $14
	ld   bc, $1003                                   ; $5376: $01 $03 $10
	call SetKanjiTextBoxDimensions                                       ; $5379: $cd $24 $14
	call ClearTextBoxDimensionsAndSetDefaultTextStyle                                       ; $537c: $cd $09 $14
	call Call_024_6ebb                               ; $537f: $cd $bb $6e
	ld   a, [wWramBank]                                  ; $5382: $fa $93 $c2
	push af                                          ; $5385: $f5
	ld   a, $02                                      ; $5386: $3e $02
	ld   [wWramBank], a                                  ; $5388: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $538b: $e0 $70
	push af                                          ; $538d: $f5
	ld   a, $cb                                      ; $538e: $3e $cb
	ld   [wFarCallAddr], a                                  ; $5390: $ea $98 $c2
	ld   a, $4f                                      ; $5393: $3e $4f
	ld   [wFarCallAddr+1], a                                  ; $5395: $ea $99 $c2
	ld   a, $09                                      ; $5398: $3e $09
	ld   [wFarCallBank], a                                  ; $539a: $ea $9a $c2
	pop  af                                          ; $539d: $f1
	call FarCall                                       ; $539e: $cd $62 $09
	ld   a, [$ca6e]                                  ; $53a1: $fa $6e $ca
	sla  a                                           ; $53a4: $cb $27
	ld   b, $00                                      ; $53a6: $06 $00
	ld   c, a                                        ; $53a8: $4f
	ld   b, $00                                      ; $53a9: $06 $00
	ld   hl, $53cc                                   ; $53ab: $21 $cc $53
	add  hl, bc                                      ; $53ae: $09
	ld   a, [hl+]                                    ; $53af: $2a
	ld   [$cbe9], a                                  ; $53b0: $ea $e9 $cb
	ld   a, [hl]                                     ; $53b3: $7e
	ld   [$cbea], a                                  ; $53b4: $ea $ea $cb
	xor  a                                           ; $53b7: $af
	ld   [$cbe6], a                                  ; $53b8: $ea $e6 $cb
	ld   [$cbe7], a                                  ; $53bb: $ea $e7 $cb
	ld   [$cbe8], a                                  ; $53be: $ea $e8 $cb
	pop  af                                          ; $53c1: $f1
	ld   [wWramBank], a                                  ; $53c2: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $53c5: $e0 $70
	ld   hl, wGameSubstate                                   ; $53c7: $21 $a1 $c2
	inc  [hl]                                        ; $53ca: $34
	ret                                              ; $53cb: $c9


	cp   e                                           ; $53cc: $bb
	cp   e                                           ; $53cd: $bb
	db   $dd                                         ; $53ce: $dd
	ld   e, l                                        ; $53cf: $5d
	sub  e                                           ; $53d0: $93
	ld   a, $ee                                      ; $53d1: $3e $ee
	ld   l, $8b                                      ; $53d3: $2e $8b
	dec  h                                           ; $53d5: $25
	ld   c, c                                        ; $53d6: $49
	rra                                              ; $53d7: $1f
	pop  de                                          ; $53d8: $d1
	ld   a, [de]                                     ; $53d9: $1a
	ld   [hl], a                                     ; $53da: $77
	rla                                              ; $53db: $17
	db   $db                                         ; $53dc: $db
	inc  d                                           ; $53dd: $14
	push bc                                          ; $53de: $c5
	ld   [de], a                                     ; $53df: $12
	ld   de, $a411                                   ; $53e0: $11 $11 $a4
	rrca                                             ; $53e3: $0f
	ld   [hl], b                                     ; $53e4: $70
	ld   c, $68                                      ; $53e5: $0e $68
	dec  c                                           ; $53e7: $0d
	add  e                                           ; $53e8: $83
	inc  c                                           ; $53e9: $0c
	cp   e                                           ; $53ea: $bb
	dec  bc                                          ; $53eb: $0b
	dec  bc                                          ; $53ec: $0b
	dec  bc                                          ; $53ed: $0b
	ld   l, l                                        ; $53ee: $6d
	ld   a, [bc]                                     ; $53ef: $0a
	pop  hl                                          ; $53f0: $e1
	add  hl, bc                                      ; $53f1: $09
	ld   h, d                                        ; $53f2: $62
	add  hl, bc                                      ; $53f3: $09
	ldh  a, [$08]                                    ; $53f4: $f0 $08
	adc  b                                           ; $53f6: $88
	ld   [$0829], sp                                 ; $53f7: $08 $29 $08
	jp   nc, $8207                                   ; $53fa: $d2 $07 $82

	rlca                                             ; $53fd: $07
	jr   c, jr_024_5407                              ; $53fe: $38 $07

	di                                               ; $5400: $f3
	ld   b, $b4                                      ; $5401: $06 $b4
	ld   b, $79                                      ; $5403: $06 $79
	ld   b, $41                                      ; $5405: $06 $41

jr_024_5407:
	ld   b, $0e                                      ; $5407: $06 $0e
	ld   b, $dd                                      ; $5409: $06 $dd
	dec  b                                           ; $540b: $05
	or   b                                           ; $540c: $b0
	dec  b                                           ; $540d: $05
	add  l                                           ; $540e: $85
	dec  b                                           ; $540f: $05
	ld   e, l                                        ; $5410: $5d
	dec  b                                           ; $5411: $05
	ld   [hl], $05                                   ; $5412: $36 $05
	ld   [de], a                                     ; $5414: $12
	dec  b                                           ; $5415: $05
	ldh  a, [rDIV]                                   ; $5416: $f0 $04
	ret  nc                                          ; $5418: $d0

	inc  b                                           ; $5419: $04
	or   c                                           ; $541a: $b1
	inc  b                                           ; $541b: $04
	sub  h                                           ; $541c: $94
	inc  b                                           ; $541d: $04
	ld   a, b                                        ; $541e: $78
	inc  b                                           ; $541f: $04
	ld   e, l                                        ; $5420: $5d
	inc  b                                           ; $5421: $04
	ld   b, h                                        ; $5422: $44
	inc  b                                           ; $5423: $04
	dec  hl                                          ; $5424: $2b
	inc  b                                           ; $5425: $04
	inc  d                                           ; $5426: $14
	inc  b                                           ; $5427: $04
	cp   $03                                         ; $5428: $fe $03
	jp   hl                                          ; $542a: $e9


	inc  bc                                          ; $542b: $03
	call nc, $c103                                   ; $542c: $d4 $03 $c1
	inc  bc                                          ; $542f: $03
	xor  [hl]                                        ; $5430: $ae
	inc  bc                                          ; $5431: $03
	sbc  h                                           ; $5432: $9c
	inc  bc                                          ; $5433: $03
	adc  d                                           ; $5434: $8a
	inc  bc                                          ; $5435: $03
	ld   a, c                                        ; $5436: $79
	inc  bc                                          ; $5437: $03
	ld   l, c                                        ; $5438: $69
	inc  bc                                          ; $5439: $03
	ld   e, d                                        ; $543a: $5a
	inc  bc                                          ; $543b: $03
	ld   c, e                                        ; $543c: $4b
	inc  bc                                          ; $543d: $03
	inc  a                                           ; $543e: $3c
	inc  bc                                          ; $543f: $03
	ld   l, $03                                      ; $5440: $2e $03
	jr   nz, jr_024_5447                             ; $5442: $20 $03


BattleSubstate2b:
	call ClearOam                                       ; $5444: $cd $d7 $0d

jr_024_5447:
	call AnimateAllAnimatedSpriteSpecs                                       ; $5447: $cd $d3 $2e
	push af                                          ; $544a: $f5
	ld   a, $dd                                      ; $544b: $3e $dd
	ld   [wFarCallAddr], a                                  ; $544d: $ea $98 $c2
	ld   a, $4f                                      ; $5450: $3e $4f
	ld   [wFarCallAddr+1], a                                  ; $5452: $ea $99 $c2
	ld   a, $09                                      ; $5455: $3e $09
	ld   [wFarCallBank], a                                  ; $5457: $ea $9a $c2
	pop  af                                          ; $545a: $f1
	call FarCall                                       ; $545b: $cd $62 $09
	ld   a, [$cbe4]                                  ; $545e: $fa $e4 $cb
	bit  7, a                                        ; $5461: $cb $7f
	jr   z, jr_024_5494                              ; $5463: $28 $2f

	ld   a, [$cbec]                                  ; $5465: $fa $ec $cb
	cp   $ff                                         ; $5468: $fe $ff
	jr   z, jr_024_5474                              ; $546a: $28 $08

	ld   b, $00                                      ; $546c: $06 $00
	ld   c, a                                        ; $546e: $4f
	ld   hl, $cbef                                   ; $546f: $21 $ef $cb
	add  hl, bc                                      ; $5472: $09
	ld   a, [hl]                                     ; $5473: $7e

jr_024_5474:
	push af                                          ; $5474: $f5
	ld   a, $34                                      ; $5475: $3e $34
	ld   [wFarCallAddr], a                                  ; $5477: $ea $98 $c2
	ld   a, $49                                      ; $547a: $3e $49
	ld   [wFarCallAddr+1], a                                  ; $547c: $ea $99 $c2
	ld   a, $0a                                      ; $547f: $3e $0a
	ld   [wFarCallBank], a                                  ; $5481: $ea $9a $c2
	pop  af                                          ; $5484: $f1
	call FarCall                                       ; $5485: $cd $62 $09
	xor  a                                           ; $5488: $af
	ld   [$cbe5], a                                  ; $5489: $ea $e5 $cb
	xor  a                                           ; $548c: $af
	call PlaySoundEffect                                       ; $548d: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $5490: $21 $a1 $c2
	inc  [hl]                                        ; $5493: $34

jr_024_5494:
	ret                                              ; $5494: $c9


BattleSubstate2c:
	call ClearOam                                       ; $5495: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5498: $cd $d3 $2e
	ld   a, [$cbe5]                                  ; $549b: $fa $e5 $cb
	or   a                                           ; $549e: $b7
	jr   nz, jr_024_54b9                             ; $549f: $20 $18

	xor  a                                           ; $54a1: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $54a2: $ea $62 $c3
	ld   a, $08                                      ; $54a5: $3e $08
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $54a7: $ea $63 $c3
	ld   a, $03                                      ; $54aa: $3e $03
	ld   b, $00                                      ; $54ac: $06 $00
	ld   hl, wBGPalettes                                   ; $54ae: $21 $de $c2
	ld   c, $24                                      ; $54b1: $0e $24
	ld   de, $54e3                                   ; $54b3: $11 $e3 $54
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $54b6: $cd $48 $07

jr_024_54b9:
	ld   hl, $cbe5                                   ; $54b9: $21 $e5 $cb
	ld   a, [hl]                                     ; $54bc: $7e
	inc  [hl]                                        ; $54bd: $34
	cp   $07                                         ; $54be: $fe $07
	jr   nc, jr_024_54ca                             ; $54c0: $30 $08

	ld   bc, $0008                                   ; $54c2: $01 $08 $00
	call FadePalettesAndSetRangeToUpdate                                       ; $54c5: $cd $32 $08
	jr   jr_024_54e2                                 ; $54c8: $18 $18

jr_024_54ca:
	ld   a, $24                                      ; $54ca: $3e $24
	ld   hl, $54e3                                   ; $54cc: $21 $e3 $54
	ld   de, wBGPalettes                                   ; $54cf: $11 $de $c2
	ld   bc, $0010                                   ; $54d2: $01 $10 $00
	call FarMemCopy                                       ; $54d5: $cd $b2 $09
	ld   bc, $0007                                   ; $54d8: $01 $07 $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $54db: $cd $aa $04
	ld   hl, wGameSubstate                                   ; $54de: $21 $a1 $c2
	inc  [hl]                                        ; $54e1: $34

jr_024_54e2:
	ret                                              ; $54e2: $c9


	rst  $38                                         ; $54e3: $ff
	ld   a, a                                        ; $54e4: $7f
	db   $fc                                         ; $54e5: $fc
	ld   [bc], a                                     ; $54e6: $02
	or   h                                           ; $54e7: $b4
	inc  c                                           ; $54e8: $0c
	nop                                              ; $54e9: $00
	nop                                              ; $54ea: $00
	rra                                              ; $54eb: $1f
	nop                                              ; $54ec: $00
	dec  d                                           ; $54ed: $15
	nop                                              ; $54ee: $00
	ld   a, [bc]                                     ; $54ef: $0a
	nop                                              ; $54f0: $00
	nop                                              ; $54f1: $00
	nop                                              ; $54f2: $00


BattleSubstate2d:
	call ClearOam                                       ; $54f3: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $54f6: $cd $d3 $2e
	call Call_024_6723                               ; $54f9: $cd $23 $67
	ld   a, [$ca89]                                  ; $54fc: $fa $89 $ca
	cp   $00                                         ; $54ff: $fe $00
	jr   nz, jr_024_5520                             ; $5501: $20 $1d

	ld   a, [$ca75]                                  ; $5503: $fa $75 $ca
	push af                                          ; $5506: $f5
	ld   a, $de                                      ; $5507: $3e $de
	ld   [wFarCallAddr], a                                  ; $5509: $ea $98 $c2
	ld   a, $65                                      ; $550c: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $550e: $ea $99 $c2
	ld   a, $3e                                      ; $5511: $3e $3e
	ld   [wFarCallBank], a                                  ; $5513: $ea $9a $c2
	pop  af                                          ; $5516: $f1
	call FarCall                                       ; $5517: $cd $62 $09
	ld   a, $2f                                      ; $551a: $3e $2f
	ld   [wGameSubstate], a                                  ; $551c: $ea $a1 $c2
	ret                                              ; $551f: $c9


jr_024_5520:
	ld   a, [$ca87]                                  ; $5520: $fa $87 $ca
	ld   d, a                                        ; $5523: $57
	call Call_024_6bdf                               ; $5524: $cd $df $6b
	ld   hl, wGameSubstate                                   ; $5527: $21 $a1 $c2
	inc  [hl]                                        ; $552a: $34
	ret                                              ; $552b: $c9


BattleSubstate2e:
	call ClearOam                                       ; $552c: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $552f: $cd $d3 $2e
	ld   bc, $0001                                   ; $5532: $01 $01 $00
	push af                                          ; $5535: $f5
	ld   a, $ba                                      ; $5536: $3e $ba
	ld   [wFarCallAddr], a                                  ; $5538: $ea $98 $c2
	ld   a, $54                                      ; $553b: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $553d: $ea $99 $c2
	ld   a, $0a                                      ; $5540: $3e $0a
	ld   [wFarCallBank], a                                  ; $5542: $ea $9a $c2
	pop  af                                          ; $5545: $f1
	call FarCall                                       ; $5546: $cd $62 $09
	ld   a, $31                                      ; $5549: $3e $31
	ld   [wGameSubstate], a                                  ; $554b: $ea $a1 $c2
	ret                                              ; $554e: $c9


BattleSubstate2f:
	call ClearOam                                       ; $554f: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5552: $cd $d3 $2e
	ld   d, $04                                      ; $5555: $16 $04
	ld   a, [$ca70]                                  ; $5557: $fa $70 $ca
	cp   $04                                         ; $555a: $fe $04
	jr   nz, jr_024_5560                             ; $555c: $20 $02

	ld   d, $00                                      ; $555e: $16 $00

jr_024_5560:
	ld   b, $11                                      ; $5560: $06 $11
	ld   a, [$ca76]                                  ; $5562: $fa $76 $ca
	cp   $04                                         ; $5565: $fe $04
	jr   c, jr_024_556b                              ; $5567: $38 $02

	ld   a, $00                                      ; $5569: $3e $00

jr_024_556b:
	ld   bc, $0001                                   ; $556b: $01 $01 $00
	push af                                          ; $556e: $f5
	ld   a, $ba                                      ; $556f: $3e $ba
	ld   [wFarCallAddr], a                                  ; $5571: $ea $98 $c2
	ld   a, $54                                      ; $5574: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $5576: $ea $99 $c2
	ld   a, $0a                                      ; $5579: $3e $0a
	ld   [wFarCallBank], a                                  ; $557b: $ea $9a $c2
	pop  af                                          ; $557e: $f1
	call FarCall                                       ; $557f: $cd $62 $09
	ld   hl, wGameSubstate                                   ; $5582: $21 $a1 $c2
	inc  [hl]                                        ; $5585: $34
	ret                                              ; $5586: $c9


BattleSubstate30:
	push af                                          ; $5587: $f5
	ld   a, $ae                                      ; $5588: $3e $ae
	ld   [wFarCallAddr], a                                  ; $558a: $ea $98 $c2
	ld   a, $66                                      ; $558d: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $558f: $ea $99 $c2
	ld   a, $3e                                      ; $5592: $3e $3e
	ld   [wFarCallBank], a                                  ; $5594: $ea $9a $c2
	pop  af                                          ; $5597: $f1
	call FarCall                                       ; $5598: $cd $62 $09
	jr   nz, jr_024_55ef                             ; $559b: $20 $52

	ld   a, [$ca7b]                                  ; $559d: $fa $7b $ca
	push af                                          ; $55a0: $f5
	ld   a, $c7                                      ; $55a1: $3e $c7
	ld   [wFarCallAddr], a                                  ; $55a3: $ea $98 $c2
	ld   a, $66                                      ; $55a6: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $55a8: $ea $99 $c2
	ld   a, $3e                                      ; $55ab: $3e $3e
	ld   [wFarCallBank], a                                  ; $55ad: $ea $9a $c2
	pop  af                                          ; $55b0: $f1
	call FarCall                                       ; $55b1: $cd $62 $09
	ld   a, [$ca79]                                  ; $55b4: $fa $79 $ca
	push af                                          ; $55b7: $f5
	ld   a, $fd                                      ; $55b8: $3e $fd
	ld   [wFarCallAddr], a                                  ; $55ba: $ea $98 $c2
	ld   a, $66                                      ; $55bd: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $55bf: $ea $99 $c2
	ld   a, $3e                                      ; $55c2: $3e $3e
	ld   [wFarCallBank], a                                  ; $55c4: $ea $9a $c2
	pop  af                                          ; $55c7: $f1
	call FarCall                                       ; $55c8: $cd $62 $09
	ld   a, [$ca7b]                                  ; $55cb: $fa $7b $ca
	and  a                                           ; $55ce: $a7
	jr   z, jr_024_55de                              ; $55cf: $28 $0d

	ld   a, [$ca87]                                  ; $55d1: $fa $87 $ca
	ld   d, a                                        ; $55d4: $57
	call Call_024_6bdf                               ; $55d5: $cd $df $6b
	ld   hl, wGameSubstate                                   ; $55d8: $21 $a1 $c2
	inc  [hl]                                        ; $55db: $34
	jr   jr_024_55ef                                 ; $55dc: $18 $11

jr_024_55de:
	call Call_024_788d                               ; $55de: $cd $8d $78
	ld   a, $2e                                      ; $55e1: $3e $2e
	ld   [$ca87], a                                  ; $55e3: $ea $87 $ca
	ld   d, a                                        ; $55e6: $57
	call Call_024_6bdf                               ; $55e7: $cd $df $6b
	ld   a, $32                                      ; $55ea: $3e $32
	ld   [wGameSubstate], a                                  ; $55ec: $ea $a1 $c2

jr_024_55ef:
	call ClearOam                                       ; $55ef: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $55f2: $cd $d3 $2e
	ret                                              ; $55f5: $c9


BattleSubstate31:
	call ClearOam                                       ; $55f6: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $55f9: $cd $d3 $2e
	ld   a, [$ca76]                                  ; $55fc: $fa $76 $ca
	ld   a, [$ca87]                                  ; $55ff: $fa $87 $ca
	cp   $ff                                         ; $5602: $fe $ff
	jr   z, jr_024_5663                              ; $5604: $28 $5d

	call Call_024_6c6d                               ; $5606: $cd $6d $6c
	ret  nc                                          ; $5609: $d0

	ld   c, $01                                      ; $560a: $0e $01
	ld   de, $8000                                   ; $560c: $11 $00 $80
	ld   a, $8d                                      ; $560f: $3e $8d
	ld   hl, $7fe0                                   ; $5611: $21 $e0 $7f
	ld   b, $02                                      ; $5614: $06 $02
	call EnqueueHDMATransfer                                       ; $5616: $cd $7c $02
	ld   a, $24                                      ; $5619: $3e $24
	ld   hl, $40a8                                   ; $561b: $21 $a8 $40
	ld   de, $c356                                   ; $561e: $11 $56 $c3
	ld   bc, $0008                                   ; $5621: $01 $08 $00
	call FarMemCopy                                       ; $5624: $cd $b2 $09
	ld   bc, $3c3f                                   ; $5627: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $562a: $cd $aa $04
	ld   a, [$ca86]                                  ; $562d: $fa $86 $ca
	srl  a                                           ; $5630: $cb $3f
	srl  a                                           ; $5632: $cb $3f
	and  $07                                         ; $5634: $e6 $07
	ld   b, $4c                                      ; $5636: $06 $4c
	ld   h, $00                                      ; $5638: $26 $00
	ld   l, a                                        ; $563a: $6f
	ld   de, $467e                                   ; $563b: $11 $7e $46
	add  hl, de                                      ; $563e: $19
	ld   a, [hl]                                     ; $563f: $7e
	add  $84                                         ; $5640: $c6 $84
	ld   c, a                                        ; $5642: $4f
	ld   a, $01                                      ; $5643: $3e $01
	ld   [wSpriteGroup], a                                  ; $5645: $ea $1a $c2
	ld   a, $34                                      ; $5648: $3e $34
	call LoadSpriteFromMainTable                                       ; $564a: $cd $16 $0e
	ld   a, [wInGameButtonsHeld]                                  ; $564d: $fa $0f $c2
	and  $02                                         ; $5650: $e6 $02
	jr   nz, jr_024_5663                             ; $5652: $20 $0f

	ld   a, [wInGameButtonsPressed]                                  ; $5654: $fa $10 $c2
	and  $01                                         ; $5657: $e6 $01
	jr   nz, jr_024_5663                             ; $5659: $20 $08

	ld   a, [$ca86]                                  ; $565b: $fa $86 $ca
	inc  a                                           ; $565e: $3c
	ld   [$ca86], a                                  ; $565f: $ea $86 $ca
	ret                                              ; $5662: $c9


jr_024_5663:
	xor  a                                           ; $5663: $af
	ld   [$ca86], a                                  ; $5664: $ea $86 $ca
	xor  a                                           ; $5667: $af
	call PlaySoundEffect                                       ; $5668: $cd $df $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $566b: $cf
	ld   a, $01                                      ; $566c: $3e $01
	call PlaySoundEffect                                       ; $566e: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $5671: $21 $a1 $c2
	inc  [hl]                                        ; $5674: $34
	ret                                              ; $5675: $c9


BattleSubstate32:
	call ClearOam                                       ; $5676: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5679: $cd $d3 $2e
	push af                                          ; $567c: $f5
	ld   a, $18                                      ; $567d: $3e $18
	ld   [wFarCallAddr], a                                  ; $567f: $ea $98 $c2
	ld   a, $67                                      ; $5682: $3e $67
	ld   [wFarCallAddr+1], a                                  ; $5684: $ea $99 $c2
	ld   a, $3e                                      ; $5687: $3e $3e
	ld   [wFarCallBank], a                                  ; $5689: $ea $9a $c2
	pop  af                                          ; $568c: $f1
	call FarCall                                       ; $568d: $cd $62 $09
	jr   nz, jr_024_56c3                             ; $5690: $20 $31

	push af                                          ; $5692: $f5
	ld   a, $9d                                      ; $5693: $3e $9d
	ld   [wFarCallAddr], a                                  ; $5695: $ea $98 $c2
	ld   a, $6b                                      ; $5698: $3e $6b
	ld   [wFarCallAddr+1], a                                  ; $569a: $ea $99 $c2
	ld   a, $3e                                      ; $569d: $3e $3e
	ld   [wFarCallBank], a                                  ; $569f: $ea $9a $c2
	pop  af                                          ; $56a2: $f1
	call FarCall                                       ; $56a3: $cd $62 $09
	jr   nz, jr_024_56c3                             ; $56a6: $20 $1b

	ld   a, [$ca7e]                                  ; $56a8: $fa $7e $ca
	push af                                          ; $56ab: $f5
	ld   a, $e2                                      ; $56ac: $3e $e2
	ld   [wFarCallAddr], a                                  ; $56ae: $ea $98 $c2
	ld   a, $66                                      ; $56b1: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $56b3: $ea $99 $c2
	ld   a, $3e                                      ; $56b6: $3e $3e
	ld   [wFarCallBank], a                                  ; $56b8: $ea $9a $c2
	pop  af                                          ; $56bb: $f1
	call FarCall                                       ; $56bc: $cd $62 $09
	ld   hl, wGameSubstate                                   ; $56bf: $21 $a1 $c2
	inc  [hl]                                        ; $56c2: $34

jr_024_56c3:
	ret                                              ; $56c3: $c9


BattleSubstate33:
	call ClearOam                                       ; $56c4: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $56c7: $cd $d3 $2e
	ld   a, [$ca9a]                                  ; $56ca: $fa $9a $ca
	cp   $ff                                         ; $56cd: $fe $ff
	jr   nz, jr_024_56df                             ; $56cf: $20 $0e

	xor  a                                           ; $56d1: $af
	call PlaySoundEffect                                       ; $56d2: $cd $df $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56d5: $cf
	ld   a, $0f                                      ; $56d6: $3e $0f
	call PlaySoundEffect                                       ; $56d8: $cd $df $1a
	xor  a                                           ; $56db: $af
	ld   [$ca9a], a                                  ; $56dc: $ea $9a $ca

jr_024_56df:
	push af                                          ; $56df: $f5
	ld   a, $33                                      ; $56e0: $3e $33
	ld   [wFarCallAddr], a                                  ; $56e2: $ea $98 $c2
	ld   a, $67                                      ; $56e5: $3e $67
	ld   [wFarCallAddr+1], a                                  ; $56e7: $ea $99 $c2
	ld   a, $3e                                      ; $56ea: $3e $3e
	ld   [wFarCallBank], a                                  ; $56ec: $ea $9a $c2
	pop  af                                          ; $56ef: $f1
	call FarCall                                       ; $56f0: $cd $62 $09
	jr   nz, jr_024_5703                             ; $56f3: $20 $0e

	call Call_024_7731                               ; $56f5: $cd $31 $77
	ld   a, [$ca89]                                  ; $56f8: $fa $89 $ca
	cp   $00                                         ; $56fb: $fe $00
	jr   nz, jr_024_5704                             ; $56fd: $20 $05

	ld   hl, wGameSubstate                                   ; $56ff: $21 $a1 $c2
	inc  [hl]                                        ; $5702: $34

jr_024_5703:
	ret                                              ; $5703: $c9


jr_024_5704:
	ld   a, $35                                      ; $5704: $3e $35
	ld   [wGameSubstate], a                                  ; $5706: $ea $a1 $c2
	ret                                              ; $5709: $c9


BattleSubstate34:
	call ClearOam                                       ; $570a: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $570d: $cd $d3 $2e
	ld   a, [$ca7b]                                  ; $5710: $fa $7b $ca
	and  a                                           ; $5713: $a7
	jr   z, jr_024_5741                              ; $5714: $28 $2b

	ld   a, [$ca79]                                  ; $5716: $fa $79 $ca
	and  a                                           ; $5719: $a7
	jr   z, jr_024_5754                              ; $571a: $28 $38

	ld   a, [$ca76]                                  ; $571c: $fa $76 $ca
	ld   b, a                                        ; $571f: $47
	ld   a, [$ca77]                                  ; $5720: $fa $77 $ca
	cp   b                                           ; $5723: $b8
	jr   z, jr_024_573c                              ; $5724: $28 $16

	push af                                          ; $5726: $f5
	ld   a, $a5                                      ; $5727: $3e $a5
	ld   [wFarCallAddr], a                                  ; $5729: $ea $98 $c2
	ld   a, $66                                      ; $572c: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $572e: $ea $99 $c2
	ld   a, $3e                                      ; $5731: $3e $3e
	ld   [wFarCallBank], a                                  ; $5733: $ea $9a $c2
	pop  af                                          ; $5736: $f1
	call FarCall                                       ; $5737: $cd $62 $09
	jr   nz, jr_024_5740                             ; $573a: $20 $04

jr_024_573c:
	ld   hl, wGameSubstate                                   ; $573c: $21 $a1 $c2
	inc  [hl]                                        ; $573f: $34

jr_024_5740:
	ret                                              ; $5740: $c9


jr_024_5741:
	ld   a, $00                                      ; $5741: $3e $00
	ld   [$ca85], a                                  ; $5743: $ea $85 $ca
	call Call_024_788d                               ; $5746: $cd $8d $78
	ld   a, $3b                                      ; $5749: $3e $3b
	ld   [$ca86], a                                  ; $574b: $ea $86 $ca
	ld   a, $38                                      ; $574e: $3e $38
	ld   [wGameSubstate], a                                  ; $5750: $ea $a1 $c2
	ret                                              ; $5753: $c9


jr_024_5754:
	ld   a, $01                                      ; $5754: $3e $01
	ld   [$ca85], a                                  ; $5756: $ea $85 $ca
	ld   a, [$c9b2]                                  ; $5759: $fa $b2 $c9
	cp   $01                                         ; $575c: $fe $01
	jr   z, jr_024_577c                              ; $575e: $28 $1c

	ld   a, $01                                      ; $5760: $3e $01
	push af                                          ; $5762: $f5
	ld   a, $cc                                      ; $5763: $3e $cc
	ld   [wFarCallAddr], a                                  ; $5765: $ea $98 $c2
	ld   a, $65                                      ; $5768: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $576a: $ea $99 $c2
	ld   a, $3e                                      ; $576d: $3e $3e
	ld   [wFarCallBank], a                                  ; $576f: $ea $9a $c2
	pop  af                                          ; $5772: $f1
	call FarCall                                       ; $5773: $cd $62 $09
	ld   a, $37                                      ; $5776: $3e $37
	ld   [wGameSubstate], a                                  ; $5778: $ea $a1 $c2
	ret                                              ; $577b: $c9


jr_024_577c:
	ld   a, $36                                      ; $577c: $3e $36
	ld   [wGameSubstate], a                                  ; $577e: $ea $a1 $c2
	ret                                              ; $5781: $c9


BattleSubstate35:
	call ClearOam                                       ; $5782: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5785: $cd $d3 $2e
	push af                                          ; $5788: $f5
	ld   a, $3c                                      ; $5789: $3e $3c
	ld   [wFarCallAddr], a                                  ; $578b: $ea $98 $c2
	ld   a, $61                                      ; $578e: $3e $61
	ld   [wFarCallAddr+1], a                                  ; $5790: $ea $99 $c2
	ld   a, $3e                                      ; $5793: $3e $3e
	ld   [wFarCallBank], a                                  ; $5795: $ea $9a $c2
	pop  af                                          ; $5798: $f1
	call FarCall                                       ; $5799: $cd $62 $09
	push af                                          ; $579c: $f5
	ld   a, $e9                                      ; $579d: $3e $e9
	ld   [wFarCallAddr], a                                  ; $579f: $ea $98 $c2
	ld   a, $61                                      ; $57a2: $3e $61
	ld   [wFarCallAddr+1], a                                  ; $57a4: $ea $99 $c2
	ld   a, $3e                                      ; $57a7: $3e $3e
	ld   [wFarCallBank], a                                  ; $57a9: $ea $9a $c2
	pop  af                                          ; $57ac: $f1
	call FarCall                                       ; $57ad: $cd $62 $09
	ld   a, $06                                      ; $57b0: $3e $06
	ld   [wGameSubstate], a                                  ; $57b2: $ea $a1 $c2
	ret                                              ; $57b5: $c9


BattleSubstate36:
	ld   a, [$ca86]                                  ; $57b6: $fa $86 $ca
	inc  a                                           ; $57b9: $3c
	ld   [$ca86], a                                  ; $57ba: $ea $86 $ca
	cp   $0a                                         ; $57bd: $fe $0a
	jr   nz, jr_024_57ca                             ; $57bf: $20 $09

	xor  a                                           ; $57c1: $af
	ld   [$ca86], a                                  ; $57c2: $ea $86 $ca
	ld   a, $38                                      ; $57c5: $3e $38
	ld   [wGameSubstate], a                                  ; $57c7: $ea $a1 $c2

jr_024_57ca:
	call ClearOam                                       ; $57ca: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $57cd: $cd $d3 $2e
	ret                                              ; $57d0: $c9


BattleSubstate37:
	ld   a, [$ca86]                                  ; $57d1: $fa $86 $ca
	inc  a                                           ; $57d4: $3c
	ld   [$ca86], a                                  ; $57d5: $ea $86 $ca
	cp   $0a                                         ; $57d8: $fe $0a
	jr   nz, jr_024_57e4                             ; $57da: $20 $08

	xor  a                                           ; $57dc: $af
	ld   [$ca86], a                                  ; $57dd: $ea $86 $ca
	ld   hl, wGameSubstate                                   ; $57e0: $21 $a1 $c2
	inc  [hl]                                        ; $57e3: $34

jr_024_57e4:
	push af                                          ; $57e4: $f5
	ld   a, $a5                                      ; $57e5: $3e $a5
	ld   [wFarCallAddr], a                                  ; $57e7: $ea $98 $c2
	ld   a, $66                                      ; $57ea: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $57ec: $ea $99 $c2
	ld   a, $3e                                      ; $57ef: $3e $3e
	ld   [wFarCallBank], a                                  ; $57f1: $ea $9a $c2
	pop  af                                          ; $57f4: $f1
	call FarCall                                       ; $57f5: $cd $62 $09
	call ClearOam                                       ; $57f8: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $57fb: $cd $d3 $2e
	ret                                              ; $57fe: $c9


BattleSubstate38:
	call ClearOam                                       ; $57ff: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5802: $cd $d3 $2e
	ld   a, [$ca85]                                  ; $5805: $fa $85 $ca
	add  $2e                                         ; $5808: $c6 $2e
	ld   d, a                                        ; $580a: $57
	call Call_024_6bdf                               ; $580b: $cd $df $6b
	ld   a, [$ca85]                                  ; $580e: $fa $85 $ca
	and  a                                           ; $5811: $a7
	jr   z, jr_024_5819                              ; $5812: $28 $05

	ld   hl, wGameSubstate                                   ; $5814: $21 $a1 $c2
	inc  [hl]                                        ; $5817: $34
	ret                                              ; $5818: $c9


jr_024_5819:
	ld   a, $3b                                      ; $5819: $3e $3b
	ld   [wGameSubstate], a                                  ; $581b: $ea $a1 $c2
	ret                                              ; $581e: $c9


BattleSubstate39:
	call ClearOam                                       ; $581f: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5822: $cd $d3 $2e
	ld   a, $0f                                      ; $5825: $3e $0f
	push af                                          ; $5827: $f5
	ld   a, $de                                      ; $5828: $3e $de
	ld   [wFarCallAddr], a                                  ; $582a: $ea $98 $c2
	ld   a, $65                                      ; $582d: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $582f: $ea $99 $c2
	ld   a, $3e                                      ; $5832: $3e $3e
	ld   [wFarCallBank], a                                  ; $5834: $ea $9a $c2
	pop  af                                          ; $5837: $f1
	call FarCall                                       ; $5838: $cd $62 $09
	ld   hl, wGameSubstate                                   ; $583b: $21 $a1 $c2
	inc  [hl]                                        ; $583e: $34
	ret                                              ; $583f: $c9


BattleSubstate3a:
	push af                                          ; $5840: $f5
	ld   a, $ae                                      ; $5841: $3e $ae
	ld   [wFarCallAddr], a                                  ; $5843: $ea $98 $c2
	ld   a, $66                                      ; $5846: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $5848: $ea $99 $c2
	ld   a, $3e                                      ; $584b: $3e $3e
	ld   [wFarCallBank], a                                  ; $584d: $ea $9a $c2
	pop  af                                          ; $5850: $f1
	call FarCall                                       ; $5851: $cd $62 $09
	ld   a, [$ca86]                                  ; $5854: $fa $86 $ca
	inc  a                                           ; $5857: $3c
	ld   [$ca86], a                                  ; $5858: $ea $86 $ca
	cp   $3c                                         ; $585b: $fe $3c
	jr   nz, jr_024_5867                             ; $585d: $20 $08

	xor  a                                           ; $585f: $af
	ld   [$ca86], a                                  ; $5860: $ea $86 $ca
	ld   hl, wGameSubstate                                   ; $5863: $21 $a1 $c2
	inc  [hl]                                        ; $5866: $34

jr_024_5867:
	call ClearOam                                       ; $5867: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $586a: $cd $d3 $2e
	ret                                              ; $586d: $c9


BattleSubstate3b:
	call ClearOam                                       ; $586e: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5871: $cd $d3 $2e
	call Call_024_6c6d                               ; $5874: $cd $6d $6c
	ret  nc                                          ; $5877: $d0

	ld   c, $01                                      ; $5878: $0e $01
	ld   de, $8000                                   ; $587a: $11 $00 $80
	ld   a, $8d                                      ; $587d: $3e $8d
	ld   hl, $7fe0                                   ; $587f: $21 $e0 $7f
	ld   b, $02                                      ; $5882: $06 $02
	call EnqueueHDMATransfer                                       ; $5884: $cd $7c $02
	ld   a, $24                                      ; $5887: $3e $24
	ld   hl, $40a8                                   ; $5889: $21 $a8 $40
	ld   de, $c356                                   ; $588c: $11 $56 $c3
	ld   bc, $0008                                   ; $588f: $01 $08 $00
	call FarMemCopy                                       ; $5892: $cd $b2 $09
	ld   bc, $3c3f                                   ; $5895: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5898: $cd $aa $04
	ld   a, [$ca86]                                  ; $589b: $fa $86 $ca
	srl  a                                           ; $589e: $cb $3f
	srl  a                                           ; $58a0: $cb $3f
	and  $07                                         ; $58a2: $e6 $07
	ld   b, $4c                                      ; $58a4: $06 $4c
	ld   h, $00                                      ; $58a6: $26 $00
	ld   l, a                                        ; $58a8: $6f
	ld   de, $467e                                   ; $58a9: $11 $7e $46
	add  hl, de                                      ; $58ac: $19
	ld   a, [hl]                                     ; $58ad: $7e
	add  $84                                         ; $58ae: $c6 $84
	ld   c, a                                        ; $58b0: $4f
	ld   a, $01                                      ; $58b1: $3e $01
	ld   [wSpriteGroup], a                                  ; $58b3: $ea $1a $c2
	ld   a, $34                                      ; $58b6: $3e $34
	call LoadSpriteFromMainTable                                       ; $58b8: $cd $16 $0e
	ld   a, [wInGameButtonsHeld]                                  ; $58bb: $fa $0f $c2
	and  $02                                         ; $58be: $e6 $02
	jr   nz, jr_024_58d1                             ; $58c0: $20 $0f

	ld   a, [wInGameButtonsPressed]                                  ; $58c2: $fa $10 $c2
	and  $01                                         ; $58c5: $e6 $01
	jr   nz, jr_024_58d1                             ; $58c7: $20 $08

	ld   a, [$ca86]                                  ; $58c9: $fa $86 $ca
	inc  a                                           ; $58cc: $3c
	ld   [$ca86], a                                  ; $58cd: $ea $86 $ca
	ret                                              ; $58d0: $c9


jr_024_58d1:
	xor  a                                           ; $58d1: $af
	ld   [$ca86], a                                  ; $58d2: $ea $86 $ca
	xor  a                                           ; $58d5: $af
	call PlaySoundEffect                                       ; $58d6: $cd $df $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58d9: $cf
	ld   a, $01                                      ; $58da: $3e $01
	call PlaySoundEffect                                       ; $58dc: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $58df: $21 $a1 $c2
	inc  [hl]                                        ; $58e2: $34
	ret                                              ; $58e3: $c9


BattleSubstate3c:
	call ClearOam                                       ; $58e4: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $58e7: $cd $d3 $2e
	ld   a, [wWramBank]                                  ; $58ea: $fa $93 $c2
	push af                                          ; $58ed: $f5
	ld   a, $07                                      ; $58ee: $3e $07
	ld   [wWramBank], a                                  ; $58f0: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $58f3: $e0 $70
	ld   a, $1e                                      ; $58f5: $3e $1e
	ld   de, $df19                                   ; $58f7: $11 $19 $df
	ld   hl, $687c                                   ; $58fa: $21 $7c $68
	ld   bc, $0080                                   ; $58fd: $01 $80 $00
	call FarMemCopy                                       ; $5900: $cd $b2 $09
	ld   a, $a2                                      ; $5903: $3e $a2
	ld   de, $df21                                   ; $5905: $11 $21 $df
	ld   hl, $4613                                   ; $5908: $21 $13 $46
	ld   bc, $0008                                   ; $590b: $01 $08 $00
	call FarMemCopy                                       ; $590e: $cd $b2 $09
	ld   a, [$ca70]                                  ; $5911: $fa $70 $ca
	cp   $04                                         ; $5914: $fe $04
	jr   nz, jr_024_5934                             ; $5916: $20 $1c

	ld   a, $1e                                      ; $5918: $3e $1e
	ld   de, $df19                                   ; $591a: $11 $19 $df
	ld   hl, $697c                                   ; $591d: $21 $7c $69
	ld   bc, $0080                                   ; $5920: $01 $80 $00
	call FarMemCopy                                       ; $5923: $cd $b2 $09
	ld   a, $a2                                      ; $5926: $3e $a2
	ld   de, $df21                                   ; $5928: $11 $21 $df
	ld   hl, $4613                                   ; $592b: $21 $13 $46
	ld   bc, $0008                                   ; $592e: $01 $08 $00
	call FarMemCopy                                       ; $5931: $cd $b2 $09

jr_024_5934:
	ld   b, $00                                      ; $5934: $06 $00
	ld   hl, $df19                                   ; $5936: $21 $19 $df
	ld   hl, wBGPalettes                                   ; $5939: $21 $de $c2
	ld   b, $00                                      ; $593c: $06 $00
	call Call_024_76d8                               ; $593e: $cd $d8 $76
	pop  af                                          ; $5941: $f1
	ld   [wWramBank], a                                  ; $5942: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5945: $e0 $70

Jump_024_5947:
	xor  a                                           ; $5947: $af
	call PlaySong                                       ; $5948: $cd $92 $1a
	xor  a                                           ; $594b: $af
	call PlaySoundEffect                                       ; $594c: $cd $df $1a
	ld   a, [$cb1d]                                  ; $594f: $fa $1d $cb
	or   a                                           ; $5952: $b7
	jr   nz, jr_024_5974                             ; $5953: $20 $1f

	ld   a, [wBattleReturnState]                                  ; $5955: $fa $50 $ca
	ld   [wGameState], a                                  ; $5958: $ea $a0 $c2
	ld   a, [wBattleReturnSubstate]                                  ; $595b: $fa $51 $ca
	ld   [wGameSubstate], a                                  ; $595e: $ea $a1 $c2
	ld   a, [$ca85]                                  ; $5961: $fa $85 $ca
	ld   [wBattleWon], a                                  ; $5964: $ea $21 $cb
	ld   a, [wBattleReturnState]                                  ; $5967: $fa $50 $ca
	ld   [wGameState], a                                  ; $596a: $ea $a0 $c2
	ld   a, [wBattleReturnSubstate]                                  ; $596d: $fa $51 $ca
	ld   [wGameSubstate], a                                  ; $5970: $ea $a1 $c2
	ret                                              ; $5973: $c9


jr_024_5974:
	ld   h, $2f                                      ; $5974: $26 $2f
	ld   l, $00                                      ; $5976: $2e $00
	ld   a, [wBattleReturnState]                                  ; $5978: $fa $50 $ca
	ld   d, a                                        ; $597b: $57
	ld   a, [wBattleReturnSubstate]                                  ; $597c: $fa $51 $ca
	ld   e, a                                        ; $597f: $5f
	ld   a, [$ca85]                                  ; $5980: $fa $85 $ca
	ld   [wBattleWon], a                                  ; $5983: $ea $21 $cb
	ld   a, [wBattleReturnState]                                  ; $5986: $fa $50 $ca
	ld   [wGameState], a                                  ; $5989: $ea $a0 $c2
	ld   a, [wBattleReturnSubstate]                                  ; $598c: $fa $51 $ca
	ld   [wGameSubstate], a                                  ; $598f: $ea $a1 $c2
	ret                                              ; $5992: $c9


BattleSubstate3d:
	call ClearOam                                       ; $5993: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5996: $cd $d3 $2e
	ld   d, $30                                      ; $5999: $16 $30
	call Call_024_6bdf                               ; $599b: $cd $df $6b
	ld   hl, wGameSubstate                                   ; $599e: $21 $a1 $c2
	inc  [hl]                                        ; $59a1: $34
	call Func_24_7657                                      ; $59a2: $cd $57 $76
	ret                                              ; $59a5: $c9


BattleSubstate3e:
	ld   b, $00                                      ; $59a6: $06 $00
	ld   c, $01                                      ; $59a8: $0e $01
	push af                                          ; $59aa: $f5
	ld   a, $ba                                      ; $59ab: $3e $ba
	ld   [wFarCallAddr], a                                  ; $59ad: $ea $98 $c2
	ld   a, $54                                      ; $59b0: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $59b2: $ea $99 $c2
	ld   a, $0a                                      ; $59b5: $3e $0a
	ld   [wFarCallBank], a                                  ; $59b7: $ea $9a $c2
	pop  af                                          ; $59ba: $f1
	call FarCall                                       ; $59bb: $cd $62 $09
	call ClearOam                                       ; $59be: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $59c1: $cd $d3 $2e
	ld   a, [$ca7b]                                  ; $59c4: $fa $7b $ca
	ld   b, $3e                                      ; $59c7: $06 $3e
	cp   b                                           ; $59c9: $b8
	jr   nc, jr_024_59ce                             ; $59ca: $30 $02

	jr   jr_024_59e5                                 ; $59cc: $18 $17

jr_024_59ce:
	ld   b, $19                                      ; $59ce: $06 $19
	ld   c, $e1                                      ; $59d0: $0e $e1
	ld   a, [$ca79]                                  ; $59d2: $fa $79 $ca
	cp   b                                           ; $59d5: $b8
	jr   nc, jr_024_59db                             ; $59d6: $30 $03

	xor  a                                           ; $59d8: $af
	jr   jr_024_59dc                                 ; $59d9: $18 $01

jr_024_59db:
	sub  b                                           ; $59db: $90

jr_024_59dc:
	ld   d, a                                        ; $59dc: $57
	ld   a, [$ca7b]                                  ; $59dd: $fa $7b $ca
	cp   d                                           ; $59e0: $ba
	jr   c, jr_024_59e5                              ; $59e1: $38 $02

	jr   jr_024_59ea                                 ; $59e3: $18 $05

jr_024_59e5:
	ld   hl, wGameSubstate                                   ; $59e5: $21 $a1 $c2
	inc  [hl]                                        ; $59e8: $34
	ret                                              ; $59e9: $c9


jr_024_59ea:
	ld   a, $40                                      ; $59ea: $3e $40
	ld   [wGameSubstate], a                                  ; $59ec: $ea $a1 $c2
	ret                                              ; $59ef: $c9


BattleSubstate3f:
	call ClearOam                                       ; $59f0: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $59f3: $cd $d3 $2e
	call Call_024_6c6d                               ; $59f6: $cd $6d $6c
	ret  nc                                          ; $59f9: $d0

	ld   c, $01                                      ; $59fa: $0e $01
	ld   de, $8000                                   ; $59fc: $11 $00 $80
	ld   a, $8d                                      ; $59ff: $3e $8d
	ld   hl, $7fe0                                   ; $5a01: $21 $e0 $7f
	ld   b, $02                                      ; $5a04: $06 $02
	call EnqueueHDMATransfer                                       ; $5a06: $cd $7c $02
	ld   a, $24                                      ; $5a09: $3e $24
	ld   hl, $40a8                                   ; $5a0b: $21 $a8 $40
	ld   de, $c356                                   ; $5a0e: $11 $56 $c3
	ld   bc, $0008                                   ; $5a11: $01 $08 $00
	call FarMemCopy                                       ; $5a14: $cd $b2 $09
	ld   bc, $3c3f                                   ; $5a17: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5a1a: $cd $aa $04
	ld   a, [$ca86]                                  ; $5a1d: $fa $86 $ca
	srl  a                                           ; $5a20: $cb $3f
	srl  a                                           ; $5a22: $cb $3f
	and  $07                                         ; $5a24: $e6 $07
	ld   b, $4c                                      ; $5a26: $06 $4c
	ld   h, $00                                      ; $5a28: $26 $00
	ld   l, a                                        ; $5a2a: $6f
	ld   de, $467e                                   ; $5a2b: $11 $7e $46
	add  hl, de                                      ; $5a2e: $19
	ld   a, [hl]                                     ; $5a2f: $7e
	add  $84                                         ; $5a30: $c6 $84
	ld   c, a                                        ; $5a32: $4f
	ld   a, $01                                      ; $5a33: $3e $01
	ld   [wSpriteGroup], a                                  ; $5a35: $ea $1a $c2
	ld   a, $34                                      ; $5a38: $3e $34
	call LoadSpriteFromMainTable                                       ; $5a3a: $cd $16 $0e
	ld   a, [wInGameButtonsHeld]                                  ; $5a3d: $fa $0f $c2
	and  $02                                         ; $5a40: $e6 $02
	jr   nz, jr_024_5a53                             ; $5a42: $20 $0f

	ld   a, [wInGameButtonsPressed]                                  ; $5a44: $fa $10 $c2
	and  $01                                         ; $5a47: $e6 $01
	jr   nz, jr_024_5a53                             ; $5a49: $20 $08

	ld   a, [$ca86]                                  ; $5a4b: $fa $86 $ca
	inc  a                                           ; $5a4e: $3c
	ld   [$ca86], a                                  ; $5a4f: $ea $86 $ca
	ret                                              ; $5a52: $c9


jr_024_5a53:
	xor  a                                           ; $5a53: $af
	ld   [$ca86], a                                  ; $5a54: $ea $86 $ca
	xor  a                                           ; $5a57: $af
	call PlaySoundEffect                                       ; $5a58: $cd $df $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a5b: $cf
	ld   a, $01                                      ; $5a5c: $3e $01
	call PlaySoundEffect                                       ; $5a5e: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $5a61: $21 $a1 $c2
	inc  [hl]                                        ; $5a64: $34
	ret                                              ; $5a65: $c9


BattleSubstate40:
	call ClearOam                                       ; $5a66: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5a69: $cd $d3 $2e
	ld   a, [$ca6f]                                  ; $5a6c: $fa $6f $ca
	add  $31                                         ; $5a6f: $c6 $31
	ld   d, a                                        ; $5a71: $57
	call Call_024_6bdf                               ; $5a72: $cd $df $6b
	ld   hl, wGameSubstate                                   ; $5a75: $21 $a1 $c2
	inc  [hl]                                        ; $5a78: $34
	ret                                              ; $5a79: $c9


BattleSubstate41:
	call ClearOam                                       ; $5a7a: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5a7d: $cd $d3 $2e
	call Call_024_6c6d                               ; $5a80: $cd $6d $6c
	ret  nc                                          ; $5a83: $d0

	ld   c, $01                                      ; $5a84: $0e $01
	ld   de, $8000                                   ; $5a86: $11 $00 $80
	ld   a, $8d                                      ; $5a89: $3e $8d
	ld   hl, $7fe0                                   ; $5a8b: $21 $e0 $7f
	ld   b, $02                                      ; $5a8e: $06 $02
	call EnqueueHDMATransfer                                       ; $5a90: $cd $7c $02
	ld   a, $24                                      ; $5a93: $3e $24
	ld   hl, $40a8                                   ; $5a95: $21 $a8 $40
	ld   de, $c356                                   ; $5a98: $11 $56 $c3
	ld   bc, $0008                                   ; $5a9b: $01 $08 $00
	call FarMemCopy                                       ; $5a9e: $cd $b2 $09
	ld   bc, $3c3f                                   ; $5aa1: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5aa4: $cd $aa $04
	ld   a, [$ca86]                                  ; $5aa7: $fa $86 $ca
	srl  a                                           ; $5aaa: $cb $3f
	srl  a                                           ; $5aac: $cb $3f
	and  $07                                         ; $5aae: $e6 $07
	ld   b, $4c                                      ; $5ab0: $06 $4c
	ld   h, $00                                      ; $5ab2: $26 $00
	ld   l, a                                        ; $5ab4: $6f
	ld   de, $467e                                   ; $5ab5: $11 $7e $46
	add  hl, de                                      ; $5ab8: $19
	ld   a, [hl]                                     ; $5ab9: $7e
	add  $84                                         ; $5aba: $c6 $84
	ld   c, a                                        ; $5abc: $4f
	ld   a, $01                                      ; $5abd: $3e $01
	ld   [wSpriteGroup], a                                  ; $5abf: $ea $1a $c2
	ld   a, $34                                      ; $5ac2: $3e $34
	call LoadSpriteFromMainTable                                       ; $5ac4: $cd $16 $0e
	ld   a, [wInGameButtonsHeld]                                  ; $5ac7: $fa $0f $c2
	and  $02                                         ; $5aca: $e6 $02
	jr   nz, jr_024_5add                             ; $5acc: $20 $0f

	ld   a, [wInGameButtonsPressed]                                  ; $5ace: $fa $10 $c2
	and  $01                                         ; $5ad1: $e6 $01
	jr   nz, jr_024_5add                             ; $5ad3: $20 $08

	ld   a, [$ca86]                                  ; $5ad5: $fa $86 $ca
	inc  a                                           ; $5ad8: $3c
	ld   [$ca86], a                                  ; $5ad9: $ea $86 $ca
	ret                                              ; $5adc: $c9


jr_024_5add:
	xor  a                                           ; $5add: $af
	ld   [$ca86], a                                  ; $5ade: $ea $86 $ca
	xor  a                                           ; $5ae1: $af
	call PlaySoundEffect                                       ; $5ae2: $cd $df $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ae5: $cf
	ld   a, $01                                      ; $5ae6: $3e $01
	call PlaySoundEffect                                       ; $5ae8: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $5aeb: $21 $a1 $c2
	inc  [hl]                                        ; $5aee: $34
	ret                                              ; $5aef: $c9


BattleSubstate42:
	call ClearOam                                       ; $5af0: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5af3: $cd $d3 $2e
	ld   a, $01                                      ; $5af6: $3e $01
	ld   [$ca95], a                                  ; $5af8: $ea $95 $ca
	ld   a, [$ca6f]                                  ; $5afb: $fa $6f $ca
	add  $28                                         ; $5afe: $c6 $28
	ld   d, a                                        ; $5b00: $57
	call Call_024_6bdf                               ; $5b01: $cd $df $6b
	ld   hl, wGameSubstate                                   ; $5b04: $21 $a1 $c2
	inc  [hl]                                        ; $5b07: $34
	ret                                              ; $5b08: $c9


BattleSubstate43:
	call ClearOam                                       ; $5b09: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5b0c: $cd $d3 $2e
	ld   a, [$ca6f]                                  ; $5b0f: $fa $6f $ca
	push af                                          ; $5b12: $f5
	ld   a, $9f                                      ; $5b13: $3e $9f
	ld   [wFarCallAddr], a                                  ; $5b15: $ea $98 $c2
	ld   a, $67                                      ; $5b18: $3e $67
	ld   [wFarCallAddr+1], a                                  ; $5b1a: $ea $99 $c2
	ld   a, $3e                                      ; $5b1d: $3e $3e
	ld   [wFarCallBank], a                                  ; $5b1f: $ea $9a $c2
	pop  af                                          ; $5b22: $f1
	call FarCall                                       ; $5b23: $cd $62 $09
	ld   hl, wGameSubstate                                   ; $5b26: $21 $a1 $c2
	inc  [hl]                                        ; $5b29: $34
	ret                                              ; $5b2a: $c9


BattleSubstate44:
	call ClearOam                                       ; $5b2b: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5b2e: $cd $d3 $2e
	push af                                          ; $5b31: $f5
	ld   a, $a7                                      ; $5b32: $3e $a7
	ld   [wFarCallAddr], a                                  ; $5b34: $ea $98 $c2
	ld   a, $67                                      ; $5b37: $3e $67
	ld   [wFarCallAddr+1], a                                  ; $5b39: $ea $99 $c2
	ld   a, $3e                                      ; $5b3c: $3e $3e
	ld   [wFarCallBank], a                                  ; $5b3e: $ea $9a $c2
	pop  af                                          ; $5b41: $f1
	call FarCall                                       ; $5b42: $cd $62 $09
	ret  nz                                          ; $5b45: $c0

	ld   hl, wGameSubstate                                   ; $5b46: $21 $a1 $c2
	inc  [hl]                                        ; $5b49: $34
	ret                                              ; $5b4a: $c9


BattleSubstate45:
	call ClearOam                                       ; $5b4b: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5b4e: $cd $d3 $2e
	call Call_024_6c6d                               ; $5b51: $cd $6d $6c
	ret  nc                                          ; $5b54: $d0

	ld   c, $01                                      ; $5b55: $0e $01
	ld   de, $8000                                   ; $5b57: $11 $00 $80
	ld   a, $8d                                      ; $5b5a: $3e $8d
	ld   hl, $7fe0                                   ; $5b5c: $21 $e0 $7f
	ld   b, $02                                      ; $5b5f: $06 $02
	call EnqueueHDMATransfer                                       ; $5b61: $cd $7c $02
	ld   a, $24                                      ; $5b64: $3e $24
	ld   hl, $40a8                                   ; $5b66: $21 $a8 $40
	ld   de, $c356                                   ; $5b69: $11 $56 $c3
	ld   bc, $0008                                   ; $5b6c: $01 $08 $00
	call FarMemCopy                                       ; $5b6f: $cd $b2 $09
	ld   bc, $3c3f                                   ; $5b72: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5b75: $cd $aa $04
	ld   a, [$ca86]                                  ; $5b78: $fa $86 $ca
	srl  a                                           ; $5b7b: $cb $3f
	srl  a                                           ; $5b7d: $cb $3f
	and  $07                                         ; $5b7f: $e6 $07
	ld   b, $4c                                      ; $5b81: $06 $4c
	ld   h, $00                                      ; $5b83: $26 $00
	ld   l, a                                        ; $5b85: $6f
	ld   de, $467e                                   ; $5b86: $11 $7e $46
	add  hl, de                                      ; $5b89: $19
	ld   a, [hl]                                     ; $5b8a: $7e
	add  $84                                         ; $5b8b: $c6 $84
	ld   c, a                                        ; $5b8d: $4f
	ld   a, $01                                      ; $5b8e: $3e $01
	ld   [wSpriteGroup], a                                  ; $5b90: $ea $1a $c2
	ld   a, $34                                      ; $5b93: $3e $34
	call LoadSpriteFromMainTable                                       ; $5b95: $cd $16 $0e
	ld   a, [wInGameButtonsHeld]                                  ; $5b98: $fa $0f $c2
	and  $02                                         ; $5b9b: $e6 $02
	jr   nz, jr_024_5bae                             ; $5b9d: $20 $0f

	ld   a, [wInGameButtonsPressed]                                  ; $5b9f: $fa $10 $c2
	and  $01                                         ; $5ba2: $e6 $01
	jr   nz, jr_024_5bae                             ; $5ba4: $20 $08

	ld   a, [$ca86]                                  ; $5ba6: $fa $86 $ca
	inc  a                                           ; $5ba9: $3c
	ld   [$ca86], a                                  ; $5baa: $ea $86 $ca
	ret                                              ; $5bad: $c9


jr_024_5bae:
	xor  a                                           ; $5bae: $af
	ld   [$ca86], a                                  ; $5baf: $ea $86 $ca
	xor  a                                           ; $5bb2: $af
	call PlaySoundEffect                                       ; $5bb3: $cd $df $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bb6: $cf
	ld   a, $01                                      ; $5bb7: $3e $01
	call PlaySoundEffect                                       ; $5bb9: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $5bbc: $21 $a1 $c2
	inc  [hl]                                        ; $5bbf: $34
	ret                                              ; $5bc0: $c9


BattleSubstate46:
	call ClearOam                                       ; $5bc1: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5bc4: $cd $d3 $2e
	ld   a, [$ca6f]                                  ; $5bc7: $fa $6f $ca
	cp   $03                                         ; $5bca: $fe $03
	jr   z, jr_024_5be7                              ; $5bcc: $28 $19

	push af                                          ; $5bce: $f5
	ld   a, $c0                                      ; $5bcf: $3e $c0
	ld   [wFarCallAddr], a                                  ; $5bd1: $ea $98 $c2
	ld   a, $67                                      ; $5bd4: $3e $67
	ld   [wFarCallAddr+1], a                                  ; $5bd6: $ea $99 $c2
	ld   a, $3e                                      ; $5bd9: $3e $3e
	ld   [wFarCallBank], a                                  ; $5bdb: $ea $9a $c2
	pop  af                                          ; $5bde: $f1
	call FarCall                                       ; $5bdf: $cd $62 $09
	ld   hl, wGameSubstate                                   ; $5be2: $21 $a1 $c2
	inc  [hl]                                        ; $5be5: $34
	ret                                              ; $5be6: $c9


jr_024_5be7:
	ld   a, $09                                      ; $5be7: $3e $09
	push af                                          ; $5be9: $f5
	ld   a, $de                                      ; $5bea: $3e $de
	ld   [wFarCallAddr], a                                  ; $5bec: $ea $98 $c2
	ld   a, $65                                      ; $5bef: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $5bf1: $ea $99 $c2
	ld   a, $3e                                      ; $5bf4: $3e $3e
	ld   [wFarCallBank], a                                  ; $5bf6: $ea $9a $c2
	pop  af                                          ; $5bf9: $f1
	call FarCall                                       ; $5bfa: $cd $62 $09
	ld   a, $fa                                      ; $5bfd: $3e $fa
	push af                                          ; $5bff: $f5
	ld   a, $c7                                      ; $5c00: $3e $c7
	ld   [wFarCallAddr], a                                  ; $5c02: $ea $98 $c2
	ld   a, $66                                      ; $5c05: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $5c07: $ea $99 $c2
	ld   a, $3e                                      ; $5c0a: $3e $3e
	ld   [wFarCallBank], a                                  ; $5c0c: $ea $9a $c2
	pop  af                                          ; $5c0f: $f1
	call FarCall                                       ; $5c10: $cd $62 $09
	xor  a                                           ; $5c13: $af
	ld   [$ca7e], a                                  ; $5c14: $ea $7e $ca
	push af                                          ; $5c17: $f5
	ld   a, $e2                                      ; $5c18: $3e $e2
	ld   [wFarCallAddr], a                                  ; $5c1a: $ea $98 $c2
	ld   a, $66                                      ; $5c1d: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $5c1f: $ea $99 $c2
	ld   a, $3e                                      ; $5c22: $3e $3e
	ld   [wFarCallBank], a                                  ; $5c24: $ea $9a $c2
	pop  af                                          ; $5c27: $f1
	call FarCall                                       ; $5c28: $cd $62 $09
	ld   hl, wGameSubstate                                   ; $5c2b: $21 $a1 $c2
	inc  [hl]                                        ; $5c2e: $34
	ret                                              ; $5c2f: $c9


BattleSubstate47:
	ld   a, [$ca6f]                                  ; $5c30: $fa $6f $ca
	cp   $03                                         ; $5c33: $fe $03
	jr   z, jr_024_5c4d                              ; $5c35: $28 $16

	push af                                          ; $5c37: $f5
	ld   a, $c5                                      ; $5c38: $3e $c5
	ld   [wFarCallAddr], a                                  ; $5c3a: $ea $98 $c2
	ld   a, $67                                      ; $5c3d: $3e $67
	ld   [wFarCallAddr+1], a                                  ; $5c3f: $ea $99 $c2
	ld   a, $3e                                      ; $5c42: $3e $3e
	ld   [wFarCallBank], a                                  ; $5c44: $ea $9a $c2
	pop  af                                          ; $5c47: $f1
	call FarCall                                       ; $5c48: $cd $62 $09
	jr   jr_024_5c75                                 ; $5c4b: $18 $28

jr_024_5c4d:
	push af                                          ; $5c4d: $f5
	ld   a, $18                                      ; $5c4e: $3e $18
	ld   [wFarCallAddr], a                                  ; $5c50: $ea $98 $c2
	ld   a, $67                                      ; $5c53: $3e $67
	ld   [wFarCallAddr+1], a                                  ; $5c55: $ea $99 $c2
	ld   a, $3e                                      ; $5c58: $3e $3e
	ld   [wFarCallBank], a                                  ; $5c5a: $ea $9a $c2
	pop  af                                          ; $5c5d: $f1
	call FarCall                                       ; $5c5e: $cd $62 $09
	push af                                          ; $5c61: $f5
	ld   a, $ae                                      ; $5c62: $3e $ae
	ld   [wFarCallAddr], a                                  ; $5c64: $ea $98 $c2
	ld   a, $66                                      ; $5c67: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $5c69: $ea $99 $c2
	ld   a, $3e                                      ; $5c6c: $3e $3e
	ld   [wFarCallBank], a                                  ; $5c6e: $ea $9a $c2
	pop  af                                          ; $5c71: $f1
	call FarCall                                       ; $5c72: $cd $62 $09

jr_024_5c75:
	jr   nz, jr_024_5cd8                             ; $5c75: $20 $61

	ld   a, [$ca86]                                  ; $5c77: $fa $86 $ca
	inc  a                                           ; $5c7a: $3c
	ld   [$ca86], a                                  ; $5c7b: $ea $86 $ca
	cp   $14                                         ; $5c7e: $fe $14
	jr   nz, jr_024_5cd8                             ; $5c80: $20 $56

	xor  a                                           ; $5c82: $af
	ld   [$ca86], a                                  ; $5c83: $ea $86 $ca
	ld   a, [$ca6f]                                  ; $5c86: $fa $6f $ca
	cp   $03                                         ; $5c89: $fe $03
	jr   z, jr_024_5cd3                              ; $5c8b: $28 $46

	ld   a, $00                                      ; $5c8d: $3e $00
	push af                                          ; $5c8f: $f5
	ld   a, $fd                                      ; $5c90: $3e $fd
	ld   [wFarCallAddr], a                                  ; $5c92: $ea $98 $c2
	ld   a, $66                                      ; $5c95: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $5c97: $ea $99 $c2
	ld   a, $3e                                      ; $5c9a: $3e $3e
	ld   [wFarCallBank], a                                  ; $5c9c: $ea $9a $c2
	pop  af                                          ; $5c9f: $f1
	call FarCall                                       ; $5ca0: $cd $62 $09
	push af                                          ; $5ca3: $f5
	ld   a, $e4                                      ; $5ca4: $3e $e4
	ld   [wFarCallAddr], a                                  ; $5ca6: $ea $98 $c2
	ld   a, $67                                      ; $5ca9: $3e $67
	ld   [wFarCallAddr+1], a                                  ; $5cab: $ea $99 $c2
	ld   a, $3e                                      ; $5cae: $3e $3e
	ld   [wFarCallBank], a                                  ; $5cb0: $ea $9a $c2
	pop  af                                          ; $5cb3: $f1
	call FarCall                                       ; $5cb4: $cd $62 $09
	ld   a, $0f                                      ; $5cb7: $3e $0f
	push af                                          ; $5cb9: $f5
	ld   a, $de                                      ; $5cba: $3e $de
	ld   [wFarCallAddr], a                                  ; $5cbc: $ea $98 $c2
	ld   a, $65                                      ; $5cbf: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $5cc1: $ea $99 $c2
	ld   a, $3e                                      ; $5cc4: $3e $3e
	ld   [wFarCallBank], a                                  ; $5cc6: $ea $9a $c2
	pop  af                                          ; $5cc9: $f1
	call FarCall                                       ; $5cca: $cd $62 $09
	ld   hl, wGameSubstate                                   ; $5ccd: $21 $a1 $c2
	inc  [hl]                                        ; $5cd0: $34
	jr   jr_024_5cd8                                 ; $5cd1: $18 $05

jr_024_5cd3:
	ld   a, $48                                      ; $5cd3: $3e $48
	ld   [wGameSubstate], a                                  ; $5cd5: $ea $a1 $c2

jr_024_5cd8:
	call ClearOam                                       ; $5cd8: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5cdb: $cd $d3 $2e
	ret                                              ; $5cde: $c9


BattleSubstate48:
	ld   a, [$ca6f]                                  ; $5cdf: $fa $6f $ca
	cp   $03                                         ; $5ce2: $fe $03
	jr   z, jr_024_5d35                              ; $5ce4: $28 $4f

	push af                                          ; $5ce6: $f5
	ld   a, $ae                                      ; $5ce7: $3e $ae
	ld   [wFarCallAddr], a                                  ; $5ce9: $ea $98 $c2
	ld   a, $66                                      ; $5cec: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $5cee: $ea $99 $c2
	ld   a, $3e                                      ; $5cf1: $3e $3e
	ld   [wFarCallBank], a                                  ; $5cf3: $ea $9a $c2
	pop  af                                          ; $5cf6: $f1
	call FarCall                                       ; $5cf7: $cd $62 $09
	push af                                          ; $5cfa: $f5
	ld   a, $9d                                      ; $5cfb: $3e $9d
	ld   [wFarCallAddr], a                                  ; $5cfd: $ea $98 $c2
	ld   a, $6b                                      ; $5d00: $3e $6b
	ld   [wFarCallAddr+1], a                                  ; $5d02: $ea $99 $c2
	ld   a, $3e                                      ; $5d05: $3e $3e
	ld   [wFarCallBank], a                                  ; $5d07: $ea $9a $c2
	pop  af                                          ; $5d0a: $f1
	call FarCall                                       ; $5d0b: $cd $62 $09
	push af                                          ; $5d0e: $f5
	ld   a, $e9                                      ; $5d0f: $3e $e9
	ld   [wFarCallAddr], a                                  ; $5d11: $ea $98 $c2
	ld   a, $67                                      ; $5d14: $3e $67
	ld   [wFarCallAddr+1], a                                  ; $5d16: $ea $99 $c2
	ld   a, $3e                                      ; $5d19: $3e $3e
	ld   [wFarCallBank], a                                  ; $5d1b: $ea $9a $c2
	pop  af                                          ; $5d1e: $f1
	call FarCall                                       ; $5d1f: $cd $62 $09
	jr   nz, jr_024_5d2e                             ; $5d22: $20 $0a

	ld   a, $01                                      ; $5d24: $3e $01
	ld   [$ca85], a                                  ; $5d26: $ea $85 $ca
	ld   a, $51                                      ; $5d29: $3e $51
	ld   [wGameSubstate], a                                  ; $5d2b: $ea $a1 $c2

jr_024_5d2e:
	call ClearOam                                       ; $5d2e: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5d31: $cd $d3 $2e
	ret                                              ; $5d34: $c9


jr_024_5d35:
	xor  a                                           ; $5d35: $af
	ld   [$ca7e], a                                  ; $5d36: $ea $7e $ca
	push af                                          ; $5d39: $f5
	ld   a, $e2                                      ; $5d3a: $3e $e2
	ld   [wFarCallAddr], a                                  ; $5d3c: $ea $98 $c2
	ld   a, $66                                      ; $5d3f: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $5d41: $ea $99 $c2
	ld   a, $3e                                      ; $5d44: $3e $3e
	ld   [wFarCallBank], a                                  ; $5d46: $ea $9a $c2
	pop  af                                          ; $5d49: $f1
	call FarCall                                       ; $5d4a: $cd $62 $09
	ld   hl, wGameSubstate                                   ; $5d4d: $21 $a1 $c2
	inc  [hl]                                        ; $5d50: $34
	ret                                              ; $5d51: $c9


BattleSubstate49:
	xor  a                                           ; $5d52: $af
	ld   [$ca78], a                                  ; $5d53: $ea $78 $ca
	ld   a, [$ca79]                                  ; $5d56: $fa $79 $ca
	ld   h, a                                        ; $5d59: $67
	ld   l, $64                                      ; $5d5a: $2e $64
	call AequHtimesL                                       ; $5d5c: $cd $ac $0b
	ld   a, [$ca7a]                                  ; $5d5f: $fa $7a $ca
	call Func_0c50                                       ; $5d62: $cd $50 $0c
	ld   a, l                                        ; $5d65: $7d
	cp   $3c                                         ; $5d66: $fe $3c
	jr   c, jr_024_5d8d                              ; $5d68: $38 $23

	ld   a, [$ca76]                                  ; $5d6a: $fa $76 $ca
	ld   [$ca77], a                                  ; $5d6d: $ea $77 $ca
	ld   a, $00                                      ; $5d70: $3e $00
	ld   [$ca76], a                                  ; $5d72: $ea $76 $ca
	set  7, a                                        ; $5d75: $cb $ff
	push af                                          ; $5d77: $f5
	ld   a, $cc                                      ; $5d78: $3e $cc
	ld   [wFarCallAddr], a                                  ; $5d7a: $ea $98 $c2
	ld   a, $65                                      ; $5d7d: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $5d7f: $ea $99 $c2
	ld   a, $3e                                      ; $5d82: $3e $3e
	ld   [wFarCallBank], a                                  ; $5d84: $ea $9a $c2
	pop  af                                          ; $5d87: $f1
	call FarCall                                       ; $5d88: $cd $62 $09
	jr   jr_024_5df4                                 ; $5d8b: $18 $67

jr_024_5d8d:
	ld   a, [$ca76]                                  ; $5d8d: $fa $76 $ca
	ld   [$ca77], a                                  ; $5d90: $ea $77 $ca
	ld   a, $04                                      ; $5d93: $3e $04
	ld   [$ca76], a                                  ; $5d95: $ea $76 $ca
	set  7, a                                        ; $5d98: $cb $ff
	push af                                          ; $5d9a: $f5
	ld   a, $cc                                      ; $5d9b: $3e $cc
	ld   [wFarCallAddr], a                                  ; $5d9d: $ea $98 $c2
	ld   a, $65                                      ; $5da0: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $5da2: $ea $99 $c2
	ld   a, $3e                                      ; $5da5: $3e $3e
	ld   [wFarCallBank], a                                  ; $5da7: $ea $9a $c2
	pop  af                                          ; $5daa: $f1
	call FarCall                                       ; $5dab: $cd $62 $09
	jr   jr_024_5df4                                 ; $5dae: $18 $44

	ld   a, [$ca76]                                  ; $5db0: $fa $76 $ca
	ld   [$ca77], a                                  ; $5db3: $ea $77 $ca
	ld   a, $05                                      ; $5db6: $3e $05
	ld   [$ca76], a                                  ; $5db8: $ea $76 $ca
	set  7, a                                        ; $5dbb: $cb $ff
	push af                                          ; $5dbd: $f5
	ld   a, $cc                                      ; $5dbe: $3e $cc
	ld   [wFarCallAddr], a                                  ; $5dc0: $ea $98 $c2
	ld   a, $65                                      ; $5dc3: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $5dc5: $ea $99 $c2
	ld   a, $3e                                      ; $5dc8: $3e $3e
	ld   [wFarCallBank], a                                  ; $5dca: $ea $9a $c2
	pop  af                                          ; $5dcd: $f1
	call FarCall                                       ; $5dce: $cd $62 $09
	jr   jr_024_5df4                                 ; $5dd1: $18 $21

	ld   a, [$ca76]                                  ; $5dd3: $fa $76 $ca
	ld   [$ca77], a                                  ; $5dd6: $ea $77 $ca
	ld   a, $01                                      ; $5dd9: $3e $01
	ld   [$ca76], a                                  ; $5ddb: $ea $76 $ca
	set  7, a                                        ; $5dde: $cb $ff
	push af                                          ; $5de0: $f5
	ld   a, $cc                                      ; $5de1: $3e $cc
	ld   [wFarCallAddr], a                                  ; $5de3: $ea $98 $c2
	ld   a, $65                                      ; $5de6: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $5de8: $ea $99 $c2
	ld   a, $3e                                      ; $5deb: $3e $3e
	ld   [wFarCallBank], a                                  ; $5ded: $ea $9a $c2
	pop  af                                          ; $5df0: $f1
	call FarCall                                       ; $5df1: $cd $62 $09

jr_024_5df4:
	ld   a, $00                                      ; $5df4: $3e $00
	ld   [$ca8a], a                                  ; $5df6: $ea $8a $ca
	ld   d, $18                                      ; $5df9: $16 $18
	call Call_024_6bdf                               ; $5dfb: $cd $df $6b
	ld   a, $fa                                      ; $5dfe: $3e $fa
	ld   [$ca7b], a                                  ; $5e00: $ea $7b $ca
	ld   hl, wGameSubstate                                   ; $5e03: $21 $a1 $c2
	inc  [hl]                                        ; $5e06: $34
	ret                                              ; $5e07: $c9


BattleSubstate4a:
	call ClearOam                                       ; $5e08: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5e0b: $cd $d3 $2e
	call Call_024_6c6d                               ; $5e0e: $cd $6d $6c
	ret  nc                                          ; $5e11: $d0

	ld   c, $01                                      ; $5e12: $0e $01
	ld   de, $8000                                   ; $5e14: $11 $00 $80
	ld   a, $8d                                      ; $5e17: $3e $8d
	ld   hl, $7fe0                                   ; $5e19: $21 $e0 $7f
	ld   b, $02                                      ; $5e1c: $06 $02
	call EnqueueHDMATransfer                                       ; $5e1e: $cd $7c $02
	ld   a, $24                                      ; $5e21: $3e $24
	ld   hl, $40a8                                   ; $5e23: $21 $a8 $40
	ld   de, $c356                                   ; $5e26: $11 $56 $c3
	ld   bc, $0008                                   ; $5e29: $01 $08 $00
	call FarMemCopy                                       ; $5e2c: $cd $b2 $09
	ld   bc, $3c3f                                   ; $5e2f: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5e32: $cd $aa $04
	ld   a, [$ca86]                                  ; $5e35: $fa $86 $ca
	srl  a                                           ; $5e38: $cb $3f
	srl  a                                           ; $5e3a: $cb $3f
	and  $07                                         ; $5e3c: $e6 $07
	ld   b, $4c                                      ; $5e3e: $06 $4c
	ld   h, $00                                      ; $5e40: $26 $00
	ld   l, a                                        ; $5e42: $6f
	ld   de, $467e                                   ; $5e43: $11 $7e $46
	add  hl, de                                      ; $5e46: $19
	ld   a, [hl]                                     ; $5e47: $7e
	add  $84                                         ; $5e48: $c6 $84
	ld   c, a                                        ; $5e4a: $4f
	ld   a, $01                                      ; $5e4b: $3e $01
	ld   [wSpriteGroup], a                                  ; $5e4d: $ea $1a $c2
	ld   a, $34                                      ; $5e50: $3e $34
	call LoadSpriteFromMainTable                                       ; $5e52: $cd $16 $0e
	ld   a, [wInGameButtonsHeld]                                  ; $5e55: $fa $0f $c2
	and  $02                                         ; $5e58: $e6 $02
	jr   nz, jr_024_5e6d                             ; $5e5a: $20 $11

	ld   a, [wInGameButtonsPressed]                                  ; $5e5c: $fa $10 $c2
	and  $01                                         ; $5e5f: $e6 $01
	jr   nz, jr_024_5e6d                             ; $5e61: $20 $0a

	ld   a, [$ca86]                                  ; $5e63: $fa $86 $ca
	inc  a                                           ; $5e66: $3c
	ld   [$ca86], a                                  ; $5e67: $ea $86 $ca
	cp   $b4                                         ; $5e6a: $fe $b4
	ret                                              ; $5e6c: $c9


jr_024_5e6d:
	xor  a                                           ; $5e6d: $af
	ld   [$ca86], a                                  ; $5e6e: $ea $86 $ca
	xor  a                                           ; $5e71: $af
	call PlaySoundEffect                                       ; $5e72: $cd $df $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e75: $cf
	ld   a, $01                                      ; $5e76: $3e $01
	call PlaySoundEffect                                       ; $5e78: $cd $df $1a
	ld   hl, wGameSubstate                                   ; $5e7b: $21 $a1 $c2
	inc  [hl]                                        ; $5e7e: $34
	ret                                              ; $5e7f: $c9


BattleSubstate4b:
	call ClearOam                                       ; $5e80: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5e83: $cd $d3 $2e
	push af                                          ; $5e86: $f5
	ld   a, $a5                                      ; $5e87: $3e $a5
	ld   [wFarCallAddr], a                                  ; $5e89: $ea $98 $c2
	ld   a, $66                                      ; $5e8c: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $5e8e: $ea $99 $c2
	ld   a, $3e                                      ; $5e91: $3e $3e
	ld   [wFarCallBank], a                                  ; $5e93: $ea $9a $c2
	pop  af                                          ; $5e96: $f1
	call FarCall                                       ; $5e97: $cd $62 $09
	jr   nz, jr_024_5ea0                             ; $5e9a: $20 $04

	ld   hl, wGameSubstate                                   ; $5e9c: $21 $a1 $c2
	inc  [hl]                                        ; $5e9f: $34

jr_024_5ea0:
	ret                                              ; $5ea0: $c9


BattleSubstate4c:
	push af                                          ; $5ea1: $f5
	ld   a, $33                                      ; $5ea2: $3e $33
	ld   [wFarCallAddr], a                                  ; $5ea4: $ea $98 $c2
	ld   a, $67                                      ; $5ea7: $3e $67
	ld   [wFarCallAddr+1], a                                  ; $5ea9: $ea $99 $c2
	ld   a, $3e                                      ; $5eac: $3e $3e
	ld   [wFarCallBank], a                                  ; $5eae: $ea $9a $c2
	pop  af                                          ; $5eb1: $f1
	call FarCall                                       ; $5eb2: $cd $62 $09
	ret  nz                                          ; $5eb5: $c0

	xor  a                                           ; $5eb6: $af
	ld   [$cbe5], a                                  ; $5eb7: $ea $e5 $cb
	ld   a, $0b                                      ; $5eba: $3e $0b
	ld   [wGameSubstate], a                                  ; $5ebc: $ea $a1 $c2
	ret                                              ; $5ebf: $c9


BattleSubstate51:
	call ClearOam                                       ; $5ec0: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5ec3: $cd $d3 $2e
	jp   Jump_024_5947                               ; $5ec6: $c3 $47 $59


Call_024_5ec9:
	ld   hl, $5ef9                                   ; $5ec9: $21 $f9 $5e
	ld   a, [$ca6f]                                  ; $5ecc: $fa $6f $ca
	sla  a                                           ; $5ecf: $cb $27
	ld   b, $00                                      ; $5ed1: $06 $00
	ld   c, a                                        ; $5ed3: $4f
	add  hl, bc                                      ; $5ed4: $09
	ld   a, [hl+]                                    ; $5ed5: $2a
	ld   h, [hl]                                     ; $5ed6: $66
	ld   l, a                                        ; $5ed7: $6f
	ld   a, [$ca70]                                  ; $5ed8: $fa $70 $ca
	sla  a                                           ; $5edb: $cb $27
	ld   b, $00                                      ; $5edd: $06 $00
	ld   c, a                                        ; $5edf: $4f
	add  hl, bc                                      ; $5ee0: $09
	ld   a, [hl+]                                    ; $5ee1: $2a
	ld   h, [hl]                                     ; $5ee2: $66
	ld   l, a                                        ; $5ee3: $6f
	ld   de, $afd0                                   ; $5ee4: $11 $d0 $af
	ld   a, [hl+]                                    ; $5ee7: $2a
	ld   [de], a                                     ; $5ee8: $12
	inc  de                                          ; $5ee9: $13
	ld   a, [hl+]                                    ; $5eea: $2a
	ld   [de], a                                     ; $5eeb: $12
	inc  de                                          ; $5eec: $13
	ld   a, [hl+]                                    ; $5eed: $2a
	ld   [de], a                                     ; $5eee: $12
	inc  de                                          ; $5eef: $13
	ld   a, [hl+]                                    ; $5ef0: $2a
	ld   [de], a                                     ; $5ef1: $12
	inc  de                                          ; $5ef2: $13
	ld   a, [hl+]                                    ; $5ef3: $2a
	ld   [de], a                                     ; $5ef4: $12
	inc  de                                          ; $5ef5: $13
	ld   a, [hl]                                     ; $5ef6: $7e
	ld   [de], a                                     ; $5ef7: $12
	ret                                              ; $5ef8: $c9


	dec  b                                           ; $5ef9: $05
	ld   e, a                                        ; $5efa: $5f
	ld   hl, $135f                                   ; $5efb: $21 $5f $13
	ld   e, a                                        ; $5efe: $5f
	cpl                                              ; $5eff: $2f
	ld   e, a                                        ; $5f00: $5f
	dec  a                                           ; $5f01: $3d
	ld   e, a                                        ; $5f02: $5f
	ld   c, e                                        ; $5f03: $4b
	ld   e, a                                        ; $5f04: $5f
	ld   e, c                                        ; $5f05: $59
	ld   e, a                                        ; $5f06: $5f
	ld   e, a                                        ; $5f07: $5f
	ld   e, a                                        ; $5f08: $5f
	ld   h, l                                        ; $5f09: $65
	ld   e, a                                        ; $5f0a: $5f
	ld   l, e                                        ; $5f0b: $6b
	ld   e, a                                        ; $5f0c: $5f
	ld   [hl], c                                     ; $5f0d: $71
	ld   e, a                                        ; $5f0e: $5f
	ld   [hl], a                                     ; $5f0f: $77
	ld   e, a                                        ; $5f10: $5f
	ld   a, l                                        ; $5f11: $7d
	ld   e, a                                        ; $5f12: $5f
	xor  l                                           ; $5f13: $ad
	ld   e, a                                        ; $5f14: $5f
	or   e                                           ; $5f15: $b3
	ld   e, a                                        ; $5f16: $5f
	cp   c                                           ; $5f17: $b9
	ld   e, a                                        ; $5f18: $5f
	cp   a                                           ; $5f19: $bf
	ld   e, a                                        ; $5f1a: $5f
	push bc                                          ; $5f1b: $c5
	ld   e, a                                        ; $5f1c: $5f
	bit  3, a                                        ; $5f1d: $cb $5f
	pop  de                                          ; $5f1f: $d1
	ld   e, a                                        ; $5f20: $5f
	add  e                                           ; $5f21: $83
	ld   e, a                                        ; $5f22: $5f
	adc  c                                           ; $5f23: $89
	ld   e, a                                        ; $5f24: $5f
	adc  a                                           ; $5f25: $8f
	ld   e, a                                        ; $5f26: $5f
	sub  l                                           ; $5f27: $95
	ld   e, a                                        ; $5f28: $5f
	sbc  e                                           ; $5f29: $9b
	ld   e, a                                        ; $5f2a: $5f
	and  c                                           ; $5f2b: $a1
	ld   e, a                                        ; $5f2c: $5f
	and  a                                           ; $5f2d: $a7
	ld   e, a                                        ; $5f2e: $5f
	rst  $10                                         ; $5f2f: $d7
	ld   e, a                                        ; $5f30: $5f
	db   $dd                                         ; $5f31: $dd
	ld   e, a                                        ; $5f32: $5f
	db   $e3                                         ; $5f33: $e3
	ld   e, a                                        ; $5f34: $5f
	jp   hl                                          ; $5f35: $e9


	ld   e, a                                        ; $5f36: $5f
	rst  $28                                         ; $5f37: $ef
	ld   e, a                                        ; $5f38: $5f
	push af                                          ; $5f39: $f5
	ld   e, a                                        ; $5f3a: $5f
	ei                                               ; $5f3b: $fb
	ld   e, a                                        ; $5f3c: $5f
	ld   bc, $0760                                   ; $5f3d: $01 $60 $07
	ld   h, b                                        ; $5f40: $60
	dec  c                                           ; $5f41: $0d
	ld   h, b                                        ; $5f42: $60
	inc  de                                          ; $5f43: $13
	ld   h, b                                        ; $5f44: $60
	add  hl, de                                      ; $5f45: $19
	ld   h, b                                        ; $5f46: $60
	rra                                              ; $5f47: $1f
	ld   h, b                                        ; $5f48: $60
	dec  h                                           ; $5f49: $25
	ld   h, b                                        ; $5f4a: $60
	dec  hl                                          ; $5f4b: $2b
	ld   h, b                                        ; $5f4c: $60
	ld   sp, $3760                                   ; $5f4d: $31 $60 $37
	ld   h, b                                        ; $5f50: $60
	dec  a                                           ; $5f51: $3d
	ld   h, b                                        ; $5f52: $60
	ld   b, e                                        ; $5f53: $43
	ld   h, b                                        ; $5f54: $60
	ld   c, c                                        ; $5f55: $49
	ld   h, b                                        ; $5f56: $60
	ld   c, a                                        ; $5f57: $4f
	ld   h, b                                        ; $5f58: $60
	rst  $38                                         ; $5f59: $ff
	ccf                                              ; $5f5a: $3f
	ccf                                              ; $5f5b: $3f
	ccf                                              ; $5f5c: $3f
	ccf                                              ; $5f5d: $3f
	ccf                                              ; $5f5e: $3f
	rst  $38                                         ; $5f5f: $ff
	ld   c, a                                        ; $5f60: $4f
	ld   h, a                                        ; $5f61: $67
	ld   e, a                                        ; $5f62: $5f
	ld   c, a                                        ; $5f63: $4f
	ld   d, a                                        ; $5f64: $57
	rst  $38                                         ; $5f65: $ff
	ld   c, a                                        ; $5f66: $4f

Jump_024_5f67:
	ld   a, b                                        ; $5f67: $78
	ld   a, c                                        ; $5f68: $79
	ld   l, a                                        ; $5f69: $6f
	sub  b                                           ; $5f6a: $90
	rst  $38                                         ; $5f6b: $ff
	ld   e, a                                        ; $5f6c: $5f
	sbc  b                                           ; $5f6d: $98
	adc  c                                           ; $5f6e: $89
	adc  d                                           ; $5f6f: $8a
	xor  e                                           ; $5f70: $ab
	rst  $38                                         ; $5f71: $ff
	ld   e, a                                        ; $5f72: $5f
	push bc                                          ; $5f73: $c5
	xor  c                                           ; $5f74: $a9
	and  b                                           ; $5f75: $a0
	call z, Call_024_5fff                            ; $5f76: $cc $ff $5f
	push bc                                          ; $5f79: $c5
	xor  c                                           ; $5f7a: $a9
	and  b                                           ; $5f7b: $a0
	call z, Call_024_5fff                            ; $5f7c: $cc $ff $5f
	push bc                                          ; $5f7f: $c5
	xor  c                                           ; $5f80: $a9
	and  b                                           ; $5f81: $a0
	call z, $3fff                                    ; $5f82: $cc $ff $3f
	ccf                                              ; $5f85: $3f
	ccf                                              ; $5f86: $3f
	ccf                                              ; $5f87: $3f
	ccf                                              ; $5f88: $3f
	rst  $38                                         ; $5f89: $ff
	ld   c, a                                        ; $5f8a: $4f
	ld   d, a                                        ; $5f8b: $57
	ccf                                              ; $5f8c: $3f
	ld   a, a                                        ; $5f8d: $7f
	ld   d, a                                        ; $5f8e: $57
	rst  $38                                         ; $5f8f: $ff
	ld   c, a                                        ; $5f90: $4f
	ld   [hl], a                                     ; $5f91: $77
	ld   c, a                                        ; $5f92: $4f
	bit  5, a                                        ; $5f93: $cb $6f
	rst  $38                                         ; $5f95: $ff
	ld   c, a                                        ; $5f96: $4f
	ld   a, a                                        ; $5f97: $7f
	ld   e, a                                        ; $5f98: $5f
	rst  $38                                         ; $5f99: $ff
	add  a                                           ; $5f9a: $87
	rst  $38                                         ; $5f9b: $ff
	ld   e, a                                        ; $5f9c: $5f
	sub  a                                           ; $5f9d: $97
	ld   l, a                                        ; $5f9e: $6f
	rst  $38                                         ; $5f9f: $ff
	sub  a                                           ; $5fa0: $97
	rst  $38                                         ; $5fa1: $ff
	ld   e, a                                        ; $5fa2: $5f
	sub  a                                           ; $5fa3: $97
	ld   l, a                                        ; $5fa4: $6f
	rst  $38                                         ; $5fa5: $ff
	sub  a                                           ; $5fa6: $97
	rst  $38                                         ; $5fa7: $ff
	ld   e, a                                        ; $5fa8: $5f
	sub  a                                           ; $5fa9: $97
	ld   l, a                                        ; $5faa: $6f
	rst  $38                                         ; $5fab: $ff
	sub  a                                           ; $5fac: $97
	rst  $38                                         ; $5fad: $ff
	ccf                                              ; $5fae: $3f
	ccf                                              ; $5faf: $3f
	ccf                                              ; $5fb0: $3f
	ccf                                              ; $5fb1: $3f
	ccf                                              ; $5fb2: $3f
	rst  $38                                         ; $5fb3: $ff
	ld   c, a                                        ; $5fb4: $4f
	ld   d, a                                        ; $5fb5: $57
	ccf                                              ; $5fb6: $3f
	ld   d, a                                        ; $5fb7: $57
	ld   a, a                                        ; $5fb8: $7f
	rst  $38                                         ; $5fb9: $ff
	ld   e, a                                        ; $5fba: $5f
	ld   l, a                                        ; $5fbb: $6f
	ld   d, a                                        ; $5fbc: $57
	ld   h, a                                        ; $5fbd: $67
	pop  bc                                          ; $5fbe: $c1
	rst  $38                                         ; $5fbf: $ff
	ld   l, a                                        ; $5fc0: $6f
	add  a                                           ; $5fc1: $87
	ld   l, a                                        ; $5fc2: $6f
	ld   a, b                                        ; $5fc3: $78
	rst  $38                                         ; $5fc4: $ff
	rst  $38                                         ; $5fc5: $ff
	ld   a, a                                        ; $5fc6: $7f
	sbc  b                                           ; $5fc7: $98
	adc  b                                           ; $5fc8: $88
	sub  c                                           ; $5fc9: $91
	rst  $38                                         ; $5fca: $ff
	rst  $38                                         ; $5fcb: $ff
	ld   a, a                                        ; $5fcc: $7f
	sbc  b                                           ; $5fcd: $98
	adc  b                                           ; $5fce: $88
	sub  c                                           ; $5fcf: $91
	rst  $38                                         ; $5fd0: $ff
	rst  $38                                         ; $5fd1: $ff
	ld   a, a                                        ; $5fd2: $7f
	sbc  b                                           ; $5fd3: $98
	adc  b                                           ; $5fd4: $88
	sub  c                                           ; $5fd5: $91
	rst  $38                                         ; $5fd6: $ff
	rst  $38                                         ; $5fd7: $ff
	ccf                                              ; $5fd8: $3f
	ccf                                              ; $5fd9: $3f
	ccf                                              ; $5fda: $3f
	ccf                                              ; $5fdb: $3f
	ccf                                              ; $5fdc: $3f
	rst  $38                                         ; $5fdd: $ff
	ld   c, a                                        ; $5fde: $4f
	add  a                                           ; $5fdf: $87
	ccf                                              ; $5fe0: $3f
	ld   c, a                                        ; $5fe1: $4f
	ld   d, a                                        ; $5fe2: $57
	rst  $38                                         ; $5fe3: $ff
	ld   e, a                                        ; $5fe4: $5f
	pop  de                                          ; $5fe5: $d1
	ld   d, a                                        ; $5fe6: $57
	ld   e, a                                        ; $5fe7: $5f
	ld   h, a                                        ; $5fe8: $67
	rst  $38                                         ; $5fe9: $ff
	ld   l, a                                        ; $5fea: $6f
	rst  $38                                         ; $5feb: $ff
	ld   l, b                                        ; $5fec: $68
	ld   [hl], a                                     ; $5fed: $77
	ld   [hl], a                                     ; $5fee: $77
	rst  $38                                         ; $5fef: $ff
	ld   a, a                                        ; $5ff0: $7f
	rst  $38                                         ; $5ff1: $ff
	add  d                                           ; $5ff2: $82
	add  a                                           ; $5ff3: $87
	sub  b                                           ; $5ff4: $90
	rst  $38                                         ; $5ff5: $ff
	ld   a, a                                        ; $5ff6: $7f
	rst  $38                                         ; $5ff7: $ff
	add  d                                           ; $5ff8: $82
	add  a                                           ; $5ff9: $87
	sub  b                                           ; $5ffa: $90
	rst  $38                                         ; $5ffb: $ff
	ld   a, a                                        ; $5ffc: $7f
	rst  $38                                         ; $5ffd: $ff
	add  d                                           ; $5ffe: $82

Call_024_5fff:
	add  a                                           ; $5fff: $87
	sub  b                                           ; $6000: $90
	rst  $38                                         ; $6001: $ff
	ccf                                              ; $6002: $3f
	ccf                                              ; $6003: $3f
	ccf                                              ; $6004: $3f
	ccf                                              ; $6005: $3f
	ccf                                              ; $6006: $3f
	rst  $38                                         ; $6007: $ff
	ld   a, a                                        ; $6008: $7f
	ld   c, a                                        ; $6009: $4f
	ccf                                              ; $600a: $3f
	ld   d, a                                        ; $600b: $57
	ld   d, a                                        ; $600c: $57
	rst  $38                                         ; $600d: $ff
	cp   a                                           ; $600e: $bf
	ld   h, a                                        ; $600f: $67
	ld   c, a                                        ; $6010: $4f
	ld   l, a                                        ; $6011: $6f
	ld   h, a                                        ; $6012: $67
	rst  $38                                         ; $6013: $ff
	rst  $38                                         ; $6014: $ff
	ld   a, a                                        ; $6015: $7f
	ld   e, a                                        ; $6016: $5f
	ld   a, a                                        ; $6017: $7f
	ld   a, a                                        ; $6018: $7f
	rst  $38                                         ; $6019: $ff
	rst  $38                                         ; $601a: $ff
	sub  a                                           ; $601b: $97
	ld   l, a                                        ; $601c: $6f
	sub  a                                           ; $601d: $97
	adc  a                                           ; $601e: $8f
	rst  $38                                         ; $601f: $ff
	rst  $38                                         ; $6020: $ff
	sub  a                                           ; $6021: $97
	ld   l, a                                        ; $6022: $6f
	sub  a                                           ; $6023: $97
	adc  a                                           ; $6024: $8f
	rst  $38                                         ; $6025: $ff
	rst  $38                                         ; $6026: $ff
	sub  a                                           ; $6027: $97
	ld   l, a                                        ; $6028: $6f
	sub  a                                           ; $6029: $97
	adc  a                                           ; $602a: $8f
	rst  $38                                         ; $602b: $ff
	ccf                                              ; $602c: $3f
	ccf                                              ; $602d: $3f
	ccf                                              ; $602e: $3f
	ccf                                              ; $602f: $3f
	ccf                                              ; $6030: $3f
	rst  $38                                         ; $6031: $ff
	ld   c, a                                        ; $6032: $4f
	ld   c, a                                        ; $6033: $4f
	ld   [hl], a                                     ; $6034: $77
	ld   d, a                                        ; $6035: $57
	ld   c, a                                        ; $6036: $4f
	rst  $38                                         ; $6037: $ff
	ld   e, a                                        ; $6038: $5f
	ld   l, b                                        ; $6039: $68
	jp   nz, Jump_024_5f67                           ; $603a: $c2 $67 $5f

	rst  $38                                         ; $603d: $ff
	ld   l, a                                        ; $603e: $6f
	ld   a, c                                        ; $603f: $79
	rst  $38                                         ; $6040: $ff
	add  b                                           ; $6041: $80
	ld   [hl], a                                     ; $6042: $77
	rst  $38                                         ; $6043: $ff
	ld   a, a                                        ; $6044: $7f
	sub  e                                           ; $6045: $93
	rst  $38                                         ; $6046: $ff
	sub  c                                           ; $6047: $91
	adc  a                                           ; $6048: $8f
	rst  $38                                         ; $6049: $ff
	ld   a, a                                        ; $604a: $7f
	sub  e                                           ; $604b: $93
	rst  $38                                         ; $604c: $ff
	sub  c                                           ; $604d: $91
	adc  a                                           ; $604e: $8f
	rst  $38                                         ; $604f: $ff
	ld   a, a                                        ; $6050: $7f
	sub  e                                           ; $6051: $93
	rst  $38                                         ; $6052: $ff
	sub  c                                           ; $6053: $91
	adc  a                                           ; $6054: $8f

Call_024_6055:
	xor  a                                           ; $6055: $af
	ld   [$ca93], a                                  ; $6056: $ea $93 $ca
	ld   [$ca94], a                                  ; $6059: $ea $94 $ca
	ld   [$ca9b], a                                  ; $605c: $ea $9b $ca
	ld   [$ca9c], a                                  ; $605f: $ea $9c $ca
	ld   [$ca9d], a                                  ; $6062: $ea $9d $ca
	ld   [$ca9e], a                                  ; $6065: $ea $9e $ca
	ld   a, [$ca70]                                  ; $6068: $fa $70 $ca
	sla  a                                           ; $606b: $cb $27
	ld   hl, $6185                                   ; $606d: $21 $85 $61
	ld   b, $00                                      ; $6070: $06 $00
	ld   c, a                                        ; $6072: $4f
	add  hl, bc                                      ; $6073: $09
	ld   a, [hl+]                                    ; $6074: $2a
	ld   h, [hl]                                     ; $6075: $66
	ld   l, a                                        ; $6076: $6f
	ld   a, [hl+]                                    ; $6077: $2a
	ld   [$ca79], a                                  ; $6078: $ea $79 $ca
	ld   [$ca7a], a                                  ; $607b: $ea $7a $ca
	ld   a, [hl+]                                    ; $607e: $2a
	ld   [$ca7b], a                                  ; $607f: $ea $7b $ca
	ld   a, [hl+]                                    ; $6082: $2a
	ld   [$ca7c], a                                  ; $6083: $ea $7c $ca
	ld   a, [hl+]                                    ; $6086: $2a
	ld   [$ca7f], a                                  ; $6087: $ea $7f $ca
	ld   a, [hl+]                                    ; $608a: $2a
	ld   [$ca80], a                                  ; $608b: $ea $80 $ca
	ld   b, $03                                      ; $608e: $06 $03
	ld   a, [$afd4]                                  ; $6090: $fa $d4 $af
	cp   $64                                         ; $6093: $fe $64
	jr   c, jr_024_60a9                              ; $6095: $38 $12

	ld   b, $04                                      ; $6097: $06 $04
	cp   $96                                         ; $6099: $fe $96
	jr   c, jr_024_60a9                              ; $609b: $38 $0c

	ld   b, $05                                      ; $609d: $06 $05
	cp   $c8                                         ; $609f: $fe $c8
	jr   c, jr_024_60a9                              ; $60a1: $38 $06

	ld   b, $06                                      ; $60a3: $06 $06
	cp   $fa                                         ; $60a5: $fe $fa
	jr   c, jr_024_60a9                              ; $60a7: $38 $00

jr_024_60a9:
	ld   a, b                                        ; $60a9: $78
	ld   [$ca6d], a                                  ; $60aa: $ea $6d $ca
	ld   [$ca6e], a                                  ; $60ad: $ea $6e $ca
	xor  a                                           ; $60b0: $af
	ld   [$ca95], a                                  ; $60b1: $ea $95 $ca
	call Call_024_61b6                               ; $60b4: $cd $b6 $61
	ld   a, [$ca6f]                                  ; $60b7: $fa $6f $ca
	cp   $00                                         ; $60ba: $fe $00
	jp   z, Jump_024_614b                            ; $60bc: $ca $4b $61

	cp   $01                                         ; $60bf: $fe $01
	jp   z, Jump_024_6138                            ; $60c1: $ca $38 $61

	cp   $02                                         ; $60c4: $fe $02
	jr   z, jr_024_6125                              ; $60c6: $28 $5d

	cp   $03                                         ; $60c8: $fe $03
	jr   z, jr_024_6112                              ; $60ca: $28 $46

	cp   $04                                         ; $60cc: $fe $04
	jr   z, jr_024_60e3                              ; $60ce: $28 $13

	ld   a, [$ca7d]                                  ; $60d0: $fa $7d $ca
	cp   $fc                                         ; $60d3: $fe $fc
	jr   nc, jr_024_60dd                             ; $60d5: $30 $06

	add  $03                                         ; $60d7: $c6 $03
	ld   [$ca7d], a                                  ; $60d9: $ea $7d $ca
	ret                                              ; $60dc: $c9


jr_024_60dd:
	ld   a, $ff                                      ; $60dd: $3e $ff
	ld   [$ca7d], a                                  ; $60df: $ea $7d $ca
	ret                                              ; $60e2: $c9


jr_024_60e3:
	ld   a, [$afd1]                                  ; $60e3: $fa $d1 $af
	cp   $e7                                         ; $60e6: $fe $e7
	jr   nc, jr_024_60fd                             ; $60e8: $30 $13

	add  $18                                         ; $60ea: $c6 $18
	sub  $3f                                         ; $60ec: $d6 $3f
	ld   h, a                                        ; $60ee: $67
	ld   l, $40                                      ; $60ef: $2e $40
	call HLequHdivModL                                       ; $60f1: $cd $fb $0b
	ld   a, h                                        ; $60f4: $7c
	cp   $02                                         ; $60f5: $fe $02
	jr   c, jr_024_610e                              ; $60f7: $38 $15

	ld   a, $02                                      ; $60f9: $3e $02
	jr   jr_024_610e                                 ; $60fb: $18 $11

jr_024_60fd:
	ld   a, $ff                                      ; $60fd: $3e $ff
	sub  $3f                                         ; $60ff: $d6 $3f
	ld   h, a                                        ; $6101: $67
	ld   l, $40                                      ; $6102: $2e $40
	call HLequHdivModL                                       ; $6104: $cd $fb $0b
	ld   a, h                                        ; $6107: $7c
	cp   $02                                         ; $6108: $fe $02
	jr   c, jr_024_610e                              ; $610a: $38 $02

	ld   a, $02                                      ; $610c: $3e $02

jr_024_610e:
	ld   [$ca83], a                                  ; $610e: $ea $83 $ca
	ret                                              ; $6111: $c9


jr_024_6112:
	ld   a, [$ca84]                                  ; $6112: $fa $84 $ca
	cp   $e7                                         ; $6115: $fe $e7
	jr   nc, jr_024_611f                             ; $6117: $30 $06

	add  $18                                         ; $6119: $c6 $18
	ld   [$ca84], a                                  ; $611b: $ea $84 $ca
	ret                                              ; $611e: $c9


jr_024_611f:
	ld   a, $ff                                      ; $611f: $3e $ff
	ld   [$ca84], a                                  ; $6121: $ea $84 $ca
	ret                                              ; $6124: $c9


jr_024_6125:
	ld   a, [$ca82]                                  ; $6125: $fa $82 $ca
	cp   $e7                                         ; $6128: $fe $e7
	jr   nc, jr_024_6132                             ; $612a: $30 $06

	add  $18                                         ; $612c: $c6 $18
	ld   [$ca82], a                                  ; $612e: $ea $82 $ca
	ret                                              ; $6131: $c9


jr_024_6132:
	ld   a, $ff                                      ; $6132: $3e $ff
	ld   [$ca82], a                                  ; $6134: $ea $82 $ca
	ret                                              ; $6137: $c9


Jump_024_6138:
	ld   a, [$ca81]                                  ; $6138: $fa $81 $ca
	cp   $e7                                         ; $613b: $fe $e7
	jr   nc, jr_024_6145                             ; $613d: $30 $06

	add  $18                                         ; $613f: $c6 $18
	ld   [$ca81], a                                  ; $6141: $ea $81 $ca
	ret                                              ; $6144: $c9


jr_024_6145:
	ld   a, $ff                                      ; $6145: $3e $ff
	ld   [$ca81], a                                  ; $6147: $ea $81 $ca
	ret                                              ; $614a: $c9


Jump_024_614b:
	ld   a, [$ca84]                                  ; $614b: $fa $84 $ca
	cp   $f5                                         ; $614e: $fe $f5
	jr   nc, jr_024_6159                             ; $6150: $30 $07

	add  $0a                                         ; $6152: $c6 $0a
	ld   [$ca84], a                                  ; $6154: $ea $84 $ca
	jr   jr_024_615e                                 ; $6157: $18 $05

jr_024_6159:
	ld   a, $ff                                      ; $6159: $3e $ff
	ld   [$ca84], a                                  ; $615b: $ea $84 $ca

jr_024_615e:
	ld   a, [$ca82]                                  ; $615e: $fa $82 $ca
	cp   $f5                                         ; $6161: $fe $f5
	jr   nc, jr_024_616c                             ; $6163: $30 $07

	add  $0a                                         ; $6165: $c6 $0a
	ld   [$ca82], a                                  ; $6167: $ea $82 $ca
	jr   jr_024_6171                                 ; $616a: $18 $05

jr_024_616c:
	ld   a, $ff                                      ; $616c: $3e $ff
	ld   [$ca82], a                                  ; $616e: $ea $82 $ca

jr_024_6171:
	ld   a, [$ca81]                                  ; $6171: $fa $81 $ca
	cp   $f5                                         ; $6174: $fe $f5
	jr   nc, jr_024_617f                             ; $6176: $30 $07

	add  $0a                                         ; $6178: $c6 $0a
	ld   [$ca81], a                                  ; $617a: $ea $81 $ca
	jr   jr_024_6184                                 ; $617d: $18 $05

jr_024_617f:
	ld   a, $ff                                      ; $617f: $3e $ff
	ld   [$ca81], a                                  ; $6181: $ea $81 $ca

jr_024_6184:
	ret                                              ; $6184: $c9


	sub  e                                           ; $6185: $93
	ld   h, c                                        ; $6186: $61
	sbc  b                                           ; $6187: $98
	ld   h, c                                        ; $6188: $61
	sbc  l                                           ; $6189: $9d
	ld   h, c                                        ; $618a: $61
	and  d                                           ; $618b: $a2
	ld   h, c                                        ; $618c: $61
	and  a                                           ; $618d: $a7
	ld   h, c                                        ; $618e: $61
	xor  h                                           ; $618f: $ac
	ld   h, c                                        ; $6190: $61
	or   c                                           ; $6191: $b1
	ld   h, c                                        ; $6192: $61
	ld   b, [hl]                                     ; $6193: $46
	ld   b, [hl]                                     ; $6194: $46
	dec  b                                           ; $6195: $05
	ld   e, $1e                                      ; $6196: $1e $1e
	ld   a, b                                        ; $6198: $78
	ld   a, b                                        ; $6199: $78
	ld   a, [bc]                                     ; $619a: $0a
	ld   d, b                                        ; $619b: $50
	ld   d, b                                        ; $619c: $50
	and  b                                           ; $619d: $a0
	and  b                                           ; $619e: $a0
	rrca                                             ; $619f: $0f
	ld   e, a                                        ; $61a0: $5f
	ld   e, a                                        ; $61a1: $5f
	ret  z                                           ; $61a2: $c8

	ret  z                                           ; $61a3: $c8

	inc  de                                          ; $61a4: $13
	ld   l, a                                        ; $61a5: $6f
	ld   l, a                                        ; $61a6: $6f
	ld   a, [$16fa]                                  ; $61a7: $fa $fa $16
	adc  h                                           ; $61aa: $8c
	adc  h                                           ; $61ab: $8c
	call c, $14dc                                    ; $61ac: $dc $dc $14
	add  d                                           ; $61af: $82
	add  d                                           ; $61b0: $82
	call c, $14dc                                    ; $61b1: $dc $dc $14
	add  d                                           ; $61b4: $82
	add  d                                           ; $61b5: $82

Call_024_61b6:
	xor  a                                           ; $61b6: $af
	ld   [$ca90], a                                  ; $61b7: $ea $90 $ca
	ld   [$ca91], a                                  ; $61ba: $ea $91 $ca
	xor  a                                           ; $61bd: $af
	ld   [$ca90], a                                  ; $61be: $ea $90 $ca
	ld   d, $00                                      ; $61c1: $16 $00
	ld   a, [$afd2]                                  ; $61c3: $fa $d2 $af
	ld   e, a                                        ; $61c6: $5f
	ld   hl, $ca90                                   ; $61c7: $21 $90 $ca
	ld   a, [hl]                                     ; $61ca: $7e
	add  e                                           ; $61cb: $83
	ld   [hl+], a                                    ; $61cc: $22
	ld   a, [hl]                                     ; $61cd: $7e
	adc  d                                           ; $61ce: $8a
	ld   [hl], a                                     ; $61cf: $77
	ld   hl, $6322                                   ; $61d0: $21 $22 $63
	ld   a, [$ca6f]                                  ; $61d3: $fa $6f $ca
	cp   $00                                         ; $61d6: $fe $00
	jr   z, jr_024_61f8                              ; $61d8: $28 $1e

	cp   $03                                         ; $61da: $fe $03
	jp   z, Jump_024_625b                            ; $61dc: $ca $5b $62

	sla  a                                           ; $61df: $cb $27
	ld   c, a                                        ; $61e1: $4f
	ld   b, $00                                      ; $61e2: $06 $00
	add  hl, bc                                      ; $61e4: $09
	ld   a, [hl+]                                    ; $61e5: $2a
	ld   h, [hl]                                     ; $61e6: $66
	ld   l, a                                        ; $61e7: $6f
	ld   a, [hl]                                     ; $61e8: $7e
	ld   d, $00                                      ; $61e9: $16 $00
	ld   e, a                                        ; $61eb: $5f
	ld   hl, $ca90                                   ; $61ec: $21 $90 $ca
	ld   a, [hl]                                     ; $61ef: $7e
	add  e                                           ; $61f0: $83
	ld   [hl+], a                                    ; $61f1: $22
	ld   a, [hl]                                     ; $61f2: $7e
	adc  d                                           ; $61f3: $8a
	ld   [hl], a                                     ; $61f4: $77
	jp   Jump_024_62bf                               ; $61f5: $c3 $bf $62


jr_024_61f8:
	xor  a                                           ; $61f8: $af
	ld   [$ca44], a                                  ; $61f9: $ea $44 $ca
	ld   [$ca45], a                                  ; $61fc: $ea $45 $ca
	ld   d, $00                                      ; $61ff: $16 $00
	ld   a, [$afd3]                                  ; $6201: $fa $d3 $af
	ld   e, a                                        ; $6204: $5f
	ld   hl, $ca44                                   ; $6205: $21 $44 $ca
	ld   a, [hl]                                     ; $6208: $7e
	add  e                                           ; $6209: $83
	ld   [hl+], a                                    ; $620a: $22
	ld   a, [hl]                                     ; $620b: $7e
	adc  d                                           ; $620c: $8a
	ld   [hl], a                                     ; $620d: $77
	ld   d, $00                                      ; $620e: $16 $00
	ld   a, [$afd4]                                  ; $6210: $fa $d4 $af
	ld   e, a                                        ; $6213: $5f
	ld   hl, $ca44                                   ; $6214: $21 $44 $ca
	ld   a, [hl]                                     ; $6217: $7e
	add  e                                           ; $6218: $83
	ld   [hl+], a                                    ; $6219: $22
	ld   a, [hl]                                     ; $621a: $7e
	adc  d                                           ; $621b: $8a
	ld   [hl], a                                     ; $621c: $77
	ld   d, $00                                      ; $621d: $16 $00
	ld   a, [$afd5]                                  ; $621f: $fa $d5 $af
	ld   e, a                                        ; $6222: $5f
	ld   hl, $ca44                                   ; $6223: $21 $44 $ca
	ld   a, [hl]                                     ; $6226: $7e
	add  e                                           ; $6227: $83
	ld   [hl+], a                                    ; $6228: $22
	ld   a, [hl]                                     ; $6229: $7e
	adc  d                                           ; $622a: $8a
	ld   [hl], a                                     ; $622b: $77
	ld   a, [$ca44]                                  ; $622c: $fa $44 $ca
	ld   l, a                                        ; $622f: $6f
	ld   a, [$ca45]                                  ; $6230: $fa $45 $ca
	ld   h, a                                        ; $6233: $67
	ld   a, $03                                      ; $6234: $3e $03
	call Func_0c50                                       ; $6236: $cd $50 $0c
	ld   d, $00                                      ; $6239: $16 $00
	ld   e, l                                        ; $623b: $5d
	ld   hl, $ca90                                   ; $623c: $21 $90 $ca
	ld   a, [hl]                                     ; $623f: $7e
	add  e                                           ; $6240: $83
	ld   [hl+], a                                    ; $6241: $22
	ld   a, [hl]                                     ; $6242: $7e
	adc  d                                           ; $6243: $8a
	ld   [hl], a                                     ; $6244: $77
	ld   a, [$ca70]                                  ; $6245: $fa $70 $ca
	and  a                                           ; $6248: $a7
	jr   z, jr_024_6258                              ; $6249: $28 $0d

	ld   d, $00                                      ; $624b: $16 $00
	ld   e, $40                                      ; $624d: $1e $40
	ld   hl, $ca90                                   ; $624f: $21 $90 $ca
	ld   a, [hl]                                     ; $6252: $7e
	add  e                                           ; $6253: $83
	ld   [hl+], a                                    ; $6254: $22
	ld   a, [hl]                                     ; $6255: $7e
	adc  d                                           ; $6256: $8a
	ld   [hl], a                                     ; $6257: $77

jr_024_6258:
	jp   Jump_024_62bf                               ; $6258: $c3 $bf $62


Jump_024_625b:
	xor  a                                           ; $625b: $af
	ld   [$ca44], a                                  ; $625c: $ea $44 $ca
	ld   [$ca45], a                                  ; $625f: $ea $45 $ca
	ld   d, $00                                      ; $6262: $16 $00
	ld   a, [$afd1]                                  ; $6264: $fa $d1 $af
	sub  $1f                                         ; $6267: $d6 $1f
	ld   e, a                                        ; $6269: $5f
	ld   hl, $ca44                                   ; $626a: $21 $44 $ca
	ld   a, [hl]                                     ; $626d: $7e
	add  e                                           ; $626e: $83
	ld   [hl+], a                                    ; $626f: $22
	ld   a, [hl]                                     ; $6270: $7e
	adc  d                                           ; $6271: $8a
	ld   [hl], a                                     ; $6272: $77
	ld   d, $00                                      ; $6273: $16 $00
	ld   a, [$afd3]                                  ; $6275: $fa $d3 $af
	sub  $1f                                         ; $6278: $d6 $1f
	ld   e, a                                        ; $627a: $5f
	ld   hl, $ca44                                   ; $627b: $21 $44 $ca
	ld   a, [hl]                                     ; $627e: $7e
	add  e                                           ; $627f: $83
	ld   [hl+], a                                    ; $6280: $22
	ld   a, [hl]                                     ; $6281: $7e
	adc  d                                           ; $6282: $8a
	ld   [hl], a                                     ; $6283: $77
	ld   d, $00                                      ; $6284: $16 $00
	ld   a, [$afd4]                                  ; $6286: $fa $d4 $af
	sub  $1f                                         ; $6289: $d6 $1f
	ld   e, a                                        ; $628b: $5f
	ld   hl, $ca44                                   ; $628c: $21 $44 $ca
	ld   a, [hl]                                     ; $628f: $7e
	add  e                                           ; $6290: $83
	ld   [hl+], a                                    ; $6291: $22
	ld   a, [hl]                                     ; $6292: $7e
	adc  d                                           ; $6293: $8a
	ld   [hl], a                                     ; $6294: $77
	ld   d, $00                                      ; $6295: $16 $00
	ld   a, [$afd5]                                  ; $6297: $fa $d5 $af
	sub  $1f                                         ; $629a: $d6 $1f
	ld   e, a                                        ; $629c: $5f
	ld   hl, $ca44                                   ; $629d: $21 $44 $ca
	ld   a, [hl]                                     ; $62a0: $7e
	add  e                                           ; $62a1: $83
	ld   [hl+], a                                    ; $62a2: $22
	ld   a, [hl]                                     ; $62a3: $7e
	adc  d                                           ; $62a4: $8a
	ld   [hl], a                                     ; $62a5: $77
	ld   a, [$ca44]                                  ; $62a6: $fa $44 $ca
	ld   l, a                                        ; $62a9: $6f
	ld   a, [$ca45]                                  ; $62aa: $fa $45 $ca
	ld   h, a                                        ; $62ad: $67
	ld   a, $05                                      ; $62ae: $3e $05
	call Func_0c50                                       ; $62b0: $cd $50 $0c
	ld   d, $00                                      ; $62b3: $16 $00
	ld   e, l                                        ; $62b5: $5d
	ld   hl, $ca90                                   ; $62b6: $21 $90 $ca
	ld   a, [hl]                                     ; $62b9: $7e
	add  e                                           ; $62ba: $83
	ld   [hl+], a                                    ; $62bb: $22
	ld   a, [hl]                                     ; $62bc: $7e
	adc  d                                           ; $62bd: $8a
	ld   [hl], a                                     ; $62be: $77

Jump_024_62bf:
	ld   a, [$afd0]                                  ; $62bf: $fa $d0 $af
	ld   h, a                                        ; $62c2: $67
	ld   l, $08                                      ; $62c3: $2e $08
	call HLequHdivModL                                       ; $62c5: $cd $fb $0b
	ld   d, $00                                      ; $62c8: $16 $00
	ld   e, h                                        ; $62ca: $5c
	ld   hl, $ca90                                   ; $62cb: $21 $90 $ca
	ld   a, [hl]                                     ; $62ce: $7e
	add  e                                           ; $62cf: $83
	ld   [hl+], a                                    ; $62d0: $22
	ld   a, [hl]                                     ; $62d1: $7e
	adc  d                                           ; $62d2: $8a
	ld   [hl], a                                     ; $62d3: $77
	ld   a, [$ca90]                                  ; $62d4: $fa $90 $ca
	ld   l, a                                        ; $62d7: $6f
	ld   a, [$ca91]                                  ; $62d8: $fa $91 $ca
	ld   h, a                                        ; $62db: $67
	ld   a, $02                                      ; $62dc: $3e $02
	call Func_0c50                                       ; $62de: $cd $50 $0c
	ld   a, $08                                      ; $62e1: $3e $08
	call Func_0c50                                       ; $62e3: $cd $50 $0c
	ld   a, l                                        ; $62e6: $7d
	ld   [$ca7d], a                                  ; $62e7: $ea $7d $ca
	ld   a, [$afd4]                                  ; $62ea: $fa $d4 $af
	ld   [$ca81], a                                  ; $62ed: $ea $81 $ca
	ld   a, [$ca7f]                                  ; $62f0: $fa $7f $ca
	ld   [$ca7f], a                                  ; $62f3: $ea $7f $ca
	ld   a, [$afd5]                                  ; $62f6: $fa $d5 $af
	ld   [$ca82], a                                  ; $62f9: $ea $82 $ca
	ld   a, [$ca80]                                  ; $62fc: $fa $80 $ca
	ld   [$ca80], a                                  ; $62ff: $ea $80 $ca
	xor  a                                           ; $6302: $af
	ld   [$ca7e], a                                  ; $6303: $ea $7e $ca
	ld   a, [$afd1]                                  ; $6306: $fa $d1 $af
	sub  $3f                                         ; $6309: $d6 $3f
	ld   h, a                                        ; $630b: $67
	ld   l, $40                                      ; $630c: $2e $40
	call HLequHdivModL                                       ; $630e: $cd $fb $0b
	ld   a, h                                        ; $6311: $7c
	cp   $02                                         ; $6312: $fe $02
	jr   c, jr_024_6318                              ; $6314: $38 $02

	ld   a, $02                                      ; $6316: $3e $02

jr_024_6318:
	ld   [$ca83], a                                  ; $6318: $ea $83 $ca
	ld   a, [$afd2]                                  ; $631b: $fa $d2 $af
	ld   [$ca84], a                                  ; $631e: $ea $84 $ca
	ret                                              ; $6321: $c9


	nop                                              ; $6322: $00
	nop                                              ; $6323: $00
	call nc, $d5af                                   ; $6324: $d4 $af $d5
	xor  a                                           ; $6327: $af
	jp   nc, $d1af                                   ; $6328: $d2 $af $d1

	xor  a                                           ; $632b: $af
	db   $d3                                         ; $632c: $d3
	xor  a                                           ; $632d: $af

Call_024_632e:
	push af                                          ; $632e: $f5
	ld   a, [$ca6f]                                  ; $632f: $fa $6f $ca
	cp   $00                                         ; $6332: $fe $00
	jp   z, Jump_024_6378                            ; $6334: $ca $78 $63

	cp   $05                                         ; $6337: $fe $05
	jr   z, jr_024_6378                              ; $6339: $28 $3d

	cp   $01                                         ; $633b: $fe $01
	jp   z, Jump_024_634f                            ; $633d: $ca $4f $63

	cp   $03                                         ; $6340: $fe $03
	jp   z, Jump_024_634f                            ; $6342: $ca $4f $63

	cp   $02                                         ; $6345: $fe $02
	jp   z, Jump_024_6358                            ; $6347: $ca $58 $63

	cp   $04                                         ; $634a: $fe $04
	jp   z, Jump_024_6358                            ; $634c: $ca $58 $63

Jump_024_634f:
	ld   a, [$ca71]                                  ; $634f: $fa $71 $ca
	cp   $00                                         ; $6352: $fe $00
	jr   z, jr_024_636a                              ; $6354: $28 $14

	jr   jr_024_6371                                 ; $6356: $18 $19

Jump_024_6358:
	ld   a, [$ca71]                                  ; $6358: $fa $71 $ca
	cp   $02                                         ; $635b: $fe $02
	jr   z, jr_024_6371                              ; $635d: $28 $12

	cp   $01                                         ; $635f: $fe $01
	jr   z, jr_024_636a                              ; $6361: $28 $07

	ld   a, $02                                      ; $6363: $3e $02
	ld   [wRandomNumRange], a                                  ; $6365: $ea $a5 $c2
	jr   jr_024_637d                                 ; $6368: $18 $13

jr_024_636a:
	ld   a, $03                                      ; $636a: $3e $03
	ld   [wRandomNumRange], a                                  ; $636c: $ea $a5 $c2
	jr   jr_024_637d                                 ; $636f: $18 $0c

jr_024_6371:
	ld   a, $04                                      ; $6371: $3e $04
	ld   [wRandomNumRange], a                                  ; $6373: $ea $a5 $c2
	jr   jr_024_637d                                 ; $6376: $18 $05

Jump_024_6378:
jr_024_6378:
	ld   a, $04                                      ; $6378: $3e $04
	ld   [wRandomNumRange], a                                  ; $637a: $ea $a5 $c2

jr_024_637d:
	ld   a, [$ca7e]                                  ; $637d: $fa $7e $ca
	cp   $64                                         ; $6380: $fe $64
	jr   nz, jr_024_638b                             ; $6382: $20 $07

	ld   a, [wRandomNumRange]                                  ; $6384: $fa $a5 $c2
	inc  a                                           ; $6387: $3c
	ld   [wRandomNumRange], a                                  ; $6388: $ea $a5 $c2

jr_024_638b:
	ld   a, b                                        ; $638b: $78
	and  a                                           ; $638c: $a7
	jr   z, jr_024_639a                              ; $638d: $28 $0b

	ld   a, [wRandomNumRange]                                  ; $638f: $fa $a5 $c2
	cp   $02                                         ; $6392: $fe $02
	jr   z, jr_024_639a                              ; $6394: $28 $04

	dec  a                                           ; $6396: $3d
	ld   [wRandomNumRange], a                                  ; $6397: $ea $a5 $c2

jr_024_639a:
	ld   a, [wRandomNumRange]                                  ; $639a: $fa $a5 $c2
	cp   $02                                         ; $639d: $fe $02
	jr   nc, jr_024_63a6                             ; $639f: $30 $05

	ld   a, $02                                      ; $63a1: $3e $02
	ld   [wRandomNumRange], a                                  ; $63a3: $ea $a5 $c2

jr_024_63a6:
	call UpdateSramRandomSeed                                       ; $63a6: $cd $70 $0c
	pop  af                                          ; $63a9: $f1
	ld   c, a                                        ; $63aa: $4f

jr_024_63ab:
	push bc                                          ; $63ab: $c5
	call GetRandomNumInPreSpecifiedRange                                       ; $63ac: $cd $10 $0d
	pop  bc                                          ; $63af: $c1
	cp   $00                                         ; $63b0: $fe $00
	jr   z, jr_024_63ab                              ; $63b2: $28 $f7

	add  b                                           ; $63b4: $80
	ld   b, a                                        ; $63b5: $47
	ld   a, c                                        ; $63b6: $79
	cp   $00                                         ; $63b7: $fe $00
	jr   z, jr_024_63be                              ; $63b9: $28 $03

	dec  c                                           ; $63bb: $0d
	jr   jr_024_63ab                                 ; $63bc: $18 $ed

jr_024_63be:
	ld   a, b                                        ; $63be: $78
	ld   [$ca92], a                                  ; $63bf: $ea $92 $ca
	ret                                              ; $63c2: $c9


Call_024_63c3:
	push af                                          ; $63c3: $f5
	ld   a, [$ca6f]                                  ; $63c4: $fa $6f $ca
	cp   $00                                         ; $63c7: $fe $00
	jp   z, Jump_024_63e4                            ; $63c9: $ca $e4 $63

	cp   $05                                         ; $63cc: $fe $05
	jr   z, jr_024_63e4                              ; $63ce: $28 $14

	cp   $01                                         ; $63d0: $fe $01
	jp   z, Jump_024_63e6                            ; $63d2: $ca $e6 $63

	cp   $03                                         ; $63d5: $fe $03
	jp   z, Jump_024_63e6                            ; $63d7: $ca $e6 $63

	cp   $02                                         ; $63da: $fe $02
	jp   z, Jump_024_63ef                            ; $63dc: $ca $ef $63

	cp   $04                                         ; $63df: $fe $04
	jp   z, Jump_024_63ef                            ; $63e1: $ca $ef $63

Jump_024_63e4:
jr_024_63e4:
	jr   jr_024_63fc                                 ; $63e4: $18 $16

Jump_024_63e6:
	ld   a, [$ca71]                                  ; $63e6: $fa $71 $ca
	cp   $00                                         ; $63e9: $fe $00
	jr   z, jr_024_640a                              ; $63eb: $28 $1d

	jr   jr_024_6403                                 ; $63ed: $18 $14

Jump_024_63ef:
	ld   a, [$ca71]                                  ; $63ef: $fa $71 $ca
	cp   $00                                         ; $63f2: $fe $00
	jr   z, jr_024_640a                              ; $63f4: $28 $14

	cp   $01                                         ; $63f6: $fe $01
	jr   z, jr_024_6403                              ; $63f8: $28 $09

	jr   jr_024_6403                                 ; $63fa: $18 $07

jr_024_63fc:
	ld   a, $04                                      ; $63fc: $3e $04
	ld   [wRandomNumRange], a                                  ; $63fe: $ea $a5 $c2
	jr   jr_024_640f                                 ; $6401: $18 $0c

jr_024_6403:
	ld   a, $05                                      ; $6403: $3e $05
	ld   [wRandomNumRange], a                                  ; $6405: $ea $a5 $c2
	jr   jr_024_640f                                 ; $6408: $18 $05

jr_024_640a:
	ld   a, $06                                      ; $640a: $3e $06
	ld   [wRandomNumRange], a                                  ; $640c: $ea $a5 $c2

jr_024_640f:
	ld   a, [$ca71]                                  ; $640f: $fa $71 $ca
	cp   $00                                         ; $6412: $fe $00
	jr   z, jr_024_641d                              ; $6414: $28 $07

	ld   a, [wRandomNumRange]                                  ; $6416: $fa $a5 $c2
	dec  a                                           ; $6419: $3d
	ld   [wRandomNumRange], a                                  ; $641a: $ea $a5 $c2

jr_024_641d:
	ld   a, b                                        ; $641d: $78
	and  a                                           ; $641e: $a7
	jr   z, jr_024_6428                              ; $641f: $28 $07

	ld   a, [wRandomNumRange]                                  ; $6421: $fa $a5 $c2
	dec  a                                           ; $6424: $3d
	ld   [wRandomNumRange], a                                  ; $6425: $ea $a5 $c2

jr_024_6428:
	ld   a, [wRandomNumRange]                                  ; $6428: $fa $a5 $c2
	cp   $02                                         ; $642b: $fe $02
	jr   nc, jr_024_6431                             ; $642d: $30 $02

	ld   a, $02                                      ; $642f: $3e $02

jr_024_6431:
	call UpdateSramRandomSeed                                       ; $6431: $cd $70 $0c
	pop  af                                          ; $6434: $f1
	ld   c, a                                        ; $6435: $4f

jr_024_6436:
	push bc                                          ; $6436: $c5
	call GetRandomNumInPreSpecifiedRange                                       ; $6437: $cd $10 $0d
	pop  bc                                          ; $643a: $c1
	cp   $00                                         ; $643b: $fe $00
	jr   z, jr_024_6436                              ; $643d: $28 $f7

	add  b                                           ; $643f: $80
	ld   b, a                                        ; $6440: $47
	ld   a, c                                        ; $6441: $79
	cp   $00                                         ; $6442: $fe $00
	jr   z, jr_024_6449                              ; $6444: $28 $03

	dec  c                                           ; $6446: $0d
	jr   jr_024_6436                                 ; $6447: $18 $ed

jr_024_6449:
	ld   a, b                                        ; $6449: $78
	ld   [$ca92], a                                  ; $644a: $ea $92 $ca
	ret                                              ; $644d: $c9


Call_024_644e:
	ld   a, $00                                      ; $644e: $3e $00
	ld   [$ca8a], a                                  ; $6450: $ea $8a $ca
	ld   a, $ff                                      ; $6453: $3e $ff
	ld   [$ca87], a                                  ; $6455: $ea $87 $ca
	ld   a, [$cbec]                                  ; $6458: $fa $ec $cb
	cp   $ff                                         ; $645b: $fe $ff
	jp   z, Jump_024_663b                            ; $645d: $ca $3b $66

	ld   b, $00                                      ; $6460: $06 $00
	ld   c, a                                        ; $6462: $4f
	ld   hl, $ca72                                   ; $6463: $21 $72 $ca
	add  hl, bc                                      ; $6466: $09
	ld   a, [hl]                                     ; $6467: $7e
	cp   $0a                                         ; $6468: $fe $0a
	jp   z, Jump_024_6583                            ; $646a: $ca $83 $65

	cp   $03                                         ; $646d: $fe $03
	jp   z, Jump_024_6605                            ; $646f: $ca $05 $66

	cp   $02                                         ; $6472: $fe $02
	jp   z, Jump_024_65f5                            ; $6474: $ca $f5 $65

	cp   $01                                         ; $6477: $fe $01
	jp   z, Jump_024_65e5                            ; $6479: $ca $e5 $65

	ld   a, [$ca6f]                                  ; $647c: $fa $6f $ca
	sla  a                                           ; $647f: $cb $27
	ld   b, $00                                      ; $6481: $06 $00
	ld   c, a                                        ; $6483: $4f
	ld   hl, $66e9                                   ; $6484: $21 $e9 $66
	add  hl, bc                                      ; $6487: $09
	ld   a, [hl+]                                    ; $6488: $2a
	ld   h, [hl]                                     ; $6489: $66
	ld   l, a                                        ; $648a: $6f
	ld   a, [$ca71]                                  ; $648b: $fa $71 $ca
	ld   d, $00                                      ; $648e: $16 $00
	ld   e, a                                        ; $6490: $5f
	add  hl, de                                      ; $6491: $19
	ld   a, [hl]                                     ; $6492: $7e
	ld   [$ca75], a                                  ; $6493: $ea $75 $ca
	ld   a, [$ca76]                                  ; $6496: $fa $76 $ca
	ld   [$ca77], a                                  ; $6499: $ea $77 $ca
	ld   a, $01                                      ; $649c: $3e $01
	ld   [$ca76], a                                  ; $649e: $ea $76 $ca
	ld   a, $0e                                      ; $64a1: $3e $0e
	ld   [$ca87], a                                  ; $64a3: $ea $87 $ca
	ld   a, [$ca89]                                  ; $64a6: $fa $89 $ca
	cp   $14                                         ; $64a9: $fe $14
	jp   nz, Jump_024_6558                           ; $64ab: $c2 $58 $65

	ld   e, $00                                      ; $64ae: $1e $00
	ld   a, [$ca7f]                                  ; $64b0: $fa $7f $ca
	sub  $18                                         ; $64b3: $d6 $18
	ld   d, a                                        ; $64b5: $57
	ld   a, [$ca82]                                  ; $64b6: $fa $82 $ca
	cp   d                                           ; $64b9: $ba
	jr   c, jr_024_64d0                              ; $64ba: $38 $14

	ld   a, d                                        ; $64bc: $7a
	cp   $cf                                         ; $64bd: $fe $cf
	jr   c, jr_024_64c5                              ; $64bf: $38 $04

	ld   a, $ff                                      ; $64c1: $3e $ff
	jr   jr_024_64c7                                 ; $64c3: $18 $02

jr_024_64c5:
	add  $30                                         ; $64c5: $c6 $30

jr_024_64c7:
	ld   d, a                                        ; $64c7: $57
	ld   a, [$ca82]                                  ; $64c8: $fa $82 $ca
	cp   d                                           ; $64cb: $ba
	jr   c, jr_024_64cf                              ; $64cc: $38 $01

	inc  e                                           ; $64ce: $1c

jr_024_64cf:
	inc  e                                           ; $64cf: $1c

jr_024_64d0:
	inc  e                                           ; $64d0: $1c
	ld   a, $04                                      ; $64d1: $3e $04
	ld   [wRandomNumRange], a                                  ; $64d3: $ea $a5 $c2
	push de                                          ; $64d6: $d5
	call UpdateSramRandomSeed                                       ; $64d7: $cd $70 $0c
	call GetRandomNumInPreSpecifiedRange                                       ; $64da: $cd $10 $0d
	pop  de                                          ; $64dd: $d1
	cp   e                                           ; $64de: $bb
	jr   nc, jr_024_6505                             ; $64df: $30 $24

jr_024_64e1:
	ld   a, [$caa0]                                  ; $64e1: $fa $a0 $ca
	and  a                                           ; $64e4: $a7
	jr   nz, jr_024_64ff                             ; $64e5: $20 $18

	ld   a, $0c                                      ; $64e7: $3e $0c
	ld   [wRandomNumRange], a                                  ; $64e9: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $64ec: $cd $70 $0c
	call GetRandomNumInPreSpecifiedRange                                       ; $64ef: $cd $10 $0d
	cp   $00                                         ; $64f2: $fe $00
	jr   nz, jr_024_64ff                             ; $64f4: $20 $09

	ld   a, $02                                      ; $64f6: $3e $02
	ld   [$ca78], a                                  ; $64f8: $ea $78 $ca
	inc  a                                           ; $64fb: $3c
	ld   [$caa0], a                                  ; $64fc: $ea $a0 $ca

jr_024_64ff:
	xor  a                                           ; $64ff: $af
	ld   [$ca9d], a                                  ; $6500: $ea $9d $ca
	jr   jr_024_6558                                 ; $6503: $18 $53

jr_024_6505:
	ld   a, [$ca9d]                                  ; $6505: $fa $9d $ca
	inc  a                                           ; $6508: $3c
	ld   [$ca9d], a                                  ; $6509: $ea $9d $ca
	cp   $04                                         ; $650c: $fe $04
	jr   z, jr_024_64e1                              ; $650e: $28 $d1

	ld   a, $1b                                      ; $6510: $3e $1b
	ld   [$ca87], a                                  ; $6512: $ea $87 $ca
	ld   a, [$ca6f]                                  ; $6515: $fa $6f $ca
	cp   $00                                         ; $6518: $fe $00
	jp   z, Jump_024_6539                            ; $651a: $ca $39 $65

	cp   $01                                         ; $651d: $fe $01
	jp   z, Jump_024_6539                            ; $651f: $ca $39 $65

	cp   $05                                         ; $6522: $fe $05
	jr   z, jr_024_6535                              ; $6524: $28 $0f

	cp   $03                                         ; $6526: $fe $03
	jp   z, Jump_024_6541                            ; $6528: $ca $41 $65

	cp   $02                                         ; $652b: $fe $02
	jp   z, Jump_024_6545                            ; $652d: $ca $45 $65

	cp   $04                                         ; $6530: $fe $04
	jp   z, Jump_024_653d                            ; $6532: $ca $3d $65

jr_024_6535:
	ld   a, $01                                      ; $6535: $3e $01
	jr   jr_024_6547                                 ; $6537: $18 $0e

Jump_024_6539:
	ld   a, $02                                      ; $6539: $3e $02
	jr   jr_024_6547                                 ; $653b: $18 $0a

Jump_024_653d:
	ld   a, $0c                                      ; $653d: $3e $0c
	jr   jr_024_6547                                 ; $653f: $18 $06

Jump_024_6541:
	ld   a, $0d                                      ; $6541: $3e $0d
	jr   jr_024_6547                                 ; $6543: $18 $02

Jump_024_6545:
	ld   a, $00                                      ; $6545: $3e $00

jr_024_6547:
	ld   [$ca75], a                                  ; $6547: $ea $75 $ca
	ld   a, [$ca76]                                  ; $654a: $fa $76 $ca
	ld   [$ca77], a                                  ; $654d: $ea $77 $ca
	ld   a, $06                                      ; $6550: $3e $06
	ld   [$ca76], a                                  ; $6552: $ea $76 $ca
	jp   Jump_024_6646                               ; $6555: $c3 $46 $66


Jump_024_6558:
jr_024_6558:
	ld   a, [$ca89]                                  ; $6558: $fa $89 $ca
	cp   $12                                         ; $655b: $fe $12
	jr   z, jr_024_6566                              ; $655d: $28 $07

	ld   b, $00                                      ; $655f: $06 $00
	ld   a, [$ca7d]                                  ; $6561: $fa $7d $ca
	jr   jr_024_656b                                 ; $6564: $18 $05

jr_024_6566:
	ld   b, $ff                                      ; $6566: $06 $ff
	ld   a, [$ca7d]                                  ; $6568: $fa $7d $ca

jr_024_656b:
	call Call_024_632e                               ; $656b: $cd $2e $63
	ld   c, a                                        ; $656e: $4f
	ld   a, [$ca79]                                  ; $656f: $fa $79 $ca
	cp   c                                           ; $6572: $b9
	jr   c, jr_024_657c                              ; $6573: $38 $07

	sub  c                                           ; $6575: $91
	ld   [$ca79], a                                  ; $6576: $ea $79 $ca
	jp   Jump_024_6646                               ; $6579: $c3 $46 $66


jr_024_657c:
	xor  a                                           ; $657c: $af
	ld   [$ca79], a                                  ; $657d: $ea $79 $ca
	jp   Jump_024_6646                               ; $6580: $c3 $46 $66


Jump_024_6583:
	ld   a, $22                                      ; $6583: $3e $22
	ld   [$ca87], a                                  ; $6585: $ea $87 $ca
	ld   a, $04                                      ; $6588: $3e $04
	ld   [wRandomNumRange], a                                  ; $658a: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $658d: $cd $70 $0c
	call GetRandomNumInPreSpecifiedRange                                       ; $6590: $cd $10 $0d
	cp   $00                                         ; $6593: $fe $00
	jr   nz, jr_024_65a2                             ; $6595: $20 $0b

jr_024_6597:
	ld   a, $02                                      ; $6597: $3e $02
	ld   [$ca78], a                                  ; $6599: $ea $78 $ca
	xor  a                                           ; $659c: $af
	ld   [$caa1], a                                  ; $659d: $ea $a1 $ca
	jr   jr_024_65ad                                 ; $65a0: $18 $0b

jr_024_65a2:
	ld   a, [$caa1]                                  ; $65a2: $fa $a1 $ca
	inc  a                                           ; $65a5: $3c
	cp   $03                                         ; $65a6: $fe $03
	jr   z, jr_024_6597                              ; $65a8: $28 $ed

	ld   [$caa1], a                                  ; $65aa: $ea $a1 $ca

jr_024_65ad:
	ld   hl, $ca71                                   ; $65ad: $21 $71 $ca
	dec  [hl]                                        ; $65b0: $35
	ld   a, $08                                      ; $65b1: $3e $08
	ld   [$ca75], a                                  ; $65b3: $ea $75 $ca
	ld   a, [$ca70]                                  ; $65b6: $fa $70 $ca
	sla  a                                           ; $65b9: $cb $27
	ld   b, $00                                      ; $65bb: $06 $00
	ld   c, a                                        ; $65bd: $4f
	ld   hl, $6707                                   ; $65be: $21 $07 $67
	add  hl, bc                                      ; $65c1: $09
	ld   a, [hl+]                                    ; $65c2: $2a
	ld   h, [hl]                                     ; $65c3: $66
	ld   l, a                                        ; $65c4: $6f
	ld   a, [hl+]                                    ; $65c5: $2a
	ld   b, a                                        ; $65c6: $47
	ld   a, [hl]                                     ; $65c7: $7e
	ld   c, a                                        ; $65c8: $4f
	ld   a, [$ca7b]                                  ; $65c9: $fa $7b $ca
	cp   c                                           ; $65cc: $b9
	jr   c, jr_024_65d4                              ; $65cd: $38 $05

	dec  c                                           ; $65cf: $0d
	sub  c                                           ; $65d0: $91
	ld   [$ca7b], a                                  ; $65d1: $ea $7b $ca

jr_024_65d4:
	ld   a, [$ca79]                                  ; $65d4: $fa $79 $ca
	cp   b                                           ; $65d7: $b8
	jr   c, jr_024_65e0                              ; $65d8: $38 $06

	dec  b                                           ; $65da: $05
	sub  b                                           ; $65db: $90
	ld   [$ca79], a                                  ; $65dc: $ea $79 $ca
	ret                                              ; $65df: $c9


jr_024_65e0:
	xor  a                                           ; $65e0: $af
	ld   [$ca79], a                                  ; $65e1: $ea $79 $ca
	ret                                              ; $65e4: $c9


Jump_024_65e5:
	ld   hl, $ca71                                   ; $65e5: $21 $71 $ca
	dec  [hl]                                        ; $65e8: $35
	ld   a, $ff                                      ; $65e9: $3e $ff
	ld   [$ca75], a                                  ; $65eb: $ea $75 $ca
	ld   a, $ff                                      ; $65ee: $3e $ff
	ld   [$ca87], a                                  ; $65f0: $ea $87 $ca
	jr   jr_024_6646                                 ; $65f3: $18 $51

Jump_024_65f5:
	ld   hl, $ca71                                   ; $65f5: $21 $71 $ca
	inc  [hl]                                        ; $65f8: $34
	ld   a, $ff                                      ; $65f9: $3e $ff
	ld   [$ca75], a                                  ; $65fb: $ea $75 $ca
	ld   a, $ff                                      ; $65fe: $3e $ff
	ld   [$ca87], a                                  ; $6600: $ea $87 $ca
	jr   jr_024_6646                                 ; $6603: $18 $41

Jump_024_6605:
	ld   a, [$ca7e]                                  ; $6605: $fa $7e $ca
	cp   $50                                         ; $6608: $fe $50
	jr   nc, jr_024_6610                             ; $660a: $30 $04

	add  $14                                         ; $660c: $c6 $14
	jr   jr_024_6612                                 ; $660e: $18 $02

jr_024_6610:
	ld   a, $64                                      ; $6610: $3e $64

jr_024_6612:
	ld   [$ca7e], a                                  ; $6612: $ea $7e $ca
	ld   a, $ff                                      ; $6615: $3e $ff
	ld   [$ca75], a                                  ; $6617: $ea $75 $ca
	ld   a, $02                                      ; $661a: $3e $02
	ld   [wRandomNumRange], a                                  ; $661c: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $661f: $cd $70 $0c
	call GetRandomNumInPreSpecifiedRange                                       ; $6622: $cd $10 $0d
	cp   $00                                         ; $6625: $fe $00
	jr   z, jr_024_6630                              ; $6627: $28 $07

	ld   a, $08                                      ; $6629: $3e $08
	ld   [$ca87], a                                  ; $662b: $ea $87 $ca
	jr   jr_024_6635                                 ; $662e: $18 $05

jr_024_6630:
	ld   a, $09                                      ; $6630: $3e $09
	ld   [$ca87], a                                  ; $6632: $ea $87 $ca

jr_024_6635:
	ld   a, $ff                                      ; $6635: $3e $ff
	ld   [$ca9a], a                                  ; $6637: $ea $9a $ca
	ret                                              ; $663a: $c9


Jump_024_663b:
	ld   a, $ff                                      ; $663b: $3e $ff
	ld   [$ca75], a                                  ; $663d: $ea $75 $ca
	ld   a, $0b                                      ; $6640: $3e $0b
	ld   [$ca87], a                                  ; $6642: $ea $87 $ca
	ret                                              ; $6645: $c9


Jump_024_6646:
jr_024_6646:
	ld   a, [$cbec]                                  ; $6646: $fa $ec $cb
	ld   b, $00                                      ; $6649: $06 $00
	ld   c, a                                        ; $664b: $4f
	ld   hl, $ca72                                   ; $664c: $21 $72 $ca
	add  hl, bc                                      ; $664f: $09
	ld   a, [hl]                                     ; $6650: $7e
	cp   $02                                         ; $6651: $fe $02
	jp   z, Jump_024_665b                            ; $6653: $ca $5b $66

	cp   $01                                         ; $6656: $fe $01
	jp   nz, Jump_024_66c9                           ; $6658: $c2 $c9 $66

Jump_024_665b:
	ld   e, $00                                      ; $665b: $1e $00
	ld   a, [$ca7f]                                  ; $665d: $fa $7f $ca
	sub  $18                                         ; $6660: $d6 $18
	ld   d, a                                        ; $6662: $57
	ld   a, [$ca81]                                  ; $6663: $fa $81 $ca
	cp   d                                           ; $6666: $ba
	jr   c, jr_024_667d                              ; $6667: $38 $14

	ld   a, d                                        ; $6669: $7a
	cp   $cf                                         ; $666a: $fe $cf
	jr   c, jr_024_6672                              ; $666c: $38 $04

	ld   a, $ff                                      ; $666e: $3e $ff
	jr   jr_024_6674                                 ; $6670: $18 $02

jr_024_6672:
	add  $30                                         ; $6672: $c6 $30

jr_024_6674:
	ld   d, a                                        ; $6674: $57
	ld   a, [$ca81]                                  ; $6675: $fa $81 $ca
	cp   d                                           ; $6678: $ba
	jr   c, jr_024_667c                              ; $6679: $38 $01

	inc  e                                           ; $667b: $1c

jr_024_667c:
	inc  e                                           ; $667c: $1c

jr_024_667d:
	inc  e                                           ; $667d: $1c
	ld   a, $04                                      ; $667e: $3e $04
	ld   [wRandomNumRange], a                                  ; $6680: $ea $a5 $c2
	push de                                          ; $6683: $d5
	call UpdateSramRandomSeed                                       ; $6684: $cd $70 $0c
	call GetRandomNumInPreSpecifiedRange                                       ; $6687: $cd $10 $0d
	pop  de                                          ; $668a: $d1
	cp   e                                           ; $668b: $bb
	jr   nc, jr_024_6690                             ; $668c: $30 $02

	jr   jr_024_66c4                                 ; $668e: $18 $34

jr_024_6690:
	ld   a, [$ca9e]                                  ; $6690: $fa $9e $ca
	inc  a                                           ; $6693: $3c
	ld   [$ca9e], a                                  ; $6694: $ea $9e $ca
	cp   $04                                         ; $6697: $fe $04
	jr   z, jr_024_66c4                              ; $6699: $28 $29

	ld   a, [$ca8c]                                  ; $669b: $fa $8c $ca
	cp   $02                                         ; $669e: $fe $02
	jr   z, jr_024_66b6                              ; $66a0: $28 $14

	cp   $03                                         ; $66a2: $fe $03
	jr   nz, jr_024_66c8                             ; $66a4: $20 $22

	ld   hl, $ca71                                   ; $66a6: $21 $71 $ca
	ld   a, [hl]                                     ; $66a9: $7e
	cp   $02                                         ; $66aa: $fe $02
	jr   z, jr_024_66c8                              ; $66ac: $28 $1a

	ld   a, $02                                      ; $66ae: $3e $02
	ld   [$ca87], a                                  ; $66b0: $ea $87 $ca
	inc  [hl]                                        ; $66b3: $34
	jr   jr_024_66c8                                 ; $66b4: $18 $12

jr_024_66b6:
	ld   hl, $ca71                                   ; $66b6: $21 $71 $ca
	ld   a, [hl]                                     ; $66b9: $7e
	cp   $00                                         ; $66ba: $fe $00
	jr   z, jr_024_66c8                              ; $66bc: $28 $0a

	ld   a, $03                                      ; $66be: $3e $03
	ld   [$ca87], a                                  ; $66c0: $ea $87 $ca
	dec  [hl]                                        ; $66c3: $35

jr_024_66c4:
	xor  a                                           ; $66c4: $af
	ld   [$ca9e], a                                  ; $66c5: $ea $9e $ca

jr_024_66c8:
	ret                                              ; $66c8: $c9


Jump_024_66c9:
	ld   a, [$ca8c]                                  ; $66c9: $fa $8c $ca
	cp   $02                                         ; $66cc: $fe $02
	jr   z, jr_024_66df                              ; $66ce: $28 $0f

	cp   $03                                         ; $66d0: $fe $03
	jr   nz, jr_024_66e8                             ; $66d2: $20 $14

	ld   hl, $ca71                                   ; $66d4: $21 $71 $ca
	ld   a, [hl]                                     ; $66d7: $7e
	cp   $02                                         ; $66d8: $fe $02
	jr   z, jr_024_66c8                              ; $66da: $28 $ec

	inc  [hl]                                        ; $66dc: $34
	jr   jr_024_66e8                                 ; $66dd: $18 $09

jr_024_66df:
	ld   hl, $ca71                                   ; $66df: $21 $71 $ca
	ld   a, [hl]                                     ; $66e2: $7e
	cp   $00                                         ; $66e3: $fe $00
	jr   z, jr_024_66c8                              ; $66e5: $28 $e1

	dec  [hl]                                        ; $66e7: $35

jr_024_66e8:
	ret                                              ; $66e8: $c9


	push af                                          ; $66e9: $f5
	ld   h, [hl]                                     ; $66ea: $66
	ld   hl, sp+$66                                  ; $66eb: $f8 $66
	ei                                               ; $66ed: $fb
	ld   h, [hl]                                     ; $66ee: $66
	cp   $66                                         ; $66ef: $fe $66
	ld   bc, $0467                                   ; $66f1: $01 $67 $04
	ld   h, a                                        ; $66f4: $67
	ld   [bc], a                                     ; $66f5: $02
	rst  $38                                         ; $66f6: $ff
	rst  $38                                         ; $66f7: $ff
	ld   [bc], a                                     ; $66f8: $02
	ld   [bc], a                                     ; $66f9: $02
	rst  $38                                         ; $66fa: $ff
	nop                                              ; $66fb: $00
	nop                                              ; $66fc: $00
	nop                                              ; $66fd: $00
	dec  c                                           ; $66fe: $0d
	dec  c                                           ; $66ff: $0d
	rst  $38                                         ; $6700: $ff
	inc  c                                           ; $6701: $0c
	inc  c                                           ; $6702: $0c
	inc  c                                           ; $6703: $0c
	ld   bc, $ffff                                   ; $6704: $01 $ff $ff
	dec  d                                           ; $6707: $15
	ld   h, a                                        ; $6708: $67
	rla                                              ; $6709: $17
	ld   h, a                                        ; $670a: $67
	add  hl, de                                      ; $670b: $19
	ld   h, a                                        ; $670c: $67
	dec  de                                          ; $670d: $1b
	ld   h, a                                        ; $670e: $67
	dec  e                                           ; $670f: $1d
	ld   h, a                                        ; $6710: $67
	rra                                              ; $6711: $1f
	ld   h, a                                        ; $6712: $67
	ld   hl, $0767                                   ; $6713: $21 $67 $07
	inc  b                                           ; $6716: $04
	inc  c                                           ; $6717: $0c
	ld   [$0a10], sp                                 ; $6718: $08 $10 $0a
	inc  d                                           ; $671b: $14
	dec  c                                           ; $671c: $0d
	add  hl, de                                      ; $671d: $19
	db   $10                                         ; $671e: $10
	ld   d, $0e                                      ; $671f: $16 $0e
	ld   d, $0e                                      ; $6721: $16 $0e

Call_024_6723:
	ld   a, $00                                      ; $6723: $3e $00
	ld   [$ca8e], a                                  ; $6725: $ea $8e $ca
	ld   a, $ff                                      ; $6728: $3e $ff
	ld   [$ca87], a                                  ; $672a: $ea $87 $ca
	ld   a, $01                                      ; $672d: $3e $01
	ld   [$ca8a], a                                  ; $672f: $ea $8a $ca
	ld   a, $00                                      ; $6732: $3e $00
	ld   [$ca8e], a                                  ; $6734: $ea $8e $ca
	ld   a, [$cbec]                                  ; $6737: $fa $ec $cb
	cp   $ff                                         ; $673a: $fe $ff
	jp   z, Jump_024_68bc                            ; $673c: $ca $bc $68

	ld   b, $00                                      ; $673f: $06 $00
	ld   c, a                                        ; $6741: $4f
	ld   hl, $ca72                                   ; $6742: $21 $72 $ca
	add  hl, bc                                      ; $6745: $09
	ld   a, [hl]                                     ; $6746: $7e
	cp   $0a                                         ; $6747: $fe $0a
	jr   z, jr_024_6764                              ; $6749: $28 $19

	cp   $05                                         ; $674b: $fe $05
	jp   z, Jump_024_680d                            ; $674d: $ca $0d $68

	cp   $04                                         ; $6750: $fe $04
	jp   z, Jump_024_67fd                            ; $6752: $ca $fd $67

	cp   $03                                         ; $6755: $fe $03
	jp   z, Jump_024_67e0                            ; $6757: $ca $e0 $67

	cp   $02                                         ; $675a: $fe $02
	jp   z, Jump_024_67d3                            ; $675c: $ca $d3 $67

	cp   $01                                         ; $675f: $fe $01
	jp   z, Jump_024_67c6                            ; $6761: $ca $c6 $67

jr_024_6764:
	ld   a, $22                                      ; $6764: $3e $22
	ld   [$ca87], a                                  ; $6766: $ea $87 $ca
	ld   a, $04                                      ; $6769: $3e $04
	ld   [wRandomNumRange], a                                  ; $676b: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $676e: $cd $70 $0c
	call GetRandomNumInPreSpecifiedRange                                       ; $6771: $cd $10 $0d
	cp   $00                                         ; $6774: $fe $00
	jr   nz, jr_024_6783                             ; $6776: $20 $0b

jr_024_6778:
	ld   a, $01                                      ; $6778: $3e $01
	ld   [$ca78], a                                  ; $677a: $ea $78 $ca
	xor  a                                           ; $677d: $af
	ld   [$caa1], a                                  ; $677e: $ea $a1 $ca
	jr   jr_024_678e                                 ; $6781: $18 $0b

jr_024_6783:
	ld   a, [$caa1]                                  ; $6783: $fa $a1 $ca
	inc  a                                           ; $6786: $3c
	cp   $03                                         ; $6787: $fe $03
	jr   z, jr_024_6778                              ; $6789: $28 $ed

	ld   [$caa1], a                                  ; $678b: $ea $a1 $ca

jr_024_678e:
	ld   a, $08                                      ; $678e: $3e $08
	ld   [$ca75], a                                  ; $6790: $ea $75 $ca
	ld   a, [$ca70]                                  ; $6793: $fa $70 $ca
	sla  a                                           ; $6796: $cb $27
	ld   b, $00                                      ; $6798: $06 $00
	ld   c, a                                        ; $679a: $4f
	ld   hl, $6a8e                                   ; $679b: $21 $8e $6a
	add  hl, bc                                      ; $679e: $09
	ld   a, [hl+]                                    ; $679f: $2a
	ld   h, [hl]                                     ; $67a0: $66
	ld   l, a                                        ; $67a1: $6f
	ld   a, [hl+]                                    ; $67a2: $2a
	ld   b, a                                        ; $67a3: $47
	ld   a, [hl]                                     ; $67a4: $7e
	ld   c, a                                        ; $67a5: $4f
	ld   a, [$ca7b]                                  ; $67a6: $fa $7b $ca
	cp   c                                           ; $67a9: $b9
	jr   c, jr_024_67b1                              ; $67aa: $38 $05

	dec  c                                           ; $67ac: $0d
	sub  c                                           ; $67ad: $91
	ld   [$ca7b], a                                  ; $67ae: $ea $7b $ca

jr_024_67b1:
	ld   a, [$ca79]                                  ; $67b1: $fa $79 $ca
	cp   b                                           ; $67b4: $b8
	jr   c, jr_024_67bf                              ; $67b5: $38 $08

	dec  b                                           ; $67b7: $05
	sub  b                                           ; $67b8: $90
	ld   [$ca79], a                                  ; $67b9: $ea $79 $ca
	jp   Jump_024_68c3                               ; $67bc: $c3 $c3 $68


jr_024_67bf:
	xor  a                                           ; $67bf: $af
	ld   [$ca79], a                                  ; $67c0: $ea $79 $ca
	jp   Jump_024_68c3                               ; $67c3: $c3 $c3 $68


Jump_024_67c6:
	ld   a, $ff                                      ; $67c6: $3e $ff
	ld   [$ca87], a                                  ; $67c8: $ea $87 $ca
	ld   a, $01                                      ; $67cb: $3e $01
	ld   [$ca8e], a                                  ; $67cd: $ea $8e $ca
	jp   Jump_024_68c3                               ; $67d0: $c3 $c3 $68


Jump_024_67d3:
	ld   a, $ff                                      ; $67d3: $3e $ff
	ld   [$ca87], a                                  ; $67d5: $ea $87 $ca
	ld   a, $02                                      ; $67d8: $3e $02
	ld   [$ca8e], a                                  ; $67da: $ea $8e $ca
	jp   Jump_024_68c3                               ; $67dd: $c3 $c3 $68


Jump_024_67e0:
	ld   a, [$ca7e]                                  ; $67e0: $fa $7e $ca
	cp   $50                                         ; $67e3: $fe $50
	jr   nc, jr_024_67eb                             ; $67e5: $30 $04

	add  $14                                         ; $67e7: $c6 $14
	jr   jr_024_67ed                                 ; $67e9: $18 $02

jr_024_67eb:
	ld   a, $64                                      ; $67eb: $3e $64

jr_024_67ed:
	ld   [$ca7e], a                                  ; $67ed: $ea $7e $ca
	ld   a, $09                                      ; $67f0: $3e $09
	ld   [$ca87], a                                  ; $67f2: $ea $87 $ca
	ld   a, $ff                                      ; $67f5: $3e $ff
	ld   [$ca9a], a                                  ; $67f7: $ea $9a $ca
	jp   Jump_024_68c3                               ; $67fa: $c3 $c3 $68


Jump_024_67fd:
	ld   a, [$ca8c]                                  ; $67fd: $fa $8c $ca
	cp   $01                                         ; $6800: $fe $01
	jp   nz, Jump_024_68a6                           ; $6802: $c2 $a6 $68

	ld   a, $0a                                      ; $6805: $3e $0a
	ld   [$ca87], a                                  ; $6807: $ea $87 $ca
	jp   Jump_024_68c3                               ; $680a: $c3 $c3 $68


Jump_024_680d:
	ld   a, [$ca8c]                                  ; $680d: $fa $8c $ca
	cp   $01                                         ; $6810: $fe $01
	jp   nz, Jump_024_68a6                           ; $6812: $c2 $a6 $68

	ld   e, $00                                      ; $6815: $1e $00
	ld   a, [$ca80]                                  ; $6817: $fa $80 $ca
	sub  $18                                         ; $681a: $d6 $18
	ld   d, a                                        ; $681c: $57
	ld   a, [$ca97]                                  ; $681d: $fa $97 $ca
	and  a                                           ; $6820: $a7
	jr   z, jr_024_6828                              ; $6821: $28 $05

	ld   a, [$ca84]                                  ; $6823: $fa $84 $ca
	jr   jr_024_682b                                 ; $6826: $18 $03

jr_024_6828:
	ld   a, [$ca81]                                  ; $6828: $fa $81 $ca

jr_024_682b:
	cp   d                                           ; $682b: $ba
	jr   c, jr_024_684d                              ; $682c: $38 $1f

	ld   a, d                                        ; $682e: $7a
	cp   $cf                                         ; $682f: $fe $cf
	jr   c, jr_024_6837                              ; $6831: $38 $04

	ld   a, $ff                                      ; $6833: $3e $ff
	jr   jr_024_6839                                 ; $6835: $18 $02

jr_024_6837:
	add  $30                                         ; $6837: $c6 $30

jr_024_6839:
	ld   d, a                                        ; $6839: $57
	ld   a, [$ca97]                                  ; $683a: $fa $97 $ca
	and  a                                           ; $683d: $a7
	jr   z, jr_024_6845                              ; $683e: $28 $05

	ld   a, [$ca84]                                  ; $6840: $fa $84 $ca
	jr   jr_024_6848                                 ; $6843: $18 $03

jr_024_6845:
	ld   a, [$ca81]                                  ; $6845: $fa $81 $ca

jr_024_6848:
	cp   d                                           ; $6848: $ba
	jr   c, jr_024_684c                              ; $6849: $38 $01

	inc  e                                           ; $684b: $1c

jr_024_684c:
	inc  e                                           ; $684c: $1c

jr_024_684d:
	inc  e                                           ; $684d: $1c
	ld   a, $05                                      ; $684e: $3e $05
	ld   [wRandomNumRange], a                                  ; $6850: $ea $a5 $c2
	push de                                          ; $6853: $d5
	call UpdateSramRandomSeed                                       ; $6854: $cd $70 $0c
	call GetRandomNumInPreSpecifiedRange                                       ; $6857: $cd $10 $0d
	pop  de                                          ; $685a: $d1
	cp   e                                           ; $685b: $bb
	jr   nc, jr_024_6894                             ; $685c: $30 $36

jr_024_685e:
	xor  a                                           ; $685e: $af
	ld   [$ca9b], a                                  ; $685f: $ea $9b $ca
	ld   a, [$ca76]                                  ; $6862: $fa $76 $ca
	ld   [$ca77], a                                  ; $6865: $ea $77 $ca
	ld   a, $0c                                      ; $6868: $3e $0c
	ld   [$ca87], a                                  ; $686a: $ea $87 $ca
	ld   a, [$ca71]                                  ; $686d: $fa $71 $ca
	cp   $00                                         ; $6870: $fe $00
	jr   z, jr_024_687a                              ; $6872: $28 $06

	ld   a, $02                                      ; $6874: $3e $02
	ld   b, $06                                      ; $6876: $06 $06
	jr   jr_024_687e                                 ; $6878: $18 $04

jr_024_687a:
	ld   a, $03                                      ; $687a: $3e $03
	ld   b, $07                                      ; $687c: $06 $07

jr_024_687e:
	ld   [$ca76], a                                  ; $687e: $ea $76 $ca
	ld   a, b                                        ; $6881: $78
	ld   [$ca75], a                                  ; $6882: $ea $75 $ca
	ld   a, [$ca97]                                  ; $6885: $fa $97 $ca
	and  a                                           ; $6888: $a7
	jr   z, jr_024_6893                              ; $6889: $28 $08

	ld   a, $01                                      ; $688b: $3e $01
	ld   [$ca71], a                                  ; $688d: $ea $71 $ca
	ld   [$ca97], a                                  ; $6890: $ea $97 $ca

jr_024_6893:
	ret                                              ; $6893: $c9


jr_024_6894:
	ld   a, [$ca9b]                                  ; $6894: $fa $9b $ca
	inc  a                                           ; $6897: $3c
	ld   [$ca9b], a                                  ; $6898: $ea $9b $ca
	cp   $03                                         ; $689b: $fe $03
	jr   z, jr_024_685e                              ; $689d: $28 $bf

	ld   a, $0d                                      ; $689f: $3e $0d
	ld   [$ca87], a                                  ; $68a1: $ea $87 $ca
	jr   jr_024_68c3                                 ; $68a4: $18 $1d

Jump_024_68a6:
	ld   a, [$ca76]                                  ; $68a6: $fa $76 $ca
	ld   [$ca77], a                                  ; $68a9: $ea $77 $ca
	ld   a, $00                                      ; $68ac: $3e $00
	ld   [$ca76], a                                  ; $68ae: $ea $76 $ca
	ld   a, $ff                                      ; $68b1: $3e $ff
	ld   [$ca75], a                                  ; $68b3: $ea $75 $ca
	ld   a, $1a                                      ; $68b6: $3e $1a
	ld   [$ca87], a                                  ; $68b8: $ea $87 $ca
	ret                                              ; $68bb: $c9


Jump_024_68bc:
	ld   a, $0b                                      ; $68bc: $3e $0b
	ld   [$ca87], a                                  ; $68be: $ea $87 $ca
	jr   jr_024_68c3                                 ; $68c1: $18 $00

Jump_024_68c3:
jr_024_68c3:
	ld   a, [$ca8c]                                  ; $68c3: $fa $8c $ca
	cp   $02                                         ; $68c6: $fe $02
	jr   z, jr_024_68d4                              ; $68c8: $28 $0a

	cp   $03                                         ; $68ca: $fe $03
	jr   nz, jr_024_68d8                             ; $68cc: $20 $0a

	xor  a                                           ; $68ce: $af
	ld   [$ca8c], a                                  ; $68cf: $ea $8c $ca
	jr   jr_024_68d8                                 ; $68d2: $18 $04

jr_024_68d4:
	xor  a                                           ; $68d4: $af
	ld   [$ca8c], a                                  ; $68d5: $ea $8c $ca

jr_024_68d8:
	ld   a, [$ca89]                                  ; $68d8: $fa $89 $ca
	and  a                                           ; $68db: $a7
	jp   nz, Jump_024_69ca                           ; $68dc: $c2 $ca $69

	ld   a, [$ca87]                                  ; $68df: $fa $87 $ca
	cp   $0a                                         ; $68e2: $fe $0a
	jr   z, jr_024_68ed                              ; $68e4: $28 $07

	ld   a, [$ca7c]                                  ; $68e6: $fa $7c $ca
	ld   b, $00                                      ; $68e9: $06 $00
	jr   jr_024_68f2                                 ; $68eb: $18 $05

jr_024_68ed:
	ld   b, $ff                                      ; $68ed: $06 $ff
	ld   a, [$ca7c]                                  ; $68ef: $fa $7c $ca

jr_024_68f2:
	call Call_024_63c3                               ; $68f2: $cd $c3 $63
	ld   c, a                                        ; $68f5: $4f
	ld   a, [$ca7b]                                  ; $68f6: $fa $7b $ca
	cp   c                                           ; $68f9: $b9
	jp   c, Jump_024_6913                            ; $68fa: $da $13 $69

	sub  c                                           ; $68fd: $91
	ld   [$ca7b], a                                  ; $68fe: $ea $7b $ca
	ld   a, [$ca7e]                                  ; $6901: $fa $7e $ca
	cp   $55                                         ; $6904: $fe $55
	jr   nc, jr_024_690c                             ; $6906: $30 $04

	add  $0f                                         ; $6908: $c6 $0f
	jr   jr_024_690e                                 ; $690a: $18 $02

jr_024_690c:
	ld   a, $64                                      ; $690c: $3e $64

jr_024_690e:
	ld   [$ca7e], a                                  ; $690e: $ea $7e $ca
	jr   jr_024_6917                                 ; $6911: $18 $04

Jump_024_6913:
	xor  a                                           ; $6913: $af
	ld   [$ca7b], a                                  ; $6914: $ea $7b $ca

jr_024_6917:
	ld   hl, $6a6a                                   ; $6917: $21 $6a $6a
	ld   a, [$ca71]                                  ; $691a: $fa $71 $ca
	sla  a                                           ; $691d: $cb $27
	ld   d, $00                                      ; $691f: $16 $00
	ld   e, a                                        ; $6921: $5f
	add  hl, de                                      ; $6922: $19
	ld   a, [$ca76]                                  ; $6923: $fa $76 $ca
	ld   [$ca77], a                                  ; $6926: $ea $77 $ca
	ld   a, [hl+]                                    ; $6929: $2a
	ld   [$ca75], a                                  ; $692a: $ea $75 $ca
	ld   a, [hl]                                     ; $692d: $7e
	ld   [$ca76], a                                  ; $692e: $ea $76 $ca
	ld   a, [$ca87]                                  ; $6931: $fa $87 $ca
	cp   $22                                         ; $6934: $fe $22
	jr   nz, jr_024_693c                             ; $6936: $20 $04

	ld   hl, $ca71                                   ; $6938: $21 $71 $ca
	dec  [hl]                                        ; $693b: $35

jr_024_693c:
	ld   a, [$ca8e]                                  ; $693c: $fa $8e $ca
	cp   $01                                         ; $693f: $fe $01
	jr   z, jr_024_6948                              ; $6941: $28 $05

	cp   $02                                         ; $6943: $fe $02
	jp   nz, Jump_024_69c9                           ; $6945: $c2 $c9 $69

jr_024_6948:
	ld   e, $00                                      ; $6948: $1e $00
	ld   a, [$ca80]                                  ; $694a: $fa $80 $ca
	sub  $07                                         ; $694d: $d6 $07
	ld   d, a                                        ; $694f: $57
	ld   a, [$ca81]                                  ; $6950: $fa $81 $ca
	cp   d                                           ; $6953: $ba
	jr   c, jr_024_696a                              ; $6954: $38 $14

	ld   a, d                                        ; $6956: $7a
	cp   $cf                                         ; $6957: $fe $cf
	jr   c, jr_024_695f                              ; $6959: $38 $04

	ld   a, $ff                                      ; $695b: $3e $ff
	jr   jr_024_6961                                 ; $695d: $18 $02

jr_024_695f:
	add  $30                                         ; $695f: $c6 $30

jr_024_6961:
	ld   d, a                                        ; $6961: $57
	ld   a, [$ca81]                                  ; $6962: $fa $81 $ca
	cp   d                                           ; $6965: $ba
	jr   c, jr_024_6969                              ; $6966: $38 $01

	inc  e                                           ; $6968: $1c

jr_024_6969:
	inc  e                                           ; $6969: $1c

jr_024_696a:
	inc  e                                           ; $696a: $1c
	ld   a, $04                                      ; $696b: $3e $04
	ld   [wRandomNumRange], a                                  ; $696d: $ea $a5 $c2
	push de                                          ; $6970: $d5
	call UpdateSramRandomSeed                                       ; $6971: $cd $70 $0c
	call GetRandomNumInPreSpecifiedRange                                       ; $6974: $cd $10 $0d
	pop  de                                          ; $6977: $d1
	cp   e                                           ; $6978: $bb
	jr   nc, jr_024_697d                             ; $6979: $30 $02

	jr   jr_024_6997                                 ; $697b: $18 $1a

jr_024_697d:
	ld   a, [wRandomNumRange]                                  ; $697d: $fa $a5 $c2
	ld   d, a                                        ; $6980: $57
	ld   a, [$ca9c]                                  ; $6981: $fa $9c $ca
	inc  a                                           ; $6984: $3c
	ld   [$ca9c], a                                  ; $6985: $ea $9c $ca
	cp   d                                           ; $6988: $ba
	jr   nc, jr_024_6997                             ; $6989: $30 $0c

	ld   a, $15                                      ; $698b: $3e $15
	ld   [$ca87], a                                  ; $698d: $ea $87 $ca
	ld   a, $00                                      ; $6990: $3e $00
	ld   [$ca8e], a                                  ; $6992: $ea $8e $ca
	jr   jr_024_69c9                                 ; $6995: $18 $32

jr_024_6997:
	xor  a                                           ; $6997: $af
	ld   [$ca9c], a                                  ; $6998: $ea $9c $ca
	ld   a, [$ca8e]                                  ; $699b: $fa $8e $ca
	cp   $02                                         ; $699e: $fe $02
	jr   z, jr_024_69b2                              ; $69a0: $28 $10

	ld   hl, $ca71                                   ; $69a2: $21 $71 $ca
	ld   a, [hl]                                     ; $69a5: $7e
	cp   $00                                         ; $69a6: $fe $00
	jr   z, jr_024_69c9                              ; $69a8: $28 $1f

	dec  [hl]                                        ; $69aa: $35
	ld   a, $21                                      ; $69ab: $3e $21
	ld   [$ca87], a                                  ; $69ad: $ea $87 $ca
	jr   jr_024_69c9                                 ; $69b0: $18 $17

jr_024_69b2:
	ld   a, [$ca8e]                                  ; $69b2: $fa $8e $ca
	cp   $02                                         ; $69b5: $fe $02
	jr   nz, jr_024_69c9                             ; $69b7: $20 $10

	ld   hl, $ca71                                   ; $69b9: $21 $71 $ca
	ld   a, [hl]                                     ; $69bc: $7e
	cp   $02                                         ; $69bd: $fe $02
	jr   z, jr_024_69c9                              ; $69bf: $28 $08

	inc  [hl]                                        ; $69c1: $34
	ld   a, $21                                      ; $69c2: $3e $21
	ld   [$ca87], a                                  ; $69c4: $ea $87 $ca
	jr   jr_024_69c9                                 ; $69c7: $18 $00

Jump_024_69c9:
jr_024_69c9:
	ret                                              ; $69c9: $c9


Jump_024_69ca:
	ld   e, $01                                      ; $69ca: $1e $01
	ld   a, [$ca7f]                                  ; $69cc: $fa $7f $ca
	sub  $18                                         ; $69cf: $d6 $18
	ld   d, a                                        ; $69d1: $57
	ld   a, [$ca81]                                  ; $69d2: $fa $81 $ca
	cp   d                                           ; $69d5: $ba
	jr   c, jr_024_69ec                              ; $69d6: $38 $14

	ld   a, d                                        ; $69d8: $7a
	cp   $cf                                         ; $69d9: $fe $cf
	jr   c, jr_024_69e1                              ; $69db: $38 $04

	ld   a, $ff                                      ; $69dd: $3e $ff
	jr   jr_024_69e3                                 ; $69df: $18 $02

jr_024_69e1:
	add  $30                                         ; $69e1: $c6 $30

jr_024_69e3:
	ld   d, a                                        ; $69e3: $57
	ld   a, [$ca81]                                  ; $69e4: $fa $81 $ca
	cp   d                                           ; $69e7: $ba
	jr   c, jr_024_69eb                              ; $69e8: $38 $01

	inc  e                                           ; $69ea: $1c

jr_024_69eb:
	inc  e                                           ; $69eb: $1c

jr_024_69ec:
	inc  e                                           ; $69ec: $1c
	ld   a, $04                                      ; $69ed: $3e $04
	ld   [wRandomNumRange], a                                  ; $69ef: $ea $a5 $c2
	push de                                          ; $69f2: $d5
	call UpdateSramRandomSeed                                       ; $69f3: $cd $70 $0c
	call GetRandomNumInPreSpecifiedRange                                       ; $69f6: $cd $10 $0d
	pop  de                                          ; $69f9: $d1
	cp   e                                           ; $69fa: $bb
	jp   nc, Jump_024_6a36                           ; $69fb: $d2 $36 $6a

	ld   a, [$ca8e]                                  ; $69fe: $fa $8e $ca
	cp   $01                                         ; $6a01: $fe $01
	jr   nz, jr_024_6a15                             ; $6a03: $20 $10

	ld   hl, $ca71                                   ; $6a05: $21 $71 $ca
	ld   a, [hl]                                     ; $6a08: $7e
	cp   $00                                         ; $6a09: $fe $00
	jr   z, jr_024_6a2a                              ; $6a0b: $28 $1d

	ld   a, $ff                                      ; $6a0d: $3e $ff
	ld   [$ca87], a                                  ; $6a0f: $ea $87 $ca
	dec  [hl]                                        ; $6a12: $35
	jr   jr_024_6a2a                                 ; $6a13: $18 $15

jr_024_6a15:
	ld   a, [$ca8e]                                  ; $6a15: $fa $8e $ca
	cp   $02                                         ; $6a18: $fe $02
	jr   nz, jr_024_6a2a                             ; $6a1a: $20 $0e

	ld   hl, $ca71                                   ; $6a1c: $21 $71 $ca
	ld   a, [hl]                                     ; $6a1f: $7e
	cp   $02                                         ; $6a20: $fe $02
	jr   z, jr_024_6a2a                              ; $6a22: $28 $06

	ld   a, $ff                                      ; $6a24: $3e $ff
	ld   [$ca87], a                                  ; $6a26: $ea $87 $ca
	inc  [hl]                                        ; $6a29: $34

jr_024_6a2a:
	ld   a, [$ca76]                                  ; $6a2a: $fa $76 $ca
	ld   [$ca77], a                                  ; $6a2d: $ea $77 $ca
	ld   a, $00                                      ; $6a30: $3e $00
	ld   [$ca76], a                                  ; $6a32: $ea $76 $ca
	ret                                              ; $6a35: $c9


Jump_024_6a36:
	ld   a, [$ca8e]                                  ; $6a36: $fa $8e $ca
	cp   $01                                         ; $6a39: $fe $01
	jr   nz, jr_024_6a44                             ; $6a3b: $20 $07

	ld   a, $05                                      ; $6a3d: $3e $05
	ld   [$ca87], a                                  ; $6a3f: $ea $87 $ca
	jr   jr_024_6a5e                                 ; $6a42: $18 $1a

jr_024_6a44:
	ld   a, [$ca8e]                                  ; $6a44: $fa $8e $ca
	cp   $02                                         ; $6a47: $fe $02
	jr   nz, jr_024_6a5e                             ; $6a49: $20 $13

	ld   a, [wRandomNumRange]                                  ; $6a4b: $fa $a5 $c2
	ld   d, a                                        ; $6a4e: $57
	ld   a, [$ca9c]                                  ; $6a4f: $fa $9c $ca
	inc  a                                           ; $6a52: $3c
	ld   [$ca9c], a                                  ; $6a53: $ea $9c $ca
	cp   d                                           ; $6a56: $ba
	jr   nc, jr_024_6a15                             ; $6a57: $30 $bc

	ld   a, $04                                      ; $6a59: $3e $04
	ld   [$ca87], a                                  ; $6a5b: $ea $87 $ca

jr_024_6a5e:
	ld   a, [$ca76]                                  ; $6a5e: $fa $76 $ca
	ld   [$ca77], a                                  ; $6a61: $ea $77 $ca
	ld   a, $00                                      ; $6a64: $3e $00
	ld   [$ca76], a                                  ; $6a66: $ea $76 $ca
	ret                                              ; $6a69: $c9


	ld   a, [bc]                                     ; $6a6a: $0a
	inc  bc                                          ; $6a6b: $03
	inc  b                                           ; $6a6c: $04
	ld   [bc], a                                     ; $6a6d: $02
	inc  b                                           ; $6a6e: $04
	ld   [bc], a                                     ; $6a6f: $02
	ld   a, h                                        ; $6a70: $7c
	ld   l, d                                        ; $6a71: $6a
	ld   a, a                                        ; $6a72: $7f
	ld   l, d                                        ; $6a73: $6a
	add  d                                           ; $6a74: $82
	ld   l, d                                        ; $6a75: $6a
	add  l                                           ; $6a76: $85
	ld   l, d                                        ; $6a77: $6a
	adc  b                                           ; $6a78: $88
	ld   l, d                                        ; $6a79: $6a
	adc  e                                           ; $6a7a: $8b
	ld   l, d                                        ; $6a7b: $6a
	ld   [bc], a                                     ; $6a7c: $02
	rst  $38                                         ; $6a7d: $ff
	rst  $38                                         ; $6a7e: $ff
	ld   [bc], a                                     ; $6a7f: $02
	ld   [bc], a                                     ; $6a80: $02
	rst  $38                                         ; $6a81: $ff
	nop                                              ; $6a82: $00
	nop                                              ; $6a83: $00
	nop                                              ; $6a84: $00
	dec  c                                           ; $6a85: $0d
	dec  c                                           ; $6a86: $0d
	rst  $38                                         ; $6a87: $ff
	inc  c                                           ; $6a88: $0c
	inc  c                                           ; $6a89: $0c
	inc  c                                           ; $6a8a: $0c
	ld   bc, $ffff                                   ; $6a8b: $01 $ff $ff
	sbc  h                                           ; $6a8e: $9c
	ld   l, d                                        ; $6a8f: $6a
	sbc  [hl]                                        ; $6a90: $9e
	ld   l, d                                        ; $6a91: $6a
	and  b                                           ; $6a92: $a0
	ld   l, d                                        ; $6a93: $6a
	and  d                                           ; $6a94: $a2
	ld   l, d                                        ; $6a95: $6a
	and  h                                           ; $6a96: $a4
	ld   l, d                                        ; $6a97: $6a
	and  [hl]                                        ; $6a98: $a6
	ld   l, d                                        ; $6a99: $6a
	xor  b                                           ; $6a9a: $a8
	ld   l, d                                        ; $6a9b: $6a
	rlca                                             ; $6a9c: $07
	inc  b                                           ; $6a9d: $04
	inc  c                                           ; $6a9e: $0c
	ld   [$0a10], sp                                 ; $6a9f: $08 $10 $0a
	inc  d                                           ; $6aa2: $14
	dec  c                                           ; $6aa3: $0d
	add  hl, de                                      ; $6aa4: $19
	db   $10                                         ; $6aa5: $10
	ld   d, $0e                                      ; $6aa6: $16 $0e
	ld   d, $0e                                      ; $6aa8: $16 $0e

Call_024_6aaa:
	ld   a, [$ca93]                                  ; $6aaa: $fa $93 $ca
	inc  a                                           ; $6aad: $3c
	ld   [$ca93], a                                  ; $6aae: $ea $93 $ca
	cp   $07                                         ; $6ab1: $fe $07
	jr   nz, jr_024_6abc                             ; $6ab3: $20 $07

	xor  a                                           ; $6ab5: $af
	ld   [$ca93], a                                  ; $6ab6: $ea $93 $ca
	ld   [$ca94], a                                  ; $6ab9: $ea $94 $ca

jr_024_6abc:
	ld   a, $04                                      ; $6abc: $3e $04
	ld   [wRandomNumRange], a                                  ; $6abe: $ea $a5 $c2
	ld   a, [$ca78]                                  ; $6ac1: $fa $78 $ca
	and  a                                           ; $6ac4: $a7
	jr   nz, jr_024_6b13                             ; $6ac5: $20 $4c

	call UpdateSramRandomSeed                                       ; $6ac7: $cd $70 $0c
	call GetRandomNumInPreSpecifiedRange                                       ; $6aca: $cd $10 $0d
	cp   $00                                         ; $6acd: $fe $00
	jr   z, jr_024_6b19                              ; $6acf: $28 $48

Jump_024_6ad1:
jr_024_6ad1:
	xor  a                                           ; $6ad1: $af
	ld   [$ca94], a                                  ; $6ad2: $ea $94 $ca
	ld   a, [$cbec]                                  ; $6ad5: $fa $ec $cb
	cp   $ff                                         ; $6ad8: $fe $ff
	jp   z, Jump_024_6ae9                            ; $6ada: $ca $e9 $6a

	ld   b, $00                                      ; $6add: $06 $00
	ld   c, a                                        ; $6adf: $4f
	ld   hl, $ca72                                   ; $6ae0: $21 $72 $ca
	add  hl, bc                                      ; $6ae3: $09
	ld   a, [hl]                                     ; $6ae4: $7e
	cp   $00                                         ; $6ae5: $fe $00
	jr   nz, jr_024_6b04                             ; $6ae7: $20 $1b

Jump_024_6ae9:
	ld   a, $03                                      ; $6ae9: $3e $03
	ld   [wRandomNumRange], a                                  ; $6aeb: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $6aee: $cd $70 $0c
	call GetRandomNumInPreSpecifiedRange                                       ; $6af1: $cd $10 $0d
	cp   $00                                         ; $6af4: $fe $00
	jr   z, jr_024_6afe                              ; $6af6: $28 $06

	ld   a, $01                                      ; $6af8: $3e $01
	ld   [$ca8c], a                                  ; $6afa: $ea $8c $ca
	ret                                              ; $6afd: $c9


jr_024_6afe:
	ld   a, $04                                      ; $6afe: $3e $04
	ld   [$ca8c], a                                  ; $6b00: $ea $8c $ca
	ret                                              ; $6b03: $c9


jr_024_6b04:
	ld   a, $03                                      ; $6b04: $3e $03
	ld   [wRandomNumRange], a                                  ; $6b06: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $6b09: $cd $70 $0c
	call GetRandomNumInPreSpecifiedRange                                       ; $6b0c: $cd $10 $0d
	cp   $00                                         ; $6b0f: $fe $00
	jr   z, jr_024_6b19                              ; $6b11: $28 $06

jr_024_6b13:
	ld   a, $00                                      ; $6b13: $3e $00
	ld   [$ca8c], a                                  ; $6b15: $ea $8c $ca
	ret                                              ; $6b18: $c9


jr_024_6b19:
	ld   a, [$cbec]                                  ; $6b19: $fa $ec $cb
	cp   $ff                                         ; $6b1c: $fe $ff
	jr   z, jr_024_6b6f                              ; $6b1e: $28 $4f

	ld   c, a                                        ; $6b20: $4f
	ld   b, $00                                      ; $6b21: $06 $00
	ld   hl, $ca72                                   ; $6b23: $21 $72 $ca
	add  hl, bc                                      ; $6b26: $09
	ld   a, [hl]                                     ; $6b27: $7e
	cp   $01                                         ; $6b28: $fe $01
	jr   z, jr_024_6b30                              ; $6b2a: $28 $04

	cp   $02                                         ; $6b2c: $fe $02
	jr   nz, jr_024_6b6f                             ; $6b2e: $20 $3f

jr_024_6b30:
	ld   a, [$ca6f]                                  ; $6b30: $fa $6f $ca
	cp   $00                                         ; $6b33: $fe $00
	jr   z, jr_024_6b55                              ; $6b35: $28 $1e

	cp   $05                                         ; $6b37: $fe $05
	jr   z, jr_024_6b55                              ; $6b39: $28 $1a

	ld   a, [$ca94]                                  ; $6b3b: $fa $94 $ca
	cp   $03                                         ; $6b3e: $fe $03
	jr   z, jr_024_6ad1                              ; $6b40: $28 $8f

	inc  a                                           ; $6b42: $3c
	ld   [$ca94], a                                  ; $6b43: $ea $94 $ca
	ld   hl, $ca71                                   ; $6b46: $21 $71 $ca
	ld   a, [hl]                                     ; $6b49: $7e
	cp   $00                                         ; $6b4a: $fe $00
	jr   z, jr_024_6ad1                              ; $6b4c: $28 $83

	ld   a, $02                                      ; $6b4e: $3e $02
	ld   [$ca8c], a                                  ; $6b50: $ea $8c $ca
	jr   jr_024_6b6f                                 ; $6b53: $18 $1a

jr_024_6b55:
	ld   a, [$ca94]                                  ; $6b55: $fa $94 $ca
	cp   $02                                         ; $6b58: $fe $02
	jp   z, Jump_024_6ad1                            ; $6b5a: $ca $d1 $6a

	inc  a                                           ; $6b5d: $3c
	ld   [$ca94], a                                  ; $6b5e: $ea $94 $ca
	ld   hl, $ca71                                   ; $6b61: $21 $71 $ca
	ld   a, [hl]                                     ; $6b64: $7e
	cp   $02                                         ; $6b65: $fe $02
	jp   z, Jump_024_6ad1                            ; $6b67: $ca $d1 $6a

	ld   a, $03                                      ; $6b6a: $3e $03
	ld   [$ca8c], a                                  ; $6b6c: $ea $8c $ca

jr_024_6b6f:
	ld   a, [$ca94]                                  ; $6b6f: $fa $94 $ca
	inc  a                                           ; $6b72: $3c
	ld   [$ca94], a                                  ; $6b73: $ea $94 $ca
	ld   a, [$ca8c]                                  ; $6b76: $fa $8c $ca
	ret                                              ; $6b79: $c9


	ret                                              ; $6b7a: $c9


Call_024_6b7b:
	ld   a, [$ca93]                                  ; $6b7b: $fa $93 $ca
	inc  a                                           ; $6b7e: $3c
	ld   [$ca93], a                                  ; $6b7f: $ea $93 $ca
	cp   $07                                         ; $6b82: $fe $07
	jr   nz, jr_024_6b8d                             ; $6b84: $20 $07

	xor  a                                           ; $6b86: $af
	ld   [$ca93], a                                  ; $6b87: $ea $93 $ca
	ld   [$ca94], a                                  ; $6b8a: $ea $94 $ca

jr_024_6b8d:
	ld   a, $04                                      ; $6b8d: $3e $04
	ld   [wRandomNumRange], a                                  ; $6b8f: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $6b92: $cd $70 $0c
	call GetRandomNumInPreSpecifiedRange                                       ; $6b95: $cd $10 $0d
	cp   $00                                         ; $6b98: $fe $00
	jr   z, jr_024_6ba2                              ; $6b9a: $28 $06

jr_024_6b9c:
	ld   a, $01                                      ; $6b9c: $3e $01
	ld   [$ca8c], a                                  ; $6b9e: $ea $8c $ca
	ret                                              ; $6ba1: $c9


jr_024_6ba2:
	ld   a, [$ca6f]                                  ; $6ba2: $fa $6f $ca
	cp   $00                                         ; $6ba5: $fe $00
	jr   z, jr_024_6bc6                              ; $6ba7: $28 $1d

	cp   $05                                         ; $6ba9: $fe $05
	jr   z, jr_024_6bc6                              ; $6bab: $28 $19

	ld   a, [$ca94]                                  ; $6bad: $fa $94 $ca
	cp   $03                                         ; $6bb0: $fe $03
	jr   z, jr_024_6b9c                              ; $6bb2: $28 $e8

	inc  a                                           ; $6bb4: $3c
	ld   [$ca94], a                                  ; $6bb5: $ea $94 $ca
	ld   hl, $ca71                                   ; $6bb8: $21 $71 $ca
	ld   a, [hl]                                     ; $6bbb: $7e
	cp   $00                                         ; $6bbc: $fe $00
	jr   z, jr_024_6b9c                              ; $6bbe: $28 $dc

	ld   a, $02                                      ; $6bc0: $3e $02
	ld   [$ca8c], a                                  ; $6bc2: $ea $8c $ca
	ret                                              ; $6bc5: $c9


jr_024_6bc6:
	ld   a, [$ca94]                                  ; $6bc6: $fa $94 $ca
	cp   $02                                         ; $6bc9: $fe $02
	jr   z, jr_024_6b9c                              ; $6bcb: $28 $cf

	inc  a                                           ; $6bcd: $3c
	ld   [$ca94], a                                  ; $6bce: $ea $94 $ca
	ld   hl, $ca71                                   ; $6bd1: $21 $71 $ca
	ld   a, [hl]                                     ; $6bd4: $7e
	cp   $02                                         ; $6bd5: $fe $02
	jr   z, jr_024_6b9c                              ; $6bd7: $28 $c3

	ld   a, $03                                      ; $6bd9: $3e $03
	ld   [$ca8c], a                                  ; $6bdb: $ea $8c $ca
	ret                                              ; $6bde: $c9


Call_024_6bdf:
	ld   a, d                                        ; $6bdf: $7a
	ld   [$ca42], a                                  ; $6be0: $ea $42 $ca
	ld   c, $81                                      ; $6be3: $0e $81
	ld   de, $8800                                   ; $6be5: $11 $00 $88
	ld   a, $07                                      ; $6be8: $3e $07
	ld   hl, $d840                                   ; $6bea: $21 $40 $d8
	ld   b, $54                                      ; $6bed: $06 $54
	call EnqueueHDMATransfer                                       ; $6bef: $cd $7c $02
	call InitWideTextBoxDimensions                                       ; $6bf2: $cd $ec $0f
	call ClearTextBoxDimensionsAndSetDefaultTextStyle                                       ; $6bf5: $cd $09 $14

; Normal sized text box
	ld   bc, $0e03                                   ; $6bf8: $01 $03 $0e
	call SetKanjiTextBoxDimensions                                       ; $6bfb: $cd $24 $14

; Draw from top-left corner
	ld   bc, $0000                                   ; $6bfe: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $6c01: $cd $34 $14

;
	ld   a, [$ca42]                                  ; $6c04: $fa $42 $ca
	ld   b, $00                                      ; $6c07: $06 $00
	ld   c, a                                        ; $6c09: $4f
	ld   hl, .table                                   ; $6c0a: $21 $26 $6c
	add  hl, bc                                      ; $6c0d: $09
	ld   a, [hl]                                     ; $6c0e: $7e
	add  a                                           ; $6c0f: $87
	ld   h, $00                                      ; $6c10: $26 $00
	ld   l, a                                        ; $6c12: $6f
	ld   bc, Table_24_71b0                                   ; $6c13: $01 $b0 $71
	add  hl, bc                                      ; $6c16: $09
	ld   a, [hl+]                                    ; $6c17: $2a
	ld   h, [hl]                                     ; $6c18: $66
	ld   l, a                                        ; $6c19: $6f
	ld   bc, Table_24_71b0                                   ; $6c1a: $01 $b0 $71
	add  hl, bc                                      ; $6c1d: $09
	call PopulateKanjiConvoStructForCurrTextBox                                       ; $6c1e: $cd $27 $10
	
	xor  a                                           ; $6c21: $af
	ld   [hScriptOpcodeParams+1], a                                  ; $6c22: $ea $a1 $ff
	ret                                              ; $6c25: $c9

.table:
	nop                                              ; $6c26: $00
	ld   bc, $0302                                   ; $6c27: $01 $02 $03
	inc  b                                           ; $6c2a: $04
	dec  b                                           ; $6c2b: $05
	ld   b, $09                                      ; $6c2c: $06 $09
	ld   a, [bc]                                     ; $6c2e: $0a
	dec  bc                                          ; $6c2f: $0b
	inc  c                                           ; $6c30: $0c
	dec  c                                           ; $6c31: $0d
	ld   c, $0f                                      ; $6c32: $0e $0f
	db   $10                                         ; $6c34: $10
	ld   de, $1312                                   ; $6c35: $11 $12 $13
	inc  d                                           ; $6c38: $14
	dec  d                                           ; $6c39: $15
	ld   d, $17                                      ; $6c3a: $16 $17
	jr   @+$1b                                       ; $6c3c: $18 $19

	ld   a, [de]                                     ; $6c3e: $1a
	dec  de                                          ; $6c3f: $1b
	inc  e                                           ; $6c40: $1c
	dec  e                                           ; $6c41: $1d
	rlca                                             ; $6c42: $07
	ld   [$1f1e], sp                                 ; $6c43: $08 $1e $1f
	jr   nz, jr_024_6c69                             ; $6c46: $20 $21

	ld   [hl+], a                                    ; $6c48: $22
	inc  hl                                          ; $6c49: $23
	nop                                              ; $6c4a: $00
	nop                                              ; $6c4b: $00
	nop                                              ; $6c4c: $00
	nop                                              ; $6c4d: $00
	inc  h                                           ; $6c4e: $24
	dec  h                                           ; $6c4f: $25
	ld   h, $27                                      ; $6c50: $26 $27
	jr   z, @+$2b                                    ; $6c52: $28 $29

	ld   [hl-], a                                    ; $6c54: $32
	ld   sp, $2b2a                                   ; $6c55: $31 $2a $2b
	inc  l                                           ; $6c58: $2c
	dec  l                                           ; $6c59: $2d
	ld   l, $2f                                      ; $6c5a: $2e $2f
	jr   nc, @+$40                                   ; $6c5c: $30 $3e

	ccf                                              ; $6c5e: $3f
	ld   b, b                                        ; $6c5f: $40
	ld   b, c                                        ; $6c60: $41
	ld   b, [hl]                                     ; $6c61: $46
	ld   b, a                                        ; $6c62: $47
	ld   c, c                                        ; $6c63: $49
	ld   c, d                                        ; $6c64: $4a
	ld   c, e                                        ; $6c65: $4b
	ld   c, h                                        ; $6c66: $4c
	ld   c, l                                        ; $6c67: $4d
	ld   c, b                                        ; $6c68: $48

jr_024_6c69:
	ld   b, d                                        ; $6c69: $42
	ld   b, e                                        ; $6c6a: $43
	ld   b, h                                        ; $6c6b: $44
	ld   b, l                                        ; $6c6c: $45

Call_024_6c6d:
	call CheckIfReachedLastKanjiIdxInCurrTextBox                                       ; $6c6d: $cd $71 $14
	or   a                                           ; $6c70: $b7
	jr   nz, jr_024_6c75                             ; $6c71: $20 $02

	scf                                              ; $6c73: $37
	ret                                              ; $6c74: $c9

jr_024_6c75:
	ld   a, [wInGameButtonsHeld]                                  ; $6c75: $fa $0f $c2
	and  $82                                         ; $6c78: $e6 $82
	jr   nz, jr_024_6c84                             ; $6c7a: $20 $08

	ld   hl, hScriptOpcodeParams+1                                   ; $6c7c: $21 $a1 $ff
	dec  [hl]                                        ; $6c7f: $35
	bit  7, [hl]                                     ; $6c80: $cb $7e
	jr   z, jr_024_6c8c                              ; $6c82: $28 $08

jr_024_6c84:
	ld   a, [sTextSpeedBaseCounter]                                  ; $6c84: $fa $b3 $b1
	ldh  [hScriptOpcodeParams+1], a                                    ; $6c87: $e0 $a1
	jp   HDMAEnqueueNextTextBoxKanji                                       ; $6c89: $c3 $55 $10


jr_024_6c8c:
	ret                                              ; $6c8c: $c9


Call_024_6c8d:
	ld   a, [wWramBank]                                  ; $6c8d: $fa $93 $c2
	push af                                          ; $6c90: $f5
	ld   a, $07                                      ; $6c91: $3e $07
	ld   [wWramBank], a                                  ; $6c93: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6c96: $e0 $70
	ld   hl, $d000                                   ; $6c98: $21 $00 $d0
	ld   bc, $06c0                                   ; $6c9b: $01 $c0 $06
	call MemClear                                       ; $6c9e: $cd $95 $09
	ld   a, [$ca6f]                                  ; $6ca1: $fa $6f $ca
	sla  a                                           ; $6ca4: $cb $27
	ld   d, $00                                      ; $6ca6: $16 $00
	ld   e, a                                        ; $6ca8: $5f
	ld   hl, $6e02                                   ; $6ca9: $21 $02 $6e
	add  hl, de                                      ; $6cac: $19
	ld   a, [$ca83]                                  ; $6cad: $fa $83 $ca
	cp   $00                                         ; $6cb0: $fe $00
	jr   z, jr_024_6cb9                              ; $6cb2: $28 $05

	ld   d, $00                                      ; $6cb4: $16 $00
	ld   e, $0c                                      ; $6cb6: $1e $0c
	add  hl, de                                      ; $6cb8: $19

jr_024_6cb9:
	ld   a, [hl+]                                    ; $6cb9: $2a
	ld   h, [hl]                                     ; $6cba: $66
	ld   l, a                                        ; $6cbb: $6f
	ld   a, [$ca71]                                  ; $6cbc: $fa $71 $ca
	cp   $01                                         ; $6cbf: $fe $01
	jr   z, jr_024_6cc9                              ; $6cc1: $28 $06

	cp   $02                                         ; $6cc3: $fe $02
	jr   nz, jr_024_6ccb                             ; $6cc5: $20 $04

	inc  hl                                          ; $6cc7: $23
	inc  hl                                          ; $6cc8: $23

jr_024_6cc9:
	inc  hl                                          ; $6cc9: $23
	inc  hl                                          ; $6cca: $23

jr_024_6ccb:
	ld   a, [hl+]                                    ; $6ccb: $2a
	ld   h, [hl]                                     ; $6ccc: $66
	ld   l, a                                        ; $6ccd: $6f
	ld   a, [hl+]                                    ; $6cce: $2a
	ld   [$cbed], a                                  ; $6ccf: $ea $ed $cb
	push hl                                          ; $6cd2: $e5
	cp   $03                                         ; $6cd3: $fe $03
	jr   z, jr_024_6ce1                              ; $6cd5: $28 $0a

	cp   $02                                         ; $6cd7: $fe $02
	jr   z, jr_024_6cf6                              ; $6cd9: $28 $1b

	cp   $01                                         ; $6cdb: $fe $01
	jr   z, jr_024_6d0b                              ; $6cdd: $28 $2c

	jr   jr_024_6d13                                 ; $6cdf: $18 $32

jr_024_6ce1:
	ld   a, $06                                      ; $6ce1: $3e $06
	ld   [wRandomNumRange], a                                  ; $6ce3: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $6ce6: $cd $10 $0d
	ld   b, a                                        ; $6ce9: $47
	sla  a                                           ; $6cea: $cb $27
	add  b                                           ; $6cec: $80
	ld   h, $00                                      ; $6ced: $26 $00
	ld   l, a                                        ; $6cef: $6f
	ld   de, $6e94                                   ; $6cf0: $11 $94 $6e
	add  hl, de                                      ; $6cf3: $19
	jr   jr_024_6d13                                 ; $6cf4: $18 $1d

jr_024_6cf6:
	ld   a, $ff                                      ; $6cf6: $3e $ff
	ld   [wRandomNumRange], a                                  ; $6cf8: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $6cfb: $cd $10 $0d
	rlca                                             ; $6cfe: $07
	rla                                              ; $6cff: $17
	and  $03                                         ; $6d00: $e6 $03
	ld   h, $00                                      ; $6d02: $26 $00
	ld   l, a                                        ; $6d04: $6f
	ld   de, Data_24_6e91                                   ; $6d05: $11 $91 $6e
	add  hl, de                                      ; $6d08: $19
	jr   jr_024_6d13                                 ; $6d09: $18 $08

jr_024_6d0b:
	ld   h, $00                                      ; $6d0b: $26 $00
	ld   l, $01                                      ; $6d0d: $2e $01
	ld   de, Data_24_6e91                                   ; $6d0f: $11 $91 $6e
	add  hl, de                                      ; $6d12: $19

jr_024_6d13:
	ld   d, h                                        ; $6d13: $54
	ld   e, l                                        ; $6d14: $5d
	pop  hl                                          ; $6d15: $e1
	ld   a, [$cbed]                                  ; $6d16: $fa $ed $cb

.outerLoopA:
	push af                                          ; $6d19: $f5
	push de                                          ; $6d1a: $d5
	push hl                                          ; $6d1b: $e5

;
	ld   b, $00                                      ; $6d1c: $06 $00
	ld   a, [de]                                     ; $6d1e: $1a
	ld   c, a                                        ; $6d1f: $4f

;
	push de                                          ; $6d20: $d5
	call SetCurrKanjiColAndRowToDrawOn                                       ; $6d21: $cd $34 $14
	pop  de                                          ; $6d24: $d1

;
	ld   a, d                                        ; $6d25: $7a
	ld   [$ca42], a                                  ; $6d26: $ea $42 $ca
	ld   a, e                                        ; $6d29: $7b
	ld   [$ca43], a                                  ; $6d2a: $ea $43 $ca

;
	push hl                                          ; $6d2d: $e5
	ld   a, [hl]                                     ; $6d2e: $7e
	ld   c, a                                        ; $6d2f: $4f
	ld   hl, $ca72                                   ; $6d30: $21 $72 $ca
	ld   a, [de]                                     ; $6d33: $1a
	ld   d, $00                                      ; $6d34: $16 $00
	ld   e, a                                        ; $6d36: $5f
	add  hl, de                                      ; $6d37: $19
	ld   a, c                                        ; $6d38: $79
	ld   [hl], a                                     ; $6d39: $77
	pop  hl                                          ; $6d3a: $e1
	ld   a, [hl]                                     ; $6d3b: $7e
	ld   d, $00                                      ; $6d3c: $16 $00
	ld   e, a                                        ; $6d3e: $5f
	ld   a, [hl]                                     ; $6d3f: $7e
	cp   $0a                                         ; $6d40: $fe $0a
	jr   nz, .cont_6d7c                             ; $6d42: $20 $38

	push hl                                          ; $6d44: $e5
	ld   a, [$ca70]                                  ; $6d45: $fa $70 $ca
	sla  a                                           ; $6d48: $cb $27
	ld   b, $00                                      ; $6d4a: $06 $00
	ld   c, a                                        ; $6d4c: $4f
	ld   hl, $6ea6                                   ; $6d4d: $21 $a6 $6e
	add  hl, bc                                      ; $6d50: $09
	ld   a, [hl+]                                    ; $6d51: $2a
	ld   h, [hl]                                     ; $6d52: $66
	ld   l, a                                        ; $6d53: $6f
	ld   a, [hl]                                     ; $6d54: $7e
	pop  hl                                          ; $6d55: $e1
	ld   b, a                                        ; $6d56: $47
	ld   a, [$ca7b]                                  ; $6d57: $fa $7b $ca
	cp   b                                           ; $6d5a: $b8
	jr   nc, .br_6d64                             ; $6d5b: $30 $07

	ld   a, [$ca7b]                                  ; $6d5d: $fa $7b $ca
	cp   $0a                                         ; $6d60: $fe $0a
	jr   nc, .cont_6d7c                             ; $6d62: $30 $18

.br_6d64:
	push hl                                          ; $6d64: $e5
	ld   a, [$ca42]                                  ; $6d65: $fa $42 $ca
	ld   d, a                                        ; $6d68: $57
	ld   a, [$ca43]                                  ; $6d69: $fa $43 $ca
	ld   e, a                                        ; $6d6c: $5f
	ld   hl, $ca72                                   ; $6d6d: $21 $72 $ca
	ld   a, [de]                                     ; $6d70: $1a
	ld   d, $00                                      ; $6d71: $16 $00
	ld   e, a                                        ; $6d73: $5f
	add  hl, de                                      ; $6d74: $19
	ld   a, $02                                      ; $6d75: $3e $02
	ld   [hl], a                                     ; $6d77: $77
	pop  hl                                          ; $6d78: $e1
	ld   de, $0002                                   ; $6d79: $11 $02 $00

.cont_6d7c:
	call Call_024_77cc                               ; $6d7c: $cd $cc $77
	jr   c, .lastPartOfLoop                              ; $6d7f: $38 $44

	ld   a, [$ca96]                                  ; $6d81: $fa $96 $ca
	and  a                                           ; $6d84: $a7
	jr   z, .lastPartOfLoop                              ; $6d85: $28 $3e

	ld   a, [$ca95]                                  ; $6d87: $fa $95 $ca
	and  a                                           ; $6d8a: $a7
	jr   nz, .lastPartOfLoop                             ; $6d8b: $20 $38

	ld   a, [$ca9f]                                  ; $6d8d: $fa $9f $ca
	and  a                                           ; $6d90: $a7
	jr   nz, .br_6d9a                             ; $6d91: $20 $07

	ld   a, [$ca70]                                  ; $6d93: $fa $70 $ca
	cp   $04                                         ; $6d96: $fe $04
	jr   nz, .lastPartOfLoop                             ; $6d98: $20 $2b

.br_6d9a:
	ld   a, [$ca7e]                                  ; $6d9a: $fa $7e $ca
	cp   $64                                         ; $6d9d: $fe $64
	jr   nz, .lastPartOfLoop                             ; $6d9f: $20 $24

	ld   a, [hl]                                     ; $6da1: $7e
	cp   $03                                         ; $6da2: $fe $03
	jr   nz, .lastPartOfLoop                             ; $6da4: $20 $1f

	ld   a, [$ca6f]                                  ; $6da6: $fa $6f $ca
	cp   $01                                         ; $6da9: $fe $01
	jr   z, .br_6db3                              ; $6dab: $28 $06

	cp   $05                                         ; $6dad: $fe $05
	jr   z, .br_6dbc                              ; $6daf: $28 $0b

	jr   .eEqu6                                 ; $6db1: $18 $10

.br_6db3:
	ld   a, [$ca71]                                  ; $6db3: $fa $71 $ca
	cp   $02                                         ; $6db6: $fe $02
	jr   z, .lastPartOfLoop                              ; $6db8: $28 $0b

	jr   .eEqu6                                 ; $6dba: $18 $07

.br_6dbc:
	ld   a, [$ca71]                                  ; $6dbc: $fa $71 $ca
	cp   $00                                         ; $6dbf: $fe $00
	jr   nz, .lastPartOfLoop                             ; $6dc1: $20 $02

.eEqu6:
	ld   e, $06                                      ; $6dc3: $1e $06

.lastPartOfLoop:
;
	ld   hl, Data_24_6e86                                   ; $6dc5: $21 $86 $6e
	add  hl, de                                      ; $6dc8: $19
	ld   d, $00                                      ; $6dc9: $16 $00
	ld   a, [hl]                                     ; $6dcb: $7e
	ld   e, a                                        ; $6dcc: $5f

;
	ld   hl, Table_24_71b0                                   ; $6dcd: $21 $b0 $71
	add  hl, de                                      ; $6dd0: $19
	add  hl, de                                      ; $6dd1: $19

;
	ld   a, [hl+]                                    ; $6dd2: $2a
	ld   h, [hl]                                     ; $6dd3: $66
	ld   l, a                                        ; $6dd4: $6f
	ld   de, Table_24_71b0                                   ; $6dd5: $11 $b0 $71
	add  hl, de                                      ; $6dd8: $19

;
	ld   d, h                                        ; $6dd9: $54
	ld   e, l                                        ; $6dda: $5d
	ld   hl, $d000                                   ; $6ddb: $21 $00 $d0
	ld   a, $24                                      ; $6dde: $3e $24
	call LoadInstantText                                       ; $6de0: $cd $06 $13

;
	pop  hl                                          ; $6de3: $e1
	pop  de                                          ; $6de4: $d1
	pop  af                                          ; $6de5: $f1

;
	inc  de                                          ; $6de6: $13
	inc  hl                                          ; $6de7: $23
	dec  a                                           ; $6de8: $3d
	jp   nz, .outerLoopA                           ; $6de9: $c2 $19 $6d

; Restore ram bank
	pop  af                                          ; $6dec: $f1
	ld   [wWramBank], a                                  ; $6ded: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6df0: $e0 $70

; Display choices
	ld   c, $81                                      ; $6df2: $0e $81
	ld   de, $8800                                   ; $6df4: $11 $00 $88
	ld   a, $07                                      ; $6df7: $3e $07
	ld   hl, $d000                                   ; $6df9: $21 $00 $d0
	ld   b, $6c                                      ; $6dfc: $06 $6c
	call EnqueueHDMATransfer                                       ; $6dfe: $cd $7c $02
	ret                                              ; $6e01: $c9


;
	ld   a, [de]                                     ; $6e02: $1a
	ld   l, [hl]                                     ; $6e03: $6e
	jr   nz, jr_024_6e74                             ; $6e04: $20 $6e

	ld   h, $6e                                      ; $6e06: $26 $6e
	jr   nz, @+$70                                   ; $6e08: $20 $6e

	ld   h, $6e                                      ; $6e0a: $26 $6e
	ld   a, [de]                                     ; $6e0c: $1a
	ld   l, [hl]                                     ; $6e0d: $6e
	inc  l                                           ; $6e0e: $2c
	ld   l, [hl]                                     ; $6e0f: $6e
	ld   [hl-], a                                    ; $6e10: $32
	ld   l, [hl]                                     ; $6e11: $6e
	jr   c, jr_024_6e82                              ; $6e12: $38 $6e

	ld   [hl-], a                                    ; $6e14: $32
	ld   l, [hl]                                     ; $6e15: $6e
	jr   c, @+$70                                    ; $6e16: $38 $6e

	inc  l                                           ; $6e18: $2c
	ld   l, [hl]                                     ; $6e19: $6e
	ld   a, $6e                                      ; $6e1a: $3e $6e
	ld   b, d                                        ; $6e1c: $42
	ld   l, [hl]                                     ; $6e1d: $6e
	ld   b, [hl]                                     ; $6e1e: $46
	ld   l, [hl]                                     ; $6e1f: $6e
	ld   c, d                                        ; $6e20: $4a
	ld   l, [hl]                                     ; $6e21: $6e
	ld   c, [hl]                                     ; $6e22: $4e
	ld   l, [hl]                                     ; $6e23: $6e
	ld   d, d                                        ; $6e24: $52
	ld   l, [hl]                                     ; $6e25: $6e
	ld   d, [hl]                                     ; $6e26: $56
	ld   l, [hl]                                     ; $6e27: $6e
	ld   e, d                                        ; $6e28: $5a
	ld   l, [hl]                                     ; $6e29: $6e
	ld   e, [hl]                                     ; $6e2a: $5e
	ld   l, [hl]                                     ; $6e2b: $6e
	ld   h, d                                        ; $6e2c: $62
	ld   l, [hl]                                     ; $6e2d: $6e
	ld   h, [hl]                                     ; $6e2e: $66
	ld   l, [hl]                                     ; $6e2f: $6e
	ld   l, d                                        ; $6e30: $6a
	ld   l, [hl]                                     ; $6e31: $6e
	ld   l, [hl]                                     ; $6e32: $6e
	ld   l, [hl]                                     ; $6e33: $6e
	ld   [hl], d                                     ; $6e34: $72
	ld   l, [hl]                                     ; $6e35: $6e
	halt                                             ; $6e36: $76
	ld   l, [hl]                                     ; $6e37: $6e
	ld   a, d                                        ; $6e38: $7a
	ld   l, [hl]                                     ; $6e39: $6e
	ld   a, [hl]                                     ; $6e3a: $7e
	ld   l, [hl]                                     ; $6e3b: $6e
	add  d                                           ; $6e3c: $82
	ld   l, [hl]                                     ; $6e3d: $6e
	ld   [bc], a                                     ; $6e3e: $02
	nop                                              ; $6e3f: $00
	inc  bc                                          ; $6e40: $03
	rst  $38                                         ; $6e41: $ff
	inc  bc                                          ; $6e42: $03
	ld   bc, $0a03                                   ; $6e43: $01 $03 $0a
	ld   [bc], a                                     ; $6e46: $02
	ld   bc, $ff03                                   ; $6e47: $01 $03 $ff
	inc  bc                                          ; $6e4a: $03
	nop                                              ; $6e4b: $00
	inc  bc                                          ; $6e4c: $03
	ld   [bc], a                                     ; $6e4d: $02
	ld   [bc], a                                     ; $6e4e: $02
	nop                                              ; $6e4f: $00
	inc  bc                                          ; $6e50: $03
	rst  $38                                         ; $6e51: $ff
	ld   [bc], a                                     ; $6e52: $02
	ld   bc, $ff03                                   ; $6e53: $01 $03 $ff
	inc  bc                                          ; $6e56: $03
	nop                                              ; $6e57: $00
	inc  bc                                          ; $6e58: $03
	ld   [bc], a                                     ; $6e59: $02
	inc  bc                                          ; $6e5a: $03
	nop                                              ; $6e5b: $00
	inc  bc                                          ; $6e5c: $03
	ld   [bc], a                                     ; $6e5d: $02
	ld   [bc], a                                     ; $6e5e: $02
	nop                                              ; $6e5f: $00
	inc  bc                                          ; $6e60: $03
	rst  $38                                         ; $6e61: $ff
	inc  bc                                          ; $6e62: $03
	nop                                              ; $6e63: $00
	ld   [bc], a                                     ; $6e64: $02
	inc  bc                                          ; $6e65: $03
	inc  bc                                          ; $6e66: $03
	ld   bc, $030a                                   ; $6e67: $01 $0a $03
	ld   [bc], a                                     ; $6e6a: $02
	ld   bc, $ff03                                   ; $6e6b: $01 $03 $ff
	inc  bc                                          ; $6e6e: $03
	nop                                              ; $6e6f: $00
	ld   [bc], a                                     ; $6e70: $02
	inc  bc                                          ; $6e71: $03
	inc  bc                                          ; $6e72: $03
	nop                                              ; $6e73: $00

jr_024_6e74:
	ld   [bc], a                                     ; $6e74: $02
	inc  bc                                          ; $6e75: $03
	ld   [bc], a                                     ; $6e76: $02
	ld   bc, $ff03                                   ; $6e77: $01 $03 $ff
	inc  bc                                          ; $6e7a: $03
	nop                                              ; $6e7b: $00
	ld   [bc], a                                     ; $6e7c: $02
	inc  bc                                          ; $6e7d: $03
	inc  bc                                          ; $6e7e: $03
	nop                                              ; $6e7f: $00
	ld   [bc], a                                     ; $6e80: $02
	inc  bc                                          ; $6e81: $03

jr_024_6e82:
	inc  bc                                          ; $6e82: $03
	nop                                              ; $6e83: $00
	db $01, $03 
	
	
Data_24_6e86:
	db $33, $34, $35, $36
	db $37, $38, $39, $00
	db $00, $00, $3d


Data_24_6e91:
	ld   bc, $0200                                   ; $6e91: $01 $00 $02
	nop                                              ; $6e94: $00
	ld   bc, $0002                                   ; $6e95: $01 $02 $00
	ld   [bc], a                                     ; $6e98: $02
	ld   bc, $0201                                   ; $6e99: $01 $01 $02
	nop                                              ; $6e9c: $00
	ld   bc, $0200                                   ; $6e9d: $01 $00 $02
	ld   [bc], a                                     ; $6ea0: $02
	nop                                              ; $6ea1: $00
	ld   bc, $0102                                   ; $6ea2: $01 $02 $01
	nop                                              ; $6ea5: $00
	or   h                                           ; $6ea6: $b4
	ld   l, [hl]                                     ; $6ea7: $6e
	or   l                                           ; $6ea8: $b5
	ld   l, [hl]                                     ; $6ea9: $6e
	or   [hl]                                        ; $6eaa: $b6
	ld   l, [hl]                                     ; $6eab: $6e
	or   a                                           ; $6eac: $b7
	ld   l, [hl]                                     ; $6ead: $6e
	cp   b                                           ; $6eae: $b8
	ld   l, [hl]                                     ; $6eaf: $6e
	cp   c                                           ; $6eb0: $b9
	ld   l, [hl]                                     ; $6eb1: $6e
	cp   d                                           ; $6eb2: $ba
	ld   l, [hl]                                     ; $6eb3: $6e
	inc  hl                                          ; $6eb4: $23
	inc  a                                           ; $6eb5: $3c
	ld   d, b                                        ; $6eb6: $50
	ld   h, h                                        ; $6eb7: $64
	ld   a, l                                        ; $6eb8: $7d
	ld   l, [hl]                                     ; $6eb9: $6e
	ld   l, [hl]                                     ; $6eba: $6e


Call_024_6ebb:
	ld   a, [wWramBank]                                  ; $6ebb: $fa $93 $c2
	push af                                          ; $6ebe: $f5
	ld   a, $07                                      ; $6ebf: $3e $07
	ld   [wWramBank], a                                  ; $6ec1: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6ec4: $e0 $70

jr_024_6ec6:
	ld   hl, $d000                                   ; $6ec6: $21 $00 $d0
	ld   bc, $06c0                                   ; $6ec9: $01 $c0 $06
	call MemClear                                       ; $6ecc: $cd $95 $09
	ld   a, [$ca6f]                                  ; $6ecf: $fa $6f $ca
	sla  a                                           ; $6ed2: $cb $27
	ld   d, $00                                      ; $6ed4: $16 $00
	ld   e, a                                        ; $6ed6: $5f
	ld   hl, $7031                                   ; $6ed7: $21 $31 $70
	add  hl, de                                      ; $6eda: $19
	ld   a, [$ca83]                                  ; $6edb: $fa $83 $ca
	cp   $00                                         ; $6ede: $fe $00
	jr   z, jr_024_6ef2                              ; $6ee0: $28 $10

	cp   $02                                         ; $6ee2: $fe $02
	jr   z, jr_024_6eed                              ; $6ee4: $28 $07

	ld   d, $00                                      ; $6ee6: $16 $00
	ld   e, $0c                                      ; $6ee8: $1e $0c
	add  hl, de                                      ; $6eea: $19
	jr   jr_024_6ef2                                 ; $6eeb: $18 $05

jr_024_6eed:
	ld   d, $00                                      ; $6eed: $16 $00
	ld   e, $18                                      ; $6eef: $1e $18
	add  hl, de                                      ; $6ef1: $19

jr_024_6ef2:
	ld   a, [$ca83]                                  ; $6ef2: $fa $83 $ca
	and  a                                           ; $6ef5: $a7
	jr   z, jr_024_6f04                              ; $6ef6: $28 $0c

	ld   a, [$ca8c]                                  ; $6ef8: $fa $8c $ca
	cp   $01                                         ; $6efb: $fe $01
	jr   z, jr_024_6f04                              ; $6efd: $28 $05

	ld   d, $00                                      ; $6eff: $16 $00
	ld   e, $18                                      ; $6f01: $1e $18
	add  hl, de                                      ; $6f03: $19

jr_024_6f04:
	ld   a, [hl+]                                    ; $6f04: $2a
	ld   h, [hl]                                     ; $6f05: $66
	ld   l, a                                        ; $6f06: $6f
	ld   a, [$ca71]                                  ; $6f07: $fa $71 $ca
	sla  a                                           ; $6f0a: $cb $27
	ld   d, $00                                      ; $6f0c: $16 $00
	ld   e, a                                        ; $6f0e: $5f
	add  hl, de                                      ; $6f0f: $19
	ld   a, [hl+]                                    ; $6f10: $2a
	ld   h, [hl]                                     ; $6f11: $66
	ld   l, a                                        ; $6f12: $6f
	ld   a, [hl+]                                    ; $6f13: $2a
	ld   [$cbed], a                                  ; $6f14: $ea $ed $cb
	push hl                                          ; $6f17: $e5
	cp   $03                                         ; $6f18: $fe $03
	jr   z, jr_024_6f26                              ; $6f1a: $28 $0a

	cp   $02                                         ; $6f1c: $fe $02
	jr   z, jr_024_6f3b                              ; $6f1e: $28 $1b

	cp   $01                                         ; $6f20: $fe $01
	jr   z, jr_024_6f50                              ; $6f22: $28 $2c

	jr   jr_024_6f58                                 ; $6f24: $18 $32

jr_024_6f26:
	ld   a, $06                                      ; $6f26: $3e $06
	ld   [wRandomNumRange], a                                  ; $6f28: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $6f2b: $cd $10 $0d
	ld   b, a                                        ; $6f2e: $47
	sla  a                                           ; $6f2f: $cb $27
	add  b                                           ; $6f31: $80
	ld   h, $00                                      ; $6f32: $26 $00
	ld   l, a                                        ; $6f34: $6f
	ld   de, $7189                                   ; $6f35: $11 $89 $71
	add  hl, de                                      ; $6f38: $19
	jr   jr_024_6f58                                 ; $6f39: $18 $1d

jr_024_6f3b:
	ld   a, $ff                                      ; $6f3b: $3e $ff
	ld   [wRandomNumRange], a                                  ; $6f3d: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $6f40: $cd $10 $0d
	rlca                                             ; $6f43: $07
	rla                                              ; $6f44: $17
	and  $03                                         ; $6f45: $e6 $03
	ld   h, $00                                      ; $6f47: $26 $00
	ld   l, a                                        ; $6f49: $6f
	ld   de, $7186                                   ; $6f4a: $11 $86 $71
	add  hl, de                                      ; $6f4d: $19
	jr   jr_024_6f58                                 ; $6f4e: $18 $08

jr_024_6f50:
	ld   h, $00                                      ; $6f50: $26 $00
	ld   l, $01                                      ; $6f52: $2e $01
	ld   de, $7186                                   ; $6f54: $11 $86 $71
	add  hl, de                                      ; $6f57: $19

jr_024_6f58:
	ld   d, h                                        ; $6f58: $54
	ld   e, l                                        ; $6f59: $5d
	pop  hl                                          ; $6f5a: $e1
	ld   a, [$cbed]                                  ; $6f5b: $fa $ed $cb

Jump_024_6f5e:
	push af                                          ; $6f5e: $f5
	push de                                          ; $6f5f: $d5
	push hl                                          ; $6f60: $e5
	ld   b, $00                                      ; $6f61: $06 $00
	ld   a, [de]                                     ; $6f63: $1a
	ld   c, a                                        ; $6f64: $4f
	push de                                          ; $6f65: $d5
	call SetCurrKanjiColAndRowToDrawOn                                       ; $6f66: $cd $34 $14
	pop  de                                          ; $6f69: $d1
	ld   a, d                                        ; $6f6a: $7a
	ld   [$ca42], a                                  ; $6f6b: $ea $42 $ca
	ld   a, e                                        ; $6f6e: $7b
	ld   [$ca43], a                                  ; $6f6f: $ea $43 $ca
	push hl                                          ; $6f72: $e5
	ld   a, [hl]                                     ; $6f73: $7e
	ld   c, a                                        ; $6f74: $4f
	ld   hl, $ca72                                   ; $6f75: $21 $72 $ca
	ld   a, [de]                                     ; $6f78: $1a
	ld   d, $00                                      ; $6f79: $16 $00
	ld   e, a                                        ; $6f7b: $5f
	add  hl, de                                      ; $6f7c: $19
	ld   a, c                                        ; $6f7d: $79
	ld   [hl], a                                     ; $6f7e: $77
	pop  hl                                          ; $6f7f: $e1
	ld   a, [hl]                                     ; $6f80: $7e
	ld   d, $00                                      ; $6f81: $16 $00
	ld   e, a                                        ; $6f83: $5f
	ld   a, [hl]                                     ; $6f84: $7e
	cp   $0a                                         ; $6f85: $fe $0a
	jr   nz, jr_024_6fc1                             ; $6f87: $20 $38

	push hl                                          ; $6f89: $e5
	ld   a, [$ca70]                                  ; $6f8a: $fa $70 $ca
	sla  a                                           ; $6f8d: $cb $27
	ld   b, $00                                      ; $6f8f: $06 $00
	ld   c, a                                        ; $6f91: $4f
	ld   hl, $719b                                   ; $6f92: $21 $9b $71
	add  hl, bc                                      ; $6f95: $09
	ld   a, [hl+]                                    ; $6f96: $2a
	ld   h, [hl]                                     ; $6f97: $66
	ld   l, a                                        ; $6f98: $6f
	ld   a, [hl]                                     ; $6f99: $7e
	pop  hl                                          ; $6f9a: $e1
	ld   b, a                                        ; $6f9b: $47
	ld   a, [$ca7b]                                  ; $6f9c: $fa $7b $ca
	cp   b                                           ; $6f9f: $b8
	jr   nc, jr_024_6fa9                             ; $6fa0: $30 $07

	ld   a, [$ca7b]                                  ; $6fa2: $fa $7b $ca
	cp   $0a                                         ; $6fa5: $fe $0a
	jr   nc, jr_024_6fc1                             ; $6fa7: $30 $18

jr_024_6fa9:
	push hl                                          ; $6fa9: $e5
	ld   a, [$ca42]                                  ; $6faa: $fa $42 $ca
	ld   d, a                                        ; $6fad: $57
	ld   a, [$ca43]                                  ; $6fae: $fa $43 $ca
	ld   e, a                                        ; $6fb1: $5f
	ld   hl, $ca72                                   ; $6fb2: $21 $72 $ca
	ld   a, [de]                                     ; $6fb5: $1a
	ld   d, $00                                      ; $6fb6: $16 $00
	ld   e, a                                        ; $6fb8: $5f
	add  hl, de                                      ; $6fb9: $19
	ld   a, $01                                      ; $6fba: $3e $01
	ld   [hl], a                                     ; $6fbc: $77
	pop  hl                                          ; $6fbd: $e1
	ld   de, $0001                                   ; $6fbe: $11 $01 $00

jr_024_6fc1:
	ld   a, [$ca6f]                                  ; $6fc1: $fa $6f $ca
	cp   $03                                         ; $6fc4: $fe $03
	jr   nz, jr_024_6fd6                             ; $6fc6: $20 $0e

	ld   a, [hl]                                     ; $6fc8: $7e
	cp   $05                                         ; $6fc9: $fe $05
	jr   nz, jr_024_6fd6                             ; $6fcb: $20 $09

	ld   a, $01                                      ; $6fcd: $3e $01
	ld   [$ca97], a                                  ; $6fcf: $ea $97 $ca
	ld   e, $07                                      ; $6fd2: $1e $07
	jr   jr_024_6fd6                                 ; $6fd4: $18 $00

jr_024_6fd6:
	ld   a, [$ca8c]                                  ; $6fd6: $fa $8c $ca
	cp   $02                                         ; $6fd9: $fe $02
	jr   nz, jr_024_6fe6                             ; $6fdb: $20 $09

	ld   a, e                                        ; $6fdd: $7b
	cp   $02                                         ; $6fde: $fe $02
	jr   nz, jr_024_6ff4                             ; $6fe0: $20 $12

	ld   e, $08                                      ; $6fe2: $1e $08
	jr   jr_024_6ff4                                 ; $6fe4: $18 $0e

jr_024_6fe6:
	ld   a, [$ca8c]                                  ; $6fe6: $fa $8c $ca
	cp   $03                                         ; $6fe9: $fe $03
	jr   nz, jr_024_6ff4                             ; $6feb: $20 $07

	ld   a, e                                        ; $6fed: $7b
	cp   $01                                         ; $6fee: $fe $01
	jr   nz, jr_024_6ff4                             ; $6ff0: $20 $02

	ld   e, $09                                      ; $6ff2: $1e $09

jr_024_6ff4:
	ld   hl, $717b                                   ; $6ff4: $21 $7b $71
	add  hl, de                                      ; $6ff7: $19
	ld   d, $00                                      ; $6ff8: $16 $00
	ld   a, [hl]                                     ; $6ffa: $7e
	ld   e, a                                        ; $6ffb: $5f
	ld   hl, Table_24_71b0                                   ; $6ffc: $21 $b0 $71
	add  hl, de                                      ; $6fff: $19
	add  hl, de                                      ; $7000: $19
	ld   a, [hl+]                                    ; $7001: $2a
	ld   h, [hl]                                     ; $7002: $66
	ld   l, a                                        ; $7003: $6f
	ld   de, Table_24_71b0                                   ; $7004: $11 $b0 $71
	add  hl, de                                      ; $7007: $19
	ld   d, h                                        ; $7008: $54
	ld   e, l                                        ; $7009: $5d
	ld   hl, $d000                                   ; $700a: $21 $00 $d0
	ld   a, $24                                      ; $700d: $3e $24
	call LoadInstantText                                       ; $700f: $cd $06 $13
	pop  hl                                          ; $7012: $e1
	pop  de                                          ; $7013: $d1
	pop  af                                          ; $7014: $f1
	inc  de                                          ; $7015: $13
	inc  hl                                          ; $7016: $23
	dec  a                                           ; $7017: $3d
	jp   nz, Jump_024_6f5e                           ; $7018: $c2 $5e $6f

	pop  af                                          ; $701b: $f1
	ld   [wWramBank], a                                  ; $701c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $701f: $e0 $70
	ld   c, $81                                      ; $7021: $0e $81
	ld   de, $8800                                   ; $7023: $11 $00 $88
	ld   a, $07                                      ; $7026: $3e $07
	ld   hl, $d000                                   ; $7028: $21 $00 $d0
	ld   b, $6c                                      ; $702b: $06 $6c
	call EnqueueHDMATransfer                                       ; $702d: $cd $7c $02
	ret                                              ; $7030: $c9


	ld   l, l                                        ; $7031: $6d
	ld   [hl], b                                     ; $7032: $70
	ld   [hl], e                                     ; $7033: $73
	ld   [hl], b                                     ; $7034: $70
	ld   a, c                                        ; $7035: $79
	ld   [hl], b                                     ; $7036: $70
	ld   [hl], e                                     ; $7037: $73
	ld   [hl], b                                     ; $7038: $70
	ld   a, c                                        ; $7039: $79
	ld   [hl], b                                     ; $703a: $70
	ld   l, l                                        ; $703b: $6d
	ld   [hl], b                                     ; $703c: $70
	ld   a, a                                        ; $703d: $7f
	ld   [hl], b                                     ; $703e: $70
	add  l                                           ; $703f: $85
	ld   [hl], b                                     ; $7040: $70
	adc  e                                           ; $7041: $8b
	ld   [hl], b                                     ; $7042: $70
	add  l                                           ; $7043: $85
	ld   [hl], b                                     ; $7044: $70
	adc  e                                           ; $7045: $8b
	ld   [hl], b                                     ; $7046: $70
	ld   a, a                                        ; $7047: $7f
	ld   [hl], b                                     ; $7048: $70
	sub  c                                           ; $7049: $91
	ld   [hl], b                                     ; $704a: $70
	sub  a                                           ; $704b: $97
	ld   [hl], b                                     ; $704c: $70
	sbc  l                                           ; $704d: $9d
	ld   [hl], b                                     ; $704e: $70
	sub  a                                           ; $704f: $97
	ld   [hl], b                                     ; $7050: $70
	sbc  l                                           ; $7051: $9d
	ld   [hl], b                                     ; $7052: $70
	sub  c                                           ; $7053: $91
	ld   [hl], b                                     ; $7054: $70
	and  e                                           ; $7055: $a3
	ld   [hl], b                                     ; $7056: $70
	xor  c                                           ; $7057: $a9
	ld   [hl], b                                     ; $7058: $70
	xor  a                                           ; $7059: $af
	ld   [hl], b                                     ; $705a: $70
	xor  c                                           ; $705b: $a9
	ld   [hl], b                                     ; $705c: $70
	xor  a                                           ; $705d: $af
	ld   [hl], b                                     ; $705e: $70
	and  e                                           ; $705f: $a3
	ld   [hl], b                                     ; $7060: $70
	or   l                                           ; $7061: $b5
	ld   [hl], b                                     ; $7062: $70
	cp   e                                           ; $7063: $bb
	ld   [hl], b                                     ; $7064: $70
	pop  bc                                          ; $7065: $c1
	ld   [hl], b                                     ; $7066: $70
	cp   e                                           ; $7067: $bb
	ld   [hl], b                                     ; $7068: $70
	pop  bc                                          ; $7069: $c1
	ld   [hl], b                                     ; $706a: $70
	or   l                                           ; $706b: $b5
	ld   [hl], b                                     ; $706c: $70
	rst  ToBoot                                         ; $706d: $c7
	ld   [hl], b                                     ; $706e: $70
	bit  6, b                                        ; $706f: $cb $70
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7071: $cf
	ld   [hl], b                                     ; $7072: $70
	db   $eb                                         ; $7073: $eb
	ld   [hl], b                                     ; $7074: $70
	rst  $28                                         ; $7075: $ef
	ld   [hl], b                                     ; $7076: $70
	di                                               ; $7077: $f3
	ld   [hl], b                                     ; $7078: $70
	rrca                                             ; $7079: $0f
	ld   [hl], c                                     ; $707a: $71
	inc  de                                          ; $707b: $13
	ld   [hl], c                                     ; $707c: $71
	rla                                              ; $707d: $17
	ld   [hl], c                                     ; $707e: $71
	db   $d3                                         ; $707f: $d3
	ld   [hl], b                                     ; $7080: $70
	rst  $10                                         ; $7081: $d7
	ld   [hl], b                                     ; $7082: $70
	db   $db                                         ; $7083: $db
	ld   [hl], b                                     ; $7084: $70
	rst  $30                                         ; $7085: $f7
	ld   [hl], b                                     ; $7086: $70
	ei                                               ; $7087: $fb
	ld   [hl], b                                     ; $7088: $70
	rst  $38                                         ; $7089: $ff
	ld   [hl], b                                     ; $708a: $70
	dec  de                                          ; $708b: $1b
	ld   [hl], c                                     ; $708c: $71
	rra                                              ; $708d: $1f
	ld   [hl], c                                     ; $708e: $71
	inc  hl                                          ; $708f: $23
	ld   [hl], c                                     ; $7090: $71
	rst  JumpTable                                         ; $7091: $df
	ld   [hl], b                                     ; $7092: $70
	db   $e3                                         ; $7093: $e3
	ld   [hl], b                                     ; $7094: $70
	rst  $20                                         ; $7095: $e7
	ld   [hl], b                                     ; $7096: $70
	inc  bc                                          ; $7097: $03
	ld   [hl], c                                     ; $7098: $71
	rlca                                             ; $7099: $07
	ld   [hl], c                                     ; $709a: $71
	dec  bc                                          ; $709b: $0b
	ld   [hl], c                                     ; $709c: $71
	daa                                              ; $709d: $27
	ld   [hl], c                                     ; $709e: $71
	dec  hl                                          ; $709f: $2b
	ld   [hl], c                                     ; $70a0: $71
	cpl                                              ; $70a1: $2f
	ld   [hl], c                                     ; $70a2: $71
	inc  sp                                          ; $70a3: $33
	ld   [hl], c                                     ; $70a4: $71
	scf                                              ; $70a5: $37
	ld   [hl], c                                     ; $70a6: $71
	dec  sp                                          ; $70a7: $3b
	ld   [hl], c                                     ; $70a8: $71
	ld   c, e                                        ; $70a9: $4b
	ld   [hl], c                                     ; $70aa: $71
	ld   c, a                                        ; $70ab: $4f
	ld   [hl], c                                     ; $70ac: $71
	ld   d, e                                        ; $70ad: $53
	ld   [hl], c                                     ; $70ae: $71
	ld   h, e                                        ; $70af: $63
	ld   [hl], c                                     ; $70b0: $71
	ld   h, a                                        ; $70b1: $67
	ld   [hl], c                                     ; $70b2: $71
	ld   l, e                                        ; $70b3: $6b
	ld   [hl], c                                     ; $70b4: $71
	ccf                                              ; $70b5: $3f
	ld   [hl], c                                     ; $70b6: $71
	ld   b, e                                        ; $70b7: $43
	ld   [hl], c                                     ; $70b8: $71
	ld   b, a                                        ; $70b9: $47
	ld   [hl], c                                     ; $70ba: $71
	ld   d, a                                        ; $70bb: $57
	ld   [hl], c                                     ; $70bc: $71
	ld   e, e                                        ; $70bd: $5b
	ld   [hl], c                                     ; $70be: $71
	ld   e, a                                        ; $70bf: $5f
	ld   [hl], c                                     ; $70c0: $71
	ld   l, a                                        ; $70c1: $6f
	ld   [hl], c                                     ; $70c2: $71
	ld   [hl], e                                     ; $70c3: $73
	ld   [hl], c                                     ; $70c4: $71
	ld   [hl], a                                     ; $70c5: $77
	ld   [hl], c                                     ; $70c6: $71
	inc  bc                                          ; $70c7: $03
	inc  bc                                          ; $70c8: $03
	ld   [bc], a                                     ; $70c9: $02
	inc  b                                           ; $70ca: $04
	inc  bc                                          ; $70cb: $03
	inc  bc                                          ; $70cc: $03
	ld   a, [bc]                                     ; $70cd: $0a
	inc  b                                           ; $70ce: $04
	inc  bc                                          ; $70cf: $03
	inc  bc                                          ; $70d0: $03
	ld   bc, $0304                                   ; $70d1: $01 $04 $03
	inc  bc                                          ; $70d4: $03
	inc  b                                           ; $70d5: $04
	ld   [bc], a                                     ; $70d6: $02
	inc  bc                                          ; $70d7: $03
	dec  b                                           ; $70d8: $05
	ld   a, [bc]                                     ; $70d9: $0a
	ld   [bc], a                                     ; $70da: $02
	inc  bc                                          ; $70db: $03
	inc  bc                                          ; $70dc: $03
	inc  b                                           ; $70dd: $04
	ld   bc, $0403                                   ; $70de: $01 $03 $04
	ld   [bc], a                                     ; $70e1: $02
	dec  b                                           ; $70e2: $05
	inc  bc                                          ; $70e3: $03
	inc  b                                           ; $70e4: $04
	ld   a, [bc]                                     ; $70e5: $0a
	dec  b                                           ; $70e6: $05
	inc  bc                                          ; $70e7: $03
	inc  b                                           ; $70e8: $04
	ld   bc, $0305                                   ; $70e9: $01 $05 $03
	inc  bc                                          ; $70ec: $03
	ld   [bc], a                                     ; $70ed: $02
	inc  b                                           ; $70ee: $04
	inc  bc                                          ; $70ef: $03
	inc  bc                                          ; $70f0: $03
	inc  b                                           ; $70f1: $04
	ld   [bc], a                                     ; $70f2: $02
	inc  bc                                          ; $70f3: $03
	inc  bc                                          ; $70f4: $03
	ld   bc, $0304                                   ; $70f5: $01 $04 $03
	inc  b                                           ; $70f8: $04
	ld   [bc], a                                     ; $70f9: $02
	dec  b                                           ; $70fa: $05
	inc  bc                                          ; $70fb: $03
	inc  b                                           ; $70fc: $04
	ld   [bc], a                                     ; $70fd: $02
	inc  bc                                          ; $70fe: $03
	inc  bc                                          ; $70ff: $03
	inc  b                                           ; $7100: $04
	ld   bc, $0305                                   ; $7101: $01 $05 $03
	inc  b                                           ; $7104: $04
	ld   [bc], a                                     ; $7105: $02
	dec  b                                           ; $7106: $05
	inc  bc                                          ; $7107: $03
	inc  b                                           ; $7108: $04
	ld   [bc], a                                     ; $7109: $02
	dec  b                                           ; $710a: $05
	inc  bc                                          ; $710b: $03
	inc  b                                           ; $710c: $04
	ld   bc, $0305                                   ; $710d: $01 $05 $03
	inc  bc                                          ; $7110: $03
	ld   [bc], a                                     ; $7111: $02
	inc  b                                           ; $7112: $04
	inc  bc                                          ; $7113: $03
	inc  bc                                          ; $7114: $03
	inc  b                                           ; $7115: $04
	ld   [bc], a                                     ; $7116: $02
	inc  bc                                          ; $7117: $03
	inc  bc                                          ; $7118: $03
	ld   bc, $0304                                   ; $7119: $01 $04 $03
	inc  b                                           ; $711c: $04
	ld   [bc], a                                     ; $711d: $02
	inc  bc                                          ; $711e: $03
	inc  bc                                          ; $711f: $03
	dec  b                                           ; $7120: $05
	inc  b                                           ; $7121: $04
	ld   [bc], a                                     ; $7122: $02
	inc  bc                                          ; $7123: $03
	inc  b                                           ; $7124: $04
	ld   bc, $0303                                   ; $7125: $01 $03 $03
	inc  b                                           ; $7128: $04
	ld   [bc], a                                     ; $7129: $02
	dec  b                                           ; $712a: $05
	inc  bc                                          ; $712b: $03
	inc  b                                           ; $712c: $04
	ld   [bc], a                                     ; $712d: $02
	dec  b                                           ; $712e: $05
	inc  bc                                          ; $712f: $03
	inc  b                                           ; $7130: $04
	ld   bc, $0105                                   ; $7131: $01 $05 $01
	ld   [bc], a                                     ; $7134: $02
	rst  $38                                         ; $7135: $ff
	rst  $38                                         ; $7136: $ff
	ld   [bc], a                                     ; $7137: $02
	ld   bc, $ff02                                   ; $7138: $01 $02 $ff
	ld   bc, $ff01                                   ; $713b: $01 $01 $ff
	rst  $38                                         ; $713e: $ff
	ld   [bc], a                                     ; $713f: $02
	ld   [bc], a                                     ; $7140: $02
	inc  bc                                          ; $7141: $03
	rst  $38                                         ; $7142: $ff
	ld   [bc], a                                     ; $7143: $02
	ld   bc, $ff03                                   ; $7144: $01 $03 $ff
	ld   [bc], a                                     ; $7147: $02
	ld   bc, $ff03                                   ; $7148: $01 $03 $ff
	ld   bc, $ff02                                   ; $714b: $01 $02 $ff
	rst  $38                                         ; $714e: $ff
	ld   bc, $ff02                                   ; $714f: $01 $02 $ff
	rst  $38                                         ; $7152: $ff
	ld   bc, $ff01                                   ; $7153: $01 $01 $ff
	rst  $38                                         ; $7156: $ff
	ld   [bc], a                                     ; $7157: $02
	ld   [bc], a                                     ; $7158: $02
	inc  bc                                          ; $7159: $03
	rst  $38                                         ; $715a: $ff
	ld   [bc], a                                     ; $715b: $02
	ld   [bc], a                                     ; $715c: $02
	inc  bc                                          ; $715d: $03
	rst  $38                                         ; $715e: $ff
	ld   [bc], a                                     ; $715f: $02
	ld   bc, $ff03                                   ; $7160: $01 $03 $ff
	ld   bc, $ff02                                   ; $7163: $01 $02 $ff
	rst  $38                                         ; $7166: $ff
	ld   bc, $ff02                                   ; $7167: $01 $02 $ff
	rst  $38                                         ; $716a: $ff
	ld   [bc], a                                     ; $716b: $02
	ld   bc, $ff03                                   ; $716c: $01 $03 $ff
	ld   [bc], a                                     ; $716f: $02
	ld   [bc], a                                     ; $7170: $02
	inc  bc                                          ; $7171: $03
	rst  $38                                         ; $7172: $ff
	ld   [bc], a                                     ; $7173: $02
	ld   [bc], a                                     ; $7174: $02
	inc  bc                                          ; $7175: $03
	rst  $38                                         ; $7176: $ff
	ld   [bc], a                                     ; $7177: $02
	ld   bc, $ff03                                   ; $7178: $01 $03 $ff
	inc  sp                                          ; $717b: $33
	inc  [hl]                                        ; $717c: $34
	dec  [hl]                                        ; $717d: $35
	ld   [hl], $37                                   ; $717e: $36 $37
	db $38, $39

	ld   a, [hl-]                                    ; $7182: $3a
	dec  sp                                          ; $7183: $3b
	inc  a                                           ; $7184: $3c
	dec  a                                           ; $7185: $3d
	ld   bc, $0200                                   ; $7186: $01 $00 $02
	nop                                              ; $7189: $00
	ld   bc, $0002                                   ; $718a: $01 $02 $00
	ld   [bc], a                                     ; $718d: $02
	ld   bc, $0201                                   ; $718e: $01 $01 $02
	nop                                              ; $7191: $00
	ld   bc, $0200                                   ; $7192: $01 $00 $02
	ld   [bc], a                                     ; $7195: $02
	nop                                              ; $7196: $00
	ld   bc, $0102                                   ; $7197: $01 $02 $01
	nop                                              ; $719a: $00



	xor  c                                           ; $719b: $a9
	ld   [hl], c                                     ; $719c: $71
	xor  d                                           ; $719d: $aa
	ld   [hl], c                                     ; $719e: $71
	xor  e                                           ; $719f: $ab
	ld   [hl], c                                     ; $71a0: $71
	xor  h                                           ; $71a1: $ac
	ld   [hl], c                                     ; $71a2: $71
	xor  l                                           ; $71a3: $ad
	ld   [hl], c                                     ; $71a4: $71
	xor  [hl]                                        ; $71a5: $ae
	ld   [hl], c                                     ; $71a6: $71
	xor  a                                           ; $71a7: $af
	ld   [hl], c                                     ; $71a8: $71

	
	inc  hl                                          ; $71a9: $23
	inc  a                                           ; $71aa: $3c
	ld   d, b                                        ; $71ab: $50
	ld   h, h                                        ; $71ac: $64
	ld   a, l                                        ; $71ad: $7d
	ld   l, [hl]                                     ; $71ae: $6e
	ld   l, [hl]                                     ; $71af: $6e


if def(VWF)
Table_24_71b0entry00:
	db $1b, $40, $46, $3d, $3b, $3c, $48, $fa, $0d, $23, $01, $01, $41, $10, $35, $48, $10, $48, $3c, $39, $10, $44, $39, $46, $3a, $39, $37, $48, $0d, $38, $3d, $47, $48, $35, $42, $37, $39, $fa, $00
Table_24_71b0entry01:
	db $22, $49, $3c, $f9, $0d, $2e, $3c, $39, $10, $39, $42, $39, $41, $4d, $01, $01, $47, $10, $43, $3a, $3a, $01, $0a, $36, $35, $40, $35, $42, $37, $39, $fa, $0d, $28, $43, $4b, $01, $01, $47, $10, $41, $4d, $10, $37, $3c, $35, $42, $37, $39, $fa, $00
Table_24_71b0entry02:
	db $29, $3c, $e1, $10, $42, $43, $fa, $0d, $23, $48, $01, $01, $47, $10, $3b, $39, $48, $48, $3d, $42, $3b, $10, $35, $4b, $35, $4d, $fa, $00
Table_24_71b0entry03:
	db $23, $48, $01, $01, $47, $10, $37, $40, $43, $47, $3d, $42, $3b, $10, $3d, $42, $10, $43, $42, $10, $41, $39, $fa, $00
Table_24_71b0entry04:
	db $23, $10, $37, $35, $42, $01, $01, $48, $10, $47, $3c, $35, $3f, $39, $10, $3d, $48, $fa, $00
Table_24_71b0entry05:
	db $1e, $35, $41, $42, $fa, $0d, $23, $10, $37, $35, $42, $01, $01, $48, $10, $37, $35, $48, $37, $3c, $10, $49, $44, $fa, $00
Table_24_71b0entry06:
	db $1e, $35, $41, $42, $fa, $0d, $23, $10, $4b, $43, $42, $01, $01, $48, $10, $40, $43, $47, $39, $fa, $00
Table_24_71b0entry07:
	db $2d, $43, $10, $3a, $35, $46, $e1, $10, $4b, $39, $01, $01, $46, $39, $10, $39, $4a, $39, $42, $40, $4d, $0d, $41, $35, $48, $37, $3c, $39, $38, $f2, $f2, $f2, $00
Table_24_71b0entry08:
	db $23, $10, $37, $35, $42, $10, $4b, $3d, $42, $10, $48, $3c, $3d, $47, $fa, $00
Table_24_71b0entry09:
	db $33, $39, $47, $fa, $00
Table_24_71b0entry0a:
	db $23, $10, $4b, $43, $42, $01, $01, $48, $10, $40, $43, $47, $39, $fa, $fa, $00
Table_24_71b0entry0b:
	db $23, $01, $01, $41, $10, $3a, $3d, $46, $39, $38, $10, $49, $44, $fa, $fa, $00
Table_24_71b0entry0c:
	db $2f, $3b, $3c, $fa, $00
Table_24_71b0entry0d:
	db $1d, $46, $35, $44, $fa, $00
Table_24_71b0entry0e:
	db $1b, $40, $46, $3d, $3b, $3c, $48, $fa, $0d, $23, $10, $38, $43, $38, $3b, $39, $38, $10, $3d, $48, $fa, $00
Table_24_71b0entry0f:
	db $31, $3c, $43, $35, $fa, $fa, $0d, $2e, $3c, $35, $48, $10, $3c, $3d, $48, $10, $41, $39, $f9, $fa, $00
Table_24_71b0entry10:
	db $28, $35, $3d, $40, $39, $38, $10, $3d, $48, $fa, $00
Table_24_71b0entry11:
	db $22, $43, $4b, $10, $38, $43, $10, $4d, $43, $49, $10, $40, $3d, $3f, $39, $10, $48, $3c, $3d, $47, $f9, $fa, $00
Table_24_71b0entry12:
	db $23, $48, $01, $01, $47, $10, $37, $40, $43, $47, $3d, $42, $3b, $10, $3d, $42, $10, $43, $42, $10, $41, $39, $fa, $00
Table_24_71b0entry13:
	db $2e, $3c, $39, $10, $39, $42, $39, $41, $4d, $01, $01, $47, $10, $36, $35, $37, $3f, $3d, $42, $3b, $10, $43, $3a, $3a, $f2, $00
Table_24_71b0entry14:
	db $2f, $3b, $3c, $fa, $0d, $23, $48, $10, $36, $40, $43, $37, $3f, $39, $38, $10, $41, $4d, $10, $35, $48, $48, $35, $37, $3f, $fa, $00
Table_24_71b0entry15:
	db $2e, $35, $3f, $39, $10, $48, $3c, $35, $48, $fa, $00
Table_24_71b0entry16:
	db $28, $43, $48, $10, $3b, $43, $43, $38, $fa, $00
Table_24_71b0entry17:
	db $1e, $35, $41, $42, $fa, $00
Table_24_71b0entry18:
	db $22, $39, $46, $39, $10, $3d, $48, $10, $37, $43, $41, $39, $47, $fa, $00
Table_24_71b0entry19:
	db $23, $48, $01, $01, $47, $10, $46, $39, $39, $40, $3d, $42, $3b, $fa, $0d, $28, $43, $4b, $01, $01, $47, $10, $41, $4d, $10, $37, $3c, $35, $42, $37, $39, $fa, $00
Table_24_71b0entry1a:
	db $1b, $40, $46, $3d, $3b, $3c, $48, $e1, $10, $23, $10, $46, $39, $37, $43, $4a, $39, $46, $39, $38, $10, $47, $43, $41, $39, $0d, $3c, $39, $35, $40, $48, $3c, $fa, $00
Table_24_71b0entry1b:
	db $2e, $3c, $39, $10, $39, $42, $39, $41, $4d, $01, $01, $47, $10, $35, $47, $47, $39, $47, $47, $3d, $42, $3b, $0d, $48, $3c, $39, $10, $47, $3d, $48, $49, $35, $48, $3d, $43, $42, $f2, $00
Table_24_71b0entry1c:
	db $23, $48, $10, $38, $3d, $38, $42, $01, $01, $48, $10, $38, $43, $10, $35, $42, $4d, $48, $3c, $3d, $42, $3b, $f2, $00
Table_24_71b0entry1d:
	db $29, $3c, $10, $42, $43, $fa, $0d, $23, $48, $10, $38, $43, $38, $3b, $39, $38, $fa, $00
Table_24_71b0entry1e:
	db $1b, $40, $46, $3d, $3b, $3c, $48, $fa, $0d, $23, $10, $37, $49, $48, $10, $43, $3a, $3a, $10, $48, $3c, $39, $10, $39, $42, $39, $41, $4d, $01, $01, $47, $0d, $41, $43, $4a, $39, $41, $39, $42, $48, $fa, $00
Table_24_71b0entry1f:
	db $2e, $35, $3f, $39, $10, $48, $3c, $35, $48, $fa, $00
Table_24_71b0entry20:
	db $2e, $3c, $39, $10, $39, $42, $39, $41, $4d, $01, $01, $47, $10, $43, $42, $10, $38, $39, $3a, $39, $42, $47, $39, $f2, $00
Table_24_71b0entry21:
	db $2f, $3b, $3c, $fa, $00
Table_24_71b0entry22:
	db $33, $35, $35, $3c, $3c, $3c, $fa, $00
Table_24_71b0entry23:
	db $1b, $40, $46, $3d, $3b, $3c, $48, $fa, $0d, $23, $01, $01, $41, $10, $46, $3d, $3b, $3c, $48, $10, $49, $44, $10, $3d, $42, $10, $3d, $48, $47, $10, $3a, $35, $37, $39, $fa, $00
Table_24_71b0entry24:
	db $20, $40, $43, $46, $35, $40, $10, $1e, $3d, $4a, $3d, $42, $3d, $48, $4d, $fa, $00
Table_24_71b0entry25:
	db $1c, $49, $48, $48, $39, $46, $3a, $40, $4d, $10, $31, $35, $40, $48, $4e, $fa, $00
Table_24_71b0entry26:
	db $2d, $42, $39, $3b, $49, $46, $43, $37, $3c, $3f, $35, $fa, $00

	ds $7657-@, $00
else
Table_24_71b0:
	dw $009c
	dw $00ae
	dw $00c5
	dw $00d3
	dw $00dd
	dw $00e7
	dw $00f4
	dw $0101
	dw $0113
	dw $011e
	dw $0123
	dw $012f
	dw $013b
	dw $013f
	dw $0146
	dw $0150
	dw $015f
	dw $0166
	dw $016f
	dw $0181
	dw $018b
	dw $0197
	dw $01a1
	dw $01a6
	dw $01ab
	dw $01af
	dw $01c0
	dw $01d1
	dw $01e7
	dw $01f0
	dw $01fe
	dw $0218
	dw $021e
	dw $022d
	dw $0231
	dw $023c
	dw $024f
	dw $0262
	dw $0276
	dw $027f
	dw $028b
	dw $0295
	dw $029f
	dw $02c7
	dw $02df
	dw $02f7
	dw $030f
	dw $0324
	dw $033d
	dw $0355
	dw $0361
	dw $036a
	dw $0370
	dw $0376
	dw $037c
	dw $0384
	dw $038a
	dw $038f
	dw $0395
	dw $039c
	dw $03a6
	dw $03ae
	dw $03b6
	dw $03c7
	dw $03d5
	dw $03ea
	dw $03f6
	dw $03ff
	dw $040d
	dw $0414
	dw $0421
	dw $0438
	dw $0442
	dw $0457
	dw $046b
	dw $0479
	dw $0481
	dw $0493


	sub  [hl]                                        ; $724c: $96
	ld   h, l                                        ; $724d: $65
	ld   a, [$020d]                                  ; $724e: $fa $0d $02
	xor  c                                           ; $7251: $a9
	ld   [bc], a                                     ; $7252: $02
	ld   a, e                                        ; $7253: $7b
	ld   d, d                                        ; $7254: $52
	ld   a, l                                        ; $7255: $7d
	pop  de                                          ; $7256: $d1
	call nz, $ecc2                                   ; $7257: $c4 $c2 $ec
	ld   l, [hl]                                     ; $725a: $6e
	ld   a, [$00fa]                                  ; $725b: $fa $fa $00
	and  c                                           ; $725e: $a1
	ld   sp, hl                                      ; $725f: $f9
	dec  c                                           ; $7260: $0d
	pop  de                                          ; $7261: $d1
	db   $eb                                         ; $7262: $eb
	push af                                          ; $7263: $f5
	cp   d                                           ; $7264: $ba
	and  b                                           ; $7265: $a0
	inc  b                                           ; $7266: $04
	cp   c                                           ; $7267: $b9
	ld   h, l                                        ; $7268: $65
	ld   [hl], h                                     ; $7269: $74
	sbc  c                                           ; $726a: $99
	ld   l, h                                        ; $726b: $6c
	ld   a, [$0dfa]                                  ; $726c: $fa $fa $0d
	ld   d, d                                        ; $726f: $52
	adc  h                                           ; $7270: $8c
	ld   l, [hl]                                     ; $7271: $6e
	ld   a, [$00fa]                                  ; $7272: $fa $fa $00
	ld   h, l                                        ; $7275: $65
	adc  h                                           ; $7276: $8c
	ld   [hl], c                                     ; $7277: $71
	ld   l, l                                        ; $7278: $6d
	ld   a, [$030d]                                  ; $7279: $fa $0d $03
	push de                                          ; $727c: $d5
	ld   h, b                                        ; $727d: $60
	sub  a                                           ; $727e: $97
	sbc  d                                           ; $727f: $9a
	ld   l, l                                        ; $7280: $6d
	ld   a, [$0200]                                  ; $7281: $fa $00 $02
	xor  c                                           ; $7284: $a9
	and  b                                           ; $7285: $a0
	ld   [hl], d                                     ; $7286: $72
	adc  a                                           ; $7287: $8f
	sub  a                                           ; $7288: $97
	sbc  d                                           ; $7289: $9a
	ld   l, l                                        ; $728a: $6d
	ld   a, [$0300]                                  ; $728b: $fa $00 $03
	or   a                                           ; $728e: $b7
	sbc  b                                           ; $728f: $98
	inc  bc                                          ; $7290: $03
	dec  de                                          ; $7291: $1b
	sbc  d                                           ; $7292: $9a
	ld   a, b                                        ; $7293: $78
	ld   d, d                                        ; $7294: $52
	ld   a, [$5d00]                                  ; $7295: $fa $00 $5d
	ld   l, e                                        ; $7298: $6b
	ld   a, [$060d]                                  ; $7299: $fa $0d $06
	ld   h, c                                        ; $729c: $61
	ld   d, d                                        ; $729d: $52
	ld   [hl], d                                     ; $729e: $72
	ld   e, a                                        ; $729f: $5f
	ld   a, b                                        ; $72a0: $78
	ld   d, d                                        ; $72a1: $52
	ld   a, [$5d00]                                  ; $72a2: $fa $00 $5d
	ld   l, e                                        ; $72a5: $6b
	ld   a, [$040d]                                  ; $72a6: $fa $0d $04
	ld   a, l                                        ; $72a9: $7d
	ld   e, a                                        ; $72aa: $5f
	sbc  c                                           ; $72ab: $99
	sub  b                                           ; $72ac: $90
	ld   a, h                                        ; $72ad: $7c
	ld   e, c                                        ; $72ae: $59
	ld   a, [$0200]                                  ; $72af: $fa $00 $02
	and  l                                           ; $72b2: $a5
	ld   a, h                                        ; $72b3: $7c
	halt                                             ; $72b4: $76
	ld   h, c                                        ; $72b5: $61
	sbc  e                                           ; $72b6: $9b
	ld   [bc], a                                     ; $72b7: $02
	call nc, $7d63                           ; $72b8: $d4 $63 $7d
	ld   [bc], a                                     ; $72bb: $02
	ret                                              ; $72bc: $c9


	dec  b                                           ; $72bd: $05
	sbc  a                                           ; $72be: $9f
	ld   e, c                                        ; $72bf: $59
	rst  $38                                         ; $72c0: $ff
	rst  $38                                         ; $72c1: $ff
	nop                                              ; $72c2: $00
	ld   h, c                                        ; $72c3: $61
	sbc  d                                           ; $72c4: $9a
	ld   a, b                                        ; $72c5: $78
	sub  a                                           ; $72c6: $97
	inc  bc                                          ; $72c7: $03
	ld   c, [hl]                                     ; $72c8: $4e
	ld   [hl], h                                     ; $72c9: $74
	sbc  c                                           ; $72ca: $99
	ld   a, [$00fa]                                  ; $72cb: $fa $fa $00
	sub  d                                           ; $72ce: $92
	ld   [hl], c                                     ; $72cf: $71
	ld   l, l                                        ; $72d0: $6d
	ld   a, [$0400]                                  ; $72d1: $fa $00 $04
	ld   a, l                                        ; $72d4: $7d
	ld   e, a                                        ; $72d5: $5f
	sbc  c                                           ; $72d6: $99
	ld   e, c                                        ; $72d7: $59
	db   $fc                                         ; $72d8: $fc
	db   $fc                                         ; $72d9: $fc
	db   $fc                                         ; $72da: $fc
	ld   a, [$fafa]                                  ; $72db: $fa $fa $fa
	nop                                              ; $72de: $00
	ld   [bc], a                                     ; $72df: $02
	and  c                                           ; $72e0: $a1
	ld   [bc], a                                     ; $72e1: $02
	ld   a, e                                        ; $72e2: $7b
	ld   l, [hl]                                     ; $72e3: $6e
	db   $fc                                         ; $72e4: $fc
	db   $fc                                         ; $72e5: $fc
	db   $fc                                         ; $72e6: $fc
	ld   a, [$fafa]                                  ; $72e7: $fa $fa $fa
	nop                                              ; $72ea: $00
	ld   d, h                                        ; $72eb: $54
	ld   [hl], c                                     ; $72ec: $71
	ld   a, [$6500]                                  ; $72ed: $fa $00 $65
	adc  h                                           ; $72f0: $8c
	ld   [hl], c                                     ; $72f1: $71
	ld   l, l                                        ; $72f2: $6d
	ld   a, [$00fa]                                  ; $72f3: $fa $fa $00
	sub  [hl]                                        ; $72f6: $96
	ld   h, l                                        ; $72f7: $65
	ld   a, [$590d]                                  ; $72f8: $fa $0d $59
	sbc  l                                           ; $72fb: $9d
	ld   h, l                                        ; $72fc: $65
	ld   l, l                                        ; $72fd: $6d
	ld   l, h                                        ; $72fe: $6c
	nop                                              ; $72ff: $00
	ld   d, h                                        ; $7300: $54
	sbc  l                                           ; $7301: $9d
	ld   c, a                                        ; $7302: $4f
	ld   a, [$0dfa]                                  ; $7303: $fa $fa $0d
	inc  b                                           ; $7306: $04
	jr   jr_024_7376                                 ; $7307: $18 $6d

	ld   [hl], c                                     ; $7309: $71
	ld   l, l                                        ; $730a: $6d
	ld   e, c                                        ; $730b: $59
	ld   a, [$00f9]                                  ; $730c: $fa $f9 $00
	inc  b                                           ; $730f: $04
	jr   jr_024_737f                                 ; $7310: $18 $6d

	ld   [hl], c                                     ; $7312: $71
	ld   l, l                                        ; $7313: $6d
	ld   a, [$6100]                                  ; $7314: $fa $00 $61
	sbc  d                                           ; $7317: $9a
	ld   [hl], l                                     ; $7318: $75
	ld   [hl], a                                     ; $7319: $77
	ld   d, h                                        ; $731a: $54
	ld   l, [hl]                                     ; $731b: $6e
	ld   a, [$00fa]                                  ; $731c: $fa $fa $00
	ld   [bc], a                                     ; $731f: $02
	ld   a, [de]                                     ; $7320: $1a
	inc  bc                                          ; $7321: $03
	ld   l, e                                        ; $7322: $6b
	ld   e, d                                        ; $7323: $5a
	ld   [bc], a                                     ; $7324: $02
	xor  c                                           ; $7325: $a9
	ld   [bc], a                                     ; $7326: $02
	ld   a, e                                        ; $7327: $7b
	ld   d, d                                        ; $7328: $52
	and  b                                           ; $7329: $a0
	ld   [hl], d                                     ; $732a: $72
	adc  a                                           ; $732b: $8f
	ld   [hl], h                                     ; $732c: $74
	ld   e, e                                        ; $732d: $5b
	ld   l, l                                        ; $732e: $6d
	ld   a, [$0300]                                  ; $732f: $fa $00 $03
	db   $dd                                         ; $7332: $dd
	ld   e, d                                        ; $7333: $5a
	ld   b, $90                                      ; $7334: $06 $90
	sbc  d                                           ; $7336: $9a
	ld   [hl], h                                     ; $7337: $74
	ld   d, d                                        ; $7338: $52
	ld   e, l                                        ; $7339: $5d
	nop                                              ; $733a: $00
	ld   e, l                                        ; $733b: $5d
	ld   [hl], c                                     ; $733c: $71
	ld   a, [$060d]                                  ; $733d: $fa $0d $06
	dec  bc                                          ; $7340: $0b
	ld   e, d                                        ; $7341: $5a
	sbc  d                                           ; $7342: $9a
	ld   l, l                                        ; $7343: $6d
	ld   e, c                                        ; $7344: $59
	ld   a, [$6100]                                  ; $7345: $fa $00 $61
	sbc  d                                           ; $7348: $9a
	ld   [hl], l                                     ; $7349: $75
	sub  b                                           ; $734a: $90
	ld   e, l                                        ; $734b: $5d
	sub  a                                           ; $734c: $97
	ld   d, [hl]                                     ; $734d: $56
	ld   a, [$00fa]                                  ; $734e: $fa $fa $00
	adc  h                                           ; $7351: $8c
	ld   l, b                                        ; $7352: $68
	ld   d, d                                        ; $7353: $52
	ld   a, [$5d00]                                  ; $7354: $fa $00 $5d
	ld   l, e                                        ; $7357: $6b
	ld   [hl], c                                     ; $7358: $71
	ld   a, [$5d00]                                  ; $7359: $fa $00 $5d
	sbc  c                                           ; $735c: $99
	ld   a, [$9600]                                  ; $735d: $fa $00 $96
	sbc  e                                           ; $7360: $9b
	adc  a                                           ; $7361: $8f
	ld   d, d                                        ; $7362: $52
	ld   [hl], h                                     ; $7363: $74
	ld   d, d                                        ; $7364: $52
	sbc  c                                           ; $7365: $99
	ld   l, h                                        ; $7366: $6c
	dec  c                                           ; $7367: $0d
	jp   nz, $f5e5                                   ; $7368: $c2 $e5 $f5

	cp   d                                           ; $736b: $ba
	ld   l, [hl]                                     ; $736c: $6e
	ld   a, [$00fa]                                  ; $736d: $fa $fa $00
	sub  [hl]                                        ; $7370: $96
	ld   h, l                                        ; $7371: $65
	ld   a, [$c10d]                                  ; $7372: $fa $0d $c1
	db   $e3                                         ; $7375: $e3

jr_024_7376:
	ei                                               ; $7376: $fb
	cp   c                                           ; $7377: $b9
	ld   e, d                                        ; $7378: $5a
	ld   [bc], a                                     ; $7379: $02
	sub  e                                           ; $737a: $93
	inc  b                                           ; $737b: $04
	ld   a, h                                        ; $737c: $7c
	ld   h, l                                        ; $737d: $65
	ld   l, l                                        ; $737e: $6d

jr_024_737f:
	ld   l, h                                        ; $737f: $6c
	nop                                              ; $7380: $00
	ld   [bc], a                                     ; $7381: $02
	ld   a, [de]                                     ; $7382: $1a
	inc  bc                                          ; $7383: $03
	ld   l, e                                        ; $7384: $6b
	ld   a, l                                        ; $7385: $7d
	inc  bc                                          ; $7386: $03
	sbc  b                                           ; $7387: $98
	inc  bc                                          ; $7388: $03
	add  [hl]                                        ; $7389: $86
	and  b                                           ; $738a: $a0
	dec  c                                           ; $738b: $0d
	ld   d, h                                        ; $738c: $54
	ld   e, c                                        ; $738d: $59
	ld   e, d                                        ; $738e: $5a
	ld   [hl], c                                     ; $738f: $71
	ld   [hl], h                                     ; $7390: $74
	ld   d, d                                        ; $7391: $52
	sbc  c                                           ; $7392: $99
	sub  [hl]                                        ; $7393: $96
	ld   d, h                                        ; $7394: $54
	ld   l, [hl]                                     ; $7395: $6e
	nop                                              ; $7396: $00
	inc  b                                           ; $7397: $04
	ld   c, c                                        ; $7398: $49
	sub  b                                           ; $7399: $90
	ld   h, l                                        ; $739a: $65
	ld   a, b                                        ; $739b: $78
	ld   e, c                                        ; $739c: $59
	ld   [hl], c                                     ; $739d: $71
	ld   l, l                                        ; $739e: $6d
	nop                                              ; $739f: $00
	ld   h, l                                        ; $73a0: $65
	adc  h                                           ; $73a1: $8c
	ld   [hl], c                                     ; $73a2: $71
	ld   l, l                                        ; $73a3: $6d
	ld   a, [$0dfa]                                  ; $73a4: $fa $fa $0d
	ld   e, c                                        ; $73a7: $59
	sbc  l                                           ; $73a8: $9d
	ld   h, e                                        ; $73a9: $63
	sbc  d                                           ; $73aa: $9a
	ld   l, l                                        ; $73ab: $6d
	ld   a, [$9600]                                  ; $73ac: $fa $00 $96
	ld   h, l                                        ; $73af: $65
	ld   a, [$020d]                                  ; $73b0: $fa $0d $02
	ld   a, [de]                                     ; $73b3: $1a
	inc  bc                                          ; $73b4: $03
	ld   l, e                                        ; $73b5: $6b
	ld   a, h                                        ; $73b6: $7c
	dec  b                                           ; $73b7: $05
	ld   l, d                                        ; $73b8: $6a
	inc  b                                           ; $73b9: $04
	dec  de                                          ; $73ba: $1b
	and  b                                           ; $73bb: $a0
	dec  c                                           ; $73bc: $0d
	ld   b, $0b                                      ; $73bd: $06 $0b
	ld   e, [hl]                                     ; $73bf: $5e
	ld   h, c                                        ; $73c0: $61
	halt                                             ; $73c1: $76
	ld   e, d                                        ; $73c2: $5a
	ld   [hl], l                                     ; $73c3: $75
	ld   e, e                                        ; $73c4: $5b
	ld   l, l                                        ; $73c5: $6d
	ld   l, h                                        ; $73c6: $6c
	nop                                              ; $73c7: $00
	ld   e, l                                        ; $73c8: $5d
	sub  a                                           ; $73c9: $97
	ld   d, [hl]                                     ; $73ca: $56
	ld   a, [$00fa]                                  ; $73cb: $fa $fa $00
	ld   [bc], a                                     ; $73ce: $02
	ld   a, [de]                                     ; $73cf: $1a
	inc  bc                                          ; $73d0: $03
	ld   l, e                                        ; $73d1: $6b
	ld   a, l                                        ; $73d2: $7d
	inc  b                                           ; $73d3: $04
	pop  de                                          ; $73d4: $d1
	and  b                                           ; $73d5: $a0
	inc  bc                                          ; $73d6: $03
	sub  e                                           ; $73d7: $93
	ld   [hl], c                                     ; $73d8: $71
	ld   [hl], h                                     ; $73d9: $74
	ld   d, d                                        ; $73da: $52
	sbc  c                                           ; $73db: $99
	nop                                              ; $73dc: $00
	ld   e, l                                        ; $73dd: $5d
	ld   [hl], c                                     ; $73de: $71
	ld   a, [$5400]                                  ; $73df: $fa $00 $54
	sbc  b                                           ; $73e2: $98
	sub  c                                           ; $73e3: $91
	db   $fc                                         ; $73e4: $fc
	db   $fc                                         ; $73e5: $fc
	db   $fc                                         ; $73e6: $fc
	db   $fc                                         ; $73e7: $fc
	ld   a, [$fafa]                                  ; $73e8: $fa $fa $fa
	nop                                              ; $73eb: $00
	sub  [hl]                                        ; $73ec: $96
	ld   h, l                                        ; $73ed: $65
	ld   a, [$0dfa]                                  ; $73ee: $fa $fa $0d
	add  e                                           ; $73f1: $83
	halt                                             ; $73f2: $76
	ld   h, c                                        ; $73f3: $61
	sbc  e                                           ; $73f4: $9b
	ld   a, c                                        ; $73f5: $79
	sub  b                                           ; $73f6: $90
	ld   e, [hl]                                     ; $73f7: $5e
	sbc  b                                           ; $73f8: $98
	ld   h, c                                        ; $73f9: $61
	adc  a                                           ; $73fa: $8f
	ld   l, l                                        ; $73fb: $6d
	ld   a, [$00fa]                                  ; $73fc: $fa $fa $00
	inc  b                                           ; $73ff: $04
	sub  [hl]                                        ; $7400: $96
	inc  bc                                          ; $7401: $03
	ld   h, c                                        ; $7402: $61
	ld   [bc], a                                     ; $7403: $02
	cp   h                                           ; $7404: $bc
	dec  b                                           ; $7405: $05
	db   $db                                         ; $7406: $db
	di                                               ; $7407: $f3
	inc  bc                                          ; $7408: $03
	adc  a                                           ; $7409: $8f
	ld   [bc], a                                     ; $740a: $02
	sbc  b                                           ; $740b: $98
	inc  b                                           ; $740c: $04
	sbc  c                                           ; $740d: $99
	inc  bc                                          ; $740e: $03
	sub  b                                           ; $740f: $90
	ld   a, [$0300]                                  ; $7410: $fa $00 $03
	sub  b                                           ; $7413: $90
	inc  bc                                          ; $7414: $03
	cp   e                                           ; $7415: $bb
	inc  b                                           ; $7416: $04
	ld   [hl], a                                     ; $7417: $77
	inc  bc                                          ; $7418: $03
	or   l                                           ; $7419: $b5
	dec  b                                           ; $741a: $05
	inc  d                                           ; $741b: $14
	di                                               ; $741c: $f3
	ld   [bc], a                                     ; $741d: $02
	ret  c                                           ; $741e: $d8

	inc  b                                           ; $741f: $04
	ld   sp, $047c                                   ; $7420: $31 $7c $04
	adc  [hl]                                        ; $7423: $8e
	ld   a, [$ba00]                                  ; $7424: $fa $00 $ba
	adc  $b1                                         ; $7427: $ce $b1
	ei                                               ; $7429: $fb
	db   $eb                                         ; $742a: $eb
	jp   nz, $faac                                   ; $742b: $c2 $ac $fa

	nop                                              ; $742e: $00
	and  l                                           ; $742f: $a5
	db   $ec                                         ; $7430: $ec
	cp   d                                           ; $7431: $ba
	di                                               ; $7432: $f3
	rst  JumpTable                                         ; $7433: $df
	db   $ec                                         ; $7434: $ec
	ld   [$c4ce], a                                  ; $7435: $ea $ce $c4
	ret                                              ; $7438: $c9


	ld   a, [wIsGBC]                                  ; $7439: $fa $00 $c2
	call nc, $ddef                                   ; $743c: $d4 $ef $dd
	ld   [bc], a                                     ; $743f: $02
	ld   c, b                                        ; $7440: $48
	ld   [bc], a                                     ; $7441: $02
	sub  c                                           ; $7442: $91
	ld   a, [$0200]                                  ; $7443: $fa $00 $02
	jr   nz, jr_024_744c                             ; $7446: $20 $04

	add  h                                           ; $7448: $84
	dec  b                                           ; $7449: $05
	dec  de                                          ; $744a: $1b
	inc  b                                           ; $744b: $04

jr_024_744c:
	ld   [hl], b                                     ; $744c: $70
	ld   a, [$5d00]                                  ; $744d: $fa $00 $5d
	ld   l, e                                        ; $7450: $6b
	rst  $38                                         ; $7451: $ff
	rst  $38                                         ; $7452: $ff
	ld   a, b                                        ; $7453: $78
	and  c                                           ; $7454: $a1
	ld   [hl], h                                     ; $7455: $74
	ld   [bc], a                                     ; $7456: $02
	call nc, $a152                                   ; $7457: $d4 $52 $a1
	ld   l, [hl]                                     ; $745a: $6e
	rst  $38                                         ; $745b: $ff
	rst  $38                                         ; $745c: $ff
	dec  c                                           ; $745d: $0d
	ld   h, c                                        ; $745e: $61
	ld   d, h                                        ; $745f: $54
	ld   a, b                                        ; $7460: $78
	ld   [hl], c                                     ; $7461: $71
	ld   l, l                                        ; $7462: $6d
	sub  a                                           ; $7463: $97
	ld   d, d                                        ; $7464: $52
	ld   l, a                                        ; $7465: $6f
	ld   e, c                                        ; $7466: $59
	ld   a, [hl]                                     ; $7467: $7e
	ld   l, a                                        ; $7468: $6f
	ld   e, c                                        ; $7469: $59
	dec  c                                           ; $746a: $0d
	ld   d, b                                        ; $746b: $50
	sbc  d                                           ; $746c: $9a
	and  b                                           ; $746d: $a0
	sub  d                                           ; $746e: $92
	sbc  c                                           ; $746f: $99
	ld   h, l                                        ; $7470: $65
	ld   e, c                                        ; $7471: $59
	ld   a, b                                        ; $7472: $78
	ld   d, d                                        ; $7473: $52
	ld   a, [$00fa]                                  ; $7474: $fa $fa $00
	ld   h, e                                        ; $7477: $63
	ld   e, l                                        ; $7478: $5d
	sub  a                                           ; $7479: $97
	ld   h, e                                        ; $747a: $63
	and  c                                           ; $747b: $a1
	dec  c                                           ; $747c: $0d
	adc  l                                           ; $747d: $8d
	ld   [hl], h                                     ; $747e: $74
	ld   d, d                                        ; $747f: $52
	ld   [hl], h                                     ; $7480: $74
	ld   e, l                                        ; $7481: $5d
	ld   l, [hl]                                     ; $7482: $6e
	ld   h, e                                        ; $7483: $63
	ld   d, d                                        ; $7484: $52
	rst  $38                                         ; $7485: $ff
	rst  $38                                         ; $7486: $ff
	dec  c                                           ; $7487: $0d
	ld   d, d                                        ; $7488: $52
	ld   e, l                                        ; $7489: $5d
	ld   l, h                                        ; $748a: $6c
	ld   a, [$fafa]                                  ; $748b: $fa $fa $fa
	nop                                              ; $748e: $00
	ld   h, a                                        ; $748f: $67
	adc  l                                           ; $7490: $8d
	sbc  d                                           ; $7491: $9a
	ld   h, e                                        ; $7492: $63
	and  c                                           ; $7493: $a1
	dec  c                                           ; $7494: $0d
	adc  l                                           ; $7495: $8d
	ld   [hl], h                                     ; $7496: $74
	ld   d, d                                        ; $7497: $52
	ld   [hl], h                                     ; $7498: $74
	ld   e, l                                        ; $7499: $5d
	ld   l, [hl]                                     ; $749a: $6e
	ld   h, e                                        ; $749b: $63
	ld   d, d                                        ; $749c: $52
	rst  $38                                         ; $749d: $ff
	rst  $38                                         ; $749e: $ff
	dec  c                                           ; $749f: $0d
	ld   d, d                                        ; $74a0: $52
	ld   e, l                                        ; $74a1: $5d
	ld   l, h                                        ; $74a2: $6c
	ld   a, [$fafa]                                  ; $74a3: $fa $fa $fa
	nop                                              ; $74a6: $00
	rst  JumpTable                                         ; $74a7: $df
	db   $ec                                         ; $74a8: $ec
	and  e                                           ; $74a9: $a3
	ld   h, e                                        ; $74aa: $63
	and  c                                           ; $74ab: $a1
	dec  c                                           ; $74ac: $0d
	adc  l                                           ; $74ad: $8d
	ld   [hl], h                                     ; $74ae: $74
	ld   d, d                                        ; $74af: $52
	ld   [hl], h                                     ; $74b0: $74
	ld   e, l                                        ; $74b1: $5d
	ld   l, [hl]                                     ; $74b2: $6e
	ld   h, e                                        ; $74b3: $63
	ld   d, d                                        ; $74b4: $52
	rst  $38                                         ; $74b5: $ff
	rst  $38                                         ; $74b6: $ff
	dec  c                                           ; $74b7: $0d
	ld   d, d                                        ; $74b8: $52
	ld   e, l                                        ; $74b9: $5d
	ld   l, h                                        ; $74ba: $6c
	ld   a, [$fafa]                                  ; $74bb: $fa $fa $fa
	nop                                              ; $74be: $00
	and  e                                           ; $74bf: $a3
	and  l                                           ; $74c0: $a5
	db   $ec                                         ; $74c1: $ec
	cp   d                                           ; $74c2: $ba
	dec  c                                           ; $74c3: $0d
	adc  l                                           ; $74c4: $8d
	ld   [hl], h                                     ; $74c5: $74
	ld   d, d                                        ; $74c6: $52
	ld   [hl], h                                     ; $74c7: $74
	ld   e, l                                        ; $74c8: $5d
	sbc  d                                           ; $74c9: $9a
	rst  $38                                         ; $74ca: $ff
	rst  $38                                         ; $74cb: $ff
	dec  c                                           ; $74cc: $0d
	ld   d, d                                        ; $74cd: $52
	ld   e, l                                        ; $74ce: $5d
	ld   l, h                                        ; $74cf: $6c
	ld   a, [$fafa]                                  ; $74d0: $fa $fa $fa
	nop                                              ; $74d3: $00
	ld   [bc], a                                     ; $74d4: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74d5: $cf
	dec  b                                           ; $74d6: $05
	ld   a, [de]                                     ; $74d7: $1a
	ld   h, e                                        ; $74d8: $63
	and  c                                           ; $74d9: $a1
	dec  c                                           ; $74da: $0d
	adc  l                                           ; $74db: $8d
	ld   [hl], h                                     ; $74dc: $74
	ld   d, d                                        ; $74dd: $52
	ld   [hl], h                                     ; $74de: $74
	ld   e, l                                        ; $74df: $5d
	ld   l, [hl]                                     ; $74e0: $6e
	ld   h, e                                        ; $74e1: $63
	ld   d, d                                        ; $74e2: $52
	rst  $38                                         ; $74e3: $ff
	rst  $38                                         ; $74e4: $ff
	dec  c                                           ; $74e5: $0d
	ld   d, d                                        ; $74e6: $52
	ld   e, l                                        ; $74e7: $5d
	ld   l, h                                        ; $74e8: $6c
	ld   a, [$fafa]                                  ; $74e9: $fa $fa $fa
	nop                                              ; $74ec: $00
	xor  h                                           ; $74ed: $ac
	push af                                          ; $74ee: $f5
	bit  4, e                                        ; $74ef: $cb $63
	and  c                                           ; $74f1: $a1
	dec  c                                           ; $74f2: $0d
	adc  l                                           ; $74f3: $8d
	ld   [hl], h                                     ; $74f4: $74
	ld   d, d                                        ; $74f5: $52
	ld   [hl], h                                     ; $74f6: $74
	ld   e, l                                        ; $74f7: $5d
	ld   l, [hl]                                     ; $74f8: $6e
	ld   h, e                                        ; $74f9: $63
	ld   d, d                                        ; $74fa: $52
	rst  $38                                         ; $74fb: $ff
	rst  $38                                         ; $74fc: $ff
	dec  c                                           ; $74fd: $0d
	ld   d, d                                        ; $74fe: $52
	ld   e, l                                        ; $74ff: $5d
	ld   l, h                                        ; $7500: $6c
	ld   a, [$fafa]                                  ; $7501: $fa $fa $fa
	nop                                              ; $7504: $00
	sub  d                                           ; $7505: $92
	ld   [hl], c                                     ; $7506: $71
	ld   l, l                                        ; $7507: $6d
	ld   a, [$6d0d]                                  ; $7508: $fa $0d $6d
	ld   e, b                                        ; $750b: $58
	ld   h, l                                        ; $750c: $65
	ld   l, l                                        ; $750d: $6d
	ld   l, h                                        ; $750e: $6c
	ld   a, [$5400]                                  ; $750f: $fa $00 $54
	sbc  l                                           ; $7512: $9d
	ld   c, a                                        ; $7513: $4f
	db   $fc                                         ; $7514: $fc
	db   $fc                                         ; $7515: $fc
	db   $fc                                         ; $7516: $fc
	db   $fc                                         ; $7517: $fc
	db   $fc                                         ; $7518: $fc
	nop                                              ; $7519: $00
	ld   [bc], a                                     ; $751a: $02
	ld   c, b                                        ; $751b: $48
	ld   [bc], a                                     ; $751c: $02
	sub  c                                           ; $751d: $91
	dec  c                                           ; $751e: $0d
	nop                                              ; $751f: $00
	ld   [bc], a                                     ; $7520: $02
	and  b                                           ; $7521: $a0
	ld   [hl], e                                     ; $7522: $73
	ld   e, l                                        ; $7523: $5d
	dec  c                                           ; $7524: $0d
	nop                                              ; $7525: $00
	ld   b, $90                                      ; $7526: $06 $90
	sbc  d                                           ; $7528: $9a
	sbc  c                                           ; $7529: $99
	dec  c                                           ; $752a: $0d
	nop                                              ; $752b: $00
	ld   [bc], a                                     ; $752c: $02
	and  c                                           ; $752d: $a1
	and  b                                           ; $752e: $a0
	ld   l, l                                        ; $752f: $6d
	adc  a                                           ; $7530: $8f
	sbc  c                                           ; $7531: $99
	dec  c                                           ; $7532: $0d
	nop                                              ; $7533: $00
	ld   b, $0b                                      ; $7534: $06 $0b
	ld   e, h                                        ; $7536: $5c
	sub  l                                           ; $7537: $95
	dec  c                                           ; $7538: $0d
	nop                                              ; $7539: $00
	ld   e, c                                        ; $753a: $59
	sbc  l                                           ; $753b: $9d
	ld   h, a                                        ; $753c: $67
	dec  c                                           ; $753d: $0d
	nop                                              ; $753e: $00
	inc  b                                           ; $753f: $04
	adc  d                                           ; $7540: $8a
	inc  bc                                          ; $7541: $03
	ld   e, [hl]                                     ; $7542: $5e
	dec  c                                           ; $7543: $0d
	nop                                              ; $7544: $00
	rst  ToBoot                                         ; $7545: $c7
	xor  $de                                         ; $7546: $ee $de
	ei                                               ; $7548: $fb
	ret                                              ; $7549: $c9


	dec  c                                           ; $754a: $0d
	nop                                              ; $754b: $00
	ld   b, $8f                                      ; $754c: $06 $8f
	ld   b, $90                                      ; $754e: $06 $90
	and  b                                           ; $7550: $a0
	inc  b                                           ; $7551: $04
	or   h                                           ; $7552: $b4
	ld   [hl], d                                     ; $7553: $72
	dec  c                                           ; $7554: $0d
	nop                                              ; $7555: $00
	ld   b, $61                                      ; $7556: $06 $61
	ld   d, d                                        ; $7558: $52
	ld   e, c                                        ; $7559: $59
	ld   e, a                                        ; $755a: $5f
	sbc  c                                           ; $755b: $99
	dec  c                                           ; $755c: $0d
	nop                                              ; $755d: $00

;
	inc  b                                           ; $755e: $04
	dec  c                                           ; $755f: $0d
	inc  b                                           ; $7560: $04
	jr   jr_024_75d0                                 ; $7561: $18 $6d

	sbc  b                                           ; $7563: $98
	dec  c                                           ; $7564: $0d
	nop                                              ; $7565: $00
	sub  b                                           ; $7566: $90
	ld   [hl], c                                     ; $7567: $71
	halt                                             ; $7568: $76
	ld   [bc], a                                     ; $7569: $02
	ld   a, [de]                                     ; $756a: $1a
	inc  bc                                          ; $756b: $03
	ld   l, e                                        ; $756c: $6b
	ld   a, c                                        ; $756d: $79
	dec  c                                           ; $756e: $0d
	ld   [bc], a                                     ; $756f: $02
	and  b                                           ; $7570: $a0
	ld   [hl], e                                     ; $7571: $73
	ld   e, c                                        ; $7572: $59
	ld   a, b                                        ; $7573: $78
	ld   d, d                                        ; $7574: $52
	halt                                             ; $7575: $76
	nop                                              ; $7576: $00
	ld   [bc], a                                     ; $7577: $02
	ld   a, [de]                                     ; $7578: $1a
	inc  bc                                          ; $7579: $03
	ld   l, e                                        ; $757a: $6b
	ld   a, c                                        ; $757b: $79
	ld   [bc], a                                     ; $757c: $02
	and  b                                           ; $757d: $a0
	ld   [hl], e                                     ; $757e: $73
	ld   e, c                                        ; $757f: $59
	ld   a, b                                        ; $7580: $78
	ld   d, d                                        ; $7581: $52
	halt                                             ; $7582: $76
	dec  c                                           ; $7583: $0d
	nop                                              ; $7584: $00
	sub  b                                           ; $7585: $90
	ld   [hl], c                                     ; $7586: $71
	halt                                             ; $7587: $76
	ld   [bc], a                                     ; $7588: $02
	ld   a, [de]                                     ; $7589: $1a
	inc  bc                                          ; $758a: $03
	ld   l, e                                        ; $758b: $6b
	halt                                             ; $758c: $76
	dec  c                                           ; $758d: $0d
	ld   b, $8f                                      ; $758e: $06 $8f
	ld   b, $90                                      ; $7590: $06 $90
	and  b                                           ; $7592: $a0
	halt                                             ; $7593: $76
	sub  a                                           ; $7594: $97
	ld   a, b                                        ; $7595: $78
	ld   d, d                                        ; $7596: $52
	halt                                             ; $7597: $76
	dec  c                                           ; $7598: $0d
	nop                                              ; $7599: $00
	ld   b, $8f                                      ; $759a: $06 $8f
	ld   b, $90                                      ; $759c: $06 $90
	and  b                                           ; $759e: $a0
	halt                                             ; $759f: $76
	sub  a                                           ; $75a0: $97
	ld   a, b                                        ; $75a1: $78
	ld   d, d                                        ; $75a2: $52
	halt                                             ; $75a3: $76
	dec  c                                           ; $75a4: $0d
	nop                                              ; $75a5: $00
	adc  h                                           ; $75a6: $8c
	ld   l, [hl]                                     ; $75a7: $6e
	ld   [bc], a                                     ; $75a8: $02
	ld   bc, $5952                                   ; $75a9: $01 $52 $59
	rst  $38                                         ; $75ac: $ff
	rst  $38                                         ; $75ad: $ff
	nop                                              ; $75ae: $00
	ld   [bc], a                                     ; $75af: $02
	ld   c, b                                        ; $75b0: $48
	ld   [bc], a                                     ; $75b1: $02
	sub  c                                           ; $75b2: $91
	ld   a, l                                        ; $75b3: $7d
	halt                                             ; $75b4: $76
	ld   [hl], a                                     ; $75b5: $77
	ld   e, c                                        ; $75b6: $59
	ld   a, b                                        ; $75b7: $78
	ld   d, d                                        ; $75b8: $52
	ld   a, b                                        ; $75b9: $78
	rst  $38                                         ; $75ba: $ff
	rst  $38                                         ; $75bb: $ff
	nop                                              ; $75bc: $00
	ld   [bc], a                                     ; $75bd: $02
	and  b                                           ; $75be: $a0
	ld   h, a                                        ; $75bf: $67
	ld   e, h                                        ; $75c0: $5c
	sbc  c                                           ; $75c1: $99
	ld   a, [$9000]                                  ; $75c2: $fa $00 $90
	ld   [hl], c                                     ; $75c5: $71
	halt                                             ; $75c6: $76
	ld   b, $90                                      ; $75c7: $06 $90
	sbc  d                                           ; $75c9: $9a
	ld   a, b                                        ; $75ca: $78
	ld   e, l                                        ; $75cb: $5d
	ld   [hl], h                                     ; $75cc: $74
	ld   a, l                                        ; $75cd: $7d
	rst  $38                                         ; $75ce: $ff
	rst  $38                                         ; $75cf: $ff

jr_024_75d0:
	nop                                              ; $75d0: $00
	adc  h                                           ; $75d1: $8c
	ld   l, b                                        ; $75d2: $68
	ld   a, l                                        ; $75d3: $7d
	dec  c                                           ; $75d4: $0d
	ld   [bc], a                                     ; $75d5: $02
	ld   a, [de]                                     ; $75d6: $1a
	inc  bc                                          ; $75d7: $03


	ld   l, e                                        ; $75d8: $6b
	ld   a, c                                        ; $75d9: $79
	ld   [bc], a                                     ; $75da: $02
	and  b                                           ; $75db: $a0
	ld   [hl], e                                     ; $75dc: $73
	ld   e, c                                        ; $75dd: $59
	ld   a, b                                        ; $75de: $78
	ld   d, d                                        ; $75df: $52
	halt                                             ; $75e0: $76
	dec  c                                           ; $75e1: $0d
	ld   d, d                                        ; $75e2: $52
	ld   e, a                                        ; $75e3: $5f
	ld   a, b                                        ; $75e4: $78
	ld   d, d                                        ; $75e5: $52
	ld   a, b                                        ; $75e6: $78
	nop                                              ; $75e7: $00
	ld   h, c                                        ; $75e8: $61
	ld   [hl], c                                     ; $75e9: $71
	ld   l, a                                        ; $75ea: $6f
	ld   e, c                                        ; $75eb: $59
	sub  a                                           ; $75ec: $97
	ld   d, d                                        ; $75ed: $52
	ld   e, l                                        ; $75ee: $5d
	ld   l, h                                        ; $75ef: $6c
	ld   a, [$8c00]                                  ; $75f0: $fa $00 $8c
	ld   l, b                                        ; $75f3: $68
	ld   a, l                                        ; $75f4: $7d
	dec  c                                           ; $75f5: $0d
	ld   b, $8f                                      ; $75f6: $06 $8f
	ld   b, $90                                      ; $75f8: $06 $90
	and  b                                           ; $75fa: $a0
	halt                                             ; $75fb: $76
	sub  a                                           ; $75fc: $97
	ld   a, b                                        ; $75fd: $78
	ld   d, d                                        ; $75fe: $52
	halt                                             ; $75ff: $76
	dec  c                                           ; $7600: $0d
	ld   d, d                                        ; $7601: $52
	ld   e, a                                        ; $7602: $5f
	ld   a, b                                        ; $7603: $78
	ld   d, d                                        ; $7604: $52
	ld   a, b                                        ; $7605: $78
	nop                                              ; $7606: $00


;
	ld   d, d                                        ; $7607: $52
	ld   e, e                                        ; $7608: $5b
	ld   a, b                                        ; $7609: $78
	sbc  b                                           ; $760a: $98
	ld   [hl], l                                     ; $760b: $75
	ld   d, h                                        ; $760c: $54
	adc  h                                           ; $760d: $8c
	ld   e, l                                        ; $760e: $5d
	dec  c                                           ; $760f: $0d
	inc  bc                                          ; $7610: $03
	xor  b                                           ; $7611: $a8
	ld   d, [hl]                                     ; $7612: $56
	sbc  c                                           ; $7613: $99
	ld   l, [hl]                                     ; $7614: $6e
	sbc  e                                           ; $7615: $9b
	ld   d, h                                        ; $7616: $54
	ld   e, c                                        ; $7617: $59
	rst  $38                                         ; $7618: $ff
	rst  $38                                         ; $7619: $ff
	nop                                              ; $761a: $00
	ld   [hl], l                                     ; $761b: $75
	sub  b                                           ; $761c: $90
	rst  $38                                         ; $761d: $ff
	rst  $38                                         ; $761e: $ff
	dec  c                                           ; $761f: $0d
	sub  d                                           ; $7620: $92
	sbc  c                                           ; $7621: $99
	ld   h, l                                        ; $7622: $65
	ld   e, c                                        ; $7623: $59
	ld   a, b                                        ; $7624: $78
	ld   d, d                                        ; $7625: $52
	ld   a, [$00fa]                                  ; $7626: $fa $fa $00
	ld   h, e                                        ; $7629: $63
	ld   d, b                                        ; $762a: $50
	sbc  [hl]                                        ; $762b: $9e
	ld   d, d                                        ; $762c: $52
	ld   e, l                                        ; $762d: $5d
	ld   l, h                                        ; $762e: $6c
	ld   a, [$0300]                                  ; $762f: $fa $00 $03
	ld   l, l                                        ; $7632: $6d
	dec  b                                           ; $7633: $05
	add  hl, de                                      ; $7634: $19
	ld   a, h                                        ; $7635: $7c
	inc  bc                                          ; $7636: $03
	ld   [de], a                                     ; $7637: $12
	ld   [bc], a                                     ; $7638: $02
	ld   h, e                                        ; $7639: $63
	and  b                                           ; $763a: $a0
	ld   [bc], a                                     ; $763b: $02
	sub  l                                           ; $763c: $95
	ld   l, c                                        ; $763d: $69
	ld   [hl], h                                     ; $763e: $74
	sub  d                                           ; $763f: $92
	sbc  c                                           ; $7640: $99
	ld   a, [$6300]                                  ; $7641: $fa $00 $63
	ld   d, d                                        ; $7644: $52
	ld   h, d                                        ; $7645: $62
	ld   l, [hl]                                     ; $7646: $6e
	sbc  a                                           ; $7647: $9f
	dec  c                                           ; $7648: $0d
	ld   [bc], a                                     ; $7649: $02
	and  c                                           ; $764a: $a1
	ld   [bc], a                                     ; $764b: $02
	ld   a, e                                        ; $764c: $7b
	and  b                                           ; $764d: $a0
	inc  b                                           ; $764e: $04
	ld   b, l                                        ; $764f: $45
	sbc  d                                           ; $7650: $9a
	ld   [hl], h                                     ; $7651: $74
	ld   d, d                                        ; $7652: $52
	ld   e, l                                        ; $7653: $5d
	ld   l, h                                        ; $7654: $6c
	db $fa, $00 
endc
	
Func_24_7657:
	ld   a, $04 ; $7657: $3e $04
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $7659: $ea $62 $c3
	ld   a, $08                                      ; $765c: $3e $08
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $765e: $ea $63 $c3
	ld   a, $03                                      ; $7661: $3e $03
	ld   b, $00                                      ; $7663: $06 $00
	ld   hl, wBGPalettes                                   ; $7665: $21 $de $c2
	ld   c, $01                                      ; $7668: $0e $01
	ld   de, $7000                                   ; $766a: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $766d: $cd $48 $07
	ld   a, $08                                      ; $7670: $3e $08

jr_024_7672:
	push af                                          ; $7672: $f5
	ld   b, $04                                      ; $7673: $06 $04
	ld   c, $08                                      ; $7675: $0e $08
	call FadePalettesAndSetRangeToUpdate                                       ; $7677: $cd $32 $08
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $767a: $cf
	pop  af                                          ; $767b: $f1
	dec  a                                           ; $767c: $3d
	jr   nz, jr_024_7672                             ; $767d: $20 $f3

	ret                                              ; $767f: $c9


	ld   a, [wWramBank]                                  ; $7680: $fa $93 $c2
	push af                                          ; $7683: $f5
	ld   a, $07                                      ; $7684: $3e $07
	ld   [wWramBank], a                                  ; $7686: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7689: $e0 $70
	ld   a, $04                                      ; $768b: $3e $04
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $768d: $ea $62 $c3
	ld   a, $08                                      ; $7690: $3e $08
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $7692: $ea $63 $c3
	ld   a, $03                                      ; $7695: $3e $03
	ld   b, $00                                      ; $7697: $06 $00
	ld   hl, wBGPalettes                                   ; $7699: $21 $de $c2
	ld   c, $00                                      ; $769c: $0e $00
	ld   de, $da00                                   ; $769e: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $76a1: $cd $48 $07
	ld   a, [wLCDC]                                  ; $76a4: $fa $03 $c2
	bit  7, a                                        ; $76a7: $cb $7f
	jr   z, jr_024_76b8                              ; $76a9: $28 $0d

	ld   bc, $0408                                   ; $76ab: $01 $08 $04
	call FadePalettesAndSetRangeToUpdate                                       ; $76ae: $cd $32 $08
	pop  af                                          ; $76b1: $f1
	ld   [wWramBank], a                                  ; $76b2: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $76b5: $e0 $70
	ret                                              ; $76b7: $c9


jr_024_76b8:
	ld   a, $1e                                      ; $76b8: $3e $1e
	ld   hl, $6884                                   ; $76ba: $21 $84 $68
	ld   a, $26                                      ; $76bd: $3e $26
	ld   hl, $6884                                   ; $76bf: $21 $84 $68
	ld   de, wBGPalettes+1*8                                   ; $76c2: $11 $e6 $c2
	ld   bc, $0010                                   ; $76c5: $01 $10 $00
	call FarMemCopy                                       ; $76c8: $cd $b2 $09
	ld   bc, $040b                                   ; $76cb: $01 $0b $04
	call SetBGandOBJPaletteRangesToUpdate                                       ; $76ce: $cd $aa $04
	pop  af                                          ; $76d1: $f1
	ld   [wWramBank], a                                  ; $76d2: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $76d5: $e0 $70
	ret                                              ; $76d7: $c9


Call_024_76d8:
	xor  a                                           ; $76d8: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $76d9: $ea $62 $c3
	ld   a, $40                                      ; $76dc: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $76de: $ea $63 $c3
	ld   a, $03                                      ; $76e1: $3e $03
	ld   c, $01                                      ; $76e3: $0e $01
	ld   de, $7000                                   ; $76e5: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $76e8: $cd $48 $07
	ld   a, $08                                      ; $76eb: $3e $08

jr_024_76ed:
	push af                                          ; $76ed: $f5
	cp   $08                                         ; $76ee: $fe $08
	jr   z, jr_024_76f7                              ; $76f0: $28 $05

	and  $07                                         ; $76f2: $e6 $07
	call SafeSetAudVolForMultipleChannels                                       ; $76f4: $cd $e0 $1c

jr_024_76f7:
	ld   b, $00                                      ; $76f7: $06 $00
	ld   c, $40                                      ; $76f9: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $76fb: $cd $32 $08
	ld   bc, $0004                                   ; $76fe: $01 $04 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $7701: $cd $79 $0a
	pop  af                                          ; $7704: $f1
	dec  a                                           ; $7705: $3d
	jr   nz, jr_024_76ed                             ; $7706: $20 $e5

	ret                                              ; $7708: $c9


Call_024_7709:
	xor  a                                           ; $7709: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $770a: $ea $62 $c3
	ld   a, $40                                      ; $770d: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $770f: $ea $63 $c3
	ld   a, $03                                      ; $7712: $3e $03
	ld   b, $01                                      ; $7714: $06 $01
	ld   hl, $7000                                   ; $7716: $21 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $7719: $cd $48 $07
	ld   a, $08                                      ; $771c: $3e $08

jr_024_771e:
	push af                                          ; $771e: $f5
	ld   b, $00                                      ; $771f: $06 $00
	ld   c, $40                                      ; $7721: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $7723: $cd $32 $08
	ld   bc, $0004                                   ; $7726: $01 $04 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $7729: $cd $79 $0a
	pop  af                                          ; $772c: $f1
	dec  a                                           ; $772d: $3d
	jr   nz, jr_024_771e                             ; $772e: $20 $ee

	ret                                              ; $7730: $c9


Call_024_7731:
	ld   a, [$ca78]                                  ; $7731: $fa $78 $ca
	and  a                                           ; $7734: $a7
	jp   nz, Jump_024_77ac                           ; $7735: $c2 $ac $77

	ld   a, [$ca79]                                  ; $7738: $fa $79 $ca
	ld   h, a                                        ; $773b: $67
	ld   l, $64                                      ; $773c: $2e $64
	call AequHtimesL                                       ; $773e: $cd $ac $0b
	ld   a, [$ca7a]                                  ; $7741: $fa $7a $ca
	call Func_0c50                                       ; $7744: $cd $50 $0c
	ld   a, l                                        ; $7747: $7d
	cp   $3c                                         ; $7748: $fe $3c
	jr   c, jr_024_776c                              ; $774a: $38 $20

	ld   a, [$ca76]                                  ; $774c: $fa $76 $ca
	ld   [$ca77], a                                  ; $774f: $ea $77 $ca
	ld   a, $00                                      ; $7752: $3e $00
	ld   [$ca76], a                                  ; $7754: $ea $76 $ca
	push af                                          ; $7757: $f5
	ld   a, $cc                                      ; $7758: $3e $cc
	ld   [wFarCallAddr], a                                  ; $775a: $ea $98 $c2
	ld   a, $65                                      ; $775d: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $775f: $ea $99 $c2
	ld   a, $3e                                      ; $7762: $3e $3e
	ld   [wFarCallBank], a                                  ; $7764: $ea $9a $c2
	pop  af                                          ; $7767: $f1
	call FarCall                                       ; $7768: $cd $62 $09
	ret                                              ; $776b: $c9


jr_024_776c:
	ld   a, [$ca76]                                  ; $776c: $fa $76 $ca
	ld   [$ca77], a                                  ; $776f: $ea $77 $ca
	ld   a, $04                                      ; $7772: $3e $04
	ld   [$ca76], a                                  ; $7774: $ea $76 $ca
	push af                                          ; $7777: $f5
	ld   a, $cc                                      ; $7778: $3e $cc
	ld   [wFarCallAddr], a                                  ; $777a: $ea $98 $c2
	ld   a, $65                                      ; $777d: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $777f: $ea $99 $c2
	ld   a, $3e                                      ; $7782: $3e $3e
	ld   [wFarCallBank], a                                  ; $7784: $ea $9a $c2
	pop  af                                          ; $7787: $f1
	call FarCall                                       ; $7788: $cd $62 $09
	ret                                              ; $778b: $c9


	ld   a, [$ca76]                                  ; $778c: $fa $76 $ca
	ld   [$ca77], a                                  ; $778f: $ea $77 $ca
	ld   a, $05                                      ; $7792: $3e $05
	ld   [$ca76], a                                  ; $7794: $ea $76 $ca
	push af                                          ; $7797: $f5
	ld   a, $cc                                      ; $7798: $3e $cc
	ld   [wFarCallAddr], a                                  ; $779a: $ea $98 $c2
	ld   a, $65                                      ; $779d: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $779f: $ea $99 $c2
	ld   a, $3e                                      ; $77a2: $3e $3e
	ld   [wFarCallBank], a                                  ; $77a4: $ea $9a $c2
	pop  af                                          ; $77a7: $f1
	call FarCall                                       ; $77a8: $cd $62 $09
	ret                                              ; $77ab: $c9


Jump_024_77ac:
	ld   a, [$ca76]                                  ; $77ac: $fa $76 $ca
	ld   [$ca77], a                                  ; $77af: $ea $77 $ca
	ld   a, $01                                      ; $77b2: $3e $01
	ld   [$ca76], a                                  ; $77b4: $ea $76 $ca
	push af                                          ; $77b7: $f5
	ld   a, $cc                                      ; $77b8: $3e $cc
	ld   [wFarCallAddr], a                                  ; $77ba: $ea $98 $c2
	ld   a, $65                                      ; $77bd: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $77bf: $ea $99 $c2
	ld   a, $3e                                      ; $77c2: $3e $3e
	ld   [wFarCallBank], a                                  ; $77c4: $ea $9a $c2
	pop  af                                          ; $77c7: $f1
	call FarCall                                       ; $77c8: $cd $62 $09
	ret                                              ; $77cb: $c9


Call_024_77cc:
	push de                                          ; $77cc: $d5
	push bc                                          ; $77cd: $c5
	push hl                                          ; $77ce: $e5
	push af                                          ; $77cf: $f5
	ld   a, [$ca6f]                                  ; $77d0: $fa $6f $ca
	cp   $00                                         ; $77d3: $fe $00
	jp   z, Jump_024_77f1                            ; $77d5: $ca $f1 $77

	cp   $05                                         ; $77d8: $fe $05
	jp   z, Jump_024_787a                            ; $77da: $ca $7a $78

	cp   $01                                         ; $77dd: $fe $01
	jp   z, Jump_024_7846                            ; $77df: $ca $46 $78

	cp   $03                                         ; $77e2: $fe $03
	jp   z, Jump_024_7860                            ; $77e4: $ca $60 $78

	cp   $02                                         ; $77e7: $fe $02
	jp   z, Jump_024_7853                            ; $77e9: $ca $53 $78

	cp   $04                                         ; $77ec: $fe $04
	jp   z, Jump_024_786d                            ; $77ee: $ca $6d $78

Jump_024_77f1:
	xor  a                                           ; $77f1: $af
	ld   [$ca90], a                                  ; $77f2: $ea $90 $ca
	ld   [$ca91], a                                  ; $77f5: $ea $91 $ca
	ld   d, $00                                      ; $77f8: $16 $00
	ld   a, [$afd3]                                  ; $77fa: $fa $d3 $af
	ld   e, a                                        ; $77fd: $5f
	ld   hl, $ca90                                   ; $77fe: $21 $90 $ca
	ld   a, [hl]                                     ; $7801: $7e
	add  e                                           ; $7802: $83
	ld   [hl+], a                                    ; $7803: $22
	ld   a, [hl]                                     ; $7804: $7e
	adc  d                                           ; $7805: $8a
	ld   [hl], a                                     ; $7806: $77
	ld   a, [$afd2]                                  ; $7807: $fa $d2 $af
	ld   e, a                                        ; $780a: $5f
	ld   hl, $ca90                                   ; $780b: $21 $90 $ca
	ld   a, [hl]                                     ; $780e: $7e
	add  e                                           ; $780f: $83
	ld   [hl+], a                                    ; $7810: $22
	ld   a, [hl]                                     ; $7811: $7e
	adc  d                                           ; $7812: $8a
	ld   [hl], a                                     ; $7813: $77
	ld   a, [$afd5]                                  ; $7814: $fa $d5 $af
	ld   e, a                                        ; $7817: $5f
	ld   hl, $ca90                                   ; $7818: $21 $90 $ca
	ld   a, [hl]                                     ; $781b: $7e
	add  e                                           ; $781c: $83
	ld   [hl+], a                                    ; $781d: $22
	ld   a, [hl]                                     ; $781e: $7e
	adc  d                                           ; $781f: $8a
	ld   [hl], a                                     ; $7820: $77
	ld   a, [$afd4]                                  ; $7821: $fa $d4 $af
	ld   e, a                                        ; $7824: $5f
	ld   hl, $ca90                                   ; $7825: $21 $90 $ca
	ld   a, [hl]                                     ; $7828: $7e
	add  e                                           ; $7829: $83
	ld   [hl+], a                                    ; $782a: $22
	ld   a, [hl]                                     ; $782b: $7e
	adc  d                                           ; $782c: $8a
	ld   [hl], a                                     ; $782d: $77
	ld   a, [$ca90]                                  ; $782e: $fa $90 $ca
	ld   l, a                                        ; $7831: $6f
	ld   a, [$ca91]                                  ; $7832: $fa $91 $ca
	ld   h, a                                        ; $7835: $67
	ld   a, $04                                      ; $7836: $3e $04
	call Func_0c50                                       ; $7838: $cd $50 $0c
	ld   a, l                                        ; $783b: $7d
	cp   $9b                                         ; $783c: $fe $9b
	jr   nc, jr_024_7887                             ; $783e: $30 $47

	pop  hl                                          ; $7840: $e1
	pop  hl                                          ; $7841: $e1
	pop  bc                                          ; $7842: $c1
	pop  de                                          ; $7843: $d1
	scf                                              ; $7844: $37
	ret                                              ; $7845: $c9


Jump_024_7846:
	ld   a, [$afd4]                                  ; $7846: $fa $d4 $af
	cp   $c8                                         ; $7849: $fe $c8
	jr   nc, jr_024_7887                             ; $784b: $30 $3a

	pop  hl                                          ; $784d: $e1
	pop  hl                                          ; $784e: $e1
	pop  bc                                          ; $784f: $c1
	pop  de                                          ; $7850: $d1
	scf                                              ; $7851: $37
	ret                                              ; $7852: $c9


Jump_024_7853:
	ld   a, [$afd5]                                  ; $7853: $fa $d5 $af
	cp   $c8                                         ; $7856: $fe $c8
	jr   nc, jr_024_7887                             ; $7858: $30 $2d

	pop  hl                                          ; $785a: $e1
	pop  hl                                          ; $785b: $e1
	pop  bc                                          ; $785c: $c1
	pop  de                                          ; $785d: $d1
	scf                                              ; $785e: $37
	ret                                              ; $785f: $c9


Jump_024_7860:
	ld   a, [$afd2]                                  ; $7860: $fa $d2 $af
	cp   $c8                                         ; $7863: $fe $c8
	jr   nc, jr_024_7887                             ; $7865: $30 $20

	pop  hl                                          ; $7867: $e1
	pop  hl                                          ; $7868: $e1
	pop  bc                                          ; $7869: $c1
	pop  de                                          ; $786a: $d1
	scf                                              ; $786b: $37
	ret                                              ; $786c: $c9


Jump_024_786d:
	ld   a, [$afd1]                                  ; $786d: $fa $d1 $af
	cp   $c8                                         ; $7870: $fe $c8
	jr   nc, jr_024_7887                             ; $7872: $30 $13

	pop  hl                                          ; $7874: $e1
	pop  hl                                          ; $7875: $e1
	pop  bc                                          ; $7876: $c1
	pop  de                                          ; $7877: $d1
	scf                                              ; $7878: $37
	ret                                              ; $7879: $c9


Jump_024_787a:
	ld   a, [$afd3]                                  ; $787a: $fa $d3 $af
	cp   $c8                                         ; $787d: $fe $c8
	jr   nc, jr_024_7887                             ; $787f: $30 $06

	pop  hl                                          ; $7881: $e1
	pop  hl                                          ; $7882: $e1
	pop  bc                                          ; $7883: $c1
	pop  de                                          ; $7884: $d1
	scf                                              ; $7885: $37
	ret                                              ; $7886: $c9


jr_024_7887:
	pop  hl                                          ; $7887: $e1
	pop  hl                                          ; $7888: $e1
	pop  bc                                          ; $7889: $c1
	pop  de                                          ; $788a: $d1
	ret                                              ; $788b: $c9


	ret                                              ; $788c: $c9


Call_024_788d:
	ld   a, [$c9b1]                                  ; $788d: $fa $b1 $c9
	or   a                                           ; $7890: $b7
	jr   z, jr_024_78a9                              ; $7891: $28 $16

	ld   a, $1e                                      ; $7893: $3e $1e
	ld   hl, $6a14                                   ; $7895: $21 $14 $6a
	ld   de, wBGPalettes+3*8                                   ; $7898: $11 $f6 $c2
	ld   bc, $0068                                   ; $789b: $01 $68 $00
	call FarMemCopy                                       ; $789e: $cd $b2 $09
	ld   bc, $0c3f                                   ; $78a1: $01 $3f $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $78a4: $cd $aa $04
	jr   jr_024_78bd                                 ; $78a7: $18 $14

jr_024_78a9:
	ld   a, $1e                                      ; $78a9: $3e $1e
	ld   hl, $6914                                   ; $78ab: $21 $14 $69
	ld   de, wBGPalettes+3*8                                   ; $78ae: $11 $f6 $c2
	ld   bc, $0068                                   ; $78b1: $01 $68 $00
	call FarMemCopy                                       ; $78b4: $cd $b2 $09
	ld   bc, $0c3f                                   ; $78b7: $01 $3f $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $78ba: $cd $aa $04

jr_024_78bd:
	ret                                              ; $78bd: $c9


if def(VWF)
Table_24_71b0:
	dw Table_24_71b0entry00-Table_24_71b0
	dw Table_24_71b0entry01-Table_24_71b0
	dw Table_24_71b0entry02-Table_24_71b0
	dw Table_24_71b0entry03-Table_24_71b0
	dw Table_24_71b0entry04-Table_24_71b0
	dw Table_24_71b0entry05-Table_24_71b0
	dw Table_24_71b0entry06-Table_24_71b0
	dw Table_24_71b0entry07-Table_24_71b0
	dw Table_24_71b0entry08-Table_24_71b0
	dw Table_24_71b0entry09-Table_24_71b0
	dw Table_24_71b0entry0a-Table_24_71b0
	dw Table_24_71b0entry0b-Table_24_71b0
	dw Table_24_71b0entry0c-Table_24_71b0
	dw Table_24_71b0entry0d-Table_24_71b0
	dw Table_24_71b0entry0e-Table_24_71b0
	dw Table_24_71b0entry0f-Table_24_71b0
	dw Table_24_71b0entry10-Table_24_71b0
	dw Table_24_71b0entry11-Table_24_71b0
	dw Table_24_71b0entry12-Table_24_71b0
	dw Table_24_71b0entry13-Table_24_71b0
	dw Table_24_71b0entry14-Table_24_71b0
	dw Table_24_71b0entry15-Table_24_71b0
	dw Table_24_71b0entry16-Table_24_71b0
	dw Table_24_71b0entry17-Table_24_71b0
	dw Table_24_71b0entry18-Table_24_71b0
	dw Table_24_71b0entry19-Table_24_71b0
	dw Table_24_71b0entry1a-Table_24_71b0
	dw Table_24_71b0entry1b-Table_24_71b0
	dw Table_24_71b0entry1c-Table_24_71b0
	dw Table_24_71b0entry1d-Table_24_71b0
	dw Table_24_71b0entry1e-Table_24_71b0
	dw Table_24_71b0entry1f-Table_24_71b0
	dw Table_24_71b0entry20-Table_24_71b0
	dw Table_24_71b0entry21-Table_24_71b0
	dw Table_24_71b0entry22-Table_24_71b0
	dw Table_24_71b0entry23-Table_24_71b0
	dw Table_24_71b0entry24-Table_24_71b0
	dw Table_24_71b0entry25-Table_24_71b0
	dw Table_24_71b0entry26-Table_24_71b0
	dw Table_24_71b0entry27-Table_24_71b0
	dw Table_24_71b0entry28-Table_24_71b0
	dw Table_24_71b0entry29-Table_24_71b0
	dw Table_24_71b0entry2a-Table_24_71b0
	dw Table_24_71b0entry2b-Table_24_71b0
	dw Table_24_71b0entry2c-Table_24_71b0
	dw Table_24_71b0entry2d-Table_24_71b0
	dw Table_24_71b0entry2e-Table_24_71b0
	dw Table_24_71b0entry2f-Table_24_71b0
	dw Table_24_71b0entry30-Table_24_71b0
	dw Table_24_71b0entry31-Table_24_71b0
	dw Table_24_71b0entry32-Table_24_71b0
	dw Table_24_71b0entry33-Table_24_71b0
	dw Table_24_71b0entry34-Table_24_71b0
	dw Table_24_71b0entry35-Table_24_71b0
	dw Table_24_71b0entry36-Table_24_71b0
	dw Table_24_71b0entry37-Table_24_71b0
	dw Table_24_71b0entry38-Table_24_71b0
	dw Table_24_71b0entry39-Table_24_71b0
	dw Table_24_71b0entry3a-Table_24_71b0
	dw Table_24_71b0entry3b-Table_24_71b0
	dw Table_24_71b0entry3c-Table_24_71b0
	dw Table_24_71b0entry3d-Table_24_71b0
	dw Table_24_71b0entry3e-Table_24_71b0
	dw Table_24_71b0entry3f-Table_24_71b0
	dw Table_24_71b0entry40-Table_24_71b0
	dw Table_24_71b0entry41-Table_24_71b0
	dw Table_24_71b0entry42-Table_24_71b0
	dw Table_24_71b0entry43-Table_24_71b0
	dw Table_24_71b0entry44-Table_24_71b0
	dw Table_24_71b0entry45-Table_24_71b0
	dw Table_24_71b0entry46-Table_24_71b0
	dw Table_24_71b0entry47-Table_24_71b0
	dw Table_24_71b0entry48-Table_24_71b0
	dw Table_24_71b0entry49-Table_24_71b0
	dw Table_24_71b0entry4a-Table_24_71b0
	dw Table_24_71b0entry4b-Table_24_71b0
	dw Table_24_71b0entry4c-Table_24_71b0
	dw Table_24_71b0entry4d-Table_24_71b0


Table_24_71b0entry27:
	db $23, $46, $3d, $47, $10, $27, $35, $46, $3d, $43, $42, $39, $48, $48, $39, $fa, $00
Table_24_71b0entry28:
	db $27, $3d, $42, $3d, $01, $0a, $1c, $43, $48, $10, $1b, $48, $48, $35, $37, $3f, $fa, $00
Table_24_71b0entry29:
	db $1c, $35, $41, $36, $43, $43, $10, $2c, $35, $3d, $42, $fa, $00
Table_24_71b0entry2a:
	db $1e, $35, $41, $42, $e1, $10, $48, $3c, $3d, $47, $10, $48, $3c, $3d, $42, $3b, $01, $01, $47, $10, $48, $43, $49, $3b, $3c, $f2, $f2, $f2, $0d, $23, $01, $01, $4a, $39, $10, $3b, $43, $48, $10, $42, $43, $10, $37, $3c, $43, $3d, $37, $39, $fa, $0d, $23, $48, $01, $01, $47, $10, $35, $40, $40, $10, $43, $46, $10, $42, $43, $48, $3c, $3d, $42, $3b, $fa, $00
Table_24_71b0entry2b:
	db $31, $35, $48, $37, $3c, $10, $48, $3c, $3d, $47, $e1, $10, $2d, $35, $3f, $49, $46, $35, $fa, $10, $22, $39, $46, $39, $10, $23, $0d, $3b, $43, $fa, $00
Table_24_71b0entry2c:
	db $31, $35, $48, $37, $3c, $10, $48, $3c, $3d, $47, $e1, $10, $2d, $49, $41, $3d, $46, $39, $fa, $10, $22, $39, $46, $39, $10, $23, $0d, $3b, $43, $fa, $00
Table_24_71b0entry2d:
	db $31, $35, $48, $37, $3c, $10, $48, $3c, $3d, $47, $e1, $10, $27, $35, $46, $3d, $35, $fa, $10, $22, $39, $46, $39, $10, $23, $0d, $3b, $43, $fa, $00
Table_24_71b0entry2e:
	db $31, $35, $48, $37, $3c, $10, $48, $3c, $3d, $47, $e1, $10, $23, $46, $3d, $47, $fa, $10, $22, $39, $46, $39, $10, $23, $0d, $3b, $43, $fa, $00
Table_24_71b0entry2f:
	db $31, $35, $48, $37, $3c, $10, $48, $3c, $3d, $47, $e1, $10, $25, $43, $3c, $46, $35, $42, $fa, $10, $22, $39, $46, $39, $10, $23, $0d, $3b, $43, $fa, $00
Table_24_71b0entry30:
	db $31, $35, $48, $37, $3c, $10, $48, $3c, $3d, $47, $e1, $10, $25, $35, $42, $42, $35, $fa, $10, $22, $39, $46, $39, $10, $23, $0d, $3b, $43, $fa, $00
Table_24_71b0entry31:
	db $23, $10, $38, $3d, $38, $10, $3d, $48, $fa, $0d, $23, $10, $36, $39, $35, $48, $10, $3d, $48, $fa, $00
Table_24_71b0entry32:
	db $1b, $3c, $3c, $3c, $3c, $3c, $fa, $fa, $00
Table_24_71b0entry33:
	db $1b, $48, $48, $35, $37, $3f, $00
Table_24_71b0entry34:
	db $1b, $44, $44, $46, $43, $35, $37, $3c, $00
Table_24_71b0entry35:
	db $1c, $35, $37, $3f, $10, $35, $4b, $35, $4d, $00
Table_24_71b0entry36:
	db $1d, $3c, $35, $46, $3b, $39, $10, $39, $42, $39, $46, $3b, $4d, $00
Table_24_71b0entry37:
	db $1e, $39, $3a, $39, $42, $38, $00
Table_24_71b0entry38:
	db $1e, $43, $38, $3b, $39, $00
Table_24_71b0entry39:
	db $2d, $44, $39, $37, $3d, $35, $40, $10, $35, $48, $48, $35, $37, $3f, $00
Table_24_71b0entry3a:
	db $2e, $39, $40, $39, $44, $43, $46, $48, $00
Table_24_71b0entry3b:
	db $27, $35, $3d, $42, $48, $35, $3d, $42, $10, $38, $3d, $47, $48, $35, $42, $37, $39, $00
Table_24_71b0entry3c:
	db $2a, $49, $46, $47, $49, $39, $00
Table_24_71b0entry3d:
	db $1c, $43, $38, $4d, $10, $1c, $40, $43, $4b, $00
Table_24_71b0entry3e:
	db $23, $10, $42, $39, $39, $38, $10, $48, $43, $10, $3b, $39, $48, $10, $37, $40, $43, $47, $39, $46, $10, $48, $43, $10, $3d, $48, $f2, $00
Table_24_71b0entry3f:
	db $23, $10, $42, $39, $39, $38, $10, $48, $43, $10, $3b, $39, $48, $10, $37, $40, $43, $47, $39, $10, $48, $43, $10, $3d, $48, $f2, $00
Table_24_71b0entry40:
	db $23, $10, $42, $39, $39, $38, $10, $48, $43, $10, $37, $46, $39, $35, $48, $39, $10, $41, $43, $46, $39, $0d, $38, $3d, $47, $48, $35, $42, $37, $39, $10, $36, $39, $48, $4b, $39, $39, $42, $10, $49, $47, $f2, $00
Table_24_71b0entry41:
	db $23, $10, $3c, $35, $4a, $39, $10, $48, $43, $10, $3f, $39, $39, $44, $10, $41, $4d, $0d, $38, $3d, $47, $48, $35, $42, $37, $39, $f2, $00
Table_24_71b0entry42:
	db $23, $48, $01, $01, $47, $10, $47, $48, $3d, $40, $40, $10, $48, $43, $43, $10, $3a, $35, $46, $10, $35, $4b, $35, $4d, $f2, $f2, $f2, $00
Table_24_71b0entry43:
	db $27, $4d, $10, $35, $48, $48, $35, $37, $3f, $47, $10, $4b, $43, $42, $01, $01, $48, $10, $46, $39, $35, $37, $3c, $0d, $3d, $48, $f2, $f2, $f2, $00
Table_24_71b0entry44:
	db $23, $48, $01, $01, $47, $10, $48, $43, $43, $10, $37, $40, $43, $47, $39, $fa, $00
Table_24_71b0entry45:
	db $23, $10, $42, $39, $39, $38, $10, $48, $43, $10, $36, $35, $37, $3f, $10, $43, $3a, $3a, $f2, $f2, $f2, $00
Table_24_71b0entry46:
	db $20, $3d, $46, $47, $48, $e1, $10, $23, $10, $42, $39, $39, $38, $10, $48, $43, $10, $37, $40, $43, $47, $39, $10, $3d, $42, $0d, $43, $42, $10, $48, $3c, $39, $10, $39, $42, $39, $41, $4d, $f2, $00
Table_24_71b0entry47:
	db $22, $39, $46, $39, $10, $23, $10, $37, $43, $41, $39, $fa, $00
Table_24_71b0entry48:
	db $20, $3d, $46, $47, $48, $e1, $10, $23, $10, $42, $39, $39, $38, $10, $48, $43, $10, $41, $35, $3f, $39, $0d, $47, $43, $41, $39, $10, $38, $3d, $47, $48, $35, $42, $37, $39, $f2, $0d, $00
Table_24_71b0entry49:
	db $2e, $3c, $3d, $47, $10, $3d, $47, $10, $35, $40, $40, $10, $47, $43, $10, $47, $49, $38, $38, $39, $42, $e1, $0d, $37, $35, $42, $10, $23, $10, $39, $4a, $39, $42, $10, $3a, $3d, $3b, $3c, $48, $10, $4b, $39, $40, $40, $f9, $00
Table_24_71b0entry4a:
	db $1c, $49, $48, $f2, $f2, $f2, $0d, $23, $10, $3c, $35, $4a, $39, $10, $42, $43, $10, $37, $3c, $43, $3d, $37, $39, $fa, $00
Table_24_71b0entry4b:
	db $29, $3f, $35, $4d, $e1, $10, $3c, $39, $46, $39, $10, $23, $10, $3b, $43, $fa, $00
Table_24_71b0entry4c:
	db $26, $39, $48, $01, $01, $47, $10, $47, $39, $39, $10, $3c, $43, $4b, $10, $41, $4d, $0d, $48, $46, $35, $3d, $42, $3d, $42, $3b, $01, $01, $47, $10, $44, $35, $3d, $38, $10, $43, $3a, $3a, $fa, $00
Table_24_71b0entry4d:
	db $2e, $3c, $3d, $47, $10, $3d, $47, $10, $3d, $48, $f2, $0d, $23, $01, $01, $41, $10, $3b, $43, $42, $42, $35, $10, $3b, $3d, $4a, $39, $10, $3d, $48, $0d, $39, $4a, $39, $46, $4d, $48, $3c, $3d, $42, $3b, $10, $23, $01, $01, $4a, $39, $10, $3b, $43, $48, $fa, $00
endc