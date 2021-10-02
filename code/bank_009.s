; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

GameState38_DayPeriodTransition::
; todo:
	M_FarCall ReturnMostAffectionateGirlInA

; HL = day period double idxed into table
	ld   a, [sDayPeriodIdx]                                         ; $4014
	ld   h, $00                                                     ; $4017
	ld   l, a                                                       ; $4019
	add  hl, hl                                                     ; $401a
	add  hl, hl                                                     ; $401b
	ld   bc, .dayPeriodTransitions                                  ; $401c
	add  hl, bc                                                     ; $401f

; First 2 bytes determine time of day, and dorm room opts setup idx
	ld   a, [hl+]                                                   ; $4020
	ld   [wTimeOfDay], a                                            ; $4021
	ld   a, [hl+]                                                   ; $4024
	ld   [wDormRoomOptionsSetupIdx], a                              ; $4025

; Word after is the handler for the day+period
	ld   a, [hl+]                                                   ; $4028
	ld   h, [hl]                                                    ; $4029
	ld   l, a                                                       ; $402a
	jp   hl                                                         ; $402b

macro DayPeriodTransition
	db \1, \2
	dw \3
endm

.dayPeriodTransitions:
	DayPeriodTransition $00, DROS_EXPLORE_DAY_FOCUS_1, DPTransition00_SetDay1
	DayPeriodTransition $00, DROS_EXPLORE_DAY_FOCUS_1, DPTransition01
	DayPeriodTransition $0e, DROS_SAVE_SLEEP,          DPTransition02_SetDormRoomState
	DayPeriodTransition $0e, DROS_SAVE_SLEEP,          DPTransition03
	DayPeriodTransition $00, DROS_EXPLORE_DAY_FOCUS_1, DPTransition04_DisplayCurrDate
	DayPeriodTransition $00, DROS_EXPLORE_DAY_FOCUS_1, DPTransition05
	DayPeriodTransition $00, DROS_EXPLORE_DAY_FOCUS_1, DPTransition06
	DayPeriodTransition $01, DROS_TRAIN_NAP_1,         DPTransition07
	DayPeriodTransition $02, DROS_TRAIN_NAP_1,         DPTransition08
	DayPeriodTransition $02, DROS_TRAIN_NAP_1,         DPTransition09
	DayPeriodTransition $03, DROS_TRAIN_NAP_1,         DPTransition0a
	DayPeriodTransition $04, DROS_TRAIN_NAP_1,         DPTransition0b
	DayPeriodTransition $05, DROS_TRAIN_NAP_1,         DPTransition0c
	DayPeriodTransition $05, DROS_EXPLORE_DAY_FOCUS_2, DPTransition0d
	DayPeriodTransition $06, DROS_EXPLORE_DAY_FOCUS_2, DPTransition0e
	DayPeriodTransition $07, DROS_EXPLORE_DAY_FOCUS_2, DPTransition0f
	DayPeriodTransition $08, DROS_TRAIN_NAP_2,         DPTransition10
	DayPeriodTransition $09, DROS_TRAIN_NAP_2,         DPTransition11
	DayPeriodTransition $09, DROS_TRAIN_NAP_2,         DPTransition12
	DayPeriodTransition $0a, DROS_TRAIN_NAP_2,         DPTransition13
	DayPeriodTransition $0b, DROS_TRAIN_NAP_2,         DPTransition14
	DayPeriodTransition $0c, DROS_TRAIN_NAP_2,         DPTransition15
	DayPeriodTransition $0c, DROS_EXPLORE_NIGHT,       DPTransition16
	DayPeriodTransition $0d, DROS_EXPLORE_NIGHT,       DPTransition17
	DayPeriodTransition $0e, DROS_EXPLORE_NIGHT,       DPTransition18
	DayPeriodTransition $0e, DROS_SAVE_SLEEP,          DPTransition19
	DayPeriodTransition $0e, DROS_SAVE_SLEEP,          DPTransition1a
	DayPeriodTransition $00, DROS_EXPLORE_DAY_FOCUS_1, DPTransition1b
	DayPeriodTransition $00, DROS_EXPLORE_DAY_FOCUS_1, DPTransition1c
	DayPeriodTransition $00, DROS_EXPLORE_DAY_FOCUS_1, DPTransition1d
	DayPeriodTransition $01, DROS_TRAIN_NAP_1,         DPTransition1e
	DayPeriodTransition $02, DROS_TRAIN_NAP_1,         DPTransition1f
	DayPeriodTransition $02, DROS_TRAIN_NAP_1,         DPTransition20
	DayPeriodTransition $03, DROS_TRAIN_NAP_1,         DPTransition21
	DayPeriodTransition $04, DROS_TRAIN_NAP_1,         DPTransition22
	DayPeriodTransition $09, DROS_TRAIN_NAP_1,         DPTransition23
	DayPeriodTransition $09, DROS_EXAM,                DPTransition24
	DayPeriodTransition $0a, DROS_EXAM,                DPTransition25
	DayPeriodTransition $0b, DROS_EXAM,                DPTransition26
	DayPeriodTransition $0c, DROS_EXAM,                DPTransition27
	DayPeriodTransition $0c, DROS_EXPLORE_NIGHT,       DPTransition28
	DayPeriodTransition $0d, DROS_EXPLORE_NIGHT,       DPTransition29
	DayPeriodTransition $0e, DROS_EXPLORE_NIGHT,       DPTransition2a
	DayPeriodTransition $0e, DROS_SAVE_SLEEP,          DPTransition2b
	DayPeriodTransition $0e, DROS_SAVE_SLEEP,          DPTransition2c


DPTransition00_SetDay1:
; Set day to 1, then go to next dp idx
	ld   a, $01                                                     ; $40e0
	ld   [sCurrDay], a                                              ; $40e2

	ld   hl, sDayPeriodIdx                                          ; $40e5
	inc  [hl]                                                       ; $40e8
	ret                                                             ; $40e9


DPTransition01:
;
	ld   a, [wWramBank]                                  ; $40ea: $fa $93 $c2
	push af                                          ; $40ed: $f5

	ld   a, $02                                      ; $40ee: $3e $02
	ld   [wWramBank], a                                  ; $40f0: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $40f3: $e0 $70

;
	ld   a, $07                                      ; $40f5: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $40f7: $cd $e0 $1c

;
	ld   a, [wTimeOfDay]                                  ; $40fa: $fa $20 $cb
	call Call_009_4841                               ; $40fd: $cd $41 $48
	or   a                                           ; $4100: $b7
	jr   z, .done                              ; $4101: $28 $3f

	ld   a, [$dc9c]                                  ; $4103: $fa $9c $dc
	ld   [$cb22], a                                  ; $4106: $ea $22 $cb
	ld   a, [$dc9d]                                  ; $4109: $fa $9d $dc
	ld   [$cb23], a                                  ; $410c: $ea $23 $cb
	ld   a, [wNextMainConvoScriptIdx]                                  ; $410f: $fa $9e $dc
	ld   [wMainConvoScriptIdx], a                                  ; $4112: $ea $24 $cb
	ld   a, [wNextMainConvoScriptIdx+1]                                  ; $4115: $fa $9f $dc
	and  $03                                         ; $4118: $e6 $03
	ld   [wMainConvoScriptIdx+1], a                                  ; $411a: $ea $25 $cb
	ld   h, $38                                      ; $411d: $26 $38
	ld   l, $00                                      ; $411f: $2e $00
	ld   a, [wMainConvoScriptIdx]                                  ; $4121: $fa $24 $cb
	ld   c, a                                        ; $4124: $4f
	ld   a, [wMainConvoScriptIdx+1]                                  ; $4125: $fa $25 $cb
	ld   b, a                                        ; $4128: $47
	ld   a, [$cb22]                                  ; $4129: $fa $22 $cb
	ld   d, a                                        ; $412c: $57
	xor  a                                           ; $412d: $af

	M_FarCall SetMainConvoState

.done:
;
	pop  af                                          ; $4142: $f1
	ld   [wWramBank], a                                  ; $4143: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4146: $e0 $70

;
	ld   hl, sDayPeriodIdx                                   ; $4148: $21 $b1 $af
	inc  [hl]                                        ; $414b: $34
	ret                                              ; $414c: $c9


DPTransition02_SetDormRoomState:
; Use unchanged setup idx and set state
	ld   a, [wDormRoomOptionsSetupIdx]                              ; $414d
	ld   h, GS_DAY_PERIOD_TRANSITION                                ; $4150
	ld   l, $00                                                     ; $4152

	M_FarCall SetDormRoomState

; Go to next dp idx
	ld   hl, sDayPeriodIdx                                          ; $4168
	inc  [hl]                                                       ; $416b
	ret                                                             ; $416c


DPTransition03:
	jp   DPTransition1a                               ; $416d: $c3 $fb $42


DPTransition04_DisplayCurrDate:
	ld   a, [$cc1d]                                  ; $4170: $fa $1d $cc
	or   a                                           ; $4173: $b7
	jr   z, .setDayPassedState                              ; $4174: $28 $12

; Else set file load display state
	xor  a                                           ; $4176: $af
	ld   [$cc1d], a                                  ; $4177: $ea $1d $cc

; Set file load display state, and inc dp idx
	ld   a, GS_FILE_LOAD_DISPLAY                                    ; $417a
	ld   [wGameState], a                                            ; $417c
	xor  a                                                          ; $417f
	ld   [wGameSubstate], a                                         ; $4180

	ld   hl, sDayPeriodIdx                                          ; $4183
	inc  [hl]                                                       ; $4186
	ret                                                             ; $4187

.setDayPassedState:
; Set file day passed state, and inc dp idx
	ld   a, GS_DAY_PASSED                                           ; $4188
	ld   [wGameState], a                                            ; $418a
	xor  a                                                          ; $418d
	ld   [wGameSubstate], a                                         ; $418e

	ld   hl, sDayPeriodIdx                                          ; $4191
	inc  [hl]                                                       ; $4194
	ret                                                             ; $4195


DPTransition05:
	ld   a, [sCurrDay]                                  ; $4196: $fa $b0 $af
	cp   32                                         ; $4199: $fe $20
	jr   c, .notEndOfGame                              ; $419b: $38 $19

	ld   h, $36                                      ; $419d: $26 $36
	ld   l, $00                                      ; $419f: $2e $00

	M_FarCall SetGameResultsState
	ret                                              ; $41b5: $c9

.notEndOfGame:
DPTransition08:
DPTransition0a:
DPTransition0b:
DPTransition0c:
DPTransition0f:
DPTransition10:
DPTransition11:
DPTransition13:
DPTransition14:
DPTransition15:
DPTransition18:
	ld   a, [wWramBank]                                  ; $41b6: $fa $93 $c2
	push af                                          ; $41b9: $f5

;
	ld   a, $02                                      ; $41ba: $3e $02
	ld   [wWramBank], a                                  ; $41bc: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $41bf: $e0 $70

;
	ld   a, [wTimeOfDay]                                  ; $41c1: $fa $20 $cb
	call Call_009_4841                               ; $41c4: $cd $41 $48
	or   a                                           ; $41c7: $b7
	jr   z, .done                              ; $41c8: $28 $4e

; B = 3 if night, else 2
	ld   b, $03                                      ; $41ca: $06 $03
	call ClearCarryIfNightElseSetIt                               ; $41cc: $cd $3e $45
	jr   c, :+                              ; $41cf: $38 $02
	ld   b, $02                                      ; $41d1: $06 $02
:	push bc                                          ; $41d3: $c5

;
	ld   a, $07                                      ; $41d4: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $41d6: $cd $e0 $1c
	ld   a, [$dc9c]                                  ; $41d9: $fa $9c $dc
	ld   [$cb22], a                                  ; $41dc: $ea $22 $cb
	ld   a, [$dc9d]                                  ; $41df: $fa $9d $dc
	ld   [$cb23], a                                  ; $41e2: $ea $23 $cb
	ld   a, [wNextMainConvoScriptIdx]                                  ; $41e5: $fa $9e $dc
	ld   [wMainConvoScriptIdx], a                                  ; $41e8: $ea $24 $cb
	ld   a, [wNextMainConvoScriptIdx+1]                                  ; $41eb: $fa $9f $dc
	and  $03                                         ; $41ee: $e6 $03
	ld   [wMainConvoScriptIdx+1], a                                  ; $41f0: $ea $25 $cb
	ld   h, $38                                      ; $41f3: $26 $38
	ld   l, $00                                      ; $41f5: $2e $00
	ld   a, [wMainConvoScriptIdx]                                  ; $41f7: $fa $24 $cb
	ld   c, a                                        ; $41fa: $4f
	ld   a, [wMainConvoScriptIdx+1]                                  ; $41fb: $fa $25 $cb
	ld   b, a                                        ; $41fe: $47
	ld   a, [$cb22]                                  ; $41ff: $fa $22 $cb
	ld   d, a                                        ; $4202: $57
	pop  af                                          ; $4203: $f1

	M_FarCall SetMainConvoState

.done:
;
	pop  af                                          ; $4218: $f1
	ld   [wWramBank], a                                  ; $4219: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $421c: $e0 $70

;
	ld   hl, sDayPeriodIdx                                   ; $421e: $21 $b1 $af
	inc  [hl]                                        ; $4221: $34
	ret                                              ; $4222: $c9


DPTransition07:
DPTransition0e:
DPTransition17:
	ld   a, [wWramBank]                                  ; $4223: $fa $93 $c2
	push af                                          ; $4226: $f5
	ld   a, $02                                      ; $4227: $3e $02
	ld   [wWramBank], a                                  ; $4229: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $422c: $e0 $70
	ld   a, [wTimeOfDay]                                  ; $422e: $fa $20 $cb
	call Call_009_4874                               ; $4231: $cd $74 $48
	ld   b, $10                                      ; $4234: $06 $10
	ld   hl, $dcb0                                   ; $4236: $21 $b0 $dc

jr_009_4239:
	ld   a, [hl+]                                    ; $4239: $2a
	or   a                                           ; $423a: $b7
	jr   z, jr_009_426e                              ; $423b: $28 $31

	ld   b, $03                                      ; $423d: $06 $03
	call ClearCarryIfNightElseSetIt                               ; $423f: $cd $3e $45
	jr   c, jr_009_4246                              ; $4242: $38 $02

	ld   b, $02                                      ; $4244: $06 $02

jr_009_4246:
	ld   a, b                                        ; $4246: $78
	call PlaySong                                       ; $4247: $cd $92 $1a
	ld   a, $07                                      ; $424a: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $424c: $cd $e0 $1c
	xor  a                                           ; $424f: $af
	ld   [$cb36], a                                  ; $4250: $ea $36 $cb
	ld   [$cb38], a                                  ; $4253: $ea $38 $cb
	ld   [wExploreFloor], a                                  ; $4256: $ea $2f $cb
	ld   a, $0e                                      ; $4259: $3e $0e
	ld   [wExploreCursorX], a                                  ; $425b: $ea $37 $cb
	ld   a, $18                                      ; $425e: $3e $18
	ld   [wExploreCursorY], a                                  ; $4260: $ea $39 $cb
	ld   a, GS_EXPLORE                                      ; $4263: $3e $39
	ld   [wGameState], a                                  ; $4265: $ea $a0 $c2
	xor  a                                           ; $4268: $af
	ld   [wGameSubstate], a                                  ; $4269: $ea $a1 $c2
	jr   jr_009_4271                                 ; $426c: $18 $03

jr_009_426e:
	dec  b                                           ; $426e: $05
	jr   nz, jr_009_4239                             ; $426f: $20 $c8

jr_009_4271:
	pop  af                                          ; $4271: $f1
	ld   [wWramBank], a                                  ; $4272: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4275: $e0 $70
	ld   hl, sDayPeriodIdx                                   ; $4277: $21 $b1 $af
	inc  [hl]                                        ; $427a: $34
	ret                                              ; $427b: $c9


DPTransition09:
	ld   a, [sCurrDay]                                  ; $427c: $fa $b0 $af
	dec  a                                           ; $427f: $3d
	dec  a                                           ; $4280: $3d
	ld   h, a                                        ; $4281: $67
	ld   l, $07                                      ; $4282: $2e $07
	call HLequHdivModL                                       ; $4284: $cd $fb $0b
	ld   a, l                                        ; $4287: $7d
	inc  a                                           ; $4288: $3c
	ld   [$cb1e], a                                  ; $4289: $ea $1e $cb
	cp   $07                                         ; $428c: $fe $07
	jr   nz, jr_009_42bb                             ; $428e: $20 $2b

	ld   hl, sDayPeriodIdx                                   ; $4290: $21 $b1 $af
	inc  [hl]                                        ; $4293: $34
	inc  [hl]                                        ; $4294: $34
	ret                                              ; $4295: $c9


DPTransition12:
	ld   a, [sCurrDay]                                  ; $4296: $fa $b0 $af
	dec  a                                           ; $4299: $3d
	dec  a                                           ; $429a: $3d
	ld   h, a                                        ; $429b: $67
	ld   l, $07                                      ; $429c: $2e $07
	call HLequHdivModL                                       ; $429e: $cd $fb $0b
	ld   a, l                                        ; $42a1: $7d
	cp   $05                                         ; $42a2: $fe $05
	jr   z, jr_009_42b6                              ; $42a4: $28 $10

	cp   $06                                         ; $42a6: $fe $06
	jr   nz, jr_009_42b0                             ; $42a8: $20 $06

	ld   hl, sDayPeriodIdx                                   ; $42aa: $21 $b1 $af
	inc  [hl]                                        ; $42ad: $34
	inc  [hl]                                        ; $42ae: $34
	ret                                              ; $42af: $c9


jr_009_42b0:
	xor  a                                           ; $42b0: $af
	ld   [$cb1e], a                                  ; $42b1: $ea $1e $cb
	jr   jr_009_42bb                                 ; $42b4: $18 $05

jr_009_42b6:
	ld   a, $09                                      ; $42b6: $3e $09
	ld   [$cb1e], a                                  ; $42b8: $ea $1e $cb


DPTransition06:
DPTransition0d:
DPTransition16:
DPTransition19:
jr_009_42bb:
;
	ld   b, $03                                      ; $42bb: $06 $03
	call ClearCarryIfNightElseSetIt                               ; $42bd: $cd $3e $45
	jr   c, :+                              ; $42c0: $38 $02
	ld   b, $02                                      ; $42c2: $06 $02
:	ld   a, b                                        ; $42c4: $78
	call PlaySong                                       ; $42c5: $cd $92 $1a
	ld   a, $07                                      ; $42c8: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $42ca: $cd $e0 $1c
	xor  a                                           ; $42cd: $af
	ld   [wExploreFloor], a                                  ; $42ce: $ea $2f $cb
	ld   a, $0e                                      ; $42d1: $3e $0e
	ld   [wExploreCursorX], a                                  ; $42d3: $ea $37 $cb
	ld   a, $18                                      ; $42d6: $3e $18
	ld   [wExploreCursorY], a                                  ; $42d8: $ea $39 $cb

;
	ld   a, [wDormRoomOptionsSetupIdx]                                  ; $42db: $fa $7e $cc
	ld   h, GS_DAY_PERIOD_TRANSITION                                      ; $42de: $26 $38
	ld   l, $00                                      ; $42e0: $2e $00

	M_FarCall SetDormRoomState

	ld   hl, sDayPeriodIdx                                   ; $42f6: $21 $b1 $af
	inc  [hl]                                        ; $42f9: $34
	ret                                              ; $42fa: $c9


DPTransition1a:
	ld   hl, sCurrDay                                   ; $42fb: $21 $b0 $af
	inc  [hl]                                        ; $42fe: $34
	ld   h, [hl]                                     ; $42ff: $66
	ld   l, $07                                      ; $4300: $2e $07
	call HLequHdivModL                                       ; $4302: $cd $fb $0b
	ld   h, $00                                      ; $4305: $26 $00
	add  hl, hl                                      ; $4307: $29
	ld   bc, $4310                                   ; $4308: $01 $10 $43
	add  hl, bc                                      ; $430b: $09
	ld   a, [hl+]                                    ; $430c: $2a
	ld   h, [hl]                                     ; $430d: $66
	ld   l, a                                        ; $430e: $6f
	jp   hl                                          ; $430f: $e9


	ld   e, $43                                      ; $4310: $1e $43
	ld   l, $43                                      ; $4312: $2e $43
	inc  h                                           ; $4314: $24
	ld   b, e                                        ; $4315: $43
	ld   l, $43                                      ; $4316: $2e $43
	ld   l, $43                                      ; $4318: $2e $43
	ld   l, $43                                      ; $431a: $2e $43
	ld   l, $43                                      ; $431c: $2e $43
	ld   a, $1b                                      ; $431e: $3e $1b
	ld   [sDayPeriodIdx], a                                  ; $4320: $ea $b1 $af
	ret                                              ; $4323: $c9


	ld   a, $80                                      ; $4324: $3e $80
	ld   [$b0ac], a                                  ; $4326: $ea $ac $b0
	ld   a, $7f                                      ; $4329: $3e $7f
	ld   [$b0ad], a                                  ; $432b: $ea $ad $b0
	ld   a, $04                                      ; $432e: $3e $04
	ld   [sDayPeriodIdx], a                                  ; $4330: $ea $b1 $af
	ret                                              ; $4333: $c9


DPTransition1b:
	jp   DPTransition04_DisplayCurrDate                               ; $4334: $c3 $70 $41


DPTransition1c:
DPTransition1f:
DPTransition21:
DPTransition22:
DPTransition23:
DPTransition25:
DPTransition26:
DPTransition27:
DPTransition2a:
	ld   a, [wWramBank]                                  ; $4337: $fa $93 $c2
	push af                                          ; $433a: $f5
	ld   a, $02                                      ; $433b: $3e $02
	ld   [wWramBank], a                                  ; $433d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4340: $e0 $70
	ld   a, [wTimeOfDay]                                  ; $4342: $fa $20 $cb
	call Call_009_4841                               ; $4345: $cd $41 $48
	or   a                                           ; $4348: $b7
	jr   z, jr_009_4399                              ; $4349: $28 $4e

	ld   b, $03                                      ; $434b: $06 $03
	call ClearCarryIfNightElseSetIt                               ; $434d: $cd $3e $45
	jr   c, jr_009_4354                              ; $4350: $38 $02

	ld   b, $02                                      ; $4352: $06 $02

jr_009_4354:
	push bc                                          ; $4354: $c5
	ld   a, $07                                      ; $4355: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $4357: $cd $e0 $1c
	ld   a, [$dc9c]                                  ; $435a: $fa $9c $dc
	ld   [$cb22], a                                  ; $435d: $ea $22 $cb
	ld   a, [$dc9d]                                  ; $4360: $fa $9d $dc
	ld   [$cb23], a                                  ; $4363: $ea $23 $cb
	ld   a, [wNextMainConvoScriptIdx]                                  ; $4366: $fa $9e $dc
	ld   [wMainConvoScriptIdx], a                                  ; $4369: $ea $24 $cb
	ld   a, [wNextMainConvoScriptIdx+1]                                  ; $436c: $fa $9f $dc
	and  $03                                         ; $436f: $e6 $03
	ld   [wMainConvoScriptIdx+1], a                                  ; $4371: $ea $25 $cb
	ld   h, $38                                      ; $4374: $26 $38
	ld   l, $00                                      ; $4376: $2e $00
	ld   a, [wMainConvoScriptIdx]                                  ; $4378: $fa $24 $cb
	ld   c, a                                        ; $437b: $4f
	ld   a, [wMainConvoScriptIdx+1]                                  ; $437c: $fa $25 $cb
	ld   b, a                                        ; $437f: $47
	ld   a, [$cb22]                                  ; $4380: $fa $22 $cb
	ld   d, a                                        ; $4383: $57
	pop  af                                          ; $4384: $f1

	M_FarCall SetMainConvoState

jr_009_4399:
	pop  af                                          ; $4399: $f1
	ld   [wWramBank], a                                  ; $439a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $439d: $e0 $70
	ld   hl, sDayPeriodIdx                                   ; $439f: $21 $b1 $af
	inc  [hl]                                        ; $43a2: $34
	ret                                              ; $43a3: $c9


DPTransition1e:
DPTransition29:
	ld   a, [wWramBank]                                  ; $43a4: $fa $93 $c2
	push af                                          ; $43a7: $f5
	ld   a, $02                                      ; $43a8: $3e $02
	ld   [wWramBank], a                                  ; $43aa: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $43ad: $e0 $70
	ld   a, [wTimeOfDay]                                  ; $43af: $fa $20 $cb
	call Call_009_4874                               ; $43b2: $cd $74 $48
	ld   b, $10                                      ; $43b5: $06 $10
	ld   hl, $dcb0                                   ; $43b7: $21 $b0 $dc

jr_009_43ba:
	ld   a, [hl+]                                    ; $43ba: $2a
	or   a                                           ; $43bb: $b7
	jr   z, jr_009_43ef                              ; $43bc: $28 $31

	ld   b, $03                                      ; $43be: $06 $03
	call ClearCarryIfNightElseSetIt                               ; $43c0: $cd $3e $45
	jr   c, jr_009_43c7                              ; $43c3: $38 $02

	ld   b, $02                                      ; $43c5: $06 $02

jr_009_43c7:
	ld   a, b                                        ; $43c7: $78
	call PlaySong                                       ; $43c8: $cd $92 $1a
	ld   a, $07                                      ; $43cb: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $43cd: $cd $e0 $1c
	xor  a                                           ; $43d0: $af
	ld   [$cb36], a                                  ; $43d1: $ea $36 $cb
	ld   [$cb38], a                                  ; $43d4: $ea $38 $cb
	ld   [wExploreFloor], a                                  ; $43d7: $ea $2f $cb
	ld   a, $0e                                      ; $43da: $3e $0e
	ld   [wExploreCursorX], a                                  ; $43dc: $ea $37 $cb
	ld   a, $18                                      ; $43df: $3e $18
	ld   [wExploreCursorY], a                                  ; $43e1: $ea $39 $cb
	ld   a, GS_EXPLORE                                      ; $43e4: $3e $39
	ld   [wGameState], a                                  ; $43e6: $ea $a0 $c2
	xor  a                                           ; $43e9: $af
	ld   [wGameSubstate], a                                  ; $43ea: $ea $a1 $c2
	jr   jr_009_43f2                                 ; $43ed: $18 $03

jr_009_43ef:
	dec  b                                           ; $43ef: $05
	jr   nz, jr_009_43ba                             ; $43f0: $20 $c8

jr_009_43f2:
	pop  af                                          ; $43f2: $f1
	ld   [wWramBank], a                                  ; $43f3: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $43f6: $e0 $70
	ld   hl, sDayPeriodIdx                                   ; $43f8: $21 $b1 $af
	inc  [hl]                                        ; $43fb: $34
	ret                                              ; $43fc: $c9


DPTransition20:
	ld   a, [sCurrDay]                                  ; $43fd: $fa $b0 $af
	dec  a                                           ; $4400: $3d
	dec  a                                           ; $4401: $3d
	ld   h, a                                        ; $4402: $67
	ld   l, $07                                      ; $4403: $2e $07
	call HLequHdivModL                                       ; $4405: $cd $fb $0b
	ld   a, l                                        ; $4408: $7d
	inc  a                                           ; $4409: $3c
	ld   [$cb1e], a                                  ; $440a: $ea $1e $cb
	jr   jr_009_4414                                 ; $440d: $18 $05


DPTransition24:
	ld   a, $09                                      ; $440f: $3e $09
	ld   [$cb1e], a                                  ; $4411: $ea $1e $cb

jr_009_4414:

DPTransition1d:
DPTransition28:
DPTransition2b:
	ld   b, $03                                      ; $4414: $06 $03
	call ClearCarryIfNightElseSetIt                               ; $4416: $cd $3e $45
	jr   c, jr_009_441d                              ; $4419: $38 $02

	ld   b, $02                                      ; $441b: $06 $02

jr_009_441d:
	ld   a, b                                        ; $441d: $78
	call PlaySong                                       ; $441e: $cd $92 $1a
	ld   a, $07                                      ; $4421: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $4423: $cd $e0 $1c
	xor  a                                           ; $4426: $af
	ld   [wExploreFloor], a                                  ; $4427: $ea $2f $cb
	ld   a, $0e                                      ; $442a: $3e $0e
	ld   [wExploreCursorX], a                                  ; $442c: $ea $37 $cb
	ld   a, $18                                      ; $442f: $3e $18
	ld   [wExploreCursorY], a                                  ; $4431: $ea $39 $cb
	ld   a, [wDormRoomOptionsSetupIdx]                                  ; $4434: $fa $7e $cc
	ld   h, GS_DAY_PERIOD_TRANSITION                                      ; $4437: $26 $38
	ld   l, $00                                      ; $4439: $2e $00

	M_FarCall SetDormRoomState

	ld   hl, sDayPeriodIdx                                   ; $444f: $21 $b1 $af
	inc  [hl]                                        ; $4452: $34
	ret                                              ; $4453: $c9


DPTransition2c:
	jp   DPTransition1a                               ; $4454: $c3 $fb $42


Func_09_4457::
	push af                                          ; $4457: $f5
	ld   a, [sCurrDay]                                  ; $4458: $fa $b0 $af
	ld   h, a                                        ; $445b: $67
	ld   l, $07                                      ; $445c: $2e $07
	call HLequHdivModL                                       ; $445e: $cd $fb $0b
	pop  bc                                          ; $4461: $c1
	ld   a, l                                        ; $4462: $7d
	ld   h, $00                                      ; $4463: $26 $00
	ld   l, b                                        ; $4465: $68
	or   a                                           ; $4466: $b7
	jr   z, jr_009_4475                              ; $4467: $28 $0c

	dec  a                                           ; $4469: $3d
	jr   z, jr_009_446c                              ; $446a: $28 $00

jr_009_446c:
	ld   bc, $447e                                   ; $446c: $01 $7e $44
	add  hl, bc                                      ; $446f: $09
	ld   a, [hl]                                     ; $4470: $7e
	ld   [sDayPeriodIdx], a                                  ; $4471: $ea $b1 $af
	ret                                              ; $4474: $c9


jr_009_4475:
	ld   bc, $4488                                   ; $4475: $01 $88 $44
	add  hl, bc                                      ; $4478: $09
	ld   a, [hl]                                     ; $4479: $7e
	ld   [sDayPeriodIdx], a                                  ; $447a: $ea $b1 $af
	ret                                              ; $447d: $c9


	add  hl, de                                      ; $447e: $19
	add  hl, bc                                      ; $447f: $09
	dec  bc                                          ; $4480: $0b
	rrca                                             ; $4481: $0f
	rlca                                             ; $4482: $07
	inc  c                                           ; $4483: $0c
	dec  d                                           ; $4484: $15
	jr   @+$12                                       ; $4485: $18 $10

	ld   [$202b], sp                                 ; $4487: $08 $2b $20
	ld   [hl+], a                                    ; $448a: $22
	inc  h                                           ; $448b: $24
	ld   e, $24                                      ; $448c: $1e $24
	daa                                              ; $448e: $27
	ld   a, [hl+]                                    ; $448f: $2a
	inc  hl                                          ; $4490: $23
	rra                                              ; $4491: $1f

GetSramValOrFlag2:
	push bc                                          ; $4492: $c5
	push de                                          ; $4493: $d5

;
	bit  7, h                                        ; $4494: $cb $7c
	jr   nz, .br_44a3                             ; $4496: $20 $0b

	ld   a, h                                        ; $4498: $7c
	and  $07                                         ; $4499: $e6 $07
	ld   h, a                                        ; $449b: $67
	ld   bc, sSramVals2                                   ; $449c: $01 $b0 $af
	add  hl, bc                                      ; $449f: $09
	ld   a, [hl]                                     ; $44a0: $7e
	jr   .done                                 ; $44a1: $18 $29

.br_44a3:
	ld   a, h                                        ; $44a3: $7c
	and  $07                                         ; $44a4: $e6 $07
	ld   h, a                                        ; $44a6: $67

; Clear BC
	ld   b, $00                                      ; $44a7: $06 $00
	ld   c, b                                        ; $44a9: $48

; Low 3 bits of C is low 3 bits of L inverted
	srl  h                                           ; $44aa: $cb $3c
	rr   l                                           ; $44ac: $cb $1d
	rl   c                                           ; $44ae: $cb $11

	srl  h                                           ; $44b0: $cb $3c
	rr   l                                           ; $44b2: $cb $1d
	rl   c                                           ; $44b4: $cb $11

	srl  h                                           ; $44b6: $cb $3c
	rr   l                                           ; $44b8: $cb $1d
	rl   c                                           ; $44ba: $cb $11

; DE = orig HL / 8
	ld   d, h                                        ; $44bc: $54
	ld   e, l                                        ; $44bd: $5d

; Get appropriate bit based on orig low 3 bits of L
	ld   hl, BitTable                                   ; $44be: $21 $cf $44
	add  hl, bc                                      ; $44c1: $09
	ld   a, [hl]                                     ; $44c2: $7e

;
	ld   hl, sGlobalFlags2                                   ; $44c3: $21 $b0 $b0
	add  hl, de                                      ; $44c6: $19
	and  [hl]                                        ; $44c7: $a6
	jr   z, .done                              ; $44c8: $28 $02

	ld   a, $ff                                      ; $44ca: $3e $ff

.done:
	pop  de                                          ; $44cc: $d1
	pop  bc                                          ; $44cd: $c1
	ret                                              ; $44ce: $c9


BitTable:
; Low 3 bits of L was = 0, 4, 2, 6, 1, 5, 3, 7
; ie these entries = 2 ^ L's 3 bits
	db $01, $10, $04, $40, $02, $20, $08, $80


GetSramByte2::
	res  7, h                                        ; $44d7: $cb $bc
	set  6, h                                        ; $44d9: $cb $f4
	jp   GetSramValOrFlag2                               ; $44db: $c3 $92 $44


CheckIfFlagSet2::
	set  7, h                                        ; $44de: $cb $fc
	res  6, h                                        ; $44e0: $cb $b4
	jp   GetSramValOrFlag2                               ; $44e2: $c3 $92 $44


SetSramValOrFlag2:
	push bc                                          ; $44e5: $c5
	push de                                          ; $44e6: $d5
	bit  7, h                                        ; $44e7: $cb $7c
	jr   nz, .br_44f8                             ; $44e9: $20 $0d

	push af                                          ; $44eb: $f5
	ld   a, h                                        ; $44ec: $7c
	and  $07                                         ; $44ed: $e6 $07
	ld   h, a                                        ; $44ef: $67
	pop  af                                          ; $44f0: $f1
	ld   bc, sSramVals2                                   ; $44f1: $01 $b0 $af
	add  hl, bc                                      ; $44f4: $09
	ld   [hl], a                                     ; $44f5: $77
	jr   .done                                 ; $44f6: $18 $35

.br_44f8:
	push af                                          ; $44f8: $f5
	ld   a, h                                        ; $44f9: $7c
	and  $07                                         ; $44fa: $e6 $07
	ld   h, a                                        ; $44fc: $67
	pop  af                                          ; $44fd: $f1
	ld   b, $00                                      ; $44fe: $06 $00
	ld   c, b                                        ; $4500: $48
	srl  h                                           ; $4501: $cb $3c
	rr   l                                           ; $4503: $cb $1d
	rl   c                                           ; $4505: $cb $11
	srl  h                                           ; $4507: $cb $3c
	rr   l                                           ; $4509: $cb $1d
	rl   c                                           ; $450b: $cb $11
	srl  h                                           ; $450d: $cb $3c
	rr   l                                           ; $450f: $cb $1d
	rl   c                                           ; $4511: $cb $11
	ld   d, h                                        ; $4513: $54
	ld   e, l                                        ; $4514: $5d
	ld   hl, BitTable                                   ; $4515: $21 $cf $44
	add  hl, bc                                      ; $4518: $09
	or   a                                           ; $4519: $b7
	jr   z, .br_4525                              ; $451a: $28 $09

	ld   a, [hl]                                     ; $451c: $7e
	ld   hl, sGlobalFlags2                                   ; $451d: $21 $b0 $b0
	add  hl, de                                      ; $4520: $19
	or   [hl]                                        ; $4521: $b6
	ld   [hl], a                                     ; $4522: $77
	jr   .done                                 ; $4523: $18 $08

.br_4525:
	ld   a, [hl]                                     ; $4525: $7e
	cpl                                              ; $4526: $2f
	ld   hl, sGlobalFlags2                                   ; $4527: $21 $b0 $b0
	add  hl, de                                      ; $452a: $19
	and  [hl]                                        ; $452b: $a6
	ld   [hl], a                                     ; $452c: $77

.done:
	pop  de                                          ; $452d: $d1
	pop  bc                                          ; $452e: $c1
	ret                                              ; $452f: $c9


SetSramByte2::
	res  7, h                                        ; $4530: $cb $bc
	set  6, h                                        ; $4532: $cb $f4
	jp   SetSramValOrFlag2                               ; $4534: $c3 $e5 $44


SetOrUnsetFlag2::
	set  7, h                                        ; $4537: $cb $fc
	res  6, h                                        ; $4539: $cb $b4
	jp   SetSramValOrFlag2                               ; $453b: $c3 $e5 $44


ClearCarryIfNightElseSetIt::
	ld   a, [wTimeOfDay]                                  ; $453e: $fa $20 $cb
	cp   $0c                                         ; $4541: $fe $0c
	ret                                              ; $4543: $c9


; Returns idx in A
GetNameIdxOfTimeOfDay::
	push bc                                                         ; $4544
	push hl                                                         ; $4545

; HL points to idx for name idx of time of day
	ld   a, [wTimeOfDay]                                            ; $4546
	ld   b, $00                                                     ; $4549
	ld   c, a                                                       ; $454b
	ld   hl, .nameIdxes                                             ; $454c
	add  hl, bc                                                     ; $454f

; Return value in A
	ld   a, [hl]                                                    ; $4550

	pop  hl                                                         ; $4551
	pop  bc                                                         ; $4552
	ret                                                             ; $4553

.nameIdxes:
rept 5
	db TOD_MORNING
endr
rept 7
	db TOD_NOON
endr
rept 4
	db TOD_NIGHT
endr


GameState3b_MainConvo::
; Branch based on substate
	ld   a, [wGameSubstate]                                         ; $4564
	cp   $02                                                        ; $4567
	jp   z, MainConvoSubstate2                                      ; $4569

	cp   $01                                                        ; $456c
	jp   z, MainConvoSubstate1                                      ; $456e

; Substate 0 - clear display regs, then turn on LCD
	call ClearDisplayRegsAllowVBlankInt                                       ; $4571: $cd $59 $0b

	ld   a, [wLCDC]                                  ; $4574: $fa $03 $c2
	and  $e0                                         ; $4577: $e6 $e0
	or   $87                                         ; $4579: $f6 $87
	ld   [wLCDC], a                                  ; $457b: $ea $03 $c2
	ldh  [rLCDC], a                                  ; $457e: $e0 $40

;
	ld   a, BANK(Palettes_AllWhite)                                      ; $4580: $3e $01
	ld   hl, Palettes_AllWhite                                   ; $4582: $21 $00 $70
	ld   de, wBGPalettes                                   ; $4585: $11 $de $c2
	ld   bc, $0080                                   ; $4588: $01 $80 $00
	call FarMemCopy                                       ; $458b: $cd $b2 $09

	ld   bc, $003f                                   ; $458e: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4591: $cd $aa $04

;
	ld   a, $ff                                      ; $4594: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $4596: $ea $0e $c2

	call ClearOam                                       ; $4599: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $459c: $cd $c9 $2e

;
	ld   bc, $0000                                   ; $459f: $01 $00 $00

	M_FarCall SetAnimSpriteType0CoordsRelativeTo
	M_FarCall InitScriptEngine

	ld   a, [$cb22]                                  ; $45ca: $fa $22 $cb
	call Call_009_4643                               ; $45cd: $cd $43 $46
	ld   [$cba6], a                                  ; $45d0: $ea $a6 $cb
	ld   a, [wMainConvoScriptSong]                                  ; $45d3: $fa $26 $cb
	ld   [wScriptSongToPlay], a                                  ; $45d6: $ea $c8 $cb
	xor  a                                           ; $45d9: $af
	ld   [$cba8], a                                  ; $45da: $ea $a8 $cb
	ld   [$cbaa], a                                  ; $45dd: $ea $aa $cb
	ld   [$cba9], a                                  ; $45e0: $ea $a9 $cb
	inc  a                                           ; $45e3: $3c
	ld   [$cbab], a                                  ; $45e4: $ea $ab $cb

; Script idx is a triple idx into the script sources table
	ld   a, [wMainConvoScriptIdx]                                   ; $45e7
	ld   c, a                                                       ; $45ea
	ld   a, [wMainConvoScriptIdx+1]                                 ; $45eb
	ld   b, a                                                       ; $45ee

	ld   hl, ScriptSources                                          ; $45ef
	add  hl, bc                                                     ; $45f2
	add  hl, bc                                                     ; $45f3
	add  hl, bc                                                     ; $45f4

; Copy the 3 bytes (addr, then bank)
	ld   a, BANK(ScriptSources)                                     ; $45f5
	ld   de, wBaseScriptAddr                                        ; $45f7
	ld   bc, $0003                                                  ; $45fa
	call FarMemCopy                                                 ; $45fd

; HL = word copied above, +$4000 to get actual script src addr
	ld   a, [wBaseScriptAddr]                                       ; $4600
	ld   l, a                                                       ; $4603
	ld   a, [wBaseScriptAddr+1]                                     ; $4604
	ld   h, a                                                       ; $4607
	ld   bc, $4000                                                  ; $4608
	add  hl, bc                                                     ; $460b

; Scripts start from bank $41, start running our selected script
	ld   a, [wBaseScriptBank]                                       ; $460c
	add  SCRIPT_DATA_BANK                                           ; $460f
	
	M_FarCall StartRunningScript
	
;
	ld   a, [wMainConvoScriptIdx]                                  ; $4625: $fa $24 $cb
	ld   l, a                                        ; $4628: $6f
	ld   a, [wMainConvoScriptIdx+1]                                  ; $4629: $fa $25 $cb
	and  $03                                         ; $462c: $e6 $03
	set  2, a                                        ; $462e: $cb $d7
	ld   h, a                                        ; $4630: $67

;
	ld   a, $ff                                      ; $4631: $3e $ff
	call SetOrUnsetFlag2                               ; $4633: $cd $37 $45

;
	xor  a                                           ; $4636: $af
	ld   [$cb27], a                                  ; $4637: $ea $27 $cb
	ld   [$cb28], a                                  ; $463a: $ea $28 $cb

;
	ld   a, $02                                      ; $463d: $3e $02
	ld   [wGameSubstate], a                                  ; $463f: $ea $a1 $c2
	ret                                              ; $4642: $c9


; A -
Call_009_4643:
	ld   hl, .table                                   ; $4643: $21 $5d $46

.nextEntry:
; Return 0 once we've reached the end of the table
	bit  7, [hl]                                     ; $4646: $cb $7e
	jr   nz, .return0                             ; $4648: $20 $11

; Ignore table entry if the 1st byte does not match param
	cp   [hl]                                        ; $464a: $be
	jr   nz, .toNextEntry                             ; $464b: $20 $09

; Return 2nd byte if day, else 3rd byte
	inc  hl                                          ; $464d: $23
	call ClearCarryIfNightElseSetIt                               ; $464e: $cd $3e $45
	jr   c, :+                              ; $4651: $38 $01
	inc  hl                                          ; $4653: $23
:	ld   a, [hl]                                     ; $4654: $7e
	ret                                              ; $4655: $c9

.toNextEntry:
	inc  hl                                          ; $4656: $23
	inc  hl                                          ; $4657: $23
	inc  hl                                          ; $4658: $23
	jr   .nextEntry                                 ; $4659: $18 $eb

.return0:
	xor  a                                           ; $465b: $af
	ret                                              ; $465c: $c9

.table:
	db $01, $01, $02
	db $02, $22, $24
	db $03, $1e, $20
	db $04, $19, $1a
	db $05, $15, $15
	db $08, $2d, $2e
	db $09, $29, $2b
	db $0a, $1b, $1d
	db $0b, $5a, $5b
	db $0c, $9d, $b0
	db $0d, $2f, $30
	db $0e, $88, $89
	db $0f, $26, $28
	db $10, $13, $14
	db $12, $07, $09
	db $13, $04, $06
	db $14, $3d, $3e
	db $15, $4c, $4c
	db $16, $48, $48
	db $17, $46, $46
	db $19, $5e, $5e
	db $1a, $42, $42
	db $1b, $4a, $4a
	db $1c, $44, $44
	db $1d, $36, $38
	db $1e, $5e, $5e
	db $1f, $33, $35
	db $20, $3f, $40
	db $22, $31, $32
	db $23, $72, $72
	db $24, $64, $64
	db $25, $71, $71
	db $26, $7b, $7b
	db $28, $6e, $6e
	db $29, $66, $66
	db $2a, $65, $65
	db $2b, $78, $78
	db $2c, $63, $63
	db $2d, $5a, $5b
	db $80


MainConvoSubstate1:
;
	call ClearDisplayRegsAllowVBlankInt                                       ; $46d3: $cd $59 $0b

	ld   a, [wLCDC]                                  ; $46d6: $fa $03 $c2
	and  $e0                                         ; $46d9: $e6 $e0
	or   $87                                         ; $46db: $f6 $87
	ld   [wLCDC], a                                  ; $46dd: $ea $03 $c2
	ldh  [rLCDC], a                                  ; $46e0: $e0 $40

;
	ld   a, BANK(Palettes_AllWhite)                                      ; $46e2: $3e $01
	ld   hl, Palettes_AllWhite                                   ; $46e4: $21 $00 $70
	ld   de, wBGPalettes                                   ; $46e7: $11 $de $c2
	ld   bc, $0080                                   ; $46ea: $01 $80 $00
	call FarMemCopy                                       ; $46ed: $cd $b2 $09

	ld   bc, $003f                                   ; $46f0: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $46f3: $cd $aa $04

;
	ld   a, $ff                                      ; $46f6: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $46f8: $ea $0e $c2

	call ClearOam                                       ; $46fb: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $46fe: $cd $c9 $2e

	M_FarCall Func_08_4045
	
;
	xor  a                                           ; $4715: $af
	ld   [$cb27], a                                  ; $4716: $ea $27 $cb
	ld   [$cb28], a                                  ; $4719: $ea $28 $cb

	ld   a, $02                                      ; $471c: $3e $02
	ld   [wGameSubstate], a                                  ; $471e: $ea $a1 $c2
	ret                                              ; $4721: $c9


MainConvoSubstate2:
;
	call ClearOam                                       ; $4722: $cd $d7 $0d

	ld   bc, .return                                   ; $4725: $01 $38 $47
	push bc                                          ; $4728: $c5

;
	ld   a, [$cb27]                                  ; $4729: $fa $27 $cb
	ld   h, $00                                      ; $472c: $26 $00
	ld   l, a                                        ; $472e: $6f
	add  hl, hl                                      ; $472f: $29
	ld   bc, .table                                   ; $4730: $01 $3c $47
	add  hl, bc                                      ; $4733: $09

;
	ld   a, [hl+]                                    ; $4734: $2a
	ld   h, [hl]                                     ; $4735: $66
	ld   l, a                                        ; $4736: $6f
	jp   hl                                          ; $4737: $e9

.return:
	call AnimateAllAnimatedSpriteSpecs                                       ; $4738: $cd $d3 $2e
	ret                                              ; $473b: $c9

.table:
	dw .entry0
	dw .entry1
	dw .entry2
	dw .entry3

.entry0:
	ld   hl, $cb28                                   ; $4744: $21 $28 $cb
	ld   a, [hl]                                     ; $4747: $7e
	inc  [hl]                                        ; $4748: $34

	M_FarCall todo_ClearsAndLoadsGfxForConvoScreens

	or   a                                           ; $475d: $b7
	ret  nz                                          ; $475e: $c0

	M_FarCall Func_0a_4934

	ld   hl, wBGPalettes                                   ; $4773: $21 $de $c2
	ld   bc, $0004                                   ; $4776: $01 $04 $00
	ld   de, $7fff                                   ; $4779: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $477c: $cd $9f $09
	ld   hl, $cb27                                   ; $477f: $21 $27 $cb
	inc  [hl]                                        ; $4782: $34
	xor  a                                           ; $4783: $af
	ld   [$cb28], a                                  ; $4784: $ea $28 $cb
	ret                                              ; $4787: $c9

.entry1:
	M_FarCall HandleScriptEngine
	ld   a, [wScriptEngineIsRunning]                                  ; $479c: $fa $51 $cb
	or   a                                           ; $479f: $b7
	ret  nz                                          ; $47a0: $c0

	ld   hl, $cb27                                   ; $47a1: $21 $27 $cb
	inc  [hl]                                        ; $47a4: $34
	xor  a                                           ; $47a5: $af
	ld   [$cb28], a                                  ; $47a6: $ea $28 $cb
	ret                                              ; $47a9: $c9

.entry2:
	M_FarCall HandleScriptEngine

	ld   a, [$cb28]                                  ; $47be: $fa $28 $cb
	or   a                                           ; $47c1: $b7
	jr   nz, .cont_47dc                             ; $47c2: $20 $18

	xor  a                                           ; $47c4: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $47c5: $ea $62 $c3
	ld   a, $40                                      ; $47c8: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $47ca: $ea $63 $c3
	ld   a, $03                                      ; $47cd: $3e $03
	ld   b, $00                                      ; $47cf: $06 $00
	ld   hl, wBGPalettes                                   ; $47d1: $21 $de $c2
	ld   c, BANK(Palettes_AllWhite)                                      ; $47d4: $0e $01
	ld   de, Palettes_AllWhite                                   ; $47d6: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $47d9: $cd $48 $07

.cont_47dc:
	ld   hl, $cb28                                   ; $47dc: $21 $28 $cb
	ld   a, [hl]                                     ; $47df: $7e
	inc  [hl]                                        ; $47e0: $34
	cp   $3f                                         ; $47e1: $fe $3f
	jr   nc, .br_47ee                             ; $47e3: $30 $09

	and  $07                                         ; $47e5: $e6 $07
	ld   bc, $0040                                   ; $47e7: $01 $40 $00
	call z, FadePalettesAndSetRangeToUpdate                                    ; $47ea: $cc $32 $08
	ret                                              ; $47ed: $c9

.br_47ee:
	ld   a, BANK(Palettes_AllWhite)                                      ; $47ee: $3e $01
	ld   hl, Palettes_AllWhite                                   ; $47f0: $21 $00 $70
	ld   de, wBGPalettes                                   ; $47f3: $11 $de $c2
	ld   bc, $0080                                   ; $47f6: $01 $80 $00
	call FarMemCopy                                       ; $47f9: $cd $b2 $09
	ld   bc, $003f                                   ; $47fc: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $47ff: $cd $aa $04
	ld   hl, $cb27                                   ; $4802: $21 $27 $cb
	inc  [hl]                                        ; $4805: $34
	xor  a                                           ; $4806: $af
	ld   [$cb28], a                                  ; $4807: $ea $28 $cb
	ret                                              ; $480a: $c9

.entry3:
	ld   hl, $cb28                                   ; $480b: $21 $28 $cb
	ld   a, [hl]                                     ; $480e: $7e
	inc  [hl]                                        ; $480f: $34
	cp   $0f                                         ; $4810: $fe $0f
	ret  c                                           ; $4812: $d8

; Return to state before this
	ld   a, [wMainConvoReturnState]                                 ; $4813
	ld   [wGameState], a                                            ; $4816
	ld   a, [wMainConvoReturnSubstate]                              ; $4819
	ld   [wGameSubstate], a                                         ; $481c
	ret                                                             ; $481f


; A - song to play during convo
; BC - script idx
; D -
; H - return state
; L - return substate
SetMainConvoState::
; Set song to play during convo, then script idx
	ld   [wMainConvoScriptSong], a                                  ; $4820

	ld   a, b                                                       ; $4823
	ld   [wMainConvoScriptIdx+1], a                                 ; $4824
	ld   a, c                                                       ; $4827
	ld   [wMainConvoScriptIdx], a                                   ; $4828

;
	ld   a, d                                        ; $482b: $7a
	ld   [$cb22], a                                  ; $482c: $ea $22 $cb

; Set return state/substate
	ld   a, h                                                       ; $482f
	ld   [wMainConvoReturnState], a                                 ; $4830
	ld   a, l                                                       ; $4833
	ld   [wMainConvoReturnSubstate], a                              ; $4834

; Then set main convo state
	ld   a, GS_MAIN_CONVO                                           ; $4837
	ld   [wGameState], a                                            ; $4839
	xor  a                                                          ; $483c
	ld   [wGameSubstate], a                                         ; $483d
	ret                                                             ; $4840


Call_009_4841:
;
	ld   a, [wWramBank]                                  ; $4841: $fa $93 $c2
	push af                                          ; $4844: $f5

	ld   a, $02                                      ; $4845: $3e $02
	ld   [wWramBank], a                                  ; $4847: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $484a: $e0 $70

;
	ld   hl, $d340                                   ; $484c: $21 $40 $d3
	ld   bc, $0400                                   ; $484f: $01 $00 $04
	ld   a, $00                                      ; $4852: $3e $00
	call MemSet                                       ; $4854: $cd $96 $09

;
	ld   hl, $dcb0                                   ; $4857: $21 $b0 $dc
	ld   bc, $0010                                   ; $485a: $01 $10 $00
	ld   a, $00                                      ; $485d: $3e $00
	call MemSet                                       ; $485f: $cd $96 $09

;
	call Call_009_48c0                               ; $4862: $cd $c0 $48
	call Call_009_4912                               ; $4865: $cd $12 $49
	call Call_009_4aa1                               ; $4868: $cd $a1 $4a
	ld   b, a                                        ; $486b: $47

;
	pop  af                                          ; $486c: $f1
	ld   [wWramBank], a                                  ; $486d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4870: $e0 $70
	ld   a, b                                        ; $4872: $78
	ret                                              ; $4873: $c9


Call_009_4874:
	ld   a, [wWramBank]                                  ; $4874: $fa $93 $c2
	push af                                          ; $4877: $f5
	ld   a, $02                                      ; $4878: $3e $02
	ld   [wWramBank], a                                  ; $487a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $487d: $e0 $70
	ld   hl, $d340                                   ; $487f: $21 $40 $d3
	ld   bc, $0400                                   ; $4882: $01 $00 $04
	ld   a, $00                                      ; $4885: $3e $00
	call MemSet                                       ; $4887: $cd $96 $09
	ld   hl, $dcb0                                   ; $488a: $21 $b0 $dc
	ld   bc, $0010                                   ; $488d: $01 $10 $00
	ld   a, $00                                      ; $4890: $3e $00
	call MemSet                                       ; $4892: $cd $96 $09
	ld   hl, $db80                                   ; $4895: $21 $80 $db
	ld   bc, $00c0                                   ; $4898: $01 $c0 $00
	ld   a, $ff                                      ; $489b: $3e $ff
	call MemSet                                       ; $489d: $cd $96 $09
	ld   hl, $dc50                                   ; $48a0: $21 $50 $dc
	ld   bc, $0040                                   ; $48a3: $01 $40 $00
	ld   a, $03                                      ; $48a6: $3e $03
	call MemSet                                       ; $48a8: $cd $96 $09
	ld   a, $ff                                      ; $48ab: $3e $ff
	ld   [$dc50], a                                  ; $48ad: $ea $50 $dc
	call Call_009_48c0                               ; $48b0: $cd $c0 $48
	call Call_009_4b1a                               ; $48b3: $cd $1a $4b
	call Call_009_4bd2                               ; $48b6: $cd $d2 $4b
	pop  af                                          ; $48b9: $f1
	ld   [wWramBank], a                                  ; $48ba: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $48bd: $e0 $70
	ret                                              ; $48bf: $c9


Call_009_48c0:
	ld   hl, $dcc0                                   ; $48c0: $21 $c0 $dc
	ld   bc, $0010                                   ; $48c3: $01 $10 $00
	ld   a, $00                                      ; $48c6: $3e $00
	call MemSet                                       ; $48c8: $cd $96 $09
	ld   de, $dca0                                   ; $48cb: $11 $a0 $dc
	ld   hl, $afc0                                   ; $48ce: $21 $c0 $af
	ld   bc, $0010                                   ; $48d1: $01 $10 $00
	call MemCopy                                       ; $48d4: $cd $a9 $09
	xor  a                                           ; $48d7: $af

jr_009_48d8:
	ld   [$dc90], a                                  ; $48d8: $ea $90 $dc
	ld   b, $00                                      ; $48db: $06 $00
	ld   c, a                                        ; $48dd: $4f
	ld   hl, $dca0                                   ; $48de: $21 $a0 $dc
	add  hl, bc                                      ; $48e1: $09
	ld   b, [hl]                                     ; $48e2: $46
	ld   c, $00                                      ; $48e3: $0e $00
	ld   hl, $dca0                                   ; $48e5: $21 $a0 $dc
	xor  a                                           ; $48e8: $af

jr_009_48e9:
	ld   [$dc91], a                                  ; $48e9: $ea $91 $dc
	ld   a, b                                        ; $48ec: $78
	cp   [hl]                                        ; $48ed: $be
	jr   nc, jr_009_48f1                             ; $48ee: $30 $01

	inc  c                                           ; $48f0: $0c

jr_009_48f1:
	inc  hl                                          ; $48f1: $23
	ld   a, [$dc91]                                  ; $48f2: $fa $91 $dc
	inc  a                                           ; $48f5: $3c
	cp   $10                                         ; $48f6: $fe $10
	jr   c, jr_009_48e9                              ; $48f8: $38 $ef

	ld   b, $00                                      ; $48fa: $06 $00
	ld   hl, $dcc0                                   ; $48fc: $21 $c0 $dc
	add  hl, bc                                      ; $48ff: $09

jr_009_4900:
	ld   a, [hl+]                                    ; $4900: $2a
	or   a                                           ; $4901: $b7
	jr   nz, jr_009_4900                             ; $4902: $20 $fc

	dec  hl                                          ; $4904: $2b
	ld   a, [$dc90]                                  ; $4905: $fa $90 $dc
	ld   [hl], a                                     ; $4908: $77
	ld   a, [$dc90]                                  ; $4909: $fa $90 $dc
	inc  a                                           ; $490c: $3c
	cp   $10                                         ; $490d: $fe $10
	jr   c, jr_009_48d8                              ; $490f: $38 $c7

	ret                                              ; $4911: $c9


Call_009_4912:
	xor  a                                           ; $4912: $af

.bigLoop:
;
	ld   [$dc90], a                                  ; $4913: $ea $90 $dc
	ld   b, $00                                      ; $4916: $06 $00
	ld   c, a                                        ; $4918: $4f
	swap c                                           ; $4919: $cb $31
	sla  c                                           ; $491b: $cb $21
	rl   b                                           ; $491d: $cb $10
	sla  c                                           ; $491f: $cb $21
	rl   b                                           ; $4921: $cb $10
	ld   hl, $d340                                   ; $4923: $21 $40 $d3
	add  hl, bc                                      ; $4926: $09

;
	ld   d, h                                        ; $4927: $54
	ld   e, l                                        ; $4928: $5d
	ld   hl, Table_09_4996                                   ; $4929: $21 $96 $49
	ld   a, [sCurrDay]                                  ; $492c: $fa $b0 $af
	and  $18                                         ; $492f: $e6 $18
	sla  a                                           ; $4931: $cb $27
	sla  a                                           ; $4933: $cb $27
	ld   b, $00                                      ; $4935: $06 $00
	ld   c, a                                        ; $4937: $4f
	add  hl, bc                                      ; $4938: $09

;
	ld   a, [wTimeOfDay]                                  ; $4939: $fa $20 $cb
	sla  a                                           ; $493c: $cb $27
	ld   b, $00                                      ; $493e: $06 $00
	ld   c, a                                        ; $4940: $4f
	add  hl, bc                                      ; $4941: $09

;
	ld   a, [hl+]                                    ; $4942: $2a
	ld   b, [hl]                                     ; $4943: $46
	ld   c, a                                        ; $4944: $4f
	ld   hl, $4000                                   ; $4945: $21 $00 $40
	add  hl, bc                                      ; $4948: $09
	xor  a                                           ; $4949: $af

.nextDayGroupEntry:
	ld   [$dc91], a                                  ; $494a: $ea $91 $dc

;
	push de                                          ; $494d: $d5
	push hl                                          ; $494e: $e5
	ld   a, $40                                      ; $494f: $3e $40
	ld   de, $dc94                                   ; $4951: $11 $94 $dc
	ld   bc, $0008                                   ; $4954: $01 $08 $00
	call FarMemCopy                                       ; $4957: $cd $b2 $09
	call Call_009_4a16                               ; $495a: $cd $16 $4a
	pop  hl                                          ; $495d: $e1
	pop  de                                          ; $495e: $d1

;
	or   a                                           ; $495f: $b7
	jr   z, .end                              ; $4960: $28 $2a

	bit  7, a                                        ; $4962: $cb $7f
	jr   nz, .toNextDayGroupEntry                             ; $4964: $20 $1b

	ld   a, [$dc9c]                                  ; $4966: $fa $9c $dc
	ld   [de], a                                     ; $4969: $12
	inc  de                                          ; $496a: $13
	ld   a, [$dc9d]                                  ; $496b: $fa $9d $dc
	ld   [de], a                                     ; $496e: $12
	inc  de                                          ; $496f: $13
	ld   a, [wNextMainConvoScriptIdx]                                  ; $4970: $fa $9e $dc
	ld   [de], a                                     ; $4973: $12
	inc  de                                          ; $4974: $13
	ld   a, [wNextMainConvoScriptIdx+1]                                  ; $4975: $fa $9f $dc
	ld   [de], a                                     ; $4978: $12
	inc  de                                          ; $4979: $13
	ld   a, [$dc91]                                  ; $497a: $fa $91 $dc
	inc  a                                           ; $497d: $3c
	ld   [$dc91], a                                  ; $497e: $ea $91 $dc

.toNextDayGroupEntry:
	ld   bc, $0008                                   ; $4981: $01 $08 $00
	add  hl, bc                                      ; $4984: $09
	ld   a, [$dc91]                                  ; $4985: $fa $91 $dc
	cp   $10                                         ; $4988: $fe $10
	jr   c, .nextDayGroupEntry                              ; $498a: $38 $be

.end:
	ld   a, [$dc90]                                  ; $498c: $fa $90 $dc
	inc  a                                           ; $498f: $3c
	cp   $10                                         ; $4990: $fe $10
	jp   c, .bigLoop                            ; $4992: $da $13 $49

	ret                                              ; $4995: $c9


; Entries per group are for hour in the day
Table_09_4996:
; Day 1 - 8
	dw Data_40_4000-$4000
	dw Data_40_4031-$4000
	dw $0162
	dw $0173
	dw $01a4
	dw $01a5
	dw $01b6
	dw $0327
	dw $0328
	dw $0329
	dw $0342
	dw $0383
	dw $0384
	dw $039d
	dw $04ce
	dw $04e7

; Day 9 - 16
	dw $04e8
	dw $0521
	dw $06ba
	dw $06c3
	dw $06f4
	dw $06f5
	dw $06f6
	dw $089f
	dw $08a0
	dw $08a1
	dw $08b2
	dw $08fb
	dw $08fc
	dw $0905
	dw $0aa6
	dw $0ab7

; Day 17 - 24
	dw $0ab8
	dw $0b31
	dw $0d02
	dw $0d0b
	dw $0d3c
	dw $0d3d
	dw $0d3e
	dw $0f5f
	dw $0f60
	dw $0f61
	dw $0f72
	dw $0fbb
	dw $0fbc
	dw $0fd5
	dw $11a6
	dw $11ef

; Day 25 - 32
	dw $11f0
	dw $1279
	dw $139a
	dw $13a3
	dw $13d4
	dw $13d5
	dw $13d6
	dw $1517
	dw $1518
	dw $1519
	dw $152a
	dw $1573
	dw $1574
	dw $157d
	dw $16e6
	dw $1727


Call_009_4a16:
; No more entries for the day group once the 1st byte == 0
	ld   hl, $dc94                                   ; $4a16: $21 $94 $dc
	ld   a, [hl+]                                    ; $4a19: $2a
	or   a                                           ; $4a1a: $b7
	ret  z                                           ; $4a1b: $c8

;
	ld   a, [$dc90]                                  ; $4a1c: $fa $90 $dc
	ld   b, a                                        ; $4a1f: $47
	inc  hl                                          ; $4a20: $23
	ld   a, [hl-]                                    ; $4a21: $3a
	dec  hl                                          ; $4a22: $2b
	and  $f0                                         ; $4a23: $e6 $f0
	swap a                                           ; $4a25: $cb $37
	cp   b                                           ; $4a27: $b8
	jp   z, Jump_009_4a2e                            ; $4a28: $ca $2e $4a

	ld   a, $ff                                      ; $4a2b: $3e $ff
	ret                                              ; $4a2d: $c9

Jump_009_4a2e:
	ld   hl, $dc9c                                   ; $4a2e: $21 $9c $dc
	xor  a                                           ; $4a31: $af
	ld   [hl+], a                                    ; $4a32: $22
	ld   [hl+], a                                    ; $4a33: $22
	ld   [hl+], a                                    ; $4a34: $22
	ld   [hl+], a                                    ; $4a35: $22

; todo: 1st byte into dc9c and B
	ld   hl, $dc94                                   ; $4a36: $21 $94 $dc
	ld   a, [hl+]                                    ; $4a39: $2a
	ld   b, a                                        ; $4a3a: $47
	and  $7f                                         ; $4a3b: $e6 $7f
	ld   [$dc9c], a                                  ; $4a3d: $ea $9c $dc

; todo: 2nd byte into dc9e and E
	ld   a, [hl+]                                    ; $4a40: $2a
	ld   e, a                                        ; $4a41: $5f
	ld   [wNextMainConvoScriptIdx], a                                  ; $4a42: $ea $9e $dc

; todo: 3rd byte into dc9f and D
	ld   a, [hl+]                                    ; $4a45: $2a
	ld   d, a                                        ; $4a46: $57
	ld   [wNextMainConvoScriptIdx+1], a                                  ; $4a47: $ea $9f $dc

; Jump if bit 7 clear on the 1st byte
	bit  7, b                                        ; $4a4a: $cb $78
	jr   z, .br_4a60                              ; $4a4c: $28 $12

; todo: de becomes a flag 2 that we check
	push hl                                          ; $4a4e: $e5
	ld   l, e                                        ; $4a4f: $6b
	ld   a, d                                        ; $4a50: $7a
	and  $03                                         ; $4a51: $e6 $03
	set  2, a                                        ; $4a53: $cb $d7
	ld   h, a                                        ; $4a55: $67
	call CheckIfFlagSet2                               ; $4a56: $cd $de $44
	pop  hl                                          ; $4a59: $e1

; Jump if the flag is not set
	or   a                                           ; $4a5a: $b7
	jr   z, .br_4a60                              ; $4a5b: $28 $03

.retFFh:
;
	ld   a, $ff                                      ; $4a5d: $3e $ff
	ret                                              ; $4a5f: $c9

.br_4a60:
; todo: 4th byte's nybbles+1 determines BC
	ld   a, [hl]                                     ; $4a60: $7e
	swap a                                           ; $4a61: $cb $37
	and  $0f                                         ; $4a63: $e6 $0f
	ld   b, a                                        ; $4a65: $47
	ld   a, [hl+]                                    ; $4a66: $2a
	and  $0f                                         ; $4a67: $e6 $0f
	ld   c, a                                        ; $4a69: $4f
	inc  c                                           ; $4a6a: $0c

; Jump if the current day of the week is not between the 2 days (inclusive) in the 4th btye
	ld   a, [sCurrDay]                                  ; $4a6b: $fa $b0 $af
	and  $07                                         ; $4a6e: $e6 $07
	cp   b                                           ; $4a70: $b8
	jr   c, .retFFh                              ; $4a71: $38 $ea

	cp   c                                           ; $4a73: $b9
	jr   nc, .retFFh                             ; $4a74: $30 $e7

;
	ld   a, [hl+]                                    ; $4a76: $2a
	ld   c, a                                        ; $4a77: $4f
	ld   a, [hl+]                                    ; $4a78: $2a
	ld   b, a                                        ; $4a79: $47
	ld   a, [hl+]                                    ; $4a7a: $2a
	add  SCRIPT_DATA_BANK                                         ; $4a7b: $c6 $41
	push hl                                          ; $4a7d: $e5
	ld   hl, $4000                                   ; $4a7e: $21 $00 $40
	add  hl, bc                                      ; $4a81: $09

	M_FarCall StartAndProcessScriptCalcStack

	pop  hl                                          ; $4a96: $e1
	or   a                                           ; $4a97: $b7
	jr   z, .retFFh                              ; $4a98: $28 $c3

	ld   a, [hl]                                     ; $4a9a: $7e
	ld   [$dc9d], a                                  ; $4a9b: $ea $9d $dc
	ld   a, $01                                      ; $4a9e: $3e $01
	ret                                              ; $4aa0: $c9


Call_009_4aa1:
	xor  a                                           ; $4aa1: $af

Jump_009_4aa2:
	ld   [$dc90], a                                  ; $4aa2: $ea $90 $dc
	xor  a                                           ; $4aa5: $af

jr_009_4aa6:
	ld   [$dc91], a                                  ; $4aa6: $ea $91 $dc
	call Call_009_4aef                               ; $4aa9: $cd $ef $4a
	ld   a, [hl]                                     ; $4aac: $7e
	or   a                                           ; $4aad: $b7
	jr   z, jr_009_4ad5                              ; $4aae: $28 $25

	push hl                                          ; $4ab0: $e5
	ld   a, $64                                      ; $4ab1: $3e $64
	ld   [wRandomNumRange], a                                  ; $4ab3: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $4ab6: $cd $10 $0d
	ld   b, a                                        ; $4ab9: $47
	pop  hl                                          ; $4aba: $e1
	ld   a, [hl+]                                    ; $4abb: $2a
	cp   b                                           ; $4abc: $b8
	jr   c, jr_009_4ad5                              ; $4abd: $38 $16

	ld   a, [hl+]                                    ; $4abf: $2a
	ld   [$dc9c], a                                  ; $4ac0: $ea $9c $dc
	ld   a, [hl+]                                    ; $4ac3: $2a
	ld   [wNextMainConvoScriptIdx], a                                  ; $4ac4: $ea $9e $dc
	ld   a, [hl]                                     ; $4ac7: $7e
	ld   [wNextMainConvoScriptIdx+1], a                                  ; $4ac8: $ea $9f $dc
	and  $f0                                         ; $4acb: $e6 $f0
	swap a                                           ; $4acd: $cb $37
	ld   [$dc9d], a                                  ; $4acf: $ea $9d $dc
	ld   a, $ff                                      ; $4ad2: $3e $ff
	ret                                              ; $4ad4: $c9


jr_009_4ad5:
	ld   a, [$dc91]                                  ; $4ad5: $fa $91 $dc
	inc  a                                           ; $4ad8: $3c
	cp   $10                                         ; $4ad9: $fe $10
	jr   c, jr_009_4aa6                              ; $4adb: $38 $c9

	ld   a, [$dc90]                                  ; $4add: $fa $90 $dc
	inc  a                                           ; $4ae0: $3c
	cp   $10                                         ; $4ae1: $fe $10
	jp   c, Jump_009_4aa2                            ; $4ae3: $da $a2 $4a

	xor  a                                           ; $4ae6: $af
	ld   hl, $dc9c                                   ; $4ae7: $21 $9c $dc
	ld   [hl+], a                                    ; $4aea: $22
	ld   [hl+], a                                    ; $4aeb: $22
	ld   [hl+], a                                    ; $4aec: $22
	ld   [hl+], a                                    ; $4aed: $22
	ret                                              ; $4aee: $c9


Call_009_4aef:
	ld   a, [$dc91]                                  ; $4aef: $fa $91 $dc
	ld   b, $00                                      ; $4af2: $06 $00
	ld   c, a                                        ; $4af4: $4f
	ld   hl, $dcc0                                   ; $4af5: $21 $c0 $dc
	add  hl, bc                                      ; $4af8: $09
	ld   b, $00                                      ; $4af9: $06 $00
	ld   c, [hl]                                     ; $4afb: $4e
	swap c                                           ; $4afc: $cb $31
	sla  c                                           ; $4afe: $cb $21
	rl   b                                           ; $4b00: $cb $10
	sla  c                                           ; $4b02: $cb $21
	rl   b                                           ; $4b04: $cb $10
	ld   hl, $d340                                   ; $4b06: $21 $40 $d3
	add  hl, bc                                      ; $4b09: $09
	ld   a, [$dc90]                                  ; $4b0a: $fa $90 $dc
	ld   b, $00                                      ; $4b0d: $06 $00
	ld   c, a                                        ; $4b0f: $4f
	sla  c                                           ; $4b10: $cb $21
	rl   b                                           ; $4b12: $cb $10
	sla  c                                           ; $4b14: $cb $21
	rl   b                                           ; $4b16: $cb $10
	add  hl, bc                                      ; $4b18: $09
	ret                                              ; $4b19: $c9


Call_009_4b1a:
	xor  a                                           ; $4b1a: $af

Jump_009_4b1b:
	ld   [$dc90], a                                  ; $4b1b: $ea $90 $dc
	cp   $0d                                         ; $4b1e: $fe $0d
	jp   z, Jump_009_4b99                            ; $4b20: $ca $99 $4b

	ld   b, $00                                      ; $4b23: $06 $00
	ld   c, a                                        ; $4b25: $4f
	swap c                                           ; $4b26: $cb $31
	sla  c                                           ; $4b28: $cb $21
	rl   b                                           ; $4b2a: $cb $10
	sla  c                                           ; $4b2c: $cb $21
	rl   b                                           ; $4b2e: $cb $10
	ld   hl, $d340                                   ; $4b30: $21 $40 $d3
	add  hl, bc                                      ; $4b33: $09
	ld   d, h                                        ; $4b34: $54
	ld   e, l                                        ; $4b35: $5d
	ld   hl, Table_09_4996                                   ; $4b36: $21 $96 $49
	ld   a, [sCurrDay]                                  ; $4b39: $fa $b0 $af
	and  $18                                         ; $4b3c: $e6 $18
	sla  a                                           ; $4b3e: $cb $27
	sla  a                                           ; $4b40: $cb $27
	ld   b, $00                                      ; $4b42: $06 $00
	ld   c, a                                        ; $4b44: $4f
	add  hl, bc                                      ; $4b45: $09
	ld   a, [wTimeOfDay]                                  ; $4b46: $fa $20 $cb
	sla  a                                           ; $4b49: $cb $27
	ld   b, $00                                      ; $4b4b: $06 $00
	ld   c, a                                        ; $4b4d: $4f
	add  hl, bc                                      ; $4b4e: $09
	ld   a, [hl+]                                    ; $4b4f: $2a
	ld   b, [hl]                                     ; $4b50: $46
	ld   c, a                                        ; $4b51: $4f
	ld   hl, $4000                                   ; $4b52: $21 $00 $40
	add  hl, bc                                      ; $4b55: $09
	xor  a                                           ; $4b56: $af

jr_009_4b57:
	ld   [$dc91], a                                  ; $4b57: $ea $91 $dc
	push de                                          ; $4b5a: $d5
	push hl                                          ; $4b5b: $e5
	ld   a, $40                                      ; $4b5c: $3e $40
	ld   de, $dc94                                   ; $4b5e: $11 $94 $dc
	ld   bc, $0008                                   ; $4b61: $01 $08 $00
	call FarMemCopy                                       ; $4b64: $cd $b2 $09
	call Call_009_4ba3                               ; $4b67: $cd $a3 $4b
	pop  hl                                          ; $4b6a: $e1
	pop  de                                          ; $4b6b: $d1
	or   a                                           ; $4b6c: $b7
	jr   z, jr_009_4b99                              ; $4b6d: $28 $2a

	bit  7, a                                        ; $4b6f: $cb $7f
	jr   nz, jr_009_4b8e                             ; $4b71: $20 $1b

	ld   a, [$dc9c]                                  ; $4b73: $fa $9c $dc
	ld   [de], a                                     ; $4b76: $12
	inc  de                                          ; $4b77: $13
	ld   a, [$dc9d]                                  ; $4b78: $fa $9d $dc
	ld   [de], a                                     ; $4b7b: $12
	inc  de                                          ; $4b7c: $13
	ld   a, [wNextMainConvoScriptIdx]                                  ; $4b7d: $fa $9e $dc
	ld   [de], a                                     ; $4b80: $12
	inc  de                                          ; $4b81: $13
	ld   a, [wNextMainConvoScriptIdx+1]                                  ; $4b82: $fa $9f $dc
	ld   [de], a                                     ; $4b85: $12
	inc  de                                          ; $4b86: $13
	ld   a, [$dc91]                                  ; $4b87: $fa $91 $dc
	inc  a                                           ; $4b8a: $3c
	ld   [$dc91], a                                  ; $4b8b: $ea $91 $dc

jr_009_4b8e:
	ld   bc, $0008                                   ; $4b8e: $01 $08 $00
	add  hl, bc                                      ; $4b91: $09
	ld   a, [$dc91]                                  ; $4b92: $fa $91 $dc
	cp   $10                                         ; $4b95: $fe $10
	jr   c, jr_009_4b57                              ; $4b97: $38 $be

Jump_009_4b99:
jr_009_4b99:
	ld   a, [$dc90]                                  ; $4b99: $fa $90 $dc
	inc  a                                           ; $4b9c: $3c
	cp   $10                                         ; $4b9d: $fe $10
	jp   c, Jump_009_4b1b                            ; $4b9f: $da $1b $4b

	ret                                              ; $4ba2: $c9


Call_009_4ba3:
	ld   hl, $dc94                                   ; $4ba3: $21 $94 $dc
	ld   a, [hl+]                                    ; $4ba6: $2a
	or   a                                           ; $4ba7: $b7
	ret  z                                           ; $4ba8: $c8

	ld   a, [$dc90]                                  ; $4ba9: $fa $90 $dc
	ld   b, a                                        ; $4bac: $47
	cp   $0c                                         ; $4bad: $fe $0c
	jr   z, jr_009_4bbf                              ; $4baf: $28 $0e

	inc  hl                                          ; $4bb1: $23
	ld   a, [hl-]                                    ; $4bb2: $3a
	dec  hl                                          ; $4bb3: $2b
	and  $f0                                         ; $4bb4: $e6 $f0
	swap a                                           ; $4bb6: $cb $37
	cp   b                                           ; $4bb8: $b8
	jp   z, Jump_009_4a2e                            ; $4bb9: $ca $2e $4a

jr_009_4bbc:
	ld   a, $ff                                      ; $4bbc: $3e $ff
	ret                                              ; $4bbe: $c9


jr_009_4bbf:
	inc  hl                                          ; $4bbf: $23
	ld   a, [hl-]                                    ; $4bc0: $3a
	dec  hl                                          ; $4bc1: $2b
	and  $f0                                         ; $4bc2: $e6 $f0
	swap a                                           ; $4bc4: $cb $37
	cp   $0c                                         ; $4bc6: $fe $0c
	jp   z, Jump_009_4a2e                            ; $4bc8: $ca $2e $4a

	cp   $0d                                         ; $4bcb: $fe $0d
	jp   z, Jump_009_4a2e                            ; $4bcd: $ca $2e $4a

	jr   jr_009_4bbc                                 ; $4bd0: $18 $ea

Call_009_4bd2:
	xor  a                                           ; $4bd2: $af

Jump_009_4bd3:
	ld   [$dc90], a                                  ; $4bd3: $ea $90 $dc
	xor  a                                           ; $4bd6: $af

jr_009_4bd7:
	ld   [$dc91], a                                  ; $4bd7: $ea $91 $dc
	ld   b, $00                                      ; $4bda: $06 $00
	ld   c, a                                        ; $4bdc: $4f
	ld   hl, $dcb0                                   ; $4bdd: $21 $b0 $dc
	add  hl, bc                                      ; $4be0: $09
	ld   a, [hl]                                     ; $4be1: $7e
	or   a                                           ; $4be2: $b7
	jr   nz, jr_009_4c38                             ; $4be3: $20 $53

	ld   a, [$dc91]                                  ; $4be5: $fa $91 $dc
	call Call_009_4cb5                               ; $4be8: $cd $b5 $4c
	ld   a, [hl+]                                    ; $4beb: $2a
	or   a                                           ; $4bec: $b7
	jr   z, jr_009_4c38                              ; $4bed: $28 $49

	ld   a, [hl-]                                    ; $4bef: $3a
	or   a                                           ; $4bf0: $b7
	jr   z, jr_009_4c38                              ; $4bf1: $28 $45

	push hl                                          ; $4bf3: $e5
	ld   a, $64                                      ; $4bf4: $3e $64
	ld   [wRandomNumRange], a                                  ; $4bf6: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $4bf9: $cd $10 $0d
	pop  hl                                          ; $4bfc: $e1
	ld   b, a                                        ; $4bfd: $47
	ld   a, [hl+]                                    ; $4bfe: $2a
	cp   b                                           ; $4bff: $b8
	jr   c, jr_009_4c38                              ; $4c00: $38 $36

	ld   a, [hl+]                                    ; $4c02: $2a
	ld   [$dc9c], a                                  ; $4c03: $ea $9c $dc
	ld   a, [hl+]                                    ; $4c06: $2a
	ld   [wNextMainConvoScriptIdx], a                                  ; $4c07: $ea $9e $dc
	ld   a, [hl]                                     ; $4c0a: $7e
	ld   [wNextMainConvoScriptIdx+1], a                                  ; $4c0b: $ea $9f $dc
	and  $f0                                         ; $4c0e: $e6 $f0
	swap a                                           ; $4c10: $cb $37
	ld   [$dc9d], a                                  ; $4c12: $ea $9d $dc
	ld   a, [$dc91]                                  ; $4c15: $fa $91 $dc
	ld   b, $00                                      ; $4c18: $06 $00
	ld   c, a                                        ; $4c1a: $4f
	ld   hl, $dcc0                                   ; $4c1b: $21 $c0 $dc
	add  hl, bc                                      ; $4c1e: $09
	ld   a, [$dc9d]                                  ; $4c1f: $fa $9d $dc
	cp   [hl]                                        ; $4c22: $be
	jr   nz, jr_009_4c38                             ; $4c23: $20 $13

	call Call_009_4f49                               ; $4c25: $cd $49 $4f
	or   a                                           ; $4c28: $b7
	jr   z, jr_009_4c38                              ; $4c29: $28 $0d

	ld   a, [$dc91]                                  ; $4c2b: $fa $91 $dc
	ld   b, $00                                      ; $4c2e: $06 $00
	ld   c, a                                        ; $4c30: $4f
	ld   hl, $dcb0                                   ; $4c31: $21 $b0 $dc
	add  hl, bc                                      ; $4c34: $09
	ld   a, $ff                                      ; $4c35: $3e $ff
	ld   [hl], a                                     ; $4c37: $77

jr_009_4c38:
	ld   a, [$dc91]                                  ; $4c38: $fa $91 $dc
	inc  a                                           ; $4c3b: $3c
	cp   $10                                         ; $4c3c: $fe $10
	jr   c, jr_009_4bd7                              ; $4c3e: $38 $97

	xor  a                                           ; $4c40: $af

jr_009_4c41:
	ld   [$dc91], a                                  ; $4c41: $ea $91 $dc
	ld   b, $00                                      ; $4c44: $06 $00
	ld   c, a                                        ; $4c46: $4f
	ld   hl, $dcb0                                   ; $4c47: $21 $b0 $dc
	add  hl, bc                                      ; $4c4a: $09
	ld   a, [hl]                                     ; $4c4b: $7e
	or   a                                           ; $4c4c: $b7
	jr   nz, jr_009_4ca3                             ; $4c4d: $20 $54

	ld   a, [$dc91]                                  ; $4c4f: $fa $91 $dc
	call Call_009_4cb5                               ; $4c52: $cd $b5 $4c
	ld   a, [hl+]                                    ; $4c55: $2a
	or   a                                           ; $4c56: $b7
	jr   z, jr_009_4ca3                              ; $4c57: $28 $4a

	ld   a, [hl-]                                    ; $4c59: $3a
	or   a                                           ; $4c5a: $b7
	jr   nz, jr_009_4ca3                             ; $4c5b: $20 $46

	push hl                                          ; $4c5d: $e5
	ld   a, $64                                      ; $4c5e: $3e $64
	ld   [wRandomNumRange], a                                  ; $4c60: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $4c63: $cd $10 $0d
	pop  hl                                          ; $4c66: $e1
	ld   b, a                                        ; $4c67: $47
	ld   a, [hl+]                                    ; $4c68: $2a
	cp   b                                           ; $4c69: $b8
	jr   c, jr_009_4ca3                              ; $4c6a: $38 $37

	inc  hl                                          ; $4c6c: $23
	xor  a                                           ; $4c6d: $af
	ld   [$dc9c], a                                  ; $4c6e: $ea $9c $dc
	ld   a, [hl+]                                    ; $4c71: $2a
	ld   [wNextMainConvoScriptIdx], a                                  ; $4c72: $ea $9e $dc
	ld   a, [hl]                                     ; $4c75: $7e
	ld   [wNextMainConvoScriptIdx+1], a                                  ; $4c76: $ea $9f $dc
	and  $f0                                         ; $4c79: $e6 $f0
	swap a                                           ; $4c7b: $cb $37
	ld   [$dc9d], a                                  ; $4c7d: $ea $9d $dc
	ld   a, [$dc91]                                  ; $4c80: $fa $91 $dc
	ld   b, $00                                      ; $4c83: $06 $00
	ld   c, a                                        ; $4c85: $4f
	ld   hl, $dcc0                                   ; $4c86: $21 $c0 $dc
	add  hl, bc                                      ; $4c89: $09
	ld   a, [$dc9d]                                  ; $4c8a: $fa $9d $dc
	cp   [hl]                                        ; $4c8d: $be
	jr   nz, jr_009_4ca3                             ; $4c8e: $20 $13

	call Call_009_4ce6                               ; $4c90: $cd $e6 $4c
	or   a                                           ; $4c93: $b7
	jr   z, jr_009_4ca3                              ; $4c94: $28 $0d

	ld   a, [$dc91]                                  ; $4c96: $fa $91 $dc
	ld   b, $00                                      ; $4c99: $06 $00
	ld   c, a                                        ; $4c9b: $4f
	ld   hl, $dcb0                                   ; $4c9c: $21 $b0 $dc
	add  hl, bc                                      ; $4c9f: $09
	ld   a, $ff                                      ; $4ca0: $3e $ff
	ld   [hl], a                                     ; $4ca2: $77

jr_009_4ca3:
	ld   a, [$dc91]                                  ; $4ca3: $fa $91 $dc
	inc  a                                           ; $4ca6: $3c
	cp   $10                                         ; $4ca7: $fe $10
	jr   c, jr_009_4c41                              ; $4ca9: $38 $96

	ld   a, [$dc90]                                  ; $4cab: $fa $90 $dc
	inc  a                                           ; $4cae: $3c
	cp   $10                                         ; $4caf: $fe $10
	jp   c, Jump_009_4bd3                            ; $4cb1: $da $d3 $4b

	ret                                              ; $4cb4: $c9


Call_009_4cb5:
	ld   a, [$dc91]                                  ; $4cb5: $fa $91 $dc
	ld   b, $00                                      ; $4cb8: $06 $00
	ld   c, a                                        ; $4cba: $4f
	ld   hl, $dcc0                                   ; $4cbb: $21 $c0 $dc
	add  hl, bc                                      ; $4cbe: $09
	ld   a, [hl]                                     ; $4cbf: $7e
	cp   $0d                                         ; $4cc0: $fe $0d
	jr   nz, jr_009_4cc5                             ; $4cc2: $20 $01

	dec  a                                           ; $4cc4: $3d

jr_009_4cc5:
	ld   b, $00                                      ; $4cc5: $06 $00
	ld   c, a                                        ; $4cc7: $4f
	swap c                                           ; $4cc8: $cb $31
	sla  c                                           ; $4cca: $cb $21
	rl   b                                           ; $4ccc: $cb $10
	sla  c                                           ; $4cce: $cb $21
	rl   b                                           ; $4cd0: $cb $10
	ld   hl, $d340                                   ; $4cd2: $21 $40 $d3
	add  hl, bc                                      ; $4cd5: $09
	ld   a, [$dc90]                                  ; $4cd6: $fa $90 $dc
	ld   b, $00                                      ; $4cd9: $06 $00
	ld   c, a                                        ; $4cdb: $4f
	sla  c                                           ; $4cdc: $cb $21
	rl   b                                           ; $4cde: $cb $10
	sla  c                                           ; $4ce0: $cb $21
	rl   b                                           ; $4ce2: $cb $10
	add  hl, bc                                      ; $4ce4: $09
	ret                                              ; $4ce5: $c9


Call_009_4ce6:
	ld   a, [$dc9d]                                  ; $4ce6: $fa $9d $dc
	swap a                                           ; $4ce9: $cb $37
	ld   b, $00                                      ; $4ceb: $06 $00
	ld   c, a                                        ; $4ced: $4f
	ld   hl, $4d49                                   ; $4cee: $21 $49 $4d
	add  hl, bc                                      ; $4cf1: $09
	add  hl, bc                                      ; $4cf2: $09
	push hl                                          ; $4cf3: $e5
	push hl                                          ; $4cf4: $e5
	ld   a, $ff                                      ; $4cf5: $3e $ff
	ld   [wRandomNumRange], a                                  ; $4cf7: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $4cfa: $cd $10 $0d
	pop  hl                                          ; $4cfd: $e1
	ld   b, $03                                      ; $4cfe: $06 $03

jr_009_4d00:
	sub  [hl]                                        ; $4d00: $96
	jr   c, jr_009_4d08                              ; $4d01: $38 $05

	inc  hl                                          ; $4d03: $23
	inc  hl                                          ; $4d04: $23
	dec  b                                           ; $4d05: $05
	jr   nz, jr_009_4d00                             ; $4d06: $20 $f8

jr_009_4d08:
	inc  hl                                          ; $4d08: $23
	ld   a, [hl]                                     ; $4d09: $7e
	call Call_009_4f77                               ; $4d0a: $cd $77 $4f
	pop  hl                                          ; $4d0d: $e1
	or   a                                           ; $4d0e: $b7
	jr   nz, jr_009_4d40                             ; $4d0f: $20 $2f

	push hl                                          ; $4d11: $e5
	ld   a, $ff                                      ; $4d12: $3e $ff
	ld   [wRandomNumRange], a                                  ; $4d14: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $4d17: $cd $10 $0d
	pop  hl                                          ; $4d1a: $e1
	ld   bc, $0008                                   ; $4d1b: $01 $08 $00
	add  hl, bc                                      ; $4d1e: $09

jr_009_4d1f:
	sub  [hl]                                        ; $4d1f: $96
	jr   c, jr_009_4d26                              ; $4d20: $38 $04

	inc  hl                                          ; $4d22: $23
	inc  hl                                          ; $4d23: $23
	jr   jr_009_4d1f                                 ; $4d24: $18 $f9

jr_009_4d26:
	push hl                                          ; $4d26: $e5

jr_009_4d27:
	dec  hl                                          ; $4d27: $2b
	ld   a, [hl-]                                    ; $4d28: $3a
	or   a                                           ; $4d29: $b7
	jr   z, jr_009_4d35                              ; $4d2a: $28 $09

	call Call_009_4f77                               ; $4d2c: $cd $77 $4f
	or   a                                           ; $4d2f: $b7
	jr   z, jr_009_4d27                              ; $4d30: $28 $f5

	pop  hl                                          ; $4d32: $e1
	jr   jr_009_4d40                                 ; $4d33: $18 $0b

jr_009_4d35:
	pop  hl                                          ; $4d35: $e1

jr_009_4d36:
	inc  hl                                          ; $4d36: $23
	ld   a, [hl+]                                    ; $4d37: $2a
	or   a                                           ; $4d38: $b7
	ret  z                                           ; $4d39: $c8

	call Call_009_4f77                               ; $4d3a: $cd $77 $4f
	or   a                                           ; $4d3d: $b7
	jr   z, jr_009_4d36                              ; $4d3e: $28 $f6

jr_009_4d40:
	ld   [$dc9c], a                                  ; $4d40: $ea $9c $dc
	call Call_009_4f49                               ; $4d43: $cd $49 $4f
	ret                                              ; $4d46: $c9


	nop                                              ; $4d47: $00
	nop                                              ; $4d48: $00
	rst  $38                                         ; $4d49: $ff
	ld   bc, $01ff                                   ; $4d4a: $01 $ff $01
	rst  $38                                         ; $4d4d: $ff
	ld   bc, $01ff                                   ; $4d4e: $01 $ff $01
	rst  $38                                         ; $4d51: $ff
	ld   bc, $01ff                                   ; $4d52: $01 $ff $01
	rst  $38                                         ; $4d55: $ff
	ld   bc, $01ff                                   ; $4d56: $01 $ff $01
	rst  $38                                         ; $4d59: $ff
	ld   bc, $01ff                                   ; $4d5a: $01 $ff $01
	rst  $38                                         ; $4d5d: $ff
	ld   bc, $01ff                                   ; $4d5e: $01 $ff $01
	rst  $38                                         ; $4d61: $ff
	ld   bc, $01ff                                   ; $4d62: $01 $ff $01
	rst  $38                                         ; $4d65: $ff
	ld   bc, $0000                                   ; $4d66: $01 $00 $00
	ld   d, b                                        ; $4d69: $50
	ld   [hl+], a                                    ; $4d6a: $22
	ld   d, b                                        ; $4d6b: $50
	inc  b                                           ; $4d6c: $04
	ld   b, b                                        ; $4d6d: $40
	ld   [de], a                                     ; $4d6e: $12
	nop                                              ; $4d6f: $00
	inc  bc                                          ; $4d70: $03
	inc  h                                           ; $4d71: $24
	inc  c                                           ; $4d72: $0c
	inc  h                                           ; $4d73: $24
	jr   nz, @+$20                                   ; $4d74: $20 $1e

	add  hl, bc                                      ; $4d76: $09
	jr   jr_009_4d98                                 ; $4d77: $18 $1f

	jr   jr_009_4d8a                                 ; $4d79: $18 $0f

	jr   @+$0a                                       ; $4d7b: $18 $08

	jr   jr_009_4d93                                 ; $4d7d: $18 $14

	ld   de, $1102                                   ; $4d7f: $11 $02 $11
	inc  hl                                          ; $4d82: $23
	inc  c                                           ; $4d83: $0c
	jr   z, @+$01                                    ; $4d84: $28 $ff

	inc  hl                                          ; $4d86: $23
	nop                                              ; $4d87: $00
	nop                                              ; $4d88: $00
	ld   e, b                                        ; $4d89: $58

jr_009_4d8a:
	jr   nz, jr_009_4dcc                             ; $4d8a: $20 $40

	add  hl, bc                                      ; $4d8c: $09
	ld   b, b                                        ; $4d8d: $40
	ld   [$1200], sp                                 ; $4d8e: $08 $00 $12
	add  hl, sp                                      ; $4d91: $39
	ld   [hl+], a                                    ; $4d92: $22

jr_009_4d93:
	ld   h, $0f                                      ; $4d93: $26 $0f
	ld   h, $0c                                      ; $4d95: $26 $0c
	inc  e                                           ; $4d97: $1c

jr_009_4d98:
	rra                                              ; $4d98: $1f
	inc  d                                           ; $4d99: $14
	inc  b                                           ; $4d9a: $04
	inc  d                                           ; $4d9b: $14
	dec  b                                           ; $4d9c: $05
	inc  de                                          ; $4d9d: $13
	inc  d                                           ; $4d9e: $14
	add  hl, bc                                      ; $4d9f: $09
	inc  de                                          ; $4da0: $13
	add  hl, bc                                      ; $4da1: $09
	dec  e                                           ; $4da2: $1d
	add  hl, bc                                      ; $4da3: $09
	dec  hl                                          ; $4da4: $2b
	rst  $38                                         ; $4da5: $ff
	ld   [bc], a                                     ; $4da6: $02
	nop                                              ; $4da7: $00
	nop                                              ; $4da8: $00
	ld   e, b                                        ; $4da9: $58
	ld   [hl+], a                                    ; $4daa: $22
	ld   b, b                                        ; $4dab: $40
	inc  d                                           ; $4dac: $14
	jr   c, jr_009_4dcf                              ; $4dad: $38 $20

	nop                                              ; $4daf: $00
	rra                                              ; $4db0: $1f
	inc  h                                           ; $4db1: $24
	ld   [de], a                                     ; $4db2: $12
	ld   e, $0c                                      ; $4db3: $1e $0c
	ld   e, $04                                      ; $4db5: $1e $04
	add  hl, de                                      ; $4db7: $19
	rrca                                             ; $4db8: $0f
	add  hl, de                                      ; $4db9: $19
	ld   c, $19                                      ; $4dba: $0e $19
	ld   [$0219], sp                                 ; $4dbc: $08 $19 $02
	ld   [de], a                                     ; $4dbf: $12
	inc  bc                                          ; $4dc0: $03
	ld   [de], a                                     ; $4dc1: $12
	inc  l                                           ; $4dc2: $2c
	inc  c                                           ; $4dc3: $0c
	inc  de                                          ; $4dc4: $13
	rst  $38                                         ; $4dc5: $ff
	add  hl, bc                                      ; $4dc6: $09
	nop                                              ; $4dc7: $00
	nop                                              ; $4dc8: $00
	ld   e, b                                        ; $4dc9: $58
	add  hl, bc                                      ; $4dca: $09
	ld   b, b                                        ; $4dcb: $40

jr_009_4dcc:
	ld   [$0c38], sp                                 ; $4dcc: $08 $38 $0c

jr_009_4dcf:
	nop                                              ; $4dcf: $00
	ld   [hl+], a                                    ; $4dd0: $22
	ld   l, $0f                                      ; $4dd1: $2e $0f
	ld   l, $1f                                      ; $4dd3: $2e $1f
	dec  h                                           ; $4dd5: $25
	ld   [de], a                                     ; $4dd6: $12
	dec  h                                           ; $4dd7: $25
	jr   nz, jr_009_4df5                             ; $4dd8: $20 $1b

	dec  b                                           ; $4dda: $05
	ld   [de], a                                     ; $4ddb: $12
	dec  e                                           ; $4ddc: $1d
	add  hl, bc                                      ; $4ddd: $09
	inc  de                                          ; $4dde: $13
	add  hl, bc                                      ; $4ddf: $09
	ld   c, $09                                      ; $4de0: $0e $09
	inc  b                                           ; $4de2: $04
	add  hl, bc                                      ; $4de3: $09
	dec  hl                                          ; $4de4: $2b
	rst  $38                                         ; $4de5: $ff
	inc  d                                           ; $4de6: $14
	nop                                              ; $4de7: $00
	nop                                              ; $4de8: $00
	ld   e, b                                        ; $4de9: $58
	ld   h, $40                                      ; $4dea: $26 $40
	inc  d                                           ; $4dec: $14
	jr   c, jr_009_4e14                              ; $4ded: $38 $25

	nop                                              ; $4def: $00
	inc  c                                           ; $4df0: $0c
	inc  h                                           ; $4df1: $24
	rra                                              ; $4df2: $1f
	inc  e                                           ; $4df3: $1c
	ld   [de], a                                     ; $4df4: $12

jr_009_4df5:
	inc  e                                           ; $4df5: $1c
	rrca                                             ; $4df6: $0f
	inc  e                                           ; $4df7: $1c
	ld   [hl+], a                                    ; $4df8: $22
	inc  e                                           ; $4df9: $1c
	inc  h                                           ; $4dfa: $24
	ld   d, $13                                      ; $4dfb: $16 $13
	ld   d, $03                                      ; $4dfd: $16 $03
	ld   d, $20                                      ; $4dff: $16 $20
	ld   c, $09                                      ; $4e01: $0e $09
	ld   c, $23                                      ; $4e03: $0e $23
	rst  $38                                         ; $4e05: $ff
	ld   [bc], a                                     ; $4e06: $02
	nop                                              ; $4e07: $00
	nop                                              ; $4e08: $00
	ld   e, b                                        ; $4e09: $58
	jr   z, jr_009_4e5c                              ; $4e0a: $28 $50

	rrca                                             ; $4e0c: $0f
	jr   c, jr_009_4e1b                              ; $4e0d: $38 $0c

	nop                                              ; $4e0f: $00
	jr   nz, jr_009_4e3c                             ; $4e10: $20 $2a

	rra                                              ; $4e12: $1f
	inc  hl                                          ; $4e13: $23

jr_009_4e14:
	ld   c, $23                                      ; $4e14: $0e $23
	inc  bc                                          ; $4e16: $03
	inc  e                                           ; $4e17: $1c
	ld   [de], a                                     ; $4e18: $12
	inc  e                                           ; $4e19: $1c
	ld   [hl+], a                                    ; $4e1a: $22

jr_009_4e1b:
	inc  e                                           ; $4e1b: $1c
	ld   [bc], a                                     ; $4e1c: $02
	inc  d                                           ; $4e1d: $14
	dec  h                                           ; $4e1e: $25
	ld   c, $13                                      ; $4e1f: $0e $13
	ld   c, $09                                      ; $4e21: $0e $09
	ld   b, $08                                      ; $4e23: $06 $08
	rst  $38                                         ; $4e25: $ff
	inc  b                                           ; $4e26: $04
	nop                                              ; $4e27: $00
	nop                                              ; $4e28: $00
	nop                                              ; $4e29: $00
	nop                                              ; $4e2a: $00
	nop                                              ; $4e2b: $00
	nop                                              ; $4e2c: $00
	nop                                              ; $4e2d: $00
	nop                                              ; $4e2e: $00
	nop                                              ; $4e2f: $00
	nop                                              ; $4e30: $00
	nop                                              ; $4e31: $00
	nop                                              ; $4e32: $00
	nop                                              ; $4e33: $00
	nop                                              ; $4e34: $00
	nop                                              ; $4e35: $00
	nop                                              ; $4e36: $00
	nop                                              ; $4e37: $00
	nop                                              ; $4e38: $00
	nop                                              ; $4e39: $00
	nop                                              ; $4e3a: $00
	nop                                              ; $4e3b: $00

jr_009_4e3c:
	nop                                              ; $4e3c: $00
	nop                                              ; $4e3d: $00
	nop                                              ; $4e3e: $00
	nop                                              ; $4e3f: $00
	nop                                              ; $4e40: $00
	nop                                              ; $4e41: $00
	nop                                              ; $4e42: $00
	nop                                              ; $4e43: $00
	nop                                              ; $4e44: $00
	nop                                              ; $4e45: $00
	nop                                              ; $4e46: $00
	nop                                              ; $4e47: $00
	nop                                              ; $4e48: $00
	nop                                              ; $4e49: $00
	nop                                              ; $4e4a: $00
	nop                                              ; $4e4b: $00
	nop                                              ; $4e4c: $00
	nop                                              ; $4e4d: $00
	nop                                              ; $4e4e: $00
	nop                                              ; $4e4f: $00
	nop                                              ; $4e50: $00
	nop                                              ; $4e51: $00
	nop                                              ; $4e52: $00
	nop                                              ; $4e53: $00
	nop                                              ; $4e54: $00
	nop                                              ; $4e55: $00
	nop                                              ; $4e56: $00
	nop                                              ; $4e57: $00
	nop                                              ; $4e58: $00
	nop                                              ; $4e59: $00
	nop                                              ; $4e5a: $00
	nop                                              ; $4e5b: $00

jr_009_4e5c:
	nop                                              ; $4e5c: $00
	nop                                              ; $4e5d: $00
	nop                                              ; $4e5e: $00
	nop                                              ; $4e5f: $00
	nop                                              ; $4e60: $00
	nop                                              ; $4e61: $00
	nop                                              ; $4e62: $00
	nop                                              ; $4e63: $00
	nop                                              ; $4e64: $00
	nop                                              ; $4e65: $00
	nop                                              ; $4e66: $00
	nop                                              ; $4e67: $00
	nop                                              ; $4e68: $00
	rst  $38                                         ; $4e69: $ff
	ld   e, $ff                                      ; $4e6a: $1e $ff
	ld   e, $ff                                      ; $4e6c: $1e $ff
	ld   e, $00                                      ; $4e6e: $1e $00
	ld   e, $ff                                      ; $4e70: $1e $ff
	ld   e, $ff                                      ; $4e72: $1e $ff
	ld   e, $ff                                      ; $4e74: $1e $ff
	ld   e, $ff                                      ; $4e76: $1e $ff
	ld   e, $ff                                      ; $4e78: $1e $ff
	ld   e, $ff                                      ; $4e7a: $1e $ff
	ld   e, $ff                                      ; $4e7c: $1e $ff
	ld   e, $ff                                      ; $4e7e: $1e $ff
	ld   e, $ff                                      ; $4e80: $1e $ff
	ld   e, $ff                                      ; $4e82: $1e $ff
	ld   e, $ff                                      ; $4e84: $1e $ff
	ld   e, $00                                      ; $4e86: $1e $00
	nop                                              ; $4e88: $00
	rst  $38                                         ; $4e89: $ff
	dec  bc                                          ; $4e8a: $0b
	rst  $38                                         ; $4e8b: $ff
	dec  bc                                          ; $4e8c: $0b
	rst  $38                                         ; $4e8d: $ff
	dec  bc                                          ; $4e8e: $0b
	nop                                              ; $4e8f: $00
	dec  bc                                          ; $4e90: $0b
	rst  $38                                         ; $4e91: $ff
	dec  bc                                          ; $4e92: $0b
	rst  $38                                         ; $4e93: $ff
	dec  bc                                          ; $4e94: $0b
	rst  $38                                         ; $4e95: $ff
	dec  bc                                          ; $4e96: $0b
	rst  $38                                         ; $4e97: $ff
	dec  bc                                          ; $4e98: $0b
	rst  $38                                         ; $4e99: $ff
	dec  bc                                          ; $4e9a: $0b
	rst  $38                                         ; $4e9b: $ff
	dec  bc                                          ; $4e9c: $0b
	rst  $38                                         ; $4e9d: $ff
	dec  bc                                          ; $4e9e: $0b
	rst  $38                                         ; $4e9f: $ff
	dec  bc                                          ; $4ea0: $0b
	rst  $38                                         ; $4ea1: $ff
	dec  bc                                          ; $4ea2: $0b
	rst  $38                                         ; $4ea3: $ff
	dec  bc                                          ; $4ea4: $0b
	rst  $38                                         ; $4ea5: $ff
	dec  bc                                          ; $4ea6: $0b
	nop                                              ; $4ea7: $00
	nop                                              ; $4ea8: $00
	rst  $38                                         ; $4ea9: $ff
	add  hl, de                                      ; $4eaa: $19
	rst  $38                                         ; $4eab: $ff
	add  hl, de                                      ; $4eac: $19
	rst  $38                                         ; $4ead: $ff
	add  hl, de                                      ; $4eae: $19
	nop                                              ; $4eaf: $00
	add  hl, de                                      ; $4eb0: $19
	rst  $38                                         ; $4eb1: $ff
	add  hl, de                                      ; $4eb2: $19
	rst  $38                                         ; $4eb3: $ff
	add  hl, de                                      ; $4eb4: $19
	rst  $38                                         ; $4eb5: $ff
	add  hl, de                                      ; $4eb6: $19
	rst  $38                                         ; $4eb7: $ff
	add  hl, de                                      ; $4eb8: $19
	rst  $38                                         ; $4eb9: $ff
	add  hl, de                                      ; $4eba: $19
	rst  $38                                         ; $4ebb: $ff
	add  hl, de                                      ; $4ebc: $19
	rst  $38                                         ; $4ebd: $ff
	add  hl, de                                      ; $4ebe: $19
	rst  $38                                         ; $4ebf: $ff
	add  hl, de                                      ; $4ec0: $19
	rst  $38                                         ; $4ec1: $ff
	add  hl, de                                      ; $4ec2: $19
	rst  $38                                         ; $4ec3: $ff
	add  hl, de                                      ; $4ec4: $19
	rst  $38                                         ; $4ec5: $ff
	add  hl, de                                      ; $4ec6: $19
	nop                                              ; $4ec7: $00
	nop                                              ; $4ec8: $00
	rst  $38                                         ; $4ec9: $ff
	dec  c                                           ; $4eca: $0d
	rst  $38                                         ; $4ecb: $ff
	dec  c                                           ; $4ecc: $0d
	rst  $38                                         ; $4ecd: $ff
	dec  c                                           ; $4ece: $0d
	nop                                              ; $4ecf: $00
	dec  c                                           ; $4ed0: $0d
	rst  $38                                         ; $4ed1: $ff
	dec  c                                           ; $4ed2: $0d
	rst  $38                                         ; $4ed3: $ff
	dec  c                                           ; $4ed4: $0d
	rst  $38                                         ; $4ed5: $ff
	dec  c                                           ; $4ed6: $0d
	rst  $38                                         ; $4ed7: $ff
	dec  c                                           ; $4ed8: $0d
	rst  $38                                         ; $4ed9: $ff
	dec  c                                           ; $4eda: $0d
	rst  $38                                         ; $4edb: $ff
	dec  c                                           ; $4edc: $0d
	rst  $38                                         ; $4edd: $ff
	dec  c                                           ; $4ede: $0d
	rst  $38                                         ; $4edf: $ff
	dec  c                                           ; $4ee0: $0d
	rst  $38                                         ; $4ee1: $ff
	dec  c                                           ; $4ee2: $0d
	rst  $38                                         ; $4ee3: $ff
	dec  c                                           ; $4ee4: $0d
	rst  $38                                         ; $4ee5: $ff
	dec  l                                           ; $4ee6: $2d
	nop                                              ; $4ee7: $00
	nop                                              ; $4ee8: $00
	rst  $38                                         ; $4ee9: $ff
	dec  c                                           ; $4eea: $0d
	rst  $38                                         ; $4eeb: $ff
	dec  c                                           ; $4eec: $0d
	rst  $38                                         ; $4eed: $ff
	dec  c                                           ; $4eee: $0d
	nop                                              ; $4eef: $00
	dec  c                                           ; $4ef0: $0d
	rst  $38                                         ; $4ef1: $ff
	dec  c                                           ; $4ef2: $0d
	rst  $38                                         ; $4ef3: $ff
	dec  c                                           ; $4ef4: $0d
	rst  $38                                         ; $4ef5: $ff
	dec  c                                           ; $4ef6: $0d
	rst  $38                                         ; $4ef7: $ff
	dec  c                                           ; $4ef8: $0d
	rst  $38                                         ; $4ef9: $ff
	dec  c                                           ; $4efa: $0d
	rst  $38                                         ; $4efb: $ff
	dec  c                                           ; $4efc: $0d
	rst  $38                                         ; $4efd: $ff
	dec  c                                           ; $4efe: $0d
	rst  $38                                         ; $4eff: $ff
	dec  c                                           ; $4f00: $0d
	rst  $38                                         ; $4f01: $ff
	dec  c                                           ; $4f02: $0d
	rst  $38                                         ; $4f03: $ff
	dec  c                                           ; $4f04: $0d
	rst  $38                                         ; $4f05: $ff
	dec  l                                           ; $4f06: $2d
	nop                                              ; $4f07: $00
	nop                                              ; $4f08: $00
	rst  $38                                         ; $4f09: $ff
	db   $10                                         ; $4f0a: $10
	rst  $38                                         ; $4f0b: $ff
	db   $10                                         ; $4f0c: $10
	rst  $38                                         ; $4f0d: $ff
	stop                                             ; $4f0e: $10 $00
	db   $10                                         ; $4f10: $10
	rst  $38                                         ; $4f11: $ff
	db   $10                                         ; $4f12: $10
	rst  $38                                         ; $4f13: $ff
	db   $10                                         ; $4f14: $10
	rst  $38                                         ; $4f15: $ff
	db   $10                                         ; $4f16: $10
	rst  $38                                         ; $4f17: $ff
	db   $10                                         ; $4f18: $10
	rst  $38                                         ; $4f19: $ff
	db   $10                                         ; $4f1a: $10
	rst  $38                                         ; $4f1b: $ff
	db   $10                                         ; $4f1c: $10
	rst  $38                                         ; $4f1d: $ff
	db   $10                                         ; $4f1e: $10
	rst  $38                                         ; $4f1f: $ff
	db   $10                                         ; $4f20: $10
	rst  $38                                         ; $4f21: $ff
	db   $10                                         ; $4f22: $10
	rst  $38                                         ; $4f23: $ff
	db   $10                                         ; $4f24: $10
	rst  $38                                         ; $4f25: $ff
	stop                                             ; $4f26: $10 $00
	nop                                              ; $4f28: $00
	rst  $38                                         ; $4f29: $ff
	ld   bc, $01ff                                   ; $4f2a: $01 $ff $01
	rst  $38                                         ; $4f2d: $ff
	ld   bc, $0100                                   ; $4f2e: $01 $00 $01
	rst  $38                                         ; $4f31: $ff
	ld   bc, $01ff                                   ; $4f32: $01 $ff $01
	rst  $38                                         ; $4f35: $ff
	ld   bc, $01ff                                   ; $4f36: $01 $ff $01
	rst  $38                                         ; $4f39: $ff
	ld   bc, $01ff                                   ; $4f3a: $01 $ff $01
	rst  $38                                         ; $4f3d: $ff
	ld   bc, $01ff                                   ; $4f3e: $01 $ff $01
	rst  $38                                         ; $4f41: $ff
	ld   bc, $01ff                                   ; $4f42: $01 $ff $01
	rst  $38                                         ; $4f45: $ff
	ld   bc, $0000                                   ; $4f46: $01 $00 $00

Call_009_4f49:
	ld   a, [$dc9c]                                  ; $4f49: $fa $9c $dc
	call Call_009_4f77                               ; $4f4c: $cd $77 $4f
	or   a                                           ; $4f4f: $b7
	ret  z                                           ; $4f50: $c8

	ld   b, $00                                      ; $4f51: $06 $00
	ld   c, a                                        ; $4f53: $4f
	ld   hl, $db80                                   ; $4f54: $21 $80 $db
	add  hl, bc                                      ; $4f57: $09
	add  hl, bc                                      ; $4f58: $09
	add  hl, bc                                      ; $4f59: $09
	push hl                                          ; $4f5a: $e5
	ld   hl, $4f9d                                   ; $4f5b: $21 $9d $4f
	add  hl, bc                                      ; $4f5e: $09
	ld   b, $00                                      ; $4f5f: $06 $00
	ld   c, [hl]                                     ; $4f61: $4e
	ld   hl, $dc50                                   ; $4f62: $21 $50 $dc
	add  hl, bc                                      ; $4f65: $09
	dec  [hl]                                        ; $4f66: $35
	pop  hl                                          ; $4f67: $e1
	ld   a, [$dc9d]                                  ; $4f68: $fa $9d $dc
	ld   [hl+], a                                    ; $4f6b: $22
	ld   a, [wNextMainConvoScriptIdx]                                  ; $4f6c: $fa $9e $dc
	ld   [hl+], a                                    ; $4f6f: $22
	ld   a, [wNextMainConvoScriptIdx+1]                                  ; $4f70: $fa $9f $dc
	ld   [hl+], a                                    ; $4f73: $22
	ld   a, $ff                                      ; $4f74: $3e $ff
	ret                                              ; $4f76: $c9


Call_009_4f77:
	push af                                          ; $4f77: $f5
	push hl                                          ; $4f78: $e5
	ld   b, $00                                      ; $4f79: $06 $00
	ld   c, a                                        ; $4f7b: $4f
	ld   hl, $db80                                   ; $4f7c: $21 $80 $db
	add  hl, bc                                      ; $4f7f: $09
	add  hl, bc                                      ; $4f80: $09
	add  hl, bc                                      ; $4f81: $09
	ld   a, [hl]                                     ; $4f82: $7e
	bit  7, [hl]                                     ; $4f83: $cb $7e
	jr   nz, jr_009_4f8b                             ; $4f85: $20 $04

jr_009_4f87:
	pop  hl                                          ; $4f87: $e1
	pop  af                                          ; $4f88: $f1
	xor  a                                           ; $4f89: $af
	ret                                              ; $4f8a: $c9


jr_009_4f8b:
	ld   hl, $4f9d                                   ; $4f8b: $21 $9d $4f
	add  hl, bc                                      ; $4f8e: $09
	ld   b, $00                                      ; $4f8f: $06 $00
	ld   c, [hl]                                     ; $4f91: $4e
	ld   hl, $dc50                                   ; $4f92: $21 $50 $dc
	add  hl, bc                                      ; $4f95: $09
	ld   a, [hl]                                     ; $4f96: $7e
	or   a                                           ; $4f97: $b7
	jr   z, jr_009_4f87                              ; $4f98: $28 $ed

	pop  hl                                          ; $4f9a: $e1
	pop  af                                          ; $4f9b: $f1
	ret                                              ; $4f9c: $c9


	nop                                              ; $4f9d: $00
	nop                                              ; $4f9e: $00
	nop                                              ; $4f9f: $00
	nop                                              ; $4fa0: $00
	nop                                              ; $4fa1: $00
	nop                                              ; $4fa2: $00
	nop                                              ; $4fa3: $00
	nop                                              ; $4fa4: $00
	nop                                              ; $4fa5: $00
	nop                                              ; $4fa6: $00
	nop                                              ; $4fa7: $00
	nop                                              ; $4fa8: $00
	nop                                              ; $4fa9: $00
	nop                                              ; $4faa: $00
	ld   bc, $0101                                   ; $4fab: $01 $01 $01
	nop                                              ; $4fae: $00
	ld   bc, $0200                                   ; $4faf: $01 $00 $02
	ld   [bc], a                                     ; $4fb2: $02
	ld   [bc], a                                     ; $4fb3: $02
	ld   [bc], a                                     ; $4fb4: $02
	nop                                              ; $4fb5: $00
	inc  bc                                          ; $4fb6: $03
	inc  bc                                          ; $4fb7: $03
	inc  bc                                          ; $4fb8: $03
	inc  bc                                          ; $4fb9: $03
	inc  bc                                          ; $4fba: $03
	nop                                              ; $4fbb: $00
	nop                                              ; $4fbc: $00
	nop                                              ; $4fbd: $00
	nop                                              ; $4fbe: $00
	nop                                              ; $4fbf: $00
	nop                                              ; $4fc0: $00
	nop                                              ; $4fc1: $00
	nop                                              ; $4fc2: $00
	inc  b                                           ; $4fc3: $04
	nop                                              ; $4fc4: $00
	inc  b                                           ; $4fc5: $04
	inc  b                                           ; $4fc6: $04
	inc  b                                           ; $4fc7: $04
	nop                                              ; $4fc8: $00
	nop                                              ; $4fc9: $00
	nop                                              ; $4fca: $00


Func_09_4fcb::
	xor  a                                           ; $4fcb: $af
	ld   [$cbec], a                                  ; $4fcc: $ea $ec $cb
	ld   [$cbeb], a                                  ; $4fcf: $ea $eb $cb
	ld   [$cbe4], a                                  ; $4fd2: $ea $e4 $cb
	ld   [$cbe5], a                                  ; $4fd5: $ea $e5 $cb
	xor  a                                           ; $4fd8: $af
	ld   [$cbf3], a                                  ; $4fd9: $ea $f3 $cb
	ret                                              ; $4fdc: $c9


Func_09_4fdd::
	ld   b, $00                                      ; $4fdd: $06 $00
	ld   a, [$cbe4]                                  ; $4fdf: $fa $e4 $cb
	bit  7, a                                        ; $4fe2: $cb $7f
	ret  nz                                          ; $4fe4: $c0

	sla  a                                           ; $4fe5: $cb $27
	ld   c, a                                        ; $4fe7: $4f
	ld   hl, $4ff0                                   ; $4fe8: $21 $f0 $4f
	add  hl, bc                                      ; $4feb: $09
	ld   a, [hl+]                                    ; $4fec: $2a
	ld   h, [hl]                                     ; $4fed: $66
	ld   l, a                                        ; $4fee: $6f
	jp   hl                                          ; $4fef: $e9


	ld   b, $50                                      ; $4ff0: $06 $50
	cp   b                                           ; $4ff2: $b8
	ld   d, b                                        ; $4ff3: $50
	jp   nc, $b850                                   ; $4ff4: $d2 $50 $b8

	ld   d, b                                        ; $4ff7: $50
	inc  c                                           ; $4ff8: $0c
	ld   d, d                                        ; $4ff9: $52
	cp   b                                           ; $4ffa: $b8
	ld   d, b                                        ; $4ffb: $50
	db   $e4                                         ; $4ffc: $e4
	ld   d, h                                        ; $4ffd: $54
	cp   b                                           ; $4ffe: $b8
	ld   d, b                                        ; $4fff: $50
	ld   e, [hl]                                     ; $5000: $5e
	ld   d, l                                        ; $5001: $55
	cp   b                                           ; $5002: $b8
	ld   d, b                                        ; $5003: $50
	ld   h, b                                        ; $5004: $60
	ld   d, [hl]                                     ; $5005: $56
	ld   hl, $cbe5                                   ; $5006: $21 $e5 $cb
	ld   a, [hl]                                     ; $5009: $7e
	inc  [hl]                                        ; $500a: $34
	or   a                                           ; $500b: $b7
	jr   z, jr_009_5029                              ; $500c: $28 $1b

	dec  a                                           ; $500e: $3d
	jr   z, jr_009_5055                              ; $500f: $28 $44

	ld   c, $81                                      ; $5011: $0e $81
	ld   de, $8000                                   ; $5013: $11 $00 $80
	ld   a, $07                                      ; $5016: $3e $07
	ld   hl, $d000                                   ; $5018: $21 $00 $d0
	ld   b, $40                                      ; $501b: $06 $40
	call EnqueueHDMATransfer                                       ; $501d: $cd $7c $02
	ld   hl, $cbe4                                   ; $5020: $21 $e4 $cb
	inc  [hl]                                        ; $5023: $34
	xor  a                                           ; $5024: $af
	ld   [$cbe5], a                                  ; $5025: $ea $e5 $cb
	ret                                              ; $5028: $c9


jr_009_5029:
	ld   a, [wWramBank]                                  ; $5029: $fa $93 $c2
	push af                                          ; $502c: $f5
	ld   a, $07                                      ; $502d: $3e $07
	ld   [wWramBank], a                                  ; $502f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5032: $e0 $70
	ld   a, $9a                                      ; $5034: $3e $9a
	ld   hl, $d000                                   ; $5036: $21 $00 $d0
	ld   de, $66dc                                   ; $5039: $11 $dc $66
	call RLEXorCopy                                       ; $503c: $cd $d2 $09
	pop  af                                          ; $503f: $f1
	ld   [wWramBank], a                                  ; $5040: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5043: $e0 $70
	ld   c, $81                                      ; $5045: $0e $81
	ld   de, $8400                                   ; $5047: $11 $00 $84
	ld   a, $07                                      ; $504a: $3e $07
	ld   hl, $d400                                   ; $504c: $21 $00 $d4
	ld   b, $40                                      ; $504f: $06 $40
	call EnqueueHDMATransfer                                       ; $5051: $cd $7c $02
	ret                                              ; $5054: $c9


jr_009_5055:
	ld   a, [wWramBank]                                  ; $5055: $fa $93 $c2
	push af                                          ; $5058: $f5
	ld   a, $02                                      ; $5059: $3e $02
	ld   [wWramBank], a                                  ; $505b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $505e: $e0 $70
	ld   de, $d280                                   ; $5060: $11 $80 $d2
	ld   a, $0d                                      ; $5063: $3e $0d
	ld   hl, $4ea0                                   ; $5065: $21 $a0 $4e
	ld   bc, $00c0                                   ; $5068: $01 $c0 $00
	call FarMemCopy                                       ; $506b: $cd $b2 $09
	pop  af                                          ; $506e: $f1
	ld   [wWramBank], a                                  ; $506f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5072: $e0 $70
	ld   a, [$cbf4]                                  ; $5074: $fa $f4 $cb
	or   a                                           ; $5077: $b7
	jr   nz, jr_009_5099                             ; $5078: $20 $1f

	ld   c, $01                                      ; $507a: $0e $01
	ld   de, $9940                                   ; $507c: $11 $40 $99
	ld   a, $0d                                      ; $507f: $3e $0d
	ld   hl, $4e80                                   ; $5081: $21 $80 $4e
	ld   b, $10                                      ; $5084: $06 $10
	call EnqueueHDMATransfer                                       ; $5086: $cd $7c $02
	ld   c, $00                                      ; $5089: $0e $00
	ld   de, $9940                                   ; $508b: $11 $40 $99
	ld   a, $0d                                      ; $508e: $3e $0d
	ld   hl, $4d80                                   ; $5090: $21 $80 $4d
	ld   b, $10                                      ; $5093: $06 $10
	call EnqueueHDMATransfer                                       ; $5095: $cd $7c $02
	ret                                              ; $5098: $c9


jr_009_5099:
	ld   c, $01                                      ; $5099: $0e $01
	ld   de, $9c00                                   ; $509b: $11 $00 $9c
	ld   a, $0d                                      ; $509e: $3e $0d
	ld   hl, $4e80                                   ; $50a0: $21 $80 $4e
	ld   b, $10                                      ; $50a3: $06 $10
	call EnqueueHDMATransfer                                       ; $50a5: $cd $7c $02
	ld   c, $00                                      ; $50a8: $0e $00
	ld   de, $9c00                                   ; $50aa: $11 $00 $9c
	ld   a, $0d                                      ; $50ad: $3e $0d
	ld   hl, $4d80                                   ; $50af: $21 $80 $4d
	ld   b, $10                                      ; $50b2: $06 $10
	call EnqueueHDMATransfer                                       ; $50b4: $cd $7c $02
	ret                                              ; $50b7: $c9


	ld   hl, $cbe5                                   ; $50b8: $21 $e5 $cb
	ld   a, [hl]                                     ; $50bb: $7e
	inc  [hl]                                        ; $50bc: $34
	cp   $3c                                         ; $50bd: $fe $3c
	jr   nc, jr_009_50c9                             ; $50bf: $30 $08

	ld   a, [$c654]                                  ; $50c1: $fa $54 $c6
	call Func_1d3d                                       ; $50c4: $cd $3d $1d
	or   a                                           ; $50c7: $b7
	ret  nz                                          ; $50c8: $c0

jr_009_50c9:
	ld   hl, $cbe4                                   ; $50c9: $21 $e4 $cb
	inc  [hl]                                        ; $50cc: $34
	xor  a                                           ; $50cd: $af
	ld   [$cbe5], a                                  ; $50ce: $ea $e5 $cb
	ret                                              ; $50d1: $c9


	ld   a, [$cbf4]                                  ; $50d2: $fa $f4 $cb
	or   a                                           ; $50d5: $b7
	jr   nz, jr_009_5137                             ; $50d6: $20 $5f

	ld   a, [$cbe5]                                  ; $50d8: $fa $e5 $cb
	or   a                                           ; $50db: $b7
	jr   nz, jr_009_510a                             ; $50dc: $20 $2c

	ld   hl, $c20c                                   ; $50de: $21 $0c $c2
	set  6, [hl]                                     ; $50e1: $cb $f6
	ld   hl, wIE                                   ; $50e3: $21 $0d $c2
	set  1, [hl]                                     ; $50e6: $cb $ce
	ld   a, $4f                                      ; $50e8: $3e $4f
	ld   [$c20b], a                                  ; $50ea: $ea $0b $c2
	ld   a, $08                                      ; $50ed: $3e $08
	ld   [wLCDCIntFuncIdx], a                                  ; $50ef: $ea $8d $c2
	xor  a                                           ; $50f2: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $50f3: $ea $62 $c3
	ld   a, $08                                      ; $50f6: $3e $08
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $50f8: $ea $63 $c3
	ld   a, $03                                      ; $50fb: $3e $03
	ld   b, $00                                      ; $50fd: $06 $00
	ld   hl, wBGPalettes                                   ; $50ff: $21 $de $c2
	ld   c, $09                                      ; $5102: $0e $09
	ld   de, $51fc                                   ; $5104: $11 $fc $51
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5107: $cd $48 $07

jr_009_510a:
	ld   hl, $cbe5                                   ; $510a: $21 $e5 $cb
	ld   a, [hl]                                     ; $510d: $7e
	inc  [hl]                                        ; $510e: $34
	cp   $07                                         ; $510f: $fe $07
	jr   nc, jr_009_511a                             ; $5111: $30 $07

	ld   bc, $0008                                   ; $5113: $01 $08 $00
	call FadePalettesAndSetRangeToUpdate                                       ; $5116: $cd $32 $08
	ret                                              ; $5119: $c9


jr_009_511a:
	ld   a, $09                                      ; $511a: $3e $09
	ld   hl, $51fc                                   ; $511c: $21 $fc $51
	ld   de, wBGPalettes                                   ; $511f: $11 $de $c2
	ld   bc, $0010                                   ; $5122: $01 $10 $00
	call FarMemCopy                                       ; $5125: $cd $b2 $09
	ld   bc, $0007                                   ; $5128: $01 $07 $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $512b: $cd $aa $04
	ld   hl, $cbe4                                   ; $512e: $21 $e4 $cb
	inc  [hl]                                        ; $5131: $34
	xor  a                                           ; $5132: $af
	ld   [$cbe5], a                                  ; $5133: $ea $e5 $cb
	ret                                              ; $5136: $c9


jr_009_5137:
	ld   hl, $cbe5                                   ; $5137: $21 $e5 $cb
	ld   a, [hl]                                     ; $513a: $7e
	inc  [hl]                                        ; $513b: $34
	or   a                                           ; $513c: $b7
	jp   nz, Jump_009_51c5                           ; $513d: $c2 $c5 $51

	ld   a, $09                                      ; $5140: $3e $09
	ld   hl, $51fc                                   ; $5142: $21 $fc $51
	ld   de, wBGPalettes                                   ; $5145: $11 $de $c2
	ld   bc, $0010                                   ; $5148: $01 $10 $00
	call FarMemCopy                                       ; $514b: $cd $b2 $09
	ld   bc, $0007                                   ; $514e: $01 $07 $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5151: $cd $aa $04
	ld   a, [wWramBank]                                  ; $5154: $fa $93 $c2
	push af                                          ; $5157: $f5
	ld   a, $07                                      ; $5158: $3e $07
	ld   [wWramBank], a                                  ; $515a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $515d: $e0 $70
	ld   hl, $d000                                   ; $515f: $21 $00 $d0
	ld   bc, $0080                                   ; $5162: $01 $80 $00
	ld   de, $0808                                   ; $5165: $11 $08 $08
	call CopyEthenDintoHL_BCtimes                                       ; $5168: $cd $9f $09
	ld   hl, $d100                                   ; $516b: $21 $00 $d1
	ld   bc, $0080                                   ; $516e: $01 $80 $00
	ld   de, $ffff                                   ; $5171: $11 $ff $ff
	call CopyEthenDintoHL_BCtimes                                       ; $5174: $cd $9f $09
	pop  af                                          ; $5177: $f1
	ld   [wWramBank], a                                  ; $5178: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $517b: $e0 $70
	ld   c, $81                                      ; $517d: $0e $81
	ld   de, $9940                                   ; $517f: $11 $40 $99
	ld   a, $07                                      ; $5182: $3e $07
	ld   hl, $d000                                   ; $5184: $21 $00 $d0
	ld   b, $10                                      ; $5187: $06 $10
	call EnqueueHDMATransfer                                       ; $5189: $cd $7c $02
	ld   c, $80                                      ; $518c: $0e $80
	ld   de, $9940                                   ; $518e: $11 $40 $99
	ld   a, $07                                      ; $5191: $3e $07
	ld   hl, $d100                                   ; $5193: $21 $00 $d1
	ld   b, $10                                      ; $5196: $06 $10
	call EnqueueHDMATransfer                                       ; $5198: $cd $7c $02
	ld   hl, $c20c                                   ; $519b: $21 $0c $c2
	set  6, [hl]                                     ; $519e: $cb $f6
	ld   hl, wIE                                   ; $51a0: $21 $0d $c2
	set  1, [hl]                                     ; $51a3: $cb $ce
	ld   a, $4f                                      ; $51a5: $3e $4f
	ld   [$c20b], a                                  ; $51a7: $ea $0b $c2
	ld   a, $08                                      ; $51aa: $3e $08
	ld   [wLCDCIntFuncIdx], a                                  ; $51ac: $ea $8d $c2
	ld   hl, wLCDC                                   ; $51af: $21 $03 $c2
	set  5, [hl]                                     ; $51b2: $cb $ee
	set  6, [hl]                                     ; $51b4: $cb $f6
	ld   a, $07                                      ; $51b6: $3e $07
	ld   [wWX], a                                  ; $51b8: $ea $09 $c2
	ld   a, $90                                      ; $51bb: $3e $90
	ld   [wWY], a                                  ; $51bd: $ea $0a $c2
	ld   a, $23                                      ; $51c0: $3e $23
	call PlaySoundEffect                                       ; $51c2: $cd $df $1a

Jump_009_51c5:
	ld   a, [wWY]                                  ; $51c5: $fa $0a $c2
	sub  $08                                         ; $51c8: $d6 $08
	ld   [wWY], a                                  ; $51ca: $ea $0a $c2
	cp   $50                                         ; $51cd: $fe $50
	ret  nc                                          ; $51cf: $d0

	ld   c, $01                                      ; $51d0: $0e $01
	ld   de, $9940                                   ; $51d2: $11 $40 $99
	ld   a, $0d                                      ; $51d5: $3e $0d
	ld   hl, $4e80                                   ; $51d7: $21 $80 $4e
	ld   b, $10                                      ; $51da: $06 $10
	call EnqueueHDMATransfer                                       ; $51dc: $cd $7c $02
	ld   c, $00                                      ; $51df: $0e $00
	ld   de, $9940                                   ; $51e1: $11 $40 $99
	ld   a, $0d                                      ; $51e4: $3e $0d
	ld   hl, $4d80                                   ; $51e6: $21 $80 $4d
	ld   b, $10                                      ; $51e9: $06 $10
	call EnqueueHDMATransfer                                       ; $51eb: $cd $7c $02
	ld   hl, wLCDC                                   ; $51ee: $21 $03 $c2
	res  5, [hl]                                     ; $51f1: $cb $ae
	ld   hl, $cbe4                                   ; $51f3: $21 $e4 $cb
	inc  [hl]                                        ; $51f6: $34
	xor  a                                           ; $51f7: $af
	ld   [$cbe5], a                                  ; $51f8: $ea $e5 $cb
	ret                                              ; $51fb: $c9


	rst  $38                                         ; $51fc: $ff
	ld   a, a                                        ; $51fd: $7f
	db   $fc                                         ; $51fe: $fc
	ld   [bc], a                                     ; $51ff: $02
	or   h                                           ; $5200: $b4
	inc  c                                           ; $5201: $0c
	nop                                              ; $5202: $00
	nop                                              ; $5203: $00
	ld   a, a                                        ; $5204: $7f
	ld   c, [hl]                                     ; $5205: $4e
	nop                                              ; $5206: $00
	nop                                              ; $5207: $00
	nop                                              ; $5208: $00
	nop                                              ; $5209: $00
	nop                                              ; $520a: $00
	nop                                              ; $520b: $00
	call Call_009_5479                               ; $520c: $cd $79 $54
	ld   a, [$cbe6]                                  ; $520f: $fa $e6 $cb
	cp   $2c                                         ; $5212: $fe $2c
	jr   c, jr_009_5228                              ; $5214: $38 $12

	ld   a, $ff                                      ; $5216: $3e $ff
	ld   [$cbec], a                                  ; $5218: $ea $ec $cb
	call Call_009_5362                               ; $521b: $cd $62 $53
	ld   a, $06                                      ; $521e: $3e $06
	ld   [$cbe4], a                                  ; $5220: $ea $e4 $cb
	xor  a                                           ; $5223: $af
	ld   [$cbe5], a                                  ; $5224: $ea $e5 $cb
	ret                                              ; $5227: $c9


jr_009_5228:
	call Call_009_5301                               ; $5228: $cd $01 $53
	ld   hl, $cbec                                   ; $522b: $21 $ec $cb
	ld   a, [wInGameButtonsPressed]                                  ; $522e: $fa $10 $c2
	bit  0, a                                        ; $5231: $cb $47
	jr   z, jr_009_5242                              ; $5233: $28 $0d

	call Call_009_5343                               ; $5235: $cd $43 $53
	ld   a, $08                                      ; $5238: $3e $08
	ld   [$cbe4], a                                  ; $523a: $ea $e4 $cb
	xor  a                                           ; $523d: $af
	ld   [$cbe5], a                                  ; $523e: $ea $e5 $cb
	ret                                              ; $5241: $c9


jr_009_5242:
	bit  6, a                                        ; $5242: $cb $77
	jr   z, jr_009_5252                              ; $5244: $28 $0c

	dec  [hl]                                        ; $5246: $35
	bit  7, [hl]                                     ; $5247: $cb $7e
	jr   z, jr_009_525f                              ; $5249: $28 $14

	ld   a, [$cbed]                                  ; $524b: $fa $ed $cb
	dec  a                                           ; $524e: $3d
	ld   [hl], a                                     ; $524f: $77
	jr   jr_009_525f                                 ; $5250: $18 $0d

jr_009_5252:
	bit  7, a                                        ; $5252: $cb $7f
	jr   z, jr_009_525f                              ; $5254: $28 $09

	inc  [hl]                                        ; $5256: $34
	ld   a, [$cbed]                                  ; $5257: $fa $ed $cb
	cp   [hl]                                        ; $525a: $be
	jr   nz, jr_009_525f                             ; $525b: $20 $02

	xor  a                                           ; $525d: $af
	ld   [hl], a                                     ; $525e: $77

jr_009_525f:
	ld   a, [$cbec]                                  ; $525f: $fa $ec $cb
	call Call_009_5362                               ; $5262: $cd $62 $53
	ld   hl, $cbe9                                   ; $5265: $21 $e9 $cb
	ld   a, [hl+]                                    ; $5268: $2a
	ld   c, a                                        ; $5269: $4f
	ld   a, [hl]                                     ; $526a: $7e
	ld   b, a                                        ; $526b: $47
	ld   hl, $cbe7                                   ; $526c: $21 $e7 $cb
	ld   a, [hl+]                                    ; $526f: $2a
	ld   h, [hl]                                     ; $5270: $66
	ld   l, a                                        ; $5271: $6f
	add  hl, bc                                      ; $5272: $09
	ld   a, l                                        ; $5273: $7d
	ld   [$cbe7], a                                  ; $5274: $ea $e7 $cb
	ld   a, h                                        ; $5277: $7c
	ld   [$cbe8], a                                  ; $5278: $ea $e8 $cb
	jr   nc, jr_009_528a                             ; $527b: $30 $0d

	ld   a, [$cbe6]                                  ; $527d: $fa $e6 $cb
	ld   b, a                                        ; $5280: $47
	ld   c, $70                                      ; $5281: $0e $70
	call Call_009_5296                               ; $5283: $cd $96 $52
	ld   hl, $cbe6                                   ; $5286: $21 $e6 $cb
	inc  [hl]                                        ; $5289: $34

jr_009_528a:
	ld   a, [$cbe6]                                  ; $528a: $fa $e6 $cb
	ld   b, a                                        ; $528d: $47
	ld   a, [$cbe8]                                  ; $528e: $fa $e8 $cb
	and  $e0                                         ; $5291: $e6 $e0
	srl  a                                           ; $5293: $cb $3f
	ld   c, a                                        ; $5295: $4f

Call_009_5296:
	ld   a, $2b                                      ; $5296: $3e $2b
	cp   b                                           ; $5298: $b8
	ret  c                                           ; $5299: $d8

	push bc                                          ; $529a: $c5
	ld   e, b                                        ; $529b: $58
	ld   d, $00                                      ; $529c: $16 $00
	sla  e                                           ; $529e: $cb $23
	rl   d                                           ; $52a0: $cb $12
	sla  e                                           ; $52a2: $cb $23
	rl   d                                           ; $52a4: $cb $12
	sla  e                                           ; $52a6: $cb $23
	rl   d                                           ; $52a8: $cb $12
	sla  e                                           ; $52aa: $cb $23
	rl   d                                           ; $52ac: $cb $12
	ld   hl, $8400                                   ; $52ae: $21 $00 $84
	add  hl, de                                      ; $52b1: $19
	ld   d, h                                        ; $52b2: $54
	ld   e, l                                        ; $52b3: $5d
	ld   a, b                                        ; $52b4: $78
	ld   c, a                                        ; $52b5: $4f
	ld   b, $00                                      ; $52b6: $06 $00
	ld   hl, $52d5                                   ; $52b8: $21 $d5 $52
	add  hl, bc                                      ; $52bb: $09
	ld   a, [hl]                                     ; $52bc: $7e
	and  $0f                                         ; $52bd: $e6 $0f
	ld   b, a                                        ; $52bf: $47
	ld   a, [hl]                                     ; $52c0: $7e
	and  $f0                                         ; $52c1: $e6 $f0
	ld   c, a                                        ; $52c3: $4f
	ld   hl, $4300                                   ; $52c4: $21 $00 $43
	add  hl, bc                                      ; $52c7: $09
	pop  bc                                          ; $52c8: $c1
	ld   b, $00                                      ; $52c9: $06 $00
	add  hl, bc                                      ; $52cb: $09
	ld   a, $0d                                      ; $52cc: $3e $0d
	ld   bc, $0101                                   ; $52ce: $01 $01 $01
	call EnqueueHDMATransfer                                       ; $52d1: $cd $7c $02
	ret                                              ; $52d4: $c9


	nop                                              ; $52d5: $00
	add  b                                           ; $52d6: $80
	ld   bc, $0281                                   ; $52d7: $01 $81 $02
	ld   [bc], a                                     ; $52da: $02
	ld   [bc], a                                     ; $52db: $02
	ld   [bc], a                                     ; $52dc: $02
	ld   [bc], a                                     ; $52dd: $02
	ld   [bc], a                                     ; $52de: $02
	ld   [bc], a                                     ; $52df: $02
	ld   [bc], a                                     ; $52e0: $02
	ld   [bc], a                                     ; $52e1: $02
	ld   [bc], a                                     ; $52e2: $02
	add  d                                           ; $52e3: $82
	inc  bc                                          ; $52e4: $03
	add  e                                           ; $52e5: $83
	inc  b                                           ; $52e6: $04
	add  h                                           ; $52e7: $84
	dec  b                                           ; $52e8: $05
	add  l                                           ; $52e9: $85
	add  l                                           ; $52ea: $85
	add  l                                           ; $52eb: $85
	add  l                                           ; $52ec: $85
	ld   b, $86                                      ; $52ed: $06 $86
	rlca                                             ; $52ef: $07
	add  a                                           ; $52f0: $87
	ld   [$0288], sp                                 ; $52f1: $08 $88 $02
	ld   [bc], a                                     ; $52f4: $02
	ld   [bc], a                                     ; $52f5: $02
	ld   [bc], a                                     ; $52f6: $02
	ld   [bc], a                                     ; $52f7: $02
	ld   [bc], a                                     ; $52f8: $02
	ld   [bc], a                                     ; $52f9: $02
	ld   [bc], a                                     ; $52fa: $02
	ld   [bc], a                                     ; $52fb: $02
	ld   [bc], a                                     ; $52fc: $02
	add  hl, bc                                      ; $52fd: $09
	adc  c                                           ; $52fe: $89
	add  a                                           ; $52ff: $87
	ld   a, [bc]                                     ; $5300: $0a

Call_009_5301:
	ld   a, [$cbe6]                                  ; $5301: $fa $e6 $cb
	ld   h, $00                                      ; $5304: $26 $00
	ld   l, a                                        ; $5306: $6f
	ld   bc, $5317                                   ; $5307: $01 $17 $53
	add  hl, bc                                      ; $530a: $09
	ld   a, [hl]                                     ; $530b: $7e
	or   a                                           ; $530c: $b7
	ret  z                                           ; $530d: $c8

	ld   hl, $c654                                   ; $530e: $21 $54 $c6
	cp   [hl]                                        ; $5311: $be
	ret  z                                           ; $5312: $c8

	call PlaySoundEffect                                       ; $5313: $cd $df $1a
	ret                                              ; $5316: $c9


	jr   c, jr_009_5319                              ; $5317: $38 $00

jr_009_5319:
	nop                                              ; $5319: $00
	nop                                              ; $531a: $00
	nop                                              ; $531b: $00
	add  hl, sp                                      ; $531c: $39
	nop                                              ; $531d: $00
	nop                                              ; $531e: $00
	nop                                              ; $531f: $00
	ld   a, [hl-]                                    ; $5320: $3a
	nop                                              ; $5321: $00
	nop                                              ; $5322: $00
	nop                                              ; $5323: $00
	dec  sp                                          ; $5324: $3b
	nop                                              ; $5325: $00
	nop                                              ; $5326: $00
	nop                                              ; $5327: $00
	inc  a                                           ; $5328: $3c
	nop                                              ; $5329: $00
	nop                                              ; $532a: $00
	nop                                              ; $532b: $00
	dec  a                                           ; $532c: $3d
	nop                                              ; $532d: $00
	nop                                              ; $532e: $00
	ld   a, $00                                      ; $532f: $3e $00
	nop                                              ; $5331: $00
	ccf                                              ; $5332: $3f
	nop                                              ; $5333: $00
	nop                                              ; $5334: $00
	ld   b, b                                        ; $5335: $40
	nop                                              ; $5336: $00
	nop                                              ; $5337: $00
	ld   b, c                                        ; $5338: $41
	nop                                              ; $5339: $00
	ld   b, d                                        ; $533a: $42
	nop                                              ; $533b: $00
	ld   b, e                                        ; $533c: $43
	nop                                              ; $533d: $00
	ld   b, h                                        ; $533e: $44
	nop                                              ; $533f: $00
	ld   b, l                                        ; $5340: $45
	ld   b, [hl]                                     ; $5341: $46
	ld   b, a                                        ; $5342: $47

Call_009_5343:
	ld   hl, $5351                                   ; $5343: $21 $51 $53

jr_009_5346:
	ld   a, [hl+]                                    ; $5346: $2a
	cp   $ff                                         ; $5347: $fe $ff
	ret  z                                           ; $5349: $c8

	push hl                                          ; $534a: $e5
	call Func_1cd9                                       ; $534b: $cd $d9 $1c
	pop  hl                                          ; $534e: $e1
	jr   jr_009_5346                                 ; $534f: $18 $f5

	jr   c, @+$3b                                    ; $5351: $38 $39

	ld   a, [hl-]                                    ; $5353: $3a
	dec  sp                                          ; $5354: $3b
	inc  a                                           ; $5355: $3c
	dec  a                                           ; $5356: $3d
	ld   a, $3f                                      ; $5357: $3e $3f
	ld   b, b                                        ; $5359: $40
	ld   b, c                                        ; $535a: $41
	ld   b, d                                        ; $535b: $42
	ld   b, e                                        ; $535c: $43
	ld   b, h                                        ; $535d: $44
	ld   b, l                                        ; $535e: $45
	ld   b, [hl]                                     ; $535f: $46
	ld   b, a                                        ; $5360: $47
	rst  $38                                         ; $5361: $ff

Call_009_5362:
	ld   e, a                                        ; $5362: $5f
	ld   a, [wWramBank]                                  ; $5363: $fa $93 $c2
	push af                                          ; $5366: $f5
	ld   a, $02                                      ; $5367: $3e $02
	ld   [wWramBank], a                                  ; $5369: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $536c: $e0 $70
	ld   hl, $d280                                   ; $536e: $21 $80 $d2
	call Call_009_5412                               ; $5371: $cd $12 $54
	ld   hl, $d2c0                                   ; $5374: $21 $c0 $d2
	call Call_009_5412                               ; $5377: $cd $12 $54
	ld   hl, $d300                                   ; $537a: $21 $00 $d3
	call Call_009_5412                               ; $537d: $cd $12 $54
	ld   a, e                                        ; $5380: $7b
	bit  7, a                                        ; $5381: $cb $7f
	jr   nz, jr_009_5395                             ; $5383: $20 $10

	swap a                                           ; $5385: $cb $37
	sla  a                                           ; $5387: $cb $27
	sla  a                                           ; $5389: $cb $27
	ld   b, $00                                      ; $538b: $06 $00
	ld   c, a                                        ; $538d: $4f
	ld   hl, $d280                                   ; $538e: $21 $80 $d2
	add  hl, bc                                      ; $5391: $09
	call Call_009_53ab                               ; $5392: $cd $ab $53

jr_009_5395:
	ld   a, $02                                      ; $5395: $3e $02
	ld   hl, $d280                                   ; $5397: $21 $80 $d2
	ld   c, $81                                      ; $539a: $0e $81
	ld   de, $9960                                   ; $539c: $11 $60 $99
	ld   b, $0c                                      ; $539f: $06 $0c
	call EnqueueHDMATransfer                                       ; $53a1: $cd $7c $02
	pop  af                                          ; $53a4: $f1
	ld   [wWramBank], a                                  ; $53a5: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $53a8: $e0 $70
	ret                                              ; $53aa: $c9


Call_009_53ab:
	ld   bc, $0003                                   ; $53ab: $01 $03 $00
	add  hl, bc                                      ; $53ae: $09
	set  0, [hl]                                     ; $53af: $cb $c6
	inc  hl                                          ; $53b1: $23
	set  0, [hl]                                     ; $53b2: $cb $c6
	inc  hl                                          ; $53b4: $23
	set  0, [hl]                                     ; $53b5: $cb $c6
	inc  hl                                          ; $53b7: $23
	set  0, [hl]                                     ; $53b8: $cb $c6
	inc  hl                                          ; $53ba: $23
	set  0, [hl]                                     ; $53bb: $cb $c6
	inc  hl                                          ; $53bd: $23
	set  0, [hl]                                     ; $53be: $cb $c6
	inc  hl                                          ; $53c0: $23
	set  0, [hl]                                     ; $53c1: $cb $c6
	inc  hl                                          ; $53c3: $23
	set  0, [hl]                                     ; $53c4: $cb $c6
	inc  hl                                          ; $53c6: $23
	set  0, [hl]                                     ; $53c7: $cb $c6
	inc  hl                                          ; $53c9: $23
	set  0, [hl]                                     ; $53ca: $cb $c6
	inc  hl                                          ; $53cc: $23
	set  0, [hl]                                     ; $53cd: $cb $c6
	inc  hl                                          ; $53cf: $23
	set  0, [hl]                                     ; $53d0: $cb $c6
	inc  hl                                          ; $53d2: $23
	set  0, [hl]                                     ; $53d3: $cb $c6
	inc  hl                                          ; $53d5: $23
	set  0, [hl]                                     ; $53d6: $cb $c6
	inc  hl                                          ; $53d8: $23
	set  0, [hl]                                     ; $53d9: $cb $c6
	inc  hl                                          ; $53db: $23
	set  0, [hl]                                     ; $53dc: $cb $c6
	ld   bc, $0011                                   ; $53de: $01 $11 $00
	add  hl, bc                                      ; $53e1: $09
	set  0, [hl]                                     ; $53e2: $cb $c6
	inc  hl                                          ; $53e4: $23
	set  0, [hl]                                     ; $53e5: $cb $c6
	inc  hl                                          ; $53e7: $23
	set  0, [hl]                                     ; $53e8: $cb $c6
	inc  hl                                          ; $53ea: $23
	set  0, [hl]                                     ; $53eb: $cb $c6
	inc  hl                                          ; $53ed: $23
	set  0, [hl]                                     ; $53ee: $cb $c6
	inc  hl                                          ; $53f0: $23
	set  0, [hl]                                     ; $53f1: $cb $c6
	inc  hl                                          ; $53f3: $23
	set  0, [hl]                                     ; $53f4: $cb $c6
	inc  hl                                          ; $53f6: $23
	set  0, [hl]                                     ; $53f7: $cb $c6
	inc  hl                                          ; $53f9: $23
	set  0, [hl]                                     ; $53fa: $cb $c6
	inc  hl                                          ; $53fc: $23
	set  0, [hl]                                     ; $53fd: $cb $c6
	inc  hl                                          ; $53ff: $23
	set  0, [hl]                                     ; $5400: $cb $c6
	inc  hl                                          ; $5402: $23
	set  0, [hl]                                     ; $5403: $cb $c6
	inc  hl                                          ; $5405: $23
	set  0, [hl]                                     ; $5406: $cb $c6
	inc  hl                                          ; $5408: $23
	set  0, [hl]                                     ; $5409: $cb $c6
	inc  hl                                          ; $540b: $23
	set  0, [hl]                                     ; $540c: $cb $c6
	inc  hl                                          ; $540e: $23
	set  0, [hl]                                     ; $540f: $cb $c6
	ret                                              ; $5411: $c9


Call_009_5412:
	ld   bc, $0003                                   ; $5412: $01 $03 $00
	add  hl, bc                                      ; $5415: $09
	res  0, [hl]                                     ; $5416: $cb $86
	inc  hl                                          ; $5418: $23
	res  0, [hl]                                     ; $5419: $cb $86
	inc  hl                                          ; $541b: $23
	res  0, [hl]                                     ; $541c: $cb $86
	inc  hl                                          ; $541e: $23
	res  0, [hl]                                     ; $541f: $cb $86
	inc  hl                                          ; $5421: $23
	res  0, [hl]                                     ; $5422: $cb $86
	inc  hl                                          ; $5424: $23
	res  0, [hl]                                     ; $5425: $cb $86
	inc  hl                                          ; $5427: $23
	res  0, [hl]                                     ; $5428: $cb $86
	inc  hl                                          ; $542a: $23
	res  0, [hl]                                     ; $542b: $cb $86
	inc  hl                                          ; $542d: $23
	res  0, [hl]                                     ; $542e: $cb $86
	inc  hl                                          ; $5430: $23
	res  0, [hl]                                     ; $5431: $cb $86
	inc  hl                                          ; $5433: $23
	res  0, [hl]                                     ; $5434: $cb $86
	inc  hl                                          ; $5436: $23
	res  0, [hl]                                     ; $5437: $cb $86
	inc  hl                                          ; $5439: $23
	res  0, [hl]                                     ; $543a: $cb $86
	inc  hl                                          ; $543c: $23
	res  0, [hl]                                     ; $543d: $cb $86
	inc  hl                                          ; $543f: $23
	res  0, [hl]                                     ; $5440: $cb $86
	inc  hl                                          ; $5442: $23
	res  0, [hl]                                     ; $5443: $cb $86
	ld   bc, $0011                                   ; $5445: $01 $11 $00
	add  hl, bc                                      ; $5448: $09
	res  0, [hl]                                     ; $5449: $cb $86
	inc  hl                                          ; $544b: $23
	res  0, [hl]                                     ; $544c: $cb $86
	inc  hl                                          ; $544e: $23
	res  0, [hl]                                     ; $544f: $cb $86
	inc  hl                                          ; $5451: $23
	res  0, [hl]                                     ; $5452: $cb $86
	inc  hl                                          ; $5454: $23
	res  0, [hl]                                     ; $5455: $cb $86
	inc  hl                                          ; $5457: $23
	res  0, [hl]                                     ; $5458: $cb $86
	inc  hl                                          ; $545a: $23
	res  0, [hl]                                     ; $545b: $cb $86
	inc  hl                                          ; $545d: $23
	res  0, [hl]                                     ; $545e: $cb $86
	inc  hl                                          ; $5460: $23
	res  0, [hl]                                     ; $5461: $cb $86
	inc  hl                                          ; $5463: $23
	res  0, [hl]                                     ; $5464: $cb $86
	inc  hl                                          ; $5466: $23
	res  0, [hl]                                     ; $5467: $cb $86
	inc  hl                                          ; $5469: $23
	res  0, [hl]                                     ; $546a: $cb $86
	inc  hl                                          ; $546c: $23
	res  0, [hl]                                     ; $546d: $cb $86
	inc  hl                                          ; $546f: $23
	res  0, [hl]                                     ; $5470: $cb $86
	inc  hl                                          ; $5472: $23
	res  0, [hl]                                     ; $5473: $cb $86
	inc  hl                                          ; $5475: $23
	res  0, [hl]                                     ; $5476: $cb $86
	ret                                              ; $5478: $c9


Call_009_5479:
	ld   hl, $cbeb                                   ; $5479: $21 $eb $cb
	ld   a, [hl]                                     ; $547c: $7e
	and  $3f                                         ; $547d: $e6 $3f
	srl  a                                           ; $547f: $cb $3f
	inc  [hl]                                        ; $5481: $34
	ld   h, $00                                      ; $5482: $26 $00
	ld   l, a                                        ; $5484: $6f
	ld   bc, $54a4                                   ; $5485: $01 $a4 $54
	add  hl, bc                                      ; $5488: $09
	ld   a, [hl]                                     ; $5489: $7e
	ld   h, $00                                      ; $548a: $26 $00
	ld   l, a                                        ; $548c: $6f
	add  hl, hl                                      ; $548d: $29
	ld   bc, $54c4                                   ; $548e: $01 $c4 $54
	add  hl, bc                                      ; $5491: $09
	ld   a, $09                                      ; $5492: $3e $09
	ld   de, wBGPalettes+1*8                                   ; $5494: $11 $e6 $c2
	ld   bc, $0002                                   ; $5497: $01 $02 $00
	call FarMemCopy                                       ; $549a: $cd $b2 $09
	ld   bc, $0404                                   ; $549d: $01 $04 $04
	call SetBGandOBJPaletteRangesToUpdate                                       ; $54a0: $cd $aa $04
	ret                                              ; $54a3: $c9


	ld   b, $06                                      ; $54a4: $06 $06
	ld   b, $06                                      ; $54a6: $06 $06
	ld   b, $06                                      ; $54a8: $06 $06
	ld   b, $06                                      ; $54aa: $06 $06
	rlca                                             ; $54ac: $07
	ld   [$0a09], sp                                 ; $54ad: $08 $09 $0a
	dec  bc                                          ; $54b0: $0b
	inc  c                                           ; $54b1: $0c
	dec  c                                           ; $54b2: $0d
	ld   c, $0f                                      ; $54b3: $0e $0f
	rrca                                             ; $54b5: $0f
	rrca                                             ; $54b6: $0f
	rrca                                             ; $54b7: $0f
	rrca                                             ; $54b8: $0f
	rrca                                             ; $54b9: $0f
	rrca                                             ; $54ba: $0f
	rrca                                             ; $54bb: $0f
	ld   c, $0d                                      ; $54bc: $0e $0d
	inc  c                                           ; $54be: $0c
	dec  bc                                          ; $54bf: $0b
	ld   a, [bc]                                     ; $54c0: $0a
	add  hl, bc                                      ; $54c1: $09
	ld   [$ff07], sp                                 ; $54c2: $08 $07 $ff
	ld   a, a                                        ; $54c5: $7f
	cp   a                                           ; $54c6: $bf
	ld   [hl], a                                     ; $54c7: $77
	ld   a, a                                        ; $54c8: $7f
	ld   l, a                                        ; $54c9: $6f
	ccf                                              ; $54ca: $3f
	ld   h, a                                        ; $54cb: $67
	rst  $38                                         ; $54cc: $ff
	ld   e, [hl]                                     ; $54cd: $5e
	cp   a                                           ; $54ce: $bf
	ld   d, [hl]                                     ; $54cf: $56
	ld   a, a                                        ; $54d0: $7f
	ld   c, [hl]                                     ; $54d1: $4e
	ccf                                              ; $54d2: $3f
	ld   b, [hl]                                     ; $54d3: $46
	rst  $38                                         ; $54d4: $ff
	dec  a                                           ; $54d5: $3d
	cp   a                                           ; $54d6: $bf
	dec  [hl]                                        ; $54d7: $35
	ld   a, a                                        ; $54d8: $7f
	dec  l                                           ; $54d9: $2d
	ccf                                              ; $54da: $3f
	dec  h                                           ; $54db: $25
	rst  $38                                         ; $54dc: $ff
	inc  e                                           ; $54dd: $1c
	cp   a                                           ; $54de: $bf
	inc  d                                           ; $54df: $14
	ld   a, a                                        ; $54e0: $7f
	inc  c                                           ; $54e1: $0c
	rra                                              ; $54e2: $1f
	nop                                              ; $54e3: $00
	ld   hl, $cbe5                                   ; $54e4: $21 $e5 $cb
	ld   a, [hl]                                     ; $54e7: $7e
	or   a                                           ; $54e8: $b7
	jr   nz, jr_009_5532                             ; $54e9: $20 $47

	inc  [hl]                                        ; $54eb: $34
	ld   a, $0d                                      ; $54ec: $3e $0d
	ld   hl, $4f80                                   ; $54ee: $21 $80 $4f
	ld   de, $c356                                   ; $54f1: $11 $56 $c3
	ld   bc, $0008                                   ; $54f4: $01 $08 $00
	call FarMemCopy                                       ; $54f7: $cd $b2 $09
	ld   bc, $3c3f                                   ; $54fa: $01 $3f $3c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $54fd: $cd $aa $04
	ld   a, $01                                      ; $5500: $3e $01
	ld   hl, $0000                                   ; $5502: $21 $00 $00
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $5505: $cd $4b $2f
	ld   [$cbf5], a                                  ; $5508: $ea $f5 $cb
	call StartAnimatingAnimatedSpriteSpec                                       ; $550b: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $550e: $cd $76 $30
	ld   a, $00                                      ; $5511: $3e $00
	ld   bc, $0040                                   ; $5513: $01 $40 $00
	ld   de, $7762                                   ; $5516: $11 $62 $77
	push af                                          ; $5519: $f5
	ld   a, $03                                      ; $551a: $3e $03
	ld   [wFarCallAddr], a                                  ; $551c: $ea $98 $c2
	ld   a, $41                                      ; $551f: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $5521: $ea $99 $c2
	ld   a, $01                                      ; $5524: $3e $01
	ld   [wFarCallBank], a                                  ; $5526: $ea $9a $c2
	pop  af                                          ; $5529: $f1
	call FarCall                                       ; $552a: $cd $62 $09
	xor  a                                           ; $552d: $af
	ld   [$cbf6], a                                  ; $552e: $ea $f6 $cb
	ret                                              ; $5531: $c9


jr_009_5532:
	ld   a, $27                                      ; $5532: $3e $27
	call Func_1d3d                                       ; $5534: $cd $3d $1d
	or   a                                           ; $5537: $b7
	jr   nz, jr_009_5548                             ; $5538: $20 $0e

	ld   hl, $cbf6                                   ; $553a: $21 $f6 $cb
	ld   a, [hl]                                     ; $553d: $7e
	inc  [hl]                                        ; $553e: $34
	cp   $05                                         ; $553f: $fe $05
	jr   nc, jr_009_554e                             ; $5541: $30 $0b

	ld   a, $27                                      ; $5543: $3e $27
	call PlaySoundEffect                                       ; $5545: $cd $df $1a

jr_009_5548:
	ld   a, [wInGameButtonsPressed]                                  ; $5548: $fa $10 $c2
	bit  0, a                                        ; $554b: $cb $47
	ret  z                                           ; $554d: $c8

jr_009_554e:
	ld   a, [$cbf5]                                  ; $554e: $fa $f5 $cb
	call DeleteAnimatedSpriteSpec                                       ; $5551: $cd $bb $2f
	ld   a, $07                                      ; $5554: $3e $07
	ld   [$cbe4], a                                  ; $5556: $ea $e4 $cb
	xor  a                                           ; $5559: $af
	ld   [$cbe5], a                                  ; $555a: $ea $e5 $cb
	ret                                              ; $555d: $c9


	ld   a, [$cbf4]                                  ; $555e: $fa $f4 $cb
	or   a                                           ; $5561: $b7
	jp   nz, Jump_009_5599                           ; $5562: $c2 $99 $55

	ld   a, [$cbe5]                                  ; $5565: $fa $e5 $cb
	or   a                                           ; $5568: $b7
	jr   nz, jr_009_5588                             ; $5569: $20 $1d

	xor  a                                           ; $556b: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $556c: $ea $62 $c3
	ld   a, $08                                      ; $556f: $3e $08
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5571: $ea $63 $c3
	ld   a, $03                                      ; $5574: $3e $03
	ld   b, $00                                      ; $5576: $06 $00
	ld   hl, wBGPalettes                                   ; $5578: $21 $de $c2
	ld   c, $09                                      ; $557b: $0e $09
	ld   de, $5650                                   ; $557d: $11 $50 $56
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5580: $cd $48 $07
	ld   a, $21                                      ; $5583: $3e $21
	call PlaySoundEffect                                       ; $5585: $cd $df $1a

jr_009_5588:
	ld   hl, $cbe5                                   ; $5588: $21 $e5 $cb
	ld   a, [hl]                                     ; $558b: $7e
	inc  [hl]                                        ; $558c: $34
	cp   $07                                         ; $558d: $fe $07
	jp   nc, Jump_009_5627                           ; $558f: $d2 $27 $56

	ld   bc, $0008                                   ; $5592: $01 $08 $00
	call FadePalettesAndSetRangeToUpdate                                       ; $5595: $cd $32 $08
	ret                                              ; $5598: $c9


Jump_009_5599:
	ld   hl, $cbe5                                   ; $5599: $21 $e5 $cb
	ld   a, [hl]                                     ; $559c: $7e
	or   a                                           ; $559d: $b7
	jr   nz, jr_009_561c                             ; $559e: $20 $7c

	inc  [hl]                                        ; $55a0: $34
	ld   a, [wWramBank]                                  ; $55a1: $fa $93 $c2
	push af                                          ; $55a4: $f5
	ld   a, $07                                      ; $55a5: $3e $07
	ld   [wWramBank], a                                  ; $55a7: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $55aa: $e0 $70
	ld   hl, $d000                                   ; $55ac: $21 $00 $d0
	ld   bc, $0080                                   ; $55af: $01 $80 $00
	ld   de, $0808                                   ; $55b2: $11 $08 $08
	call CopyEthenDintoHL_BCtimes                                       ; $55b5: $cd $9f $09
	ld   hl, $d100                                   ; $55b8: $21 $00 $d1
	ld   bc, $0080                                   ; $55bb: $01 $80 $00
	ld   de, $ffff                                   ; $55be: $11 $ff $ff
	call CopyEthenDintoHL_BCtimes                                       ; $55c1: $cd $9f $09
	pop  af                                          ; $55c4: $f1
	ld   [wWramBank], a                                  ; $55c5: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $55c8: $e0 $70
	ld   c, $81                                      ; $55ca: $0e $81
	ld   de, $9940                                   ; $55cc: $11 $40 $99
	ld   a, $07                                      ; $55cf: $3e $07
	ld   hl, $d000                                   ; $55d1: $21 $00 $d0
	ld   b, $10                                      ; $55d4: $06 $10
	call EnqueueHDMATransfer                                       ; $55d6: $cd $7c $02
	ld   c, $80                                      ; $55d9: $0e $80
	ld   de, $9940                                   ; $55db: $11 $40 $99
	ld   a, $07                                      ; $55de: $3e $07
	ld   hl, $d100                                   ; $55e0: $21 $00 $d1
	ld   b, $10                                      ; $55e3: $06 $10
	call EnqueueHDMATransfer                                       ; $55e5: $cd $7c $02
	ld   c, $01                                      ; $55e8: $0e $01
	ld   de, $9c00                                   ; $55ea: $11 $00 $9c
	ld   a, $0d                                      ; $55ed: $3e $0d
	ld   hl, $4e80                                   ; $55ef: $21 $80 $4e
	ld   b, $10                                      ; $55f2: $06 $10
	call EnqueueHDMATransfer                                       ; $55f4: $cd $7c $02
	ld   c, $00                                      ; $55f7: $0e $00
	ld   de, $9c00                                   ; $55f9: $11 $00 $9c
	ld   a, $0d                                      ; $55fc: $3e $0d
	ld   hl, $4d80                                   ; $55fe: $21 $80 $4d
	ld   b, $10                                      ; $5601: $06 $10
	call EnqueueHDMATransfer                                       ; $5603: $cd $7c $02
	ld   hl, wLCDC                                   ; $5606: $21 $03 $c2
	set  5, [hl]                                     ; $5609: $cb $ee
	set  6, [hl]                                     ; $560b: $cb $f6
	ld   a, $07                                      ; $560d: $3e $07
	ld   [wWX], a                                  ; $560f: $ea $09 $c2
	ld   a, $50                                      ; $5612: $3e $50
	ld   [wWY], a                                  ; $5614: $ea $0a $c2
	ld   a, $24                                      ; $5617: $3e $24
	call PlaySoundEffect                                       ; $5619: $cd $df $1a

jr_009_561c:
	ld   a, [wWY]                                  ; $561c: $fa $0a $c2
	add  $08                                         ; $561f: $c6 $08
	ld   [wWY], a                                  ; $5621: $ea $0a $c2
	cp   $90                                         ; $5624: $fe $90
	ret  c                                           ; $5626: $d8

Jump_009_5627:
	ld   a, $09                                      ; $5627: $3e $09
	ld   hl, $5650                                   ; $5629: $21 $50 $56
	ld   de, wBGPalettes                                   ; $562c: $11 $de $c2
	ld   bc, $0010                                   ; $562f: $01 $10 $00
	call FarMemCopy                                       ; $5632: $cd $b2 $09
	ld   bc, $0007                                   ; $5635: $01 $07 $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5638: $cd $aa $04
	ld   hl, wLCDC                                   ; $563b: $21 $03 $c2
	res  5, [hl]                                     ; $563e: $cb $ae
	res  6, [hl]                                     ; $5640: $cb $b6
	ld   hl, wIE                                   ; $5642: $21 $0d $c2
	res  1, [hl]                                     ; $5645: $cb $8e
	ld   hl, $cbe4                                   ; $5647: $21 $e4 $cb
	inc  [hl]                                        ; $564a: $34
	xor  a                                           ; $564b: $af
	ld   [$cbe5], a                                  ; $564c: $ea $e5 $cb
	ret                                              ; $564f: $c9


	rst  $38                                         ; $5650: $ff
	ld   a, a                                        ; $5651: $7f
	rst  $38                                         ; $5652: $ff
	ld   a, a                                        ; $5653: $7f
	rst  $38                                         ; $5654: $ff
	ld   a, a                                        ; $5655: $7f
	rst  $38                                         ; $5656: $ff
	ld   a, a                                        ; $5657: $7f
	rst  $38                                         ; $5658: $ff
	ld   a, a                                        ; $5659: $7f
	rst  $38                                         ; $565a: $ff
	ld   a, a                                        ; $565b: $7f
	rst  $38                                         ; $565c: $ff
	ld   a, a                                        ; $565d: $7f
	rst  $38                                         ; $565e: $ff
	ld   a, a                                        ; $565f: $7f
	ld   hl, $cbe5                                   ; $5660: $21 $e5 $cb
	ld   a, [hl]                                     ; $5663: $7e
	inc  [hl]                                        ; $5664: $34
	or   a                                           ; $5665: $b7
	jr   nz, jr_009_5695                             ; $5666: $20 $2d

	ld   a, [wWramBank]                                  ; $5668: $fa $93 $c2
	push af                                          ; $566b: $f5
	ld   a, $02                                      ; $566c: $3e $02
	ld   [wWramBank], a                                  ; $566e: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5671: $e0 $70
	ld   hl, $d340                                   ; $5673: $21 $40 $d3
	ld   bc, $0360                                   ; $5676: $01 $60 $03
	ld   de, $0000                                   ; $5679: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $567c: $cd $9f $09
	pop  af                                          ; $567f: $f1
	ld   [wWramBank], a                                  ; $5680: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5683: $e0 $70
	ld   c, $81                                      ; $5685: $0e $81
	ld   de, $8800                                   ; $5687: $11 $00 $88
	ld   a, $02                                      ; $568a: $3e $02
	ld   hl, $d340                                   ; $568c: $21 $40 $d3
	ld   b, $40                                      ; $568f: $06 $40
	call EnqueueHDMATransfer                                       ; $5691: $cd $7c $02
	ret                                              ; $5694: $c9


jr_009_5695:
	ld   c, $81                                      ; $5695: $0e $81
	ld   de, $8c00                                   ; $5697: $11 $00 $8c
	ld   a, $02                                      ; $569a: $3e $02
	ld   hl, $d340                                   ; $569c: $21 $40 $d3
	ld   b, $2c                                      ; $569f: $06 $2c
	call EnqueueHDMATransfer                                       ; $56a1: $cd $7c $02
	ld   hl, $cbe4                                   ; $56a4: $21 $e4 $cb
	set  7, [hl]                                     ; $56a7: $cb $fe
	ret                                              ; $56a9: $c9


LCDCFunc08::
	ld   hl, $c20b                                   ; $56aa: $21 $0b $c2
	ldh  a, [rLY]                                    ; $56ad: $f0 $44
	cp   [hl]                                        ; $56af: $be
	jp   nz, LCDCInterruptHandler.return                                   ; $56b0: $c2 $4a $04

jr_009_56b3:
	ldh  a, [rSTAT]                                  ; $56b3: $f0 $41
	and  $03                                         ; $56b5: $e6 $03
	jr   z, jr_009_56b3                              ; $56b7: $28 $fa

jr_009_56b9:
	ldh  a, [rSTAT]                                  ; $56b9: $f0 $41
	and  $03                                         ; $56bb: $e6 $03
	jr   nz, jr_009_56b9                             ; $56bd: $20 $fa

	ldh  a, [rLCDC]                                  ; $56bf: $f0 $40
	or   $10                                         ; $56c1: $f6 $10
	ldh  [rLCDC], a                                  ; $56c3: $e0 $40
	jp   LCDCInterruptHandler.return                                       ; $56c5: $c3 $4a $04


GameState41_TreasureChest::
; Branch if not init substate
	ld   a, [wGameSubstate]                                         ; $56c8
	dec  a                                                          ; $56cb
	jp   z, TreasureChestSubstate1                                  ; $56cc

	dec  a                                                          ; $56cf
	jp   z, TreasureChestSubstate2                                  ; $56d0

; Play song and max aud vol
	ld   a, SONG_14                                                 ; $56d3
	call PlaySong                                                   ; $56d5

	ld   a, $07                                                     ; $56d8
	call SafeSetAudVolForMultipleChannels                           ; $56da

;
	xor  a                                           ; $56dd: $af
	ld   [$cc57], a                                  ; $56de: $ea $57 $cc
	ld   [$cc58], a                                  ; $56e1: $ea $58 $cc
	jp   Jump_009_56e7                               ; $56e4: $c3 $e7 $56

Jump_009_56e7:
;
	ld   a, [wWramBank]                                  ; $56e7: $fa $93 $c2
	push af                                          ; $56ea: $f5

	ld   a, $02                                      ; $56eb: $3e $02
	ld   [wWramBank], a                                  ; $56ed: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $56f0: $e0 $70

; Clear display regs, and turn on LCD with window enabled
	call ClearDisplayRegsAllowVBlankInt                             ; $56f2

	ld   a, [wLCDC]                                                 ; $56f5
	and  LCDCF_ON                                                   ; $56f8
	or   LCDCF_ON|LCDCF_WINON|LCDCF_OBJ16|LCDCF_OBJON|LCDCF_BGON    ; $56fa
	ld   [wLCDC], a                                                 ; $56fc
	ldh  [rLCDC], a                                                 ; $56ff

; Load all white palettes, and update hw pals
	ld   a, BANK(Palettes_AllWhite)                                 ; $5701
	ld   hl, Palettes_AllWhite                                      ; $5703
	ld   de, wBGPalettes                                            ; $5706
	ld   bc, NUM_PALETTE_BYTES * 2                                  ; $5709
	call FarMemCopy                                                 ; $570c

	ldbc $00, $3f                                                   ; $570f
	call SetBGandOBJPaletteRangesToUpdate                           ; $5712

;
	ld   a, $07                                      ; $5715: $3e $07
	ld   [$c20b], a                                  ; $5717: $ea $0b $c2

;
	ld   hl, $c20c                                   ; $571a: $21 $0c $c2
	set  6, [hl]                                     ; $571d: $cb $f6

; Allow LCDC interrupts, and set starting params
	ld   hl, wIE                                                    ; $571f
	set  1, [hl]                                                    ; $5722

	ld   a, LCDINT_0a                                               ; $5724
	ld   [wLCDCIntFuncIdx], a                                       ; $5726
	
	ld   a, $70                                                     ; $5729
	ld   [wSCY], a                                                  ; $572b
	ld   a, $07                                                     ; $572e
	ld   [wWX], a                                                   ; $5730
	ld   a, $68                                                     ; $5733
	ld   [wWY], a                                                   ; $5735

; Allow all inputs, clear oam and base anim sprite spec details
	ld   a, $ff                                                     ; $5738
	ld   [wInGameInputsEnabled], a                                  ; $573a

	call ClearOam                                                   ; $573d
	call ClearBaseAnimSpriteSpecDetails                             ; $5740

;
	ld   a, $08                                      ; $5743: $3e $08
	ld   [$cc5b], a                                  ; $5745: $ea $5b $cc
	ld   a, [$cc57]                                  ; $5748: $fa $57 $cc
	and  $0f                                         ; $574b: $e6 $0f
	swap a                                           ; $574d: $cb $37
	sub  $08                                         ; $574f: $d6 $08
	ld   [$cc5a], a                                  ; $5751: $ea $5a $cc
	call Call_009_58eb                               ; $5754: $cd $eb $58
	ld   a, [$cc57]                                  ; $5757: $fa $57 $cc
	call Call_009_59a0                               ; $575a: $cd $a0 $59
	ld   a, [$cc58]                                  ; $575d: $fa $58 $cc
	call Call_009_5a40                               ; $5760: $cd $40 $5a
	xor  a                                           ; $5763: $af
	ld   [$cc5c], a                                  ; $5764: $ea $5c $cc

;
	ld   a, $00                                      ; $5767: $3e $00
	ld   hl, $0000                                   ; $5769: $21 $00 $00
	ld   d, h                                        ; $576c: $54
	ld   e, l                                        ; $576d: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $576e: $cd $4b $2f
	call StartAnimatingAnimatedSpriteSpec                                       ; $5771: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5774: $cd $76 $30
	ld   bc, $8808                                   ; $5777: $01 $08 $88
	ld   d, $09                                      ; $577a: $16 $09
	ld   a, [$cc54]                                  ; $577c: $fa $54 $cc
	dec  a                                           ; $577f: $3d
	add  $0a                                         ; $5780: $c6 $0a
	ld   e, a                                        ; $5782: $5f

	M_FarCall LoadType0NewAnimatedSpriteSpecDetails

;
	ld   a, $00                                      ; $5797: $3e $00
	ld   hl, $0000                                   ; $5799: $21 $00 $00
	ld   d, h                                        ; $579c: $54
	ld   e, l                                        ; $579d: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $579e: $cd $4b $2f
	ld   [$cc5e], a                                  ; $57a1: $ea $5e $cc
	call StartAnimatingAnimatedSpriteSpec                                       ; $57a4: $cd $14 $30
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $57a7: $cd $76 $30
	ldbc $88, $08                                   ; $57aa: $01 $08 $88
	ld   d, $09                                      ; $57ad: $16 $09
	ld   a, $19                                      ; $57af: $3e $19
	ld   e, a                                        ; $57b1: $5f

	M_FarCall LoadType0NewAnimatedSpriteSpecDetails

;
	xor  a                                           ; $57c6: $af
	ld   [$cc66], a                                  ; $57c7: $ea $66 $cc
	ld   [$cc50], a                                  ; $57ca: $ea $50 $cc
	ld   [$cc51], a                                  ; $57cd: $ea $51 $cc

; Go to substate 2
	ld   a, $02                                                     ; $57d0
	ld   [wGameSubstate], a                                         ; $57d2

; Restore ram bank
	pop  af                                                         ; $57d5
	ld   [wWramBank], a                                             ; $57d6
	ldh  [rSVBK], a                                                 ; $57d9
	ret                                                             ; $57db


Call_009_57dc:
	ld   a, [wWramBank]                                  ; $57dc: $fa $93 $c2
	push af                                          ; $57df: $f5
	ld   a, $07                                      ; $57e0: $3e $07
	ld   [wWramBank], a                                  ; $57e2: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $57e5: $e0 $70
	ld   hl, $d000                                   ; $57e7: $21 $00 $d0
	ld   de, $000c                                   ; $57ea: $11 $0c $00
	ld   b, $20                                      ; $57ed: $06 $20

jr_009_57ef:
	call Call_009_57fd                               ; $57ef: $cd $fd $57
	add  hl, de                                      ; $57f2: $19
	dec  b                                           ; $57f3: $05
	jr   nz, jr_009_57ef                             ; $57f4: $20 $f9

	pop  af                                          ; $57f6: $f1
	ld   [wWramBank], a                                  ; $57f7: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $57fa: $e0 $70
	ret                                              ; $57fc: $c9


Call_009_57fd:
	ld   a, $01                                      ; $57fd: $3e $01
	ld   [hl+], a                                    ; $57ff: $22
	ld   [hl+], a                                    ; $5800: $22
	xor  a                                           ; $5801: $af
	ld   [hl+], a                                    ; $5802: $22
	ld   [hl+], a                                    ; $5803: $22
	ld   [hl+], a                                    ; $5804: $22
	set  3, a                                        ; $5805: $cb $df
	ld   [hl+], a                                    ; $5807: $22
	ld   [hl+], a                                    ; $5808: $22
	ld   [hl+], a                                    ; $5809: $22
	ld   [hl+], a                                    ; $580a: $22
	ld   [hl+], a                                    ; $580b: $22
	ld   [hl+], a                                    ; $580c: $22
	ld   [hl+], a                                    ; $580d: $22
	ld   [hl+], a                                    ; $580e: $22
	ld   [hl+], a                                    ; $580f: $22
	ld   [hl+], a                                    ; $5810: $22
	res  3, a                                        ; $5811: $cb $9f
	ld   [hl+], a                                    ; $5813: $22
	ld   [hl+], a                                    ; $5814: $22
	ld   a, $01                                      ; $5815: $3e $01
	ld   [hl+], a                                    ; $5817: $22
	ld   [hl+], a                                    ; $5818: $22
	ld   [hl+], a                                    ; $5819: $22
	ret                                              ; $581a: $c9


Call_009_581b:
	ld   a, [wWramBank]                                  ; $581b: $fa $93 $c2
	push af                                          ; $581e: $f5
	ld   a, $07                                      ; $581f: $3e $07
	ld   [wWramBank], a                                  ; $5821: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5824: $e0 $70
	ld   hl, $d400                                   ; $5826: $21 $00 $d4
	ld   de, $000c                                   ; $5829: $11 $0c $00
	ld   b, $20                                      ; $582c: $06 $20

jr_009_582e:
	ld   a, $f8                                      ; $582e: $3e $f8
	ld   [hl+], a                                    ; $5830: $22
	ld   a, $fa                                      ; $5831: $3e $fa
	ld   [hl+], a                                    ; $5833: $22
	ld   a, $80                                      ; $5834: $3e $80
	ld   [hl+], a                                    ; $5836: $22
	ld   [hl+], a                                    ; $5837: $22
	ld   [hl+], a                                    ; $5838: $22
	ld   [hl+], a                                    ; $5839: $22
	ld   [hl+], a                                    ; $583a: $22
	ld   [hl+], a                                    ; $583b: $22
	ld   [hl+], a                                    ; $583c: $22
	ld   [hl+], a                                    ; $583d: $22
	ld   [hl+], a                                    ; $583e: $22
	ld   [hl+], a                                    ; $583f: $22
	ld   [hl+], a                                    ; $5840: $22
	ld   [hl+], a                                    ; $5841: $22
	ld   [hl+], a                                    ; $5842: $22
	ld   [hl+], a                                    ; $5843: $22
	ld   [hl+], a                                    ; $5844: $22
	ld   a, $fb                                      ; $5845: $3e $fb
	ld   [hl+], a                                    ; $5847: $22
	ld   a, $dc                                      ; $5848: $3e $dc
	ld   [hl+], a                                    ; $584a: $22
	ld   a, $ea                                      ; $584b: $3e $ea
	ld   [hl+], a                                    ; $584d: $22
	add  hl, de                                      ; $584e: $19
	dec  b                                           ; $584f: $05
	jr   nz, jr_009_582e                             ; $5850: $20 $dc

	pop  af                                          ; $5852: $f1
	ld   [wWramBank], a                                  ; $5853: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5856: $e0 $70
	ret                                              ; $5858: $c9


Call_009_5859:
	ld   a, [wWramBank]                                  ; $5859: $fa $93 $c2
	push af                                          ; $585c: $f5
	ld   a, $07                                      ; $585d: $3e $07
	ld   [wWramBank], a                                  ; $585f: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5862: $e0 $70
	call Call_009_581b                               ; $5864: $cd $1b $58
	ld   a, [$cc57]                                  ; $5867: $fa $57 $cc
	and  $07                                         ; $586a: $e6 $07
	ld   h, a                                        ; $586c: $67
	ld   l, $14                                      ; $586d: $2e $14
	call AequHtimesL                                       ; $586f: $cd $ac $0b
	add  $e0                                         ; $5872: $c6 $e0
	ld   hl, $d405                                   ; $5874: $21 $05 $d4
	ld   de, $0016                                   ; $5877: $11 $16 $00
	ld   b, $06                                      ; $587a: $06 $06
	ld   c, $02                                      ; $587c: $0e $02

jr_009_587e:
	call Call_009_58c0                               ; $587e: $cd $c0 $58
	cp   $80                                         ; $5881: $fe $80
	jr   nz, jr_009_5887                             ; $5883: $20 $02

	ld   a, $e0                                      ; $5885: $3e $e0

jr_009_5887:
	add  hl, de                                      ; $5887: $19
	dec  b                                           ; $5888: $05
	jr   nz, jr_009_587e                             ; $5889: $20 $f3

	pop  af                                          ; $588b: $f1
	ld   [wWramBank], a                                  ; $588c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $588f: $e0 $70
	ret                                              ; $5891: $c9


Call_009_5892:
	ld   a, [wWramBank]                                  ; $5892: $fa $93 $c2
	push af                                          ; $5895: $f5
	ld   a, $07                                      ; $5896: $3e $07
	ld   [wWramBank], a                                  ; $5898: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $589b: $e0 $70
	call Call_009_581b                               ; $589d: $cd $1b $58
	ld   hl, $d405                                   ; $58a0: $21 $05 $d4
	ld   de, $0016                                   ; $58a3: $11 $16 $00
	ld   b, $10                                      ; $58a6: $06 $10
	ld   c, $02                                      ; $58a8: $0e $02
	ld   a, $e0                                      ; $58aa: $3e $e0

jr_009_58ac:
	call Call_009_58c0                               ; $58ac: $cd $c0 $58
	cp   $80                                         ; $58af: $fe $80
	jr   nz, jr_009_58b5                             ; $58b1: $20 $02

	ld   a, $e0                                      ; $58b3: $3e $e0

jr_009_58b5:
	add  hl, de                                      ; $58b5: $19
	dec  b                                           ; $58b6: $05
	jr   nz, jr_009_58ac                             ; $58b7: $20 $f3

	pop  af                                          ; $58b9: $f1
	ld   [wWramBank], a                                  ; $58ba: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $58bd: $e0 $70
	ret                                              ; $58bf: $c9


Call_009_58c0:
	ld   [hl+], a                                    ; $58c0: $22
	add  c                                           ; $58c1: $81
	ld   [hl+], a                                    ; $58c2: $22
	add  c                                           ; $58c3: $81
	ld   [hl+], a                                    ; $58c4: $22
	add  c                                           ; $58c5: $81
	ld   [hl+], a                                    ; $58c6: $22
	add  c                                           ; $58c7: $81
	ld   [hl+], a                                    ; $58c8: $22
	add  c                                           ; $58c9: $81
	ld   [hl+], a                                    ; $58ca: $22
	add  c                                           ; $58cb: $81
	ld   [hl+], a                                    ; $58cc: $22
	add  c                                           ; $58cd: $81
	ld   [hl+], a                                    ; $58ce: $22
	add  c                                           ; $58cf: $81
	ld   [hl+], a                                    ; $58d0: $22
	add  c                                           ; $58d1: $81
	ld   [hl+], a                                    ; $58d2: $22
	add  hl, de                                      ; $58d3: $19
	sub  $11                                         ; $58d4: $d6 $11
	ld   [hl+], a                                    ; $58d6: $22
	add  c                                           ; $58d7: $81
	ld   [hl+], a                                    ; $58d8: $22
	add  c                                           ; $58d9: $81
	ld   [hl+], a                                    ; $58da: $22
	add  c                                           ; $58db: $81
	ld   [hl+], a                                    ; $58dc: $22
	add  c                                           ; $58dd: $81
	ld   [hl+], a                                    ; $58de: $22
	add  c                                           ; $58df: $81
	ld   [hl+], a                                    ; $58e0: $22
	add  c                                           ; $58e1: $81
	ld   [hl+], a                                    ; $58e2: $22
	add  c                                           ; $58e3: $81
	ld   [hl+], a                                    ; $58e4: $22
	add  c                                           ; $58e5: $81
	ld   [hl+], a                                    ; $58e6: $22
	add  c                                           ; $58e7: $81
	ld   [hl+], a                                    ; $58e8: $22
	inc  a                                           ; $58e9: $3c
	ret                                              ; $58ea: $c9


Call_009_58eb:
	xor  a                                           ; $58eb: $af
	ld   [$cc56], a                                  ; $58ec: $ea $56 $cc
	xor  a                                           ; $58ef: $af
	call HLequAddrOfChestItemMetadata                               ; $58f0: $cd $4f $66
	xor  a                                           ; $58f3: $af
	ld   de, $d880                                   ; $58f4: $11 $80 $d8

jr_009_58f7:
	push hl                                          ; $58f7: $e5
	push de                                          ; $58f8: $d5
	push af                                          ; $58f9: $f5
	ld   a, [hl+]                                    ; $58fa: $2a
	ld   h, [hl]                                     ; $58fb: $66
	ld   l, a                                        ; $58fc: $6f
	or   h                                           ; $58fd: $b4
	jr   z, jr_009_591a                              ; $58fe: $28 $1a

	call Call_009_5973                               ; $5900: $cd $73 $59
	or   a                                           ; $5903: $b7
	jr   z, jr_009_5910                              ; $5904: $28 $0a

	pop  af                                          ; $5906: $f1
	pop  de                                          ; $5907: $d1
	ld   [de], a                                     ; $5908: $12
	inc  de                                          ; $5909: $13
	push de                                          ; $590a: $d5
	push af                                          ; $590b: $f5
	ld   hl, $cc56                                   ; $590c: $21 $56 $cc
	inc  [hl]                                        ; $590f: $34

jr_009_5910:
	pop  af                                          ; $5910: $f1
	inc  a                                           ; $5911: $3c
	pop  de                                          ; $5912: $d1
	pop  hl                                          ; $5913: $e1
	ld   bc, $0006                                   ; $5914: $01 $06 $00
	add  hl, bc                                      ; $5917: $09
	jr   jr_009_58f7                                 ; $5918: $18 $dd

jr_009_591a:
	pop  hl                                          ; $591a: $e1
	pop  de                                          ; $591b: $d1
	pop  af                                          ; $591c: $f1
	xor  a                                           ; $591d: $af
	ld   [$cc54], a                                  ; $591e: $ea $54 $cc
	ld   b, $00                                      ; $5921: $06 $00
	ld   c, $ff                                      ; $5923: $0e $ff
	ld   de, $d980                                   ; $5925: $11 $80 $d9
	ld   hl, $d880                                   ; $5928: $21 $80 $d8

jr_009_592b:
	ld   a, [hl+]                                    ; $592b: $2a
	push hl                                          ; $592c: $e5
	push de                                          ; $592d: $d5
	push bc                                          ; $592e: $c5
	call HLequAddrOfChestItemMetadata                               ; $592f: $cd $4f $66
	ld   bc, $0004                                   ; $5932: $01 $04 $00
	add  hl, bc                                      ; $5935: $09
	ld   a, [hl]                                     ; $5936: $7e
	and  $f0                                         ; $5937: $e6 $f0
	pop  bc                                          ; $5939: $c1
	push bc                                          ; $593a: $c5
	cp   c                                           ; $593b: $b9
	jr   z, jr_009_594c                              ; $593c: $28 $0e

	pop  bc                                          ; $593e: $c1
	pop  de                                          ; $593f: $d1
	ld   c, a                                        ; $5940: $4f
	ld   [de], a                                     ; $5941: $12
	inc  de                                          ; $5942: $13
	ld   a, b                                        ; $5943: $78
	ld   [de], a                                     ; $5944: $12
	ld   hl, $cc54                                   ; $5945: $21 $54 $cc
	inc  [hl]                                        ; $5948: $34
	inc  de                                          ; $5949: $13
	push de                                          ; $594a: $d5
	push bc                                          ; $594b: $c5

jr_009_594c:
	pop  bc                                          ; $594c: $c1
	pop  de                                          ; $594d: $d1
	pop  hl                                          ; $594e: $e1
	inc  b                                           ; $594f: $04
	ld   a, [$cc56]                                  ; $5950: $fa $56 $cc
	cp   b                                           ; $5953: $b8
	jr   nz, jr_009_592b                             ; $5954: $20 $d5

	ld   a, [$cc54]                                  ; $5956: $fa $54 $cc
	sla  a                                           ; $5959: $cb $27
	ld   h, $00                                      ; $595b: $26 $00
	ld   l, a                                        ; $595d: $6f
	ld   bc, $d981                                   ; $595e: $01 $81 $d9
	add  hl, bc                                      ; $5961: $09
	ld   a, [$d981]                                  ; $5962: $fa $81 $d9
	ld   [hl-], a                                    ; $5965: $32
	ld   a, [$d980]                                  ; $5966: $fa $80 $d9
	ld   [hl-], a                                    ; $5969: $32
	ld   a, [hl-]                                    ; $596a: $3a
	ld   [$d97f], a                                  ; $596b: $ea $7f $d9
	ld   a, [hl-]                                    ; $596e: $3a
	ld   [$d97e], a                                  ; $596f: $ea $7e $d9
	ret                                              ; $5972: $c9


Call_009_5973:
	push bc                                          ; $5973: $c5
	push de                                          ; $5974: $d5
	push hl                                          ; $5975: $e5
	bit  6, h                                        ; $5976: $cb $74
	jr   z, jr_009_597f                              ; $5978: $28 $05

	ld   bc, $5993                                   ; $597a: $01 $93 $59
	push bc                                          ; $597d: $c5
	jp   hl                                          ; $597e: $e9


jr_009_597f:
	M_FarCall CheckIfNextFlagSet1

	pop  hl                                          ; $5993: $e1
	pop  de                                          ; $5994: $d1
	pop  bc                                          ; $5995: $c1
	ret                                              ; $5996: $c9


Call_009_5997:
	ld   h, $00                                      ; $5997: $26 $00
	ld   l, a                                        ; $5999: $6f
	ld   bc, $d880                                   ; $599a: $01 $80 $d8
	add  hl, bc                                      ; $599d: $09
	ld   a, [hl]                                     ; $599e: $7e
	ret                                              ; $599f: $c9


Call_009_59a0:
	push af                                          ; $59a0: $f5
	call Call_009_59c4                               ; $59a1: $cd $c4 $59
	pop  af                                          ; $59a4: $f1
	inc  a                                           ; $59a5: $3c
	push af                                          ; $59a6: $f5
	call Call_009_59c4                               ; $59a7: $cd $c4 $59
	pop  af                                          ; $59aa: $f1
	inc  a                                           ; $59ab: $3c
	push af                                          ; $59ac: $f5
	call Call_009_59c4                               ; $59ad: $cd $c4 $59
	pop  af                                          ; $59b0: $f1
	inc  a                                           ; $59b1: $3c
	push af                                          ; $59b2: $f5
	call Call_009_59c4                               ; $59b3: $cd $c4 $59
	pop  af                                          ; $59b6: $f1
	inc  a                                           ; $59b7: $3c
	push af                                          ; $59b8: $f5
	call Call_009_59c4                               ; $59b9: $cd $c4 $59
	pop  af                                          ; $59bc: $f1
	inc  a                                           ; $59bd: $3c
	push af                                          ; $59be: $f5
	call Call_009_59c4                               ; $59bf: $cd $c4 $59
	pop  af                                          ; $59c2: $f1
	ret                                              ; $59c3: $c9


Call_009_59c4:
	push af                                          ; $59c4: $f5
	ld   hl, $d340                                   ; $59c5: $21 $40 $d3
	ld   bc, $00a0                                   ; $59c8: $01 $a0 $00
	ld   de, $0000                                   ; $59cb: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $59ce: $cd $9f $09
	call InitWideTextBoxDimensions                                       ; $59d1: $cd $ec $0f
	ld   bc, $1401                                   ; $59d4: $01 $01 $14
	call SetKanjiTextBoxDimensions                                       ; $59d7: $cd $24 $14
	ld   bc, $0000                                   ; $59da: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $59dd: $cd $34 $14
	pop  af                                          ; $59e0: $f1
	ld   hl, $cc56                                   ; $59e1: $21 $56 $cc
	cp   [hl]                                        ; $59e4: $be
	jr   nc, jr_009_5a21                             ; $59e5: $30 $3a

	push af                                          ; $59e7: $f5
	call Call_009_5997                               ; $59e8: $cd $97 $59
	call HLequAddrOfChestItemMetadata                               ; $59eb: $cd $4f $66
	push hl                                          ; $59ee: $e5
	ld   bc, $0005                                   ; $59ef: $01 $05 $00
	add  hl, bc                                      ; $59f2: $09
	ld   a, [hl]                                     ; $59f3: $7e
	or   a                                           ; $59f4: $b7
	jr   nz, jr_009_59fc                             ; $59f5: $20 $05

	ld   a, $02                                      ; $59f7: $3e $02
	call SetDefaultAndCurrKanjiTileTextStyle                                       ; $59f9: $cd $3f $15

jr_009_59fc:
	pop  hl                                          ; $59fc: $e1
	ld   bc, $0002                                   ; $59fd: $01 $02 $00
	add  hl, bc                                      ; $5a00: $09
	ld   l, [hl]                                     ; $5a01: $6e
	ld   h, MIT_ROMANDO_SHOP_CHEST                                      ; $5a02: $26 $03

	M_FarCall HLequAddrOfMiscInstantText

	ld   d, h                                        ; $5a18: $54
	ld   e, l                                        ; $5a19: $5d
	ld   hl, $d340                                   ; $5a1a: $21 $40 $d3
	call LoadInstantText                                       ; $5a1d: $cd $06 $13
	pop  af                                          ; $5a20: $f1

jr_009_5a21:
	and  $07                                         ; $5a21: $e6 $07
	ld   h, $14                                      ; $5a23: $26 $14
	ld   l, a                                        ; $5a25: $6f
	call AequHtimesL                                       ; $5a26: $cd $ac $0b
	add  hl, hl                                      ; $5a29: $29
	add  hl, hl                                      ; $5a2a: $29
	add  hl, hl                                      ; $5a2b: $29
	add  hl, hl                                      ; $5a2c: $29
	ld   bc, $8e00                                   ; $5a2d: $01 $00 $8e
	add  hl, bc                                      ; $5a30: $09
	ld   c, $81                                      ; $5a31: $0e $81
	ld   d, h                                        ; $5a33: $54
	ld   e, l                                        ; $5a34: $5d
	ld   a, $02                                      ; $5a35: $3e $02
	ld   hl, $d340                                   ; $5a37: $21 $40 $d3
	ld   b, $14                                      ; $5a3a: $06 $14
	call EnqueueHDMATransfer                                       ; $5a3c: $cd $7c $02
	ret                                              ; $5a3f: $c9


Call_009_5a40:
	push af                                          ; $5a40: $f5
	ld   hl, $d340                                   ; $5a41: $21 $40 $d3
	ld   bc, $0240                                   ; $5a44: $01 $40 $02
	ld   de, $0000                                   ; $5a47: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $5a4a: $cd $9f $09
	call InitWideTextBoxDimensions                                       ; $5a4d: $cd $ec $0f
	ld   bc, $1202                                   ; $5a50: $01 $02 $12
	call SetKanjiTextBoxDimensions                                       ; $5a53: $cd $24 $14
	ld   bc, $0000                                   ; $5a56: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $5a59: $cd $34 $14
	pop  af                                          ; $5a5c: $f1
	ld   hl, $cc56                                   ; $5a5d: $21 $56 $cc
	cp   [hl]                                        ; $5a60: $be
	jr   nc, jr_009_5a8c                             ; $5a61: $30 $29

	call Call_009_5997                               ; $5a63: $cd $97 $59
	call HLequAddrOfChestItemMetadata                               ; $5a66: $cd $4f $66
	ld   bc, $0003                                   ; $5a69: $01 $03 $00
	add  hl, bc                                      ; $5a6c: $09
	ld   l, [hl]                                     ; $5a6d: $6e
	ld   h, MIT_ROMANDO_SHOP_CHEST                                      ; $5a6e: $26 $03

	M_FarCall HLequAddrOfMiscInstantText

	ld   d, h                                        ; $5a84: $54
	ld   e, l                                        ; $5a85: $5d
	ld   hl, $d340                                   ; $5a86: $21 $40 $d3
	call LoadInstantText                                       ; $5a89: $cd $06 $13

jr_009_5a8c:
	ld   c, $81                                      ; $5a8c: $0e $81
	ld   de, $8900                                   ; $5a8e: $11 $00 $89
	ld   a, $02                                      ; $5a91: $3e $02
	ld   hl, $d340                                   ; $5a93: $21 $40 $d3
	ld   b, $48                                      ; $5a96: $06 $48
	call EnqueueHDMATransfer                                       ; $5a98: $cd $7c $02
	ret                                              ; $5a9b: $c9


Call_009_5a9c:
	ld   a, $09                                      ; $5a9c: $3e $09
	ld   [wSpriteGroup], a                                  ; $5a9e: $ea $1a $c2
	ld   hl, $cc66                                   ; $5aa1: $21 $66 $cc
	inc  [hl]                                        ; $5aa4: $34
	ld   h, [hl]                                     ; $5aa5: $66
	ld   l, $30                                      ; $5aa6: $2e $30
	call HLequHdivModL                                       ; $5aa8: $cd $fb $0b
	ld   a, l                                        ; $5aab: $7d
	ld   [$cc66], a                                  ; $5aac: $ea $66 $cc
	ld   h, $00                                      ; $5aaf: $26 $00
	srl  l                                           ; $5ab1: $cb $3d
	srl  l                                           ; $5ab3: $cb $3d
	srl  l                                           ; $5ab5: $cb $3d
	ld   bc, $5b18                                   ; $5ab7: $01 $18 $5b
	add  hl, bc                                      ; $5aba: $09
	ld   a, [$cc57]                                  ; $5abb: $fa $57 $cc
	or   a                                           ; $5abe: $b7
	jr   z, jr_009_5ace                              ; $5abf: $28 $0d

	push hl                                          ; $5ac1: $e5
	ld   b, $48                                      ; $5ac2: $06 $48
	ld   a, $f8                                      ; $5ac4: $3e $f8
	sub  [hl]                                        ; $5ac6: $96
	ld   c, a                                        ; $5ac7: $4f
	ld   a, $25                                      ; $5ac8: $3e $25
	call LoadSpriteFromMainTable                                       ; $5aca: $cd $16 $0e
	pop  hl                                          ; $5acd: $e1

jr_009_5ace:
	ld   a, [$cc56]                                  ; $5ace: $fa $56 $cc
	ld   b, a                                        ; $5ad1: $47
	ld   a, [$cc57]                                  ; $5ad2: $fa $57 $cc
	add  $06                                         ; $5ad5: $c6 $06
	cp   b                                           ; $5ad7: $b8
	jr   nc, jr_009_5ae5                             ; $5ad8: $30 $0b

	ld   b, $48                                      ; $5ada: $06 $48
	ld   a, $68                                      ; $5adc: $3e $68
	add  [hl]                                        ; $5ade: $86
	ld   c, a                                        ; $5adf: $4f
	ld   a, $26                                      ; $5ae0: $3e $26
	call LoadSpriteFromMainTable                                       ; $5ae2: $cd $16 $0e

jr_009_5ae5:
	call $5b1e                                       ; $5ae5: $cd $1e $5b
	bit  7, a                                        ; $5ae8: $cb $7f
	ret  nz                                          ; $5aea: $c0

	ld   c, a                                        ; $5aeb: $4f
	ld   a, [$cc5e]                                  ; $5aec: $fa $5e $cc
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $5aef: $cd $76 $30
	ld   b, $88                                      ; $5af2: $06 $88
	inc  c                                           ; $5af4: $0c
	sla  c                                           ; $5af5: $cb $21
	sla  c                                           ; $5af7: $cb $21
	sla  c                                           ; $5af9: $cb $21
	ld   d, $09                                      ; $5afb: $16 $09
	swap e                                           ; $5afd: $cb $33
	ld   a, $19                                      ; $5aff: $3e $19
	add  e                                           ; $5b01: $83
	ld   e, a                                        ; $5b02: $5f
	push af                                          ; $5b03: $f5
	ld   a, $3c                                      ; $5b04: $3e $3c
	ld   [wFarCallAddr], a                                  ; $5b06: $ea $98 $c2
	ld   a, $40                                      ; $5b09: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $5b0b: $ea $99 $c2
	ld   a, $01                                      ; $5b0e: $3e $01
	ld   [wFarCallBank], a                                  ; $5b10: $ea $9a $c2
	pop  af                                          ; $5b13: $f1
	call FarCall                                       ; $5b14: $cd $62 $09
	ret                                              ; $5b17: $c9


	nop                                              ; $5b18: $00
	ld   bc, $0302                                   ; $5b19: $01 $02 $03
	ld   [bc], a                                     ; $5b1c: $02
	ld   bc, $58fa                                   ; $5b1d: $01 $fa $58
	call z, $97cd                                    ; $5b20: $cc $cd $97
	ld   e, c                                        ; $5b23: $59
	call HLequAddrOfChestItemMetadata                               ; $5b24: $cd $4f $66
	ld   bc, $0004                                   ; $5b27: $01 $04 $00
	add  hl, bc                                      ; $5b2a: $09
	ld   a, [hl]                                     ; $5b2b: $7e
	and  $f0                                         ; $5b2c: $e6 $f0
	ld   e, a                                        ; $5b2e: $5f
	ld   hl, $d980                                   ; $5b2f: $21 $80 $d9
	ld   a, [$cc54]                                  ; $5b32: $fa $54 $cc
	ld   b, a                                        ; $5b35: $47
	ld   c, $00                                      ; $5b36: $0e $00

jr_009_5b38:
	ld   a, [hl+]                                    ; $5b38: $2a
	inc  hl                                          ; $5b39: $23
	cp   e                                           ; $5b3a: $bb
	jr   z, jr_009_5b44                              ; $5b3b: $28 $07

	inc  c                                           ; $5b3d: $0c
	dec  b                                           ; $5b3e: $05
	jr   nz, jr_009_5b38                             ; $5b3f: $20 $f7

	ld   a, $ff                                      ; $5b41: $3e $ff
	ret                                              ; $5b43: $c9


jr_009_5b44:
	ld   a, c                                        ; $5b44: $79
	ret                                              ; $5b45: $c9


TreasureChestSubstate1:
	ld   a, [$c653]                                  ; $5b46: $fa $53 $c6
	or   a                                           ; $5b49: $b7
	jr   z, jr_009_5b56                              ; $5b4a: $28 $0a

	cp   $10                                         ; $5b4c: $fe $10
	jr   z, jr_009_5b56                              ; $5b4e: $28 $06

	cp   $11                                         ; $5b50: $fe $11
	jr   z, jr_009_5b56                              ; $5b52: $28 $02

	jr   jr_009_5b60                                 ; $5b54: $18 $0a

jr_009_5b56:
	ld   a, $14                                      ; $5b56: $3e $14
	call PlaySong                                       ; $5b58: $cd $92 $1a
	ld   a, $07                                      ; $5b5b: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $5b5d: $cd $e0 $1c

jr_009_5b60:
	jp   Jump_009_56e7                               ; $5b60: $c3 $e7 $56


TreasureChestSubstate2:
	ld   a, [wWramBank]                                  ; $5b63: $fa $93 $c2
	push af                                          ; $5b66: $f5
	ld   a, $02                                      ; $5b67: $3e $02
	ld   [wWramBank], a                                  ; $5b69: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5b6c: $e0 $70
	call ClearOam                                       ; $5b6e: $cd $d7 $0d
	ld   bc, $5b84                                   ; $5b71: $01 $84 $5b
	push bc                                          ; $5b74: $c5
	ld   a, [$cc50]                                  ; $5b75: $fa $50 $cc
	ld   b, $00                                      ; $5b78: $06 $00
	ld   c, a                                        ; $5b7a: $4f
	ld   hl, $5b91                                   ; $5b7b: $21 $91 $5b
	add  hl, bc                                      ; $5b7e: $09
	add  hl, bc                                      ; $5b7f: $09
	ld   a, [hl+]                                    ; $5b80: $2a
	ld   h, [hl]                                     ; $5b81: $66
	ld   l, a                                        ; $5b82: $6f
	jp   hl                                          ; $5b83: $e9


	call Call_009_5a9c                               ; $5b84: $cd $9c $5a
	call AnimateAllAnimatedSpriteSpecs                                       ; $5b87: $cd $d3 $2e
	pop  af                                          ; $5b8a: $f1
	ld   [wWramBank], a                                  ; $5b8b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5b8e: $e0 $70
	ret                                              ; $5b90: $c9


	xor  a                                           ; $5b91: $af
	ld   e, e                                        ; $5b92: $5b
	ld   sp, hl                                      ; $5b93: $f9
	ld   e, h                                        ; $5b94: $5c
	ld   h, h                                        ; $5b95: $64
	ld   e, l                                        ; $5b96: $5d
	add  [hl]                                        ; $5b97: $86
	ld   e, a                                        ; $5b98: $5f
	ld   a, $60                                      ; $5b99: $3e $60
	ld   d, e                                        ; $5b9b: $53
	ld   h, b                                        ; $5b9c: $60
	ld   l, b                                        ; $5b9d: $68
	ld   h, b                                        ; $5b9e: $60
	xor  $60                                         ; $5b9f: $ee $60
	ld   [hl], h                                     ; $5ba1: $74
	ld   h, c                                        ; $5ba2: $61
	add  a                                           ; $5ba3: $87
	ld   h, c                                        ; $5ba4: $61
	dec  hl                                          ; $5ba5: $2b
	ld   h, e                                        ; $5ba6: $63
	sub  c                                           ; $5ba7: $91
	ld   h, e                                        ; $5ba8: $63
	pop  bc                                          ; $5ba9: $c1
	ld   h, e                                        ; $5baa: $63
	dec  bc                                          ; $5bab: $0b
	ld   h, h                                        ; $5bac: $64
	ld   e, b                                        ; $5bad: $58
	ld   h, h                                        ; $5bae: $64
	ld   hl, $cc51                                   ; $5baf: $21 $51 $cc
	ld   a, [hl]                                     ; $5bb2: $7e
	inc  [hl]                                        ; $5bb3: $34
	sla  a                                           ; $5bb4: $cb $27
	ld   h, $00                                      ; $5bb6: $26 $00
	ld   l, a                                        ; $5bb8: $6f
	ld   bc, $5bc1                                   ; $5bb9: $01 $c1 $5b
	add  hl, bc                                      ; $5bbc: $09
	ld   a, [hl+]                                    ; $5bbd: $2a
	ld   h, [hl]                                     ; $5bbe: $66
	ld   l, a                                        ; $5bbf: $6f
	jp   hl                                          ; $5bc0: $e9


	push de                                          ; $5bc1: $d5
	ld   e, e                                        ; $5bc2: $5b
	ld   bc, $115c                                   ; $5bc3: $01 $5c $11
	ld   e, h                                        ; $5bc6: $5c
	daa                                              ; $5bc7: $27
	ld   e, h                                        ; $5bc8: $5c
	ld   h, e                                        ; $5bc9: $63
	ld   e, h                                        ; $5bca: $5c
	ld   a, e                                        ; $5bcb: $7b
	ld   e, h                                        ; $5bcc: $5c
	sub  [hl]                                        ; $5bcd: $96
	ld   e, h                                        ; $5bce: $5c
	or   c                                           ; $5bcf: $b1
	ld   e, h                                        ; $5bd0: $5c
	cp   l                                           ; $5bd1: $bd
	ld   e, h                                        ; $5bd2: $5c
	ld   [$fa5c], a                                  ; $5bd3: $ea $5c $fa
	sub  e                                           ; $5bd6: $93
	jp   nz, $3ef5                                   ; $5bd7: $c2 $f5 $3e

	rlca                                             ; $5bda: $07
	ld   [wWramBank], a                                  ; $5bdb: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5bde: $e0 $70
	ld   a, $94                                      ; $5be0: $3e $94
	ld   hl, $d000                                   ; $5be2: $21 $00 $d0
	ld   de, $6cf3                                   ; $5be5: $11 $f3 $6c
if def(VWF)
	call TreasureChestBank0_8000hHook
else
	call RLEXorCopy                                       ; $5be8: $cd $d2 $09
endc
	ld   c, $80                                      ; $5beb: $0e $80
	ld   de, $8000                                   ; $5bed: $11 $00 $80
	ld   a, $07                                      ; $5bf0: $3e $07
	ld   hl, $d000                                   ; $5bf2: $21 $00 $d0
	ld   b, $60                                      ; $5bf5: $06 $60
	call EnqueueHDMATransfer                                       ; $5bf7: $cd $7c $02
	pop  af                                          ; $5bfa: $f1
	ld   [wWramBank], a                                  ; $5bfb: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5bfe: $e0 $70
	ret                                              ; $5c00: $c9


	ld   c, $80                                      ; $5c01: $0e $80
	ld   de, $8600                                   ; $5c03: $11 $00 $86
	ld   a, $07                                      ; $5c06: $3e $07
	ld   hl, $d600                                   ; $5c08: $21 $00 $d6
	ld   b, $60                                      ; $5c0b: $06 $60
	call EnqueueHDMATransfer                                       ; $5c0d: $cd $7c $02
	ret                                              ; $5c10: $c9


	ld   c, $80                                      ; $5c11: $0e $80
	ld   de, $8c00                                   ; $5c13: $11 $00 $8c
	ld   a, $07                                      ; $5c16: $3e $07
	ld   hl, $dc00                                   ; $5c18: $21 $00 $dc
	ld   b, $40                                      ; $5c1b: $06 $40
	call EnqueueHDMATransfer                                       ; $5c1d: $cd $7c $02
	ld   a, [$cc57]                                  ; $5c20: $fa $57 $cc
	call Call_009_59c4                               ; $5c23: $cd $c4 $59
	ret                                              ; $5c26: $c9


	ld   a, [wWramBank]                                  ; $5c27: $fa $93 $c2
	push af                                          ; $5c2a: $f5
	ld   a, $07                                      ; $5c2b: $3e $07
	ld   [wWramBank], a                                  ; $5c2d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5c30: $e0 $70
	ld   hl, $d000                                   ; $5c32: $21 $00 $d0
	ld   a, $99                                      ; $5c35: $3e $99
	ld   de, $6df0                                   ; $5c37: $11 $f0 $6d
	ld   bc, $1420                                   ; $5c3a: $01 $20 $14
	call FarCopyLayout                                       ; $5c3d: $cd $2c $0b
	ld   hl, $d400                                   ; $5c40: $21 $00 $d4
	call FarCopyLayout                                       ; $5c43: $cd $2c $0b
	ld   c, $81                                      ; $5c46: $0e $81
	ld   de, $9800                                   ; $5c48: $11 $00 $98
	ld   a, $07                                      ; $5c4b: $3e $07
	ld   hl, $d000                                   ; $5c4d: $21 $00 $d0
	ld   b, $40                                      ; $5c50: $06 $40
	call EnqueueHDMATransfer                                       ; $5c52: $cd $7c $02
	pop  af                                          ; $5c55: $f1
	ld   [wWramBank], a                                  ; $5c56: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5c59: $e0 $70
	ld   a, [$cc57]                                  ; $5c5b: $fa $57 $cc
	inc  a                                           ; $5c5e: $3c
	call Call_009_59c4                               ; $5c5f: $cd $c4 $59
	ret                                              ; $5c62: $c9


	ld   c, $80                                      ; $5c63: $0e $80
	ld   de, $9800                                   ; $5c65: $11 $00 $98
	ld   a, $07                                      ; $5c68: $3e $07
	ld   hl, $d400                                   ; $5c6a: $21 $00 $d4
	ld   b, $40                                      ; $5c6d: $06 $40
	call EnqueueHDMATransfer                                       ; $5c6f: $cd $7c $02
	ld   a, [$cc57]                                  ; $5c72: $fa $57 $cc
	inc  a                                           ; $5c75: $3c
	inc  a                                           ; $5c76: $3c
	call Call_009_59c4                               ; $5c77: $cd $c4 $59
	ret                                              ; $5c7a: $c9


	call Call_009_57dc                               ; $5c7b: $cd $dc $57
	ld   c, $81                                      ; $5c7e: $0e $81
	ld   de, $9c00                                   ; $5c80: $11 $00 $9c
	ld   a, $07                                      ; $5c83: $3e $07
	ld   hl, $d000                                   ; $5c85: $21 $00 $d0
	ld   b, $40                                      ; $5c88: $06 $40
	call EnqueueHDMATransfer                                       ; $5c8a: $cd $7c $02
	ld   a, [$cc57]                                  ; $5c8d: $fa $57 $cc
	add  $03                                         ; $5c90: $c6 $03
	call Call_009_59c4                               ; $5c92: $cd $c4 $59
	ret                                              ; $5c95: $c9


	call Call_009_5892                               ; $5c96: $cd $92 $58
	ld   c, $80                                      ; $5c99: $0e $80
	ld   de, $9c00                                   ; $5c9b: $11 $00 $9c
	ld   a, $07                                      ; $5c9e: $3e $07
	ld   hl, $d400                                   ; $5ca0: $21 $00 $d4
	ld   b, $40                                      ; $5ca3: $06 $40
	call EnqueueHDMATransfer                                       ; $5ca5: $cd $7c $02
	ld   a, [$cc57]                                  ; $5ca8: $fa $57 $cc
	add  $04                                         ; $5cab: $c6 $04
	call Call_009_59c4                               ; $5cad: $cd $c4 $59
	ret                                              ; $5cb0: $c9


	call Call_009_5ef4                               ; $5cb1: $cd $f4 $5e
	ld   a, [$cc57]                                  ; $5cb4: $fa $57 $cc
	add  $05                                         ; $5cb7: $c6 $05
	call Call_009_59c4                               ; $5cb9: $cd $c4 $59
	ret                                              ; $5cbc: $c9


	ld   a, [wWramBank]                                  ; $5cbd: $fa $93 $c2
	push af                                          ; $5cc0: $f5
	ld   a, $07                                      ; $5cc1: $3e $07
	ld   [wWramBank], a                                  ; $5cc3: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5cc6: $e0 $70
	ld   hl, $d000                                   ; $5cc8: $21 $00 $d0
	ld   bc, $0080                                   ; $5ccb: $01 $80 $00
	ld   de, $0000                                   ; $5cce: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $5cd1: $cd $9f $09
	ld   c, $81                                      ; $5cd4: $0e $81
	ld   de, $8800                                   ; $5cd6: $11 $00 $88
	ld   a, $07                                      ; $5cd9: $3e $07
	ld   hl, $d000                                   ; $5cdb: $21 $00 $d0
	ld   b, $10                                      ; $5cde: $06 $10
	call EnqueueHDMATransfer                                       ; $5ce0: $cd $7c $02
	pop  af                                          ; $5ce3: $f1
	ld   [wWramBank], a                                  ; $5ce4: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5ce7: $e0 $70
	ret                                              ; $5ce9: $c9


	ld   a, [$cc58]                                  ; $5cea: $fa $58 $cc
	call Call_009_5a40                               ; $5ced: $cd $40 $5a
	ld   hl, $cc50                                   ; $5cf0: $21 $50 $cc
	inc  [hl]                                        ; $5cf3: $34
	xor  a                                           ; $5cf4: $af
	ld   [$cc51], a                                  ; $5cf5: $ea $51 $cc
	ret                                              ; $5cf8: $c9


	ld   a, [$cc51]                                  ; $5cf9: $fa $51 $cc
	or   a                                           ; $5cfc: $b7
	jr   nz, jr_009_5d35                             ; $5cfd: $20 $36

	ld   a, $a3                                      ; $5cff: $3e $a3
	ld   de, $da00                                   ; $5d01: $11 $00 $da
	ld   hl, $65cc                                   ; $5d04: $21 $cc $65
	ld   bc, $0080                                   ; $5d07: $01 $80 $00
	call FarMemCopy                                       ; $5d0a: $cd $b2 $09
	ld   a, $7f                                      ; $5d0d: $3e $7f
	ld   [$da10], a                                  ; $5d0f: $ea $10 $da
	ld   [$da18], a                                  ; $5d12: $ea $18 $da
	ld   a, $4e                                      ; $5d15: $3e $4e
	ld   [$da11], a                                  ; $5d17: $ea $11 $da
	ld   [$da19], a                                  ; $5d1a: $ea $19 $da
	xor  a                                           ; $5d1d: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5d1e: $ea $62 $c3
	ld   a, $40                                      ; $5d21: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5d23: $ea $63 $c3
	ld   a, $03                                      ; $5d26: $3e $03
	ld   b, $00                                      ; $5d28: $06 $00
	ld   hl, wBGPalettes                                   ; $5d2a: $21 $de $c2
	ld   c, $00                                      ; $5d2d: $0e $00
	ld   de, $da00                                   ; $5d2f: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5d32: $cd $48 $07

jr_009_5d35:
	ld   hl, $cc51                                   ; $5d35: $21 $51 $cc
	ld   a, [hl]                                     ; $5d38: $7e
	inc  [hl]                                        ; $5d39: $34
	cp   $1f                                         ; $5d3a: $fe $1f
	jr   nc, jr_009_5d47                             ; $5d3c: $30 $09

	and  $03                                         ; $5d3e: $e6 $03
	ret  nz                                          ; $5d40: $c0

	ld   bc, $0040                                   ; $5d41: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $5d44: $c3 $32 $08


jr_009_5d47:
	ld   a, $00                                      ; $5d47: $3e $00
	ld   hl, $da00                                   ; $5d49: $21 $00 $da
	ld   de, wBGPalettes                                   ; $5d4c: $11 $de $c2
	ld   bc, $0080                                   ; $5d4f: $01 $80 $00
	call FarMemCopy                                       ; $5d52: $cd $b2 $09
	ld   bc, $003f                                   ; $5d55: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5d58: $cd $aa $04
	ld   hl, $cc50                                   ; $5d5b: $21 $50 $cc
	inc  [hl]                                        ; $5d5e: $34
	xor  a                                           ; $5d5f: $af
	ld   [$cc51], a                                  ; $5d60: $ea $51 $cc
	ret                                              ; $5d63: $c9


	call Call_009_5e9d                               ; $5d64: $cd $9d $5e
	ld   a, [$cc56]                                  ; $5d67: $fa $56 $cc
	or   a                                           ; $5d6a: $b7
	jr   nz, jr_009_5d75                             ; $5d6b: $20 $08

	ld   a, [wInGameButtonsPressed]                                  ; $5d6d: $fa $10 $c2
	bit  1, a                                        ; $5d70: $cb $4f
	jr   nz, jr_009_5da8                             ; $5d72: $20 $34

	ret                                              ; $5d74: $c9


jr_009_5d75:
	call Call_009_5ec9                               ; $5d75: $cd $c9 $5e
	ld   a, [wInGameButtonsPressed]                                  ; $5d78: $fa $10 $c2
	bit  0, a                                        ; $5d7b: $cb $47
	jr   z, jr_009_5da8                              ; $5d7d: $28 $29

	ld   a, [$cc58]                                  ; $5d7f: $fa $58 $cc
	call Call_009_5997                               ; $5d82: $cd $97 $59
	call HLequAddrOfChestItemMetadata                               ; $5d85: $cd $4f $66
	ld   bc, $0005                                   ; $5d88: $01 $05 $00
	add  hl, bc                                      ; $5d8b: $09
	ld   a, [hl]                                     ; $5d8c: $7e
	or   a                                           ; $5d8d: $b7
	jp   z, Jump_009_5e84                            ; $5d8e: $ca $84 $5e

	ld   a, [$cc58]                                  ; $5d91: $fa $58 $cc
	ld   [$cc59], a                                  ; $5d94: $ea $59 $cc
	ld   a, $21                                      ; $5d97: $3e $21
	call PlaySoundEffect                                       ; $5d99: $cd $df $1a
	ld   a, $09                                      ; $5d9c: $3e $09
	ld   [$cc50], a                                  ; $5d9e: $ea $50 $cc
	xor  a                                           ; $5da1: $af
	ld   [$cc51], a                                  ; $5da2: $ea $51 $cc
	jp   Jump_009_5e84                               ; $5da5: $c3 $84 $5e


jr_009_5da8:
	bit  1, a                                        ; $5da8: $cb $4f
	jr   z, jr_009_5dc4                              ; $5daa: $28 $18

	ld   a, $ff                                      ; $5dac: $3e $ff
	ld   [$cc59], a                                  ; $5dae: $ea $59 $cc
	xor  a                                           ; $5db1: $af
	call PlaySong                                       ; $5db2: $cd $92 $1a
	ld   a, $22                                      ; $5db5: $3e $22
	call PlaySoundEffect                                       ; $5db7: $cd $df $1a
	ld   a, $0d                                      ; $5dba: $3e $0d
	ld   [$cc50], a                                  ; $5dbc: $ea $50 $cc
	xor  a                                           ; $5dbf: $af
	ld   [$cc51], a                                  ; $5dc0: $ea $51 $cc
	ret                                              ; $5dc3: $c9


jr_009_5dc4:
	ld   a, [wInGameButtonsHeld]                                  ; $5dc4: $fa $0f $c2
	bit  6, a                                        ; $5dc7: $cb $77
	jr   z, jr_009_5df9                              ; $5dc9: $28 $2e

	ld   a, [$cc58]                                  ; $5dcb: $fa $58 $cc
	sub  $01                                         ; $5dce: $d6 $01
	jp   c, Jump_009_5e84                            ; $5dd0: $da $84 $5e

	ld   [$cc58], a                                  ; $5dd3: $ea $58 $cc
	ld   hl, $cc57                                   ; $5dd6: $21 $57 $cc
	cp   [hl]                                        ; $5dd9: $be
	jr   c, jr_009_5deb                              ; $5dda: $38 $0f

	call Call_009_5e88                               ; $5ddc: $cd $88 $5e
	ld   a, $04                                      ; $5ddf: $3e $04
	ld   [$cc50], a                                  ; $5de1: $ea $50 $cc
	xor  a                                           ; $5de4: $af
	ld   [$cc51], a                                  ; $5de5: $ea $51 $cc
	jp   Jump_009_5e84                               ; $5de8: $c3 $84 $5e


jr_009_5deb:
	dec  [hl]                                        ; $5deb: $35
	call Call_009_5e88                               ; $5dec: $cd $88 $5e
	ld   a, $06                                      ; $5def: $3e $06
	ld   [$cc50], a                                  ; $5df1: $ea $50 $cc
	xor  a                                           ; $5df4: $af
	ld   [$cc51], a                                  ; $5df5: $ea $51 $cc
	ret                                              ; $5df8: $c9


jr_009_5df9:
	bit  7, a                                        ; $5df9: $cb $7f
	jr   z, jr_009_5e30                              ; $5dfb: $28 $33

	ld   a, [$cc56]                                  ; $5dfd: $fa $56 $cc
	ld   b, a                                        ; $5e00: $47
	ld   a, [$cc58]                                  ; $5e01: $fa $58 $cc
	inc  a                                           ; $5e04: $3c
	cp   b                                           ; $5e05: $b8
	jp   nc, Jump_009_5e84                           ; $5e06: $d2 $84 $5e

	ld   [$cc58], a                                  ; $5e09: $ea $58 $cc
	ld   hl, $cc57                                   ; $5e0c: $21 $57 $cc
	sub  [hl]                                        ; $5e0f: $96
	cp   $06                                         ; $5e10: $fe $06
	jr   nc, jr_009_5e22                             ; $5e12: $30 $0e

	call Call_009_5e88                               ; $5e14: $cd $88 $5e
	ld   a, $05                                      ; $5e17: $3e $05
	ld   [$cc50], a                                  ; $5e19: $ea $50 $cc
	xor  a                                           ; $5e1c: $af
	ld   [$cc51], a                                  ; $5e1d: $ea $51 $cc
	jr   jr_009_5e84                                 ; $5e20: $18 $62

jr_009_5e22:
	inc  [hl]                                        ; $5e22: $34
	call Call_009_5e88                               ; $5e23: $cd $88 $5e
	ld   a, $07                                      ; $5e26: $3e $07
	ld   [$cc50], a                                  ; $5e28: $ea $50 $cc
	xor  a                                           ; $5e2b: $af
	ld   [$cc51], a                                  ; $5e2c: $ea $51 $cc
	ret                                              ; $5e2f: $c9


jr_009_5e30:
	ld   a, [wInGameButtonsPressed]                                  ; $5e30: $fa $10 $c2
	cp   $20                                         ; $5e33: $fe $20
	jr   nz, jr_009_5e62                             ; $5e35: $20 $2b

	ld   a, [$cc54]                                  ; $5e37: $fa $54 $cc
	dec  a                                           ; $5e3a: $3d
	jr   z, jr_009_5e81                              ; $5e3b: $28 $44

	ld   a, $20                                      ; $5e3d: $3e $20
	call PlaySoundEffect                                       ; $5e3f: $cd $df $1a
	call Call_009_5f4e                               ; $5e42: $cd $4e $5f
	ld   [$cc58], a                                  ; $5e45: $ea $58 $cc
	ld   hl, $cc57                                   ; $5e48: $21 $57 $cc
	sub  [hl]                                        ; $5e4b: $96
	cp   $06                                         ; $5e4c: $fe $06
	jr   nc, jr_009_5e58                             ; $5e4e: $30 $08

jr_009_5e50:
	ld   a, [$cc58]                                  ; $5e50: $fa $58 $cc
	call Call_009_5a40                               ; $5e53: $cd $40 $5a
	jr   jr_009_5e84                                 ; $5e56: $18 $2c

jr_009_5e58:
	ld   a, $03                                      ; $5e58: $3e $03
	ld   [$cc50], a                                  ; $5e5a: $ea $50 $cc
	xor  a                                           ; $5e5d: $af
	ld   [$cc51], a                                  ; $5e5e: $ea $51 $cc
	ret                                              ; $5e61: $c9


jr_009_5e62:
	cp   $10                                         ; $5e62: $fe $10
	jr   nz, jr_009_5e81                             ; $5e64: $20 $1b

	ld   a, [$cc54]                                  ; $5e66: $fa $54 $cc
	dec  a                                           ; $5e69: $3d
	jr   z, jr_009_5e81                              ; $5e6a: $28 $15

	ld   a, $20                                      ; $5e6c: $3e $20
	call PlaySoundEffect                                       ; $5e6e: $cd $df $1a
	call Call_009_5f6b                               ; $5e71: $cd $6b $5f
	ld   [$cc58], a                                  ; $5e74: $ea $58 $cc
	ld   hl, $cc57                                   ; $5e77: $21 $57 $cc
	sub  [hl]                                        ; $5e7a: $96
	cp   $06                                         ; $5e7b: $fe $06
	jr   nc, jr_009_5e58                             ; $5e7d: $30 $d9

	jr   jr_009_5e50                                 ; $5e7f: $18 $cf

jr_009_5e81:
	call Call_009_5e92                               ; $5e81: $cd $92 $5e

Jump_009_5e84:
jr_009_5e84:
	call Call_009_5ef4                               ; $5e84: $cd $f4 $5e
	ret                                              ; $5e87: $c9


Call_009_5e88:
	ld   a, [$cc5b]                                  ; $5e88: $fa $5b $cc
	sub  $01                                         ; $5e8b: $d6 $01
	ret  c                                           ; $5e8d: $d8

	ld   [$cc5b], a                                  ; $5e8e: $ea $5b $cc
	ret                                              ; $5e91: $c9


Call_009_5e92:
	ld   a, [$cc5b]                                  ; $5e92: $fa $5b $cc
	inc  a                                           ; $5e95: $3c
	cp   $08                                         ; $5e96: $fe $08
	ret  nc                                          ; $5e98: $d0

	ld   [$cc5b], a                                  ; $5e99: $ea $5b $cc
	ret                                              ; $5e9c: $c9


Call_009_5e9d:
	ld   a, $08                                      ; $5e9d: $3e $08
	ld   hl, $cc5c                                   ; $5e9f: $21 $5c $cc
	push af                                          ; $5ea2: $f5
	ld   a, $8f                                      ; $5ea3: $3e $8f
	ld   [wFarCallAddr], a                                  ; $5ea5: $ea $98 $c2
	ld   a, $59                                      ; $5ea8: $3e $59
	ld   [wFarCallAddr+1], a                                  ; $5eaa: $ea $99 $c2
	ld   a, $0a                                      ; $5ead: $3e $0a
	ld   [wFarCallBank], a                                  ; $5eaf: $ea $9a $c2
	pop  af                                          ; $5eb2: $f1
	call FarCall                                       ; $5eb3: $cd $62 $09
	ld   a, [$c2ee]                                  ; $5eb6: $fa $ee $c2
	ld   [wBGPalettes+3*8], a                                  ; $5eb9: $ea $f6 $c2
	ld   a, [$c2ef]                                  ; $5ebc: $fa $ef $c2
	ld   [$c2f7], a                                  ; $5ebf: $ea $f7 $c2
	ld   bc, $0c0f                                   ; $5ec2: $01 $0f $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5ec5: $cd $aa $04
	ret                                              ; $5ec8: $c9


Call_009_5ec9:
	ld   hl, $d000                                   ; $5ec9: $21 $00 $d0
	call Call_009_57fd                               ; $5ecc: $cd $fd $57
	ld   hl, $d020                                   ; $5ecf: $21 $20 $d0
	call Call_009_57fd                               ; $5ed2: $cd $fd $57
	ld   a, [$cc58]                                  ; $5ed5: $fa $58 $cc
	and  $0f                                         ; $5ed8: $e6 $0f
	swap a                                           ; $5eda: $cb $37
	ld   h, $00                                      ; $5edc: $26 $00
	ld   l, a                                        ; $5ede: $6f
	add  hl, hl                                      ; $5edf: $29
	add  hl, hl                                      ; $5ee0: $29
	ld   bc, $9c00                                   ; $5ee1: $01 $00 $9c
	add  hl, bc                                      ; $5ee4: $09
	ld   c, $81                                      ; $5ee5: $0e $81
	ld   d, h                                        ; $5ee7: $54
	ld   e, l                                        ; $5ee8: $5d
	ld   a, $02                                      ; $5ee9: $3e $02
	ld   hl, $d000                                   ; $5eeb: $21 $00 $d0
	ld   b, $04                                      ; $5eee: $06 $04
	call EnqueueHDMATransfer                                       ; $5ef0: $cd $7c $02
	ret                                              ; $5ef3: $c9


Call_009_5ef4:
	ld   hl, $d040                                   ; $5ef4: $21 $40 $d0
	call Call_009_57fd                               ; $5ef7: $cd $fd $57
	ld   hl, $d060                                   ; $5efa: $21 $60 $d0
	call Call_009_57fd                               ; $5efd: $cd $fd $57
	ld   a, $02                                      ; $5f00: $3e $02
	ld   hl, $d041                                   ; $5f02: $21 $41 $d0
	call Call_009_5f27                               ; $5f05: $cd $27 $5f
	ld   a, [$cc58]                                  ; $5f08: $fa $58 $cc
	and  $0f                                         ; $5f0b: $e6 $0f
	swap a                                           ; $5f0d: $cb $37
	ld   h, $00                                      ; $5f0f: $26 $00
	ld   l, a                                        ; $5f11: $6f
	add  hl, hl                                      ; $5f12: $29
	add  hl, hl                                      ; $5f13: $29
	ld   bc, $9c00                                   ; $5f14: $01 $00 $9c
	add  hl, bc                                      ; $5f17: $09
	ld   c, $81                                      ; $5f18: $0e $81
	ld   d, h                                        ; $5f1a: $54
	ld   e, l                                        ; $5f1b: $5d
	ld   a, $02                                      ; $5f1c: $3e $02
	ld   hl, $d040                                   ; $5f1e: $21 $40 $d0
	ld   b, $04                                      ; $5f21: $06 $04
	call EnqueueHDMATransfer                                       ; $5f23: $cd $7c $02
	ret                                              ; $5f26: $c9


Call_009_5f27:
	call Call_009_5f30                               ; $5f27: $cd $30 $5f
	push bc                                          ; $5f2a: $c5
	ld   bc, $000f                                   ; $5f2b: $01 $0f $00
	add  hl, bc                                      ; $5f2e: $09
	pop  bc                                          ; $5f2f: $c1

Call_009_5f30:
	set  0, a                                        ; $5f30: $cb $c7
	ld   [hl+], a                                    ; $5f32: $22
	res  0, a                                        ; $5f33: $cb $87
	ld   [hl+], a                                    ; $5f35: $22
	ld   [hl+], a                                    ; $5f36: $22
	ld   [hl+], a                                    ; $5f37: $22
	set  3, a                                        ; $5f38: $cb $df
	ld   [hl+], a                                    ; $5f3a: $22
	ld   [hl+], a                                    ; $5f3b: $22
	ld   [hl+], a                                    ; $5f3c: $22
	ld   [hl+], a                                    ; $5f3d: $22
	ld   [hl+], a                                    ; $5f3e: $22
	ld   [hl+], a                                    ; $5f3f: $22
	ld   [hl+], a                                    ; $5f40: $22
	ld   [hl+], a                                    ; $5f41: $22
	ld   [hl+], a                                    ; $5f42: $22
	ld   [hl+], a                                    ; $5f43: $22
	res  3, a                                        ; $5f44: $cb $9f
	ld   [hl+], a                                    ; $5f46: $22
	ld   [hl+], a                                    ; $5f47: $22
	set  0, a                                        ; $5f48: $cb $c7
	ld   [hl+], a                                    ; $5f4a: $22
	res  0, a                                        ; $5f4b: $cb $87
	ret                                              ; $5f4d: $c9


Call_009_5f4e:
	ld   a, [$cc58]                                  ; $5f4e: $fa $58 $cc
	call Call_009_5997                               ; $5f51: $cd $97 $59
	call HLequAddrOfChestItemMetadata                               ; $5f54: $cd $4f $66
	ld   bc, $0004                                   ; $5f57: $01 $04 $00
	add  hl, bc                                      ; $5f5a: $09
	ld   a, [hl]                                     ; $5f5b: $7e
	and  $f0                                         ; $5f5c: $e6 $f0
	ld   hl, $d980                                   ; $5f5e: $21 $80 $d9

jr_009_5f61:
	cp   [hl]                                        ; $5f61: $be
	jr   z, jr_009_5f68                              ; $5f62: $28 $04

	inc  hl                                          ; $5f64: $23
	inc  hl                                          ; $5f65: $23
	jr   jr_009_5f61                                 ; $5f66: $18 $f9

jr_009_5f68:
	dec  hl                                          ; $5f68: $2b
	ld   a, [hl]                                     ; $5f69: $7e
	ret                                              ; $5f6a: $c9


Call_009_5f6b:
	ld   a, [$cc58]                                  ; $5f6b: $fa $58 $cc
	call Call_009_5997                               ; $5f6e: $cd $97 $59
	call HLequAddrOfChestItemMetadata                               ; $5f71: $cd $4f $66
	ld   bc, $0004                                   ; $5f74: $01 $04 $00
	add  hl, bc                                      ; $5f77: $09
	ld   a, [hl]                                     ; $5f78: $7e
	and  $f0                                         ; $5f79: $e6 $f0
	ld   hl, $d980                                   ; $5f7b: $21 $80 $d9

jr_009_5f7e:
	cp   [hl]                                        ; $5f7e: $be
	inc  hl                                          ; $5f7f: $23
	inc  hl                                          ; $5f80: $23
	jr   nz, jr_009_5f7e                             ; $5f81: $20 $fb

	inc  hl                                          ; $5f83: $23
	ld   a, [hl]                                     ; $5f84: $7e
	ret                                              ; $5f85: $c9


	ld   a, [$cc51]                                  ; $5f86: $fa $51 $cc
	sla  a                                           ; $5f89: $cb $27
	ld   h, $00                                      ; $5f8b: $26 $00
	ld   l, a                                        ; $5f8d: $6f
	ld   bc, $5f96                                   ; $5f8e: $01 $96 $5f
	add  hl, bc                                      ; $5f91: $09
	ld   a, [hl+]                                    ; $5f92: $2a
	ld   h, [hl]                                     ; $5f93: $66
	ld   l, a                                        ; $5f94: $6f
	jp   hl                                          ; $5f95: $e9


	xor  d                                           ; $5f96: $aa
	ld   e, a                                        ; $5f97: $5f
	jp   hl                                          ; $5f98: $e9


	ld   e, a                                        ; $5f99: $5f
	add  hl, bc                                      ; $5f9a: $09
	ld   h, b                                        ; $5f9b: $60
	add  hl, bc                                      ; $5f9c: $09
	ld   h, b                                        ; $5f9d: $60
	add  hl, bc                                      ; $5f9e: $09
	ld   h, b                                        ; $5f9f: $60
	add  hl, bc                                      ; $5fa0: $09
	ld   h, b                                        ; $5fa1: $60
	add  hl, bc                                      ; $5fa2: $09
	ld   h, b                                        ; $5fa3: $60
	add  hl, bc                                      ; $5fa4: $09
	ld   h, b                                        ; $5fa5: $60
	rla                                              ; $5fa6: $17
	ld   h, b                                        ; $5fa7: $60
	ld   l, $60                                      ; $5fa8: $2e $60
	ld   a, [$cc58]                                  ; $5faa: $fa $58 $cc
	ld   [$cc57], a                                  ; $5fad: $ea $57 $cc
	add  $05                                         ; $5fb0: $c6 $05
	ld   hl, $cc56                                   ; $5fb2: $21 $56 $cc
	cp   [hl]                                        ; $5fb5: $be
	jr   c, jr_009_5fc6                              ; $5fb6: $38 $0e

	ld   a, [$cc56]                                  ; $5fb8: $fa $56 $cc
	sub  $06                                         ; $5fbb: $d6 $06
	ld   [$cc57], a                                  ; $5fbd: $ea $57 $cc
	jr   nc, jr_009_5fc6                             ; $5fc0: $30 $04

	xor  a                                           ; $5fc2: $af
	ld   [$cc57], a                                  ; $5fc3: $ea $57 $cc

jr_009_5fc6:
	ld   a, [$cc57]                                  ; $5fc6: $fa $57 $cc
	and  $0f                                         ; $5fc9: $e6 $0f
	swap a                                           ; $5fcb: $cb $37
	sub  $08                                         ; $5fcd: $d6 $08
	ld   [$cc5a], a                                  ; $5fcf: $ea $5a $cc
	call Call_009_581b                               ; $5fd2: $cd $1b $58
	ld   c, $80                                      ; $5fd5: $0e $80
	ld   de, $9c00                                   ; $5fd7: $11 $00 $9c
	ld   a, $07                                      ; $5fda: $3e $07
	ld   hl, $d400                                   ; $5fdc: $21 $00 $d4
	ld   b, $40                                      ; $5fdf: $06 $40
	call EnqueueHDMATransfer                                       ; $5fe1: $cd $7c $02
	ld   hl, $cc51                                   ; $5fe4: $21 $51 $cc
	inc  [hl]                                        ; $5fe7: $34
	ret                                              ; $5fe8: $c9


	ld   hl, $d340                                   ; $5fe9: $21 $40 $d3
	ld   bc, $0240                                   ; $5fec: $01 $40 $02
	ld   de, $0000                                   ; $5fef: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $5ff2: $cd $9f $09
	ld   c, $81                                      ; $5ff5: $0e $81
	ld   de, $8900                                   ; $5ff7: $11 $00 $89
	ld   a, $02                                      ; $5ffa: $3e $02
	ld   hl, $d340                                   ; $5ffc: $21 $40 $d3
	ld   b, $48                                      ; $5fff: $06 $48
	call EnqueueHDMATransfer                                       ; $6001: $cd $7c $02
	ld   hl, $cc51                                   ; $6004: $21 $51 $cc
	inc  [hl]                                        ; $6007: $34
	ret                                              ; $6008: $c9


	ld   a, [$cc57]                                  ; $6009: $fa $57 $cc
	ld   hl, $cc51                                   ; $600c: $21 $51 $cc
	add  [hl]                                        ; $600f: $86
	dec  a                                           ; $6010: $3d
	dec  a                                           ; $6011: $3d
	inc  [hl]                                        ; $6012: $34
	call Call_009_59c4                               ; $6013: $cd $c4 $59
	ret                                              ; $6016: $c9


	call Call_009_5892                               ; $6017: $cd $92 $58
	ld   c, $80                                      ; $601a: $0e $80
	ld   de, $9c00                                   ; $601c: $11 $00 $9c
	ld   a, $07                                      ; $601f: $3e $07
	ld   hl, $d400                                   ; $6021: $21 $00 $d4
	ld   b, $40                                      ; $6024: $06 $40
	call EnqueueHDMATransfer                                       ; $6026: $cd $7c $02
	ld   hl, $cc51                                   ; $6029: $21 $51 $cc
	inc  [hl]                                        ; $602c: $34
	ret                                              ; $602d: $c9


	ld   a, [$cc58]                                  ; $602e: $fa $58 $cc
	call Call_009_5a40                               ; $6031: $cd $40 $5a
	ld   a, $02                                      ; $6034: $3e $02
	ld   [$cc50], a                                  ; $6036: $ea $50 $cc
	xor  a                                           ; $6039: $af
	ld   [$cc51], a                                  ; $603a: $ea $51 $cc
	ret                                              ; $603d: $c9


	ld   a, $20                                      ; $603e: $3e $20
	call PlaySoundEffect                                       ; $6040: $cd $df $1a
	ld   a, [$cc58]                                  ; $6043: $fa $58 $cc
	call Call_009_5a40                               ; $6046: $cd $40 $5a
	ld   a, $08                                      ; $6049: $3e $08
	ld   [$cc50], a                                  ; $604b: $ea $50 $cc
	xor  a                                           ; $604e: $af
	ld   [$cc51], a                                  ; $604f: $ea $51 $cc
	ret                                              ; $6052: $c9


	ld   a, $20                                      ; $6053: $3e $20
	call PlaySoundEffect                                       ; $6055: $cd $df $1a
	ld   a, [$cc58]                                  ; $6058: $fa $58 $cc
	call Call_009_5a40                               ; $605b: $cd $40 $5a
	ld   a, $08                                      ; $605e: $3e $08
	ld   [$cc50], a                                  ; $6060: $ea $50 $cc
	xor  a                                           ; $6063: $af
	ld   [$cc51], a                                  ; $6064: $ea $51 $cc
	ret                                              ; $6067: $c9


	ld   a, [$cc51]                                  ; $6068: $fa $51 $cc
	sla  a                                           ; $606b: $cb $27
	ld   h, $00                                      ; $606d: $26 $00
	ld   l, a                                        ; $606f: $6f
	ld   bc, $6078                                   ; $6070: $01 $78 $60
	add  hl, bc                                      ; $6073: $09
	ld   a, [hl+]                                    ; $6074: $2a
	ld   h, [hl]                                     ; $6075: $66
	ld   l, a                                        ; $6076: $6f
	jp   hl                                          ; $6077: $e9


	add  b                                           ; $6078: $80
	ld   h, b                                        ; $6079: $60
	xor  e                                           ; $607a: $ab
	ld   h, b                                        ; $607b: $60
	cp   b                                           ; $607c: $b8
	ld   h, b                                        ; $607d: $60
	push bc                                          ; $607e: $c5
	ld   h, b                                        ; $607f: $60
	ld   a, $20                                      ; $6080: $3e $20
	call PlaySoundEffect                                       ; $6082: $cd $df $1a
	ld   a, [$cc58]                                  ; $6085: $fa $58 $cc
	call Call_009_59c4                               ; $6088: $cd $c4 $59
	ld   hl, $cc51                                   ; $608b: $21 $51 $cc
	ld   a, [$cc5b]                                  ; $608e: $fa $5b $cc
	cp   $04                                         ; $6091: $fe $04
	jr   c, jr_009_609f                              ; $6093: $38 $0a

	ld   a, [$cc5a]                                  ; $6095: $fa $5a $cc
	sub  $04                                         ; $6098: $d6 $04
	ld   [$cc5a], a                                  ; $609a: $ea $5a $cc
	inc  [hl]                                        ; $609d: $34
	ret                                              ; $609e: $c9


jr_009_609f:
	ld   a, [$cc5a]                                  ; $609f: $fa $5a $cc
	sub  $08                                         ; $60a2: $d6 $08
	ld   [$cc5a], a                                  ; $60a4: $ea $5a $cc
	inc  [hl]                                        ; $60a7: $34
	inc  [hl]                                        ; $60a8: $34
	inc  [hl]                                        ; $60a9: $34
	ret                                              ; $60aa: $c9


	ld   a, [$cc5a]                                  ; $60ab: $fa $5a $cc
	sub  $04                                         ; $60ae: $d6 $04
	ld   [$cc5a], a                                  ; $60b0: $ea $5a $cc
	ld   hl, $cc51                                   ; $60b3: $21 $51 $cc
	inc  [hl]                                        ; $60b6: $34
	ret                                              ; $60b7: $c9


	ld   a, [$cc5a]                                  ; $60b8: $fa $5a $cc
	sub  $04                                         ; $60bb: $d6 $04
	ld   [$cc5a], a                                  ; $60bd: $ea $5a $cc
	ld   hl, $cc51                                   ; $60c0: $21 $51 $cc
	inc  [hl]                                        ; $60c3: $34
	ret                                              ; $60c4: $c9


	ld   a, [$cc58]                                  ; $60c5: $fa $58 $cc
	call Call_009_5a40                               ; $60c8: $cd $40 $5a
	ld   a, [$cc5b]                                  ; $60cb: $fa $5b $cc
	cp   $04                                         ; $60ce: $fe $04
	jr   c, jr_009_60dc                              ; $60d0: $38 $0a

	ld   a, [$cc5a]                                  ; $60d2: $fa $5a $cc
	sub  $04                                         ; $60d5: $d6 $04
	ld   [$cc5a], a                                  ; $60d7: $ea $5a $cc
	jr   jr_009_60e4                                 ; $60da: $18 $08

jr_009_60dc:
	ld   a, [$cc5a]                                  ; $60dc: $fa $5a $cc
	sub  $08                                         ; $60df: $d6 $08
	ld   [$cc5a], a                                  ; $60e1: $ea $5a $cc

jr_009_60e4:
	ld   a, $08                                      ; $60e4: $3e $08
	ld   [$cc50], a                                  ; $60e6: $ea $50 $cc
	xor  a                                           ; $60e9: $af
	ld   [$cc51], a                                  ; $60ea: $ea $51 $cc
	ret                                              ; $60ed: $c9


	ld   a, [$cc51]                                  ; $60ee: $fa $51 $cc
	sla  a                                           ; $60f1: $cb $27
	ld   h, $00                                      ; $60f3: $26 $00
	ld   l, a                                        ; $60f5: $6f
	ld   bc, $60fe                                   ; $60f6: $01 $fe $60
	add  hl, bc                                      ; $60f9: $09
	ld   a, [hl+]                                    ; $60fa: $2a
	ld   h, [hl]                                     ; $60fb: $66
	ld   l, a                                        ; $60fc: $6f
	jp   hl                                          ; $60fd: $e9


	ld   b, $61                                      ; $60fe: $06 $61
	ld   sp, $3e61                                   ; $6100: $31 $61 $3e
	ld   h, c                                        ; $6103: $61
	ld   c, e                                        ; $6104: $4b
	ld   h, c                                        ; $6105: $61
	ld   a, $20                                      ; $6106: $3e $20
	call PlaySoundEffect                                       ; $6108: $cd $df $1a
	ld   a, [$cc58]                                  ; $610b: $fa $58 $cc
	call Call_009_59c4                               ; $610e: $cd $c4 $59
	ld   hl, $cc51                                   ; $6111: $21 $51 $cc
	ld   a, [$cc5b]                                  ; $6114: $fa $5b $cc
	cp   $04                                         ; $6117: $fe $04
	jr   c, jr_009_6125                              ; $6119: $38 $0a

	ld   a, [$cc5a]                                  ; $611b: $fa $5a $cc
	add  $04                                         ; $611e: $c6 $04
	ld   [$cc5a], a                                  ; $6120: $ea $5a $cc
	inc  [hl]                                        ; $6123: $34
	ret                                              ; $6124: $c9


jr_009_6125:
	ld   a, [$cc5a]                                  ; $6125: $fa $5a $cc
	add  $08                                         ; $6128: $c6 $08
	ld   [$cc5a], a                                  ; $612a: $ea $5a $cc
	inc  [hl]                                        ; $612d: $34
	inc  [hl]                                        ; $612e: $34
	inc  [hl]                                        ; $612f: $34
	ret                                              ; $6130: $c9


	ld   a, [$cc5a]                                  ; $6131: $fa $5a $cc
	add  $04                                         ; $6134: $c6 $04
	ld   [$cc5a], a                                  ; $6136: $ea $5a $cc
	ld   hl, $cc51                                   ; $6139: $21 $51 $cc
	inc  [hl]                                        ; $613c: $34
	ret                                              ; $613d: $c9


	ld   a, [$cc5a]                                  ; $613e: $fa $5a $cc
	add  $04                                         ; $6141: $c6 $04
	ld   [$cc5a], a                                  ; $6143: $ea $5a $cc
	ld   hl, $cc51                                   ; $6146: $21 $51 $cc
	inc  [hl]                                        ; $6149: $34
	ret                                              ; $614a: $c9


	ld   a, [$cc58]                                  ; $614b: $fa $58 $cc
	call Call_009_5a40                               ; $614e: $cd $40 $5a
	ld   a, [$cc5b]                                  ; $6151: $fa $5b $cc
	cp   $04                                         ; $6154: $fe $04
	jr   c, jr_009_6162                              ; $6156: $38 $0a

	ld   a, [$cc5a]                                  ; $6158: $fa $5a $cc
	add  $04                                         ; $615b: $c6 $04
	ld   [$cc5a], a                                  ; $615d: $ea $5a $cc
	jr   jr_009_616a                                 ; $6160: $18 $08

jr_009_6162:
	ld   a, [$cc5a]                                  ; $6162: $fa $5a $cc
	add  $08                                         ; $6165: $c6 $08
	ld   [$cc5a], a                                  ; $6167: $ea $5a $cc

jr_009_616a:
	ld   a, $08                                      ; $616a: $3e $08
	ld   [$cc50], a                                  ; $616c: $ea $50 $cc
	xor  a                                           ; $616f: $af
	ld   [$cc51], a                                  ; $6170: $ea $51 $cc
	ret                                              ; $6173: $c9


	ld   hl, $cc51                                   ; $6174: $21 $51 $cc
	inc  [hl]                                        ; $6177: $34
	ld   a, [$cc5b]                                  ; $6178: $fa $5b $cc
	cp   [hl]                                        ; $617b: $be
	ret  nc                                          ; $617c: $d0

	ld   a, $02                                      ; $617d: $3e $02
	ld   [$cc50], a                                  ; $617f: $ea $50 $cc
	xor  a                                           ; $6182: $af
	ld   [$cc51], a                                  ; $6183: $ea $51 $cc
	ret                                              ; $6186: $c9


	call Call_009_5e9d                               ; $6187: $cd $9d $5e
	ld   hl, $cc51                                   ; $618a: $21 $51 $cc
	ld   a, [hl]                                     ; $618d: $7e
	or   a                                           ; $618e: $b7
	jr   nz, jr_009_619a                             ; $618f: $20 $09

	xor  a                                           ; $6191: $af
	ld   [$cc5f], a                                  ; $6192: $ea $5f $cc
	ld   a, $23                                      ; $6195: $3e $23
	call PlaySoundEffect                                       ; $6197: $cd $df $1a

jr_009_619a:
	ld   a, [hl]                                     ; $619a: $7e
	inc  [hl]                                        ; $619b: $34
	sla  a                                           ; $619c: $cb $27
	ld   h, $00                                      ; $619e: $26 $00
	ld   l, a                                        ; $61a0: $6f
	ld   bc, $61a9                                   ; $61a1: $01 $a9 $61
	add  hl, bc                                      ; $61a4: $09
	ld   a, [hl+]                                    ; $61a5: $2a
	ld   h, [hl]                                     ; $61a6: $66
	ld   l, a                                        ; $61a7: $6f
	jp   hl                                          ; $61a8: $e9


	or   l                                           ; $61a9: $b5
	ld   h, c                                        ; $61aa: $61
	cp   l                                           ; $61ab: $bd
	ld   h, c                                        ; $61ac: $61
	cp   l                                           ; $61ad: $bd
	ld   h, c                                        ; $61ae: $61
	ret  nz                                          ; $61af: $c0

	ld   h, c                                        ; $61b0: $61
	ret  nz                                          ; $61b1: $c0

	ld   h, c                                        ; $61b2: $61
	jp   $2161                                       ; $61b3: $c3 $61 $21


	dec  c                                           ; $61b6: $0d
	jp   nz, $8ecb                                   ; $61b7: $c2 $cb $8e

	jp   Jump_009_61cf                               ; $61ba: $c3 $cf $61


	jp   Jump_009_625c                               ; $61bd: $c3 $5c $62


	jp   Jump_009_6286                               ; $61c0: $c3 $86 $62


	call Call_009_62a4                               ; $61c3: $cd $a4 $62
	ld   hl, $cc50                                   ; $61c6: $21 $50 $cc
	inc  [hl]                                        ; $61c9: $34
	xor  a                                           ; $61ca: $af
	ld   [$cc51], a                                  ; $61cb: $ea $51 $cc
	ret                                              ; $61ce: $c9


Call_009_61cf:
Jump_009_61cf:
	ld   a, [wWramBank]                                  ; $61cf: $fa $93 $c2
	push af                                          ; $61d2: $f5
	ld   a, $07                                      ; $61d3: $3e $07
	ld   [wWramBank], a                                  ; $61d5: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $61d8: $e0 $70
	call Call_009_57dc                               ; $61da: $cd $dc $57
	call Call_009_5859                               ; $61dd: $cd $59 $58
	ld   a, [wWramBank]                                  ; $61e0: $fa $93 $c2
	push af                                          ; $61e3: $f5
	ld   a, $02                                      ; $61e4: $3e $02
	ld   [wWramBank], a                                  ; $61e6: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $61e9: $e0 $70
	call $5b1e                                       ; $61eb: $cd $1e $5b
	ld   h, $00                                      ; $61ee: $26 $00
	swap a                                           ; $61f0: $cb $37
	ld   l, a                                        ; $61f2: $6f
	add  hl, hl                                      ; $61f3: $29
	pop  af                                          ; $61f4: $f1
	ld   [wWramBank], a                                  ; $61f5: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $61f8: $e0 $70
	ld   de, $001d                                   ; $61fa: $11 $1d $00
	push hl                                          ; $61fd: $e5
	ld   bc, $d011                                   ; $61fe: $01 $11 $d0

Call_009_6201:
	add  hl, bc                                      ; $6201: $09

jr_009_6202:
	ld   a, $01                                      ; $6202: $3e $01

jr_009_6204:
	ld   [hl+], a                                    ; $6204: $22
	ld   [hl+], a                                    ; $6205: $22
	ld   [hl+], a                                    ; $6206: $22
	add  hl, de                                      ; $6207: $19
	ld   [hl+], a                                    ; $6208: $22
	ld   [hl+], a                                    ; $6209: $22

jr_009_620a:
	ld   [hl+], a                                    ; $620a: $22
	pop  hl                                          ; $620b: $e1

jr_009_620c:
	ld   bc, $d411                                   ; $620c: $01 $11 $d4
	add  hl, bc                                      ; $620f: $09
	ld   a, $80                                      ; $6210: $3e $80
	ld   [hl+], a                                    ; $6212: $22
	ld   [hl+], a                                    ; $6213: $22
	ld   a, $ab                                      ; $6214: $3e $ab
	ld   [hl+], a                                    ; $6216: $22
	add  hl, de                                      ; $6217: $19
	ld   a, $80                                      ; $6218: $3e $80
	ld   [hl+], a                                    ; $621a: $22
	ld   [hl+], a                                    ; $621b: $22
	ld   a, $ab                                      ; $621c: $3e $ab
	ld   [hl+], a                                    ; $621e: $22
	ld   a, [$cc58]                                  ; $621f: $fa $58 $cc
	ld   hl, $cc57                                   ; $6222: $21 $57 $cc
	sub  [hl]                                        ; $6225: $96
	swap a                                           ; $6226: $cb $37
	sla  a                                           ; $6228: $cb $27
	ld   h, $00                                      ; $622a: $26 $00
	ld   l, a                                        ; $622c: $6f
	add  hl, hl                                      ; $622d: $29
	ld   bc, $d001                                   ; $622e: $01 $01 $d0
	add  hl, bc                                      ; $6231: $09
	ld   a, $02                                      ; $6232: $3e $02
	call Call_009_5f27                               ; $6234: $cd $27 $5f
	pop  af                                          ; $6237: $f1
	ld   [wWramBank], a                                  ; $6238: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $623b: $e0 $70
	ld   c, $81                                      ; $623d: $0e $81
	ld   de, $99e0                                   ; $623f: $11 $e0 $99
	ld   a, $07                                      ; $6242: $3e $07
	ld   hl, $d000                                   ; $6244: $21 $00 $d0
	ld   b, $18                                      ; $6247: $06 $18
	call EnqueueHDMATransfer                                       ; $6249: $cd $7c $02
	ld   c, $80                                      ; $624c: $0e $80
	ld   de, $99e0                                   ; $624e: $11 $e0 $99
	ld   a, $07                                      ; $6251: $3e $07
	ld   hl, $d400                                   ; $6253: $21 $00 $d4
	ld   b, $18                                      ; $6256: $06 $18
	call EnqueueHDMATransfer                                       ; $6258: $cd $7c $02
	ret                                              ; $625b: $c9


Jump_009_625c:
	ld   a, $09                                      ; $625c: $3e $09
	ld   [wSpriteGroup], a                                  ; $625e: $ea $1a $c2
	ld   a, [$cc58]                                  ; $6261: $fa $58 $cc
	ld   hl, $cc57                                   ; $6264: $21 $57 $cc
	sub  [hl]                                        ; $6267: $96
	sla  a                                           ; $6268: $cb $27
	ld   b, $00                                      ; $626a: $06 $00
	ld   c, a                                        ; $626c: $4f
	ld   hl, $627a                                   ; $626d: $21 $7a $62
	add  hl, bc                                      ; $6270: $09
	ld   c, [hl]                                     ; $6271: $4e
	ld   b, $50                                      ; $6272: $06 $50
	ld   a, $22                                      ; $6274: $3e $22
	call LoadSpriteFromMainTable                                       ; $6276: $cd $16 $0e
	ret                                              ; $6279: $c9


	jr   z, jr_009_6202                              ; $627a: $28 $86

	jr   z, jr_009_6204                              ; $627c: $28 $86

	jr   c, @-$38                                    ; $627e: $38 $c6

	jr   @+$48                                       ; $6280: $18 $46

	jr   z, jr_009_620a                              ; $6282: $28 $86

	jr   z, jr_009_620c                              ; $6284: $28 $86

Jump_009_6286:
	ld   a, $09                                      ; $6286: $3e $09
	ld   [wSpriteGroup], a                                  ; $6288: $ea $1a $c2
	ld   a, [$cc58]                                  ; $628b: $fa $58 $cc
	ld   hl, $cc57                                   ; $628e: $21 $57 $cc
	sub  [hl]                                        ; $6291: $96
	sla  a                                           ; $6292: $cb $27
	ld   b, $00                                      ; $6294: $06 $00
	ld   c, a                                        ; $6296: $4f
	ld   hl, $627a                                   ; $6297: $21 $7a $62
	add  hl, bc                                      ; $629a: $09
	ld   c, [hl]                                     ; $629b: $4e
	ld   b, $50                                      ; $629c: $06 $50
	ld   a, $23                                      ; $629e: $3e $23
	call LoadSpriteFromMainTable                                       ; $62a0: $cd $16 $0e
	ret                                              ; $62a3: $c9


Call_009_62a4:
	ld   a, [wWramBank]                                  ; $62a4: $fa $93 $c2
	push af                                          ; $62a7: $f5
	ld   a, $07                                      ; $62a8: $3e $07
	ld   [wWramBank], a                                  ; $62aa: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $62ad: $e0 $70
	ld   a, [$cc58]                                  ; $62af: $fa $58 $cc
	ld   hl, $cc57                                   ; $62b2: $21 $57 $cc
	sub  [hl]                                        ; $62b5: $96
	sla  a                                           ; $62b6: $cb $27
	ld   b, $00                                      ; $62b8: $06 $00
	ld   c, a                                        ; $62ba: $4f
	ld   hl, $627b                                   ; $62bb: $21 $7b $62
	add  hl, bc                                      ; $62be: $09
	ld   b, $00                                      ; $62bf: $06 $00
	ld   c, [hl]                                     ; $62c1: $4e
	push bc                                          ; $62c2: $c5
	ld   hl, $d000                                   ; $62c3: $21 $00 $d0
	add  hl, bc                                      ; $62c6: $09
	ld   a, BANK(TileAttr_RomandoTreasureInvConfirmPopup)                                      ; $62c7: $3e $a4
	ld   de, TileAttr_RomandoTreasureInvConfirmPopup                                   ; $62c9: $11 $99 $43
	ld   bc, $0804                                   ; $62cc: $01 $04 $08
	call FarCopyLayout                                       ; $62cf: $cd $2c $0b

; TileMap_RomandoTreasureInvConfirmPopup
	pop  bc                                          ; $62d2: $c1
	ld   hl, $d400                                   ; $62d3: $21 $00 $d4
	add  hl, bc                                      ; $62d6: $09
	ld   bc, $0804                                   ; $62d7: $01 $04 $08
	call FarCopyLayout                                       ; $62da: $cd $2c $0b
	pop  af                                          ; $62dd: $f1
	ld   [wWramBank], a                                  ; $62de: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $62e1: $e0 $70
	ld   c, $81                                      ; $62e3: $0e $81
	ld   de, $99e0                                   ; $62e5: $11 $e0 $99
	ld   a, $07                                      ; $62e8: $3e $07
	ld   hl, $d000                                   ; $62ea: $21 $00 $d0
	ld   b, $18                                      ; $62ed: $06 $18
	call EnqueueHDMATransfer                                       ; $62ef: $cd $7c $02
	ld   c, $80                                      ; $62f2: $0e $80
	ld   de, $99e0                                   ; $62f4: $11 $e0 $99
	ld   a, $07                                      ; $62f7: $3e $07
	ld   hl, $d400                                   ; $62f9: $21 $00 $d4
	ld   b, $18                                      ; $62fc: $06 $18
	call EnqueueHDMATransfer                                       ; $62fe: $cd $7c $02
	ret                                              ; $6301: $c9


Call_009_6302:
	ld   a, $09                                      ; $6302: $3e $09
	ld   [wSpriteGroup], a                                  ; $6304: $ea $1a $c2
	ld   a, [$cc58]                                  ; $6307: $fa $58 $cc
	ld   hl, $cc57                                   ; $630a: $21 $57 $cc
	sub  [hl]                                        ; $630d: $96
	sla  a                                           ; $630e: $cb $27
	ld   b, $00                                      ; $6310: $06 $00
	ld   c, a                                        ; $6312: $4f
	ld   hl, $627a                                   ; $6313: $21 $7a $62
	add  hl, bc                                      ; $6316: $09
	ld   a, [hl]                                     ; $6317: $7e
	add  $14                                         ; $6318: $c6 $14
	ld   c, a                                        ; $631a: $4f
	ld   b, $34                                      ; $631b: $06 $34
	ld   a, [$cc5f]                                  ; $631d: $fa $5f $cc
	or   a                                           ; $6320: $b7
	jr   z, jr_009_6325                              ; $6321: $28 $02

	ld   b, $4c                                      ; $6323: $06 $4c

jr_009_6325:
	ld   a, $24                                      ; $6325: $3e $24
	call LoadSpriteFromMainTable                                       ; $6327: $cd $16 $0e
	ret                                              ; $632a: $c9


	call Call_009_5e9d                               ; $632b: $cd $9d $5e
	ld   hl, $cc51                                   ; $632e: $21 $51 $cc
	ld   a, [hl]                                     ; $6331: $7e
	inc  [hl]                                        ; $6332: $34
	bit  4, a                                        ; $6333: $cb $67
	call z, Call_009_6302                            ; $6335: $cc $02 $63
	ld   a, [wInGameButtonsPressed]                                  ; $6338: $fa $10 $c2
	bit  0, a                                        ; $633b: $cb $47
	jr   z, jr_009_6353                              ; $633d: $28 $14

	ld   a, [$cc5f]                                  ; $633f: $fa $5f $cc
	or   a                                           ; $6342: $b7
	jr   nz, jr_009_6357                             ; $6343: $20 $12

	ld   a, $21                                      ; $6345: $3e $21
	call PlaySoundEffect                                       ; $6347: $cd $df $1a
	ld   hl, $cc50                                   ; $634a: $21 $50 $cc
	inc  [hl]                                        ; $634d: $34
	xor  a                                           ; $634e: $af
	ld   [$cc51], a                                  ; $634f: $ea $51 $cc
	ret                                              ; $6352: $c9


jr_009_6353:
	bit  1, a                                        ; $6353: $cb $4f
	jr   z, jr_009_636b                              ; $6355: $28 $14

jr_009_6357:
	ld   a, $22                                      ; $6357: $3e $22
	call PlaySoundEffect                                       ; $6359: $cd $df $1a
	ld   a, $01                                      ; $635c: $3e $01
	ld   [$cc5f], a                                  ; $635e: $ea $5f $cc
	ld   a, $0c                                      ; $6361: $3e $0c
	ld   [$cc50], a                                  ; $6363: $ea $50 $cc
	xor  a                                           ; $6366: $af
	ld   [$cc51], a                                  ; $6367: $ea $51 $cc
	ret                                              ; $636a: $c9


jr_009_636b:
	bit  5, a                                        ; $636b: $cb $6f
	jr   z, jr_009_637e                              ; $636d: $28 $0f

	ld   a, [$cc5f]                                  ; $636f: $fa $5f $cc
	or   a                                           ; $6372: $b7
	ret  z                                           ; $6373: $c8

	ld   a, $20                                      ; $6374: $3e $20
	call PlaySoundEffect                                       ; $6376: $cd $df $1a
	xor  a                                           ; $6379: $af
	ld   [$cc5f], a                                  ; $637a: $ea $5f $cc
	ret                                              ; $637d: $c9


jr_009_637e:
	bit  4, a                                        ; $637e: $cb $67
	ret  z                                           ; $6380: $c8

	ld   a, [$cc5f]                                  ; $6381: $fa $5f $cc
	or   a                                           ; $6384: $b7
	ret  nz                                          ; $6385: $c0

	ld   a, $20                                      ; $6386: $3e $20
	call PlaySoundEffect                                       ; $6388: $cd $df $1a
	ld   a, $01                                      ; $638b: $3e $01
	ld   [$cc5f], a                                  ; $638d: $ea $5f $cc
	ret                                              ; $6390: $c9


	call Call_009_5e9d                               ; $6391: $cd $9d $5e
	ld   hl, $cc51                                   ; $6394: $21 $51 $cc
	ld   a, [hl]                                     ; $6397: $7e
	inc  [hl]                                        ; $6398: $34
	cp   $28                                         ; $6399: $fe $28
	jr   nc, jr_009_63ae                             ; $639b: $30 $11

	srl  a                                           ; $639d: $cb $3f
	srl  a                                           ; $639f: $cb $3f
	ld   h, $00                                      ; $63a1: $26 $00
	ld   l, a                                        ; $63a3: $6f
	ld   bc, $63b7                                   ; $63a4: $01 $b7 $63
	add  hl, bc                                      ; $63a7: $09
	ld   a, [hl]                                     ; $63a8: $7e
	or   a                                           ; $63a9: $b7
	call nz, Call_009_6302                           ; $63aa: $c4 $02 $63
	ret                                              ; $63ad: $c9


jr_009_63ae:
	ld   hl, $cc50                                   ; $63ae: $21 $50 $cc
	inc  [hl]                                        ; $63b1: $34
	xor  a                                           ; $63b2: $af
	ld   [$cc51], a                                  ; $63b3: $ea $51 $cc
	ret                                              ; $63b6: $c9


	nop                                              ; $63b7: $00
	rst  $38                                         ; $63b8: $ff
	nop                                              ; $63b9: $00
	rst  $38                                         ; $63ba: $ff
	nop                                              ; $63bb: $00
	rst  $38                                         ; $63bc: $ff
	rst  $38                                         ; $63bd: $ff
	rst  $38                                         ; $63be: $ff
	rst  $38                                         ; $63bf: $ff
	rst  $38                                         ; $63c0: $ff
	call Call_009_5e9d                               ; $63c1: $cd $9d $5e
	ld   hl, $cc51                                   ; $63c4: $21 $51 $cc
	ld   a, [hl]                                     ; $63c7: $7e
	or   a                                           ; $63c8: $b7
	jr   nz, jr_009_63d0                             ; $63c9: $20 $05

	ld   a, $24                                      ; $63cb: $3e $24
	call PlaySoundEffect                                       ; $63cd: $cd $df $1a

jr_009_63d0:
	ld   a, [hl]                                     ; $63d0: $7e
	inc  [hl]                                        ; $63d1: $34
	sla  a                                           ; $63d2: $cb $27
	ld   h, $00                                      ; $63d4: $26 $00
	ld   l, a                                        ; $63d6: $6f
	ld   bc, $63df                                   ; $63d7: $01 $df $63
	add  hl, bc                                      ; $63da: $09
	ld   a, [hl+]                                    ; $63db: $2a
	ld   h, [hl]                                     ; $63dc: $66
	ld   l, a                                        ; $63dd: $6f
	jp   hl                                          ; $63de: $e9


	db   $eb                                         ; $63df: $eb
	ld   h, e                                        ; $63e0: $63
	xor  $63                                         ; $63e1: $ee $63
	xor  $63                                         ; $63e3: $ee $63
	pop  af                                          ; $63e5: $f1
	ld   h, e                                        ; $63e6: $63
	pop  af                                          ; $63e7: $f1
	ld   h, e                                        ; $63e8: $63
	db   $f4                                         ; $63e9: $f4
	ld   h, e                                        ; $63ea: $63
	call Call_009_61cf                               ; $63eb: $cd $cf $61
	jp   Jump_009_6286                               ; $63ee: $c3 $86 $62


	jp   Jump_009_625c                               ; $63f1: $c3 $5c $62


	ld   hl, wIE                                   ; $63f4: $21 $0d $c2
	set  1, [hl]                                     ; $63f7: $cb $ce
	ld   a, [$cc5f]                                  ; $63f9: $fa $5f $cc
	or   a                                           ; $63fc: $b7
	ld   a, $0d                                      ; $63fd: $3e $0d
	jr   z, jr_009_6403                              ; $63ff: $28 $02

	ld   a, $02                                      ; $6401: $3e $02

jr_009_6403:
	ld   [$cc50], a                                  ; $6403: $ea $50 $cc
	xor  a                                           ; $6406: $af
	ld   [$cc51], a                                  ; $6407: $ea $51 $cc
	ret                                              ; $640a: $c9


	ld   a, [$cc51]                                  ; $640b: $fa $51 $cc
	or   a                                           ; $640e: $b7
	jr   nz, jr_009_6429                             ; $640f: $20 $18

	xor  a                                           ; $6411: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $6412: $ea $62 $c3
	ld   a, $40                                      ; $6415: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $6417: $ea $63 $c3
	ld   a, $03                                      ; $641a: $3e $03
	ld   b, $00                                      ; $641c: $06 $00
	ld   hl, wBGPalettes                                   ; $641e: $21 $de $c2
	ld   c, BANK(Palettes_AllWhite)                                      ; $6421: $0e $01
	ld   de, Palettes_AllWhite                                   ; $6423: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $6426: $cd $48 $07

jr_009_6429:
	ld   hl, $cc51                                   ; $6429: $21 $51 $cc
	ld   a, [hl]                                     ; $642c: $7e
	inc  [hl]                                        ; $642d: $34
	cp   $1f                                         ; $642e: $fe $1f
	jr   nc, jr_009_643b                             ; $6430: $30 $09

	and  $03                                         ; $6432: $e6 $03
	ret  nz                                          ; $6434: $c0

	ld   bc, $0040                                   ; $6435: $01 $40 $00
	jp   FadePalettesAndSetRangeToUpdate                                       ; $6438: $c3 $32 $08


jr_009_643b:
	ld   a, BANK(Palettes_AllWhite)                                     ; $643b: $3e $01
	ld   hl, Palettes_AllWhite                                   ; $643d: $21 $00 $70
	ld   de, wBGPalettes                                   ; $6440: $11 $de $c2
	ld   bc, $0080                                   ; $6443: $01 $80 $00
	call FarMemCopy                                       ; $6446: $cd $b2 $09
	ld   bc, $003f                                   ; $6449: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $644c: $cd $aa $04
	ld   hl, $cc50                                   ; $644f: $21 $50 $cc
	inc  [hl]                                        ; $6452: $34
	xor  a                                           ; $6453: $af
	ld   [$cc51], a                                  ; $6454: $ea $51 $cc
	ret                                              ; $6457: $c9


	ld   a, [$cc59]                                  ; $6458: $fa $59 $cc
	bit  7, a                                        ; $645b: $cb $7f
	jp   nz, Jump_009_6593                           ; $645d: $c2 $93 $65

	call Call_009_5997                               ; $6460: $cd $97 $59
	call HLequAddrOfChestItemMetadata                               ; $6463: $cd $4f $66
	ld   bc, $0004                                   ; $6466: $01 $04 $00
	add  hl, bc                                      ; $6469: $09
	ld   a, [hl]                                     ; $646a: $7e
	and  $f0                                         ; $646b: $e6 $f0
	jr   z, jr_009_64a2                              ; $646d: $28 $33

	cp   $10                                         ; $646f: $fe $10
	jr   z, jr_009_64bb                              ; $6471: $28 $48

	cp   $20                                         ; $6473: $fe $20
	jr   z, jr_009_64d7                              ; $6475: $28 $60

	cp   $30                                         ; $6477: $fe $30
	jr   z, jr_009_64f0                              ; $6479: $28 $75

	cp   $40                                         ; $647b: $fe $40
	jp   z, Jump_009_6509                            ; $647d: $ca $09 $65

	cp   $50                                         ; $6480: $fe $50
	jp   z, Jump_009_6545                            ; $6482: $ca $45 $65

	cp   $80                                         ; $6485: $fe $80
	jr   z, jr_009_6489                              ; $6487: $28 $00

jr_009_6489:
	ld   h, GS_TREASURE_CHEST                                      ; $6489: $26 $41
	ld   l, $01                                      ; $648b: $2e $01

	M_FarCall SetItemsState
	ret                                              ; $64a1: $c9


jr_009_64a2:
	ld   h, $41                                      ; $64a2: $26 $41
	ld   l, $01                                      ; $64a4: $2e $01
	push af                                          ; $64a6: $f5
	ld   a, $3e                                      ; $64a7: $3e $3e
	ld   [wFarCallAddr], a                                  ; $64a9: $ea $98 $c2
	ld   a, $7d                                      ; $64ac: $3e $7d
	ld   [wFarCallAddr+1], a                                  ; $64ae: $ea $99 $c2
	ld   a, $30                                      ; $64b1: $3e $30
	ld   [wFarCallBank], a                                  ; $64b3: $ea $9a $c2
	pop  af                                          ; $64b6: $f1
	call FarCall                                       ; $64b7: $cd $62 $09
	ret                                              ; $64ba: $c9


jr_009_64bb:
	ld   a, [hl]                                     ; $64bb: $7e
	and  $0f                                         ; $64bc: $e6 $0f
	ld   h, $41                                      ; $64be: $26 $41
	ld   l, $01                                      ; $64c0: $2e $01
	push af                                          ; $64c2: $f5
	ld   a, $4e                                      ; $64c3: $3e $4e
	ld   [wFarCallAddr], a                                  ; $64c5: $ea $98 $c2
	ld   a, $53                                      ; $64c8: $3e $53
	ld   [wFarCallAddr+1], a                                  ; $64ca: $ea $99 $c2
	ld   a, $0c                                      ; $64cd: $3e $0c
	ld   [wFarCallBank], a                                  ; $64cf: $ea $9a $c2
	pop  af                                          ; $64d2: $f1
	call FarCall                                       ; $64d3: $cd $62 $09
	ret                                              ; $64d6: $c9


jr_009_64d7:
	ld   h, GS_TREASURE_CHEST                                      ; $64d7: $26 $41
	ld   l, $01                                      ; $64d9: $2e $01

	M_FarCall SetEventGalleryState
	ret                                              ; $64ef: $c9


jr_009_64f0:
	ld   h, $41                                      ; $64f0: $26 $41
	ld   l, $01                                      ; $64f2: $2e $01
	push af                                          ; $64f4: $f5
	ld   a, $bc                                      ; $64f5: $3e $bc
	ld   [wFarCallAddr], a                                  ; $64f7: $ea $98 $c2
	ld   a, $4d                                      ; $64fa: $3e $4d
	ld   [wFarCallAddr+1], a                                  ; $64fc: $ea $99 $c2
	ld   a, $31                                      ; $64ff: $3e $31
	ld   [wFarCallBank], a                                  ; $6501: $ea $9a $c2
	pop  af                                          ; $6504: $f1
	call FarCall                                       ; $6505: $cd $62 $09
	ret                                              ; $6508: $c9


Jump_009_6509:
	ld   a, [hl]                                     ; $6509: $7e
	and  $0f                                         ; $650a: $e6 $0f
	cp   $08                                         ; $650c: $fe $08
	jr   nc, jr_009_6523                             ; $650e: $30 $13

	dec  a                                           ; $6510: $3d
	sla  a                                           ; $6511: $cb $27
	ld   h, $00                                      ; $6513: $26 $00
	ld   l, a                                        ; $6515: $6f
	ld   bc, $65a0                                   ; $6516: $01 $a0 $65
	add  hl, bc                                      ; $6519: $09
	ld   a, [hl+]                                    ; $651a: $2a
	ld   h, [hl]                                     ; $651b: $66
	ld   l, a                                        ; $651c: $6f
	ld   a, $01                                      ; $651d: $3e $01
	ld   [$cb1d], a                                  ; $651f: $ea $1d $cb
	jp   hl                                          ; $6522: $e9


jr_009_6523:
	ld   [$b0aa], a                                  ; $6523: $ea $aa $b0
	ld   h, $41                                      ; $6526: $26 $41
	ld   l, $01                                      ; $6528: $2e $01
	ld   bc, $0012                                   ; $652a: $01 $12 $00
	ld   a, [$c653]                                  ; $652d: $fa $53 $c6

	M_FarCall SetIntroScriptState
	ret                                              ; $6544: $c9


Jump_009_6545:
	ld   hl, $01bc                                   ; $6545: $21 $bc $01

	M_FarCall CheckIfNextFlagSet1

	and  $02                                         ; $655c: $e6 $02
	push af                                          ; $655e: $f5
	ld   hl, $01c0                                   ; $655f: $21 $c0 $01

	M_FarCall CheckIfNextFlagSet1

	and  $01                                         ; $6576: $e6 $01
	pop  bc                                          ; $6578: $c1
	or   b                                           ; $6579: $b0
	ld   h, $41                                      ; $657a: $26 $41
	ld   l, $01                                      ; $657c: $2e $01
	push af                                          ; $657e: $f5
	ld   a, $46                                      ; $657f: $3e $46
	ld   [wFarCallAddr], a                                  ; $6581: $ea $98 $c2
	ld   a, $79                                      ; $6584: $3e $79
	ld   [wFarCallAddr+1], a                                  ; $6586: $ea $99 $c2
	ld   a, $30                                      ; $6589: $3e $30
	ld   [wFarCallBank], a                                  ; $658b: $ea $9a $c2
	pop  af                                          ; $658e: $f1
	call FarCall                                       ; $658f: $cd $62 $09
	ret                                              ; $6592: $c9


Jump_009_6593:
	ld   a, [wRomandoShopReturnState]                                  ; $6593: $fa $52 $cc
	ld   [wGameState], a                                  ; $6596: $ea $a0 $c2
	ld   a, [wRomandoShopReturnSubstate]                                  ; $6599: $fa $53 $cc
	ld   [wGameSubstate], a                                  ; $659c: $ea $a1 $c2
	ret                                              ; $659f: $c9


	xor  h                                           ; $65a0: $ac
	ld   h, l                                        ; $65a1: $65
	rst  ToBoot                                         ; $65a2: $c7
	ld   h, l                                        ; $65a3: $65
	db   $e3                                         ; $65a4: $e3
	ld   h, l                                        ; $65a5: $65
	cp   $65                                         ; $65a6: $fe $65
	add  hl, de                                      ; $65a8: $19
	ld   h, [hl]                                     ; $65a9: $66
	inc  [hl]                                        ; $65aa: $34
	ld   h, [hl]                                     ; $65ab: $66
	ld   a, [wGameState]                                  ; $65ac: $fa $a0 $c2
	ld   h, a                                        ; $65af: $67
	ld   l, $01                                      ; $65b0: $2e $01
	push af                                          ; $65b2: $f5
	ld   a, $51                                      ; $65b3: $3e $51
	ld   [wFarCallAddr], a                                  ; $65b5: $ea $98 $c2
	ld   a, $7f                                      ; $65b8: $3e $7f
	ld   [wFarCallAddr+1], a                                  ; $65ba: $ea $99 $c2
	ld   a, $3e                                      ; $65bd: $3e $3e
	ld   [wFarCallBank], a                                  ; $65bf: $ea $9a $c2
	pop  af                                          ; $65c2: $f1
	call FarCall                                       ; $65c3: $cd $62 $09
	ret                                              ; $65c6: $c9


	ld   a, [wGameState]                                  ; $65c7: $fa $a0 $c2
	ld   h, a                                        ; $65ca: $67
	ld   l, $01                                      ; $65cb: $2e $01
	xor  a                                           ; $65cd: $af
	push af                                          ; $65ce: $f5
	ld   a, $61                                      ; $65cf: $3e $61
	ld   [wFarCallAddr], a                                  ; $65d1: $ea $98 $c2
	ld   a, $75                                      ; $65d4: $3e $75
	ld   [wFarCallAddr+1], a                                  ; $65d6: $ea $99 $c2
	ld   a, $10                                      ; $65d9: $3e $10
	ld   [wFarCallBank], a                                  ; $65db: $ea $9a $c2
	pop  af                                          ; $65de: $f1
	call FarCall                                       ; $65df: $cd $62 $09
	ret                                              ; $65e2: $c9


	ld   a, [wGameState]                                  ; $65e3: $fa $a0 $c2
	ld   h, a                                        ; $65e6: $67
	ld   l, $01                                      ; $65e7: $2e $01
	push af                                          ; $65e9: $f5
	ld   a, $9e                                      ; $65ea: $3e $9e
	ld   [wFarCallAddr], a                                  ; $65ec: $ea $98 $c2
	ld   a, $6d                                      ; $65ef: $3e $6d
	ld   [wFarCallAddr+1], a                                  ; $65f1: $ea $99 $c2
	ld   a, $11                                      ; $65f4: $3e $11
	ld   [wFarCallBank], a                                  ; $65f6: $ea $9a $c2
	pop  af                                          ; $65f9: $f1
	call FarCall                                       ; $65fa: $cd $62 $09
	ret                                              ; $65fd: $c9


	ld   a, [wGameState]                                  ; $65fe: $fa $a0 $c2
	ld   h, a                                        ; $6601: $67
	ld   l, $01                                      ; $6602: $2e $01
	push af                                          ; $6604: $f5
	ld   a, $4b                                      ; $6605: $3e $4b
	ld   [wFarCallAddr], a                                  ; $6607: $ea $98 $c2
	ld   a, $79                                      ; $660a: $3e $79
	ld   [wFarCallAddr+1], a                                  ; $660c: $ea $99 $c2
	ld   a, $3e                                      ; $660f: $3e $3e
	ld   [wFarCallBank], a                                  ; $6611: $ea $9a $c2
	pop  af                                          ; $6614: $f1
	call FarCall                                       ; $6615: $cd $62 $09
	ret                                              ; $6618: $c9


	ld   a, [wGameState]                                  ; $6619: $fa $a0 $c2
	ld   h, a                                        ; $661c: $67
	ld   l, $01                                      ; $661d: $2e $01
	push af                                          ; $661f: $f5
	ld   a, $01                                      ; $6620: $3e $01
	ld   [wFarCallAddr], a                                  ; $6622: $ea $98 $c2
	ld   a, $73                                      ; $6625: $3e $73
	ld   [wFarCallAddr+1], a                                  ; $6627: $ea $99 $c2
	ld   a, $3e                                      ; $662a: $3e $3e
	ld   [wFarCallBank], a                                  ; $662c: $ea $9a $c2
	pop  af                                          ; $662f: $f1
	call FarCall                                       ; $6630: $cd $62 $09
	ret                                              ; $6633: $c9


	ld   a, [wGameState]                                  ; $6634: $fa $a0 $c2
	ld   h, a                                        ; $6637: $67
	ld   l, $01                                      ; $6638: $2e $01
	push af                                          ; $663a: $f5
	ld   a, $34                                      ; $663b: $3e $34
	ld   [wFarCallAddr], a                                  ; $663d: $ea $98 $c2
	ld   a, $46                                      ; $6640: $3e $46
	ld   [wFarCallAddr+1], a                                  ; $6642: $ea $99 $c2
	ld   a, $3f                                      ; $6645: $3e $3f
	ld   [wFarCallBank], a                                  ; $6647: $ea $9a $c2
	pop  af                                          ; $664a: $f1
	call FarCall                                       ; $664b: $cd $62 $09
	ret                                              ; $664e: $c9


HLequAddrOfChestItemMetadata:
	push bc                                          ; $664f: $c5
	ld   h, a                                        ; $6650: $67
	ld   l, $06                                      ; $6651: $2e $06
	call AequHtimesL                                       ; $6653: $cd $ac $0b
	ld   bc, .table                                   ; $6656: $01 $5c $66
	add  hl, bc                                      ; $6659: $09
	pop  bc                                          ; $665a: $c1
	ret                                              ; $665b: $c9

macro ChestItem
	dw \1 ; item flag
	db \2, \3, \4, \5 ; name text idx, description text idx, ???, ???
endm

.table:
	ChestItem FLAG1_SAKURA_PHOTO, $14, $15, $11, $ff
	ChestItem FLAG1_SUMIRE_PHOTO, $16, $17, $12, $ff
	ChestItem FLAG1_MARIA_PHOTO, $18, $19, $13, $ff
	ChestItem FLAG1_IRIS_PHOTO, $1a, $1b, $14, $ff
	ChestItem FLAG1_KOHRAN_PHOTO, $1c, $1d, $15, $ff
	ChestItem FLAG1_KANNA_PHOTO, $1e, $1f, $16, $ff
	ChestItem FLAG1_ORIHIME_PHOTO, $20, $21, $17, $ff
	ChestItem FLAG1_RENI_PHOTO, $22, $23, $18, $ff
	ChestItem CheckIfAnyEventGalleryBought, $24, $25, $20, $ff
	ChestItem CheckIfAnyPortraitGalleryBought, $34, $35, $30, $ff
	ChestItem CheckIfAnySoundModeBought, $00, $01, $50, $ff
	ChestItem CheckIfAnyVoiceModeBought, $06, $07, $00, $ff
	ChestItem FLAG1_ITEM_INDEX, $74, $75, $89, $ff
	ChestItem FLAG1_RECOVERY_DRINK, $62, $63, $80, $00
	ChestItem FLAG1_RING_OF_REV, $64, $65, $81, $00
	ChestItem FLAG1_MYSTERY_CHARM, $66, $67, $82, $00
	ChestItem FLAG1_GUTS_HEADBAND, $68, $69, $83, $00
	ChestItem FLAG1_LIGHT_SHOES, $6a, $6b, $84, $00
	ChestItem FLAG1_CLEAR_LENS, $6c, $6d, $85, $00
	ChestItem FLAG1_NAMEPLATE, $60, $61, $86, $00
	ChestItem FLAG1_PETAL_CURSOR, $50, $51, $87, $00
	ChestItem FLAG1_CANDY_CURSOR, $52, $53, $88, $00
	ChestItem FLAG1_SAKURAS_SCHEDULE, $54, $55, $70, $00
	ChestItem FLAG1_SUMIRES_SCHEDULE, $56, $57, $71, $00
	ChestItem FLAG1_MARIAS_SCHEDULE, $58, $59, $72, $00
	ChestItem FLAG1_IRIS_SCHEDULE, $5a, $5b, $73, $00
	ChestItem FLAG1_KOHRANS_SCHEDULE, $5c, $5d, $74, $00
	ChestItem FLAG1_KANNAS_SCHEDULE, $5e, $5f, $75, $00
	ChestItem FLAG1_MOCK_BATTLE, $72, $73, $4a, $ff
	ChestItem FLAG1_PUSH_UPS, $6e, $6f, $48, $ff
	ChestItem FLAG1_RED_LIGHT_GREEN_LIGHT, $70, $71, $49, $ff
	ChestItem FLAG1_SAKURA_EX_MODE, $44, $45, $41, $00
	ChestItem FLAG1_SUMIRE_EX_MODE, $46, $47, $42, $00
	ChestItem FLAG1_MARIA_EX_MODE, $48, $49, $43, $00
	ChestItem FLAG1_IRIS_EX_MODE, $4a, $4b, $44, $00
	ChestItem FLAG1_KOHRAN_EX_MODE, $4c, $4d, $45, $00
	ChestItem FLAG1_KANNA_EX_MODE, $4e, $4f, $46, $00
	db $00, $00


CheckIfAnyEventGalleryBought:
	ld   hl, $0130                                   ; $673c: $21 $30 $01
	M_FarCall CheckIfNextFlagSet1
	or   a                                           ; $6753: $b7
	ret  nz                                          ; $6754: $c0

	ld   hl, $0134                             ; $6755: $21 $34 $01
	M_FarCall CheckIfNextFlagSet1
	or   a                                           ; $676c: $b7
	ret  nz                                          ; $676d: $c0

	ld   hl, $0138                                   ; $676e: $21 $38 $01
	M_FarCall CheckIfNextFlagSet1
	or   a                                           ; $6785: $b7
	ret  nz                                          ; $6786: $c0

	ld   hl, $013c                                   ; $6787: $21 $3c $01
	M_FarCall CheckIfNextFlagSet1
	or   a                                           ; $679e: $b7
	ret  nz                                          ; $679f: $c0

	ld   hl, $0140                                   ; $67a0: $21 $40 $01
	M_FarCall CheckIfNextFlagSet1
	or   a                                           ; $67b7: $b7
	ret  nz                                          ; $67b8: $c0

	ld   hl, $0144                   ; $67b9: $21 $44 $01
	M_FarCall CheckIfNextFlagSet1
	ret                                              ; $67d0: $c9


; Returns A != 0 if a portrait gallery was bought
CheckIfAnyPortraitGalleryBought:
	ld   hl, FLAG1_SAKURA_PORTRAIT_GALLERY                          ; $67d1
	M_FarCall CheckIfNextFlagSet1
	or   a                                                          ; $67e8
	ret  nz                                                         ; $67e9

	ld   hl, FLAG1_SUMIRE_PORTRAIT_GALLERY                          ; $67ea
	M_FarCall CheckIfNextFlagSet1
	or   a                                                          ; $6801
	ret  nz                                                         ; $6802

	ld   hl, FLAG1_MARIA_PORTRAIT_GALLERY                           ; $6803
	M_FarCall CheckIfNextFlagSet1
	or   a                                                          ; $681a
	ret  nz                                                         ; $681b

	ld   hl, FLAG1_IRIS_PORTRAIT_GALLERY                            ; $681c
	M_FarCall CheckIfNextFlagSet1
	or   a                                                          ; $6833
	ret  nz                                                         ; $6834

	ld   hl, FLAG1_KOHRAN_PORTRAIT_GALLERY                          ; $6835
	M_FarCall CheckIfNextFlagSet1
	or   a                                                          ; $684c
	ret  nz                                                         ; $684d

	ld   hl, FLAG1_KANNA_PORTRAIT_GALLERY                           ; $684e
	M_FarCall CheckIfNextFlagSet1
	ret                                                             ; $6865


CheckIfAnySoundModeBought:
	ld   hl, $01bc                                   ; $6866: $21 $bc $01
	M_FarCall CheckIfNextFlagSet1
	or   a                                           ; $687d: $b7
	ret  nz                                          ; $687e: $c0

	ld   hl, $01c0                                   ; $687f: $21 $c0 $01
	M_FarCall CheckIfNextFlagSet1
	ret                                              ; $6896: $c9


CheckIfAnyVoiceModeBought:
	ld   hl, $01c4                                   ; $6897: $21 $c4 $01
	M_FarCall CheckIfNextFlagSet1
	or   a                                           ; $68ae: $b7
	ret  nz                                          ; $68af: $c0

	ld   hl, $01c8                                   ; $68b0: $21 $c8 $01
	M_FarCall CheckIfNextFlagSet1
	or   a                                           ; $68c7: $b7
	ret  nz                                          ; $68c8: $c0

	ld   hl, $01cc                                   ; $68c9: $21 $cc $01
	M_FarCall CheckIfNextFlagSet1
	or   a                                           ; $68e0: $b7
	ret  nz                                          ; $68e1: $c0

	ld   hl, $01d0                                   ; $68e2: $21 $d0 $01
	M_FarCall CheckIfNextFlagSet1
	or   a                                           ; $68f9: $b7
	ret  nz                                          ; $68fa: $c0

	ld   hl, $01d4                                   ; $68fb: $21 $d4 $01
	M_FarCall CheckIfNextFlagSet1
	or   a                                           ; $6912: $b7
	ret  nz                                          ; $6913: $c0

	ld   hl, $01d8                                   ; $6914: $21 $d8 $01
	M_FarCall CheckIfNextFlagSet1
	ret                                              ; $692b: $c9


LCDCFunc0a::
;
	ld   hl, $c20b                                   ; $692c: $21 $0b $c2
	ldh  a, [rLY]                                    ; $692f: $f0 $44
	cp   [hl]                                        ; $6931: $be
	jp   nz, LCDCInterruptHandler.return                                   ; $6932: $c2 $4a $04

	ld   hl, rLCDC                                   ; $6935: $21 $40 $ff

; Wait until out of hblank
:	ldh  a, [rSTAT]                                  ; $6938: $f0 $41
	and  $03                                         ; $693a: $e6 $03
	jr   z, :-                              ; $693c: $28 $fa

; Wait until in hblank
:	ldh  a, [rSTAT]                                  ; $693e: $f0 $41
	and  $03                                         ; $6940: $e6 $03
	jr   nz, :-                             ; $6942: $20 $fa

; Set LCDCF_BG9C00
	set  3, [hl]                                     ; $6944: $cb $de

;
	ld   a, [$cc5a]                                  ; $6946: $fa $5a $cc
	ldh  [rSCY], a                                   ; $6949: $e0 $42
	jp   LCDCInterruptHandler.return                                       ; $694b: $c3 $4a $04


; Returns A = $ff if no items available, else 0
CheckIfNoChestItemsUnlocked::
	call Call_009_58eb                               ; $694e: $cd $eb $58
	ld   a, [$cc56]                                  ; $6951: $fa $56 $cc
	or   a                                           ; $6954: $b7
	jr   z, jr_009_6959                              ; $6955: $28 $02

	xor  a                                           ; $6957: $af
	ret                                              ; $6958: $c9

jr_009_6959:
	dec  a                                           ; $6959: $3d
	ret                                              ; $695a: $c9


SetTreasureChestState::
	ld   a, h                                        ; $695b: $7c
	ld   [wRomandoShopReturnState], a                                  ; $695c: $ea $52 $cc
	ld   a, l                                        ; $695f: $7d
	ld   [wRomandoShopReturnSubstate], a                                  ; $6960: $ea $53 $cc
	ld   a, GS_TREASURE_CHEST                                      ; $6963: $3e $41
	ld   [wGameState], a                                  ; $6965: $ea $a0 $c2
	xor  a                                           ; $6968: $af
	ld   [wGameSubstate], a                                  ; $6969: $ea $a1 $c2
	ret                                              ; $696c: $c9


if def(VWF)

TreasureChestBank0_8000hHook:
	call RLEXorCopy

	M_FarCall LoadRomandoTreasureInvPopup
	ret

endc