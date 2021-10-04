; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $021", ROMX[$4000], BANK[$21]

; A - nap or train idx
; H - return state
; L - return substate
SetNapOrTrainState::
; Save idx used for table below
	ld   [wNapOrTrainIdx], a                                        ; $4000
	push hl                                                         ; $4003

; HL points to a relevant game state based on idx 
	ld   hl, .states                                                ; $4004
	ld   d, $00                                                     ; $4007
	ld   e, a                                                       ; $4009
	add  hl, de                                                     ; $400a

; Set state from table, with substate 0
	ld   a, [hl]                                                    ; $400b
	ld   [wGameState], a                                            ; $400c
	xor  a                                                          ; $400f
	ld   [wGameSubstate], a                                         ; $4010

; Get orig HL and set return state/substate
	pop  hl                                                         ; $4013
	ld   a, h                                                       ; $4014
	ld   [wNapOrTrainReturnState], a                                ; $4015
	ld   a, l                                                       ; $4018
	ld   [wNapOrTrainReturnSubstate], a                             ; $4019
	ret                                                             ; $401c

.states:
	db GS_NAP
	db GS_SAKURA_TRAINING
	db GS_SUMIRE_TRAINING
	db GS_MARIA_TRAINING
	db GS_IRIS_TRAINING
	db GS_KOHRAN_TRAINING
	db GS_KANNA_TRAINING


;
	call ClearTextBoxDimensionsAndSetDefaultTextStyle                                       ; $4024: $cd $09 $14
	ld   bc, $1001                                   ; $4027: $01 $01 $10
	call SetKanjiTextBoxDimensions                                       ; $402a: $cd $24 $14
	ld   bc, $0000                                   ; $402d: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $4030: $cd $34 $14
	ld   a, $02                                      ; $4033: $3e $02
	ld   [wCurrKanjiRow], a                                  ; $4035: $ea $e9 $c5
	xor  a                                           ; $4038: $af
	ld   [wCurrKanjiCol], a                                  ; $4039: $ea $e8 $c5
	ld   a, [$ca86]                                  ; $403c: $fa $86 $ca
	sla  a                                           ; $403f: $cb $27
	ld   b, $00                                      ; $4041: $06 $00
	ld   c, a                                        ; $4043: $4f
	ld   hl, $4066                                   ; $4044: $21 $66 $40
	add  hl, bc                                      ; $4047: $09
	ld   a, [hl+]                                    ; $4048: $2a
	ld   h, [hl]                                     ; $4049: $66
	ld   l, a                                        ; $404a: $6f
	ld   a, [wNapOrTrainIdx]                                  ; $404b: $fa $6d $ca
	ld   c, a                                        ; $404e: $4f
	ld   b, $00                                      ; $404f: $06 $00
	add  hl, bc                                      ; $4051: $09
	ld   a, [hl]                                     ; $4052: $7e
	add  a                                           ; $4053: $87
	ld   h, $00                                      ; $4054: $26 $00
	ld   l, a                                        ; $4056: $6f
	ld   bc, $4081                                   ; $4057: $01 $81 $40
	add  hl, bc                                      ; $405a: $09
	ld   a, [hl+]                                    ; $405b: $2a
	ld   h, [hl]                                     ; $405c: $66
	ld   l, a                                        ; $405d: $6f
	ld   bc, $4081                                   ; $405e: $01 $81 $40
	add  hl, bc                                      ; $4061: $09
	call PopulateKanjiConvoStructForCurrTextBox                                       ; $4062: $cd $27 $10
	ret                                              ; $4065: $c9


	ld   l, h                                        ; $4066: $6c
	ld   b, b                                        ; $4067: $40
	ld   [hl], e                                     ; $4068: $73
	ld   b, b                                        ; $4069: $40
	ld   a, d                                        ; $406a: $7a
	ld   b, b                                        ; $406b: $40


	ld   [de], a                                     ; $406c: $12
	inc  c                                           ; $406d: $0c
	dec  c                                           ; $406e: $0d
	ld   c, $0f                                      ; $406f: $0e $0f
	db   $10                                         ; $4071: $10
	ld   de, $0600                                   ; $4072: $11 $00 $06
	rlca                                             ; $4075: $07
	ld   [$0a09], sp                                 ; $4076: $08 $09 $0a
	dec  bc                                          ; $4079: $0b


	nop                                              ; $407a: $00
	nop                                              ; $407b: $00
	ld   bc, $0302                                   ; $407c: $01 $02 $03
	inc  b                                           ; $407f: $04
	dec  b                                           ; $4080: $05


if def(VWF)

Data_21_4081::
	dw Data_21_4081entry00-Data_21_4081
	dw Data_21_4081entry01-Data_21_4081
	dw Data_21_4081entry02-Data_21_4081
	dw Data_21_4081entry03-Data_21_4081
	dw Data_21_4081entry04-Data_21_4081
	dw Data_21_4081entry05-Data_21_4081
	dw Data_21_4081entry06-Data_21_4081
	dw Data_21_4081entry07-Data_21_4081
	dw Data_21_4081entry08-Data_21_4081
	dw Data_21_4081entry09-Data_21_4081
	dw Data_21_4081entry0a-Data_21_4081
	dw Data_21_4081entry0b-Data_21_4081
	dw Data_21_4081entry0c-Data_21_4081
	dw Data_21_4081entry0d-Data_21_4081
	dw Data_21_4081entry0e-Data_21_4081
	dw Data_21_4081entry0f-Data_21_4081
	dw Data_21_4081entry10-Data_21_4081
	dw Data_21_4081entry11-Data_21_4081
	dw Data_21_4081entry12-Data_21_4081

Data_21_4081entry00::
	db $21, $46, $39, $35, $48, $fa, $00
Data_21_4081entry01::
	db $21, $46, $39, $35, $48, $fa, $00
Data_21_4081entry02::
	db $21, $46, $39, $35, $48, $fa, $00
Data_21_4081entry03::
	db $21, $46, $39, $35, $48, $fa, $00
Data_21_4081entry04::
	db $1b, $4b, $39, $47, $43, $41, $39, $fa, $00
Data_21_4081entry05::
	db $21, $46, $39, $35, $48, $fa, $00
Data_21_4081entry06::
	db $21, $43, $43, $38, $10, $40, $49, $37, $3f, $fa, $00
Data_21_4081entry07::
	db $21, $43, $43, $38, $10, $40, $49, $37, $3f, $fa, $00
Data_21_4081entry08::
	db $21, $43, $43, $38, $10, $40, $49, $37, $3f, $fa, $00
Data_21_4081entry09::
	db $21, $43, $43, $38, $10, $40, $49, $37, $3f, $fa, $00

	ds $410a-@, 0

else

	ld   h, $00                                      ; $4081: $26 $00
	ld   a, [hl+]                                    ; $4083: $2a
	nop                                              ; $4084: $00
	ld   l, $00                                      ; $4085: $2e $00
	ld   [hl-], a                                    ; $4087: $32
	nop                                              ; $4088: $00
	ld   [hl], $00                                   ; $4089: $36 $00
	inc  a                                           ; $408b: $3c
	nop                                              ; $408c: $00
	ld   b, b                                        ; $408d: $40
	nop                                              ; $408e: $00
	ld   b, l                                        ; $408f: $45
	nop                                              ; $4090: $00
	ld   c, d                                        ; $4091: $4a
	nop                                              ; $4092: $00
	ld   c, a                                        ; $4093: $4f
	nop                                              ; $4094: $00
	ld   d, h                                        ; $4095: $54
	nop                                              ; $4096: $00
	ld   e, d                                        ; $4097: $5a
	nop                                              ; $4098: $00
	ld   e, a                                        ; $4099: $5f
	nop                                              ; $409a: $00
	ld   h, h                                        ; $409b: $64
	nop                                              ; $409c: $00
	ld   l, c                                        ; $409d: $69
	nop                                              ; $409e: $00
	ld   l, a                                        ; $409f: $6f
	nop                                              ; $40a0: $00
	ld   [hl], h                                     ; $40a1: $74
	nop                                              ; $40a2: $00
	ld   a, d                                        ; $40a3: $7a
	nop                                              ; $40a4: $00
	ld   a, a                                        ; $40a5: $7f
	nop                                              ; $40a6: $00


	ld   h, a                                        ; $40a7: $67
	ld   h, d                                        ; $40a8: $62
	ld   d, d                                        ; $40a9: $52
	nop                                              ; $40aa: $00
	ld   h, a                                        ; $40ab: $67
	ld   h, d                                        ; $40ac: $62
	ld   d, d                                        ; $40ad: $52
	nop                                              ; $40ae: $00
	ld   h, a                                        ; $40af: $67
	ld   h, d                                        ; $40b0: $62
	ld   d, d                                        ; $40b1: $52
	nop                                              ; $40b2: $00
	ld   h, a                                        ; $40b3: $67
	ld   h, d                                        ; $40b4: $62
	ld   d, d                                        ; $40b5: $52
	nop                                              ; $40b6: $00
	ld   h, a                                        ; $40b7: $67
	ld   h, d                                        ; $40b8: $62
	ld   d, d                                        ; $40b9: $52
	sub  d                                           ; $40ba: $92
	and  c                                           ; $40bb: $a1
	nop                                              ; $40bc: $00
	ld   h, a                                        ; $40bd: $67
	ld   h, d                                        ; $40be: $62
	ld   d, d                                        ; $40bf: $52
	nop                                              ; $40c0: $00
	ld   e, d                                        ; $40c1: $5a
	and  c                                           ; $40c2: $a1
	ld   a, [hl]                                     ; $40c3: $7e
	sbc  d                                           ; $40c4: $9a
	nop                                              ; $40c5: $00
	ld   e, d                                        ; $40c6: $5a
	and  c                                           ; $40c7: $a1
	ld   a, [hl]                                     ; $40c8: $7e
	sbc  d                                           ; $40c9: $9a
	nop                                              ; $40ca: $00
	ld   e, d                                        ; $40cb: $5a
	and  c                                           ; $40cc: $a1
	ld   a, [hl]                                     ; $40cd: $7e
	sbc  d                                           ; $40ce: $9a
	nop                                              ; $40cf: $00
	ld   e, d                                        ; $40d0: $5a
	and  c                                           ; $40d1: $a1
	ld   a, [hl]                                     ; $40d2: $7e
	sbc  d                                           ; $40d3: $9a
	nop                                              ; $40d4: $00
	ld   e, d                                        ; $40d5: $5a
	and  c                                           ; $40d6: $a1
	ld   a, [hl]                                     ; $40d7: $7e
	sbc  b                                           ; $40d8: $98
	sub  d                                           ; $40d9: $92
	nop                                              ; $40da: $00
	ld   e, d                                        ; $40db: $5a
	and  c                                           ; $40dc: $a1
	ld   a, [hl]                                     ; $40dd: $7e
	sbc  d                                           ; $40de: $9a
	nop                                              ; $40df: $00
	ld   l, [hl]                                     ; $40e0: $6e
	adc  a                                           ; $40e1: $8f
	ld   l, [hl]                                     ; $40e2: $6e
	adc  a                                           ; $40e3: $8f
	nop                                              ; $40e4: $00
	ld   l, [hl]                                     ; $40e5: $6e
	adc  a                                           ; $40e6: $8f
	ld   l, [hl]                                     ; $40e7: $6e
	adc  a                                           ; $40e8: $8f
	nop                                              ; $40e9: $00
	ld   l, [hl]                                     ; $40ea: $6e
	adc  a                                           ; $40eb: $8f
	ld   l, [hl]                                     ; $40ec: $6e
	adc  a                                           ; $40ed: $8f
	ld   l, [hl]                                     ; $40ee: $6e
	nop                                              ; $40ef: $00
	ld   l, [hl]                                     ; $40f0: $6e
	adc  a                                           ; $40f1: $8f
	ld   l, [hl]                                     ; $40f2: $6e
	adc  a                                           ; $40f3: $8f
	nop                                              ; $40f4: $00
	ld   l, [hl]                                     ; $40f5: $6e
	adc  a                                           ; $40f6: $8f
	ld   l, [hl]                                     ; $40f7: $6e
	adc  a                                           ; $40f8: $8f
	sub  d                                           ; $40f9: $92
	nop                                              ; $40fa: $00
	ld   l, [hl]                                     ; $40fb: $6e
	adc  a                                           ; $40fc: $8f
	ld   l, [hl]                                     ; $40fd: $6e
	adc  a                                           ; $40fe: $8f
	nop                                              ; $40ff: $00
	inc  [hl]                                        ; $4100: $34
	inc  [hl]                                        ; $4101: $34
	inc  [hl]                                        ; $4102: $34
	ld   c, [hl]                                     ; $4103: $4e
	ld   c, [hl]                                     ; $4104: $4e
	ld   c, [hl]                                     ; $4105: $4e
	ld   c, [hl]                                     ; $4106: $4e
	ld   c, [hl]                                     ; $4107: $4e
	ld   c, [hl]                                     ; $4108: $4e
	nop                                              ; $4109: $00

endc


;
	ld   a, [$ca94]                                  ; $410a: $fa $94 $ca
	and  a                                           ; $410d: $a7
	jr   z, .done                              ; $410e: $28 $0b

	call CheckIfReachedLastKanjiIdxInCurrTextBox                                       ; $4110: $cd $71 $14
	or   a                                           ; $4113: $b7
	jr   nz, .enqueue                             ; $4114: $20 $02

	scf                                              ; $4116: $37
	ret                                              ; $4117: $c9

.enqueue:
	jp   HDMAEnqueueNextTextBoxKanji                                       ; $4118: $c3 $55 $10

.done:
	ret                                              ; $411b: $c9


Call_021_411c:
	ld   a, [hl+]                                    ; $411c: $2a
	ld   [de], a                                     ; $411d: $12
	inc  de                                          ; $411e: $13
	ld   a, [$ca8e]                                  ; $411f: $fa $8e $ca
	ld   c, a                                        ; $4122: $4f
	ld   a, [hl+]                                    ; $4123: $2a
	add  c                                           ; $4124: $81
	ld   [de], a                                     ; $4125: $12
	inc  de                                          ; $4126: $13
	xor  a                                           ; $4127: $af
	ld   [de], a                                     ; $4128: $12
	ret                                              ; $4129: $c9


Call_021_412a:
	ld   a, [de]                                     ; $412a: $1a
	and  a                                           ; $412b: $a7
	ret  z                                           ; $412c: $c8

	ld   a, [$b1b4]                                  ; $412d: $fa $b4 $b1
	and  a                                           ; $4130: $a7
	jr   nz, jr_021_413b                             ; $4131: $20 $08

	ld   a, [wInGameButtonsHeld]                                  ; $4133: $fa $0f $c2
	and  $82                                         ; $4136: $e6 $82
	jp   z, Jump_021_4148                            ; $4138: $ca $48 $41

jr_021_413b:
	ld   a, [de]                                     ; $413b: $1a
	dec  a                                           ; $413c: $3d
	ld   [de], a                                     ; $413d: $12
	jr   z, jr_021_414c                              ; $413e: $28 $0c

	dec  a                                           ; $4140: $3d
	ld   [de], a                                     ; $4141: $12
	jr   z, jr_021_414c                              ; $4142: $28 $08

	dec  a                                           ; $4144: $3d
	ld   [de], a                                     ; $4145: $12
	jr   z, jr_021_414c                              ; $4146: $28 $04

Jump_021_4148:
	ld   a, [de]                                     ; $4148: $1a
	dec  a                                           ; $4149: $3d
	ld   [de], a                                     ; $414a: $12
	ret  nz                                          ; $414b: $c0

jr_021_414c:
	push de                                          ; $414c: $d5
	inc  de                                          ; $414d: $13
	inc  de                                          ; $414e: $13
	ld   a, [de]                                     ; $414f: $1a
	inc  a                                           ; $4150: $3c
	ld   [de], a                                     ; $4151: $12
	ld   c, a                                        ; $4152: $4f
	ld   b, $00                                      ; $4153: $06 $00
	sla  c                                           ; $4155: $cb $21
	rl   b                                           ; $4157: $cb $10
	add  hl, bc                                      ; $4159: $09
	ld   a, [hl+]                                    ; $415a: $2a
	pop  de                                          ; $415b: $d1
	and  a                                           ; $415c: $a7
	scf                                              ; $415d: $37
	ret  z                                           ; $415e: $c8

	push de                                          ; $415f: $d5
	ld   [de], a                                     ; $4160: $12
	inc  de                                          ; $4161: $13
	ld   a, [$ca8e]                                  ; $4162: $fa $8e $ca
	ld   c, a                                        ; $4165: $4f
	ld   a, [hl+]                                    ; $4166: $2a
	add  c                                           ; $4167: $81
	ld   [de], a                                     ; $4168: $12
	pop  de                                          ; $4169: $d1
	ret                                              ; $416a: $c9


Call_021_416b:
	ld   a, [wNapOrTrainIdx]                                  ; $416b: $fa $6d $ca
	sla  a                                           ; $416e: $cb $27
	ld   b, $00                                      ; $4170: $06 $00
	ld   c, a                                        ; $4172: $4f
	ld   hl, $4283                                   ; $4173: $21 $83 $42
	add  hl, bc                                      ; $4176: $09
	ld   a, [hl+]                                    ; $4177: $2a
	ld   h, [hl]                                     ; $4178: $66
	ld   l, a                                        ; $4179: $6f
	ld   d, h                                        ; $417a: $54
	ld   e, l                                        ; $417b: $5d
	ld   hl, $429b                                   ; $417c: $21 $9b $42
	srl  c                                           ; $417f: $cb $39
	add  hl, bc                                      ; $4181: $09
	ld   a, [hl]                                     ; $4182: $7e
	ld   hl, $ca97                                   ; $4183: $21 $97 $ca
	ld   c, a                                        ; $4186: $4f
	add  hl, bc                                      ; $4187: $09
	xor  a                                           ; $4188: $af
	ld   [$ca97], a                                  ; $4189: $ea $97 $ca
	ld   [$ca98], a                                  ; $418c: $ea $98 $ca
	ld   [$ca99], a                                  ; $418f: $ea $99 $ca
	ld   [$ca9a], a                                  ; $4192: $ea $9a $ca
	ld   [$ca9b], a                                  ; $4195: $ea $9b $ca
	ld   [$ca9c], a                                  ; $4198: $ea $9c $ca
	ld   [$ca9e], a                                  ; $419b: $ea $9e $ca
	push hl                                          ; $419e: $e5
	ld   a, [wNapOrTrainIdx]                                  ; $419f: $fa $6d $ca
	dec  a                                           ; $41a2: $3d
	sla  a                                           ; $41a3: $cb $27
	ld   hl, $42ae                                   ; $41a5: $21 $ae $42
	ld   b, $00                                      ; $41a8: $06 $00
	ld   c, a                                        ; $41aa: $4f
	add  hl, bc                                      ; $41ab: $09
	ld   a, [hl+]                                    ; $41ac: $2a
	ld   h, [hl]                                     ; $41ad: $66
	ld   l, a                                        ; $41ae: $6f
	push af                                          ; $41af: $f5
	ld   a, $d7                                      ; $41b0: $3e $d7
	ld   [wFarCallAddr], a                                  ; $41b2: $ea $98 $c2
	ld   a, $44                                      ; $41b5: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $41b7: $ea $99 $c2
	ld   a, $09                                      ; $41ba: $3e $09
	ld   [wFarCallBank], a                                  ; $41bc: $ea $9a $c2
	pop  af                                          ; $41bf: $f1
	call FarCall                                       ; $41c0: $cd $62 $09
	cp   $03                                         ; $41c3: $fe $03
	jr   c, jr_021_41d9                              ; $41c5: $38 $12

	cp   $06                                         ; $41c7: $fe $06
	jr   c, jr_021_41d2                              ; $41c9: $38 $07

	ld   a, $02                                      ; $41cb: $3e $02
	ld   [$ca86], a                                  ; $41cd: $ea $86 $ca
	jr   jr_021_41de                                 ; $41d0: $18 $0c

jr_021_41d2:
	ld   a, $01                                      ; $41d2: $3e $01
	ld   [$ca86], a                                  ; $41d4: $ea $86 $ca
	jr   jr_021_41de                                 ; $41d7: $18 $05

jr_021_41d9:
	ld   a, $00                                      ; $41d9: $3e $00
	ld   [$ca86], a                                  ; $41db: $ea $86 $ca

jr_021_41de:
	ld   a, [wNapOrTrainIdx]                                  ; $41de: $fa $6d $ca
	dec  a                                           ; $41e1: $3d
	sla  a                                           ; $41e2: $cb $27
	ld   b, $00                                      ; $41e4: $06 $00
	ld   c, a                                        ; $41e6: $4f
	ld   hl, $42a2                                   ; $41e7: $21 $a2 $42
	add  hl, bc                                      ; $41ea: $09
	ld   a, [hl+]                                    ; $41eb: $2a
	ld   h, [hl]                                     ; $41ec: $66
	ld   l, a                                        ; $41ed: $6f
	push af                                          ; $41ee: $f5
	ld   a, $d7                                      ; $41ef: $3e $d7
	ld   [wFarCallAddr], a                                  ; $41f1: $ea $98 $c2
	ld   a, $44                                      ; $41f4: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $41f6: $ea $99 $c2
	ld   a, $09                                      ; $41f9: $3e $09
	ld   [wFarCallBank], a                                  ; $41fb: $ea $9a $c2
	pop  af                                          ; $41fe: $f1
	call FarCall                                       ; $41ff: $cd $62 $09
	cp   $64                                         ; $4202: $fe $64
	jr   c, jr_021_4212                              ; $4204: $38 $0c

	sub  $64                                         ; $4206: $d6 $64
	ld   h, a                                        ; $4208: $67
	ld   l, $14                                      ; $4209: $2e $14
	call HLequHdivModL                                       ; $420b: $cd $fb $0b
	ld   a, h                                        ; $420e: $7c
	ld   b, a                                        ; $420f: $47
	jr   jr_021_4214                                 ; $4210: $18 $02

jr_021_4212:
	ld   b, $00                                      ; $4212: $06 $00

jr_021_4214:
	push bc                                          ; $4214: $c5
	ld   a, [wNapOrTrainIdx]                                  ; $4215: $fa $6d $ca
	dec  a                                           ; $4218: $3d
	sla  a                                           ; $4219: $cb $27
	ld   hl, Table_21_42ba                                   ; $421b: $21 $ba $42
	ld   b, $00                                      ; $421e: $06 $00
	ld   c, a                                        ; $4220: $4f
	add  hl, bc                                      ; $4221: $09
	ld   a, [hl+]                                    ; $4222: $2a
	ld   h, [hl]                                     ; $4223: $66
	ld   l, a                                        ; $4224: $6f

	M_FarCall CheckIfFlagSet2

	pop  bc                                          ; $4239: $c1
	ld   c, $00                                      ; $423a: $0e $00
	and  a                                           ; $423c: $a7
	jr   z, jr_021_4241                              ; $423d: $28 $02

	ld   c, $02                                      ; $423f: $0e $02

jr_021_4241:
	pop  hl                                          ; $4241: $e1
	ld   a, $10                                      ; $4242: $3e $10
	add  b                                           ; $4244: $80
	add  c                                           ; $4245: $81
	ld   [hl], a                                     ; $4246: $77
	ld   hl, $ca9e                                   ; $4247: $21 $9e $ca
	ld   a, $20                                      ; $424a: $3e $20
	ld   [hl], a                                     ; $424c: $77
	ld   bc, $0000                                   ; $424d: $01 $00 $00

jr_021_4250:
	ld   hl, FLAG2_ITEM_EQUIPPED_START                                   ; $4250: $21 $f6 $00
	add  hl, bc                                      ; $4253: $09
	push bc                                          ; $4254: $c5

	M_FarCall CheckIfFlagSet2

	pop  bc                                          ; $4269: $c1
	and  a                                           ; $426a: $a7
	jr   z, jr_021_427c                              ; $426b: $28 $0f

	ld   hl, $ca98                                   ; $426d: $21 $98 $ca
	add  hl, bc                                      ; $4270: $09
	ld   a, [hl]                                     ; $4271: $7e
	add  $03                                         ; $4272: $c6 $03
	ld   [hl], a                                     ; $4274: $77
	ld   hl, $ca9e                                   ; $4275: $21 $9e $ca
	ld   a, [hl]                                     ; $4278: $7e
	add  $08                                         ; $4279: $c6 $08
	ld   [hl], a                                     ; $427b: $77

jr_021_427c:
	inc  c                                           ; $427c: $0c
	ld   a, c                                        ; $427d: $79
	cp   $05                                         ; $427e: $fe $05
	jr   nz, jr_021_4250                             ; $4280: $20 $ce

	ret                                              ; $4282: $c9


	nop                                              ; $4283: $00
	nop                                              ; $4284: $00
	nop                                              ; $4285: $00
	nop                                              ; $4286: $00
	call nc, $d5af                                   ; $4287: $d4 $af $d5
	xor  a                                           ; $428a: $af
	jp   nc, $d1af                                   ; $428b: $d2 $af $d1

	xor  a                                           ; $428e: $af
	db   $d3                                         ; $428f: $d3
	xor  a                                           ; $4290: $af
	pop  de                                          ; $4291: $d1
	xor  a                                           ; $4292: $af
	jp   nc, $d3af                                   ; $4293: $d2 $af $d3

	xor  a                                           ; $4296: $af
	call nc, $d5af                                   ; $4297: $d4 $af $d5
	xor  a                                           ; $429a: $af
	nop                                              ; $429b: $00
	nop                                              ; $429c: $00
	inc  b                                           ; $429d: $04
	dec  b                                           ; $429e: $05
	ld   [bc], a                                     ; $429f: $02
	ld   bc, $1103                                   ; $42a0: $01 $03 $11
	nop                                              ; $42a3: $00
	ld   [de], a                                     ; $42a4: $12
	nop                                              ; $42a5: $00
	inc  de                                          ; $42a6: $13
	nop                                              ; $42a7: $00
	inc  d                                           ; $42a8: $14
	nop                                              ; $42a9: $00
	dec  d                                           ; $42aa: $15
	nop                                              ; $42ab: $00
	ld   d, $00                                      ; $42ac: $16 $00
	ld   b, d                                        ; $42ae: $42
	nop                                              ; $42af: $00
	ld   b, e                                        ; $42b0: $43
	nop                                              ; $42b1: $00
	ld   b, h                                        ; $42b2: $44
	nop                                              ; $42b3: $00
	ld   b, l                                        ; $42b4: $45
	nop                                              ; $42b5: $00
	ld   b, [hl]                                     ; $42b6: $46
	nop                                              ; $42b7: $00
	ld   b, a                                        ; $42b8: $47
	nop                                              ; $42b9: $00


Table_21_42ba:
	dw FLAG2_SAKURA_PHOTO
	dw FLAG2_SUMIRE_PHOTO
	dw FLAG2_MARIA_PHOTO
	dw FLAG2_IRIS_PHOTO
	dw FLAG2_KOHRAN_PHOTO
	dw FLAG2_KANNA_PHOTO


Call_021_42c6:
	xor  a                                           ; $42c6: $af
	ld   [$ca97], a                                  ; $42c7: $ea $97 $ca
	ld   [$ca98], a                                  ; $42ca: $ea $98 $ca
	ld   [$ca99], a                                  ; $42cd: $ea $99 $ca
	ld   [$ca9a], a                                  ; $42d0: $ea $9a $ca
	ld   [$ca9b], a                                  ; $42d3: $ea $9b $ca
	ld   [$ca9c], a                                  ; $42d6: $ea $9c $ca
	ld   [$ca9e], a                                  ; $42d9: $ea $9e $ca
	ld   [$caa0], a                                  ; $42dc: $ea $a0 $ca
	ld   [$caa1], a                                  ; $42df: $ea $a1 $ca
	ld   [$caa2], a                                  ; $42e2: $ea $a2 $ca
	ld   [$caa3], a                                  ; $42e5: $ea $a3 $ca
	ld   [$cab0], a                                  ; $42e8: $ea $b0 $ca
	ld   bc, $0000                                   ; $42eb: $01 $00 $00

jr_021_42ee:
	push bc                                          ; $42ee: $c5
	call GetRandomNumInPreSpecifiedRange                                       ; $42ef: $cd $10 $0d
	pop  bc                                          ; $42f2: $c1
	inc  a                                           ; $42f3: $3c
	ld   hl, $caa0                                   ; $42f4: $21 $a0 $ca
	cp   [hl]                                        ; $42f7: $be
	jr   z, jr_021_42ee                              ; $42f8: $28 $f4

	ld   hl, $caa1                                   ; $42fa: $21 $a1 $ca
	cp   [hl]                                        ; $42fd: $be
	jr   z, jr_021_42ee                              ; $42fe: $28 $ee

	ld   hl, $caa2                                   ; $4300: $21 $a2 $ca
	cp   [hl]                                        ; $4303: $be
	jr   z, jr_021_42ee                              ; $4304: $28 $e8

	ld   hl, $caa3                                   ; $4306: $21 $a3 $ca
	cp   [hl]                                        ; $4309: $be
	jr   z, jr_021_42ee                              ; $430a: $28 $e2

	cp   $01                                         ; $430c: $fe $01
	jr   z, jr_021_42ee                              ; $430e: $28 $de

	ld   hl, $caa0                                   ; $4310: $21 $a0 $ca
	add  hl, bc                                      ; $4313: $09
	ld   [hl], a                                     ; $4314: $77
	inc  c                                           ; $4315: $0c
	ld   a, c                                        ; $4316: $79
	cp   $04                                         ; $4317: $fe $04
	jr   nz, jr_021_42ee                             ; $4319: $20 $d3

	xor  a                                           ; $431b: $af
	ld   [$caaf], a                                  ; $431c: $ea $af $ca
	ld   hl, $0011                                   ; $431f: $21 $11 $00
	push af                                          ; $4322: $f5
	ld   a, $d7                                      ; $4323: $3e $d7
	ld   [wFarCallAddr], a                                  ; $4325: $ea $98 $c2
	ld   a, $44                                      ; $4328: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $432a: $ea $99 $c2
	ld   a, $09                                      ; $432d: $3e $09
	ld   [wFarCallBank], a                                  ; $432f: $ea $9a $c2
	pop  af                                          ; $4332: $f1
	call FarCall                                       ; $4333: $cd $62 $09
	cp   $64                                         ; $4336: $fe $64
	jr   c, jr_021_4346                              ; $4338: $38 $0c

	sub  $64                                         ; $433a: $d6 $64
	ld   h, a                                        ; $433c: $67
	ld   l, $14                                      ; $433d: $2e $14
	call HLequHdivModL                                       ; $433f: $cd $fb $0b
	ld   a, h                                        ; $4342: $7c
	ld   b, a                                        ; $4343: $47
	jr   jr_021_4348                                 ; $4344: $18 $02

jr_021_4346:
	ld   b, $00                                      ; $4346: $06 $00

jr_021_4348:
	push bc                                          ; $4348: $c5
	ld   hl, FLAG2_SAKURA_PHOTO                                   ; $4349: $21 $94 $00

	M_FarCall CheckIfFlagSet2

	pop  bc                                          ; $4360: $c1
	ld   c, $00                                      ; $4361: $0e $00
	and  a                                           ; $4363: $a7
	jr   z, jr_021_4368                              ; $4364: $28 $02

	ld   c, $02                                      ; $4366: $0e $02

jr_021_4368:
	ld   a, $10                                      ; $4368: $3e $10
	add  b                                           ; $436a: $80
	add  c                                           ; $436b: $81
	ld   [$caaf], a                                  ; $436c: $ea $af $ca
	ld   bc, $0000                                   ; $436f: $01 $00 $00

Jump_021_4372:
jr_021_4372:
	ld   hl, $caa0                                   ; $4372: $21 $a0 $ca
	add  hl, bc                                      ; $4375: $09
	push bc                                          ; $4376: $c5
	ld   a, [hl]                                     ; $4377: $7e
	sla  a                                           ; $4378: $cb $27
	ld   b, $00                                      ; $437a: $06 $00
	ld   c, a                                        ; $437c: $4f
	ld   hl, $4442                                   ; $437d: $21 $42 $44
	add  hl, bc                                      ; $4380: $09
	ld   a, [hl+]                                    ; $4381: $2a
	ld   h, [hl]                                     ; $4382: $66
	ld   l, a                                        ; $4383: $6f
	ld   d, h                                        ; $4384: $54
	ld   e, l                                        ; $4385: $5d
	ld   hl, $ca97                                   ; $4386: $21 $97 $ca
	srl  c                                           ; $4389: $cb $39
	add  hl, bc                                      ; $438b: $09
	ld   a, [de]                                     ; $438c: $1a
	cp   $ff                                         ; $438d: $fe $ff
	jr   z, jr_021_43e2                              ; $438f: $28 $51

	cp   $f7                                         ; $4391: $fe $f7
	jr   nc, jr_021_43b8                             ; $4393: $30 $23

	ld   a, [$caaf]                                  ; $4395: $fa $af $ca
	cp   $08                                         ; $4398: $fe $08
	jr   c, jr_021_43a8                              ; $439a: $38 $0c

	ld   a, [$caaf]                                  ; $439c: $fa $af $ca
	sub  $08                                         ; $439f: $d6 $08
	ld   [$caaf], a                                  ; $43a1: $ea $af $ca
	ld   a, $08                                      ; $43a4: $3e $08
	jr   jr_021_43b2                                 ; $43a6: $18 $0a

jr_021_43a8:
	ld   d, a                                        ; $43a8: $57
	ld   a, [hl]                                     ; $43a9: $7e
	add  d                                           ; $43aa: $82
	ld   [hl], a                                     ; $43ab: $77
	xor  a                                           ; $43ac: $af
	ld   [$caaf], a                                  ; $43ad: $ea $af $ca
	jr   jr_021_43d7                                 ; $43b0: $18 $25

jr_021_43b2:
	ld   d, a                                        ; $43b2: $57
	ld   a, [hl]                                     ; $43b3: $7e
	add  d                                           ; $43b4: $82
	ld   [hl], a                                     ; $43b5: $77
	jr   jr_021_43d7                                 ; $43b6: $18 $1f

jr_021_43b8:
	ld   d, a                                        ; $43b8: $57
	ld   a, $ff                                      ; $43b9: $3e $ff
	sub  d                                           ; $43bb: $92
	ld   d, a                                        ; $43bc: $57
	ld   a, [$caaf]                                  ; $43bd: $fa $af $ca
	cp   d                                           ; $43c0: $ba
	jr   c, jr_021_43cf                              ; $43c1: $38 $0c

	ld   a, [$caaf]                                  ; $43c3: $fa $af $ca
	sub  d                                           ; $43c6: $92
	ld   [$caaf], a                                  ; $43c7: $ea $af $ca
	ld   a, [hl]                                     ; $43ca: $7e
	add  d                                           ; $43cb: $82
	ld   [hl], a                                     ; $43cc: $77
	jr   jr_021_43d7                                 ; $43cd: $18 $08

jr_021_43cf:
	ld   d, a                                        ; $43cf: $57
	ld   a, [hl]                                     ; $43d0: $7e
	add  d                                           ; $43d1: $82
	ld   [hl], a                                     ; $43d2: $77
	xor  a                                           ; $43d3: $af
	ld   [$caaf], a                                  ; $43d4: $ea $af $ca

jr_021_43d7:
	pop  bc                                          ; $43d7: $c1
	ld   a, c                                        ; $43d8: $79
	inc  a                                           ; $43d9: $3c
	cp   $04                                         ; $43da: $fe $04
	jp   z, Jump_021_43fa                            ; $43dc: $ca $fa $43

	ld   c, a                                        ; $43df: $4f
	jr   jr_021_4372                                 ; $43e0: $18 $90

jr_021_43e2:
	pop  bc                                          ; $43e2: $c1
	ld   a, [$cab0]                                  ; $43e3: $fa $b0 $ca
	inc  a                                           ; $43e6: $3c
	cp   $10                                         ; $43e7: $fe $10
	jp   z, Jump_021_4403                            ; $43e9: $ca $03 $44

	ld   [$cab0], a                                  ; $43ec: $ea $b0 $ca
	ld   a, c                                        ; $43ef: $79
	inc  a                                           ; $43f0: $3c
	cp   $04                                         ; $43f1: $fe $04
	jp   z, Jump_021_43fa                            ; $43f3: $ca $fa $43

	ld   c, a                                        ; $43f6: $4f
	jp   Jump_021_4372                               ; $43f7: $c3 $72 $43


Jump_021_43fa:
	ld   c, $00                                      ; $43fa: $0e $00
	ld   a, [$caaf]                                  ; $43fc: $fa $af $ca
	and  a                                           ; $43ff: $a7
	jp   nz, Jump_021_4372                           ; $4400: $c2 $72 $43

Jump_021_4403:
	ld   hl, $ca9e                                   ; $4403: $21 $9e $ca
	ld   a, $20                                      ; $4406: $3e $20
	ld   [hl], a                                     ; $4408: $77
	call Call_021_444e                               ; $4409: $cd $4e $44
	ld   bc, $0000                                   ; $440c: $01 $00 $00

jr_021_440f:
	ld   hl, FLAG2_ITEM_EQUIPPED_START                                   ; $440f: $21 $f6 $00
	add  hl, bc                                      ; $4412: $09
	push bc                                          ; $4413: $c5

	M_FarCall CheckIfFlagSet2

	pop  bc                                          ; $4428: $c1
	and  a                                           ; $4429: $a7
	jr   z, jr_021_443b                              ; $442a: $28 $0f

	ld   hl, $ca98                                   ; $442c: $21 $98 $ca
	add  hl, bc                                      ; $442f: $09
	ld   a, [hl]                                     ; $4430: $7e
	add  $03                                         ; $4431: $c6 $03
	ld   [hl], a                                     ; $4433: $77
	ld   hl, $ca9e                                   ; $4434: $21 $9e $ca
	ld   a, [hl]                                     ; $4437: $7e
	add  $08                                         ; $4438: $c6 $08
	ld   [hl], a                                     ; $443a: $77

jr_021_443b:
	inc  c                                           ; $443b: $0c
	ld   a, c                                        ; $443c: $79
	cp   $05                                         ; $443d: $fe $05
	jr   nz, jr_021_440f                             ; $443f: $20 $ce

	ret                                              ; $4441: $c9


	ret  nc                                          ; $4442: $d0

	xor  a                                           ; $4443: $af
	pop  de                                          ; $4444: $d1
	xor  a                                           ; $4445: $af
	jp   nc, $d3af                                   ; $4446: $d2 $af $d3

	xor  a                                           ; $4449: $af
	call nc, $d5af                                   ; $444a: $d4 $af $d5
	xor  a                                           ; $444d: $af

Call_021_444e:
	ld   hl, $0042                                   ; $444e: $21 $42 $00
	push af                                          ; $4451: $f5
	ld   a, $d7                                      ; $4452: $3e $d7
	ld   [wFarCallAddr], a                                  ; $4454: $ea $98 $c2
	ld   a, $44                                      ; $4457: $3e $44
	ld   [wFarCallAddr+1], a                                  ; $4459: $ea $99 $c2
	ld   a, $09                                      ; $445c: $3e $09
	ld   [wFarCallBank], a                                  ; $445e: $ea $9a $c2
	pop  af                                          ; $4461: $f1
	call FarCall                                       ; $4462: $cd $62 $09
	cp   $03                                         ; $4465: $fe $03
	jr   c, jr_021_447b                              ; $4467: $38 $12

	cp   $06                                         ; $4469: $fe $06
	jr   c, jr_021_4474                              ; $446b: $38 $07

	ld   a, $02                                      ; $446d: $3e $02
	ld   [$ca86], a                                  ; $446f: $ea $86 $ca
	jr   jr_021_4480                                 ; $4472: $18 $0c

jr_021_4474:
	ld   a, $01                                      ; $4474: $3e $01
	ld   [$ca86], a                                  ; $4476: $ea $86 $ca
	jr   jr_021_4480                                 ; $4479: $18 $05

jr_021_447b:
	ld   a, $00                                      ; $447b: $3e $00
	ld   [$ca86], a                                  ; $447d: $ea $86 $ca

jr_021_4480:
	ret                                              ; $4480: $c9


Call_021_4481:
	ret                                              ; $4481: $c9


	ret                                              ; $4482: $c9


Call_021_4483:
	ret                                              ; $4483: $c9


Call_021_4484:
	xor  a                                           ; $4484: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $4485: $ea $62 $c3
	ld   a, $40                                      ; $4488: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $448a: $ea $63 $c3
	ld   a, $03                                      ; $448d: $3e $03
	ld   c, $01                                      ; $448f: $0e $01
	ld   de, $7000                                   ; $4491: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $4494: $cd $48 $07
	ld   a, $08                                      ; $4497: $3e $08

jr_021_4499:
	push af                                          ; $4499: $f5
	ld   b, $00                                      ; $449a: $06 $00
	ld   c, $40                                      ; $449c: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $449e: $cd $32 $08
	ld   bc, $0004                                   ; $44a1: $01 $04 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $44a4: $cd $79 $0a
	pop  af                                          ; $44a7: $f1
	dec  a                                           ; $44a8: $3d
	jr   nz, jr_021_4499                             ; $44a9: $20 $ee

	ret                                              ; $44ab: $c9


Call_021_44ac:
	xor  a                                           ; $44ac: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $44ad: $ea $62 $c3
	ld   a, $40                                      ; $44b0: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $44b2: $ea $63 $c3
	ld   a, $03                                      ; $44b5: $3e $03
	ld   b, $01                                      ; $44b7: $06 $01
	ld   hl, $7000                                   ; $44b9: $21 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $44bc: $cd $48 $07
	ld   a, $08                                      ; $44bf: $3e $08

jr_021_44c1:
	push af                                          ; $44c1: $f5
	ld   b, $00                                      ; $44c2: $06 $00
	ld   c, $40                                      ; $44c4: $0e $40
	call FadePalettesAndSetRangeToUpdate                                       ; $44c6: $cd $32 $08
	ld   bc, $0004                                   ; $44c9: $01 $04 $00
	call WaitUntilBCVBlankIntsHandledIfLCDOn                                       ; $44cc: $cd $79 $0a
	pop  af                                          ; $44cf: $f1
	dec  a                                           ; $44d0: $3d
	jr   nz, jr_021_44c1                             ; $44d1: $20 $ee

	ret                                              ; $44d3: $c9


Call_021_44d4:
	ld   a, [$afd0]                                  ; $44d4: $fa $d0 $af
	ld   [$caa7], a                                  ; $44d7: $ea $a7 $ca
	ld   a, [sSramVals2+SRAM2_INTELLECT]                                  ; $44da: $fa $d1 $af
	ld   [$caa8], a                                  ; $44dd: $ea $a8 $ca
	ld   a, [sSramVals2+SRAM2_SPIRIT_POWER]                                  ; $44e0: $fa $d2 $af
	ld   [$caa9], a                                  ; $44e3: $ea $a9 $ca
	ld   a, [sSramVals2+SRAM2_GUTS]                                  ; $44e6: $fa $d3 $af
	ld   [$caaa], a                                  ; $44e9: $ea $aa $ca
	ld   a, [sSramVals2+SRAM2_SPEED]                                  ; $44ec: $fa $d4 $af
	ld   [$caab], a                                  ; $44ef: $ea $ab $ca
	ld   a, [sSramVals2+SRAM2_ACCURACY]                                  ; $44f2: $fa $d5 $af
	ld   [$caac], a                                  ; $44f5: $ea $ac $ca

Jump_021_44f8:
	ld   hl, $caa7                                   ; $44f8: $21 $a7 $ca
	ld   bc, $ca97                                   ; $44fb: $01 $97 $ca
	call Call_021_4570                               ; $44fe: $cd $70 $45
	ld   hl, $caa8                                   ; $4501: $21 $a8 $ca
	ld   bc, $ca98                                   ; $4504: $01 $98 $ca
	call Call_021_4570                               ; $4507: $cd $70 $45
	ld   hl, $caa9                                   ; $450a: $21 $a9 $ca
	ld   bc, $ca99                                   ; $450d: $01 $99 $ca
	call Call_021_4570                               ; $4510: $cd $70 $45
	ld   hl, $caaa                                   ; $4513: $21 $aa $ca
	ld   bc, $ca9a                                   ; $4516: $01 $9a $ca
	call Call_021_4570                               ; $4519: $cd $70 $45
	ld   hl, $caab                                   ; $451c: $21 $ab $ca
	ld   bc, $ca9b                                   ; $451f: $01 $9b $ca
	call Call_021_4570                               ; $4522: $cd $70 $45
	ld   hl, $caac                                   ; $4525: $21 $ac $ca
	ld   bc, $ca9c                                   ; $4528: $01 $9c $ca
	call Call_021_4570                               ; $452b: $cd $70 $45
	ld   hl, $caa7                                   ; $452e: $21 $a7 $ca
	ld   bc, $ca9e                                   ; $4531: $01 $9e $ca
	call Call_021_4582                               ; $4534: $cd $82 $45
	ld   a, [$ca9f]                                  ; $4537: $fa $9f $ca
	dec  a                                           ; $453a: $3d
	ld   [$ca9f], a                                  ; $453b: $ea $9f $ca
	jp   nz, Jump_021_44f8                           ; $453e: $c2 $f8 $44

	ld   a, [$caa7]                                  ; $4541: $fa $a7 $ca
	ld   [$ca97], a                                  ; $4544: $ea $97 $ca
	ld   a, [$caa8]                                  ; $4547: $fa $a8 $ca
	ld   [$ca98], a                                  ; $454a: $ea $98 $ca
	ld   a, [$caa9]                                  ; $454d: $fa $a9 $ca
	ld   [$ca99], a                                  ; $4550: $ea $99 $ca
	ld   a, [$caaa]                                  ; $4553: $fa $aa $ca
	ld   [$ca9a], a                                  ; $4556: $ea $9a $ca
	ld   a, [$caab]                                  ; $4559: $fa $ab $ca
	ld   [$ca9b], a                                  ; $455c: $ea $9b $ca
	ld   a, [$caac]                                  ; $455f: $fa $ac $ca
	ld   [$ca9c], a                                  ; $4562: $ea $9c $ca
	xor  a                                           ; $4565: $af
	ld   [$caa4], a                                  ; $4566: $ea $a4 $ca
	ld   [$caa5], a                                  ; $4569: $ea $a5 $ca
	ld   [$caa6], a                                  ; $456c: $ea $a6 $ca
	ret                                              ; $456f: $c9


Call_021_4570:
	push hl                                          ; $4570: $e5
	ld   h, b                                        ; $4571: $60
	ld   l, c                                        ; $4572: $69
	ld   a, [hl]                                     ; $4573: $7e
	pop  hl                                          ; $4574: $e1
	cp   $00                                         ; $4575: $fe $00
	jr   z, jr_021_4581                              ; $4577: $28 $08

	dec  a                                           ; $4579: $3d
	ld   [bc], a                                     ; $457a: $02
	ld   a, [hl]                                     ; $457b: $7e
	cp   $ff                                         ; $457c: $fe $ff
	jr   z, jr_021_4581                              ; $457e: $28 $01

	inc  [hl]                                        ; $4580: $34

jr_021_4581:
	ret                                              ; $4581: $c9


Call_021_4582:
	push hl                                          ; $4582: $e5
	ld   h, b                                        ; $4583: $60
	ld   l, c                                        ; $4584: $69
	ld   a, [hl]                                     ; $4585: $7e
	pop  hl                                          ; $4586: $e1
	cp   $00                                         ; $4587: $fe $00
	jr   z, jr_021_4581                              ; $4589: $28 $f6

	dec  a                                           ; $458b: $3d
	ld   [bc], a                                     ; $458c: $02
	ld   a, [hl]                                     ; $458d: $7e
	cp   $00                                         ; $458e: $fe $00
	jr   z, jr_021_4593                              ; $4590: $28 $01

	dec  [hl]                                        ; $4592: $35

jr_021_4593:
	ret                                              ; $4593: $c9


GameState29_KohranTraining::
	ld   a, [wGameSubstate]                                  ; $4594: $fa $a1 $c2
	rst  JumpTable                                         ; $4597: $df
	and  b                                           ; $4598: $a0
	ld   b, l                                        ; $4599: $45
	cp   e                                           ; $459a: $bb
	ld   b, a                                        ; $459b: $47
	dec  c                                           ; $459c: $0d
	ld   c, c                                        ; $459d: $49
	cp   b                                           ; $459e: $b8
	ld   c, c                                        ; $459f: $49
	call TurnOnLCD                                       ; $45a0: $cd $09 $09
	ld   a, $ff                                      ; $45a3: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $45a5: $ea $0e $c2
	ld   a, $0c                                      ; $45a8: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $45aa: $ea $13 $c2
	ld   a, $04                                      ; $45ad: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $45af: $ea $14 $c2
	call ClearBaseAnimSpriteSpecDetails                                       ; $45b2: $cd $c9 $2e
	call ClearOam                                       ; $45b5: $cd $d7 $0d
	ld   a, [wLCDC]                                  ; $45b8: $fa $03 $c2
	and  $e0                                         ; $45bb: $e6 $e0
	or   $67                                         ; $45bd: $f6 $67
	ld   [wLCDC], a                                  ; $45bf: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $45c2: $fa $93 $c2
	push af                                          ; $45c5: $f5
	ld   a, $07                                      ; $45c6: $3e $07
	ld   [wWramBank], a                                  ; $45c8: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $45cb: $e0 $70
	ld   a, $2d                                      ; $45cd: $3e $2d
	ld   hl, $d000                                   ; $45cf: $21 $00 $d0
	ld   de, $5420                                   ; $45d2: $11 $20 $54
	call RLEXorCopy                                       ; $45d5: $cd $d2 $09
	ld   c, $80                                      ; $45d8: $0e $80
	ld   de, $8000                                   ; $45da: $11 $00 $80
	ld   a, $07                                      ; $45dd: $3e $07
	ld   hl, $d000                                   ; $45df: $21 $00 $d0
	ld   b, $40                                      ; $45e2: $06 $40
	call EnqueueHDMATransfer                                       ; $45e4: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45e7: $cf
	ld   c, $80                                      ; $45e8: $0e $80
	ld   de, $8400                                   ; $45ea: $11 $00 $84
	ld   a, $07                                      ; $45ed: $3e $07
	ld   hl, $d400                                   ; $45ef: $21 $00 $d4
	ld   b, $40                                      ; $45f2: $06 $40
	call EnqueueHDMATransfer                                       ; $45f4: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45f7: $cf
	ld   c, $80                                      ; $45f8: $0e $80
	ld   de, $8800                                   ; $45fa: $11 $00 $88
	ld   a, $07                                      ; $45fd: $3e $07
	ld   hl, $d800                                   ; $45ff: $21 $00 $d8
	ld   b, $40                                      ; $4602: $06 $40
	call EnqueueHDMATransfer                                       ; $4604: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4607: $cf
	ld   c, $80                                      ; $4608: $0e $80
	ld   de, $8c00                                   ; $460a: $11 $00 $8c
	ld   a, $07                                      ; $460d: $3e $07
	ld   hl, $dc00                                   ; $460f: $21 $00 $dc
	ld   b, $40                                      ; $4612: $06 $40
	call EnqueueHDMATransfer                                       ; $4614: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4617: $cf
	ld   a, $2d                                      ; $4618: $3e $2d
	ld   hl, $d000                                   ; $461a: $21 $00 $d0
	ld   de, $6444                                   ; $461d: $11 $44 $64
	call RLEXorCopy                                       ; $4620: $cd $d2 $09
	ld   c, $80                                      ; $4623: $0e $80
	ld   de, $9000                                   ; $4625: $11 $00 $90
	ld   a, $07                                      ; $4628: $3e $07
	ld   hl, $d000                                   ; $462a: $21 $00 $d0
	ld   b, $40                                      ; $462d: $06 $40
	call EnqueueHDMATransfer                                       ; $462f: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4632: $cf
	ld   c, $80                                      ; $4633: $0e $80
	ld   de, $9400                                   ; $4635: $11 $00 $94
	ld   a, $07                                      ; $4638: $3e $07
	ld   hl, $d400                                   ; $463a: $21 $00 $d4
	ld   b, $40                                      ; $463d: $06 $40
	call EnqueueHDMATransfer                                       ; $463f: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4642: $cf
	ld   c, $81                                      ; $4643: $0e $81
	ld   de, $8000                                   ; $4645: $11 $00 $80
	ld   a, $07                                      ; $4648: $3e $07
	ld   hl, $d800                                   ; $464a: $21 $00 $d8
	ld   b, $40                                      ; $464d: $06 $40
	call EnqueueHDMATransfer                                       ; $464f: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4652: $cf
	ld   c, $81                                      ; $4653: $0e $81
	ld   de, $8400                                   ; $4655: $11 $00 $84
	ld   a, $07                                      ; $4658: $3e $07
	ld   hl, $dc00                                   ; $465a: $21 $00 $dc
	ld   b, $40                                      ; $465d: $06 $40
	call EnqueueHDMATransfer                                       ; $465f: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4662: $cf
	ld   a, $2e                                      ; $4663: $3e $2e
	ld   hl, $d000                                   ; $4665: $21 $00 $d0
	ld   de, $71d8                                   ; $4668: $11 $d8 $71
if def(VWF)
	call NapOrTrainBank1_8800hHook
else
	call RLEXorCopy                                       ; $466b: $cd $d2 $09
endc
	ld   c, $81                                      ; $466e: $0e $81
	ld   de, $8800                                   ; $4670: $11 $00 $88
	ld   a, $07                                      ; $4673: $3e $07
	ld   hl, $d000                                   ; $4675: $21 $00 $d0
	ld   b, $40                                      ; $4678: $06 $40
	call EnqueueHDMATransfer                                       ; $467a: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $467d: $cf
	ld   c, $81                                      ; $467e: $0e $81
	ld   de, $8c00                                   ; $4680: $11 $00 $8c
	ld   a, $07                                      ; $4683: $3e $07
	ld   hl, $d400                                   ; $4685: $21 $00 $d4
	ld   b, $40                                      ; $4688: $06 $40
	call EnqueueHDMATransfer                                       ; $468a: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $468d: $cf
	ld   c, $81                                      ; $468e: $0e $81
	ld   de, $9000                                   ; $4690: $11 $00 $90
	ld   a, $07                                      ; $4693: $3e $07
	ld   hl, $d800                                   ; $4695: $21 $00 $d8
	ld   b, $40                                      ; $4698: $06 $40
	call EnqueueHDMATransfer                                       ; $469a: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $469d: $cf
	ld   c, $81                                      ; $469e: $0e $81
	ld   de, $9400                                   ; $46a0: $11 $00 $94
	ld   a, $07                                      ; $46a3: $3e $07
	ld   hl, $dc00                                   ; $46a5: $21 $00 $dc
	ld   b, $40                                      ; $46a8: $06 $40
	call EnqueueHDMATransfer                                       ; $46aa: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46ad: $cf
	ld   a, $2f                                      ; $46ae: $3e $2f
	ld   hl, $d000                                   ; $46b0: $21 $00 $d0
	ld   de, $4f51                                   ; $46b3: $11 $51 $4f
if def(VWF)
	call NapOrTrainTileMapHook
else
	call RLEXorCopy                                       ; $46b6: $cd $d2 $09
endc
	ld   c, $80                                      ; $46b9: $0e $80
	ld   de, $9800                                   ; $46bb: $11 $00 $98
	ld   a, $07                                      ; $46be: $3e $07
	ld   hl, $d000                                   ; $46c0: $21 $00 $d0
	ld   b, $40                                      ; $46c3: $06 $40
	call EnqueueHDMATransfer                                       ; $46c5: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46c8: $cf
	ld   a, $2f                                      ; $46c9: $3e $2f
	ld   hl, $d000                                   ; $46cb: $21 $00 $d0
	ld   de, $5bd4                                   ; $46ce: $11 $d4 $5b
	call RLEXorCopy                                       ; $46d1: $cd $d2 $09
	ld   c, $81                                      ; $46d4: $0e $81
	ld   de, $9800                                   ; $46d6: $11 $00 $98
	ld   a, $07                                      ; $46d9: $3e $07
	ld   hl, $d000                                   ; $46db: $21 $00 $d0
	ld   b, $40                                      ; $46de: $06 $40
	call EnqueueHDMATransfer                                       ; $46e0: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46e3: $cf
	pop  af                                          ; $46e4: $f1
	ld   [wWramBank], a                                  ; $46e5: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $46e8: $e0 $70
	call ClearOam                                       ; $46ea: $cd $d7 $0d
	ld   a, $0a                                      ; $46ed: $3e $0a
	ld   [wRandomNumRange], a                                  ; $46ef: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $46f2: $cd $70 $0c
	xor  a                                           ; $46f5: $af
	ld   [$ca6e], a                                  ; $46f6: $ea $6e $ca
	ld   [$ca76], a                                  ; $46f9: $ea $76 $ca
	ld   [$ca94], a                                  ; $46fc: $ea $94 $ca
	ld   [$ca87], a                                  ; $46ff: $ea $87 $ca
	ld   [$ca8f], a                                  ; $4702: $ea $8f $ca
	ld   [$ca93], a                                  ; $4705: $ea $93 $ca
	ld   [$ca96], a                                  ; $4708: $ea $96 $ca
	ld   a, $01                                      ; $470b: $3e $01
	call Call_021_416b                               ; $470d: $cd $6b $41
	call Call_021_4766                               ; $4710: $cd $66 $47
	call TurnOffLCD                                       ; $4713: $cd $e3 $08
	ld   a, $00                                      ; $4716: $3e $00
	ld   b, $04                                      ; $4718: $06 $04
	ld   c, $00                                      ; $471a: $0e $00
	ld   de, $0608                                   ; $471c: $11 $08 $06
	ld   hl, $9820                                   ; $471f: $21 $20 $98
	push af                                          ; $4722: $f5
	ld   a, $79                                      ; $4723: $3e $79
	ld   [wFarCallAddr], a                                  ; $4725: $ea $98 $c2
	ld   a, $5b                                      ; $4728: $3e $5b
	ld   [wFarCallAddr+1], a                                  ; $472a: $ea $99 $c2
	ld   a, $0c                                      ; $472d: $3e $0c
	ld   [wFarCallBank], a                                  ; $472f: $ea $9a $c2
	pop  af                                          ; $4732: $f1
	call FarCall                                       ; $4733: $cd $62 $09
	call TurnOnLCD                                       ; $4736: $cd $09 $09
	ld   hl, $afd0                                   ; $4739: $21 $d0 $af
	
	M_FarCall LoadStatBars

	call Call_021_480a                               ; $4750: $cd $0a $48
	call Call_021_488b                               ; $4753: $cd $8b $48
	call AnimateAllAnimatedSpriteSpecs                                       ; $4756: $cd $d3 $2e
	ld   c, $2e                                      ; $4759: $0e $2e
	ld   de, $7f6a                                   ; $475b: $11 $6a $7f
	call Call_021_44ac                               ; $475e: $cd $ac $44
	ld   hl, wGameSubstate                                   ; $4761: $21 $a1 $c2
	inc  [hl]                                        ; $4764: $34
	ret                                              ; $4765: $c9


Call_021_4766:
	ld   a, [$ca86]                                  ; $4766: $fa $86 $ca
	cp   $02                                         ; $4769: $fe $02
	jr   z, jr_021_47a3                              ; $476b: $28 $36

	cp   $01                                         ; $476d: $fe $01
	jr   z, jr_021_478a                              ; $476f: $28 $19

	ld   a, $2e                                      ; $4771: $3e $2e
	ld   [$ca8e], a                                  ; $4773: $ea $8e $ca
	ld   hl, $486e                                   ; $4776: $21 $6e $48
	ld   de, wKouboChosen0idxed                                   ; $4779: $11 $6f $ca
	call Call_021_411c                               ; $477c: $cd $1c $41
	ld   hl, $48d8                                   ; $477f: $21 $d8 $48
	ld   de, $ca77                                   ; $4782: $11 $77 $ca
	call Call_021_411c                               ; $4785: $cd $1c $41
	jr   jr_021_47ba                                 ; $4788: $18 $30

jr_021_478a:
	ld   a, $2e                                      ; $478a: $3e $2e
	ld   [$ca8e], a                                  ; $478c: $ea $8e $ca
	ld   hl, $4873                                   ; $478f: $21 $73 $48
	ld   de, wKouboChosen0idxed                                   ; $4792: $11 $6f $ca
	call Call_021_411c                               ; $4795: $cd $1c $41
	ld   hl, $48ef                                   ; $4798: $21 $ef $48
	ld   de, $ca77                                   ; $479b: $11 $77 $ca
	call Call_021_411c                               ; $479e: $cd $1c $41
	jr   jr_021_47ba                                 ; $47a1: $18 $17

jr_021_47a3:
	ld   a, $2e                                      ; $47a3: $3e $2e
	ld   [$ca8e], a                                  ; $47a5: $ea $8e $ca
	ld   hl, $487e                                   ; $47a8: $21 $7e $48
	ld   de, wKouboChosen0idxed                                   ; $47ab: $11 $6f $ca
	call Call_021_411c                               ; $47ae: $cd $1c $41
	ld   hl, $48fe                                   ; $47b1: $21 $fe $48
	ld   de, $ca77                                   ; $47b4: $11 $77 $ca
	call Call_021_411c                               ; $47b7: $cd $1c $41

jr_021_47ba:
	ret                                              ; $47ba: $c9


	ld   hl, $afd0                                   ; $47bb: $21 $d0 $af

	M_FarCall LoadStatBars

	ld   a, [$ca87]                                  ; $47d2: $fa $87 $ca
	cp   $01                                         ; $47d5: $fe $01
	jr   z, jr_021_47fd                              ; $47d7: $28 $24

	call ClearOam                                       ; $47d9: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $47dc: $cd $d3 $2e
	ld   a, [$ca6e]                                  ; $47df: $fa $6e $ca
	and  a                                           ; $47e2: $a7
	jr   z, jr_021_47f6                              ; $47e3: $28 $11

	ld   a, [$ca76]                                  ; $47e5: $fa $76 $ca
	and  a                                           ; $47e8: $a7
	jr   z, jr_021_47f6                              ; $47e9: $28 $0b

	xor  a                                           ; $47eb: $af
	ld   [$ca94], a                                  ; $47ec: $ea $94 $ca
	ld   a, [$ca87]                                  ; $47ef: $fa $87 $ca
	inc  a                                           ; $47f2: $3c
	ld   [$ca87], a                                  ; $47f3: $ea $87 $ca

jr_021_47f6:
	call Call_021_480a                               ; $47f6: $cd $0a $48
	call Call_021_488b                               ; $47f9: $cd $8b $48
	ret                                              ; $47fc: $c9


jr_021_47fd:
	ld   a, $50                                      ; $47fd: $3e $50
	ld   [$ca9f], a                                  ; $47ff: $ea $9f $ca
	call Call_021_44d4                               ; $4802: $cd $d4 $44
	ld   hl, wGameSubstate                                   ; $4805: $21 $a1 $c2
	inc  [hl]                                        ; $4808: $34
	ret                                              ; $4809: $c9


Call_021_480a:
	ld   a, $60                                      ; $480a: $3e $60
	ld   [$ca72], a                                  ; $480c: $ea $72 $ca
	ld   a, $59                                      ; $480f: $3e $59
	ld   [$ca73], a                                  ; $4811: $ea $73 $ca
	ld   a, [$ca86]                                  ; $4814: $fa $86 $ca
	sla  a                                           ; $4817: $cb $27
	ld   hl, $4868                                   ; $4819: $21 $68 $48
	ld   d, $00                                      ; $481c: $16 $00
	ld   e, a                                        ; $481e: $5f
	add  hl, de                                      ; $481f: $19
	ld   a, [hl+]                                    ; $4820: $2a
	ld   h, [hl]                                     ; $4821: $66
	ld   l, a                                        ; $4822: $6f
	ld   a, [$ca71]                                  ; $4823: $fa $71 $ca
	cp   $01                                         ; $4826: $fe $01
	jr   nz, jr_021_483a                             ; $4828: $20 $10

	ld   a, [$ca94]                                  ; $482a: $fa $94 $ca
	and  a                                           ; $482d: $a7
	jr   nz, jr_021_483a                             ; $482e: $20 $0a

	ld   a, $ff                                      ; $4830: $3e $ff
	ld   [$ca94], a                                  ; $4832: $ea $94 $ca
	ld   a, $01                                      ; $4835: $3e $01
	call Call_021_4481                               ; $4837: $cd $81 $44

jr_021_483a:
	ld   de, wKouboChosen0idxed                                   ; $483a: $11 $6f $ca
	push hl                                          ; $483d: $e5
	ld   a, $2e                                      ; $483e: $3e $2e
	ld   [$ca8e], a                                  ; $4840: $ea $8e $ca
	call Call_021_412a                               ; $4843: $cd $2a $41
	pop  hl                                          ; $4846: $e1
	jr   nc, jr_021_4854                             ; $4847: $30 $0b

	ld   a, [wKouboChosen0idxed]                                  ; $4849: $fa $6f $ca
	and  a                                           ; $484c: $a7
	jr   nz, jr_021_4854                             ; $484d: $20 $05

	ld   a, $01                                      ; $484f: $3e $01
	ld   [$ca6e], a                                  ; $4851: $ea $6e $ca

jr_021_4854:
	ld   a, $04                                      ; $4854: $3e $04
	ld   [wSpriteGroup], a                                  ; $4856: $ea $1a $c2
	ld   a, [$ca72]                                  ; $4859: $fa $72 $ca
	ld   b, a                                        ; $485c: $47
	ld   a, [$ca73]                                  ; $485d: $fa $73 $ca
	ld   c, a                                        ; $4860: $4f
	ld   a, [$ca70]                                  ; $4861: $fa $70 $ca
	call LoadSpriteFromMainTable                                       ; $4864: $cd $16 $0e
	ret                                              ; $4867: $c9


	ld   l, [hl]                                     ; $4868: $6e
	ld   c, b                                        ; $4869: $48
	ld   [hl], e                                     ; $486a: $73
	ld   c, b                                        ; $486b: $48
	ld   a, [hl]                                     ; $486c: $7e
	ld   c, b                                        ; $486d: $48
	add  b                                           ; $486e: $80
	nop                                              ; $486f: $00
	ld   e, h                                        ; $4870: $5c
	ld   [bc], a                                     ; $4871: $02
	nop                                              ; $4872: $00
	adc  a                                           ; $4873: $8f
	nop                                              ; $4874: $00
	dec  bc                                          ; $4875: $0b
	ld   bc, $000b                                   ; $4876: $01 $0b $00
	dec  bc                                          ; $4879: $0b
	ld   bc, $0030                                   ; $487a: $01 $30 $00
	nop                                              ; $487d: $00
	ld   l, e                                        ; $487e: $6b
	nop                                              ; $487f: $00
	dec  bc                                          ; $4880: $0b
	ld   bc, $000b                                   ; $4881: $01 $0b $00
	dec  bc                                          ; $4884: $0b
	ld   bc, $0020                                   ; $4885: $01 $20 $00
	jr   nc, jr_021_488d                             ; $4888: $30 $03

	nop                                              ; $488a: $00

Call_021_488b:
	ld   a, $30                                      ; $488b: $3e $30

jr_021_488d:
	ld   [$ca7a], a                                  ; $488d: $ea $7a $ca
	ld   a, $59                                      ; $4890: $3e $59
	ld   [$ca7b], a                                  ; $4892: $ea $7b $ca
	ld   a, [$ca86]                                  ; $4895: $fa $86 $ca
	sla  a                                           ; $4898: $cb $27
	ld   hl, $48d2                                   ; $489a: $21 $d2 $48
	ld   d, $00                                      ; $489d: $16 $00
	ld   e, a                                        ; $489f: $5f
	add  hl, de                                      ; $48a0: $19
	ld   a, [hl+]                                    ; $48a1: $2a
	ld   h, [hl]                                     ; $48a2: $66
	ld   l, a                                        ; $48a3: $6f
	ld   de, $ca77                                   ; $48a4: $11 $77 $ca
	push hl                                          ; $48a7: $e5
	ld   a, $2e                                      ; $48a8: $3e $2e
	ld   [$ca8e], a                                  ; $48aa: $ea $8e $ca
	call Call_021_412a                               ; $48ad: $cd $2a $41
	pop  hl                                          ; $48b0: $e1
	jr   nc, jr_021_48be                             ; $48b1: $30 $0b

	ld   a, [$ca77]                                  ; $48b3: $fa $77 $ca
	and  a                                           ; $48b6: $a7
	jr   nz, jr_021_48be                             ; $48b7: $20 $05

	ld   a, $01                                      ; $48b9: $3e $01
	ld   [$ca76], a                                  ; $48bb: $ea $76 $ca

jr_021_48be:
	ld   a, $04                                      ; $48be: $3e $04
	ld   [wSpriteGroup], a                                  ; $48c0: $ea $1a $c2
	ld   a, [$ca7a]                                  ; $48c3: $fa $7a $ca
	ld   b, a                                        ; $48c6: $47
	ld   a, [$ca7b]                                  ; $48c7: $fa $7b $ca
	ld   c, a                                        ; $48ca: $4f
	ld   a, [$ca78]                                  ; $48cb: $fa $78 $ca
	call LoadSpriteFromMainTable                                       ; $48ce: $cd $16 $0e
	ret                                              ; $48d1: $c9


	ret  c                                           ; $48d2: $d8

	ld   c, b                                        ; $48d3: $48
	rst  $28                                         ; $48d4: $ef
	ld   c, b                                        ; $48d5: $48
	cp   $48                                         ; $48d6: $fe $48
	jr   nz, jr_021_48de                             ; $48d8: $20 $04

	jr   nz, jr_021_48e1                             ; $48da: $20 $05

	jr   nz, @+$06                                   ; $48dc: $20 $04

jr_021_48de:
	jr   nz, jr_021_48e5                             ; $48de: $20 $05

	rlca                                             ; $48e0: $07

jr_021_48e1:
	ld   b, $07                                      ; $48e1: $06 $07
	rlca                                             ; $48e3: $07
	add  hl, bc                                      ; $48e4: $09

jr_021_48e5:
	ld   [TurnOnLCD], sp                                 ; $48e5: $08 $09 $09
	ld   l, $0a                                      ; $48e8: $2e $0a
	rlca                                             ; $48ea: $07
	dec  bc                                          ; $48eb: $0b
	rlca                                             ; $48ec: $07
	inc  c                                           ; $48ed: $0c
	nop                                              ; $48ee: $00
	jr   nz, jr_021_48f5                             ; $48ef: $20 $04

	jr   nz, @+$07                                   ; $48f1: $20 $05

	jr   nz, jr_021_48f9                             ; $48f3: $20 $04

jr_021_48f5:
	jr   nz, @+$07                                   ; $48f5: $20 $05

	jr   nz, jr_021_48fd                             ; $48f7: $20 $04

jr_021_48f9:
	jr   nz, jr_021_4900                             ; $48f9: $20 $05

	jr   nz, jr_021_4901                             ; $48fb: $20 $04

jr_021_48fd:
	nop                                              ; $48fd: $00
	jr   nz, jr_021_4904                             ; $48fe: $20 $04

jr_021_4900:
	inc  e                                           ; $4900: $1c

jr_021_4901:
	dec  b                                           ; $4901: $05
	jr   z, jr_021_4908                              ; $4902: $28 $04

jr_021_4904:
	db   $10                                         ; $4904: $10
	dec  b                                           ; $4905: $05
	db   $10                                         ; $4906: $10
	inc  b                                           ; $4907: $04

jr_021_4908:
	jr   z, @+$07                                    ; $4908: $28 $05

	jr   nc, jr_021_4919                             ; $490a: $30 $0d

	nop                                              ; $490c: $00
	call ClearOam                                       ; $490d: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4910: $cd $d3 $2e
	call Call_021_480a                               ; $4913: $cd $0a $48
	call Call_021_488b                               ; $4916: $cd $8b $48

jr_021_4919:
	ld   a, [wInGameButtonsHeld]                                  ; $4919: $fa $0f $c2
	and  $82                                         ; $491c: $e6 $82
	jp   z, Jump_021_492c                            ; $491e: $ca $2c $49

	ld   a, [$caa5]                                  ; $4921: $fa $a5 $ca
	inc  a                                           ; $4924: $3c
	cp   $0b                                         ; $4925: $fe $0b
	jr   nc, jr_021_492c                             ; $4927: $30 $03

	ld   [$caa5], a                                  ; $4929: $ea $a5 $ca

Jump_021_492c:
jr_021_492c:
	ld   a, [$caa6]                                  ; $492c: $fa $a6 $ca
	cp   $03                                         ; $492f: $fe $03
	jr   z, jr_021_498f                              ; $4931: $28 $5c

	ld   a, [$caa4]                                  ; $4933: $fa $a4 $ca
	and  a                                           ; $4936: $a7
	jr   nz, jr_021_4963                             ; $4937: $20 $2a

	ld   hl, $afd0                                   ; $4939: $21 $d0 $af

	M_FarCall LoadStatBars

	ld   hl, $caa5                                   ; $4950: $21 $a5 $ca
	inc  [hl]                                        ; $4953: $34
	ld   a, [hl]                                     ; $4954: $7e
	cp   $0b                                         ; $4955: $fe $0b
	jr   c, jr_021_4962                              ; $4957: $38 $09

	ld   a, $01                                      ; $4959: $3e $01
	ld   [$caa4], a                                  ; $495b: $ea $a4 $ca
	xor  a                                           ; $495e: $af
	ld   [$caa5], a                                  ; $495f: $ea $a5 $ca

jr_021_4962:
	ret                                              ; $4962: $c9


jr_021_4963:
	ld   hl, $ca97                                   ; $4963: $21 $97 $ca

	M_FarCall LoadStatBars

	ld   hl, $caa5                                   ; $497a: $21 $a5 $ca
	inc  [hl]                                        ; $497d: $34
	ld   a, [hl]                                     ; $497e: $7e
	cp   $0b                                         ; $497f: $fe $0b
	jr   c, jr_021_498e                              ; $4981: $38 $0b

	xor  a                                           ; $4983: $af
	ld   [$caa4], a                                  ; $4984: $ea $a4 $ca
	ld   [$caa5], a                                  ; $4987: $ea $a5 $ca
	ld   hl, $caa6                                   ; $498a: $21 $a6 $ca
	inc  [hl]                                        ; $498d: $34

jr_021_498e:
	ret                                              ; $498e: $c9


jr_021_498f:
	ld   a, [$ca97]                                  ; $498f: $fa $97 $ca
	ld   [$afd0], a                                  ; $4992: $ea $d0 $af
	ld   a, [$ca98]                                  ; $4995: $fa $98 $ca
	ld   [sSramVals2+SRAM2_INTELLECT], a                                  ; $4998: $ea $d1 $af
	ld   a, [$ca99]                                  ; $499b: $fa $99 $ca
	ld   [sSramVals2+SRAM2_SPIRIT_POWER], a                                  ; $499e: $ea $d2 $af
	ld   a, [$ca9a]                                  ; $49a1: $fa $9a $ca
	ld   [sSramVals2+SRAM2_GUTS], a                                  ; $49a4: $ea $d3 $af
	ld   a, [$ca9b]                                  ; $49a7: $fa $9b $ca
	ld   [sSramVals2+SRAM2_SPEED], a                                  ; $49aa: $ea $d4 $af
	ld   a, [$ca9c]                                  ; $49ad: $fa $9c $ca
	ld   [sSramVals2+SRAM2_ACCURACY], a                                  ; $49b0: $ea $d5 $af
	ld   hl, wGameSubstate                                   ; $49b3: $21 $a1 $c2
	inc  [hl]                                        ; $49b6: $34
	ret                                              ; $49b7: $c9


	ld   a, [$b1b4]                                  ; $49b8: $fa $b4 $b1
	and  a                                           ; $49bb: $a7
	jr   nz, jr_021_49d7                             ; $49bc: $20 $19

	ld   a, [wInGameButtonsHeld]                                  ; $49be: $fa $0f $c2
	and  $02                                         ; $49c1: $e6 $02
	jp   nz, Jump_021_49d7                           ; $49c3: $c2 $d7 $49

	ld   a, [wInGameButtonsPressed]                                  ; $49c6: $fa $10 $c2
	and  $03                                         ; $49c9: $e6 $03
	jr   nz, jr_021_49d7                             ; $49cb: $20 $0a

	ld   a, [$ca96]                                  ; $49cd: $fa $96 $ca
	inc  a                                           ; $49d0: $3c
	ld   [$ca96], a                                  ; $49d1: $ea $96 $ca
	cp   $b4                                         ; $49d4: $fe $b4
	ret  nz                                          ; $49d6: $c0

Jump_021_49d7:
jr_021_49d7:
	ld   b, $2e                                      ; $49d7: $06 $2e
	ld   hl, $7f6a                                   ; $49d9: $21 $6a $7f
	call Call_021_4484                               ; $49dc: $cd $84 $44
	ld   a, [wNapOrTrainReturnState]                                  ; $49df: $fa $4c $ca
	ld   [wGameState], a                                  ; $49e2: $ea $a0 $c2
	ld   a, [wNapOrTrainReturnSubstate]                                  ; $49e5: $fa $4d $ca
	ld   [wGameSubstate], a                                  ; $49e8: $ea $a1 $c2
	ret                                              ; $49eb: $c9


GameState28_SumireTraining::
	ld   a, [wGameSubstate]                                  ; $49ec: $fa $a1 $c2
	rst  JumpTable                                         ; $49ef: $df
	ld   hl, sp+$49                                  ; $49f0: $f8 $49
	db   $10                                         ; $49f2: $10
	ld   c, h                                        ; $49f3: $4c
	sub  d                                           ; $49f4: $92
	ld   c, l                                        ; $49f5: $4d
	dec  a                                           ; $49f6: $3d
	ld   c, [hl]                                     ; $49f7: $4e
	call TurnOnLCD                                       ; $49f8: $cd $09 $09
	ld   a, $ff                                      ; $49fb: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $49fd: $ea $0e $c2
	ld   a, $0c                                      ; $4a00: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $4a02: $ea $13 $c2
	ld   a, $04                                      ; $4a05: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $4a07: $ea $14 $c2
	ld   a, [wLCDC]                                  ; $4a0a: $fa $03 $c2
	and  $e0                                         ; $4a0d: $e6 $e0
	or   $07                                         ; $4a0f: $f6 $07
	ld   [wLCDC], a                                  ; $4a11: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $4a14: $fa $93 $c2
	push af                                          ; $4a17: $f5
	ld   a, $07                                      ; $4a18: $3e $07
	ld   [wWramBank], a                                  ; $4a1a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4a1d: $e0 $70
	ld   a, $2c                                      ; $4a1f: $3e $2c
	ld   hl, $d000                                   ; $4a21: $21 $00 $d0
	ld   de, $7526                                   ; $4a24: $11 $26 $75
	call RLEXorCopy                                       ; $4a27: $cd $d2 $09
	ld   c, $80                                      ; $4a2a: $0e $80
	ld   de, $8000                                   ; $4a2c: $11 $00 $80
	ld   a, $07                                      ; $4a2f: $3e $07
	ld   hl, $d000                                   ; $4a31: $21 $00 $d0
	ld   b, $40                                      ; $4a34: $06 $40
	call EnqueueHDMATransfer                                       ; $4a36: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a39: $cf
	ld   c, $80                                      ; $4a3a: $0e $80
	ld   de, $8400                                   ; $4a3c: $11 $00 $84
	ld   a, $07                                      ; $4a3f: $3e $07
	ld   hl, $d400                                   ; $4a41: $21 $00 $d4
	ld   b, $40                                      ; $4a44: $06 $40
	call EnqueueHDMATransfer                                       ; $4a46: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a49: $cf
	ld   c, $80                                      ; $4a4a: $0e $80
	ld   de, $8800                                   ; $4a4c: $11 $00 $88
	ld   a, $07                                      ; $4a4f: $3e $07
	ld   hl, $d800                                   ; $4a51: $21 $00 $d8
	ld   b, $40                                      ; $4a54: $06 $40
	call EnqueueHDMATransfer                                       ; $4a56: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a59: $cf
	ld   c, $80                                      ; $4a5a: $0e $80
	ld   de, $8c00                                   ; $4a5c: $11 $00 $8c
	ld   a, $07                                      ; $4a5f: $3e $07
	ld   hl, $dc00                                   ; $4a61: $21 $00 $dc
	ld   b, $40                                      ; $4a64: $06 $40
	call EnqueueHDMATransfer                                       ; $4a66: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a69: $cf
	ld   a, $2e                                      ; $4a6a: $3e $2e
	ld   hl, $d000                                   ; $4a6c: $21 $00 $d0
	ld   de, $51f9                                   ; $4a6f: $11 $f9 $51
	call RLEXorCopy                                       ; $4a72: $cd $d2 $09
	ld   c, $80                                      ; $4a75: $0e $80
	ld   de, $9000                                   ; $4a77: $11 $00 $90
	ld   a, $07                                      ; $4a7a: $3e $07
	ld   hl, $d000                                   ; $4a7c: $21 $00 $d0
	ld   b, $40                                      ; $4a7f: $06 $40
	call EnqueueHDMATransfer                                       ; $4a81: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a84: $cf
	ld   c, $80                                      ; $4a85: $0e $80
	ld   de, $9400                                   ; $4a87: $11 $00 $94
	ld   a, $07                                      ; $4a8a: $3e $07
	ld   hl, $d400                                   ; $4a8c: $21 $00 $d4
	ld   b, $40                                      ; $4a8f: $06 $40
	call EnqueueHDMATransfer                                       ; $4a91: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a94: $cf
	ld   c, $81                                      ; $4a95: $0e $81
	ld   de, $8000                                   ; $4a97: $11 $00 $80
	ld   a, $07                                      ; $4a9a: $3e $07
	ld   hl, $d800                                   ; $4a9c: $21 $00 $d8
	ld   b, $40                                      ; $4a9f: $06 $40
	call EnqueueHDMATransfer                                       ; $4aa1: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4aa4: $cf
	ld   c, $81                                      ; $4aa5: $0e $81
	ld   de, $8400                                   ; $4aa7: $11 $00 $84
	ld   a, $07                                      ; $4aaa: $3e $07
	ld   hl, $dc00                                   ; $4aac: $21 $00 $dc
	ld   b, $40                                      ; $4aaf: $06 $40
	call EnqueueHDMATransfer                                       ; $4ab1: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ab4: $cf
	ld   a, $2f                                      ; $4ab5: $3e $2f
	ld   hl, $d000                                   ; $4ab7: $21 $00 $d0
	ld   de, $4000                                   ; $4aba: $11 $00 $40
if def(VWF)
	call NapOrTrainBank1_8800hHook
else
	call RLEXorCopy                                       ; $4abd: $cd $d2 $09
endc
	ld   c, $81                                      ; $4ac0: $0e $81
	ld   de, $8800                                   ; $4ac2: $11 $00 $88
	ld   a, $07                                      ; $4ac5: $3e $07
	ld   hl, $d000                                   ; $4ac7: $21 $00 $d0
	ld   b, $40                                      ; $4aca: $06 $40
	call EnqueueHDMATransfer                                       ; $4acc: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4acf: $cf
	ld   c, $81                                      ; $4ad0: $0e $81
	ld   de, $8c00                                   ; $4ad2: $11 $00 $8c
	ld   a, $07                                      ; $4ad5: $3e $07
	ld   hl, $d400                                   ; $4ad7: $21 $00 $d4
	ld   b, $40                                      ; $4ada: $06 $40
	call EnqueueHDMATransfer                                       ; $4adc: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4adf: $cf
	ld   c, $81                                      ; $4ae0: $0e $81
	ld   de, $9000                                   ; $4ae2: $11 $00 $90
	ld   a, $07                                      ; $4ae5: $3e $07
	ld   hl, $d800                                   ; $4ae7: $21 $00 $d8
	ld   b, $40                                      ; $4aea: $06 $40
	call EnqueueHDMATransfer                                       ; $4aec: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4aef: $cf
	ld   c, $81                                      ; $4af0: $0e $81
	ld   de, $9400                                   ; $4af2: $11 $00 $94
	ld   a, $07                                      ; $4af5: $3e $07
	ld   hl, $dc00                                   ; $4af7: $21 $00 $dc
	ld   b, $40                                      ; $4afa: $06 $40
	call EnqueueHDMATransfer                                       ; $4afc: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4aff: $cf
	ld   a, $2f                                      ; $4b00: $3e $2f
	ld   hl, $d000                                   ; $4b02: $21 $00 $d0
	ld   de, $50ea                                   ; $4b05: $11 $ea $50
if def(VWF)
	call NapOrTrainTileMapHook
else
	call RLEXorCopy                                       ; $4b08: $cd $d2 $09
endc
	ld   c, $80                                      ; $4b0b: $0e $80
	ld   de, $9800                                   ; $4b0d: $11 $00 $98
	ld   a, $07                                      ; $4b10: $3e $07
	ld   hl, $d000                                   ; $4b12: $21 $00 $d0
	ld   b, $40                                      ; $4b15: $06 $40
	call EnqueueHDMATransfer                                       ; $4b17: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b1a: $cf
	ld   a, $2f                                      ; $4b1b: $3e $2f
	ld   hl, $d000                                   ; $4b1d: $21 $00 $d0
	ld   de, $63f3                                   ; $4b20: $11 $f3 $63
	call RLEXorCopy                                       ; $4b23: $cd $d2 $09
	ld   c, $81                                      ; $4b26: $0e $81
	ld   de, $9800                                   ; $4b28: $11 $00 $98
	ld   a, $07                                      ; $4b2b: $3e $07
	ld   hl, $d000                                   ; $4b2d: $21 $00 $d0
	ld   b, $40                                      ; $4b30: $06 $40
	call EnqueueHDMATransfer                                       ; $4b32: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b35: $cf
	pop  af                                          ; $4b36: $f1
	ld   [wWramBank], a                                  ; $4b37: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4b3a: $e0 $70
	call ClearOam                                       ; $4b3c: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $4b3f: $cd $c9 $2e
	ld   a, $0a                                      ; $4b42: $3e $0a
	ld   [wRandomNumRange], a                                  ; $4b44: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $4b47: $cd $70 $0c
	xor  a                                           ; $4b4a: $af
	ld   [$ca6e], a                                  ; $4b4b: $ea $6e $ca
	ld   [$ca76], a                                  ; $4b4e: $ea $76 $ca
	ld   [$ca8f], a                                  ; $4b51: $ea $8f $ca
	ld   [$ca93], a                                  ; $4b54: $ea $93 $ca
	ld   [$ca94], a                                  ; $4b57: $ea $94 $ca
	ld   [$ca87], a                                  ; $4b5a: $ea $87 $ca
	ld   [$ca96], a                                  ; $4b5d: $ea $96 $ca
	ld   a, $04                                      ; $4b60: $3e $04
	call Call_021_416b                               ; $4b62: $cd $6b $41
	call Call_021_4bbb                               ; $4b65: $cd $bb $4b
	call TurnOffLCD                                       ; $4b68: $cd $e3 $08
	ld   a, $00                                      ; $4b6b: $3e $00
	ld   b, $04                                      ; $4b6d: $06 $04
	ld   c, $00                                      ; $4b6f: $0e $00
	ld   de, $0608                                   ; $4b71: $11 $08 $06
	ld   hl, $9820                                   ; $4b74: $21 $20 $98
	push af                                          ; $4b77: $f5
	ld   a, $79                                      ; $4b78: $3e $79
	ld   [wFarCallAddr], a                                  ; $4b7a: $ea $98 $c2
	ld   a, $5b                                      ; $4b7d: $3e $5b
	ld   [wFarCallAddr+1], a                                  ; $4b7f: $ea $99 $c2
	ld   a, $0c                                      ; $4b82: $3e $0c
	ld   [wFarCallBank], a                                  ; $4b84: $ea $9a $c2
	pop  af                                          ; $4b87: $f1
	call FarCall                                       ; $4b88: $cd $62 $09
	call TurnOnLCD                                       ; $4b8b: $cd $09 $09
	ld   hl, $afd0                                   ; $4b8e: $21 $d0 $af

	M_FarCall LoadStatBars

	call Call_021_4c5f                               ; $4ba5: $cd $5f $4c
	call Call_021_4cf6                               ; $4ba8: $cd $f6 $4c
	call AnimateAllAnimatedSpriteSpecs                                       ; $4bab: $cd $d3 $2e
	ld   c, $2f                                      ; $4bae: $0e $2f
	ld   de, $66e3                                   ; $4bb0: $11 $e3 $66
	call Call_021_44ac                               ; $4bb3: $cd $ac $44
	ld   hl, wGameSubstate                                   ; $4bb6: $21 $a1 $c2
	inc  [hl]                                        ; $4bb9: $34
	ret                                              ; $4bba: $c9


Call_021_4bbb:
	ld   a, [$ca86]                                  ; $4bbb: $fa $86 $ca
	cp   $02                                         ; $4bbe: $fe $02
	jr   z, jr_021_4bf8                              ; $4bc0: $28 $36

	cp   $01                                         ; $4bc2: $fe $01
	jr   z, jr_021_4bdf                              ; $4bc4: $28 $19

	ld   a, $c8                                      ; $4bc6: $3e $c8
	ld   [$ca8e], a                                  ; $4bc8: $ea $8e $ca
	ld   hl, $4cc3                                   ; $4bcb: $21 $c3 $4c
	ld   de, wKouboChosen0idxed                                   ; $4bce: $11 $6f $ca
	call Call_021_411c                               ; $4bd1: $cd $1c $41
	ld   hl, $4d43                                   ; $4bd4: $21 $43 $4d
	ld   de, $ca77                                   ; $4bd7: $11 $77 $ca
	call Call_021_411c                               ; $4bda: $cd $1c $41
	jr   jr_021_4c0f                                 ; $4bdd: $18 $30

jr_021_4bdf:
	ld   a, $c8                                      ; $4bdf: $3e $c8
	ld   [$ca8e], a                                  ; $4be1: $ea $8e $ca
	ld   hl, $4cd4                                   ; $4be4: $21 $d4 $4c
	ld   de, wKouboChosen0idxed                                   ; $4be7: $11 $6f $ca
	call Call_021_411c                               ; $4bea: $cd $1c $41
	ld   hl, $4d5c                                   ; $4bed: $21 $5c $4d
	ld   de, $ca77                                   ; $4bf0: $11 $77 $ca
	call Call_021_411c                               ; $4bf3: $cd $1c $41
	jr   jr_021_4c0f                                 ; $4bf6: $18 $17

jr_021_4bf8:
	ld   a, $c8                                      ; $4bf8: $3e $c8
	ld   [$ca8e], a                                  ; $4bfa: $ea $8e $ca
	ld   hl, $4ce1                                   ; $4bfd: $21 $e1 $4c
	ld   de, wKouboChosen0idxed                                   ; $4c00: $11 $6f $ca
	call Call_021_411c                               ; $4c03: $cd $1c $41
	ld   hl, $4d77                                   ; $4c06: $21 $77 $4d
	ld   de, $ca77                                   ; $4c09: $11 $77 $ca
	call Call_021_411c                               ; $4c0c: $cd $1c $41

jr_021_4c0f:
	ret                                              ; $4c0f: $c9


	ld   hl, $afd0                                   ; $4c10: $21 $d0 $af

	M_FarCall LoadStatBars

	ld   a, [$ca87]                                  ; $4c27: $fa $87 $ca
	cp   $01                                         ; $4c2a: $fe $01
	jr   z, jr_021_4c52                              ; $4c2c: $28 $24

	call ClearOam                                       ; $4c2e: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4c31: $cd $d3 $2e
	ld   a, [$ca6e]                                  ; $4c34: $fa $6e $ca
	and  a                                           ; $4c37: $a7
	jr   z, jr_021_4c4b                              ; $4c38: $28 $11

	ld   a, [$ca76]                                  ; $4c3a: $fa $76 $ca
	and  a                                           ; $4c3d: $a7
	jr   z, jr_021_4c4b                              ; $4c3e: $28 $0b

	xor  a                                           ; $4c40: $af
	ld   [$ca94], a                                  ; $4c41: $ea $94 $ca
	ld   a, [$ca87]                                  ; $4c44: $fa $87 $ca
	inc  a                                           ; $4c47: $3c
	ld   [$ca87], a                                  ; $4c48: $ea $87 $ca

jr_021_4c4b:
	call Call_021_4c5f                               ; $4c4b: $cd $5f $4c
	call Call_021_4cf6                               ; $4c4e: $cd $f6 $4c
	ret                                              ; $4c51: $c9


jr_021_4c52:
	ld   a, $50                                      ; $4c52: $3e $50
	ld   [$ca9f], a                                  ; $4c54: $ea $9f $ca
	call Call_021_44d4                               ; $4c57: $cd $d4 $44
	ld   hl, wGameSubstate                                   ; $4c5a: $21 $a1 $c2
	inc  [hl]                                        ; $4c5d: $34
	ret                                              ; $4c5e: $c9


Call_021_4c5f:
	ld   a, $26                                      ; $4c5f: $3e $26
	ld   [$ca72], a                                  ; $4c61: $ea $72 $ca
	ld   a, $59                                      ; $4c64: $3e $59
	ld   [$ca73], a                                  ; $4c66: $ea $73 $ca
	ld   a, [$ca86]                                  ; $4c69: $fa $86 $ca
	sla  a                                           ; $4c6c: $cb $27
	ld   hl, $4cbd                                   ; $4c6e: $21 $bd $4c
	ld   d, $00                                      ; $4c71: $16 $00
	ld   e, a                                        ; $4c73: $5f
	add  hl, de                                      ; $4c74: $19
	ld   a, [hl+]                                    ; $4c75: $2a
	ld   h, [hl]                                     ; $4c76: $66
	ld   l, a                                        ; $4c77: $6f
	ld   a, [$ca71]                                  ; $4c78: $fa $71 $ca
	cp   $02                                         ; $4c7b: $fe $02
	jr   nz, jr_021_4c8f                             ; $4c7d: $20 $10

	ld   a, [$ca94]                                  ; $4c7f: $fa $94 $ca
	and  a                                           ; $4c82: $a7
	jr   nz, jr_021_4c8f                             ; $4c83: $20 $0a

	ld   a, $ff                                      ; $4c85: $3e $ff
	ld   [$ca94], a                                  ; $4c87: $ea $94 $ca
	ld   a, $04                                      ; $4c8a: $3e $04
	call Call_021_4481                               ; $4c8c: $cd $81 $44

jr_021_4c8f:
	ld   de, wKouboChosen0idxed                                   ; $4c8f: $11 $6f $ca
	push hl                                          ; $4c92: $e5
	ld   a, $c8                                      ; $4c93: $3e $c8
	ld   [$ca8e], a                                  ; $4c95: $ea $8e $ca
	call Call_021_412a                               ; $4c98: $cd $2a $41
	pop  hl                                          ; $4c9b: $e1
	jr   nc, jr_021_4ca9                             ; $4c9c: $30 $0b

	ld   a, [wKouboChosen0idxed]                                  ; $4c9e: $fa $6f $ca
	and  a                                           ; $4ca1: $a7
	jr   nz, jr_021_4ca9                             ; $4ca2: $20 $05

	ld   a, $01                                      ; $4ca4: $3e $01
	ld   [$ca6e], a                                  ; $4ca6: $ea $6e $ca

jr_021_4ca9:
	ld   a, $04                                      ; $4ca9: $3e $04
	ld   [wSpriteGroup], a                                  ; $4cab: $ea $1a $c2
	ld   a, [$ca72]                                  ; $4cae: $fa $72 $ca
	ld   b, a                                        ; $4cb1: $47
	ld   a, [$ca73]                                  ; $4cb2: $fa $73 $ca
	ld   c, a                                        ; $4cb5: $4f
	ld   a, [$ca70]                                  ; $4cb6: $fa $70 $ca
	call LoadSpriteFromMainTable                                       ; $4cb9: $cd $16 $0e
	ret                                              ; $4cbc: $c9


	jp   $d44c                                       ; $4cbd: $c3 $4c $d4


	ld   c, h                                        ; $4cc0: $4c
	pop  hl                                          ; $4cc1: $e1
	ld   c, h                                        ; $4cc2: $4c
	jr   nz, jr_021_4cc6                             ; $4cc3: $20 $01

	ld   a, [de]                                     ; $4cc5: $1a

jr_021_4cc6:
	nop                                              ; $4cc6: $00
	ld   a, [de]                                     ; $4cc7: $1a
	ld   bc, $001a                                   ; $4cc8: $01 $1a $00
	jr   nz, jr_021_4cce                             ; $4ccb: $20 $01

	ld   a, [de]                                     ; $4ccd: $1a

jr_021_4cce:
	nop                                              ; $4cce: $00
	ld   a, [de]                                     ; $4ccf: $1a
	ld   bc, $001a                                   ; $4cd0: $01 $1a $00
	nop                                              ; $4cd3: $00
	ld   a, b                                        ; $4cd4: $78
	inc  bc                                          ; $4cd5: $03
	db   $10                                         ; $4cd6: $10
	ld   [bc], a                                     ; $4cd7: $02
	ld   c, $04                                      ; $4cd8: $0e $04
	db   $10                                         ; $4cda: $10
	ld   [bc], a                                     ; $4cdb: $02
	ld   c, $04                                      ; $4cdc: $0e $04
	ld   a, [hl+]                                    ; $4cde: $2a
	ld   [bc], a                                     ; $4cdf: $02
	nop                                              ; $4ce0: $00
	ld   h, [hl]                                     ; $4ce1: $66
	inc  bc                                          ; $4ce2: $03
	ld   a, [bc]                                     ; $4ce3: $0a
	dec  b                                           ; $4ce4: $05
	ld   a, [bc]                                     ; $4ce5: $0a
	ld   b, $0a                                      ; $4ce6: $06 $0a
	dec  b                                           ; $4ce8: $05
	ld   a, [bc]                                     ; $4ce9: $0a
	ld   b, $0a                                      ; $4cea: $06 $0a
	dec  b                                           ; $4cec: $05
	ld   a, [bc]                                     ; $4ced: $0a
	ld   b, $0a                                      ; $4cee: $06 $0a
	dec  b                                           ; $4cf0: $05
	ld   a, [bc]                                     ; $4cf1: $0a
	ld   b, $2a                                      ; $4cf2: $06 $2a
	dec  b                                           ; $4cf4: $05
	nop                                              ; $4cf5: $00

Call_021_4cf6:
	ld   a, $6a                                      ; $4cf6: $3e $6a
	ld   [$ca7a], a                                  ; $4cf8: $ea $7a $ca
	ld   a, $59                                      ; $4cfb: $3e $59
	ld   [$ca7b], a                                  ; $4cfd: $ea $7b $ca
	ld   a, [$ca86]                                  ; $4d00: $fa $86 $ca
	sla  a                                           ; $4d03: $cb $27
	ld   hl, $4d3d                                   ; $4d05: $21 $3d $4d
	ld   d, $00                                      ; $4d08: $16 $00
	ld   e, a                                        ; $4d0a: $5f
	add  hl, de                                      ; $4d0b: $19
	ld   a, [hl+]                                    ; $4d0c: $2a
	ld   h, [hl]                                     ; $4d0d: $66
	ld   l, a                                        ; $4d0e: $6f
	ld   de, $ca77                                   ; $4d0f: $11 $77 $ca
	push hl                                          ; $4d12: $e5
	ld   a, $c8                                      ; $4d13: $3e $c8
	ld   [$ca8e], a                                  ; $4d15: $ea $8e $ca
	call Call_021_412a                               ; $4d18: $cd $2a $41
	pop  hl                                          ; $4d1b: $e1
	jr   nc, jr_021_4d29                             ; $4d1c: $30 $0b

	ld   a, [$ca77]                                  ; $4d1e: $fa $77 $ca
	and  a                                           ; $4d21: $a7
	jr   nz, jr_021_4d29                             ; $4d22: $20 $05

	ld   a, $01                                      ; $4d24: $3e $01
	ld   [$ca76], a                                  ; $4d26: $ea $76 $ca

jr_021_4d29:
	ld   a, $04                                      ; $4d29: $3e $04
	ld   [wSpriteGroup], a                                  ; $4d2b: $ea $1a $c2
	ld   a, [$ca7a]                                  ; $4d2e: $fa $7a $ca
	ld   b, a                                        ; $4d31: $47
	ld   a, [$ca7b]                                  ; $4d32: $fa $7b $ca
	ld   c, a                                        ; $4d35: $4f
	ld   a, [$ca78]                                  ; $4d36: $fa $78 $ca
	call LoadSpriteFromMainTable                                       ; $4d39: $cd $16 $0e
	ret                                              ; $4d3c: $c9


	ld   b, e                                        ; $4d3d: $43
	ld   c, l                                        ; $4d3e: $4d
	ld   e, h                                        ; $4d3f: $5c
	ld   c, l                                        ; $4d40: $4d
	ld   [hl], a                                     ; $4d41: $77
	ld   c, l                                        ; $4d42: $4d
	jr   nz, jr_021_4d4c                             ; $4d43: $20 $07

	ld   [bc], a                                     ; $4d45: $02
	ld   [$0917], sp                                 ; $4d46: $08 $17 $09
	rla                                              ; $4d49: $17
	rlca                                             ; $4d4a: $07
	ld   [bc], a                                     ; $4d4b: $02

jr_021_4d4c:
	ld   [$0917], sp                                 ; $4d4c: $08 $17 $09
	rla                                              ; $4d4f: $17
	rlca                                             ; $4d50: $07
	ld   [bc], a                                     ; $4d51: $02
	ld   [$0917], sp                                 ; $4d52: $08 $17 $09
	rla                                              ; $4d55: $17
	rlca                                             ; $4d56: $07
	ld   [bc], a                                     ; $4d57: $02
	ld   [$092a], sp                                 ; $4d58: $08 $2a $09
	nop                                              ; $4d5b: $00
	jr   nz, jr_021_4d65                             ; $4d5c: $20 $07

	ld   [bc], a                                     ; $4d5e: $02
	ld   [$0917], sp                                 ; $4d5f: $08 $17 $09
	rla                                              ; $4d62: $17
	rlca                                             ; $4d63: $07
	ld   [bc], a                                     ; $4d64: $02

jr_021_4d65:
	ld   [$0917], sp                                 ; $4d65: $08 $17 $09
	rla                                              ; $4d68: $17
	rlca                                             ; $4d69: $07
	ld   [bc], a                                     ; $4d6a: $02
	ld   [$0917], sp                                 ; $4d6b: $08 $17 $09
	ld   [bc], a                                     ; $4d6e: $02
	ld   [$0a17], sp                                 ; $4d6f: $08 $17 $0a
	ld   [bc], a                                     ; $4d72: $02
	inc  c                                           ; $4d73: $0c
	ld   a, [hl+]                                    ; $4d74: $2a
	dec  c                                           ; $4d75: $0d
	nop                                              ; $4d76: $00
	ld   e, $07                                      ; $4d77: $1e $07
	ld   [bc], a                                     ; $4d79: $02
	ld   [$0917], sp                                 ; $4d7a: $08 $17 $09
	rla                                              ; $4d7d: $17
	rlca                                             ; $4d7e: $07
	ld   [bc], a                                     ; $4d7f: $02
	ld   [$0917], sp                                 ; $4d80: $08 $17 $09
	ld   [bc], a                                     ; $4d83: $02
	ld   [$0a17], sp                                 ; $4d84: $08 $17 $0a
	ld   [bc], a                                     ; $4d87: $02
	inc  c                                           ; $4d88: $0c
	rla                                              ; $4d89: $17
	dec  c                                           ; $4d8a: $0d
	rla                                              ; $4d8b: $17
	ld   c, $06                                      ; $4d8c: $0e $06
	rrca                                             ; $4d8e: $0f
	ld   a, [hl+]                                    ; $4d8f: $2a
	stop                                             ; $4d90: $10 $00
	call ClearOam                                       ; $4d92: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $4d95: $cd $d3 $2e
	call Call_021_4c5f                               ; $4d98: $cd $5f $4c
	call Call_021_4cf6                               ; $4d9b: $cd $f6 $4c
	ld   a, [wInGameButtonsHeld]                                  ; $4d9e: $fa $0f $c2
	and  $82                                         ; $4da1: $e6 $82
	jp   z, Jump_021_4db1                            ; $4da3: $ca $b1 $4d

	ld   a, [$caa5]                                  ; $4da6: $fa $a5 $ca
	inc  a                                           ; $4da9: $3c
	cp   $0b                                         ; $4daa: $fe $0b
	jr   nc, jr_021_4db1                             ; $4dac: $30 $03

	ld   [$caa5], a                                  ; $4dae: $ea $a5 $ca

Jump_021_4db1:
jr_021_4db1:
	ld   a, [$caa6]                                  ; $4db1: $fa $a6 $ca
	cp   $03                                         ; $4db4: $fe $03
	jr   z, jr_021_4e14                              ; $4db6: $28 $5c

	ld   a, [$caa4]                                  ; $4db8: $fa $a4 $ca
	and  a                                           ; $4dbb: $a7
	jr   nz, jr_021_4de8                             ; $4dbc: $20 $2a

	ld   hl, $afd0                                   ; $4dbe: $21 $d0 $af

	M_FarCall LoadStatBars

	ld   hl, $caa5                                   ; $4dd5: $21 $a5 $ca
	inc  [hl]                                        ; $4dd8: $34
	ld   a, [hl]                                     ; $4dd9: $7e
	cp   $0b                                         ; $4dda: $fe $0b
	jr   c, jr_021_4de7                              ; $4ddc: $38 $09

	ld   a, $01                                      ; $4dde: $3e $01
	ld   [$caa4], a                                  ; $4de0: $ea $a4 $ca
	xor  a                                           ; $4de3: $af
	ld   [$caa5], a                                  ; $4de4: $ea $a5 $ca

jr_021_4de7:
	ret                                              ; $4de7: $c9


jr_021_4de8:
	ld   hl, $ca97                                   ; $4de8: $21 $97 $ca

	M_FarCall LoadStatBars

	ld   hl, $caa5                                   ; $4dff: $21 $a5 $ca
	inc  [hl]                                        ; $4e02: $34
	ld   a, [hl]                                     ; $4e03: $7e
	cp   $0b                                         ; $4e04: $fe $0b
	jr   c, jr_021_4e13                              ; $4e06: $38 $0b

	xor  a                                           ; $4e08: $af
	ld   [$caa4], a                                  ; $4e09: $ea $a4 $ca
	ld   [$caa5], a                                  ; $4e0c: $ea $a5 $ca
	ld   hl, $caa6                                   ; $4e0f: $21 $a6 $ca
	inc  [hl]                                        ; $4e12: $34

jr_021_4e13:
	ret                                              ; $4e13: $c9


jr_021_4e14:
	ld   a, [$ca97]                                  ; $4e14: $fa $97 $ca
	ld   [$afd0], a                                  ; $4e17: $ea $d0 $af
	ld   a, [$ca98]                                  ; $4e1a: $fa $98 $ca
	ld   [sSramVals2+SRAM2_INTELLECT], a                                  ; $4e1d: $ea $d1 $af
	ld   a, [$ca99]                                  ; $4e20: $fa $99 $ca
	ld   [sSramVals2+SRAM2_SPIRIT_POWER], a                                  ; $4e23: $ea $d2 $af
	ld   a, [$ca9a]                                  ; $4e26: $fa $9a $ca
	ld   [sSramVals2+SRAM2_GUTS], a                                  ; $4e29: $ea $d3 $af
	ld   a, [$ca9b]                                  ; $4e2c: $fa $9b $ca
	ld   [sSramVals2+SRAM2_SPEED], a                                  ; $4e2f: $ea $d4 $af
	ld   a, [$ca9c]                                  ; $4e32: $fa $9c $ca
	ld   [sSramVals2+SRAM2_ACCURACY], a                                  ; $4e35: $ea $d5 $af
	ld   hl, wGameSubstate                                   ; $4e38: $21 $a1 $c2
	inc  [hl]                                        ; $4e3b: $34
	ret                                              ; $4e3c: $c9


	ld   a, [$b1b4]                                  ; $4e3d: $fa $b4 $b1
	and  a                                           ; $4e40: $a7
	jr   nz, jr_021_4e5c                             ; $4e41: $20 $19

	ld   a, [wInGameButtonsHeld]                                  ; $4e43: $fa $0f $c2
	and  $02                                         ; $4e46: $e6 $02
	jp   nz, Jump_021_4e5c                           ; $4e48: $c2 $5c $4e

	ld   a, [wInGameButtonsPressed]                                  ; $4e4b: $fa $10 $c2
	and  $03                                         ; $4e4e: $e6 $03
	jr   nz, jr_021_4e5c                             ; $4e50: $20 $0a

	ld   a, [$ca96]                                  ; $4e52: $fa $96 $ca
	inc  a                                           ; $4e55: $3c
	ld   [$ca96], a                                  ; $4e56: $ea $96 $ca
	cp   $b4                                         ; $4e59: $fe $b4
	ret  nz                                          ; $4e5b: $c0

Jump_021_4e5c:
jr_021_4e5c:
	ld   b, $2f                                      ; $4e5c: $06 $2f
	ld   hl, $66e3                                   ; $4e5e: $21 $e3 $66
	call Call_021_4484                               ; $4e61: $cd $84 $44
	ld   a, [wNapOrTrainReturnState]                                  ; $4e64: $fa $4c $ca
	ld   [wGameState], a                                  ; $4e67: $ea $a0 $c2
	ld   a, [wNapOrTrainReturnSubstate]                                  ; $4e6a: $fa $4d $ca
	ld   [wGameSubstate], a                                  ; $4e6d: $ea $a1 $c2
	ret                                              ; $4e70: $c9


GameState27_SakuraTraining::
	ld   a, [wGameSubstate]                                  ; $4e71: $fa $a1 $c2
	rst  JumpTable                                         ; $4e74: $df
	ld   a, l                                        ; $4e75: $7d
	ld   c, [hl]                                     ; $4e76: $4e
	ret  z                                           ; $4e77: $c8

	ld   d, b                                        ; $4e78: $50
	ld   [hl], $53                                   ; $4e79: $36 $53
	db   $e4                                         ; $4e7b: $e4
	ld   d, e                                        ; $4e7c: $53
	call TurnOnLCD                                       ; $4e7d: $cd $09 $09
	ld   a, $07                                      ; $4e80: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $4e82: $cd $e0 $1c
	ld   a, $ff                                      ; $4e85: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $4e87: $ea $0e $c2
	ld   a, $0c                                      ; $4e8a: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $4e8c: $ea $13 $c2
	ld   a, $04                                      ; $4e8f: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $4e91: $ea $14 $c2
	ld   a, [wLCDC]                                  ; $4e94: $fa $03 $c2
	and  $e0                                         ; $4e97: $e6 $e0
	or   $07                                         ; $4e99: $f6 $07
	ld   [wLCDC], a                                  ; $4e9b: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $4e9e: $fa $93 $c2
	push af                                          ; $4ea1: $f5
	ld   a, $07                                      ; $4ea2: $3e $07
	ld   [wWramBank], a                                  ; $4ea4: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4ea7: $e0 $70
	ld   a, $2c                                      ; $4ea9: $3e $2c
	ld   hl, $d000                                   ; $4eab: $21 $00 $d0
	ld   de, $5c56                                   ; $4eae: $11 $56 $5c
	call RLEXorCopy                                       ; $4eb1: $cd $d2 $09
	ld   c, $80                                      ; $4eb4: $0e $80
	ld   de, $8000                                   ; $4eb6: $11 $00 $80
	ld   a, $07                                      ; $4eb9: $3e $07
	ld   hl, $d000                                   ; $4ebb: $21 $00 $d0
	ld   b, $40                                      ; $4ebe: $06 $40
	call EnqueueHDMATransfer                                       ; $4ec0: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ec3: $cf
	ld   c, $80                                      ; $4ec4: $0e $80
	ld   de, $8400                                   ; $4ec6: $11 $00 $84
	ld   a, $07                                      ; $4ec9: $3e $07
	ld   hl, $d400                                   ; $4ecb: $21 $00 $d4
	ld   b, $40                                      ; $4ece: $06 $40
	call EnqueueHDMATransfer                                       ; $4ed0: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ed3: $cf
	ld   c, $80                                      ; $4ed4: $0e $80
	ld   de, $8800                                   ; $4ed6: $11 $00 $88
	ld   a, $07                                      ; $4ed9: $3e $07
	ld   hl, $d800                                   ; $4edb: $21 $00 $d8
	ld   b, $40                                      ; $4ede: $06 $40
	call EnqueueHDMATransfer                                       ; $4ee0: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ee3: $cf
	ld   c, $80                                      ; $4ee4: $0e $80
	ld   de, $8c00                                   ; $4ee6: $11 $00 $8c
	ld   a, $07                                      ; $4ee9: $3e $07
	ld   hl, $dc00                                   ; $4eeb: $21 $00 $dc
	ld   b, $40                                      ; $4eee: $06 $40
	call EnqueueHDMATransfer                                       ; $4ef0: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ef3: $cf
	ld   a, $2e                                      ; $4ef4: $3e $2e
	ld   hl, $d000                                   ; $4ef6: $21 $00 $d0
	ld   de, $57b1                                   ; $4ef9: $11 $b1 $57
	call RLEXorCopy                                       ; $4efc: $cd $d2 $09
	ld   c, $80                                      ; $4eff: $0e $80
	ld   de, $9000                                   ; $4f01: $11 $00 $90
	ld   a, $07                                      ; $4f04: $3e $07
	ld   hl, $d000                                   ; $4f06: $21 $00 $d0
	ld   b, $40                                      ; $4f09: $06 $40
	call EnqueueHDMATransfer                                       ; $4f0b: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f0e: $cf
	ld   c, $80                                      ; $4f0f: $0e $80
	ld   de, $9400                                   ; $4f11: $11 $00 $94
	ld   a, $07                                      ; $4f14: $3e $07
	ld   hl, $d400                                   ; $4f16: $21 $00 $d4
	ld   b, $40                                      ; $4f19: $06 $40
	call EnqueueHDMATransfer                                       ; $4f1b: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f1e: $cf
	ld   c, $81                                      ; $4f1f: $0e $81
	ld   de, $8000                                   ; $4f21: $11 $00 $80
	ld   a, $07                                      ; $4f24: $3e $07
	ld   hl, $d800                                   ; $4f26: $21 $00 $d8
	ld   b, $40                                      ; $4f29: $06 $40
	call EnqueueHDMATransfer                                       ; $4f2b: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f2e: $cf
	ld   c, $81                                      ; $4f2f: $0e $81
	ld   de, $8400                                   ; $4f31: $11 $00 $84
	ld   a, $07                                      ; $4f34: $3e $07
	ld   hl, $dc00                                   ; $4f36: $21 $00 $dc
	ld   b, $40                                      ; $4f39: $06 $40
	call EnqueueHDMATransfer                                       ; $4f3b: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f3e: $cf
	ld   a, $2e                                      ; $4f3f: $3e $2e
	ld   hl, $d000                                   ; $4f41: $21 $00 $d0
	ld   de, $5d69                                   ; $4f44: $11 $69 $5d
if def(VWF)
	call NapOrTrainBank1_8800hHook
else
	call RLEXorCopy                                       ; $4f47: $cd $d2 $09
endc
	ld   c, $81                                      ; $4f4a: $0e $81
	ld   de, $8800                                   ; $4f4c: $11 $00 $88
	ld   a, $07                                      ; $4f4f: $3e $07
	ld   hl, $d000                                   ; $4f51: $21 $00 $d0
	ld   b, $40                                      ; $4f54: $06 $40
	call EnqueueHDMATransfer                                       ; $4f56: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f59: $cf
	ld   c, $81                                      ; $4f5a: $0e $81
	ld   de, $8c00                                   ; $4f5c: $11 $00 $8c
	ld   a, $07                                      ; $4f5f: $3e $07
	ld   hl, $d400                                   ; $4f61: $21 $00 $d4
	ld   b, $40                                      ; $4f64: $06 $40
	call EnqueueHDMATransfer                                       ; $4f66: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f69: $cf
	ld   c, $81                                      ; $4f6a: $0e $81
	ld   de, $9000                                   ; $4f6c: $11 $00 $90
	ld   a, $07                                      ; $4f6f: $3e $07
	ld   hl, $d800                                   ; $4f71: $21 $00 $d8
	ld   b, $40                                      ; $4f74: $06 $40
	call EnqueueHDMATransfer                                       ; $4f76: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f79: $cf
	ld   c, $81                                      ; $4f7a: $0e $81
	ld   de, $9400                                   ; $4f7c: $11 $00 $94
	ld   a, $07                                      ; $4f7f: $3e $07
	ld   hl, $dc00                                   ; $4f81: $21 $00 $dc
	ld   b, $40                                      ; $4f84: $06 $40
	call EnqueueHDMATransfer                                       ; $4f86: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f89: $cf
	ld   a, $2f                                      ; $4f8a: $3e $2f
	ld   hl, $d000                                   ; $4f8c: $21 $00 $d0
	ld   de, $541c                                   ; $4f8f: $11 $1c $54
if def(VWF)
	call NapOrTrainTileMapHook
else
	call RLEXorCopy                                       ; $4f92: $cd $d2 $09
endc
	ld   c, $80                                      ; $4f95: $0e $80
	ld   de, $9800                                   ; $4f97: $11 $00 $98
	ld   a, $07                                      ; $4f9a: $3e $07
	ld   hl, $d000                                   ; $4f9c: $21 $00 $d0
	ld   b, $40                                      ; $4f9f: $06 $40
	call EnqueueHDMATransfer                                       ; $4fa1: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fa4: $cf
	ld   a, $2f                                      ; $4fa5: $3e $2f
	ld   hl, $d000                                   ; $4fa7: $21 $00 $d0
	ld   de, $64cb                                   ; $4faa: $11 $cb $64
	call RLEXorCopy                                       ; $4fad: $cd $d2 $09
	ld   c, $81                                      ; $4fb0: $0e $81
	ld   de, $9800                                   ; $4fb2: $11 $00 $98
	ld   a, $07                                      ; $4fb5: $3e $07
	ld   hl, $d000                                   ; $4fb7: $21 $00 $d0
	ld   b, $40                                      ; $4fba: $06 $40
	call EnqueueHDMATransfer                                       ; $4fbc: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fbf: $cf
	pop  af                                          ; $4fc0: $f1
	ld   [wWramBank], a                                  ; $4fc1: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4fc4: $e0 $70
	call ClearOam                                       ; $4fc6: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $4fc9: $cd $c9 $2e
	ld   a, $05                                      ; $4fcc: $3e $05
	ld   [wRandomNumRange], a                                  ; $4fce: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $4fd1: $cd $70 $0c
	xor  a                                           ; $4fd4: $af
	ld   [$ca6e], a                                  ; $4fd5: $ea $6e $ca
	ld   [$ca76], a                                  ; $4fd8: $ea $76 $ca
	ld   [$ca7e], a                                  ; $4fdb: $ea $7e $ca
	ld   [$ca8f], a                                  ; $4fde: $ea $8f $ca
	ld   [$ca93], a                                  ; $4fe1: $ea $93 $ca
	ld   [$ca94], a                                  ; $4fe4: $ea $94 $ca
	ld   [$ca87], a                                  ; $4fe7: $ea $87 $ca
	ld   [$ca96], a                                  ; $4fea: $ea $96 $ca
	call Call_021_42c6                               ; $4fed: $cd $c6 $42
	call Call_021_5049                               ; $4ff0: $cd $49 $50
	call TurnOffLCD                                       ; $4ff3: $cd $e3 $08
	ld   a, $00                                      ; $4ff6: $3e $00
	ld   b, $04                                      ; $4ff8: $06 $04
	ld   c, $00                                      ; $4ffa: $0e $00
	ld   de, $0608                                   ; $4ffc: $11 $08 $06
	ld   hl, $9820                                   ; $4fff: $21 $20 $98
	push af                                          ; $5002: $f5
	ld   a, $79                                      ; $5003: $3e $79
	ld   [wFarCallAddr], a                                  ; $5005: $ea $98 $c2
	ld   a, $5b                                      ; $5008: $3e $5b
	ld   [wFarCallAddr+1], a                                  ; $500a: $ea $99 $c2
	ld   a, $0c                                      ; $500d: $3e $0c
	ld   [wFarCallBank], a                                  ; $500f: $ea $9a $c2
	pop  af                                          ; $5012: $f1
	call FarCall                                       ; $5013: $cd $62 $09
	call TurnOnLCD                                       ; $5016: $cd $09 $09
	ld   hl, $afd0                                   ; $5019: $21 $d0 $af

	M_FarCall LoadStatBars

	call Call_021_5120                               ; $5030: $cd $20 $51
	call Call_021_51b4                               ; $5033: $cd $b4 $51
	call Call_021_526a                               ; $5036: $cd $6a $52
	call AnimateAllAnimatedSpriteSpecs                                       ; $5039: $cd $d3 $2e
	ld   c, $2f                                      ; $503c: $0e $2f
	ld   de, $67e3                                   ; $503e: $11 $e3 $67
	call Call_021_44ac                               ; $5041: $cd $ac $44
	ld   hl, wGameSubstate                                   ; $5044: $21 $a1 $c2
	inc  [hl]                                        ; $5047: $34
	ret                                              ; $5048: $c9


Call_021_5049:
	ld   a, [$ca86]                                  ; $5049: $fa $86 $ca
	cp   $02                                         ; $504c: $fe $02
	jr   z, jr_021_50a2                              ; $504e: $28 $52

	cp   $01                                         ; $5050: $fe $01
	jr   z, jr_021_507b                              ; $5052: $28 $27

	ld   a, $03                                      ; $5054: $3e $03
	ld   [$ca8e], a                                  ; $5056: $ea $8e $ca
	ld   hl, $5183                                   ; $5059: $21 $83 $51
	ld   de, wKouboChosen0idxed                                   ; $505c: $11 $6f $ca
	call Call_021_411c                               ; $505f: $cd $1c $41
	ld   hl, $5201                                   ; $5062: $21 $01 $52
	ld   de, $ca77                                   ; $5065: $11 $77 $ca
	call Call_021_411c                               ; $5068: $cd $1c $41
	ld   a, $1d                                      ; $506b: $3e $1d
	ld   [$ca8e], a                                  ; $506d: $ea $8e $ca
	ld   hl, $52b7                                   ; $5070: $21 $b7 $52
	ld   de, $ca7f                                   ; $5073: $11 $7f $ca
	call Call_021_411c                               ; $5076: $cd $1c $41
	jr   jr_021_50c7                                 ; $5079: $18 $4c

jr_021_507b:
	ld   a, $03                                      ; $507b: $3e $03
	ld   [$ca8e], a                                  ; $507d: $ea $8e $ca
	ld   hl, $519a                                   ; $5080: $21 $9a $51
	ld   de, wKouboChosen0idxed                                   ; $5083: $11 $6f $ca
	call Call_021_411c                               ; $5086: $cd $1c $41
	ld   hl, $5230                                   ; $5089: $21 $30 $52
	ld   de, $ca77                                   ; $508c: $11 $77 $ca
	call Call_021_411c                               ; $508f: $cd $1c $41
	ld   a, $1d                                      ; $5092: $3e $1d
	ld   [$ca8e], a                                  ; $5094: $ea $8e $ca
	ld   hl, $52f8                                   ; $5097: $21 $f8 $52
	ld   de, $ca7f                                   ; $509a: $11 $7f $ca
	call Call_021_411c                               ; $509d: $cd $1c $41
	jr   jr_021_50c7                                 ; $50a0: $18 $25

jr_021_50a2:
	ld   a, $03                                      ; $50a2: $3e $03
	ld   [$ca8e], a                                  ; $50a4: $ea $8e $ca
	ld   hl, $51a3                                   ; $50a7: $21 $a3 $51
	ld   de, wKouboChosen0idxed                                   ; $50aa: $11 $6f $ca
	call Call_021_411c                               ; $50ad: $cd $1c $41
	ld   hl, $524b                                   ; $50b0: $21 $4b $52
	ld   de, $ca77                                   ; $50b3: $11 $77 $ca
	call Call_021_411c                               ; $50b6: $cd $1c $41
	ld   a, $1d                                      ; $50b9: $3e $1d
	ld   [$ca8e], a                                  ; $50bb: $ea $8e $ca
	ld   hl, $5315                                   ; $50be: $21 $15 $53
	ld   de, $ca7f                                   ; $50c1: $11 $7f $ca
	call Call_021_411c                               ; $50c4: $cd $1c $41

jr_021_50c7:
	ret                                              ; $50c7: $c9


	ld   hl, $afd0                                   ; $50c8: $21 $d0 $af

	M_FarCall LoadStatBars

	ld   a, [$ca87]                                  ; $50df: $fa $87 $ca
	cp   $01                                         ; $50e2: $fe $01
	jr   z, jr_021_5113                              ; $50e4: $28 $2d

	call ClearOam                                       ; $50e6: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $50e9: $cd $d3 $2e
	ld   a, [$ca6e]                                  ; $50ec: $fa $6e $ca
	and  a                                           ; $50ef: $a7
	jr   z, jr_021_5109                              ; $50f0: $28 $17

	ld   a, [$ca76]                                  ; $50f2: $fa $76 $ca
	and  a                                           ; $50f5: $a7
	jr   z, jr_021_5109                              ; $50f6: $28 $11

	ld   a, [$ca7e]                                  ; $50f8: $fa $7e $ca
	and  a                                           ; $50fb: $a7
	jr   z, jr_021_5109                              ; $50fc: $28 $0b

	xor  a                                           ; $50fe: $af
	ld   [$ca94], a                                  ; $50ff: $ea $94 $ca
	ld   a, [$ca87]                                  ; $5102: $fa $87 $ca
	inc  a                                           ; $5105: $3c
	ld   [$ca87], a                                  ; $5106: $ea $87 $ca

jr_021_5109:
	call Call_021_5120                               ; $5109: $cd $20 $51
	call Call_021_51b4                               ; $510c: $cd $b4 $51
	call Call_021_526a                               ; $510f: $cd $6a $52
	ret                                              ; $5112: $c9


jr_021_5113:
	ld   a, $50                                      ; $5113: $3e $50
	ld   [$ca9f], a                                  ; $5115: $ea $9f $ca
	call Call_021_44d4                               ; $5118: $cd $d4 $44
	ld   hl, wGameSubstate                                   ; $511b: $21 $a1 $c2
	inc  [hl]                                        ; $511e: $34
	ret                                              ; $511f: $c9


Call_021_5120:
	ld   a, $1a                                      ; $5120: $3e $1a
	ld   [$ca72], a                                  ; $5122: $ea $72 $ca
	inc  de                                          ; $5125: $13
	ld   a, $59                                      ; $5126: $3e $59
	ld   [$ca73], a                                  ; $5128: $ea $73 $ca
	ld   a, [$ca86]                                  ; $512b: $fa $86 $ca
	sla  a                                           ; $512e: $cb $27
	ld   hl, $517d                                   ; $5130: $21 $7d $51
	ld   d, $00                                      ; $5133: $16 $00
	ld   e, a                                        ; $5135: $5f
	add  hl, de                                      ; $5136: $19
	ld   a, [hl+]                                    ; $5137: $2a
	ld   h, [hl]                                     ; $5138: $66
	ld   l, a                                        ; $5139: $6f
	ld   a, [$ca71]                                  ; $513a: $fa $71 $ca
	cp   $03                                         ; $513d: $fe $03
	jr   nz, jr_021_514f                             ; $513f: $20 $0e

	ld   a, [$ca94]                                  ; $5141: $fa $94 $ca
	and  a                                           ; $5144: $a7
	jr   nz, jr_021_514f                             ; $5145: $20 $08

	ld   a, $ff                                      ; $5147: $3e $ff
	ld   [$ca94], a                                  ; $5149: $ea $94 $ca
	call Call_021_4483                               ; $514c: $cd $83 $44

jr_021_514f:
	ld   de, wKouboChosen0idxed                                   ; $514f: $11 $6f $ca
	push hl                                          ; $5152: $e5
	ld   a, $03                                      ; $5153: $3e $03
	ld   [$ca8e], a                                  ; $5155: $ea $8e $ca
	call Call_021_412a                               ; $5158: $cd $2a $41
	pop  hl                                          ; $515b: $e1
	jr   nc, jr_021_5169                             ; $515c: $30 $0b

	ld   a, [wKouboChosen0idxed]                                  ; $515e: $fa $6f $ca
	and  a                                           ; $5161: $a7
	jr   nz, jr_021_5169                             ; $5162: $20 $05

	ld   a, $01                                      ; $5164: $3e $01
	ld   [$ca6e], a                                  ; $5166: $ea $6e $ca

jr_021_5169:
	ld   a, $04                                      ; $5169: $3e $04
	ld   [wSpriteGroup], a                                  ; $516b: $ea $1a $c2
	ld   a, [$ca72]                                  ; $516e: $fa $72 $ca
	ld   b, a                                        ; $5171: $47
	ld   a, [$ca73]                                  ; $5172: $fa $73 $ca
	ld   c, a                                        ; $5175: $4f
	ld   a, [$ca70]                                  ; $5176: $fa $70 $ca
	call LoadSpriteFromMainTable                                       ; $5179: $cd $16 $0e
	ret                                              ; $517c: $c9


	add  e                                           ; $517d: $83
	ld   d, c                                        ; $517e: $51
	sbc  d                                           ; $517f: $9a
	ld   d, c                                        ; $5180: $51
	and  e                                           ; $5181: $a3
	ld   d, c                                        ; $5182: $51
	stop                                             ; $5183: $10 $00
	dec  b                                           ; $5185: $05
	ld   bc, $021e                                   ; $5186: $01 $1e $02
	add  hl, bc                                      ; $5189: $09
	nop                                              ; $518a: $00
	inc  b                                           ; $518b: $04
	ld   bc, $021e                                   ; $518c: $01 $1e $02
	add  hl, bc                                      ; $518f: $09
	nop                                              ; $5190: $00
	inc  b                                           ; $5191: $04
	ld   bc, $021e                                   ; $5192: $01 $1e $02
	ld   hl, $3203                                   ; $5195: $21 $03 $32
	inc  b                                           ; $5198: $04
	nop                                              ; $5199: $00
	jr   nz, jr_021_519c                             ; $519a: $20 $00

jr_021_519c:
	dec  c                                           ; $519c: $0d
	ld   bc, $0268                                   ; $519d: $01 $68 $02
	ld   b, a                                        ; $51a0: $47
	dec  b                                           ; $51a1: $05
	nop                                              ; $51a2: $00
	jr   nz, jr_021_51a5                             ; $51a3: $20 $00

jr_021_51a5:
	dec  c                                           ; $51a5: $0d
	ld   bc, $025a                                   ; $51a6: $01 $5a $02
	ld   a, [bc]                                     ; $51a9: $0a
	ld   b, $09                                      ; $51aa: $06 $09
	rlca                                             ; $51ac: $07
	add  hl, bc                                      ; $51ad: $09
	ld   b, $09                                      ; $51ae: $06 $09
	rlca                                             ; $51b0: $07
	jr   nc, jr_021_51b9                             ; $51b1: $30 $06

	nop                                              ; $51b3: $00

Call_021_51b4:
	ld   a, $76                                      ; $51b4: $3e $76
	ld   [$ca7a], a                                  ; $51b6: $ea $7a $ca

jr_021_51b9:
	ld   a, $59                                      ; $51b9: $3e $59
	ld   [$ca7b], a                                  ; $51bb: $ea $7b $ca
	ld   a, [$ca86]                                  ; $51be: $fa $86 $ca
	sla  a                                           ; $51c1: $cb $27
	ld   hl, $51fb                                   ; $51c3: $21 $fb $51
	ld   d, $00                                      ; $51c6: $16 $00
	ld   e, a                                        ; $51c8: $5f
	add  hl, de                                      ; $51c9: $19
	ld   a, [hl+]                                    ; $51ca: $2a
	ld   h, [hl]                                     ; $51cb: $66
	ld   l, a                                        ; $51cc: $6f
	ld   de, $ca77                                   ; $51cd: $11 $77 $ca
	push hl                                          ; $51d0: $e5
	ld   a, $03                                      ; $51d1: $3e $03
	ld   [$ca8e], a                                  ; $51d3: $ea $8e $ca
	call Call_021_412a                               ; $51d6: $cd $2a $41
	pop  hl                                          ; $51d9: $e1
	jr   nc, jr_021_51e7                             ; $51da: $30 $0b

	ld   a, [$ca77]                                  ; $51dc: $fa $77 $ca
	and  a                                           ; $51df: $a7
	jr   nz, jr_021_51e7                             ; $51e0: $20 $05

	ld   a, $01                                      ; $51e2: $3e $01
	ld   [$ca76], a                                  ; $51e4: $ea $76 $ca

jr_021_51e7:
	ld   a, $04                                      ; $51e7: $3e $04
	ld   [wSpriteGroup], a                                  ; $51e9: $ea $1a $c2
	ld   a, [$ca7a]                                  ; $51ec: $fa $7a $ca
	ld   b, a                                        ; $51ef: $47
	ld   a, [$ca7b]                                  ; $51f0: $fa $7b $ca
	ld   c, a                                        ; $51f3: $4f
	ld   a, [$ca78]                                  ; $51f4: $fa $78 $ca
	call LoadSpriteFromMainTable                                       ; $51f7: $cd $16 $0e
	ret                                              ; $51fa: $c9


	ld   bc, $3052                                   ; $51fb: $01 $52 $30
	ld   d, d                                        ; $51fe: $52
	ld   c, e                                        ; $51ff: $4b
	ld   d, d                                        ; $5200: $52
	inc  h                                           ; $5201: $24
	ld   [$0906], sp                                 ; $5202: $08 $06 $09
	inc  b                                           ; $5205: $04
	ld   a, [bc]                                     ; $5206: $0a
	inc  b                                           ; $5207: $04
	dec  bc                                          ; $5208: $0b
	ld   b, $0d                                      ; $5209: $06 $0d
	inc  b                                           ; $520b: $04
	inc  c                                           ; $520c: $0c
	inc  b                                           ; $520d: $04
	dec  c                                           ; $520e: $0d
	rlca                                             ; $520f: $07
	ld   a, [bc]                                     ; $5210: $0a
	dec  bc                                          ; $5211: $0b
	add  hl, bc                                      ; $5212: $09
	rlca                                             ; $5213: $07
	ld   a, [bc]                                     ; $5214: $0a
	inc  b                                           ; $5215: $04
	dec  bc                                          ; $5216: $0b
	ld   b, $0d                                      ; $5217: $06 $0d
	inc  b                                           ; $5219: $04
	inc  c                                           ; $521a: $0c
	inc  b                                           ; $521b: $04
	dec  c                                           ; $521c: $0d
	rlca                                             ; $521d: $07
	ld   a, [bc]                                     ; $521e: $0a
	dec  bc                                          ; $521f: $0b
	add  hl, bc                                      ; $5220: $09
	rlca                                             ; $5221: $07
	ld   a, [bc]                                     ; $5222: $0a
	inc  b                                           ; $5223: $04
	dec  bc                                          ; $5224: $0b
	ld   b, $0d                                      ; $5225: $06 $0d
	inc  b                                           ; $5227: $04
	inc  c                                           ; $5228: $0c
	inc  b                                           ; $5229: $04
	dec  c                                           ; $522a: $0d
	ld   a, [bc]                                     ; $522b: $0a
	ld   c, $3c                                      ; $522c: $0e $3c
	rrca                                             ; $522e: $0f
	nop                                              ; $522f: $00
	ld   c, b                                        ; $5230: $48
	ld   [$0905], sp                                 ; $5231: $08 $05 $09
	inc  bc                                          ; $5234: $03
	ld   a, [bc]                                     ; $5235: $0a
	inc  b                                           ; $5236: $04
	db   $10                                         ; $5237: $10
	rlca                                             ; $5238: $07
	ld   de, $1202                                   ; $5239: $11 $02 $12
	ld   [bc], a                                     ; $523c: $02
	inc  de                                          ; $523d: $13
	jr   nz, jr_021_5254                             ; $523e: $20 $14

	dec  b                                           ; $5240: $05
	dec  d                                           ; $5241: $15
	rlca                                             ; $5242: $07
	ld   d, $0b                                      ; $5243: $16 $0b
	rla                                              ; $5245: $17
	db   $10                                         ; $5246: $10
	jr   jr_021_527f                                 ; $5247: $18 $36

	ld   [$4800], sp                                 ; $5249: $08 $00 $48
	ld   [$0905], sp                                 ; $524c: $08 $05 $09
	inc  bc                                          ; $524f: $03
	ld   a, [bc]                                     ; $5250: $0a
	ld   [bc], a                                     ; $5251: $02
	db   $10                                         ; $5252: $10
	inc  b                                           ; $5253: $04

jr_021_5254:
	ld   de, $1203                                   ; $5254: $11 $03 $12
	ld   [bc], a                                     ; $5257: $02
	db   $10                                         ; $5258: $10
	inc  b                                           ; $5259: $04
	ld   de, $1203                                   ; $525a: $11 $03 $12
	jr   nz, @+$16                                   ; $525d: $20 $14

	dec  b                                           ; $525f: $05
	dec  d                                           ; $5260: $15
	rlca                                             ; $5261: $07
	ld   d, $0b                                      ; $5262: $16 $0b
	rla                                              ; $5264: $17
	db   $10                                         ; $5265: $10
	jr   @+$35                                       ; $5266: $18 $33

	add  hl, de                                      ; $5268: $19
	nop                                              ; $5269: $00

Call_021_526a:
	ld   a, $2c                                      ; $526a: $3e $2c
	ld   [$ca82], a                                  ; $526c: $ea $82 $ca
	ld   a, $60                                      ; $526f: $3e $60
	ld   [$ca83], a                                  ; $5271: $ea $83 $ca
	ld   a, [$ca86]                                  ; $5274: $fa $86 $ca
	sla  a                                           ; $5277: $cb $27
	ld   hl, $52b1                                   ; $5279: $21 $b1 $52
	ld   d, $00                                      ; $527c: $16 $00
	ld   e, a                                        ; $527e: $5f

jr_021_527f:
	add  hl, de                                      ; $527f: $19
	ld   a, [hl+]                                    ; $5280: $2a
	ld   h, [hl]                                     ; $5281: $66
	ld   l, a                                        ; $5282: $6f
	ld   de, $ca7f                                   ; $5283: $11 $7f $ca
	push hl                                          ; $5286: $e5
	ld   a, $1d                                      ; $5287: $3e $1d
	ld   [$ca8e], a                                  ; $5289: $ea $8e $ca
	call Call_021_412a                               ; $528c: $cd $2a $41
	pop  hl                                          ; $528f: $e1
	jr   nc, jr_021_529d                             ; $5290: $30 $0b

	ld   a, [$ca7f]                                  ; $5292: $fa $7f $ca
	and  a                                           ; $5295: $a7
	jr   nz, jr_021_529d                             ; $5296: $20 $05

	ld   a, $01                                      ; $5298: $3e $01
	ld   [$ca7e], a                                  ; $529a: $ea $7e $ca

jr_021_529d:
	ld   a, $04                                      ; $529d: $3e $04
	ld   [wSpriteGroup], a                                  ; $529f: $ea $1a $c2
	ld   a, [$ca82]                                  ; $52a2: $fa $82 $ca
	ld   b, a                                        ; $52a5: $47
	ld   a, [$ca83]                                  ; $52a6: $fa $83 $ca
	ld   c, a                                        ; $52a9: $4f
	ld   a, [$ca80]                                  ; $52aa: $fa $80 $ca
	call LoadSpriteFromMainTable                                       ; $52ad: $cd $16 $0e
	ret                                              ; $52b0: $c9


	or   a                                           ; $52b1: $b7
	ld   d, d                                        ; $52b2: $52
	ld   hl, sp+$52                                  ; $52b3: $f8 $52
	dec  d                                           ; $52b5: $15
	ld   d, e                                        ; $52b6: $53
	dec  d                                           ; $52b7: $15
	db   $10                                         ; $52b8: $10
	dec  b                                           ; $52b9: $05
	nop                                              ; $52ba: $00
	dec  b                                           ; $52bb: $05
	ld   bc, $0205                                   ; $52bc: $01 $05 $02
	dec  b                                           ; $52bf: $05
	inc  bc                                          ; $52c0: $03
	dec  b                                           ; $52c1: $05
	inc  b                                           ; $52c2: $04
	inc  b                                           ; $52c3: $04
	db   $10                                         ; $52c4: $10
	inc  bc                                          ; $52c5: $03
	dec  b                                           ; $52c6: $05
	inc  bc                                          ; $52c7: $03
	ld   b, $04                                      ; $52c8: $06 $04
	db   $10                                         ; $52ca: $10
	inc  b                                           ; $52cb: $04
	rlca                                             ; $52cc: $07
	dec  b                                           ; $52cd: $05
	nop                                              ; $52ce: $00
	dec  b                                           ; $52cf: $05
	ld   bc, $0205                                   ; $52d0: $01 $05 $02
	dec  b                                           ; $52d3: $05
	inc  bc                                          ; $52d4: $03
	dec  b                                           ; $52d5: $05
	inc  b                                           ; $52d6: $04
	inc  b                                           ; $52d7: $04
	db   $10                                         ; $52d8: $10
	inc  bc                                          ; $52d9: $03
	dec  b                                           ; $52da: $05
	inc  bc                                          ; $52db: $03
	ld   b, $04                                      ; $52dc: $06 $04
	db   $10                                         ; $52de: $10
	inc  b                                           ; $52df: $04
	rlca                                             ; $52e0: $07
	dec  b                                           ; $52e1: $05
	nop                                              ; $52e2: $00
	dec  b                                           ; $52e3: $05
	ld   bc, $0205                                   ; $52e4: $01 $05 $02
	dec  b                                           ; $52e7: $05
	inc  bc                                          ; $52e8: $03
	dec  b                                           ; $52e9: $05
	inc  b                                           ; $52ea: $04
	inc  b                                           ; $52eb: $04
	db   $10                                         ; $52ec: $10
	inc  bc                                          ; $52ed: $03
	dec  b                                           ; $52ee: $05
	inc  bc                                          ; $52ef: $03
	ld   b, $04                                      ; $52f0: $06 $04
	db   $10                                         ; $52f2: $10
	inc  b                                           ; $52f3: $04
	rlca                                             ; $52f4: $07
	ld   b, [hl]                                     ; $52f5: $46
	stop                                             ; $52f6: $10 $00
	cpl                                              ; $52f8: $2f
	db   $10                                         ; $52f9: $10
	ld   b, $00                                      ; $52fa: $06 $00
	ld   b, $01                                      ; $52fc: $06 $01
	rlca                                             ; $52fe: $07
	ld   [bc], a                                     ; $52ff: $02
	rlca                                             ; $5300: $07
	inc  bc                                          ; $5301: $03
	rlca                                             ; $5302: $07
	inc  b                                           ; $5303: $04
	rrca                                             ; $5304: $0f
	db   $10                                         ; $5305: $10
	jr   nz, jr_021_5310                             ; $5306: $20 $08

	ld   b, $09                                      ; $5308: $06 $09
	ld   b, $0a                                      ; $530a: $06 $0a
	ld   b, $09                                      ; $530c: $06 $09
	ld   b, $0a                                      ; $530e: $06 $0a

jr_021_5310:
	ld   b, $0b                                      ; $5310: $06 $0b
	ccf                                              ; $5312: $3f
	inc  c                                           ; $5313: $0c
	nop                                              ; $5314: $00
	cpl                                              ; $5315: $2f
	db   $10                                         ; $5316: $10
	ld   b, $00                                      ; $5317: $06 $00
	ld   b, $01                                      ; $5319: $06 $01
	rlca                                             ; $531b: $07
	ld   [bc], a                                     ; $531c: $02
	rlca                                             ; $531d: $07
	inc  bc                                          ; $531e: $03
	rlca                                             ; $531f: $07
	inc  b                                           ; $5320: $04
	ld   [bc], a                                     ; $5321: $02
	db   $10                                         ; $5322: $10
	inc  b                                           ; $5323: $04
	ld   [$1003], sp                                 ; $5324: $08 $03 $10
	ld   [bc], a                                     ; $5327: $02
	db   $10                                         ; $5328: $10
	inc  b                                           ; $5329: $04
	ld   [$1003], sp                                 ; $532a: $08 $03 $10
	jr   nz, @+$0a                                   ; $532d: $20 $08

	rlca                                             ; $532f: $07
	dec  c                                           ; $5330: $0d
	rlca                                             ; $5331: $07
	ld   c, $4c                                      ; $5332: $0e $4c
	rrca                                             ; $5334: $0f
	nop                                              ; $5335: $00
	call ClearOam                                       ; $5336: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5339: $cd $d3 $2e
	call Call_021_5120                               ; $533c: $cd $20 $51
	call Call_021_51b4                               ; $533f: $cd $b4 $51
	call Call_021_526a                               ; $5342: $cd $6a $52
	ld   a, [wInGameButtonsHeld]                                  ; $5345: $fa $0f $c2
	and  $82                                         ; $5348: $e6 $82
	jp   z, Jump_021_5358                            ; $534a: $ca $58 $53

	ld   a, [$caa5]                                  ; $534d: $fa $a5 $ca
	inc  a                                           ; $5350: $3c
	cp   $0b                                         ; $5351: $fe $0b
	jr   nc, jr_021_5358                             ; $5353: $30 $03

	ld   [$caa5], a                                  ; $5355: $ea $a5 $ca

Jump_021_5358:
jr_021_5358:
	ld   a, [$caa6]                                  ; $5358: $fa $a6 $ca
	cp   $03                                         ; $535b: $fe $03
	jr   z, jr_021_53bb                              ; $535d: $28 $5c

	ld   a, [$caa4]                                  ; $535f: $fa $a4 $ca
	and  a                                           ; $5362: $a7
	jr   nz, jr_021_538f                             ; $5363: $20 $2a

	ld   hl, $afd0                                   ; $5365: $21 $d0 $af

	M_FarCall LoadStatBars

	ld   hl, $caa5                                   ; $537c: $21 $a5 $ca
	inc  [hl]                                        ; $537f: $34
	ld   a, [hl]                                     ; $5380: $7e
	cp   $0b                                         ; $5381: $fe $0b
	jr   c, jr_021_538e                              ; $5383: $38 $09

	ld   a, $01                                      ; $5385: $3e $01
	ld   [$caa4], a                                  ; $5387: $ea $a4 $ca
	xor  a                                           ; $538a: $af
	ld   [$caa5], a                                  ; $538b: $ea $a5 $ca

jr_021_538e:
	ret                                              ; $538e: $c9


jr_021_538f:
	ld   hl, $ca97                                   ; $538f: $21 $97 $ca

	M_FarCall LoadStatBars

	ld   hl, $caa5                                   ; $53a6: $21 $a5 $ca
	inc  [hl]                                        ; $53a9: $34
	ld   a, [hl]                                     ; $53aa: $7e
	cp   $0b                                         ; $53ab: $fe $0b
	jr   c, jr_021_53ba                              ; $53ad: $38 $0b

	xor  a                                           ; $53af: $af
	ld   [$caa4], a                                  ; $53b0: $ea $a4 $ca
	ld   [$caa5], a                                  ; $53b3: $ea $a5 $ca
	ld   hl, $caa6                                   ; $53b6: $21 $a6 $ca
	inc  [hl]                                        ; $53b9: $34

jr_021_53ba:
	ret                                              ; $53ba: $c9


jr_021_53bb:
	ld   a, [$ca97]                                  ; $53bb: $fa $97 $ca
	ld   [$afd0], a                                  ; $53be: $ea $d0 $af
	ld   a, [$ca98]                                  ; $53c1: $fa $98 $ca
	ld   [sSramVals2+SRAM2_INTELLECT], a                                  ; $53c4: $ea $d1 $af
	ld   a, [$ca99]                                  ; $53c7: $fa $99 $ca
	ld   [sSramVals2+SRAM2_SPIRIT_POWER], a                                  ; $53ca: $ea $d2 $af
	ld   a, [$ca9a]                                  ; $53cd: $fa $9a $ca
	ld   [sSramVals2+SRAM2_GUTS], a                                  ; $53d0: $ea $d3 $af
	ld   a, [$ca9b]                                  ; $53d3: $fa $9b $ca
	ld   [sSramVals2+SRAM2_SPEED], a                                  ; $53d6: $ea $d4 $af
	ld   a, [$ca9c]                                  ; $53d9: $fa $9c $ca
	ld   [sSramVals2+SRAM2_ACCURACY], a                                  ; $53dc: $ea $d5 $af
	ld   hl, wGameSubstate                                   ; $53df: $21 $a1 $c2
	inc  [hl]                                        ; $53e2: $34
	ret                                              ; $53e3: $c9


	ld   a, [$b1b4]                                  ; $53e4: $fa $b4 $b1
	and  a                                           ; $53e7: $a7
	jr   nz, jr_021_5403                             ; $53e8: $20 $19

	ld   a, [wInGameButtonsHeld]                                  ; $53ea: $fa $0f $c2
	and  $02                                         ; $53ed: $e6 $02
	jp   nz, Jump_021_5403                           ; $53ef: $c2 $03 $54

	ld   a, [wInGameButtonsPressed]                                  ; $53f2: $fa $10 $c2
	and  $03                                         ; $53f5: $e6 $03
	jr   nz, jr_021_5403                             ; $53f7: $20 $0a

	ld   a, [$ca96]                                  ; $53f9: $fa $96 $ca
	inc  a                                           ; $53fc: $3c
	ld   [$ca96], a                                  ; $53fd: $ea $96 $ca
	cp   $b4                                         ; $5400: $fe $b4
	ret  nz                                          ; $5402: $c0

Jump_021_5403:
jr_021_5403:
	ld   b, $2f                                      ; $5403: $06 $2f
	ld   hl, $67e3                                   ; $5405: $21 $e3 $67
	call Call_021_4484                               ; $5408: $cd $84 $44
	ld   a, [wNapOrTrainReturnState]                                  ; $540b: $fa $4c $ca
	ld   [wGameState], a                                  ; $540e: $ea $a0 $c2
	ld   a, [wNapOrTrainReturnSubstate]                                  ; $5411: $fa $4d $ca
	ld   [wGameSubstate], a                                  ; $5414: $ea $a1 $c2
	ret                                              ; $5417: $c9


GameState2a_IrisTraining::
	ld   a, [wGameSubstate]                                  ; $5418: $fa $a1 $c2
	rst  JumpTable                                         ; $541b: $df
	inc  h                                           ; $541c: $24
	ld   d, h                                        ; $541d: $54
	ld   a, e                                        ; $541e: $7b
	ld   d, [hl]                                     ; $541f: $56
	jp   nc, $8058                                   ; $5420: $d2 $58 $80

	ld   e, c                                        ; $5423: $59
	call TurnOnLCD                                       ; $5424: $cd $09 $09
	ld   a, $ff                                      ; $5427: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $5429: $ea $0e $c2
	ld   a, $0c                                      ; $542c: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $542e: $ea $13 $c2
	ld   a, $04                                      ; $5431: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $5433: $ea $14 $c2
	ld   a, [wLCDC]                                  ; $5436: $fa $03 $c2
	and  $e0                                         ; $5439: $e6 $e0
	or   $07                                         ; $543b: $f6 $07
	ld   [wLCDC], a                                  ; $543d: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $5440: $fa $93 $c2
	push af                                          ; $5443: $f5
	ld   a, $07                                      ; $5444: $3e $07
	ld   [wWramBank], a                                  ; $5446: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5449: $e0 $70
	ld   a, $2c                                      ; $544b: $3e $2c
	ld   hl, $d000                                   ; $544d: $21 $00 $d0
	ld   de, $4eb7                                   ; $5450: $11 $b7 $4e
	call RLEXorCopy                                       ; $5453: $cd $d2 $09
	ld   c, $80                                      ; $5456: $0e $80
	ld   de, $8000                                   ; $5458: $11 $00 $80
	ld   a, $07                                      ; $545b: $3e $07
	ld   hl, $d000                                   ; $545d: $21 $00 $d0
	ld   b, $40                                      ; $5460: $06 $40
	call EnqueueHDMATransfer                                       ; $5462: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5465: $cf
	ld   c, $80                                      ; $5466: $0e $80
	ld   de, $8400                                   ; $5468: $11 $00 $84
	ld   a, $07                                      ; $546b: $3e $07
	ld   hl, $d400                                   ; $546d: $21 $00 $d4
	ld   b, $40                                      ; $5470: $06 $40
	call EnqueueHDMATransfer                                       ; $5472: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5475: $cf
	ld   c, $80                                      ; $5476: $0e $80
	ld   de, $8800                                   ; $5478: $11 $00 $88
	ld   a, $07                                      ; $547b: $3e $07
	ld   hl, $d800                                   ; $547d: $21 $00 $d8
	ld   b, $40                                      ; $5480: $06 $40
	call EnqueueHDMATransfer                                       ; $5482: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5485: $cf
	ld   c, $80                                      ; $5486: $0e $80
	ld   de, $8c00                                   ; $5488: $11 $00 $8c
	ld   a, $07                                      ; $548b: $3e $07
	ld   hl, $dc00                                   ; $548d: $21 $00 $dc
	ld   b, $40                                      ; $5490: $06 $40
	call EnqueueHDMATransfer                                       ; $5492: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5495: $cf
	ld   a, $2e                                      ; $5496: $3e $2e
	ld   hl, $d000                                   ; $5498: $21 $00 $d0
	ld   de, $4c3a                                   ; $549b: $11 $3a $4c
	call RLEXorCopy                                       ; $549e: $cd $d2 $09
	ld   c, $80                                      ; $54a1: $0e $80
	ld   de, $9000                                   ; $54a3: $11 $00 $90
	ld   a, $07                                      ; $54a6: $3e $07
	ld   hl, $d000                                   ; $54a8: $21 $00 $d0
	ld   b, $40                                      ; $54ab: $06 $40
	call EnqueueHDMATransfer                                       ; $54ad: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54b0: $cf
	ld   c, $80                                      ; $54b1: $0e $80
	ld   de, $9400                                   ; $54b3: $11 $00 $94
	ld   a, $07                                      ; $54b6: $3e $07
	ld   hl, $d400                                   ; $54b8: $21 $00 $d4
	ld   b, $40                                      ; $54bb: $06 $40
	call EnqueueHDMATransfer                                       ; $54bd: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54c0: $cf
	ld   c, $81                                      ; $54c1: $0e $81
	ld   de, $8000                                   ; $54c3: $11 $00 $80
	ld   a, $07                                      ; $54c6: $3e $07
	ld   hl, $d800                                   ; $54c8: $21 $00 $d8
	ld   b, $40                                      ; $54cb: $06 $40
	call EnqueueHDMATransfer                                       ; $54cd: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54d0: $cf
	ld   c, $81                                      ; $54d1: $0e $81
	ld   de, $8400                                   ; $54d3: $11 $00 $84
	ld   a, $07                                      ; $54d6: $3e $07
	ld   hl, $dc00                                   ; $54d8: $21 $00 $dc
	ld   b, $40                                      ; $54db: $06 $40
	call EnqueueHDMATransfer                                       ; $54dd: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54e0: $cf
	ld   a, $2e                                      ; $54e1: $3e $2e
	ld   hl, $d000                                   ; $54e3: $21 $00 $d0
	ld   de, $462f                                   ; $54e6: $11 $2f $46
if def(VWF)
	call NapOrTrainBank1_8800hHook
else
	call RLEXorCopy                                       ; $54e9: $cd $d2 $09
endc
	ld   c, $81                                      ; $54ec: $0e $81
	ld   de, $8800                                   ; $54ee: $11 $00 $88
	ld   a, $07                                      ; $54f1: $3e $07
	ld   hl, $d000                                   ; $54f3: $21 $00 $d0
	ld   b, $40                                      ; $54f6: $06 $40
	call EnqueueHDMATransfer                                       ; $54f8: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54fb: $cf
	ld   c, $81                                      ; $54fc: $0e $81
	ld   de, $8c00                                   ; $54fe: $11 $00 $8c
	ld   a, $07                                      ; $5501: $3e $07
	ld   hl, $d400                                   ; $5503: $21 $00 $d4
	ld   b, $40                                      ; $5506: $06 $40
	call EnqueueHDMATransfer                                       ; $5508: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $550b: $cf
	ld   c, $81                                      ; $550c: $0e $81
	ld   de, $9000                                   ; $550e: $11 $00 $90
	ld   a, $07                                      ; $5511: $3e $07
	ld   hl, $d800                                   ; $5513: $21 $00 $d8
	ld   b, $40                                      ; $5516: $06 $40
	call EnqueueHDMATransfer                                       ; $5518: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $551b: $cf
	ld   c, $81                                      ; $551c: $0e $81
	ld   de, $9400                                   ; $551e: $11 $00 $94
	ld   a, $07                                      ; $5521: $3e $07
	ld   hl, $dc00                                   ; $5523: $21 $00 $dc
	ld   b, $40                                      ; $5526: $06 $40
	call EnqueueHDMATransfer                                       ; $5528: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $552b: $cf
	ld   a, $2f                                      ; $552c: $3e $2f
	ld   hl, $d000                                   ; $552e: $21 $00 $d0
	ld   de, $5283                                   ; $5531: $11 $83 $52
if def(VWF)
	call NapOrTrainTileMapHook
else
	call RLEXorCopy                                       ; $5534: $cd $d2 $09
endc
	ld   c, $80                                      ; $5537: $0e $80
	ld   de, $9800                                   ; $5539: $11 $00 $98
	ld   a, $07                                      ; $553c: $3e $07
	ld   hl, $d000                                   ; $553e: $21 $00 $d0
	ld   b, $40                                      ; $5541: $06 $40
	call EnqueueHDMATransfer                                       ; $5543: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5546: $cf
	ld   a, $2f                                      ; $5547: $3e $2f
	ld   hl, $d000                                   ; $5549: $21 $00 $d0
	ld   de, $5e08                                   ; $554c: $11 $08 $5e
	call RLEXorCopy                                       ; $554f: $cd $d2 $09
	ld   c, $81                                      ; $5552: $0e $81
	ld   de, $9800                                   ; $5554: $11 $00 $98
	ld   a, $07                                      ; $5557: $3e $07
	ld   hl, $d000                                   ; $5559: $21 $00 $d0
	ld   b, $40                                      ; $555c: $06 $40
	call EnqueueHDMATransfer                                       ; $555e: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5561: $cf
	pop  af                                          ; $5562: $f1
	ld   [wWramBank], a                                  ; $5563: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5566: $e0 $70
	call ClearOam                                       ; $5568: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $556b: $cd $c9 $2e
	ld   a, $0a                                      ; $556e: $3e $0a
	ld   [wRandomNumRange], a                                  ; $5570: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $5573: $cd $70 $0c
	xor  a                                           ; $5576: $af
	ld   [$ca6e], a                                  ; $5577: $ea $6e $ca
	ld   [$ca76], a                                  ; $557a: $ea $76 $ca
	ld   [$ca7e], a                                  ; $557d: $ea $7e $ca
	ld   [$ca94], a                                  ; $5580: $ea $94 $ca
	ld   [$ca87], a                                  ; $5583: $ea $87 $ca
	ld   [$ca8f], a                                  ; $5586: $ea $8f $ca
	ld   [$ca93], a                                  ; $5589: $ea $93 $ca
	ld   [$ca96], a                                  ; $558c: $ea $96 $ca
	ld   a, $02                                      ; $558f: $3e $02
	call Call_021_416b                               ; $5591: $cd $6b $41
	call Call_021_55ed                               ; $5594: $cd $ed $55
	call TurnOffLCD                                       ; $5597: $cd $e3 $08
	ld   a, $00                                      ; $559a: $3e $00
	ld   b, $04                                      ; $559c: $06 $04
	ld   c, $00                                      ; $559e: $0e $00
	ld   de, $0608                                   ; $55a0: $11 $08 $06
	ld   hl, $9820                                   ; $55a3: $21 $20 $98
	push af                                          ; $55a6: $f5
	ld   a, $79                                      ; $55a7: $3e $79
	ld   [wFarCallAddr], a                                  ; $55a9: $ea $98 $c2
	ld   a, $5b                                      ; $55ac: $3e $5b
	ld   [wFarCallAddr+1], a                                  ; $55ae: $ea $99 $c2
	ld   a, $0c                                      ; $55b1: $3e $0c
	ld   [wFarCallBank], a                                  ; $55b3: $ea $9a $c2
	pop  af                                          ; $55b6: $f1
	call FarCall                                       ; $55b7: $cd $62 $09
	call TurnOnLCD                                       ; $55ba: $cd $09 $09
	ld   hl, $afd0                                   ; $55bd: $21 $d0 $af

	M_FarCall LoadStatBars

	call Call_021_56d3                               ; $55d4: $cd $d3 $56
	call Call_021_5780                               ; $55d7: $cd $80 $57
	call Call_021_582c                               ; $55da: $cd $2c $58
	call AnimateAllAnimatedSpriteSpecs                                       ; $55dd: $cd $d3 $2e
	ld   c, $2f                                      ; $55e0: $0e $2f
	ld   de, $6763                                   ; $55e2: $11 $63 $67
	call Call_021_44ac                               ; $55e5: $cd $ac $44
	ld   hl, wGameSubstate                                   ; $55e8: $21 $a1 $c2
	inc  [hl]                                        ; $55eb: $34
	ret                                              ; $55ec: $c9


Call_021_55ed:
	ld   a, [$ca86]                                  ; $55ed: $fa $86 $ca
	cp   $02                                         ; $55f0: $fe $02
	jr   z, jr_021_5650                              ; $55f2: $28 $5c

	cp   $01                                         ; $55f4: $fe $01
	jr   z, jr_021_5624                              ; $55f6: $28 $2c

	ld   a, $3c                                      ; $55f8: $3e $3c
	ld   [$ca8e], a                                  ; $55fa: $ea $8e $ca
	ld   hl, $5737                                   ; $55fd: $21 $37 $57
	ld   de, wKouboChosen0idxed                                   ; $5600: $11 $6f $ca
	call Call_021_411c                               ; $5603: $cd $1c $41
	ld   a, $3c                                      ; $5606: $3e $3c
	ld   [$ca8e], a                                  ; $5608: $ea $8e $ca
	ld   hl, $57cd                                   ; $560b: $21 $cd $57
	ld   de, $ca77                                   ; $560e: $11 $77 $ca
	call Call_021_411c                               ; $5611: $cd $1c $41
	ld   a, $54                                      ; $5614: $3e $54
	ld   [$ca8e], a                                  ; $5616: $ea $8e $ca
	ld   hl, $5879                                   ; $5619: $21 $79 $58
	ld   de, $ca7f                                   ; $561c: $11 $7f $ca
	call Call_021_411c                               ; $561f: $cd $1c $41
	jr   jr_021_567a                                 ; $5622: $18 $56

jr_021_5624:
	ld   a, $3c                                      ; $5624: $3e $3c
	ld   [$ca8e], a                                  ; $5626: $ea $8e $ca
	ld   hl, $574c                                   ; $5629: $21 $4c $57
	ld   de, wKouboChosen0idxed                                   ; $562c: $11 $6f $ca
	call Call_021_411c                               ; $562f: $cd $1c $41
	ld   a, $3c                                      ; $5632: $3e $3c
	ld   [$ca8e], a                                  ; $5634: $ea $8e $ca
	ld   hl, $57e4                                   ; $5637: $21 $e4 $57
	ld   de, $ca77                                   ; $563a: $11 $77 $ca
	call Call_021_411c                               ; $563d: $cd $1c $41
	ld   a, $54                                      ; $5640: $3e $54
	ld   [$ca8e], a                                  ; $5642: $ea $8e $ca
	ld   hl, $587e                                   ; $5645: $21 $7e $58
	ld   de, $ca7f                                   ; $5648: $11 $7f $ca
	call Call_021_411c                               ; $564b: $cd $1c $41
	jr   jr_021_567a                                 ; $564e: $18 $2a

jr_021_5650:
	ld   a, $3c                                      ; $5650: $3e $3c
	ld   [$ca8e], a                                  ; $5652: $ea $8e $ca
	ld   hl, $5761                                   ; $5655: $21 $61 $57
	ld   de, wKouboChosen0idxed                                   ; $5658: $11 $6f $ca
	call Call_021_411c                               ; $565b: $cd $1c $41
	ld   a, $3c                                      ; $565e: $3e $3c
	ld   [$ca8e], a                                  ; $5660: $ea $8e $ca
	ld   hl, $580b                                   ; $5663: $21 $0b $58
	ld   de, $ca77                                   ; $5666: $11 $77 $ca
	call Call_021_411c                               ; $5669: $cd $1c $41
	ld   a, $54                                      ; $566c: $3e $54
	ld   [$ca8e], a                                  ; $566e: $ea $8e $ca
	ld   hl, $58a5                                   ; $5671: $21 $a5 $58
	ld   de, $ca7f                                   ; $5674: $11 $7f $ca
	call Call_021_411c                               ; $5677: $cd $1c $41

jr_021_567a:
	ret                                              ; $567a: $c9


	ld   hl, $afd0                                   ; $567b: $21 $d0 $af

	M_FarCall LoadStatBars

	ld   a, [$ca87]                                  ; $5692: $fa $87 $ca
	cp   $01                                         ; $5695: $fe $01
	jr   z, jr_021_56c6                              ; $5697: $28 $2d

	call ClearOam                                       ; $5699: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $569c: $cd $d3 $2e
	ld   a, [$ca6e]                                  ; $569f: $fa $6e $ca
	and  a                                           ; $56a2: $a7
	jr   z, jr_021_56bc                              ; $56a3: $28 $17

	ld   a, [$ca76]                                  ; $56a5: $fa $76 $ca
	and  a                                           ; $56a8: $a7
	jr   z, jr_021_56bc                              ; $56a9: $28 $11

	ld   a, [$ca7e]                                  ; $56ab: $fa $7e $ca
	and  a                                           ; $56ae: $a7
	jr   z, jr_021_56bc                              ; $56af: $28 $0b

	xor  a                                           ; $56b1: $af
	ld   [$ca94], a                                  ; $56b2: $ea $94 $ca
	ld   a, [$ca87]                                  ; $56b5: $fa $87 $ca
	inc  a                                           ; $56b8: $3c
	ld   [$ca87], a                                  ; $56b9: $ea $87 $ca

jr_021_56bc:
	call Call_021_56d3                               ; $56bc: $cd $d3 $56
	call Call_021_5780                               ; $56bf: $cd $80 $57
	call Call_021_582c                               ; $56c2: $cd $2c $58
	ret                                              ; $56c5: $c9


jr_021_56c6:
	ld   a, $50                                      ; $56c6: $3e $50
	ld   [$ca9f], a                                  ; $56c8: $ea $9f $ca
	call Call_021_44d4                               ; $56cb: $cd $d4 $44
	ld   hl, wGameSubstate                                   ; $56ce: $21 $a1 $c2
	inc  [hl]                                        ; $56d1: $34
	ret                                              ; $56d2: $c9


Call_021_56d3:
	ld   a, $6c                                      ; $56d3: $3e $6c
	ld   [$ca72], a                                  ; $56d5: $ea $72 $ca
	ld   a, $59                                      ; $56d8: $3e $59
	ld   [$ca73], a                                  ; $56da: $ea $73 $ca
	ld   a, [$ca86]                                  ; $56dd: $fa $86 $ca
	sla  a                                           ; $56e0: $cb $27
	ld   hl, $5731                                   ; $56e2: $21 $31 $57
	ld   d, $00                                      ; $56e5: $16 $00
	ld   e, a                                        ; $56e7: $5f
	add  hl, de                                      ; $56e8: $19
	ld   a, [hl+]                                    ; $56e9: $2a
	ld   h, [hl]                                     ; $56ea: $66
	ld   l, a                                        ; $56eb: $6f
	ld   a, [$ca71]                                  ; $56ec: $fa $71 $ca
	cp   $0f                                         ; $56ef: $fe $0f
	jr   nz, jr_021_5703                             ; $56f1: $20 $10

	ld   a, [$ca94]                                  ; $56f3: $fa $94 $ca
	and  a                                           ; $56f6: $a7
	jr   nz, jr_021_5703                             ; $56f7: $20 $0a

	ld   a, $ff                                      ; $56f9: $3e $ff
	ld   [$ca94], a                                  ; $56fb: $ea $94 $ca
	ld   a, $02                                      ; $56fe: $3e $02
	call Call_021_4481                               ; $5700: $cd $81 $44

jr_021_5703:
	ld   de, wKouboChosen0idxed                                   ; $5703: $11 $6f $ca
	push hl                                          ; $5706: $e5
	ld   a, $3c                                      ; $5707: $3e $3c
	ld   [$ca8e], a                                  ; $5709: $ea $8e $ca
	call Call_021_412a                               ; $570c: $cd $2a $41
	pop  hl                                          ; $570f: $e1
	jr   nc, jr_021_571d                             ; $5710: $30 $0b

	ld   a, [wKouboChosen0idxed]                                  ; $5712: $fa $6f $ca
	and  a                                           ; $5715: $a7
	jr   nz, jr_021_571d                             ; $5716: $20 $05

	ld   a, $01                                      ; $5718: $3e $01
	ld   [$ca6e], a                                  ; $571a: $ea $6e $ca

jr_021_571d:
	ld   a, $04                                      ; $571d: $3e $04
	ld   [wSpriteGroup], a                                  ; $571f: $ea $1a $c2
	ld   a, [$ca72]                                  ; $5722: $fa $72 $ca
	ld   b, a                                        ; $5725: $47
	ld   a, [$ca73]                                  ; $5726: $fa $73 $ca
	ld   c, a                                        ; $5729: $4f
	ld   a, [$ca70]                                  ; $572a: $fa $70 $ca
	call LoadSpriteFromMainTable                                       ; $572d: $cd $16 $0e
	ret                                              ; $5730: $c9


	scf                                              ; $5731: $37
	ld   d, a                                        ; $5732: $57
	ld   c, h                                        ; $5733: $4c
	ld   d, a                                        ; $5734: $57
	ld   h, c                                        ; $5735: $61
	ld   d, a                                        ; $5736: $57
	ld   [hl+], a                                    ; $5737: $22
	nop                                              ; $5738: $00
	dec  b                                           ; $5739: $05
	ld   bc, $0213                                   ; $573a: $01 $13 $02
	inc  de                                          ; $573d: $13
	inc  bc                                          ; $573e: $03
	inc  de                                          ; $573f: $13
	ld   [bc], a                                     ; $5740: $02
	inc  de                                          ; $5741: $13
	inc  bc                                          ; $5742: $03
	inc  de                                          ; $5743: $13
	ld   [bc], a                                     ; $5744: $02
	inc  de                                          ; $5745: $13
	inc  bc                                          ; $5746: $03
	inc  de                                          ; $5747: $13
	ld   [bc], a                                     ; $5748: $02
	jr   nc, jr_021_574f                             ; $5749: $30 $04

	nop                                              ; $574b: $00
	ld   [hl+], a                                    ; $574c: $22
	nop                                              ; $574d: $00
	dec  b                                           ; $574e: $05

jr_021_574f:
	ld   bc, $0213                                   ; $574f: $01 $13 $02
	inc  de                                          ; $5752: $13
	inc  bc                                          ; $5753: $03
	inc  de                                          ; $5754: $13
	ld   [bc], a                                     ; $5755: $02
	inc  de                                          ; $5756: $13
	inc  bc                                          ; $5757: $03
	inc  de                                          ; $5758: $13
	ld   [bc], a                                     ; $5759: $02
	inc  de                                          ; $575a: $13
	inc  bc                                          ; $575b: $03
	inc  de                                          ; $575c: $13
	ld   [bc], a                                     ; $575d: $02
	jr   nc, @+$07                                   ; $575e: $30 $05

	nop                                              ; $5760: $00
	ld   [hl+], a                                    ; $5761: $22
	nop                                              ; $5762: $00
	dec  b                                           ; $5763: $05
	ld   bc, $0213                                   ; $5764: $01 $13 $02
	inc  de                                          ; $5767: $13
	inc  bc                                          ; $5768: $03
	inc  de                                          ; $5769: $13
	ld   [bc], a                                     ; $576a: $02
	inc  de                                          ; $576b: $13
	inc  bc                                          ; $576c: $03
	inc  de                                          ; $576d: $13
	ld   [bc], a                                     ; $576e: $02
	ld   a, [bc]                                     ; $576f: $0a
	ld   b, $0a                                      ; $5770: $06 $0a
	rlca                                             ; $5772: $07
	dec  b                                           ; $5773: $05
	ld   [$0903], sp                                 ; $5774: $08 $03 $09
	ld   a, [bc]                                     ; $5777: $0a
	rlca                                             ; $5778: $07
	dec  b                                           ; $5779: $05
	ld   [$0903], sp                                 ; $577a: $08 $03 $09
	jr   z, @+$04                                    ; $577d: $28 $02

	nop                                              ; $577f: $00

Call_021_5780:
	ld   a, $24                                      ; $5780: $3e $24
	ld   [$ca7a], a                                  ; $5782: $ea $7a $ca
	ld   a, $59                                      ; $5785: $3e $59
	ld   [$ca7b], a                                  ; $5787: $ea $7b $ca
	ld   a, [$ca86]                                  ; $578a: $fa $86 $ca
	sla  a                                           ; $578d: $cb $27
	ld   hl, $57c7                                   ; $578f: $21 $c7 $57
	ld   d, $00                                      ; $5792: $16 $00
	ld   e, a                                        ; $5794: $5f
	add  hl, de                                      ; $5795: $19
	ld   a, [hl+]                                    ; $5796: $2a
	ld   h, [hl]                                     ; $5797: $66
	ld   l, a                                        ; $5798: $6f
	ld   de, $ca77                                   ; $5799: $11 $77 $ca
	push hl                                          ; $579c: $e5
	ld   a, $3c                                      ; $579d: $3e $3c
	ld   [$ca8e], a                                  ; $579f: $ea $8e $ca
	call Call_021_412a                               ; $57a2: $cd $2a $41
	pop  hl                                          ; $57a5: $e1
	jr   nc, jr_021_57b3                             ; $57a6: $30 $0b

	ld   a, [$ca77]                                  ; $57a8: $fa $77 $ca
	and  a                                           ; $57ab: $a7
	jr   nz, jr_021_57b3                             ; $57ac: $20 $05

	ld   a, $01                                      ; $57ae: $3e $01
	ld   [$ca76], a                                  ; $57b0: $ea $76 $ca

jr_021_57b3:
	ld   a, $04                                      ; $57b3: $3e $04
	ld   [wSpriteGroup], a                                  ; $57b5: $ea $1a $c2
	ld   a, [$ca7a]                                  ; $57b8: $fa $7a $ca
	ld   b, a                                        ; $57bb: $47
	ld   a, [$ca7b]                                  ; $57bc: $fa $7b $ca
	ld   c, a                                        ; $57bf: $4f
	ld   a, [$ca78]                                  ; $57c0: $fa $78 $ca
	call LoadSpriteFromMainTable                                       ; $57c3: $cd $16 $0e
	ret                                              ; $57c6: $c9


	call $e457                                       ; $57c7: $cd $57 $e4
	ld   d, a                                        ; $57ca: $57
	dec  bc                                          ; $57cb: $0b
	ld   e, b                                        ; $57cc: $58
	jr   z, jr_021_57da                              ; $57cd: $28 $0b

	jr   z, @+$0e                                    ; $57cf: $28 $0c

	inc  l                                           ; $57d1: $2c
	dec  c                                           ; $57d2: $0d
	rlca                                             ; $57d3: $07
	ld   c, $07                                      ; $57d4: $0e $07
	rrca                                             ; $57d6: $0f
	rlca                                             ; $57d7: $07
	ld   c, $07                                      ; $57d8: $0e $07

jr_021_57da:
	rrca                                             ; $57da: $0f
	rlca                                             ; $57db: $07
	ld   c, $07                                      ; $57dc: $0e $07
	rrca                                             ; $57de: $0f
	ld   b, $0d                                      ; $57df: $06 $0d
	jr   nc, jr_021_57f3                             ; $57e1: $30 $10

	nop                                              ; $57e3: $00
	jr   nz, @+$0c                                   ; $57e4: $20 $0a

	add  hl, bc                                      ; $57e6: $09
	ld   a, [bc]                                     ; $57e7: $0a
	add  hl, bc                                      ; $57e8: $09
	ld   a, [bc]                                     ; $57e9: $0a
	add  hl, bc                                      ; $57ea: $09
	ld   de, $1109                                   ; $57eb: $11 $09 $11
	add  hl, bc                                      ; $57ee: $09
	ld   de, $1109                                   ; $57ef: $11 $09 $11
	add  hl, bc                                      ; $57f2: $09

jr_021_57f3:
	ld   [de], a                                     ; $57f3: $12
	add  hl, bc                                      ; $57f4: $09
	ld   [de], a                                     ; $57f5: $12
	ld   a, [bc]                                     ; $57f6: $0a
	ld   [de], a                                     ; $57f7: $12
	dec  b                                           ; $57f8: $05
	ld   [de], a                                     ; $57f9: $12
	dec  b                                           ; $57fa: $05
	ld   [de], a                                     ; $57fb: $12
	dec  b                                           ; $57fc: $05
	ld   de, $1105                                   ; $57fd: $11 $05 $11
	dec  b                                           ; $5800: $05
	ld   de, $1105                                   ; $5801: $11 $05 $11
	dec  b                                           ; $5804: $05
	ld   a, [bc]                                     ; $5805: $0a
	dec  b                                           ; $5806: $05
	ld   a, [bc]                                     ; $5807: $0a
	ld   b, d                                        ; $5808: $42
	ld   a, [bc]                                     ; $5809: $0a
	nop                                              ; $580a: $00
	jr   nz, jr_021_5823                             ; $580b: $20 $16

	ld   [$0816], sp                                 ; $580d: $08 $16 $08
	inc  de                                          ; $5810: $13
	ld   [$0813], sp                                 ; $5811: $08 $13 $08
	inc  d                                           ; $5814: $14
	ld   [$0814], sp                                 ; $5815: $08 $14 $08
	dec  d                                           ; $5818: $15
	ld   [$0815], sp                                 ; $5819: $08 $15 $08
	dec  d                                           ; $581c: $15
	ld   [de], a                                     ; $581d: $12
	dec  d                                           ; $581e: $15
	ld   [$1914], sp                                 ; $581f: $08 $14 $19
	dec  d                                           ; $5822: $15

jr_021_5823:
	dec  b                                           ; $5823: $05
	inc  d                                           ; $5824: $14
	dec  b                                           ; $5825: $05
	inc  de                                          ; $5826: $13
	rrca                                             ; $5827: $0f
	ld   d, $30                                      ; $5828: $16 $30
	rla                                              ; $582a: $17
	nop                                              ; $582b: $00

Call_021_582c:
	ld   a, $4a                                      ; $582c: $3e $4a
	ld   [$ca82], a                                  ; $582e: $ea $82 $ca
	ld   a, $59                                      ; $5831: $3e $59
	ld   [$ca83], a                                  ; $5833: $ea $83 $ca
	ld   a, [$ca86]                                  ; $5836: $fa $86 $ca
	sla  a                                           ; $5839: $cb $27
	ld   hl, $5873                                   ; $583b: $21 $73 $58
	ld   d, $00                                      ; $583e: $16 $00
	ld   e, a                                        ; $5840: $5f
	add  hl, de                                      ; $5841: $19
	ld   a, [hl+]                                    ; $5842: $2a
	ld   h, [hl]                                     ; $5843: $66
	ld   l, a                                        ; $5844: $6f
	ld   de, $ca7f                                   ; $5845: $11 $7f $ca
	push hl                                          ; $5848: $e5
	ld   a, $54                                      ; $5849: $3e $54
	ld   [$ca8e], a                                  ; $584b: $ea $8e $ca
	call Call_021_412a                               ; $584e: $cd $2a $41
	pop  hl                                          ; $5851: $e1
	jr   nc, jr_021_585f                             ; $5852: $30 $0b

	ld   a, [$ca7f]                                  ; $5854: $fa $7f $ca
	and  a                                           ; $5857: $a7
	jr   nz, jr_021_585f                             ; $5858: $20 $05

	ld   a, $01                                      ; $585a: $3e $01
	ld   [$ca7e], a                                  ; $585c: $ea $7e $ca

jr_021_585f:
	ld   a, $04                                      ; $585f: $3e $04
	ld   [wSpriteGroup], a                                  ; $5861: $ea $1a $c2
	ld   a, [$ca82]                                  ; $5864: $fa $82 $ca
	ld   b, a                                        ; $5867: $47
	ld   a, [$ca83]                                  ; $5868: $fa $83 $ca
	ld   c, a                                        ; $586b: $4f
	ld   a, [$ca80]                                  ; $586c: $fa $80 $ca
	call LoadSpriteFromMainTable                                       ; $586f: $cd $16 $0e
	ret                                              ; $5872: $c9


	ld   a, c                                        ; $5873: $79
	ld   e, b                                        ; $5874: $58
	ld   a, [hl]                                     ; $5875: $7e
	ld   e, b                                        ; $5876: $58
	and  l                                           ; $5877: $a5
	ld   e, b                                        ; $5878: $58
	sbc  a                                           ; $5879: $9f
	nop                                              ; $587a: $00
	dec  a                                           ; $587b: $3d
	nop                                              ; $587c: $00
	nop                                              ; $587d: $00
	ld   a, [hl+]                                    ; $587e: $2a
	nop                                              ; $587f: $00
	add  hl, bc                                      ; $5880: $09
	ld   bc, $0209                                   ; $5881: $01 $09 $02
	add  hl, bc                                      ; $5884: $09
	inc  bc                                          ; $5885: $03
	add  hl, bc                                      ; $5886: $09
	inc  b                                           ; $5887: $04
	add  hl, bc                                      ; $5888: $09
	dec  b                                           ; $5889: $05
	add  hl, bc                                      ; $588a: $09
	ld   b, $09                                      ; $588b: $06 $09
	rlca                                             ; $588d: $07
	add  hl, bc                                      ; $588e: $09
	ld   [$090a], sp                                 ; $588f: $08 $0a $09
	dec  b                                           ; $5892: $05
	ld   [$0705], sp                                 ; $5893: $08 $05 $07
	dec  b                                           ; $5896: $05
	ld   b, $05                                      ; $5897: $06 $05
	dec  b                                           ; $5899: $05
	dec  b                                           ; $589a: $05
	inc  b                                           ; $589b: $04
	dec  b                                           ; $589c: $05
	inc  bc                                          ; $589d: $03
	dec  b                                           ; $589e: $05
	ld   [bc], a                                     ; $589f: $02
	dec  b                                           ; $58a0: $05
	ld   bc, $0038                                   ; $58a1: $01 $38 $00
	nop                                              ; $58a4: $00
	ld   a, [hl+]                                    ; $58a5: $2a
	nop                                              ; $58a6: $00
	ld   [$0801], sp                                 ; $58a7: $08 $01 $08
	ld   [bc], a                                     ; $58aa: $02
	ld   [$0803], sp                                 ; $58ab: $08 $03 $08
	inc  b                                           ; $58ae: $04
	ld   [$0805], sp                                 ; $58af: $08 $05 $08
	ld   b, $08                                      ; $58b2: $06 $08
	rlca                                             ; $58b4: $07
	ld   [$0808], sp                                 ; $58b5: $08 $08 $08
	add  hl, bc                                      ; $58b8: $09
	dec  b                                           ; $58b9: $05
	jr   @+$07                                       ; $58ba: $18 $05

	add  hl, de                                      ; $58bc: $19
	dec  b                                           ; $58bd: $05
	ld   a, [de]                                     ; $58be: $1a
	dec  b                                           ; $58bf: $05
	jr   @+$07                                       ; $58c0: $18 $05

	add  hl, de                                      ; $58c2: $19
	dec  b                                           ; $58c3: $05
	ld   a, [de]                                     ; $58c4: $1a
	dec  b                                           ; $58c5: $05
	jr   jr_021_58cd                                 ; $58c6: $18 $05

	add  hl, de                                      ; $58c8: $19
	dec  b                                           ; $58c9: $05
	ld   a, [de]                                     ; $58ca: $1a
	dec  c                                           ; $58cb: $0d
	add  hl, bc                                      ; $58cc: $09

jr_021_58cd:
	ld   a, [bc]                                     ; $58cd: $0a
	add  hl, bc                                      ; $58ce: $09
	ld   h, $09                                      ; $58cf: $26 $09
	nop                                              ; $58d1: $00
	call ClearOam                                       ; $58d2: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $58d5: $cd $d3 $2e
	call Call_021_56d3                               ; $58d8: $cd $d3 $56
	call Call_021_5780                               ; $58db: $cd $80 $57
	call Call_021_582c                               ; $58de: $cd $2c $58
	ld   a, [wInGameButtonsHeld]                                  ; $58e1: $fa $0f $c2
	and  $82                                         ; $58e4: $e6 $82
	jp   z, Jump_021_58f4                            ; $58e6: $ca $f4 $58

	ld   a, [$caa5]                                  ; $58e9: $fa $a5 $ca
	inc  a                                           ; $58ec: $3c
	cp   $0b                                         ; $58ed: $fe $0b
	jr   nc, jr_021_58f4                             ; $58ef: $30 $03

	ld   [$caa5], a                                  ; $58f1: $ea $a5 $ca

Jump_021_58f4:
jr_021_58f4:
	ld   a, [$caa6]                                  ; $58f4: $fa $a6 $ca
	cp   $03                                         ; $58f7: $fe $03
	jr   z, jr_021_5957                              ; $58f9: $28 $5c

	ld   a, [$caa4]                                  ; $58fb: $fa $a4 $ca
	and  a                                           ; $58fe: $a7
	jr   nz, jr_021_592b                             ; $58ff: $20 $2a

	ld   hl, $afd0                                   ; $5901: $21 $d0 $af

	M_FarCall LoadStatBars

	ld   hl, $caa5                                   ; $5918: $21 $a5 $ca
	inc  [hl]                                        ; $591b: $34
	ld   a, [hl]                                     ; $591c: $7e
	cp   $0b                                         ; $591d: $fe $0b
	jr   c, jr_021_592a                              ; $591f: $38 $09

	ld   a, $01                                      ; $5921: $3e $01
	ld   [$caa4], a                                  ; $5923: $ea $a4 $ca
	xor  a                                           ; $5926: $af
	ld   [$caa5], a                                  ; $5927: $ea $a5 $ca

jr_021_592a:
	ret                                              ; $592a: $c9


jr_021_592b:
	ld   hl, $ca97                                   ; $592b: $21 $97 $ca

	M_FarCall LoadStatBars

	ld   hl, $caa5                                   ; $5942: $21 $a5 $ca
	inc  [hl]                                        ; $5945: $34
	ld   a, [hl]                                     ; $5946: $7e
	cp   $0b                                         ; $5947: $fe $0b
	jr   c, jr_021_5956                              ; $5949: $38 $0b

	xor  a                                           ; $594b: $af
	ld   [$caa4], a                                  ; $594c: $ea $a4 $ca
	ld   [$caa5], a                                  ; $594f: $ea $a5 $ca
	ld   hl, $caa6                                   ; $5952: $21 $a6 $ca
	inc  [hl]                                        ; $5955: $34

jr_021_5956:
	ret                                              ; $5956: $c9


jr_021_5957:
	ld   a, [$ca97]                                  ; $5957: $fa $97 $ca
	ld   [$afd0], a                                  ; $595a: $ea $d0 $af
	ld   a, [$ca98]                                  ; $595d: $fa $98 $ca
	ld   [sSramVals2+SRAM2_INTELLECT], a                                  ; $5960: $ea $d1 $af
	ld   a, [$ca99]                                  ; $5963: $fa $99 $ca
	ld   [sSramVals2+SRAM2_SPIRIT_POWER], a                                  ; $5966: $ea $d2 $af
	ld   a, [$ca9a]                                  ; $5969: $fa $9a $ca
	ld   [sSramVals2+SRAM2_GUTS], a                                  ; $596c: $ea $d3 $af
	ld   a, [$ca9b]                                  ; $596f: $fa $9b $ca
	ld   [sSramVals2+SRAM2_SPEED], a                                  ; $5972: $ea $d4 $af
	ld   a, [$ca9c]                                  ; $5975: $fa $9c $ca
	ld   [sSramVals2+SRAM2_ACCURACY], a                                  ; $5978: $ea $d5 $af
	ld   hl, wGameSubstate                                   ; $597b: $21 $a1 $c2
	inc  [hl]                                        ; $597e: $34
	ret                                              ; $597f: $c9


	ld   a, [$b1b4]                                  ; $5980: $fa $b4 $b1
	and  a                                           ; $5983: $a7
	jr   nz, jr_021_599f                             ; $5984: $20 $19

	ld   a, [wInGameButtonsHeld]                                  ; $5986: $fa $0f $c2
	and  $02                                         ; $5989: $e6 $02
	jp   nz, Jump_021_59a3                           ; $598b: $c2 $a3 $59

	ld   a, [wInGameButtonsPressed]                                  ; $598e: $fa $10 $c2
	and  $03                                         ; $5991: $e6 $03
	jr   nz, jr_021_59a3                             ; $5993: $20 $0e

	ld   a, [$ca96]                                  ; $5995: $fa $96 $ca
	inc  a                                           ; $5998: $3c
	ld   [$ca96], a                                  ; $5999: $ea $96 $ca
	cp   $b4                                         ; $599c: $fe $b4
	ret  nz                                          ; $599e: $c0

jr_021_599f:
	xor  a                                           ; $599f: $af
	ld   [$ca96], a                                  ; $59a0: $ea $96 $ca

Jump_021_59a3:
jr_021_59a3:
	ld   b, $2f                                      ; $59a3: $06 $2f
	ld   hl, $6763                                   ; $59a5: $21 $63 $67
	call Call_021_4484                               ; $59a8: $cd $84 $44
	ld   a, [wNapOrTrainReturnState]                                  ; $59ab: $fa $4c $ca
	ld   [wGameState], a                                  ; $59ae: $ea $a0 $c2
	ld   a, [wNapOrTrainReturnSubstate]                                  ; $59b1: $fa $4d $ca
	ld   [wGameSubstate], a                                  ; $59b4: $ea $a1 $c2
	ret                                              ; $59b7: $c9


GameState2c_MariaTraining::
	ld   a, [wGameSubstate]                                  ; $59b8: $fa $a1 $c2
	rst  JumpTable                                         ; $59bb: $df
	call nz, $af59                                   ; $59bc: $c4 $59 $af
	ld   e, e                                        ; $59bf: $5b
	rst  JumpTable                                         ; $59c0: $df
	ld   e, l                                        ; $59c1: $5d
	adc  l                                           ; $59c2: $8d
	ld   e, [hl]                                     ; $59c3: $5e
	call TurnOnLCD                                       ; $59c4: $cd $09 $09
	ld   a, $ff                                      ; $59c7: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $59c9: $ea $0e $c2
	ld   a, $0c                                      ; $59cc: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $59ce: $ea $13 $c2
	ld   a, $04                                      ; $59d1: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $59d3: $ea $14 $c2
	ld   a, [wLCDC]                                  ; $59d6: $fa $03 $c2
	and  $e0                                         ; $59d9: $e6 $e0
	or   $07                                         ; $59db: $f6 $07
	ld   [wLCDC], a                                  ; $59dd: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $59e0: $fa $93 $c2
	push af                                          ; $59e3: $f5
	ld   a, $07                                      ; $59e4: $3e $07
	ld   [wWramBank], a                                  ; $59e6: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $59e9: $e0 $70
	ld   a, $2c                                      ; $59eb: $3e $2c
	ld   hl, $d000                                   ; $59ed: $21 $00 $d0
	ld   de, $690b                                   ; $59f0: $11 $0b $69
	call RLEXorCopy                                       ; $59f3: $cd $d2 $09
	ld   c, $80                                      ; $59f6: $0e $80
	ld   de, $8000                                   ; $59f8: $11 $00 $80
	ld   a, $07                                      ; $59fb: $3e $07
	ld   hl, $d000                                   ; $59fd: $21 $00 $d0
	ld   b, $40                                      ; $5a00: $06 $40
	call EnqueueHDMATransfer                                       ; $5a02: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a05: $cf
	ld   c, $80                                      ; $5a06: $0e $80
	ld   de, $8400                                   ; $5a08: $11 $00 $84
	ld   a, $07                                      ; $5a0b: $3e $07
	ld   hl, $d400                                   ; $5a0d: $21 $00 $d4
	ld   b, $40                                      ; $5a10: $06 $40
	call EnqueueHDMATransfer                                       ; $5a12: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a15: $cf
	ld   c, $80                                      ; $5a16: $0e $80
	ld   de, $8800                                   ; $5a18: $11 $00 $88
	ld   a, $07                                      ; $5a1b: $3e $07
	ld   hl, $d800                                   ; $5a1d: $21 $00 $d8
	ld   b, $40                                      ; $5a20: $06 $40
	call EnqueueHDMATransfer                                       ; $5a22: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a25: $cf
	ld   c, $80                                      ; $5a26: $0e $80
	ld   de, $8c00                                   ; $5a28: $11 $00 $8c
	ld   a, $07                                      ; $5a2b: $3e $07
	ld   hl, $dc00                                   ; $5a2d: $21 $00 $dc
	ld   b, $40                                      ; $5a30: $06 $40
	call EnqueueHDMATransfer                                       ; $5a32: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a35: $cf
	ld   a, $2e                                      ; $5a36: $3e $2e
	ld   hl, $d000                                   ; $5a38: $21 $00 $d0
	ld   de, $4000                                   ; $5a3b: $11 $00 $40
	call RLEXorCopy                                       ; $5a3e: $cd $d2 $09
	ld   c, $80                                      ; $5a41: $0e $80
	ld   de, $9000                                   ; $5a43: $11 $00 $90
	ld   a, $07                                      ; $5a46: $3e $07
	ld   hl, $d000                                   ; $5a48: $21 $00 $d0
	ld   b, $40                                      ; $5a4b: $06 $40
	call EnqueueHDMATransfer                                       ; $5a4d: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a50: $cf
	ld   c, $80                                      ; $5a51: $0e $80
	ld   de, $9400                                   ; $5a53: $11 $00 $94
	ld   a, $07                                      ; $5a56: $3e $07
	ld   hl, $d400                                   ; $5a58: $21 $00 $d4
	ld   b, $40                                      ; $5a5b: $06 $40
	call EnqueueHDMATransfer                                       ; $5a5d: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a60: $cf
	ld   c, $81                                      ; $5a61: $0e $81
	ld   de, $8000                                   ; $5a63: $11 $00 $80
	ld   a, $07                                      ; $5a66: $3e $07
	ld   hl, $d800                                   ; $5a68: $21 $00 $d8
	ld   b, $40                                      ; $5a6b: $06 $40
	call EnqueueHDMATransfer                                       ; $5a6d: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a70: $cf
	ld   c, $81                                      ; $5a71: $0e $81
	ld   de, $8400                                   ; $5a73: $11 $00 $84
	ld   a, $07                                      ; $5a76: $3e $07
	ld   hl, $dc00                                   ; $5a78: $21 $00 $dc
	ld   b, $40                                      ; $5a7b: $06 $40
	call EnqueueHDMATransfer                                       ; $5a7d: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a80: $cf
	ld   a, $2d                                      ; $5a81: $3e $2d
	ld   hl, $d000                                   ; $5a83: $21 $00 $d0
	ld   de, $7236                                   ; $5a86: $11 $36 $72
if def(VWF)
	call NapOrTrainBank1_8800hHook
else
	call RLEXorCopy                                       ; $5a89: $cd $d2 $09
endc
	ld   c, $81                                      ; $5a8c: $0e $81
	ld   de, $8800                                   ; $5a8e: $11 $00 $88
	ld   a, $07                                      ; $5a91: $3e $07
	ld   hl, $d000                                   ; $5a93: $21 $00 $d0
	ld   b, $40                                      ; $5a96: $06 $40
	call EnqueueHDMATransfer                                       ; $5a98: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a9b: $cf
	ld   c, $81                                      ; $5a9c: $0e $81
	ld   de, $8c00                                   ; $5a9e: $11 $00 $8c
	ld   a, $07                                      ; $5aa1: $3e $07
	ld   hl, $d400                                   ; $5aa3: $21 $00 $d4
	ld   b, $40                                      ; $5aa6: $06 $40
	call EnqueueHDMATransfer                                       ; $5aa8: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5aab: $cf
	ld   c, $81                                      ; $5aac: $0e $81
	ld   de, $9000                                   ; $5aae: $11 $00 $90
	ld   a, $07                                      ; $5ab1: $3e $07
	ld   hl, $d800                                   ; $5ab3: $21 $00 $d8
	ld   b, $40                                      ; $5ab6: $06 $40
	call EnqueueHDMATransfer                                       ; $5ab8: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5abb: $cf
	ld   c, $81                                      ; $5abc: $0e $81
	ld   de, $9400                                   ; $5abe: $11 $00 $94
	ld   a, $07                                      ; $5ac1: $3e $07
	ld   hl, $dc00                                   ; $5ac3: $21 $00 $dc
	ld   b, $40                                      ; $5ac6: $06 $40
	call EnqueueHDMATransfer                                       ; $5ac8: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5acb: $cf
	ld   a, $2f                                      ; $5acc: $3e $2f
	ld   hl, $d000                                   ; $5ace: $21 $00 $d0
	ld   de, $55b5                                   ; $5ad1: $11 $b5 $55
if def(VWF)
	call NapOrTrainTileMapHook
else
	call RLEXorCopy                                       ; $5ad4: $cd $d2 $09
endc
	ld   c, $80                                      ; $5ad7: $0e $80
	ld   de, $9800                                   ; $5ad9: $11 $00 $98
	ld   a, $07                                      ; $5adc: $3e $07
	ld   hl, $d000                                   ; $5ade: $21 $00 $d0
	ld   b, $40                                      ; $5ae1: $06 $40
	call EnqueueHDMATransfer                                       ; $5ae3: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ae6: $cf
	ld   a, $2d                                      ; $5ae7: $3e $2d
	ld   hl, $d000                                   ; $5ae9: $21 $00 $d0
	ld   de, $7ece                                   ; $5aec: $11 $ce $7e
	call RLEXorCopy                                       ; $5aef: $cd $d2 $09
	ld   c, $81                                      ; $5af2: $0e $81
	ld   de, $9800                                   ; $5af4: $11 $00 $98
	ld   a, $07                                      ; $5af7: $3e $07
	ld   hl, $d000                                   ; $5af9: $21 $00 $d0
	ld   b, $40                                      ; $5afc: $06 $40
	call EnqueueHDMATransfer                                       ; $5afe: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b01: $cf
	pop  af                                          ; $5b02: $f1
	ld   [wWramBank], a                                  ; $5b03: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5b06: $e0 $70
	call ClearOam                                       ; $5b08: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $5b0b: $cd $c9 $2e
	ld   a, $0a                                      ; $5b0e: $3e $0a
	ld   [wRandomNumRange], a                                  ; $5b10: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $5b13: $cd $70 $0c
	xor  a                                           ; $5b16: $af
	ld   [$ca6e], a                                  ; $5b17: $ea $6e $ca
	ld   [$ca76], a                                  ; $5b1a: $ea $76 $ca
	ld   [$ca7e], a                                  ; $5b1d: $ea $7e $ca
	ld   [$ca8f], a                                  ; $5b20: $ea $8f $ca
	ld   [$ca93], a                                  ; $5b23: $ea $93 $ca
	ld   [$ca94], a                                  ; $5b26: $ea $94 $ca
	ld   [$ca87], a                                  ; $5b29: $ea $87 $ca
	ld   [$ca96], a                                  ; $5b2c: $ea $96 $ca
	ld   a, $05                                      ; $5b2f: $3e $05
	call Call_021_416b                               ; $5b31: $cd $6b $41
	ld   a, $6f                                      ; $5b34: $3e $6f
	ld   [$ca8e], a                                  ; $5b36: $ea $8e $ca
	ld   hl, $5c6c                                   ; $5b39: $21 $6c $5c
	ld   de, wKouboChosen0idxed                                   ; $5b3c: $11 $6f $ca
	call Call_021_411c                               ; $5b3f: $cd $1c $41
	ld   hl, $5ce2                                   ; $5b42: $21 $e2 $5c
	ld   de, $ca77                                   ; $5b45: $11 $77 $ca
	call Call_021_411c                               ; $5b48: $cd $1c $41
	ld   a, $89                                      ; $5b4b: $3e $89
	ld   [$ca8e], a                                  ; $5b4d: $ea $8e $ca
	ld   hl, $5dae                                   ; $5b50: $21 $ae $5d
	ld   de, $ca7f                                   ; $5b53: $11 $7f $ca
	call Call_021_411c                               ; $5b56: $cd $1c $41
	call TurnOffLCD                                       ; $5b59: $cd $e3 $08
	ld   a, $00                                      ; $5b5c: $3e $00
	ld   b, $04                                      ; $5b5e: $06 $04
	ld   c, $00                                      ; $5b60: $0e $00
	ld   de, $0608                                   ; $5b62: $11 $08 $06
	ld   hl, $9820                                   ; $5b65: $21 $20 $98
	push af                                          ; $5b68: $f5
	ld   a, $79                                      ; $5b69: $3e $79
	ld   [wFarCallAddr], a                                  ; $5b6b: $ea $98 $c2
	ld   a, $5b                                      ; $5b6e: $3e $5b
	ld   [wFarCallAddr+1], a                                  ; $5b70: $ea $99 $c2
	ld   a, $0c                                      ; $5b73: $3e $0c
	ld   [wFarCallBank], a                                  ; $5b75: $ea $9a $c2
	pop  af                                          ; $5b78: $f1
	call FarCall                                       ; $5b79: $cd $62 $09
	call TurnOnLCD                                       ; $5b7c: $cd $09 $09
	ld   hl, $afd0                                   ; $5b7f: $21 $d0 $af

	M_FarCall LoadStatBars

	call Call_021_5c08                               ; $5b96: $cd $08 $5c
	call Call_021_5c95                               ; $5b99: $cd $95 $5c
	call Call_021_5d61                               ; $5b9c: $cd $61 $5d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5b9f: $cd $d3 $2e
	ld   c, $2f                                      ; $5ba2: $0e $2f
	ld   de, $6863                                   ; $5ba4: $11 $63 $68
	call Call_021_44ac                               ; $5ba7: $cd $ac $44
	ld   hl, wGameSubstate                                   ; $5baa: $21 $a1 $c2
	inc  [hl]                                        ; $5bad: $34
	ret                                              ; $5bae: $c9


	ld   hl, $afd0                                   ; $5baf: $21 $d0 $af

	M_FarCall LoadStatBars

	ld   a, [$ca87]                                  ; $5bc6: $fa $87 $ca
	cp   $01                                         ; $5bc9: $fe $01
	jp   z, Jump_021_5bfb                            ; $5bcb: $ca $fb $5b

	call ClearOam                                       ; $5bce: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5bd1: $cd $d3 $2e
	ld   a, [$ca6e]                                  ; $5bd4: $fa $6e $ca
	and  a                                           ; $5bd7: $a7
	jr   z, jr_021_5bf1                              ; $5bd8: $28 $17

	ld   a, [$ca76]                                  ; $5bda: $fa $76 $ca
	and  a                                           ; $5bdd: $a7
	jr   z, jr_021_5bf1                              ; $5bde: $28 $11

	ld   a, [$ca7e]                                  ; $5be0: $fa $7e $ca
	and  a                                           ; $5be3: $a7
	jr   z, jr_021_5bf1                              ; $5be4: $28 $0b

	xor  a                                           ; $5be6: $af
	ld   [$ca94], a                                  ; $5be7: $ea $94 $ca
	ld   a, [$ca87]                                  ; $5bea: $fa $87 $ca
	inc  a                                           ; $5bed: $3c
	ld   [$ca87], a                                  ; $5bee: $ea $87 $ca

jr_021_5bf1:
	call Call_021_5c08                               ; $5bf1: $cd $08 $5c
	call Call_021_5c95                               ; $5bf4: $cd $95 $5c
	call Call_021_5d61                               ; $5bf7: $cd $61 $5d
	ret                                              ; $5bfa: $c9


Jump_021_5bfb:
	ld   a, $50                                      ; $5bfb: $3e $50
	ld   [$ca9f], a                                  ; $5bfd: $ea $9f $ca
	call Call_021_44d4                               ; $5c00: $cd $d4 $44
	ld   hl, wGameSubstate                                   ; $5c03: $21 $a1 $c2
	inc  [hl]                                        ; $5c06: $34
	ret                                              ; $5c07: $c9


Call_021_5c08:
	ld   a, $85                                      ; $5c08: $3e $85
	ld   [$ca72], a                                  ; $5c0a: $ea $72 $ca
	ld   a, $69                                      ; $5c0d: $3e $69
	ld   [$ca73], a                                  ; $5c0f: $ea $73 $ca
	ld   a, [$ca86]                                  ; $5c12: $fa $86 $ca
	sla  a                                           ; $5c15: $cb $27
	ld   hl, $5c66                                   ; $5c17: $21 $66 $5c
	ld   d, $00                                      ; $5c1a: $16 $00
	ld   e, a                                        ; $5c1c: $5f
	add  hl, de                                      ; $5c1d: $19
	ld   a, [hl+]                                    ; $5c1e: $2a
	ld   h, [hl]                                     ; $5c1f: $66
	ld   l, a                                        ; $5c20: $6f
	ld   a, [$ca71]                                  ; $5c21: $fa $71 $ca
	cp   $02                                         ; $5c24: $fe $02
	jr   nz, jr_021_5c38                             ; $5c26: $20 $10

	ld   a, [$ca94]                                  ; $5c28: $fa $94 $ca
	and  a                                           ; $5c2b: $a7
	jr   nz, jr_021_5c38                             ; $5c2c: $20 $0a

	ld   a, $ff                                      ; $5c2e: $3e $ff
	ld   [$ca94], a                                  ; $5c30: $ea $94 $ca
	ld   a, $05                                      ; $5c33: $3e $05
	call Call_021_4481                               ; $5c35: $cd $81 $44

jr_021_5c38:
	ld   de, wKouboChosen0idxed                                   ; $5c38: $11 $6f $ca
	push hl                                          ; $5c3b: $e5
	ld   a, $6f                                      ; $5c3c: $3e $6f
	ld   [$ca8e], a                                  ; $5c3e: $ea $8e $ca
	call Call_021_412a                               ; $5c41: $cd $2a $41
	pop  hl                                          ; $5c44: $e1
	jr   nc, jr_021_5c52                             ; $5c45: $30 $0b

	ld   a, [wKouboChosen0idxed]                                  ; $5c47: $fa $6f $ca
	and  a                                           ; $5c4a: $a7
	jr   nz, jr_021_5c52                             ; $5c4b: $20 $05

	ld   a, $01                                      ; $5c4d: $3e $01
	ld   [$ca6e], a                                  ; $5c4f: $ea $6e $ca

jr_021_5c52:
	ld   a, $04                                      ; $5c52: $3e $04
	ld   [wSpriteGroup], a                                  ; $5c54: $ea $1a $c2
	ld   a, [$ca72]                                  ; $5c57: $fa $72 $ca
	ld   b, a                                        ; $5c5a: $47
	ld   a, [$ca73]                                  ; $5c5b: $fa $73 $ca
	ld   c, a                                        ; $5c5e: $4f
	ld   a, [$ca70]                                  ; $5c5f: $fa $70 $ca
	call LoadSpriteFromMainTable                                       ; $5c62: $cd $16 $0e
	ret                                              ; $5c65: $c9


	ld   l, h                                        ; $5c66: $6c
	ld   e, h                                        ; $5c67: $5c
	ld   a, a                                        ; $5c68: $7f
	ld   e, h                                        ; $5c69: $5c
	adc  d                                           ; $5c6a: $8a
	ld   e, h                                        ; $5c6b: $5c
	ld   [hl], b                                     ; $5c6c: $70
	nop                                              ; $5c6d: $00
	ld   a, [bc]                                     ; $5c6e: $0a
	ld   bc, $020a                                   ; $5c6f: $01 $0a $02
	ld   a, [bc]                                     ; $5c72: $0a
	ld   bc, $030a                                   ; $5c73: $01 $0a $03
	ld   a, [bc]                                     ; $5c76: $0a
	ld   bc, $020a                                   ; $5c77: $01 $0a $02
	ld   a, [bc]                                     ; $5c7a: $0a
	ld   bc, $0029                                   ; $5c7b: $01 $29 $00
	nop                                              ; $5c7e: $00
	add  e                                           ; $5c7f: $83
	nop                                              ; $5c80: $00
	inc  d                                           ; $5c81: $14
	dec  b                                           ; $5c82: $05
	inc  d                                           ; $5c83: $14
	ld   b, $0a                                      ; $5c84: $06 $0a
	rlca                                             ; $5c86: $07
	jr   z, jr_021_5c89                              ; $5c87: $28 $00

jr_021_5c89:
	nop                                              ; $5c89: $00
	sub  d                                           ; $5c8a: $92
	nop                                              ; $5c8b: $00
	dec  c                                           ; $5c8c: $0d
	inc  b                                           ; $5c8d: $04
	dec  bc                                          ; $5c8e: $0b
	nop                                              ; $5c8f: $00
	dec  c                                           ; $5c90: $0d
	inc  b                                           ; $5c91: $04
	jr   z, jr_021_5c94                              ; $5c92: $28 $00

jr_021_5c94:
	nop                                              ; $5c94: $00

Call_021_5c95:
	ld   a, $6b                                      ; $5c95: $3e $6b
	ld   [$ca7a], a                                  ; $5c97: $ea $7a $ca
	ld   a, $6b                                      ; $5c9a: $3e $6b
	ld   [$ca7b], a                                  ; $5c9c: $ea $7b $ca
	ld   a, [$ca86]                                  ; $5c9f: $fa $86 $ca
	sla  a                                           ; $5ca2: $cb $27
	ld   hl, $5cdc                                   ; $5ca4: $21 $dc $5c
	ld   d, $00                                      ; $5ca7: $16 $00
	ld   e, a                                        ; $5ca9: $5f
	add  hl, de                                      ; $5caa: $19
	ld   a, [hl+]                                    ; $5cab: $2a
	ld   h, [hl]                                     ; $5cac: $66
	ld   l, a                                        ; $5cad: $6f
	ld   de, $ca77                                   ; $5cae: $11 $77 $ca
	push hl                                          ; $5cb1: $e5
	ld   a, $6f                                      ; $5cb2: $3e $6f
	ld   [$ca8e], a                                  ; $5cb4: $ea $8e $ca
	call Call_021_412a                               ; $5cb7: $cd $2a $41
	pop  hl                                          ; $5cba: $e1
	jr   nc, jr_021_5cc8                             ; $5cbb: $30 $0b

	ld   a, [$ca77]                                  ; $5cbd: $fa $77 $ca
	and  a                                           ; $5cc0: $a7
	jr   nz, jr_021_5cc8                             ; $5cc1: $20 $05

	ld   a, $01                                      ; $5cc3: $3e $01
	ld   [$ca76], a                                  ; $5cc5: $ea $76 $ca

jr_021_5cc8:
	ld   a, $04                                      ; $5cc8: $3e $04
	ld   [wSpriteGroup], a                                  ; $5cca: $ea $1a $c2
	ld   a, [$ca7a]                                  ; $5ccd: $fa $7a $ca
	ld   b, a                                        ; $5cd0: $47
	ld   a, [$ca7b]                                  ; $5cd1: $fa $7b $ca
	ld   c, a                                        ; $5cd4: $4f
	ld   a, [$ca78]                                  ; $5cd5: $fa $78 $ca
	call LoadSpriteFromMainTable                                       ; $5cd8: $cd $16 $0e
	ret                                              ; $5cdb: $c9


	ldh  [c], a                                      ; $5cdc: $e2
	ld   e, h                                        ; $5cdd: $5c
	ld   de, $325d                                   ; $5cde: $11 $5d $32
	ld   e, l                                        ; $5ce1: $5d
	ld   e, $08                                      ; $5ce2: $1e $08
	inc  bc                                          ; $5ce4: $03
	add  hl, bc                                      ; $5ce5: $09
	inc  d                                           ; $5ce6: $14
	ld   [$0903], sp                                 ; $5ce7: $08 $03 $09
	inc  d                                           ; $5cea: $14
	ld   [$0903], sp                                 ; $5ceb: $08 $03 $09
	inc  d                                           ; $5cee: $14
	ld   [$0903], sp                                 ; $5cef: $08 $03 $09
	add  hl, de                                      ; $5cf2: $19
	ld   [$1503], sp                                 ; $5cf3: $08 $03 $15
	inc  bc                                          ; $5cf6: $03
	ld   a, [bc]                                     ; $5cf7: $0a
	inc  bc                                          ; $5cf8: $03
	dec  bc                                          ; $5cf9: $0b
	inc  bc                                          ; $5cfa: $03
	dec  d                                           ; $5cfb: $15
	inc  bc                                          ; $5cfc: $03
	ld   a, [bc]                                     ; $5cfd: $0a
	inc  bc                                          ; $5cfe: $03
	dec  bc                                          ; $5cff: $0b
	inc  bc                                          ; $5d00: $03
	dec  d                                           ; $5d01: $15
	inc  bc                                          ; $5d02: $03
	ld   a, [bc]                                     ; $5d03: $0a
	inc  bc                                          ; $5d04: $03
	dec  bc                                          ; $5d05: $0b
	ld   [$050c], sp                                 ; $5d06: $08 $0c $05
	dec  c                                           ; $5d09: $0d
	dec  b                                           ; $5d0a: $05
	ld   c, $0a                                      ; $5d0b: $0e $0a
	rrca                                             ; $5d0d: $0f
	add  hl, hl                                      ; $5d0e: $29
	stop                                             ; $5d0f: $10 $00
	ld   e, $08                                      ; $5d11: $1e $08
	inc  bc                                          ; $5d13: $03
	add  hl, bc                                      ; $5d14: $09
	inc  d                                           ; $5d15: $14
	ld   [$0903], sp                                 ; $5d16: $08 $03 $09
	inc  d                                           ; $5d19: $14
	ld   [$0903], sp                                 ; $5d1a: $08 $03 $09
	inc  d                                           ; $5d1d: $14
	ld   [$0903], sp                                 ; $5d1e: $08 $03 $09
	inc  d                                           ; $5d21: $14
	ld   [$1405], sp                                 ; $5d22: $08 $05 $14
	inc  d                                           ; $5d25: $14
	dec  d                                           ; $5d26: $15
	add  hl, bc                                      ; $5d27: $09
	ld   d, $09                                      ; $5d28: $16 $09
	rla                                              ; $5d2a: $17
	ld   [$0818], sp                                 ; $5d2b: $08 $18 $08
	add  hl, de                                      ; $5d2e: $19
	jr   z, jr_021_5d46                              ; $5d2f: $28 $15

	nop                                              ; $5d31: $00
	ld   e, $08                                      ; $5d32: $1e $08
	inc  bc                                          ; $5d34: $03
	add  hl, bc                                      ; $5d35: $09
	inc  d                                           ; $5d36: $14
	ld   [$0903], sp                                 ; $5d37: $08 $03 $09
	inc  d                                           ; $5d3a: $14
	ld   [$0903], sp                                 ; $5d3b: $08 $03 $09
	inc  d                                           ; $5d3e: $14
	ld   [$0903], sp                                 ; $5d3f: $08 $03 $09
	add  hl, de                                      ; $5d42: $19
	ld   [$1503], sp                                 ; $5d43: $08 $03 $15

jr_021_5d46:
	inc  bc                                          ; $5d46: $03
	ld   a, [bc]                                     ; $5d47: $0a
	inc  bc                                          ; $5d48: $03
	dec  bc                                          ; $5d49: $0b
	inc  bc                                          ; $5d4a: $03
	dec  d                                           ; $5d4b: $15
	inc  bc                                          ; $5d4c: $03
	ld   a, [bc]                                     ; $5d4d: $0a
	inc  bc                                          ; $5d4e: $03
	dec  bc                                          ; $5d4f: $0b
	inc  bc                                          ; $5d50: $03
	dec  d                                           ; $5d51: $15
	inc  bc                                          ; $5d52: $03
	ld   a, [bc]                                     ; $5d53: $0a
	inc  bc                                          ; $5d54: $03
	dec  bc                                          ; $5d55: $0b
	rrca                                             ; $5d56: $0f
	inc  c                                           ; $5d57: $0c
	ld   b, $11                                      ; $5d58: $06 $11
	inc  b                                           ; $5d5a: $04
	ld   [de], a                                     ; $5d5b: $12
	inc  b                                           ; $5d5c: $04
	inc  de                                          ; $5d5d: $13
	jr   z, @+$13                                    ; $5d5e: $28 $11

	nop                                              ; $5d60: $00

Call_021_5d61:
	ld   a, $1e                                      ; $5d61: $3e $1e
	ld   [$ca82], a                                  ; $5d63: $ea $82 $ca
	ld   a, $6a                                      ; $5d66: $3e $6a
	ld   [$ca83], a                                  ; $5d68: $ea $83 $ca
	ld   a, [$ca86]                                  ; $5d6b: $fa $86 $ca
	sla  a                                           ; $5d6e: $cb $27
	ld   hl, $5da8                                   ; $5d70: $21 $a8 $5d
	ld   d, $00                                      ; $5d73: $16 $00
	ld   e, a                                        ; $5d75: $5f
	add  hl, de                                      ; $5d76: $19
	ld   a, [hl+]                                    ; $5d77: $2a
	ld   h, [hl]                                     ; $5d78: $66
	ld   l, a                                        ; $5d79: $6f
	ld   de, $ca7f                                   ; $5d7a: $11 $7f $ca
	push hl                                          ; $5d7d: $e5
	ld   a, $89                                      ; $5d7e: $3e $89
	ld   [$ca8e], a                                  ; $5d80: $ea $8e $ca
	call Call_021_412a                               ; $5d83: $cd $2a $41
	pop  hl                                          ; $5d86: $e1
	jr   nc, jr_021_5d94                             ; $5d87: $30 $0b

	ld   a, [$ca7f]                                  ; $5d89: $fa $7f $ca
	and  a                                           ; $5d8c: $a7
	jr   nz, jr_021_5d94                             ; $5d8d: $20 $05

	ld   a, $01                                      ; $5d8f: $3e $01
	ld   [$ca7e], a                                  ; $5d91: $ea $7e $ca

jr_021_5d94:
	ld   a, $04                                      ; $5d94: $3e $04
	ld   [wSpriteGroup], a                                  ; $5d96: $ea $1a $c2
	ld   a, [$ca82]                                  ; $5d99: $fa $82 $ca
	ld   b, a                                        ; $5d9c: $47
	ld   a, [$ca83]                                  ; $5d9d: $fa $83 $ca
	ld   c, a                                        ; $5da0: $4f
	ld   a, [$ca80]                                  ; $5da1: $fa $80 $ca
	call LoadSpriteFromMainTable                                       ; $5da4: $cd $16 $0e
	ret                                              ; $5da7: $c9


	xor  [hl]                                        ; $5da8: $ae
	ld   e, l                                        ; $5da9: $5d
	cp   c                                           ; $5daa: $b9
	ld   e, l                                        ; $5dab: $5d
	call z, $1e5d                                    ; $5dac: $cc $5d $1e
	nop                                              ; $5daf: $00
	inc  bc                                          ; $5db0: $03
	ld   bc, $022b                                   ; $5db1: $01 $2b $02
	inc  bc                                          ; $5db4: $03
	inc  bc                                          ; $5db5: $03
	sub  b                                           ; $5db6: $90
	inc  b                                           ; $5db7: $04
	nop                                              ; $5db8: $00
	ld   e, $00                                      ; $5db9: $1e $00
	inc  bc                                          ; $5dbb: $03
	dec  b                                           ; $5dbc: $05
	inc  d                                           ; $5dbd: $14
	ld   b, $03                                      ; $5dbe: $06 $03
	rlca                                             ; $5dc0: $07
	inc  d                                           ; $5dc1: $14
	ld   [$0903], sp                                 ; $5dc2: $08 $03 $09
	inc  d                                           ; $5dc5: $14
	ld   a, [bc]                                     ; $5dc6: $0a
	inc  bc                                          ; $5dc7: $03
	dec  bc                                          ; $5dc8: $0b
	ld   [hl], a                                     ; $5dc9: $77
	inc  c                                           ; $5dca: $0c
	nop                                              ; $5dcb: $00
	ld   e, $00                                      ; $5dcc: $1e $00
	inc  bc                                          ; $5dce: $03
	dec  c                                           ; $5dcf: $0d
	inc  d                                           ; $5dd0: $14
	ld   c, $03                                      ; $5dd1: $0e $03
	rrca                                             ; $5dd3: $0f
	inc  d                                           ; $5dd4: $14
	db   $10                                         ; $5dd5: $10
	inc  bc                                          ; $5dd6: $03
	ld   de, $1214                                   ; $5dd7: $11 $14 $12
	inc  bc                                          ; $5dda: $03
	inc  de                                          ; $5ddb: $13
	ld   a, c                                        ; $5ddc: $79
	inc  d                                           ; $5ddd: $14
	nop                                              ; $5dde: $00
	call ClearOam                                       ; $5ddf: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $5de2: $cd $d3 $2e
	call Call_021_5c08                               ; $5de5: $cd $08 $5c
	call Call_021_5c95                               ; $5de8: $cd $95 $5c
	call Call_021_5d61                               ; $5deb: $cd $61 $5d
	ld   a, [wInGameButtonsHeld]                                  ; $5dee: $fa $0f $c2
	and  $82                                         ; $5df1: $e6 $82
	jp   z, Jump_021_5e01                            ; $5df3: $ca $01 $5e

	ld   a, [$caa5]                                  ; $5df6: $fa $a5 $ca
	inc  a                                           ; $5df9: $3c
	cp   $0b                                         ; $5dfa: $fe $0b
	jr   nc, jr_021_5e01                             ; $5dfc: $30 $03

	ld   [$caa5], a                                  ; $5dfe: $ea $a5 $ca

Jump_021_5e01:
jr_021_5e01:
	ld   a, [$caa6]                                  ; $5e01: $fa $a6 $ca
	cp   $03                                         ; $5e04: $fe $03
	jr   z, jr_021_5e64                              ; $5e06: $28 $5c

	ld   a, [$caa4]                                  ; $5e08: $fa $a4 $ca
	and  a                                           ; $5e0b: $a7
	jr   nz, jr_021_5e38                             ; $5e0c: $20 $2a

	ld   hl, $afd0                                   ; $5e0e: $21 $d0 $af

	M_FarCall LoadStatBars

	ld   hl, $caa5                                   ; $5e25: $21 $a5 $ca
	inc  [hl]                                        ; $5e28: $34
	ld   a, [hl]                                     ; $5e29: $7e
	cp   $0b                                         ; $5e2a: $fe $0b
	jr   c, jr_021_5e37                              ; $5e2c: $38 $09

	ld   a, $01                                      ; $5e2e: $3e $01
	ld   [$caa4], a                                  ; $5e30: $ea $a4 $ca
	xor  a                                           ; $5e33: $af
	ld   [$caa5], a                                  ; $5e34: $ea $a5 $ca

jr_021_5e37:
	ret                                              ; $5e37: $c9


jr_021_5e38:
	ld   hl, $ca97                                   ; $5e38: $21 $97 $ca

	M_FarCall LoadStatBars

	ld   hl, $caa5                                   ; $5e4f: $21 $a5 $ca
	inc  [hl]                                        ; $5e52: $34
	ld   a, [hl]                                     ; $5e53: $7e
	cp   $0b                                         ; $5e54: $fe $0b
	jr   c, jr_021_5e63                              ; $5e56: $38 $0b

	xor  a                                           ; $5e58: $af
	ld   [$caa4], a                                  ; $5e59: $ea $a4 $ca
	ld   [$caa5], a                                  ; $5e5c: $ea $a5 $ca
	ld   hl, $caa6                                   ; $5e5f: $21 $a6 $ca
	inc  [hl]                                        ; $5e62: $34

jr_021_5e63:
	ret                                              ; $5e63: $c9


jr_021_5e64:
	ld   a, [$ca97]                                  ; $5e64: $fa $97 $ca
	ld   [$afd0], a                                  ; $5e67: $ea $d0 $af
	ld   a, [$ca98]                                  ; $5e6a: $fa $98 $ca
	ld   [sSramVals2+SRAM2_INTELLECT], a                                  ; $5e6d: $ea $d1 $af
	ld   a, [$ca99]                                  ; $5e70: $fa $99 $ca
	ld   [sSramVals2+SRAM2_SPIRIT_POWER], a                                  ; $5e73: $ea $d2 $af
	ld   a, [$ca9a]                                  ; $5e76: $fa $9a $ca
	ld   [sSramVals2+SRAM2_GUTS], a                                  ; $5e79: $ea $d3 $af
	ld   a, [$ca9b]                                  ; $5e7c: $fa $9b $ca
	ld   [sSramVals2+SRAM2_SPEED], a                                  ; $5e7f: $ea $d4 $af
	ld   a, [$ca9c]                                  ; $5e82: $fa $9c $ca
	ld   [sSramVals2+SRAM2_ACCURACY], a                                  ; $5e85: $ea $d5 $af
	ld   hl, wGameSubstate                                   ; $5e88: $21 $a1 $c2
	inc  [hl]                                        ; $5e8b: $34
	ret                                              ; $5e8c: $c9


	ld   a, [$b1b4]                                  ; $5e8d: $fa $b4 $b1
	and  a                                           ; $5e90: $a7
	jr   nz, jr_021_5eac                             ; $5e91: $20 $19

	ld   a, [wInGameButtonsHeld]                                  ; $5e93: $fa $0f $c2
	and  $02                                         ; $5e96: $e6 $02
	jp   nz, Jump_021_5eac                           ; $5e98: $c2 $ac $5e

	ld   a, [wInGameButtonsPressed]                                  ; $5e9b: $fa $10 $c2
	and  $03                                         ; $5e9e: $e6 $03
	jr   nz, jr_021_5eac                             ; $5ea0: $20 $0a

	ld   a, [$ca96]                                  ; $5ea2: $fa $96 $ca
	inc  a                                           ; $5ea5: $3c
	ld   [$ca96], a                                  ; $5ea6: $ea $96 $ca
	cp   $b4                                         ; $5ea9: $fe $b4
	ret  nz                                          ; $5eab: $c0

Jump_021_5eac:
jr_021_5eac:
	ld   b, $2f                                      ; $5eac: $06 $2f
	ld   hl, $6863                                   ; $5eae: $21 $63 $68
	call Call_021_4484                               ; $5eb1: $cd $84 $44
	ld   a, [wNapOrTrainReturnState]                                  ; $5eb4: $fa $4c $ca
	ld   [wGameState], a                                  ; $5eb7: $ea $a0 $c2
	ld   a, [wNapOrTrainReturnSubstate]                                  ; $5eba: $fa $4d $ca
	ld   [wGameSubstate], a                                  ; $5ebd: $ea $a1 $c2
	ret                                              ; $5ec0: $c9


GameState2b_KannaTraining::
	ld   a, [wGameSubstate]                                  ; $5ec1: $fa $a1 $c2
	rst  JumpTable                                         ; $5ec4: $df
	dw KannaTrainingSubstate0
	dw $60eb
	dw $6316
	dw $63d6


KannaTrainingSubstate0:
	call TurnOnLCD                                       ; $5ecd: $cd $09 $09
	ld   a, $ff                                      ; $5ed0: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $5ed2: $ea $0e $c2
	ld   a, $0c                                      ; $5ed5: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $5ed7: $ea $13 $c2
	ld   a, $04                                      ; $5eda: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $5edc: $ea $14 $c2
	call ClearOam                                       ; $5edf: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $5ee2: $cd $c9 $2e
	ld   a, [wLCDC]                                  ; $5ee5: $fa $03 $c2
	and  $e0                                         ; $5ee8: $e6 $e0
	or   $07                                         ; $5eea: $f6 $07
	ld   [wLCDC], a                                  ; $5eec: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $5eef: $fa $93 $c2
	push af                                          ; $5ef2: $f5
	ld   a, $07                                      ; $5ef3: $3e $07
	ld   [wWramBank], a                                  ; $5ef5: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5ef8: $e0 $70
	ld   a, $2c                                      ; $5efa: $3e $2c
	ld   hl, $d000                                   ; $5efc: $21 $00 $d0
	ld   de, $4000                                   ; $5eff: $11 $00 $40
	call RLEXorCopy                                       ; $5f02: $cd $d2 $09
	ld   c, $80                                      ; $5f05: $0e $80
	ld   de, $8000                                   ; $5f07: $11 $00 $80
	ld   a, $07                                      ; $5f0a: $3e $07
	ld   hl, $d000                                   ; $5f0c: $21 $00 $d0
	ld   b, $40                                      ; $5f0f: $06 $40
	call EnqueueHDMATransfer                                       ; $5f11: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f14: $cf
	ld   c, $80                                      ; $5f15: $0e $80
	ld   de, $8400                                   ; $5f17: $11 $00 $84
	ld   a, $07                                      ; $5f1a: $3e $07
	ld   hl, $d400                                   ; $5f1c: $21 $00 $d4
	ld   b, $40                                      ; $5f1f: $06 $40
	call EnqueueHDMATransfer                                       ; $5f21: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f24: $cf
	ld   c, $80                                      ; $5f25: $0e $80
	ld   de, $8800                                   ; $5f27: $11 $00 $88
	ld   a, $07                                      ; $5f2a: $3e $07
	ld   hl, $d800                                   ; $5f2c: $21 $00 $d8
	ld   b, $40                                      ; $5f2f: $06 $40
	call EnqueueHDMATransfer                                       ; $5f31: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f34: $cf
	ld   c, $80                                      ; $5f35: $0e $80
	ld   de, $8c00                                   ; $5f37: $11 $00 $8c
	ld   a, $07                                      ; $5f3a: $3e $07
	ld   hl, $dc00                                   ; $5f3c: $21 $00 $dc
	ld   b, $40                                      ; $5f3f: $06 $40
	call EnqueueHDMATransfer                                       ; $5f41: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f44: $cf
	ld   a, $2d                                      ; $5f45: $3e $2d
	ld   hl, $d000                                   ; $5f47: $21 $00 $d0
	ld   de, $6b7c                                   ; $5f4a: $11 $7c $6b
	call RLEXorCopy                                       ; $5f4d: $cd $d2 $09
	ld   c, $80                                      ; $5f50: $0e $80
	ld   de, $9000                                   ; $5f52: $11 $00 $90
	ld   a, $07                                      ; $5f55: $3e $07
	ld   hl, $d000                                   ; $5f57: $21 $00 $d0
	ld   b, $40                                      ; $5f5a: $06 $40
	call EnqueueHDMATransfer                                       ; $5f5c: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f5f: $cf
	ld   c, $80                                      ; $5f60: $0e $80
	ld   de, $9400                                   ; $5f62: $11 $00 $94
	ld   a, $07                                      ; $5f65: $3e $07

Jump_021_5f67:
	ld   hl, $d400                                   ; $5f67: $21 $00 $d4
	ld   b, $40                                      ; $5f6a: $06 $40
	call EnqueueHDMATransfer                                       ; $5f6c: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f6f: $cf
	ld   c, $81                                      ; $5f70: $0e $81
	ld   de, $8000                                   ; $5f72: $11 $00 $80
	ld   a, $07                                      ; $5f75: $3e $07
	ld   hl, $d800                                   ; $5f77: $21 $00 $d8
	ld   b, $40                                      ; $5f7a: $06 $40
	call EnqueueHDMATransfer                                       ; $5f7c: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f7f: $cf
	ld   c, $81                                      ; $5f80: $0e $81
	ld   de, $8400                                   ; $5f82: $11 $00 $84
	ld   a, $07                                      ; $5f85: $3e $07
	ld   hl, $dc00                                   ; $5f87: $21 $00 $dc
	ld   b, $40                                      ; $5f8a: $06 $40
	call EnqueueHDMATransfer                                       ; $5f8c: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f8f: $cf
	ld   a, $2d                                      ; $5f90: $3e $2d
	ld   hl, $d000                                   ; $5f92: $21 $00 $d0
	ld   de, $4b68                                   ; $5f95: $11 $68 $4b
if def(VWF)
	call NapOrTrainBank1_8800hHook
else
	call RLEXorCopy                                       ; $5f98: $cd $d2 $09
endc
	ld   c, $81                                      ; $5f9b: $0e $81
	ld   de, $8800                                   ; $5f9d: $11 $00 $88
	ld   a, $07                                      ; $5fa0: $3e $07
	ld   hl, $d000                                   ; $5fa2: $21 $00 $d0
	ld   b, $40                                      ; $5fa5: $06 $40
	call EnqueueHDMATransfer                                       ; $5fa7: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5faa: $cf
	ld   c, $81                                      ; $5fab: $0e $81
	ld   de, $8c00                                   ; $5fad: $11 $00 $8c
	ld   a, $07                                      ; $5fb0: $3e $07
	ld   hl, $d400                                   ; $5fb2: $21 $00 $d4
	ld   b, $40                                      ; $5fb5: $06 $40
	call EnqueueHDMATransfer                                       ; $5fb7: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fba: $cf
	ld   c, $81                                      ; $5fbb: $0e $81
	ld   de, $9000                                   ; $5fbd: $11 $00 $90
	ld   a, $07                                      ; $5fc0: $3e $07
	ld   hl, $d800                                   ; $5fc2: $21 $00 $d8
	ld   b, $40                                      ; $5fc5: $06 $40
	call EnqueueHDMATransfer                                       ; $5fc7: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fca: $cf
	ld   c, $81                                      ; $5fcb: $0e $81
	ld   de, $9400                                   ; $5fcd: $11 $00 $94
	ld   a, $07                                      ; $5fd0: $3e $07
	ld   hl, $dc00                                   ; $5fd2: $21 $00 $dc
	ld   b, $40                                      ; $5fd5: $06 $40
	call EnqueueHDMATransfer                                       ; $5fd7: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fda: $cf
	ld   a, $2f                                      ; $5fdb: $3e $2f
	ld   hl, $d000                                   ; $5fdd: $21 $00 $d0
	ld   de, $574e                                   ; $5fe0: $11 $4e $57
if def(VWF)
	call NapOrTrainTileMapHook
else
	call RLEXorCopy                                       ; $5fe3: $cd $d2 $09
endc
	ld   c, $80                                      ; $5fe6: $0e $80
	ld   de, $9800                                   ; $5fe8: $11 $00 $98
	ld   a, $07                                      ; $5feb: $3e $07
	ld   hl, $d000                                   ; $5fed: $21 $00 $d0
	ld   b, $40                                      ; $5ff0: $06 $40
	call EnqueueHDMATransfer                                       ; $5ff2: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ff5: $cf
	ld   a, $2f                                      ; $5ff6: $3e $2f
	ld   hl, $d000                                   ; $5ff8: $21 $00 $d0
	ld   de, $621a                                   ; $5ffb: $11 $1a $62
	call RLEXorCopy                                       ; $5ffe: $cd $d2 $09
	ld   c, $81                                      ; $6001: $0e $81
	ld   de, $9800                                   ; $6003: $11 $00 $98
	ld   a, $07                                      ; $6006: $3e $07
	ld   hl, $d000                                   ; $6008: $21 $00 $d0
	ld   b, $40                                      ; $600b: $06 $40
	call EnqueueHDMATransfer                                       ; $600d: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6010: $cf
	pop  af                                          ; $6011: $f1
	ld   [wWramBank], a                                  ; $6012: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6015: $e0 $70
	call ClearOam                                       ; $6017: $cd $d7 $0d
	ld   a, $0a                                      ; $601a: $3e $0a
	ld   [wRandomNumRange], a                                  ; $601c: $ea $a5 $c2
	call UpdateSramRandomSeed                                       ; $601f: $cd $70 $0c
	xor  a                                           ; $6022: $af
	ld   [$ca6e], a                                  ; $6023: $ea $6e $ca
	ld   [$ca76], a                                  ; $6026: $ea $76 $ca
	ld   [$ca87], a                                  ; $6029: $ea $87 $ca
	ld   [$ca94], a                                  ; $602c: $ea $94 $ca
	ld   [$ca8f], a                                  ; $602f: $ea $8f $ca
	ld   [$ca93], a                                  ; $6032: $ea $93 $ca
	ld   [$ca96], a                                  ; $6035: $ea $96 $ca
	ld   a, $03                                      ; $6038: $3e $03
	call Call_021_416b                               ; $603a: $cd $6b $41
	call Call_021_60a8                               ; $603d: $cd $a8 $60
	call TurnOffLCD                                       ; $6040: $cd $e3 $08
	ld   a, $00                                      ; $6043: $3e $00
	ld   b, $04                                      ; $6045: $06 $04
	ld   c, $00                                      ; $6047: $0e $00
	ld   de, $0608                                   ; $6049: $11 $08 $06
	ld   hl, $9820                                   ; $604c: $21 $20 $98
	push af                                          ; $604f: $f5
	ld   a, $79                                      ; $6050: $3e $79
	ld   [wFarCallAddr], a                                  ; $6052: $ea $98 $c2
	ld   a, $5b                                      ; $6055: $3e $5b
	ld   [wFarCallAddr+1], a                                  ; $6057: $ea $99 $c2
	ld   a, $0c                                      ; $605a: $3e $0c
	ld   [wFarCallBank], a                                  ; $605c: $ea $9a $c2
	pop  af                                          ; $605f: $f1
	call FarCall                                       ; $6060: $cd $62 $09
	call TurnOnLCD                                       ; $6063: $cd $09 $09
	ld   hl, $afd0                                   ; $6066: $21 $d0 $af

	M_FarCall LoadStatBars

	ld   a, [$ca86]                                  ; $607d: $fa $86 $ca
	cp   $02                                         ; $6080: $fe $02
	jr   z, jr_021_6095                              ; $6082: $28 $11

	cp   $01                                         ; $6084: $fe $01
	jr   z, jr_021_6090                              ; $6086: $28 $08

	call Call_021_6157                               ; $6088: $cd $57 $61
	call Call_021_61c6                               ; $608b: $cd $c6 $61
	jr   jr_021_6098                                 ; $608e: $18 $08

jr_021_6090:
	call Call_021_621c                               ; $6090: $cd $1c $62
	jr   jr_021_6098                                 ; $6093: $18 $03

jr_021_6095:
	call Call_021_629d                               ; $6095: $cd $9d $62

jr_021_6098:
	call AnimateAllAnimatedSpriteSpecs                                       ; $6098: $cd $d3 $2e
	ld   c, $2f                                      ; $609b: $0e $2f
	ld   de, $68e3                                   ; $609d: $11 $e3 $68
	call Call_021_44ac                               ; $60a0: $cd $ac $44
	ld   hl, wGameSubstate                                   ; $60a3: $21 $a1 $c2
	inc  [hl]                                        ; $60a6: $34
	ret                                              ; $60a7: $c9


Call_021_60a8:
	ld   a, [$ca86]                                  ; $60a8: $fa $86 $ca
	cp   $02                                         ; $60ab: $fe $02
	jr   z, jr_021_60dc                              ; $60ad: $28 $2d

	cp   $01                                         ; $60af: $fe $01
	jr   z, jr_021_60cc                              ; $60b1: $28 $19

	ld   a, $9e                                      ; $60b3: $3e $9e
	ld   [$ca8e], a                                  ; $60b5: $ea $8e $ca
	ld   hl, $61a9                                   ; $60b8: $21 $a9 $61
	ld   de, wKouboChosen0idxed                                   ; $60bb: $11 $6f $ca
	call Call_021_411c                               ; $60be: $cd $1c $41
	ld   hl, $6201                                   ; $60c1: $21 $01 $62
	ld   de, $ca77                                   ; $60c4: $11 $77 $ca
	call Call_021_411c                               ; $60c7: $cd $1c $41
	jr   jr_021_60ea                                 ; $60ca: $18 $1e

jr_021_60cc:
	ld   a, $9e                                      ; $60cc: $3e $9e
	ld   [$ca8e], a                                  ; $60ce: $ea $8e $ca
	ld   hl, $626e                                   ; $60d1: $21 $6e $62
	ld   de, wKouboChosen0idxed                                   ; $60d4: $11 $6f $ca
	call Call_021_411c                               ; $60d7: $cd $1c $41
	jr   jr_021_60ea                                 ; $60da: $18 $0e

jr_021_60dc:
	ld   a, $b6                                      ; $60dc: $3e $b6
	ld   [$ca8e], a                                  ; $60de: $ea $8e $ca
	ld   hl, $62ef                                   ; $60e1: $21 $ef $62
	ld   de, wKouboChosen0idxed                                   ; $60e4: $11 $6f $ca
	call Call_021_411c                               ; $60e7: $cd $1c $41

jr_021_60ea:
	ret                                              ; $60ea: $c9


	ld   hl, $afd0                                   ; $60eb: $21 $d0 $af

	M_FarCall LoadStatBars

	ld   a, [$ca87]                                  ; $6102: $fa $87 $ca
	cp   $01                                         ; $6105: $fe $01
	jp   z, Jump_021_614a                            ; $6107: $ca $4a $61

	call ClearOam                                       ; $610a: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $610d: $cd $d3 $2e
	ld   a, [$ca6e]                                  ; $6110: $fa $6e $ca
	and  a                                           ; $6113: $a7
	jr   z, jr_021_612e                              ; $6114: $28 $18

	ld   a, [$ca86]                                  ; $6116: $fa $86 $ca
	cp   $00                                         ; $6119: $fe $00
	jr   nz, jr_021_6123                             ; $611b: $20 $06

	ld   a, [$ca76]                                  ; $611d: $fa $76 $ca
	and  a                                           ; $6120: $a7
	jr   z, jr_021_612e                              ; $6121: $28 $0b

jr_021_6123:
	xor  a                                           ; $6123: $af
	ld   [$ca94], a                                  ; $6124: $ea $94 $ca
	ld   a, [$ca87]                                  ; $6127: $fa $87 $ca
	inc  a                                           ; $612a: $3c
	ld   [$ca87], a                                  ; $612b: $ea $87 $ca

jr_021_612e:
	ld   a, [$ca86]                                  ; $612e: $fa $86 $ca
	cp   $02                                         ; $6131: $fe $02
	jr   z, jr_021_6146                              ; $6133: $28 $11

	cp   $01                                         ; $6135: $fe $01
	jr   z, jr_021_6141                              ; $6137: $28 $08

	call Call_021_6157                               ; $6139: $cd $57 $61
	call Call_021_61c6                               ; $613c: $cd $c6 $61
	jr   jr_021_6149                                 ; $613f: $18 $08

jr_021_6141:
	call Call_021_621c                               ; $6141: $cd $1c $62
	jr   jr_021_6149                                 ; $6144: $18 $03

jr_021_6146:
	call Call_021_629d                               ; $6146: $cd $9d $62

jr_021_6149:
	ret                                              ; $6149: $c9


Jump_021_614a:
	ld   a, $50                                      ; $614a: $3e $50
	ld   [$ca9f], a                                  ; $614c: $ea $9f $ca
	call Call_021_44d4                               ; $614f: $cd $d4 $44
	ld   hl, wGameSubstate                                   ; $6152: $21 $a1 $c2
	inc  [hl]                                        ; $6155: $34
	ret                                              ; $6156: $c9


Call_021_6157:
	ld   a, $22                                      ; $6157: $3e $22
	ld   [$ca72], a                                  ; $6159: $ea $72 $ca
	ld   a, $59                                      ; $615c: $3e $59
	ld   [$ca73], a                                  ; $615e: $ea $73 $ca
	ld   hl, $61a9                                   ; $6161: $21 $a9 $61
	ld   a, [$ca71]                                  ; $6164: $fa $71 $ca
	cp   $0e                                         ; $6167: $fe $0e
	jr   nz, jr_021_617b                             ; $6169: $20 $10

	ld   a, [$ca94]                                  ; $616b: $fa $94 $ca
	and  a                                           ; $616e: $a7
	jr   nz, jr_021_617b                             ; $616f: $20 $0a

	ld   a, $ff                                      ; $6171: $3e $ff
	ld   [$ca94], a                                  ; $6173: $ea $94 $ca
	ld   a, $03                                      ; $6176: $3e $03
	call Call_021_4481                               ; $6178: $cd $81 $44

jr_021_617b:
	ld   de, wKouboChosen0idxed                                   ; $617b: $11 $6f $ca
	push hl                                          ; $617e: $e5
	ld   a, $9e                                      ; $617f: $3e $9e
	ld   [$ca8e], a                                  ; $6181: $ea $8e $ca
	call Call_021_412a                               ; $6184: $cd $2a $41
	pop  hl                                          ; $6187: $e1
	jr   nc, jr_021_6195                             ; $6188: $30 $0b

	ld   a, [wKouboChosen0idxed]                                  ; $618a: $fa $6f $ca
	and  a                                           ; $618d: $a7
	jr   nz, jr_021_6195                             ; $618e: $20 $05

	ld   a, $01                                      ; $6190: $3e $01
	ld   [$ca6e], a                                  ; $6192: $ea $6e $ca

jr_021_6195:
	ld   a, $04                                      ; $6195: $3e $04
	ld   [wSpriteGroup], a                                  ; $6197: $ea $1a $c2
	ld   a, [$ca72]                                  ; $619a: $fa $72 $ca
	ld   b, a                                        ; $619d: $47
	ld   a, [$ca73]                                  ; $619e: $fa $73 $ca
	ld   c, a                                        ; $61a1: $4f
	ld   a, [$ca70]                                  ; $61a2: $fa $70 $ca
	call LoadSpriteFromMainTable                                       ; $61a5: $cd $16 $0e
	ret                                              ; $61a8: $c9


	db   $10                                         ; $61a9: $10
	dec  b                                           ; $61aa: $05
	db   $10                                         ; $61ab: $10
	ld   b, $10                                      ; $61ac: $06 $10
	dec  b                                           ; $61ae: $05
	db   $10                                         ; $61af: $10
	ld   b, $10                                      ; $61b0: $06 $10
	dec  b                                           ; $61b2: $05
	db   $10                                         ; $61b3: $10
	ld   b, $10                                      ; $61b4: $06 $10
	dec  b                                           ; $61b6: $05
	db   $10                                         ; $61b7: $10
	ld   b, $10                                      ; $61b8: $06 $10
	dec  b                                           ; $61ba: $05
	db   $10                                         ; $61bb: $10
	ld   b, $10                                      ; $61bc: $06 $10
	dec  b                                           ; $61be: $05
	db   $10                                         ; $61bf: $10
	ld   b, $10                                      ; $61c0: $06 $10
	dec  b                                           ; $61c2: $05
	db   $10                                         ; $61c3: $10
	ld   b, $00                                      ; $61c4: $06 $00

Call_021_61c6:
	ld   a, $5e                                      ; $61c6: $3e $5e
	ld   [$ca7a], a                                  ; $61c8: $ea $7a $ca
	ld   a, $59                                      ; $61cb: $3e $59
	ld   [$ca7b], a                                  ; $61cd: $ea $7b $ca
	ld   hl, $6201                                   ; $61d0: $21 $01 $62
	ld   de, $ca77                                   ; $61d3: $11 $77 $ca
	push hl                                          ; $61d6: $e5
	ld   a, $9e                                      ; $61d7: $3e $9e
	ld   [$ca8e], a                                  ; $61d9: $ea $8e $ca
	call Call_021_412a                               ; $61dc: $cd $2a $41
	pop  hl                                          ; $61df: $e1
	jr   nc, jr_021_61ed                             ; $61e0: $30 $0b

	ld   a, [$ca77]                                  ; $61e2: $fa $77 $ca
	and  a                                           ; $61e5: $a7
	jr   nz, jr_021_61ed                             ; $61e6: $20 $05

	ld   a, $01                                      ; $61e8: $3e $01
	ld   [$ca76], a                                  ; $61ea: $ea $76 $ca

jr_021_61ed:
	ld   a, $04                                      ; $61ed: $3e $04
	ld   [wSpriteGroup], a                                  ; $61ef: $ea $1a $c2
	ld   a, [$ca7a]                                  ; $61f2: $fa $7a $ca
	ld   b, a                                        ; $61f5: $47
	ld   a, [$ca7b]                                  ; $61f6: $fa $7b $ca
	ld   c, a                                        ; $61f9: $4f
	ld   a, [$ca78]                                  ; $61fa: $fa $78 $ca
	call LoadSpriteFromMainTable                                       ; $61fd: $cd $16 $0e
	ret                                              ; $6200: $c9


	ld   a, [hl+]                                    ; $6201: $2a
	nop                                              ; $6202: $00
	dec  b                                           ; $6203: $05
	ld   bc, $0205                                   ; $6204: $01 $05 $02
	dec  b                                           ; $6207: $05
	ld   bc, $0205                                   ; $6208: $01 $05 $02
	ld   a, [hl+]                                    ; $620b: $2a
	nop                                              ; $620c: $00
	dec  b                                           ; $620d: $05
	ld   bc, $0205                                   ; $620e: $01 $05 $02
	dec  b                                           ; $6211: $05
	ld   bc, $0205                                   ; $6212: $01 $05 $02
	ld   a, [hl+]                                    ; $6215: $2a
	nop                                              ; $6216: $00
	ld   a, [bc]                                     ; $6217: $0a
	inc  bc                                          ; $6218: $03
	jr   nc, @+$06                                   ; $6219: $30 $04

	nop                                              ; $621b: $00

Call_021_621c:
	ld   a, $60                                      ; $621c: $3e $60
	ld   [$ca72], a                                  ; $621e: $ea $72 $ca
	ld   a, $59                                      ; $6221: $3e $59
	ld   [$ca73], a                                  ; $6223: $ea $73 $ca
	ld   hl, $626e                                   ; $6226: $21 $6e $62
	ld   a, [$ca71]                                  ; $6229: $fa $71 $ca
	cp   $0e                                         ; $622c: $fe $0e
	jr   nz, jr_021_6240                             ; $622e: $20 $10

	ld   a, [$ca94]                                  ; $6230: $fa $94 $ca
	and  a                                           ; $6233: $a7
	jr   nz, jr_021_6240                             ; $6234: $20 $0a

	ld   a, $ff                                      ; $6236: $3e $ff
	ld   [$ca94], a                                  ; $6238: $ea $94 $ca
	ld   a, $03                                      ; $623b: $3e $03
	call Call_021_4481                               ; $623d: $cd $81 $44

jr_021_6240:
	ld   de, wKouboChosen0idxed                                   ; $6240: $11 $6f $ca
	push hl                                          ; $6243: $e5
	ld   a, $9e                                      ; $6244: $3e $9e
	ld   [$ca8e], a                                  ; $6246: $ea $8e $ca
	call Call_021_412a                               ; $6249: $cd $2a $41
	pop  hl                                          ; $624c: $e1
	jr   nc, jr_021_625a                             ; $624d: $30 $0b

	ld   a, [wKouboChosen0idxed]                                  ; $624f: $fa $6f $ca
	and  a                                           ; $6252: $a7
	jr   nz, jr_021_625a                             ; $6253: $20 $05

	ld   a, $01                                      ; $6255: $3e $01
	ld   [$ca6e], a                                  ; $6257: $ea $6e $ca

jr_021_625a:
	ld   a, $04                                      ; $625a: $3e $04
	ld   [wSpriteGroup], a                                  ; $625c: $ea $1a $c2
	ld   a, [$ca72]                                  ; $625f: $fa $72 $ca
	ld   b, a                                        ; $6262: $47
	ld   a, [$ca73]                                  ; $6263: $fa $73 $ca
	ld   c, a                                        ; $6266: $4f
	ld   a, [$ca70]                                  ; $6267: $fa $70 $ca
	call LoadSpriteFromMainTable                                       ; $626a: $cd $16 $0e
	ret                                              ; $626d: $c9


	jr   nz, jr_021_6277                             ; $626e: $20 $07

	rlca                                             ; $6270: $07
	ld   [$090b], sp                                 ; $6271: $08 $0b $09
	rlca                                             ; $6274: $07
	ld   a, [bc]                                     ; $6275: $0a
	inc  d                                           ; $6276: $14

jr_021_6277:
	dec  bc                                          ; $6277: $0b
	inc  bc                                          ; $6278: $03
	inc  c                                           ; $6279: $0c
	inc  bc                                          ; $627a: $03
	dec  c                                           ; $627b: $0d
	inc  bc                                          ; $627c: $03
	ld   c, $06                                      ; $627d: $0e $06
	rrca                                             ; $627f: $0f
	rlca                                             ; $6280: $07
	db   $10                                         ; $6281: $10
	dec  b                                           ; $6282: $05
	ld   de, $1005                                   ; $6283: $11 $05 $10
	dec  b                                           ; $6286: $05
	rrca                                             ; $6287: $0f
	dec  b                                           ; $6288: $05
	ld   [de], a                                     ; $6289: $12
	dec  b                                           ; $628a: $05
	rrca                                             ; $628b: $0f
	dec  b                                           ; $628c: $05
	ld   [de], a                                     ; $628d: $12
	dec  b                                           ; $628e: $05
	ld   de, $1305                                   ; $628f: $11 $05 $13
	dec  b                                           ; $6292: $05
	inc  d                                           ; $6293: $14
	dec  b                                           ; $6294: $05
	rrca                                             ; $6295: $0f
	dec  b                                           ; $6296: $05
	dec  d                                           ; $6297: $15
	inc  c                                           ; $6298: $0c
	ld   d, $34                                      ; $6299: $16 $34
	rla                                              ; $629b: $17
	nop                                              ; $629c: $00

Call_021_629d:
	ld   a, $53                                      ; $629d: $3e $53
	ld   [$ca72], a                                  ; $629f: $ea $72 $ca
	ld   a, $59                                      ; $62a2: $3e $59
	ld   [$ca73], a                                  ; $62a4: $ea $73 $ca
	ld   hl, $62ef                                   ; $62a7: $21 $ef $62
	ld   a, [$ca71]                                  ; $62aa: $fa $71 $ca
	cp   $0e                                         ; $62ad: $fe $0e
	jr   nz, jr_021_62c1                             ; $62af: $20 $10

	ld   a, [$ca94]                                  ; $62b1: $fa $94 $ca
	and  a                                           ; $62b4: $a7
	jr   nz, jr_021_62c1                             ; $62b5: $20 $0a

	ld   a, $ff                                      ; $62b7: $3e $ff
	ld   [$ca94], a                                  ; $62b9: $ea $94 $ca
	ld   a, $03                                      ; $62bc: $3e $03
	call Call_021_4481                               ; $62be: $cd $81 $44

jr_021_62c1:
	ld   de, wKouboChosen0idxed                                   ; $62c1: $11 $6f $ca
	push hl                                          ; $62c4: $e5
	ld   a, $b6                                      ; $62c5: $3e $b6
	ld   [$ca8e], a                                  ; $62c7: $ea $8e $ca
	call Call_021_412a                               ; $62ca: $cd $2a $41
	pop  hl                                          ; $62cd: $e1
	jr   nc, jr_021_62db                             ; $62ce: $30 $0b

	ld   a, [wKouboChosen0idxed]                                  ; $62d0: $fa $6f $ca
	and  a                                           ; $62d3: $a7
	jr   nz, jr_021_62db                             ; $62d4: $20 $05

	ld   a, $01                                      ; $62d6: $3e $01
	ld   [$ca6e], a                                  ; $62d8: $ea $6e $ca

jr_021_62db:
	ld   a, $04                                      ; $62db: $3e $04
	ld   [wSpriteGroup], a                                  ; $62dd: $ea $1a $c2
	ld   a, [$ca72]                                  ; $62e0: $fa $72 $ca
	ld   b, a                                        ; $62e3: $47
	ld   a, [$ca73]                                  ; $62e4: $fa $73 $ca
	ld   c, a                                        ; $62e7: $4f
	ld   a, [$ca70]                                  ; $62e8: $fa $70 $ca
	call LoadSpriteFromMainTable                                       ; $62eb: $cd $16 $0e
	ret                                              ; $62ee: $c9


	ld   e, $00                                      ; $62ef: $1e $00
	ld   [$0201], sp                                 ; $62f1: $08 $01 $02
	ld   [bc], a                                     ; $62f4: $02
	rrca                                             ; $62f5: $0f
	inc  bc                                          ; $62f6: $03
	dec  b                                           ; $62f7: $05
	inc  b                                           ; $62f8: $04
	ld   [$0505], sp                                 ; $62f9: $08 $05 $05
	ld   b, $0e                                      ; $62fc: $06 $0e
	rlca                                             ; $62fe: $07
	dec  b                                           ; $62ff: $05
	ld   [$0905], sp                                 ; $6300: $08 $05 $09
	inc  b                                           ; $6303: $04
	ld   a, [bc]                                     ; $6304: $0a
	dec  b                                           ; $6305: $05
	dec  bc                                          ; $6306: $0b
	ld   c, $0c                                      ; $6307: $0e $0c
	ld   a, [bc]                                     ; $6309: $0a
	dec  c                                           ; $630a: $0d
	ld   c, $0e                                      ; $630b: $0e $0e
	inc  d                                           ; $630d: $14
	rrca                                             ; $630e: $0f
	ld   a, [bc]                                     ; $630f: $0a
	db   $10                                         ; $6310: $10
	dec  bc                                          ; $6311: $0b
	ld   de, $0f26                                   ; $6312: $11 $26 $0f
	nop                                              ; $6315: $00
	call ClearOam                                       ; $6316: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $6319: $cd $d3 $2e
	ld   a, [$ca86]                                  ; $631c: $fa $86 $ca
	cp   $02                                         ; $631f: $fe $02
	jr   z, jr_021_6334                              ; $6321: $28 $11

	cp   $01                                         ; $6323: $fe $01
	jr   z, jr_021_632f                              ; $6325: $28 $08

	call Call_021_6157                               ; $6327: $cd $57 $61
	call Call_021_61c6                               ; $632a: $cd $c6 $61
	jr   jr_021_6337                                 ; $632d: $18 $08

jr_021_632f:
	call Call_021_621c                               ; $632f: $cd $1c $62
	jr   jr_021_6337                                 ; $6332: $18 $03

jr_021_6334:
	call Call_021_629d                               ; $6334: $cd $9d $62

jr_021_6337:
	ld   a, [wInGameButtonsHeld]                                  ; $6337: $fa $0f $c2
	and  $82                                         ; $633a: $e6 $82
	jp   z, Jump_021_634a                            ; $633c: $ca $4a $63

	ld   a, [$caa5]                                  ; $633f: $fa $a5 $ca
	inc  a                                           ; $6342: $3c
	cp   $0b                                         ; $6343: $fe $0b
	jr   nc, jr_021_634a                             ; $6345: $30 $03

	ld   [$caa5], a                                  ; $6347: $ea $a5 $ca

Jump_021_634a:
jr_021_634a:
	ld   a, [$caa6]                                  ; $634a: $fa $a6 $ca
	cp   $03                                         ; $634d: $fe $03
	jr   z, jr_021_63ad                              ; $634f: $28 $5c

	ld   a, [$caa4]                                  ; $6351: $fa $a4 $ca
	and  a                                           ; $6354: $a7
	jr   nz, jr_021_6381                             ; $6355: $20 $2a

	ld   hl, $afd0                                   ; $6357: $21 $d0 $af

	M_FarCall LoadStatBars

	ld   hl, $caa5                                   ; $636e: $21 $a5 $ca
	inc  [hl]                                        ; $6371: $34
	ld   a, [hl]                                     ; $6372: $7e
	cp   $0b                                         ; $6373: $fe $0b
	jr   c, jr_021_6380                              ; $6375: $38 $09

	ld   a, $01                                      ; $6377: $3e $01
	ld   [$caa4], a                                  ; $6379: $ea $a4 $ca
	xor  a                                           ; $637c: $af
	ld   [$caa5], a                                  ; $637d: $ea $a5 $ca

jr_021_6380:
	ret                                              ; $6380: $c9


jr_021_6381:
	ld   hl, $ca97                                   ; $6381: $21 $97 $ca

	M_FarCall LoadStatBars

	ld   hl, $caa5                                   ; $6398: $21 $a5 $ca
	inc  [hl]                                        ; $639b: $34
	ld   a, [hl]                                     ; $639c: $7e
	cp   $0b                                         ; $639d: $fe $0b
	jr   c, jr_021_63ac                              ; $639f: $38 $0b

	xor  a                                           ; $63a1: $af
	ld   [$caa4], a                                  ; $63a2: $ea $a4 $ca
	ld   [$caa5], a                                  ; $63a5: $ea $a5 $ca
	ld   hl, $caa6                                   ; $63a8: $21 $a6 $ca
	inc  [hl]                                        ; $63ab: $34

jr_021_63ac:
	ret                                              ; $63ac: $c9


jr_021_63ad:
	ld   a, [$ca97]                                  ; $63ad: $fa $97 $ca
	ld   [$afd0], a                                  ; $63b0: $ea $d0 $af
	ld   a, [$ca98]                                  ; $63b3: $fa $98 $ca
	ld   [sSramVals2+SRAM2_INTELLECT], a                                  ; $63b6: $ea $d1 $af
	ld   a, [$ca99]                                  ; $63b9: $fa $99 $ca
	ld   [sSramVals2+SRAM2_SPIRIT_POWER], a                                  ; $63bc: $ea $d2 $af
	ld   a, [$ca9a]                                  ; $63bf: $fa $9a $ca
	ld   [sSramVals2+SRAM2_GUTS], a                                  ; $63c2: $ea $d3 $af
	ld   a, [$ca9b]                                  ; $63c5: $fa $9b $ca
	ld   [sSramVals2+SRAM2_SPEED], a                                  ; $63c8: $ea $d4 $af
	ld   a, [$ca9c]                                  ; $63cb: $fa $9c $ca
	ld   [sSramVals2+SRAM2_ACCURACY], a                                  ; $63ce: $ea $d5 $af
	ld   hl, wGameSubstate                                   ; $63d1: $21 $a1 $c2
	inc  [hl]                                        ; $63d4: $34
	ret                                              ; $63d5: $c9


	ld   a, [$b1b4]                                  ; $63d6: $fa $b4 $b1
	and  a                                           ; $63d9: $a7
	jr   nz, jr_021_63f5                             ; $63da: $20 $19

	ld   a, [wInGameButtonsHeld]                                  ; $63dc: $fa $0f $c2
	and  $02                                         ; $63df: $e6 $02
	jp   nz, Jump_021_63f5                           ; $63e1: $c2 $f5 $63

	ld   a, [wInGameButtonsPressed]                                  ; $63e4: $fa $10 $c2
	and  $03                                         ; $63e7: $e6 $03
	jr   nz, jr_021_63f5                             ; $63e9: $20 $0a

	ld   a, [$ca96]                                  ; $63eb: $fa $96 $ca
	inc  a                                           ; $63ee: $3c
	ld   [$ca96], a                                  ; $63ef: $ea $96 $ca
	cp   $b4                                         ; $63f2: $fe $b4
	ret  nz                                          ; $63f4: $c0

Jump_021_63f5:
jr_021_63f5:
	ld   b, $2f                                      ; $63f5: $06 $2f
	ld   hl, $68e3                                   ; $63f7: $21 $e3 $68
	call Call_021_4484                               ; $63fa: $cd $84 $44
	ld   a, [wNapOrTrainReturnState]                                  ; $63fd: $fa $4c $ca
	ld   [wGameState], a                                  ; $6400: $ea $a0 $c2
	ld   a, [wNapOrTrainReturnSubstate]                                  ; $6403: $fa $4d $ca
	ld   [wGameSubstate], a                                  ; $6406: $ea $a1 $c2
	ret                                              ; $6409: $c9


GameState2d_Nap::
	ld   a, [wGameSubstate]                                  ; $640a: $fa $a1 $c2
	rst  JumpTable                                         ; $640d: $df
	dw NapSubstate0
	dw $6602
	dw $66b0
	dw $6758


NapSubstate0:
	call TurnOnLCD                                       ; $6416: $cd $09 $09
	ld   a, $ff                                      ; $6419: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $641b: $ea $0e $c2
	ld   a, $0c                                      ; $641e: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $6420: $ea $13 $c2
	ld   a, $04                                      ; $6423: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $6425: $ea $14 $c2
	ld   a, [wLCDC]                                  ; $6428: $fa $03 $c2
	and  $e0                                         ; $642b: $e6 $e0
	or   $07                                         ; $642d: $f6 $07
	ld   [wLCDC], a                                  ; $642f: $ea $03 $c2
	ld   a, [wWramBank]                                  ; $6432: $fa $93 $c2
	push af                                          ; $6435: $f5
	ld   a, $07                                      ; $6436: $3e $07
	ld   [wWramBank], a                                  ; $6438: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $643b: $e0 $70
	ld   a, $2f                                      ; $643d: $3e $2f
	ld   hl, $d000                                   ; $643f: $21 $00 $d0
	ld   de, $4a22                                   ; $6442: $11 $22 $4a
	call RLEXorCopy                                       ; $6445: $cd $d2 $09
	ld   c, $80                                      ; $6448: $0e $80
	ld   de, $8000                                   ; $644a: $11 $00 $80
	ld   a, $07                                      ; $644d: $3e $07
	ld   hl, $d000                                   ; $644f: $21 $00 $d0
	ld   b, $40                                      ; $6452: $06 $40
	call EnqueueHDMATransfer                                       ; $6454: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6457: $cf
	ld   c, $80                                      ; $6458: $0e $80
	ld   de, $8400                                   ; $645a: $11 $00 $84
	ld   a, $07                                      ; $645d: $3e $07
	ld   hl, $d400                                   ; $645f: $21 $00 $d4
	ld   b, $40                                      ; $6462: $06 $40
	call EnqueueHDMATransfer                                       ; $6464: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6467: $cf
	ld   c, $80                                      ; $6468: $0e $80
	ld   de, $8800                                   ; $646a: $11 $00 $88
	ld   a, $07                                      ; $646d: $3e $07
	ld   hl, $d800                                   ; $646f: $21 $00 $d8
	ld   b, $40                                      ; $6472: $06 $40
	call EnqueueHDMATransfer                                       ; $6474: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6477: $cf
	ld   c, $80                                      ; $6478: $0e $80
	ld   de, $8c00                                   ; $647a: $11 $00 $8c
	ld   a, $07                                      ; $647d: $3e $07
	ld   hl, $dc00                                   ; $647f: $21 $00 $dc
	ld   b, $40                                      ; $6482: $06 $40
	call EnqueueHDMATransfer                                       ; $6484: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6487: $cf
	ld   a, $2e                                      ; $6488: $3e $2e
	ld   hl, $d000                                   ; $648a: $21 $00 $d0
	ld   de, $67ee                                   ; $648d: $11 $ee $67
	call RLEXorCopy                                       ; $6490: $cd $d2 $09
	ld   c, $80                                      ; $6493: $0e $80
	ld   de, $9000                                   ; $6495: $11 $00 $90
	ld   a, $07                                      ; $6498: $3e $07
	ld   hl, $d000                                   ; $649a: $21 $00 $d0
	ld   b, $40                                      ; $649d: $06 $40
	call EnqueueHDMATransfer                                       ; $649f: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64a2: $cf
	ld   c, $80                                      ; $64a3: $0e $80
	ld   de, $9400                                   ; $64a5: $11 $00 $94
	ld   a, $07                                      ; $64a8: $3e $07
	ld   hl, $d400                                   ; $64aa: $21 $00 $d4
	ld   b, $40                                      ; $64ad: $06 $40
	call EnqueueHDMATransfer                                       ; $64af: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64b2: $cf
	ld   c, $81                                      ; $64b3: $0e $81
	ld   de, $8000                                   ; $64b5: $11 $00 $80
	ld   a, $07                                      ; $64b8: $3e $07
	ld   hl, $d800                                   ; $64ba: $21 $00 $d8
	ld   b, $40                                      ; $64bd: $06 $40
	call EnqueueHDMATransfer                                       ; $64bf: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64c2: $cf
	ld   c, $81                                      ; $64c3: $0e $81
	ld   de, $8400                                   ; $64c5: $11 $00 $84
	ld   a, $07                                      ; $64c8: $3e $07
	ld   hl, $dc00                                   ; $64ca: $21 $00 $dc
	ld   b, $40                                      ; $64cd: $06 $40
	call EnqueueHDMATransfer                                       ; $64cf: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64d2: $cf
	ld   a, $2e                                      ; $64d3: $3e $2e
	ld   hl, $d000                                   ; $64d5: $21 $00 $d0
	ld   de, $767c                                   ; $64d8: $11 $7c $76
if def(VWF)
	call NapOrTrainBank1_8800hHook
else
	call RLEXorCopy                                       ; $64db: $cd $d2 $09
endc
	ld   c, $81                                      ; $64de: $0e $81
	ld   de, $8800                                   ; $64e0: $11 $00 $88
	ld   a, $07                                      ; $64e3: $3e $07
	ld   hl, $d000                                   ; $64e5: $21 $00 $d0
	ld   b, $40                                      ; $64e8: $06 $40
	call EnqueueHDMATransfer                                       ; $64ea: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64ed: $cf
	ld   c, $81                                      ; $64ee: $0e $81
	ld   de, $8c00                                   ; $64f0: $11 $00 $8c
	ld   a, $07                                      ; $64f3: $3e $07
	ld   hl, $d400                                   ; $64f5: $21 $00 $d4
	ld   b, $40                                      ; $64f8: $06 $40
	call EnqueueHDMATransfer                                       ; $64fa: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64fd: $cf
	ld   c, $81                                      ; $64fe: $0e $81
	ld   de, $9000                                   ; $6500: $11 $00 $90
	ld   a, $07                                      ; $6503: $3e $07
	ld   hl, $d800                                   ; $6505: $21 $00 $d8
	ld   b, $40                                      ; $6508: $06 $40
	call EnqueueHDMATransfer                                       ; $650a: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $650d: $cf
	ld   c, $81                                      ; $650e: $0e $81
	ld   de, $9400                                   ; $6510: $11 $00 $94
	ld   a, $07                                      ; $6513: $3e $07
	ld   hl, $dc00                                   ; $6515: $21 $00 $dc
	ld   b, $40                                      ; $6518: $06 $40
	call EnqueueHDMATransfer                                       ; $651a: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $651d: $cf
	ld   a, $2f                                      ; $651e: $3e $2f
	ld   hl, $d000                                   ; $6520: $21 $00 $d0
	ld   de, $4db7                                   ; $6523: $11 $b7 $4d
if def(VWF)
	call NapOrTrainTileMapHook
else
	call RLEXorCopy                                       ; $6526: $cd $d2 $09
endc
	ld   c, $80                                      ; $6529: $0e $80
	ld   de, $9800                                   ; $652b: $11 $00 $98
	ld   a, $07                                      ; $652e: $3e $07
	ld   hl, $d000                                   ; $6530: $21 $00 $d0
	ld   b, $40                                      ; $6533: $06 $40
	call EnqueueHDMATransfer                                       ; $6535: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6538: $cf
	ld   c, $80                                      ; $6539: $0e $80
	ld   de, $9c00                                   ; $653b: $11 $00 $9c
	ld   a, $07                                      ; $653e: $3e $07
	ld   hl, $d400                                   ; $6540: $21 $00 $d4
	ld   b, $40                                      ; $6543: $06 $40
	call EnqueueHDMATransfer                                       ; $6545: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6548: $cf
	ld   a, $2f                                      ; $6549: $3e $2f
	ld   hl, $d000                                   ; $654b: $21 $00 $d0
	ld   de, $5cef                                   ; $654e: $11 $ef $5c
	call RLEXorCopy                                       ; $6551: $cd $d2 $09
	ld   c, $81                                      ; $6554: $0e $81
	ld   de, $9800                                   ; $6556: $11 $00 $98
	ld   a, $07                                      ; $6559: $3e $07
	ld   hl, $d000                                   ; $655b: $21 $00 $d0
	ld   b, $40                                      ; $655e: $06 $40
	call EnqueueHDMATransfer                                       ; $6560: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6563: $cf
	ld   c, $81                                      ; $6564: $0e $81
	ld   de, $9c00                                   ; $6566: $11 $00 $9c
	ld   a, $07                                      ; $6569: $3e $07
	ld   hl, $d400                                   ; $656b: $21 $00 $d4
	ld   b, $40                                      ; $656e: $06 $40
	call EnqueueHDMATransfer                                       ; $6570: $cd $7c $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6573: $cf
	pop  af                                          ; $6574: $f1
	ld   [wWramBank], a                                  ; $6575: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6578: $e0 $70
	call ClearOam                                       ; $657a: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $657d: $cd $c9 $2e
	xor  a                                           ; $6580: $af
	ld   [$ca6e], a                                  ; $6581: $ea $6e $ca
	ld   [$ca76], a                                  ; $6584: $ea $76 $ca
	ld   [$ca7e], a                                  ; $6587: $ea $7e $ca
	ld   [$ca8f], a                                  ; $658a: $ea $8f $ca
	ld   [$ca93], a                                  ; $658d: $ea $93 $ca
	ld   [$ca87], a                                  ; $6590: $ea $87 $ca
	ld   [$ca96], a                                  ; $6593: $ea $96 $ca
	ld   a, $ff                                      ; $6596: $3e $ff
	ld   [$ca94], a                                  ; $6598: $ea $94 $ca
	ld   a, $00                                      ; $659b: $3e $00
	ld   [$ca86], a                                  ; $659d: $ea $86 $ca
	ld   a, $d9                                      ; $65a0: $3e $d9
	ld   [$ca8e], a                                  ; $65a2: $ea $8e $ca
	call Call_021_65f8                               ; $65a5: $cd $f8 $65
	call TurnOffLCD                                       ; $65a8: $cd $e3 $08
	ld   a, $00                                      ; $65ab: $3e $00
	ld   b, $04                                      ; $65ad: $06 $04
	ld   c, $00                                      ; $65af: $0e $00
	ld   de, $0608                                   ; $65b1: $11 $08 $06
	ld   hl, $9820                                   ; $65b4: $21 $20 $98
	push af                                          ; $65b7: $f5
	ld   a, $79                                      ; $65b8: $3e $79
	ld   [wFarCallAddr], a                                  ; $65ba: $ea $98 $c2
	ld   a, $5b                                      ; $65bd: $3e $5b
	ld   [wFarCallAddr+1], a                                  ; $65bf: $ea $99 $c2
	ld   a, $0c                                      ; $65c2: $3e $0c
	ld   [wFarCallBank], a                                  ; $65c4: $ea $9a $c2
	pop  af                                          ; $65c7: $f1
	call FarCall                                       ; $65c8: $cd $62 $09
	call TurnOnLCD                                       ; $65cb: $cd $09 $09
	call Call_021_666e                               ; $65ce: $cd $6e $66
	ld   hl, $afd0                                   ; $65d1: $21 $d0 $af

	M_FarCall LoadStatBars

	call AnimateAllAnimatedSpriteSpecs                                       ; $65e8: $cd $d3 $2e
	ld   c, $2f                                      ; $65eb: $0e $2f
	ld   de, $6963                                   ; $65ed: $11 $63 $69
	call Call_021_44ac                               ; $65f0: $cd $ac $44
	ld   hl, wGameSubstate                                   ; $65f3: $21 $a1 $c2
	inc  [hl]                                        ; $65f6: $34
	ret                                              ; $65f7: $c9


Call_021_65f8:
	ld   hl, $66a9                                   ; $65f8: $21 $a9 $66
	ld   de, wKouboChosen0idxed                                   ; $65fb: $11 $6f $ca
	call Call_021_411c                               ; $65fe: $cd $1c $41
	ret                                              ; $6601: $c9


	ld   hl, $afd0                                   ; $6602: $21 $d0 $af

	M_FarCall LoadStatBars

	ld   a, [$ca87]                                  ; $6619: $fa $87 $ca
	cp   $02                                         ; $661c: $fe $02
	jr   z, jr_021_663e                              ; $661e: $28 $1e

	call ClearOam                                       ; $6620: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $6623: $cd $d3 $2e
	ld   a, [$ca6e]                                  ; $6626: $fa $6e $ca
	and  a                                           ; $6629: $a7
	jr   z, jr_021_663a                              ; $662a: $28 $0e

	xor  a                                           ; $662c: $af
	ld   [$ca6e], a                                  ; $662d: $ea $6e $ca
	call Call_021_65f8                               ; $6630: $cd $f8 $65
	ld   a, [$ca87]                                  ; $6633: $fa $87 $ca
	inc  a                                           ; $6636: $3c
	ld   [$ca87], a                                  ; $6637: $ea $87 $ca

jr_021_663a:
	call Call_021_666e                               ; $663a: $cd $6e $66
	ret                                              ; $663d: $c9


jr_021_663e:
	xor  a                                           ; $663e: $af
	ld   [$ca97], a                                  ; $663f: $ea $97 $ca
	ld   [$ca98], a                                  ; $6642: $ea $98 $ca
	ld   [$ca99], a                                  ; $6645: $ea $99 $ca
	ld   [$ca9a], a                                  ; $6648: $ea $9a $ca
	ld   [$ca9b], a                                  ; $664b: $ea $9b $ca
	ld   [$ca9c], a                                  ; $664e: $ea $9c $ca
	ld   [$ca9e], a                                  ; $6651: $ea $9e $ca
	ld   a, $80                                      ; $6654: $3e $80
	ld   [$ca9f], a                                  ; $6656: $ea $9f $ca
	ld   a, $80                                      ; $6659: $3e $80
	ld   [$ca97], a                                  ; $665b: $ea $97 $ca
	call Call_021_65f8                               ; $665e: $cd $f8 $65
	call Call_021_44d4                               ; $6661: $cd $d4 $44
	ld   hl, $ca9e                                   ; $6664: $21 $9e $ca
	xor  a                                           ; $6667: $af
	ld   [hl], a                                     ; $6668: $77
	ld   hl, wGameSubstate                                   ; $6669: $21 $a1 $c2
	inc  [hl]                                        ; $666c: $34
	ret                                              ; $666d: $c9


Call_021_666e:
	ld   a, $3a                                      ; $666e: $3e $3a
	ld   [$ca72], a                                  ; $6670: $ea $72 $ca
	ld   a, $5d                                      ; $6673: $3e $5d
	ld   [$ca73], a                                  ; $6675: $ea $73 $ca
	ld   hl, $66a9                                   ; $6678: $21 $a9 $66
	ld   de, wKouboChosen0idxed                                   ; $667b: $11 $6f $ca
	push hl                                          ; $667e: $e5
	ld   a, $d9                                      ; $667f: $3e $d9
	ld   [$ca8e], a                                  ; $6681: $ea $8e $ca
	call Call_021_412a                               ; $6684: $cd $2a $41
	pop  hl                                          ; $6687: $e1
	jr   nc, jr_021_6695                             ; $6688: $30 $0b

	ld   a, [wKouboChosen0idxed]                                  ; $668a: $fa $6f $ca
	and  a                                           ; $668d: $a7
	jr   nz, jr_021_6695                             ; $668e: $20 $05

	ld   a, $01                                      ; $6690: $3e $01
	ld   [$ca6e], a                                  ; $6692: $ea $6e $ca

jr_021_6695:
	ld   a, $04                                      ; $6695: $3e $04
	ld   [wSpriteGroup], a                                  ; $6697: $ea $1a $c2
	ld   a, [$ca72]                                  ; $669a: $fa $72 $ca
	ld   b, a                                        ; $669d: $47
	ld   a, [$ca73]                                  ; $669e: $fa $73 $ca
	ld   c, a                                        ; $66a1: $4f
	ld   a, [$ca70]                                  ; $66a2: $fa $70 $ca
	call LoadSpriteFromMainTable                                       ; $66a5: $cd $16 $0e
	ret                                              ; $66a8: $c9


	inc  h                                           ; $66a9: $24
	nop                                              ; $66aa: $00
	inc  h                                           ; $66ab: $24
	nop                                              ; $66ac: $00
	inc  h                                           ; $66ad: $24
	ld   bc, $cd00                                   ; $66ae: $01 $00 $cd
	rst  $10                                         ; $66b1: $d7
	dec  c                                           ; $66b2: $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $66b3: $cd $d3 $2e
	call Call_021_666e                               ; $66b6: $cd $6e $66
	ld   a, [wInGameButtonsHeld]                                  ; $66b9: $fa $0f $c2
	and  $82                                         ; $66bc: $e6 $82
	jp   z, Jump_021_66cc                            ; $66be: $ca $cc $66

	ld   a, [$caa5]                                  ; $66c1: $fa $a5 $ca
	inc  a                                           ; $66c4: $3c
	cp   $0b                                         ; $66c5: $fe $0b
	jr   nc, jr_021_66cc                             ; $66c7: $30 $03

	ld   [$caa5], a                                  ; $66c9: $ea $a5 $ca

Jump_021_66cc:
jr_021_66cc:
	ld   a, [$caa6]                                  ; $66cc: $fa $a6 $ca
	cp   $03                                         ; $66cf: $fe $03
	jr   z, jr_021_672f                              ; $66d1: $28 $5c

	ld   a, [$caa4]                                  ; $66d3: $fa $a4 $ca
	and  a                                           ; $66d6: $a7
	jr   nz, jr_021_6703                             ; $66d7: $20 $2a

	ld   hl, $afd0                                   ; $66d9: $21 $d0 $af

	M_FarCall LoadStatBars

	ld   hl, $caa5                                   ; $66f0: $21 $a5 $ca
	inc  [hl]                                        ; $66f3: $34
	ld   a, [hl]                                     ; $66f4: $7e
	cp   $0b                                         ; $66f5: $fe $0b
	jr   c, jr_021_6702                              ; $66f7: $38 $09

	ld   a, $01                                      ; $66f9: $3e $01
	ld   [$caa4], a                                  ; $66fb: $ea $a4 $ca
	xor  a                                           ; $66fe: $af
	ld   [$caa5], a                                  ; $66ff: $ea $a5 $ca

jr_021_6702:
	ret                                              ; $6702: $c9


jr_021_6703:
	ld   hl, $ca97                                   ; $6703: $21 $97 $ca

	M_FarCall LoadStatBars

	ld   hl, $caa5                                   ; $671a: $21 $a5 $ca
	inc  [hl]                                        ; $671d: $34
	ld   a, [hl]                                     ; $671e: $7e
	cp   $0b                                         ; $671f: $fe $0b
	jr   c, jr_021_672e                              ; $6721: $38 $0b

	xor  a                                           ; $6723: $af
	ld   [$caa4], a                                  ; $6724: $ea $a4 $ca
	ld   [$caa5], a                                  ; $6727: $ea $a5 $ca
	ld   hl, $caa6                                   ; $672a: $21 $a6 $ca
	inc  [hl]                                        ; $672d: $34

jr_021_672e:
	ret                                              ; $672e: $c9


jr_021_672f:
	ld   a, [$ca97]                                  ; $672f: $fa $97 $ca
	ld   [$afd0], a                                  ; $6732: $ea $d0 $af
	ld   a, [$ca98]                                  ; $6735: $fa $98 $ca
	ld   [sSramVals2+SRAM2_INTELLECT], a                                  ; $6738: $ea $d1 $af
	ld   a, [$ca99]                                  ; $673b: $fa $99 $ca
	ld   [sSramVals2+SRAM2_SPIRIT_POWER], a                                  ; $673e: $ea $d2 $af
	ld   a, [$ca9a]                                  ; $6741: $fa $9a $ca
	ld   [sSramVals2+SRAM2_GUTS], a                                  ; $6744: $ea $d3 $af
	ld   a, [$ca9b]                                  ; $6747: $fa $9b $ca
	ld   [sSramVals2+SRAM2_SPEED], a                                  ; $674a: $ea $d4 $af
	ld   a, [$ca9c]                                  ; $674d: $fa $9c $ca
	ld   [sSramVals2+SRAM2_ACCURACY], a                                  ; $6750: $ea $d5 $af
	ld   hl, wGameSubstate                                   ; $6753: $21 $a1 $c2
	inc  [hl]                                        ; $6756: $34
	ret                                              ; $6757: $c9


	ld   a, [$b1b4]                                  ; $6758: $fa $b4 $b1
	and  a                                           ; $675b: $a7
	jr   nz, jr_021_6777                             ; $675c: $20 $19

	ld   a, [wInGameButtonsHeld]                                  ; $675e: $fa $0f $c2
	and  $02                                         ; $6761: $e6 $02
	jp   nz, Jump_021_6777                           ; $6763: $c2 $77 $67

	ld   a, [wInGameButtonsPressed]                                  ; $6766: $fa $10 $c2
	and  $03                                         ; $6769: $e6 $03
	jr   nz, jr_021_6777                             ; $676b: $20 $0a

	ld   a, [$ca96]                                  ; $676d: $fa $96 $ca
	inc  a                                           ; $6770: $3c
	ld   [$ca96], a                                  ; $6771: $ea $96 $ca
	cp   $b4                                         ; $6774: $fe $b4
	ret  nz                                          ; $6776: $c0

Jump_021_6777:
jr_021_6777:
	ld   b, $2f                                      ; $6777: $06 $2f
	ld   hl, $6963                                   ; $6779: $21 $63 $69
	call Call_021_4484                               ; $677c: $cd $84 $44
	ld   a, [wNapOrTrainReturnState]                                  ; $677f: $fa $4c $ca
	ld   [wGameState], a                                  ; $6782: $ea $a0 $c2
	ld   a, [wNapOrTrainReturnSubstate]                                  ; $6785: $fa $4d $ca
	ld   [wGameSubstate], a                                  ; $6788: $ea $a1 $c2
	ret                                              ; $678b: $c9


GameState2e_TrainingDebugMenu::
	ld   a, [wGameSubstate]                                  ; $678c: $fa $a1 $c2
	rst  JumpTable                                         ; $678f: $df
	sub  [hl]                                        ; $6790: $96
	ld   h, a                                        ; $6791: $67
	db   $fd                                         ; $6792: $fd
	ld   h, a                                        ; $6793: $67
	db   $eb                                         ; $6794: $eb
	ld   l, b                                        ; $6795: $68
	call TurnOffLCD                                       ; $6796: $cd $e3 $08
	ld   a, $00                                      ; $6799: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $679b: $cd $e0 $1c
	ld   a, $ff                                      ; $679e: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $67a0: $ea $0e $c2
	ld   a, $0c                                      ; $67a3: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $67a5: $ea $13 $c2
	ld   a, $04                                      ; $67a8: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $67aa: $ea $14 $c2
	call ClearDisplayRegsAllowVBlankInt                                       ; $67ad: $cd $59 $0b
	call ClearOam                                       ; $67b0: $cd $d7 $0d
	ld   a, [wLCDC]                                  ; $67b3: $fa $03 $c2
	and  $e0                                         ; $67b6: $e6 $e0
	or   $67                                         ; $67b8: $f6 $67
	ld   [wLCDC], a                                  ; $67ba: $ea $03 $c2
	ld   a, $01                                      ; $67bd: $3e $01
	ldh  [rVBK], a                                   ; $67bf: $e0 $4f
	ld   a, $2f                                      ; $67c1: $3e $2f
	ld   hl, $9800                                   ; $67c3: $21 $00 $98
	ld   de, $65a3                                   ; $67c6: $11 $a3 $65
	call RLEXorCopy                                       ; $67c9: $cd $d2 $09
	xor  a                                           ; $67cc: $af
	ldh  [rVBK], a                                   ; $67cd: $e0 $4f
	ld   a, $2f                                      ; $67cf: $3e $2f
	ld   hl, $9800                                   ; $67d1: $21 $00 $98
	ld   de, $601e                                   ; $67d4: $11 $1e $60
	call RLEXorCopy                                       ; $67d7: $cd $d2 $09
	ld   a, $2e                                      ; $67da: $3e $2e
	ld   hl, $8000                                   ; $67dc: $21 $00 $80
	ld   de, $7b02                                   ; $67df: $11 $02 $7b
	call RLEXorCopy                                       ; $67e2: $cd $d2 $09
	call ClearOam                                       ; $67e5: $cd $d7 $0d
	ld   a, $07                                      ; $67e8: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $67ea: $cd $e0 $1c
	call TurnOnLCD                                       ; $67ed: $cd $09 $09
	ld   c, $2f                                      ; $67f0: $0e $2f
	ld   de, $6b81                                   ; $67f2: $11 $81 $6b
	call Call_021_44ac                               ; $67f5: $cd $ac $44
	ld   hl, wGameSubstate                                   ; $67f8: $21 $a1 $c2
	inc  [hl]                                        ; $67fb: $34
	ret                                              ; $67fc: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $67fd: $fa $10 $c2
	and  $40                                         ; $6800: $e6 $40
	jp   nz, Jump_021_686c                           ; $6802: $c2 $6c $68

	ld   a, [wInGameButtonsPressed]                                  ; $6805: $fa $10 $c2
	and  $80                                         ; $6808: $e6 $80
	jp   nz, Jump_021_6883                           ; $680a: $c2 $83 $68

	ld   a, [wInGameButtonsPressed]                                  ; $680d: $fa $10 $c2
	and  $20                                         ; $6810: $e6 $20
	jr   nz, jr_021_683e                             ; $6812: $20 $2a

	ld   a, [wInGameButtonsPressed]                                  ; $6814: $fa $10 $c2
	and  $10                                         ; $6817: $e6 $10
	jr   nz, jr_021_6855                             ; $6819: $20 $3a

	ld   a, [wInGameButtonsPressed]                                  ; $681b: $fa $10 $c2
	and  $01                                         ; $681e: $e6 $01
	jp   nz, Jump_021_689a                           ; $6820: $c2 $9a $68

	ld   a, [wInGameButtonsPressed]                                  ; $6823: $fa $10 $c2
	and  $02                                         ; $6826: $e6 $02
	jp   nz, Jump_021_68b1                           ; $6828: $c2 $b1 $68

	ld   a, [wInGameButtonsPressed]                                  ; $682b: $fa $10 $c2
	and  $04                                         ; $682e: $e6 $04
	jp   nz, Jump_021_68df                           ; $6830: $c2 $df $68

	ld   a, [wInGameButtonsPressed]                                  ; $6833: $fa $10 $c2
	and  $08                                         ; $6836: $e6 $08
	jp   nz, Jump_021_68c8                           ; $6838: $c2 $c8 $68

	jp   Jump_021_68ea                               ; $683b: $c3 $ea $68


jr_021_683e:
	ld   b, $2f                                      ; $683e: $06 $2f
	ld   hl, $6b81                                   ; $6840: $21 $81 $6b
	call Call_021_4484                               ; $6843: $cd $84 $44
	ld   a, [wGameState]                                  ; $6846: $fa $a0 $c2
	ld   h, a                                        ; $6849: $67
	ld   a, [wGameSubstate]                                  ; $684a: $fa $a1 $c2
	ld   l, $00                                      ; $684d: $2e $00
	ld   a, $01                                      ; $684f: $3e $01
	call SetNapOrTrainState                               ; $6851: $cd $00 $40
	ret                                              ; $6854: $c9


jr_021_6855:
	ld   b, $2f                                      ; $6855: $06 $2f
	ld   hl, $6b81                                   ; $6857: $21 $81 $6b
	call Call_021_4484                               ; $685a: $cd $84 $44
	ld   a, [wGameState]                                  ; $685d: $fa $a0 $c2
	ld   h, a                                        ; $6860: $67
	ld   a, [wGameSubstate]                                  ; $6861: $fa $a1 $c2
	ld   l, $00                                      ; $6864: $2e $00
	ld   a, $02                                      ; $6866: $3e $02
	call SetNapOrTrainState                               ; $6868: $cd $00 $40
	ret                                              ; $686b: $c9


Jump_021_686c:
	ld   b, $2f                                      ; $686c: $06 $2f
	ld   hl, $6b81                                   ; $686e: $21 $81 $6b
	call Call_021_4484                               ; $6871: $cd $84 $44
	ld   a, [wGameState]                                  ; $6874: $fa $a0 $c2
	ld   h, a                                        ; $6877: $67
	ld   a, [wGameSubstate]                                  ; $6878: $fa $a1 $c2
	ld   l, $00                                      ; $687b: $2e $00
	ld   a, $04                                      ; $687d: $3e $04
	call SetNapOrTrainState                               ; $687f: $cd $00 $40
	ret                                              ; $6882: $c9


Jump_021_6883:
	ld   b, $2f                                      ; $6883: $06 $2f
	ld   hl, $6b81                                   ; $6885: $21 $81 $6b
	call Call_021_4484                               ; $6888: $cd $84 $44
	ld   a, [wGameState]                                  ; $688b: $fa $a0 $c2
	ld   h, a                                        ; $688e: $67
	ld   a, [wGameSubstate]                                  ; $688f: $fa $a1 $c2
	ld   l, $00                                      ; $6892: $2e $00
	ld   a, $03                                      ; $6894: $3e $03
	call SetNapOrTrainState                               ; $6896: $cd $00 $40
	ret                                              ; $6899: $c9


Jump_021_689a:
	ld   b, $2f                                      ; $689a: $06 $2f
	ld   hl, $6b81                                   ; $689c: $21 $81 $6b
	call Call_021_4484                               ; $689f: $cd $84 $44
	ld   a, [wGameState]                                  ; $68a2: $fa $a0 $c2
	ld   h, a                                        ; $68a5: $67
	ld   a, [wGameSubstate]                                  ; $68a6: $fa $a1 $c2
	ld   l, $00                                      ; $68a9: $2e $00
	ld   a, $06                                      ; $68ab: $3e $06
	call SetNapOrTrainState                               ; $68ad: $cd $00 $40
	ret                                              ; $68b0: $c9


Jump_021_68b1:
	ld   b, $2f                                      ; $68b1: $06 $2f
	ld   hl, $6b81                                   ; $68b3: $21 $81 $6b
	call Call_021_4484                               ; $68b6: $cd $84 $44
	ld   a, [wGameState]                                  ; $68b9: $fa $a0 $c2
	ld   h, a                                        ; $68bc: $67
	ld   a, [wGameSubstate]                                  ; $68bd: $fa $a1 $c2
	ld   l, $00                                      ; $68c0: $2e $00
	ld   a, $05                                      ; $68c2: $3e $05
	call SetNapOrTrainState                               ; $68c4: $cd $00 $40
	ret                                              ; $68c7: $c9


Jump_021_68c8:
	ld   b, $2f                                      ; $68c8: $06 $2f
	ld   hl, $6b81                                   ; $68ca: $21 $81 $6b
	call Call_021_4484                               ; $68cd: $cd $84 $44
	ld   a, [wGameState]                                  ; $68d0: $fa $a0 $c2
	ld   h, a                                        ; $68d3: $67
	ld   a, [wGameSubstate]                                  ; $68d4: $fa $a1 $c2
	ld   l, $00                                      ; $68d7: $2e $00
	ld   a, $00                                      ; $68d9: $3e $00
	call SetNapOrTrainState                               ; $68db: $cd $00 $40
	ret                                              ; $68de: $c9


Jump_021_68df:
	ld   a, GS_SPECIAL_ANIMS_DEBUG_MENU                                      ; $68df: $3e $31
	ld   [wGameState], a                                  ; $68e1: $ea $a0 $c2
	ld   a, $00                                      ; $68e4: $3e $00
	ld   [wGameSubstate], a                                  ; $68e6: $ea $a1 $c2
	ret                                              ; $68e9: $c9


Jump_021_68ea:
	ret                                              ; $68ea: $c9


	ret                                              ; $68eb: $c9


GameState30_SoundTest::
	ld   a, [wGameSubstate]                                  ; $68ec: $fa $a1 $c2
	rst  JumpTable                                         ; $68ef: $df
	dw SoundTest_Substate0
	dw SoundTest_Substate1


SoundTest_Substate0:
	ld   a, $ff                                      ; $68f4: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $68f6: $ea $0e $c2
	ld   a, $00                                      ; $68f9: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $68fb: $cd $e0 $1c
	call ClearDisplayRegsAllowVBlankInt                                       ; $68fe: $cd $59 $0b
	call ClearOam                                       ; $6901: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $6904: $cd $c9 $2e
	ld   a, [wLCDC]                                  ; $6907: $fa $03 $c2
	and  $c0                                         ; $690a: $e6 $c0
	or   $43                                         ; $690c: $f6 $43
	ld   [wLCDC], a                                  ; $690e: $ea $03 $c2
	xor  a                                           ; $6911: $af
	ld   [$ca65], a                                  ; $6912: $ea $65 $ca
	ld   [$ca66], a                                  ; $6915: $ea $66 $ca
	ld   [$ca67], a                                  ; $6918: $ea $67 $ca
	ld   [$ca68], a                                  ; $691b: $ea $68 $ca
	ld   a, $01                                      ; $691e: $3e $01
	ldh  [rVBK], a                                   ; $6920: $e0 $4f
	ld   a, $2d                                      ; $6922: $3e $2d
	ld   hl, $9800                                   ; $6924: $21 $00 $98
	ld   de, $7feb                                   ; $6927: $11 $eb $7f
	call RLEXorCopy                                       ; $692a: $cd $d2 $09
	xor  a                                           ; $692d: $af
	ldh  [rVBK], a                                   ; $692e: $e0 $4f
	ld   a, $2f                                      ; $6930: $3e $2f
	ld   hl, $9800                                   ; $6932: $21 $00 $98
	ld   de, $45d0                                   ; $6935: $11 $d0 $45
	call RLEXorCopy                                       ; $6938: $cd $d2 $09
	ld   a, $2f                                      ; $693b: $3e $2f
	ld   hl, $8800                                   ; $693d: $21 $00 $88
	ld   de, $480e                                   ; $6940: $11 $0e $48
	call RLEXorCopy                                       ; $6943: $cd $d2 $09
	ld   a, $2f                                      ; $6946: $3e $2f
	ld   hl, $69e3                                   ; $6948: $21 $e3 $69
	ld   de, wBGPalettes                                   ; $694b: $11 $de $c2
	ld   bc, $0080                                   ; $694e: $01 $80 $00
	call FarMemCopy                                       ; $6951: $cd $b2 $09
	ld   bc, $003f                                   ; $6954: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6957: $cd $aa $04
	xor  a                                           ; $695a: $af
	call PlaySong                                       ; $695b: $cd $92 $1a
	ld   a, $07                                      ; $695e: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $6960: $cd $e0 $1c
	call TurnOnLCD                                       ; $6963: $cd $09 $09
	ld   a, $01                                      ; $6966: $3e $01
	ld   [wGameSubstate], a                                  ; $6968: $ea $a1 $c2
	ret                                              ; $696b: $c9


	ld   a, $82                                      ; $696c: $3e $82
	call $1ede                                       ; $696e: $cd $de $1e
	ret                                              ; $6971: $c9


Call_021_6972:
	ld   a, $04                                      ; $6972: $3e $04
	ld   [wSpriteGroup], a                                  ; $6974: $ea $1a $c2
	ld   a, [$ca68]                                  ; $6977: $fa $68 $ca
	ld   d, $00                                      ; $697a: $16 $00
	ld   e, a                                        ; $697c: $5f
	ld   hl, $698b                                   ; $697d: $21 $8b $69
	add  hl, de                                      ; $6980: $19
	ld   a, [hl]                                     ; $6981: $7e
	ld   c, a                                        ; $6982: $4f
	ld   b, $28                                      ; $6983: $06 $28
	ld   a, $df                                      ; $6985: $3e $df
	call LoadSpriteFromMainTable                                       ; $6987: $cd $16 $0e
	ret                                              ; $698a: $c9


	jr   z, jr_021_69cd                              ; $698b: $28 $40

	ld   e, b                                        ; $698d: $58

Call_021_698e:
	push bc                                          ; $698e: $c5
	ld   hl, $97e0                                   ; $698f: $21 $e0 $97
	ld   de, $0020                                   ; $6992: $11 $20 $00
	inc  c                                           ; $6995: $0c

jr_021_6996:
	add  hl, de                                      ; $6996: $19
	dec  c                                           ; $6997: $0d
	jr   nz, jr_021_6996                             ; $6998: $20 $fc

	ld   e, b                                        ; $699a: $58
	add  hl, de                                      ; $699b: $19
	ld   d, a                                        ; $699c: $57
	ld   a, [wLCDC]                                  ; $699d: $fa $03 $c2
	bit  7, a                                        ; $69a0: $cb $7f
	jr   z, jr_021_69aa                              ; $69a2: $28 $06

jr_021_69a4:
	ldh  a, [rSTAT]                                  ; $69a4: $f0 $41
	and  $03                                         ; $69a6: $e6 $03
	jr   z, jr_021_69a4                              ; $69a8: $28 $fa

jr_021_69aa:
	ldh  a, [rSTAT]                                  ; $69aa: $f0 $41
	and  $03                                         ; $69ac: $e6 $03
	jr   nz, jr_021_69aa                             ; $69ae: $20 $fa

	ld   [hl], d                                     ; $69b0: $72
	pop  bc                                          ; $69b1: $c1
	ret                                              ; $69b2: $c9


Call_021_69b3:
	ld   a, [$ca66]                                  ; $69b3: $fa $66 $ca
	call ConvertAintoBCD                                       ; $69b6: $cd $7d $0d
	ld   c, a                                        ; $69b9: $4f
	ld   a, $86                                      ; $69ba: $3e $86
	add  c                                           ; $69bc: $81
	ld   bc, $0b05                                   ; $69bd: $01 $05 $0b
	call Call_021_698e                               ; $69c0: $cd $8e $69
	pop  af                                          ; $69c3: $f1
	cp   $0a                                         ; $69c4: $fe $0a
	jr   nz, jr_021_69c9                             ; $69c6: $20 $01

	xor  a                                           ; $69c8: $af

jr_021_69c9:
	ld   c, a                                        ; $69c9: $4f
	ld   a, $86                                      ; $69ca: $3e $86
	add  c                                           ; $69cc: $81

jr_021_69cd:
	ld   bc, $0a05                                   ; $69cd: $01 $05 $0a
	call Call_021_698e                               ; $69d0: $cd $8e $69
	pop  af                                          ; $69d3: $f1
	ld   a, [$ca65]                                  ; $69d4: $fa $65 $ca
	call ConvertAintoBCD                                       ; $69d7: $cd $7d $0d
	ld   c, a                                        ; $69da: $4f
	ld   a, $86                                      ; $69db: $3e $86
	add  c                                           ; $69dd: $81
	ld   bc, $0b08                                   ; $69de: $01 $08 $0b
	call Call_021_698e                               ; $69e1: $cd $8e $69
	pop  af                                          ; $69e4: $f1
	cp   $0a                                         ; $69e5: $fe $0a
	jr   nz, jr_021_69ea                             ; $69e7: $20 $01

	xor  a                                           ; $69e9: $af

jr_021_69ea:
	ld   c, a                                        ; $69ea: $4f
	ld   a, $86                                      ; $69eb: $3e $86
	add  c                                           ; $69ed: $81
	ld   bc, $0a08                                   ; $69ee: $01 $08 $0a
	call Call_021_698e                               ; $69f1: $cd $8e $69
	pop  af                                          ; $69f4: $f1
	ld   a, [$ca67]                                  ; $69f5: $fa $67 $ca
	call ConvertAintoBCD                                       ; $69f8: $cd $7d $0d
	ld   c, a                                        ; $69fb: $4f
	ld   a, $86                                      ; $69fc: $3e $86
	add  c                                           ; $69fe: $81
	ld   bc, $0b0b                                   ; $69ff: $01 $0b $0b
	call Call_021_698e                               ; $6a02: $cd $8e $69
	pop  af                                          ; $6a05: $f1
	cp   $0a                                         ; $6a06: $fe $0a
	jr   nz, jr_021_6a0b                             ; $6a08: $20 $01

	xor  a                                           ; $6a0a: $af

jr_021_6a0b:
	ld   c, a                                        ; $6a0b: $4f
	ld   a, $86                                      ; $6a0c: $3e $86
	add  c                                           ; $6a0e: $81
	ld   bc, $0a0b                                   ; $6a0f: $01 $0b $0a
	call Call_021_698e                               ; $6a12: $cd $8e $69
	pop  af                                          ; $6a15: $f1
	ret                                              ; $6a16: $c9


SoundTest_Substate1:
	call ClearOam                                       ; $6a17: $cd $d7 $0d
	call Call_021_6972                               ; $6a1a: $cd $72 $69
	ld   a, [wInGameButtonsPressed]                                  ; $6a1d: $fa $10 $c2
	and  $10                                         ; $6a20: $e6 $10
	jp   nz, Jump_021_6a86                           ; $6a22: $c2 $86 $6a

	ld   a, [wInGameButtonsPressed]                                  ; $6a25: $fa $10 $c2
	and  $20                                         ; $6a28: $e6 $20
	jp   nz, Jump_021_6ac1                           ; $6a2a: $c2 $c1 $6a

	ld   a, [wInGameButtonsPressed]                                  ; $6a2d: $fa $10 $c2
	and  $40                                         ; $6a30: $e6 $40
	jp   nz, Jump_021_6a78                           ; $6a32: $c2 $78 $6a

	ld   a, [wInGameButtonsPressed]                                  ; $6a35: $fa $10 $c2
	and  $80                                         ; $6a38: $e6 $80
	jp   nz, Jump_021_6a6b                           ; $6a3a: $c2 $6b $6a

	ld   a, [wInGameButtonsPressed]                                  ; $6a3d: $fa $10 $c2
	and  $01                                         ; $6a40: $e6 $01
	jp   nz, Jump_021_6aff                           ; $6a42: $c2 $ff $6a

	ld   a, [wInGameButtonsPressed]                                  ; $6a45: $fa $10 $c2
	and  $02                                         ; $6a48: $e6 $02
	jp   nz, Jump_021_6b2b                           ; $6a4a: $c2 $2b $6b

	ld   a, [wInGameButtonsPressed]                                  ; $6a4d: $fa $10 $c2
	and  $08                                         ; $6a50: $e6 $08
	jp   nz, Jump_021_6b1f                           ; $6a52: $c2 $1f $6b

	ld   a, [wInGameButtonsPressed]                                  ; $6a55: $fa $10 $c2
	and  $04                                         ; $6a58: $e6 $04
	jp   nz, Jump_021_6b36                           ; $6a5a: $c2 $36 $6b

	ret                                              ; $6a5d: $c9


	call TurnOffLCD                                       ; $6a5e: $cd $e3 $08
	ld   a, GS_ALT_TITLE_SCREEN                                      ; $6a61: $3e $35
	ld   [wGameState], a                                  ; $6a63: $ea $a0 $c2
	xor  a                                           ; $6a66: $af
	ld   [wGameSubstate], a                                  ; $6a67: $ea $a1 $c2
	ret                                              ; $6a6a: $c9


Jump_021_6a6b:
	ld   a, [$ca68]                                  ; $6a6b: $fa $68 $ca
	inc  a                                           ; $6a6e: $3c
	cp   $03                                         ; $6a6f: $fe $03
	jr   nz, jr_021_6a74                             ; $6a71: $20 $01

	xor  a                                           ; $6a73: $af

jr_021_6a74:
	ld   [$ca68], a                                  ; $6a74: $ea $68 $ca
	ret                                              ; $6a77: $c9


Jump_021_6a78:
	ld   a, [$ca68]                                  ; $6a78: $fa $68 $ca
	dec  a                                           ; $6a7b: $3d
	cp   $ff                                         ; $6a7c: $fe $ff
	jr   nz, jr_021_6a82                             ; $6a7e: $20 $02

	ld   a, $02                                      ; $6a80: $3e $02

jr_021_6a82:
	ld   [$ca68], a                                  ; $6a82: $ea $68 $ca
	ret                                              ; $6a85: $c9


Jump_021_6a86:
	ld   a, [$ca68]                                  ; $6a86: $fa $68 $ca
	cp   $02                                         ; $6a89: $fe $02
	jr   z, jr_021_6ab1                              ; $6a8b: $28 $24

	cp   $01                                         ; $6a8d: $fe $01
	jr   z, jr_021_6aa1                              ; $6a8f: $28 $10

	ld   a, [$ca66]                                  ; $6a91: $fa $66 $ca
	inc  a                                           ; $6a94: $3c
	cp   $51                                         ; $6a95: $fe $51
	jr   nz, jr_021_6a9a                             ; $6a97: $20 $01

	xor  a                                           ; $6a99: $af

jr_021_6a9a:
	ld   [$ca66], a                                  ; $6a9a: $ea $66 $ca
	call Call_021_69b3                               ; $6a9d: $cd $b3 $69
	ret                                              ; $6aa0: $c9


jr_021_6aa1:
	ld   a, [$ca65]                                  ; $6aa1: $fa $65 $ca
	inc  a                                           ; $6aa4: $3c
	cp   $15                                         ; $6aa5: $fe $15
	jr   nz, jr_021_6aaa                             ; $6aa7: $20 $01

	xor  a                                           ; $6aa9: $af

jr_021_6aaa:
	ld   [$ca65], a                                  ; $6aaa: $ea $65 $ca
	call Call_021_69b3                               ; $6aad: $cd $b3 $69
	ret                                              ; $6ab0: $c9


jr_021_6ab1:
	ld   a, [$ca67]                                  ; $6ab1: $fa $67 $ca
	inc  a                                           ; $6ab4: $3c
	cp   $6d                                         ; $6ab5: $fe $6d
	jr   nz, jr_021_6aba                             ; $6ab7: $20 $01

	xor  a                                           ; $6ab9: $af

jr_021_6aba:
	ld   [$ca67], a                                  ; $6aba: $ea $67 $ca
	call Call_021_69b3                               ; $6abd: $cd $b3 $69
	ret                                              ; $6ac0: $c9


Jump_021_6ac1:
	ld   a, [$ca68]                                  ; $6ac1: $fa $68 $ca
	cp   $02                                         ; $6ac4: $fe $02
	jr   z, jr_021_6aee                              ; $6ac6: $28 $26

	cp   $01                                         ; $6ac8: $fe $01
	jr   z, jr_021_6add                              ; $6aca: $28 $11

	ld   a, [$ca66]                                  ; $6acc: $fa $66 $ca
	dec  a                                           ; $6acf: $3d
	cp   $ff                                         ; $6ad0: $fe $ff
	jr   nz, jr_021_6ad6                             ; $6ad2: $20 $02

	ld   a, $50                                      ; $6ad4: $3e $50

jr_021_6ad6:
	ld   [$ca66], a                                  ; $6ad6: $ea $66 $ca
	call Call_021_69b3                               ; $6ad9: $cd $b3 $69
	ret                                              ; $6adc: $c9


jr_021_6add:
	ld   a, [$ca65]                                  ; $6add: $fa $65 $ca
	dec  a                                           ; $6ae0: $3d
	cp   $ff                                         ; $6ae1: $fe $ff
	jr   nz, jr_021_6ae7                             ; $6ae3: $20 $02

	ld   a, $14                                      ; $6ae5: $3e $14

jr_021_6ae7:
	ld   [$ca65], a                                  ; $6ae7: $ea $65 $ca
	call Call_021_69b3                               ; $6aea: $cd $b3 $69
	ret                                              ; $6aed: $c9


jr_021_6aee:
	ld   a, [$ca67]                                  ; $6aee: $fa $67 $ca
	dec  a                                           ; $6af1: $3d
	cp   $ff                                         ; $6af2: $fe $ff
	jr   nz, jr_021_6af8                             ; $6af4: $20 $02

	ld   a, $6c                                      ; $6af6: $3e $6c

jr_021_6af8:
	ld   [$ca67], a                                  ; $6af8: $ea $67 $ca
	call Call_021_69b3                               ; $6afb: $cd $b3 $69
	ret                                              ; $6afe: $c9


Jump_021_6aff:
	ld   a, [$ca68]                                  ; $6aff: $fa $68 $ca
	cp   $02                                         ; $6b02: $fe $02
	jr   z, jr_021_6b18                              ; $6b04: $28 $12

	cp   $01                                         ; $6b06: $fe $01
	jr   z, jr_021_6b11                              ; $6b08: $28 $07

	ld   a, [$ca66]                                  ; $6b0a: $fa $66 $ca
	call PlaySoundEffect                                       ; $6b0d: $cd $df $1a
	ret                                              ; $6b10: $c9


jr_021_6b11:
	ld   a, [$ca65]                                  ; $6b11: $fa $65 $ca
	call PlaySong                                       ; $6b14: $cd $92 $1a
	ret                                              ; $6b17: $c9


jr_021_6b18:
	ld   a, [$ca67]                                  ; $6b18: $fa $67 $ca
	call PlaySampledSound                                       ; $6b1b: $cd $64 $1b
	ret                                              ; $6b1e: $c9


Jump_021_6b1f:
	ld   a, [$ca65]                                  ; $6b1f: $fa $65 $ca
	add  $11                                         ; $6b22: $c6 $11
	dec  a                                           ; $6b24: $3d
	ld   b, $10                                      ; $6b25: $06 $10
	call $2cbc                                       ; $6b27: $cd $bc $2c
	ret                                              ; $6b2a: $c9


Jump_021_6b2b:
	ld   a, [$ca65]                                  ; $6b2b: $fa $65 $ca
	add  $11                                         ; $6b2e: $c6 $11
	dec  a                                           ; $6b30: $3d
	xor  a                                           ; $6b31: $af
	call PlaySong                                       ; $6b32: $cd $92 $1a
	ret                                              ; $6b35: $c9


Jump_021_6b36:
	ld   a, [$ca68]                                  ; $6b36: $fa $68 $ca
	cp   $01                                         ; $6b39: $fe $01
	jr   z, jr_021_6b3e                              ; $6b3b: $28 $01

	ret                                              ; $6b3d: $c9


jr_021_6b3e:
	ld   a, [$ca65]                                  ; $6b3e: $fa $65 $ca
	add  $11                                         ; $6b41: $c6 $11
	dec  a                                           ; $6b43: $3d
	ld   b, $10                                      ; $6b44: $06 $10
	call $2c8c                                       ; $6b46: $cd $8c $2c
	ret                                              ; $6b49: $c9


	ld   de, $1915                                   ; $6b4a: $11 $15 $19
	dec  e                                           ; $6b4d: $1d
	ld   hl, $2925                                   ; $6b4e: $21 $25 $29
	dec  l                                           ; $6b51: $2d
	ld   sp, $3935                                   ; $6b52: $31 $35 $39
	dec  a                                           ; $6b55: $3d
	ld   b, c                                        ; $6b56: $41
	ld   b, l                                        ; $6b57: $45
	ld   c, c                                        ; $6b58: $49
	ld   c, l                                        ; $6b59: $4d
	ld   d, c                                        ; $6b5a: $51
	ld   d, l                                        ; $6b5b: $55
	ld   e, c                                        ; $6b5c: $59
	ld   e, l                                        ; $6b5d: $5d
	nop                                              ; $6b5e: $00
	ld   bc, $0302                                   ; $6b5f: $01 $02 $03
	inc  b                                           ; $6b62: $04
	dec  b                                           ; $6b63: $05
	ld   b, $07                                      ; $6b64: $06 $07
	ld   [$0a09], sp                                 ; $6b66: $08 $09 $0a
	dec  bc                                          ; $6b69: $0b
	inc  c                                           ; $6b6a: $0c
	dec  c                                           ; $6b6b: $0d
	ld   c, $0f                                      ; $6b6c: $0e $0f
	db   $10                                         ; $6b6e: $10
	ld   h, c                                        ; $6b6f: $61
	ld   h, d                                        ; $6b70: $62
	ld   h, e                                        ; $6b71: $63
	ld   h, h                                        ; $6b72: $64
	ld   h, l                                        ; $6b73: $65
	ld   h, [hl]                                     ; $6b74: $66
	ld   h, a                                        ; $6b75: $67
	ld   l, b                                        ; $6b76: $68
	ld   l, c                                        ; $6b77: $69
	ld   l, d                                        ; $6b78: $6a
	ld   l, e                                        ; $6b79: $6b
	ld   l, h                                        ; $6b7a: $6c
	ld   l, l                                        ; $6b7b: $6d
	ld   l, [hl]                                     ; $6b7c: $6e
	ld   l, a                                        ; $6b7d: $6f
	ld   [hl], b                                     ; $6b7e: $70
	ld   [hl], c                                     ; $6b7f: $71
	ld   [hl], d                                     ; $6b80: $72
	ld   [hl], e                                     ; $6b81: $73
	ld   [hl], h                                     ; $6b82: $74
	ld   [hl], l                                     ; $6b83: $75
	halt                                             ; $6b84: $76
	ld   [hl], a                                     ; $6b85: $77
	ld   a, b                                        ; $6b86: $78
	ld   a, c                                        ; $6b87: $79
	ld   a, d                                        ; $6b88: $7a
	ld   a, e                                        ; $6b89: $7b
	ld   a, h                                        ; $6b8a: $7c
	ld   a, l                                        ; $6b8b: $7d
	ld   a, [hl]                                     ; $6b8c: $7e
	ld   a, a                                        ; $6b8d: $7f


GameState31_SpecialAnimsDebugMenu::
	ld   a, [wGameSubstate]                                  ; $6b8e: $fa $a1 $c2
	rst  JumpTable                                         ; $6b91: $df
	sbc  b                                           ; $6b92: $98
	ld   l, e                                        ; $6b93: $6b
	ld   hl, sp+$6b                                  ; $6b94: $f8 $6b
	call z, $3e6c                                    ; $6b96: $cc $6c $3e
	nop                                              ; $6b99: $00
	call SafeSetAudVolForMultipleChannels                                       ; $6b9a: $cd $e0 $1c
	ld   a, $ff                                      ; $6b9d: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $6b9f: $ea $0e $c2
	ld   a, $0c                                      ; $6ba2: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $6ba4: $ea $13 $c2
	ld   a, $04                                      ; $6ba7: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $6ba9: $ea $14 $c2
	call ClearDisplayRegsAllowVBlankInt                                       ; $6bac: $cd $59 $0b
	call ClearOam                                       ; $6baf: $cd $d7 $0d
	ld   a, [wLCDC]                                  ; $6bb2: $fa $03 $c2
	and  $e0                                         ; $6bb5: $e6 $e0
	or   $67                                         ; $6bb7: $f6 $67
	ld   [wLCDC], a                                  ; $6bb9: $ea $03 $c2
	xor  a                                           ; $6bbc: $af
	ld   [$ca6c], a                                  ; $6bbd: $ea $6c $ca
	ld   a, $01                                      ; $6bc0: $3e $01
	ldh  [rVBK], a                                   ; $6bc2: $e0 $4f
	ld   a, $2f                                      ; $6bc4: $3e $2f
	ld   hl, $9800                                   ; $6bc6: $21 $00 $98
	ld   de, $6643                                   ; $6bc9: $11 $43 $66
	call RLEXorCopy                                       ; $6bcc: $cd $d2 $09
	xor  a                                           ; $6bcf: $af
	ldh  [rVBK], a                                   ; $6bd0: $e0 $4f
	ld   a, $2f                                      ; $6bd2: $3e $2f
	ld   hl, $9800                                   ; $6bd4: $21 $00 $98
	ld   de, $5f14                                   ; $6bd7: $11 $14 $5f
	call RLEXorCopy                                       ; $6bda: $cd $d2 $09
	ld   a, $2e                                      ; $6bdd: $3e $2e
	ld   hl, $9000                                   ; $6bdf: $21 $00 $90
	ld   de, $6cfc                                   ; $6be2: $11 $fc $6c
	call RLEXorCopy                                       ; $6be5: $cd $d2 $09
	call ClearOam                                       ; $6be8: $cd $d7 $0d
	ld   a, $07                                      ; $6beb: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $6bed: $cd $e0 $1c
	call TurnOnLCD                                       ; $6bf0: $cd $09 $09
	ld   hl, wGameSubstate                                   ; $6bf3: $21 $a1 $c2
	inc  [hl]                                        ; $6bf6: $34
	ret                                              ; $6bf7: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $6bf8: $fa $10 $c2
	and  $40                                         ; $6bfb: $e6 $40
	jp   nz, Jump_021_6c5f                           ; $6bfd: $c2 $5f $6c

	ld   a, [wInGameButtonsPressed]                                  ; $6c00: $fa $10 $c2
	and  $80                                         ; $6c03: $e6 $80
	jp   nz, Jump_021_6c72                           ; $6c05: $c2 $72 $6c

	ld   a, [wInGameButtonsPressed]                                  ; $6c08: $fa $10 $c2
	and  $20                                         ; $6c0b: $e6 $20
	jr   nz, jr_021_6c39                             ; $6c0d: $20 $2a

	ld   a, [wInGameButtonsPressed]                                  ; $6c0f: $fa $10 $c2
	and  $10                                         ; $6c12: $e6 $10
	jr   nz, jr_021_6c4c                             ; $6c14: $20 $36

	ld   a, [wInGameButtonsPressed]                                  ; $6c16: $fa $10 $c2
	and  $01                                         ; $6c19: $e6 $01
	jp   nz, Jump_021_6c85                           ; $6c1b: $c2 $85 $6c

	ld   a, [wInGameButtonsPressed]                                  ; $6c1e: $fa $10 $c2
	and  $02                                         ; $6c21: $e6 $02
	jp   nz, Jump_021_6c98                           ; $6c23: $c2 $98 $6c

	ld   a, [wInGameButtonsPressed]                                  ; $6c26: $fa $10 $c2
	and  $04                                         ; $6c29: $e6 $04
	jp   nz, Jump_021_6cb8                           ; $6c2b: $c2 $b8 $6c

	ld   a, [wInGameButtonsPressed]                                  ; $6c2e: $fa $10 $c2
	and  $08                                         ; $6c31: $e6 $08
	jp   nz, Jump_021_6cab                           ; $6c33: $c2 $ab $6c

	jp   Jump_021_6ccb                               ; $6c36: $c3 $cb $6c


jr_021_6c39:
	ld   a, [wGameState]                                  ; $6c39: $fa $a0 $c2
	ld   h, a                                        ; $6c3c: $67
	ld   a, [wGameSubstate]                                  ; $6c3d: $fa $a1 $c2
	ld   l, $00                                      ; $6c40: $2e $00
	ld   a, [$ca6c]                                  ; $6c42: $fa $6c $ca
	ld   b, a                                        ; $6c45: $47
	ld   a, $00                                      ; $6c46: $3e $00
	call Call_021_7080                               ; $6c48: $cd $80 $70
	ret                                              ; $6c4b: $c9


jr_021_6c4c:
	ld   a, [wGameState]                                  ; $6c4c: $fa $a0 $c2
	ld   h, a                                        ; $6c4f: $67
	ld   a, [wGameSubstate]                                  ; $6c50: $fa $a1 $c2
	ld   l, $00                                      ; $6c53: $2e $00
	ld   a, [$ca6c]                                  ; $6c55: $fa $6c $ca
	ld   b, a                                        ; $6c58: $47
	ld   a, $02                                      ; $6c59: $3e $02
	call SetGirlSpecialAnimsState                               ; $6c5b: $cd $c1 $75
	ret                                              ; $6c5e: $c9


Jump_021_6c5f:
	ld   a, [wGameState]                                  ; $6c5f: $fa $a0 $c2
	ld   h, a                                        ; $6c62: $67
	ld   a, [wGameSubstate]                                  ; $6c63: $fa $a1 $c2
	ld   l, $00                                      ; $6c66: $2e $00
	ld   a, [$ca6c]                                  ; $6c68: $fa $6c $ca
	ld   b, a                                        ; $6c6b: $47
	ld   a, $04                                      ; $6c6c: $3e $04
	call Call_021_7080                               ; $6c6e: $cd $80 $70
	ret                                              ; $6c71: $c9


Jump_021_6c72:
	ld   a, [wGameState]                                  ; $6c72: $fa $a0 $c2
	ld   h, a                                        ; $6c75: $67
	ld   a, [wGameSubstate]                                  ; $6c76: $fa $a1 $c2
	ld   l, $00                                      ; $6c79: $2e $00
	ld   a, [$ca6c]                                  ; $6c7b: $fa $6c $ca
	ld   b, a                                        ; $6c7e: $47
	ld   a, $03                                      ; $6c7f: $3e $03
	call Call_021_7080                               ; $6c81: $cd $80 $70
	ret                                              ; $6c84: $c9


Jump_021_6c85:
	ld   a, [wGameState]                                  ; $6c85: $fa $a0 $c2
	ld   h, a                                        ; $6c88: $67
	ld   a, [wGameSubstate]                                  ; $6c89: $fa $a1 $c2
	ld   l, $00                                      ; $6c8c: $2e $00
	ld   a, [$ca6c]                                  ; $6c8e: $fa $6c $ca
	ld   b, a                                        ; $6c91: $47
	ld   a, $06                                      ; $6c92: $3e $06
	call SetGirlSpecialAnimsState                               ; $6c94: $cd $c1 $75
	ret                                              ; $6c97: $c9


Jump_021_6c98:
	ld   a, [wGameState]                                  ; $6c98: $fa $a0 $c2
	ld   h, a                                        ; $6c9b: $67
	ld   a, [wGameSubstate]                                  ; $6c9c: $fa $a1 $c2
	ld   l, $00                                      ; $6c9f: $2e $00
	ld   a, [$ca6c]                                  ; $6ca1: $fa $6c $ca
	ld   b, a                                        ; $6ca4: $47
	ld   a, $05                                      ; $6ca5: $3e $05
	call SetGirlSpecialAnimsState                               ; $6ca7: $cd $c1 $75
	ret                                              ; $6caa: $c9


Jump_021_6cab:
	ld   a, [$ca6c]                                  ; $6cab: $fa $6c $ca
	inc  a                                           ; $6cae: $3c
	ld   [$ca6c], a                                  ; $6caf: $ea $6c $ca
	ret                                              ; $6cb2: $c9


	xor  a                                           ; $6cb3: $af
	ld   [$ca6c], a                                  ; $6cb4: $ea $6c $ca
	ret                                              ; $6cb7: $c9


Jump_021_6cb8:
	ld   a, $00                                      ; $6cb8: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $6cba: $cd $e0 $1c
	call TurnOffLCD                                       ; $6cbd: $cd $e3 $08
	ld   a, GS_BATTLE_DEBUG_MENU                                      ; $6cc0: $3e $32
	ld   [wGameState], a                                  ; $6cc2: $ea $a0 $c2
	ld   a, $00                                      ; $6cc5: $3e $00
	ld   [wGameSubstate], a                                  ; $6cc7: $ea $a1 $c2
	ret                                              ; $6cca: $c9


Jump_021_6ccb:
	ret                                              ; $6ccb: $c9


	ret                                              ; $6ccc: $c9


GameState32_BattleDebugMenu::
	ld   a, [wGameSubstate]                                  ; $6ccd: $fa $a1 $c2
	rst  JumpTable                                         ; $6cd0: $df
	push de                                          ; $6cd1: $d5
	ld   l, h                                        ; $6cd2: $6c
	and  c                                           ; $6cd3: $a1
	ld   l, l                                        ; $6cd4: $6d
	ld   a, $00                                      ; $6cd5: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $6cd7: $cd $e0 $1c
	call TurnOffLCD                                       ; $6cda: $cd $e3 $08
	ld   a, $ff                                      ; $6cdd: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $6cdf: $ea $0e $c2
	call ClearDisplayRegsAllowVBlankInt                                       ; $6ce2: $cd $59 $0b
	call ClearOam                                       ; $6ce5: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $6ce8: $cd $c9 $2e
	ld   a, [wLCDC]                                  ; $6ceb: $fa $03 $c2
	and  $c0                                         ; $6cee: $e6 $c0
	or   $43                                         ; $6cf0: $f6 $43
	ld   [wLCDC], a                                  ; $6cf2: $ea $03 $c2
	xor  a                                           ; $6cf5: $af
	ld   [$ca6a], a                                  ; $6cf6: $ea $6a $ca
	ld   [$ca6b], a                                  ; $6cf9: $ea $6b $ca
	ld   a, $01                                      ; $6cfc: $3e $01
	ldh  [rVBK], a                                   ; $6cfe: $e0 $4f
	ld   a, $2d                                      ; $6d00: $3e $2d
	ld   hl, $9800                                   ; $6d02: $21 $00 $98
	ld   de, $7feb                                   ; $6d05: $11 $eb $7f
	call RLEXorCopy                                       ; $6d08: $cd $d2 $09
	xor  a                                           ; $6d0b: $af
	ldh  [rVBK], a                                   ; $6d0c: $e0 $4f
	ld   a, $2f                                      ; $6d0e: $3e $2f
	ld   hl, $9800                                   ; $6d10: $21 $00 $98
	ld   de, $4360                                   ; $6d13: $11 $60 $43
	call RLEXorCopy                                       ; $6d16: $cd $d2 $09
	ld   a, $2d                                      ; $6d19: $3e $2d
	ld   hl, $8800                                   ; $6d1b: $21 $00 $88
	ld   de, $789a                                   ; $6d1e: $11 $9a $78
	call RLEXorCopy                                       ; $6d21: $cd $d2 $09
	xor  a                                           ; $6d24: $af
	ld   [wBattleInstantTextTableIdx], a                                  ; $6d25: $ea $42 $ca
	ld   [$ca43], a                                  ; $6d28: $ea $43 $ca
	ld   a, $03                                      ; $6d2b: $3e $03
	call PlaySong                                       ; $6d2d: $cd $92 $1a
	ld   a, $07                                      ; $6d30: $3e $07
	call SafeSetAudVolForMultipleChannels                                       ; $6d32: $cd $e0 $1c
	call TurnOnLCD                                       ; $6d35: $cd $09 $09
	ld   c, $2f                                      ; $6d38: $0e $2f
	ld   de, $6a63                                   ; $6d3a: $11 $63 $6a
	call Call_021_44ac                               ; $6d3d: $cd $ac $44
	ld   a, $01                                      ; $6d40: $3e $01
	ld   [wGameSubstate], a                                  ; $6d42: $ea $a1 $c2
	ret                                              ; $6d45: $c9


Call_021_6d46:
	ld   a, $04                                      ; $6d46: $3e $04
	ld   [wSpriteGroup], a                                  ; $6d48: $ea $1a $c2
	ld   a, [$ca69]                                  ; $6d4b: $fa $69 $ca
	ld   d, $00                                      ; $6d4e: $16 $00
	ld   e, a                                        ; $6d50: $5f
	ld   hl, $6d5f                                   ; $6d51: $21 $5f $6d
	add  hl, de                                      ; $6d54: $19
	ld   a, [hl]                                     ; $6d55: $7e
	ld   c, a                                        ; $6d56: $4f
	ld   b, $18                                      ; $6d57: $06 $18
	ld   a, $df                                      ; $6d59: $3e $df
	call LoadSpriteFromMainTable                                       ; $6d5b: $cd $16 $0e
	ret                                              ; $6d5e: $c9


	jr   nc, @+$4a                                   ; $6d5f: $30 $48

Call_021_6d61:
	push bc                                          ; $6d61: $c5
	ld   hl, $97e0                                   ; $6d62: $21 $e0 $97
	ld   de, $0020                                   ; $6d65: $11 $20 $00
	inc  c                                           ; $6d68: $0c

jr_021_6d69:
	add  hl, de                                      ; $6d69: $19
	dec  c                                           ; $6d6a: $0d
	jr   nz, jr_021_6d69                             ; $6d6b: $20 $fc

	ld   e, b                                        ; $6d6d: $58
	add  hl, de                                      ; $6d6e: $19
	ld   d, a                                        ; $6d6f: $57
	ld   a, [wLCDC]                                  ; $6d70: $fa $03 $c2
	bit  7, a                                        ; $6d73: $cb $7f
	jr   z, jr_021_6d7d                              ; $6d75: $28 $06

jr_021_6d77:
	ldh  a, [rSTAT]                                  ; $6d77: $f0 $41
	and  $03                                         ; $6d79: $e6 $03
	jr   z, jr_021_6d77                              ; $6d7b: $28 $fa

jr_021_6d7d:
	ldh  a, [rSTAT]                                  ; $6d7d: $f0 $41
	and  $03                                         ; $6d7f: $e6 $03
	jr   nz, jr_021_6d7d                             ; $6d81: $20 $fa

	ld   [hl], d                                     ; $6d83: $72
	pop  bc                                          ; $6d84: $c1
	ret                                              ; $6d85: $c9


Call_021_6d86:
	ld   a, [$ca6a]                                  ; $6d86: $fa $6a $ca
	ld   c, a                                        ; $6d89: $4f
	ld   a, $b0                                      ; $6d8a: $3e $b0
	add  c                                           ; $6d8c: $81
	ld   bc, $0d06                                   ; $6d8d: $01 $06 $0d
	call Call_021_6d61                               ; $6d90: $cd $61 $6d
	ld   a, [$ca6b]                                  ; $6d93: $fa $6b $ca
	ld   c, a                                        ; $6d96: $4f
	ld   a, $c0                                      ; $6d97: $3e $c0
	add  c                                           ; $6d99: $81
	ld   bc, $0d09                                   ; $6d9a: $01 $09 $0d
	call Call_021_6d61                               ; $6d9d: $cd $61 $6d
	ret                                              ; $6da0: $c9


	call ClearOam                                       ; $6da1: $cd $d7 $0d
	call Call_021_6d46                               ; $6da4: $cd $46 $6d
	ld   a, [wInGameButtonsPressed]                                  ; $6da7: $fa $10 $c2
	and  $10                                         ; $6daa: $e6 $10
	jp   nz, Jump_021_6e5c                           ; $6dac: $c2 $5c $6e

	ld   a, [wInGameButtonsPressed]                                  ; $6daf: $fa $10 $c2
	and  $20                                         ; $6db2: $e6 $20
	jp   nz, Jump_021_6e83                           ; $6db4: $c2 $83 $6e

	ld   a, [wInGameButtonsPressed]                                  ; $6db7: $fa $10 $c2
	and  $40                                         ; $6dba: $e6 $40
	jp   nz, Jump_021_6e4e                           ; $6dbc: $c2 $4e $6e

	ld   a, [wInGameButtonsPressed]                                  ; $6dbf: $fa $10 $c2
	and  $80                                         ; $6dc2: $e6 $80
	jp   nz, Jump_021_6e41                           ; $6dc4: $c2 $41 $6e

	ld   a, [wInGameButtonsPressed]                                  ; $6dc7: $fa $10 $c2
	and  $01                                         ; $6dca: $e6 $01
	jp   nz, Jump_021_6eac                           ; $6dcc: $c2 $ac $6e

	ld   a, [wInGameButtonsPressed]                                  ; $6dcf: $fa $10 $c2
	and  $02                                         ; $6dd2: $e6 $02
	jp   nz, Jump_021_6e1b                           ; $6dd4: $c2 $1b $6e

	ld   a, [wInGameButtonsPressed]                                  ; $6dd7: $fa $10 $c2
	and  $04                                         ; $6dda: $e6 $04
	jp   nz, Jump_021_6de8                           ; $6ddc: $c2 $e8 $6d

	ld   a, [wInGameButtonsPressed]                                  ; $6ddf: $fa $10 $c2
	and  $08                                         ; $6de2: $e6 $08
	jp   nz, Jump_021_6dfa                           ; $6de4: $c2 $fa $6d

	ret                                              ; $6de7: $c9


Jump_021_6de8:
	call TurnOffLCD                                       ; $6de8: $cd $e3 $08
	ld   a, $00                                      ; $6deb: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $6ded: $cd $e0 $1c
	ld   a, GS_MINI_GAME_DEBUG_MENU                                      ; $6df0: $3e $24
	ld   [wGameState], a                                  ; $6df2: $ea $a0 $c2
	xor  a                                           ; $6df5: $af
	ld   [wGameSubstate], a                                  ; $6df6: $ea $a1 $c2
	ret                                              ; $6df9: $c9


Jump_021_6dfa:
	ld   a, [wBattleInstantTextTableIdx]                                  ; $6dfa: $fa $42 $ca
	cp   $00                                         ; $6dfd: $fe $00
	jr   nz, jr_021_6e0e                             ; $6dff: $20 $0d

	inc  a                                           ; $6e01: $3c
	ld   [wBattleInstantTextTableIdx], a                                  ; $6e02: $ea $42 $ca
	ld   a, $00                                      ; $6e05: $3e $00
	ld   bc, $0000                                   ; $6e07: $01 $00 $00
	call Call_021_6d61                               ; $6e0a: $cd $61 $6d
	ret                                              ; $6e0d: $c9


jr_021_6e0e:
	ld   a, $0f                                      ; $6e0e: $3e $0f
	ld   bc, $0000                                   ; $6e10: $01 $00 $00
	call Call_021_6d61                               ; $6e13: $cd $61 $6d
	xor  a                                           ; $6e16: $af
	ld   [wBattleInstantTextTableIdx], a                                  ; $6e17: $ea $42 $ca
	ret                                              ; $6e1a: $c9


Jump_021_6e1b:
	call TurnOffLCD                                       ; $6e1b: $cd $e3 $08
	ld   a, $00                                      ; $6e1e: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $6e20: $cd $e0 $1c
	ld   a, [wGameState]                                  ; $6e23: $fa $a0 $c2
	ld   h, a                                        ; $6e26: $67
	ld   a, [wGameSubstate]                                  ; $6e27: $fa $a1 $c2
	ld   l, $00                                      ; $6e2a: $2e $00

	M_FarCall Func_05_785b
	ret                                              ; $6e40: $c9


Jump_021_6e41:
	ld   a, [$ca69]                                  ; $6e41: $fa $69 $ca
	inc  a                                           ; $6e44: $3c
	cp   $02                                         ; $6e45: $fe $02
	jr   nz, jr_021_6e4a                             ; $6e47: $20 $01

	xor  a                                           ; $6e49: $af

jr_021_6e4a:
	ld   [$ca69], a                                  ; $6e4a: $ea $69 $ca
	ret                                              ; $6e4d: $c9


Jump_021_6e4e:
	ld   a, [$ca69]                                  ; $6e4e: $fa $69 $ca
	dec  a                                           ; $6e51: $3d
	cp   $ff                                         ; $6e52: $fe $ff
	jr   nz, jr_021_6e58                             ; $6e54: $20 $02

	ld   a, $01                                      ; $6e56: $3e $01

jr_021_6e58:
	ld   [$ca69], a                                  ; $6e58: $ea $69 $ca
	ret                                              ; $6e5b: $c9


Jump_021_6e5c:
	ld   a, [$ca69]                                  ; $6e5c: $fa $69 $ca
	cp   $01                                         ; $6e5f: $fe $01
	jr   z, jr_021_6e73                              ; $6e61: $28 $10

	ld   a, [$ca6a]                                  ; $6e63: $fa $6a $ca
	inc  a                                           ; $6e66: $3c
	cp   $08                                         ; $6e67: $fe $08
	jr   nz, jr_021_6e6c                             ; $6e69: $20 $01

	xor  a                                           ; $6e6b: $af

jr_021_6e6c:
	ld   [$ca6a], a                                  ; $6e6c: $ea $6a $ca
	call Call_021_6d86                               ; $6e6f: $cd $86 $6d
	ret                                              ; $6e72: $c9


jr_021_6e73:
	ld   a, [$ca6b]                                  ; $6e73: $fa $6b $ca
	inc  a                                           ; $6e76: $3c
	cp   $09                                         ; $6e77: $fe $09
	jr   nz, jr_021_6e7c                             ; $6e79: $20 $01

	xor  a                                           ; $6e7b: $af

jr_021_6e7c:
	ld   [$ca6b], a                                  ; $6e7c: $ea $6b $ca
	call Call_021_6d86                               ; $6e7f: $cd $86 $6d
	ret                                              ; $6e82: $c9


Jump_021_6e83:
	ld   a, [$ca69]                                  ; $6e83: $fa $69 $ca
	cp   $01                                         ; $6e86: $fe $01
	jr   z, jr_021_6e9b                              ; $6e88: $28 $11

	ld   a, [$ca6a]                                  ; $6e8a: $fa $6a $ca
	dec  a                                           ; $6e8d: $3d
	cp   $ff                                         ; $6e8e: $fe $ff
	jr   nz, jr_021_6e94                             ; $6e90: $20 $02

	ld   a, $05                                      ; $6e92: $3e $05

jr_021_6e94:
	ld   [$ca6a], a                                  ; $6e94: $ea $6a $ca
	call Call_021_6d86                               ; $6e97: $cd $86 $6d
	ret                                              ; $6e9a: $c9


jr_021_6e9b:
	ld   a, [$ca6b]                                  ; $6e9b: $fa $6b $ca
	dec  a                                           ; $6e9e: $3d
	cp   $ff                                         ; $6e9f: $fe $ff
	jr   nz, jr_021_6ea5                             ; $6ea1: $20 $02

	ld   a, $06                                      ; $6ea3: $3e $06

jr_021_6ea5:
	ld   [$ca6b], a                                  ; $6ea5: $ea $6b $ca
	call Call_021_6d86                               ; $6ea8: $cd $86 $6d
	ret                                              ; $6eab: $c9


Jump_021_6eac:
	ld   b, $2f                                      ; $6eac: $06 $2f
	ld   hl, $6a63                                   ; $6eae: $21 $63 $6a
	call Call_021_4484                               ; $6eb1: $cd $84 $44
	call TurnOffLCD                                       ; $6eb4: $cd $e3 $08
	ld   a, $00                                      ; $6eb7: $3e $00
	call SafeSetAudVolForMultipleChannels                                       ; $6eb9: $cd $e0 $1c
	ld   a, [wBattleInstantTextTableIdx]                                  ; $6ebc: $fa $42 $ca
	and  a                                           ; $6ebf: $a7
	jr   nz, jr_021_6ef1                             ; $6ec0: $20 $2f

	ld   hl, $6f16                                   ; $6ec2: $21 $16 $6f
	ld   a, [$ca6a]                                  ; $6ec5: $fa $6a $ca
	sla  a                                           ; $6ec8: $cb $27
	ld   b, $00                                      ; $6eca: $06 $00
	ld   c, a                                        ; $6ecc: $4f
	add  hl, bc                                      ; $6ecd: $09
	ld   a, [hl+]                                    ; $6ece: $2a
	ld   h, [hl]                                     ; $6ecf: $66
	ld   l, a                                        ; $6ed0: $6f
	ld   a, [$ca6b]                                  ; $6ed1: $fa $6b $ca
	sla  a                                           ; $6ed4: $cb $27
	ld   b, $00                                      ; $6ed6: $06 $00
	ld   c, a                                        ; $6ed8: $4f
	add  hl, bc                                      ; $6ed9: $09
	ld   a, [hl+]                                    ; $6eda: $2a
	ld   h, [hl]                                     ; $6edb: $66
	ld   l, a                                        ; $6edc: $6f
	ld   de, $afd0                                   ; $6edd: $11 $d0 $af
	ld   a, [hl+]                                    ; $6ee0: $2a
	ld   [de], a                                     ; $6ee1: $12
	inc  de                                          ; $6ee2: $13
	ld   a, [hl+]                                    ; $6ee3: $2a
	ld   [de], a                                     ; $6ee4: $12
	inc  de                                          ; $6ee5: $13
	ld   a, [hl+]                                    ; $6ee6: $2a
	ld   [de], a                                     ; $6ee7: $12
	inc  de                                          ; $6ee8: $13
	ld   a, [hl+]                                    ; $6ee9: $2a
	ld   [de], a                                     ; $6eea: $12
	inc  de                                          ; $6eeb: $13
	ld   a, [hl+]                                    ; $6eec: $2a
	ld   [de], a                                     ; $6eed: $12
	inc  de                                          ; $6eee: $13
	ld   a, [hl]                                     ; $6eef: $7e
	ld   [de], a                                     ; $6ef0: $12

jr_021_6ef1:
	ld   a, [wGameState]                                  ; $6ef1: $fa $a0 $c2
	ld   h, a                                        ; $6ef4: $67
	ld   a, [wGameSubstate]                                  ; $6ef5: $fa $a1 $c2
	ld   l, $00                                      ; $6ef8: $2e $00
	ld   a, [$ca6b]                                  ; $6efa: $fa $6b $ca
	ld   b, a                                        ; $6efd: $47
	ld   a, [$ca6a]                                  ; $6efe: $fa $6a $ca

	M_FarCall SetBattleState
	ret                                              ; $6f15: $c9


	ld   [hl+], a                                    ; $6f16: $22
	ld   l, a                                        ; $6f17: $6f
	ld   a, $6f                                      ; $6f18: $3e $6f
	jr   nc, jr_021_6f8b                             ; $6f1a: $30 $6f

	ld   c, h                                        ; $6f1c: $4c
	ld   l, a                                        ; $6f1d: $6f
	ld   e, d                                        ; $6f1e: $5a
	ld   l, a                                        ; $6f1f: $6f
	ld   l, b                                        ; $6f20: $68
	ld   l, a                                        ; $6f21: $6f
	halt                                             ; $6f22: $76
	ld   l, a                                        ; $6f23: $6f
	ld   a, h                                        ; $6f24: $7c
	ld   l, a                                        ; $6f25: $6f
	add  d                                           ; $6f26: $82
	ld   l, a                                        ; $6f27: $6f
	adc  b                                           ; $6f28: $88
	ld   l, a                                        ; $6f29: $6f
	adc  [hl]                                        ; $6f2a: $8e
	ld   l, a                                        ; $6f2b: $6f
	sub  h                                           ; $6f2c: $94
	ld   l, a                                        ; $6f2d: $6f
	sbc  d                                           ; $6f2e: $9a
	ld   l, a                                        ; $6f2f: $6f
	jp   z, $d06f                                    ; $6f30: $ca $6f $d0

	ld   l, a                                        ; $6f33: $6f
	sub  $6f                                         ; $6f34: $d6 $6f
	call c, $e26f                                    ; $6f36: $dc $6f $e2
	ld   l, a                                        ; $6f39: $6f
	add  sp, $6f                                     ; $6f3a: $e8 $6f
	xor  $6f                                         ; $6f3c: $ee $6f
	and  b                                           ; $6f3e: $a0
	ld   l, a                                        ; $6f3f: $6f
	and  [hl]                                        ; $6f40: $a6
	ld   l, a                                        ; $6f41: $6f
	xor  h                                           ; $6f42: $ac
	ld   l, a                                        ; $6f43: $6f
	or   d                                           ; $6f44: $b2
	ld   l, a                                        ; $6f45: $6f
	cp   b                                           ; $6f46: $b8
	ld   l, a                                        ; $6f47: $6f
	cp   [hl]                                        ; $6f48: $be
	ld   l, a                                        ; $6f49: $6f
	call nz, $f46f                                   ; $6f4a: $c4 $6f $f4
	ld   l, a                                        ; $6f4d: $6f
	ld   a, [$006f]                                  ; $6f4e: $fa $6f $00
	ld   [hl], b                                     ; $6f51: $70
	ld   b, $70                                      ; $6f52: $06 $70
	inc  c                                           ; $6f54: $0c
	ld   [hl], b                                     ; $6f55: $70
	ld   [de], a                                     ; $6f56: $12
	ld   [hl], b                                     ; $6f57: $70
	jr   jr_021_6fca                                 ; $6f58: $18 $70

	ld   e, $70                                      ; $6f5a: $1e $70
	inc  h                                           ; $6f5c: $24
	ld   [hl], b                                     ; $6f5d: $70
	ld   a, [hl+]                                    ; $6f5e: $2a
	ld   [hl], b                                     ; $6f5f: $70
	jr   nc, jr_021_6fd2                             ; $6f60: $30 $70

	ld   [hl], $70                                   ; $6f62: $36 $70
	inc  a                                           ; $6f64: $3c
	ld   [hl], b                                     ; $6f65: $70
	ld   b, d                                        ; $6f66: $42
	ld   [hl], b                                     ; $6f67: $70
	ld   c, b                                        ; $6f68: $48
	ld   [hl], b                                     ; $6f69: $70
	ld   c, [hl]                                     ; $6f6a: $4e
	ld   [hl], b                                     ; $6f6b: $70
	ld   d, h                                        ; $6f6c: $54
	ld   [hl], b                                     ; $6f6d: $70
	ld   e, d                                        ; $6f6e: $5a
	ld   [hl], b                                     ; $6f6f: $70
	ld   h, b                                        ; $6f70: $60
	ld   [hl], b                                     ; $6f71: $70
	ld   h, [hl]                                     ; $6f72: $66
	ld   [hl], b                                     ; $6f73: $70
	ld   l, h                                        ; $6f74: $6c
	ld   [hl], b                                     ; $6f75: $70
	rst  $38                                         ; $6f76: $ff
	ccf                                              ; $6f77: $3f
	ccf                                              ; $6f78: $3f
	ccf                                              ; $6f79: $3f
	ccf                                              ; $6f7a: $3f
	ccf                                              ; $6f7b: $3f
	rst  $38                                         ; $6f7c: $ff
	ld   c, a                                        ; $6f7d: $4f
	ld   h, a                                        ; $6f7e: $67
	ld   e, a                                        ; $6f7f: $5f
	ld   c, a                                        ; $6f80: $4f
	ld   d, a                                        ; $6f81: $57
	rst  $38                                         ; $6f82: $ff
	ld   c, a                                        ; $6f83: $4f
	ld   a, b                                        ; $6f84: $78
	ld   a, c                                        ; $6f85: $79
	ld   l, a                                        ; $6f86: $6f
	sub  b                                           ; $6f87: $90
	rst  $38                                         ; $6f88: $ff
	ld   e, a                                        ; $6f89: $5f
	sbc  b                                           ; $6f8a: $98

jr_021_6f8b:
	adc  c                                           ; $6f8b: $89
	adc  d                                           ; $6f8c: $8a
	xor  e                                           ; $6f8d: $ab
	rst  $38                                         ; $6f8e: $ff
	ld   e, a                                        ; $6f8f: $5f
	push bc                                          ; $6f90: $c5
	xor  c                                           ; $6f91: $a9
	and  b                                           ; $6f92: $a0
	call z, $5fff                                    ; $6f93: $cc $ff $5f
	push bc                                          ; $6f96: $c5
	xor  c                                           ; $6f97: $a9
	and  b                                           ; $6f98: $a0
	call z, $5fff                                    ; $6f99: $cc $ff $5f
	push bc                                          ; $6f9c: $c5
	xor  c                                           ; $6f9d: $a9
	and  b                                           ; $6f9e: $a0
	call z, $3fff                                    ; $6f9f: $cc $ff $3f
	ccf                                              ; $6fa2: $3f
	ccf                                              ; $6fa3: $3f
	ccf                                              ; $6fa4: $3f
	ccf                                              ; $6fa5: $3f
	rst  $38                                         ; $6fa6: $ff
	ld   c, a                                        ; $6fa7: $4f
	ld   d, a                                        ; $6fa8: $57
	ccf                                              ; $6fa9: $3f
	ld   a, a                                        ; $6faa: $7f
	ld   d, a                                        ; $6fab: $57
	rst  $38                                         ; $6fac: $ff
	ld   c, a                                        ; $6fad: $4f
	ld   [hl], a                                     ; $6fae: $77
	ld   c, a                                        ; $6faf: $4f
	bit  5, a                                        ; $6fb0: $cb $6f
	rst  $38                                         ; $6fb2: $ff
	ld   c, a                                        ; $6fb3: $4f
	ld   a, a                                        ; $6fb4: $7f
	ld   e, a                                        ; $6fb5: $5f
	rst  $38                                         ; $6fb6: $ff
	add  a                                           ; $6fb7: $87
	rst  $38                                         ; $6fb8: $ff
	ld   e, a                                        ; $6fb9: $5f
	sub  a                                           ; $6fba: $97
	ld   l, a                                        ; $6fbb: $6f
	rst  $38                                         ; $6fbc: $ff
	sub  a                                           ; $6fbd: $97
	rst  $38                                         ; $6fbe: $ff
	ld   e, a                                        ; $6fbf: $5f
	sub  a                                           ; $6fc0: $97
	ld   l, a                                        ; $6fc1: $6f
	rst  $38                                         ; $6fc2: $ff
	sub  a                                           ; $6fc3: $97
	rst  $38                                         ; $6fc4: $ff
	ld   e, a                                        ; $6fc5: $5f
	sub  a                                           ; $6fc6: $97
	ld   l, a                                        ; $6fc7: $6f
	rst  $38                                         ; $6fc8: $ff
	sub  a                                           ; $6fc9: $97

jr_021_6fca:
	rst  $38                                         ; $6fca: $ff
	ccf                                              ; $6fcb: $3f
	ccf                                              ; $6fcc: $3f
	ccf                                              ; $6fcd: $3f
	ccf                                              ; $6fce: $3f
	ccf                                              ; $6fcf: $3f
	rst  $38                                         ; $6fd0: $ff
	ld   c, a                                        ; $6fd1: $4f

jr_021_6fd2:
	ld   d, a                                        ; $6fd2: $57
	ccf                                              ; $6fd3: $3f
	ld   d, a                                        ; $6fd4: $57
	ld   a, a                                        ; $6fd5: $7f
	rst  $38                                         ; $6fd6: $ff
	ld   e, a                                        ; $6fd7: $5f
	ld   l, a                                        ; $6fd8: $6f
	ld   d, a                                        ; $6fd9: $57
	ld   h, a                                        ; $6fda: $67
	pop  bc                                          ; $6fdb: $c1
	rst  $38                                         ; $6fdc: $ff
	ld   l, a                                        ; $6fdd: $6f
	add  a                                           ; $6fde: $87
	ld   l, a                                        ; $6fdf: $6f
	ld   a, b                                        ; $6fe0: $78
	rst  $38                                         ; $6fe1: $ff
	rst  $38                                         ; $6fe2: $ff
	ld   a, a                                        ; $6fe3: $7f
	sbc  b                                           ; $6fe4: $98
	adc  b                                           ; $6fe5: $88
	sub  c                                           ; $6fe6: $91
	rst  $38                                         ; $6fe7: $ff
	rst  $38                                         ; $6fe8: $ff
	ld   a, a                                        ; $6fe9: $7f
	sbc  b                                           ; $6fea: $98
	adc  b                                           ; $6feb: $88
	sub  c                                           ; $6fec: $91
	rst  $38                                         ; $6fed: $ff
	rst  $38                                         ; $6fee: $ff
	ld   a, a                                        ; $6fef: $7f
	sbc  b                                           ; $6ff0: $98
	adc  b                                           ; $6ff1: $88
	sub  c                                           ; $6ff2: $91
	rst  $38                                         ; $6ff3: $ff
	rst  $38                                         ; $6ff4: $ff
	ccf                                              ; $6ff5: $3f
	ccf                                              ; $6ff6: $3f
	ccf                                              ; $6ff7: $3f
	ccf                                              ; $6ff8: $3f
	ccf                                              ; $6ff9: $3f
	rst  $38                                         ; $6ffa: $ff
	ld   c, a                                        ; $6ffb: $4f
	add  a                                           ; $6ffc: $87
	ccf                                              ; $6ffd: $3f
	ld   c, a                                        ; $6ffe: $4f
	ld   d, a                                        ; $6fff: $57
	rst  $38                                         ; $7000: $ff
	ld   e, a                                        ; $7001: $5f
	pop  de                                          ; $7002: $d1
	ld   d, a                                        ; $7003: $57
	ld   e, a                                        ; $7004: $5f
	ld   h, a                                        ; $7005: $67
	rst  $38                                         ; $7006: $ff
	ld   l, a                                        ; $7007: $6f
	rst  $38                                         ; $7008: $ff
	ld   l, b                                        ; $7009: $68
	ld   [hl], a                                     ; $700a: $77
	ld   [hl], a                                     ; $700b: $77
	rst  $38                                         ; $700c: $ff
	ld   a, a                                        ; $700d: $7f
	rst  $38                                         ; $700e: $ff
	add  d                                           ; $700f: $82
	add  a                                           ; $7010: $87
	sub  b                                           ; $7011: $90
	rst  $38                                         ; $7012: $ff
	ld   a, a                                        ; $7013: $7f
	rst  $38                                         ; $7014: $ff
	add  d                                           ; $7015: $82
	add  a                                           ; $7016: $87
	sub  b                                           ; $7017: $90
	rst  $38                                         ; $7018: $ff
	ld   a, a                                        ; $7019: $7f
	rst  $38                                         ; $701a: $ff
	add  d                                           ; $701b: $82
	add  a                                           ; $701c: $87
	sub  b                                           ; $701d: $90
	rst  $38                                         ; $701e: $ff
	ccf                                              ; $701f: $3f
	ccf                                              ; $7020: $3f
	ccf                                              ; $7021: $3f
	ccf                                              ; $7022: $3f
	ccf                                              ; $7023: $3f
	rst  $38                                         ; $7024: $ff
	ld   a, a                                        ; $7025: $7f
	ld   c, a                                        ; $7026: $4f
	ccf                                              ; $7027: $3f
	ld   d, a                                        ; $7028: $57
	ld   d, a                                        ; $7029: $57
	rst  $38                                         ; $702a: $ff
	cp   a                                           ; $702b: $bf
	ld   h, a                                        ; $702c: $67
	ld   c, a                                        ; $702d: $4f
	ld   l, a                                        ; $702e: $6f
	ld   h, a                                        ; $702f: $67
	rst  $38                                         ; $7030: $ff
	rst  $38                                         ; $7031: $ff
	ld   a, a                                        ; $7032: $7f
	ld   e, a                                        ; $7033: $5f
	ld   a, a                                        ; $7034: $7f
	ld   a, a                                        ; $7035: $7f
	rst  $38                                         ; $7036: $ff
	rst  $38                                         ; $7037: $ff
	sub  a                                           ; $7038: $97
	ld   l, a                                        ; $7039: $6f
	sub  a                                           ; $703a: $97
	adc  a                                           ; $703b: $8f
	rst  $38                                         ; $703c: $ff
	rst  $38                                         ; $703d: $ff
	sub  a                                           ; $703e: $97
	ld   l, a                                        ; $703f: $6f
	sub  a                                           ; $7040: $97
	adc  a                                           ; $7041: $8f
	rst  $38                                         ; $7042: $ff
	rst  $38                                         ; $7043: $ff
	sub  a                                           ; $7044: $97
	ld   l, a                                        ; $7045: $6f
	sub  a                                           ; $7046: $97
	adc  a                                           ; $7047: $8f
	rst  $38                                         ; $7048: $ff
	ccf                                              ; $7049: $3f
	ccf                                              ; $704a: $3f
	ccf                                              ; $704b: $3f
	ccf                                              ; $704c: $3f
	ccf                                              ; $704d: $3f
	rst  $38                                         ; $704e: $ff
	ld   c, a                                        ; $704f: $4f
	ld   c, a                                        ; $7050: $4f
	ld   [hl], a                                     ; $7051: $77
	ld   d, a                                        ; $7052: $57
	ld   c, a                                        ; $7053: $4f
	rst  $38                                         ; $7054: $ff
	ld   e, a                                        ; $7055: $5f
	ld   l, b                                        ; $7056: $68
	jp   nz, Jump_021_5f67                           ; $7057: $c2 $67 $5f

	rst  $38                                         ; $705a: $ff
	ld   l, a                                        ; $705b: $6f
	ld   a, c                                        ; $705c: $79
	rst  $38                                         ; $705d: $ff
	add  b                                           ; $705e: $80
	ld   [hl], a                                     ; $705f: $77
	rst  $38                                         ; $7060: $ff
	ld   a, a                                        ; $7061: $7f
	sub  e                                           ; $7062: $93
	rst  $38                                         ; $7063: $ff
	sub  c                                           ; $7064: $91
	adc  a                                           ; $7065: $8f
	rst  $38                                         ; $7066: $ff
	ld   a, a                                        ; $7067: $7f
	sub  e                                           ; $7068: $93
	rst  $38                                         ; $7069: $ff
	sub  c                                           ; $706a: $91
	adc  a                                           ; $706b: $8f
	rst  $38                                         ; $706c: $ff
	ld   a, a                                        ; $706d: $7f
	sub  e                                           ; $706e: $93
	rst  $38                                         ; $706f: $ff
	sub  c                                           ; $7070: $91
	adc  a                                           ; $7071: $8f


GameState33_PlayerSpecialAnims::
	ld   a, [wGameSubstate]                                  ; $7072: $fa $a1 $c2
	rst  JumpTable                                         ; $7075: $df
	sbc  c                                           ; $7076: $99
	ld   [hl], b                                     ; $7077: $70
	ld   c, l                                        ; $7078: $4d
	ld   [hl], c                                     ; $7079: $71
	ld   d, l                                        ; $707a: $55
	ld   [hl], d                                     ; $707b: $72
	ld   h, e                                        ; $707c: $63
	ld   [hl], e                                     ; $707d: $73
	ld   c, c                                        ; $707e: $49
	ld   [hl], l                                     ; $707f: $75

Call_021_7080::
	ld   [wNapOrTrainIdx], a                                  ; $7080: $ea $6d $ca
	ld   a, b                                        ; $7083: $78
	ld   [$ca86], a                                  ; $7084: $ea $86 $ca
	ld   a, GS_PLAYER_SPECIAL_ANIMS                                      ; $7087: $3e $33
	ld   [wGameState], a                                  ; $7089: $ea $a0 $c2
	xor  a                                           ; $708c: $af
	ld   [wGameSubstate], a                                  ; $708d: $ea $a1 $c2
	ld   a, h                                        ; $7090: $7c
	ld   [wNapOrTrainReturnState], a                                  ; $7091: $ea $4c $ca
	ld   a, l                                        ; $7094: $7d
	ld   [wNapOrTrainReturnSubstate], a                                  ; $7095: $ea $4d $ca
	ret                                              ; $7098: $c9


	ld   a, $ff                                      ; $7099: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $709b: $ea $0e $c2
	ld   a, $0c                                      ; $709e: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $70a0: $ea $13 $c2
	ld   a, $04                                      ; $70a3: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $70a5: $ea $14 $c2
	call ClearBaseAnimSpriteSpecDetails                                       ; $70a8: $cd $c9 $2e
	call ClearOam                                       ; $70ab: $cd $d7 $0d
	ld   a, [wNapOrTrainIdx]                                  ; $70ae: $fa $6d $ca
	cp   $00                                         ; $70b1: $fe $00
	jr   z, jr_021_7124                              ; $70b3: $28 $6f

	cp   $01                                         ; $70b5: $fe $01
	jr   z, jr_021_7111                              ; $70b7: $28 $58

	cp   $02                                         ; $70b9: $fe $02
	jr   z, jr_021_70fe                              ; $70bb: $28 $41

	cp   $03                                         ; $70bd: $fe $03
	jr   z, jr_021_70eb                              ; $70bf: $28 $2a

	cp   $04                                         ; $70c1: $fe $04
	jr   z, jr_021_70d8                              ; $70c3: $28 $13

	ld   c, $00                                      ; $70c5: $0e $00
	ld   de, $8000                                   ; $70c7: $11 $00 $80
	ld   a, $27                                      ; $70ca: $3e $27
	ld   hl, $7000                                   ; $70cc: $21 $00 $70
	ld   b, $30                                      ; $70cf: $06 $30
	call EnqueueHDMATransfer                                       ; $70d1: $cd $7c $02
	ld   a, $39                                      ; $70d4: $3e $39
	jr   jr_021_7135                                 ; $70d6: $18 $5d

jr_021_70d8:
	ld   c, $00                                      ; $70d8: $0e $00
	ld   de, $8000                                   ; $70da: $11 $00 $80
	ld   a, $25                                      ; $70dd: $3e $25
	ld   hl, $7800                                   ; $70df: $21 $00 $78
	ld   b, $30                                      ; $70e2: $06 $30
	call EnqueueHDMATransfer                                       ; $70e4: $cd $7c $02
	ld   a, $28                                      ; $70e7: $3e $28
	jr   jr_021_7135                                 ; $70e9: $18 $4a

jr_021_70eb:
	ld   c, $00                                      ; $70eb: $0e $00
	ld   de, $8000                                   ; $70ed: $11 $00 $80
	ld   a, $27                                      ; $70f0: $3e $27
	ld   hl, $7800                                   ; $70f2: $21 $00 $78
	ld   b, $30                                      ; $70f5: $06 $30
	call EnqueueHDMATransfer                                       ; $70f7: $cd $7c $02
	ld   a, $1c                                      ; $70fa: $3e $1c
	jr   jr_021_7135                                 ; $70fc: $18 $37

jr_021_70fe:
	ld   c, $00                                      ; $70fe: $0e $00
	ld   de, $8000                                   ; $7100: $11 $00 $80
	ld   a, $28                                      ; $7103: $3e $28
	ld   hl, $7000                                   ; $7105: $21 $00 $70
	ld   b, $30                                      ; $7108: $06 $30
	call EnqueueHDMATransfer                                       ; $710a: $cd $7c $02
	ld   a, $13                                      ; $710d: $3e $13
	jr   jr_021_7135                                 ; $710f: $18 $24

jr_021_7111:
	ld   c, $00                                      ; $7111: $0e $00
	ld   de, $8000                                   ; $7113: $11 $00 $80
	ld   a, $25                                      ; $7116: $3e $25
	ld   hl, $7000                                   ; $7118: $21 $00 $70
	ld   b, $30                                      ; $711b: $06 $30
	call EnqueueHDMATransfer                                       ; $711d: $cd $7c $02
	ld   a, $00                                      ; $7120: $3e $00
	jr   jr_021_7135                                 ; $7122: $18 $11

jr_021_7124:
	ld   c, $00                                      ; $7124: $0e $00
	ld   de, $8000                                   ; $7126: $11 $00 $80
	ld   a, $28                                      ; $7129: $3e $28
	ld   hl, $7800                                   ; $712b: $21 $00 $78
	ld   b, $30                                      ; $712e: $06 $30
	call EnqueueHDMATransfer                                       ; $7130: $cd $7c $02
	ld   a, $09                                      ; $7133: $3e $09

jr_021_7135:
	ld   [$cab1], a                                  ; $7135: $ea $b1 $ca
	ld   [$ca8e], a                                  ; $7138: $ea $8e $ca
	xor  a                                           ; $713b: $af
	ld   [$ca6e], a                                  ; $713c: $ea $6e $ca
	ld   [$ca94], a                                  ; $713f: $ea $94 $ca
	ld   [$ca87], a                                  ; $7142: $ea $87 $ca
	ld   [$ca96], a                                  ; $7145: $ea $96 $ca
	ld   hl, wGameSubstate                                   ; $7148: $21 $a1 $c2
	inc  [hl]                                        ; $714b: $34
	ret                                              ; $714c: $c9


	ld   a, [wNapOrTrainIdx]                                  ; $714d: $fa $6d $ca
	cp   $00                                         ; $7150: $fe $00
	jp   z, Jump_021_7227                            ; $7152: $ca $27 $72

	cp   $01                                         ; $7155: $fe $01
	jp   z, Jump_021_7201                            ; $7157: $ca $01 $72

	cp   $02                                         ; $715a: $fe $02
	jp   z, Jump_021_71db                            ; $715c: $ca $db $71

	cp   $03                                         ; $715f: $fe $03
	jp   z, Jump_021_71b5                            ; $7161: $ca $b5 $71

	cp   $04                                         ; $7164: $fe $04
	jp   z, Jump_021_718f                            ; $7166: $ca $8f $71

	ld   c, $00                                      ; $7169: $0e $00
	ld   de, $8300                                   ; $716b: $11 $00 $83
	ld   a, $27                                      ; $716e: $3e $27
	ld   hl, $7300                                   ; $7170: $21 $00 $73
	ld   b, $20                                      ; $7173: $06 $20
	call EnqueueHDMATransfer                                       ; $7175: $cd $7c $02
	ld   a, $2a                                      ; $7178: $3e $2a
	ld   hl, $6260                                   ; $717a: $21 $60 $62
	ld   de, wOBJPalettes                                   ; $717d: $11 $1e $c3
	ld   bc, $0020                                   ; $7180: $01 $20 $00
	call FarMemCopy                                       ; $7183: $cd $b2 $09
	ld   bc, $202f                                   ; $7186: $01 $2f $20
	call SetBGandOBJPaletteRangesToUpdate                                       ; $7189: $cd $aa $04
	jp   Jump_021_724a                               ; $718c: $c3 $4a $72


Jump_021_718f:
	ld   c, $00                                      ; $718f: $0e $00
	ld   de, $8300                                   ; $7191: $11 $00 $83
	ld   a, $25                                      ; $7194: $3e $25
	ld   hl, $7b00                                   ; $7196: $21 $00 $7b
	ld   b, $20                                      ; $7199: $06 $20
	call EnqueueHDMATransfer                                       ; $719b: $cd $7c $02
	ld   a, $2a                                      ; $719e: $3e $2a
	ld   hl, $6240                                   ; $71a0: $21 $40 $62
	ld   de, wOBJPalettes                                   ; $71a3: $11 $1e $c3
	ld   bc, $0020                                   ; $71a6: $01 $20 $00
	call FarMemCopy                                       ; $71a9: $cd $b2 $09
	ld   bc, $202f                                   ; $71ac: $01 $2f $20
	call SetBGandOBJPaletteRangesToUpdate                                       ; $71af: $cd $aa $04
	jp   Jump_021_724a                               ; $71b2: $c3 $4a $72


Jump_021_71b5:
	ld   c, $00                                      ; $71b5: $0e $00
	ld   de, $8300                                   ; $71b7: $11 $00 $83
	ld   a, $27                                      ; $71ba: $3e $27
	ld   hl, $7b00                                   ; $71bc: $21 $00 $7b
	ld   b, $20                                      ; $71bf: $06 $20
	call EnqueueHDMATransfer                                       ; $71c1: $cd $7c $02
	ld   a, $2a                                      ; $71c4: $3e $2a
	ld   hl, $6280                                   ; $71c6: $21 $80 $62
	ld   de, wOBJPalettes                                   ; $71c9: $11 $1e $c3
	ld   bc, $0020                                   ; $71cc: $01 $20 $00
	call FarMemCopy                                       ; $71cf: $cd $b2 $09
	ld   bc, $202f                                   ; $71d2: $01 $2f $20
	call SetBGandOBJPaletteRangesToUpdate                                       ; $71d5: $cd $aa $04
	jp   Jump_021_724a                               ; $71d8: $c3 $4a $72


Jump_021_71db:
	ld   c, $00                                      ; $71db: $0e $00
	ld   de, $8300                                   ; $71dd: $11 $00 $83
	ld   a, $28                                      ; $71e0: $3e $28
	ld   hl, $7300                                   ; $71e2: $21 $00 $73
	ld   b, $20                                      ; $71e5: $06 $20
	call EnqueueHDMATransfer                                       ; $71e7: $cd $7c $02
	ld   a, $2a                                      ; $71ea: $3e $2a
	ld   hl, $62a0                                   ; $71ec: $21 $a0 $62
	ld   de, wOBJPalettes                                   ; $71ef: $11 $1e $c3
	ld   bc, $0020                                   ; $71f2: $01 $20 $00
	call FarMemCopy                                       ; $71f5: $cd $b2 $09
	ld   bc, $202f                                   ; $71f8: $01 $2f $20
	call SetBGandOBJPaletteRangesToUpdate                                       ; $71fb: $cd $aa $04
	jp   Jump_021_724a                               ; $71fe: $c3 $4a $72


Jump_021_7201:
	ld   c, $00                                      ; $7201: $0e $00
	ld   de, $8300                                   ; $7203: $11 $00 $83
	ld   a, $25                                      ; $7206: $3e $25
	ld   hl, $7300                                   ; $7208: $21 $00 $73
	ld   b, $20                                      ; $720b: $06 $20
	call EnqueueHDMATransfer                                       ; $720d: $cd $7c $02
	ld   a, $2a                                      ; $7210: $3e $2a
	ld   hl, $6220                                   ; $7212: $21 $20 $62
	ld   de, wOBJPalettes                                   ; $7215: $11 $1e $c3
	ld   bc, $0020                                   ; $7218: $01 $20 $00
	call FarMemCopy                                       ; $721b: $cd $b2 $09
	ld   bc, $202f                                   ; $721e: $01 $2f $20
	call SetBGandOBJPaletteRangesToUpdate                                       ; $7221: $cd $aa $04
	jp   Jump_021_724a                               ; $7224: $c3 $4a $72


Jump_021_7227:
	ld   c, $00                                      ; $7227: $0e $00
	ld   de, $8300                                   ; $7229: $11 $00 $83
	ld   a, $28                                      ; $722c: $3e $28
	ld   hl, $7b00                                   ; $722e: $21 $00 $7b
	ld   b, $20                                      ; $7231: $06 $20
	call EnqueueHDMATransfer                                       ; $7233: $cd $7c $02
	ld   a, $2a                                      ; $7236: $3e $2a
	ld   hl, $62c0                                   ; $7238: $21 $c0 $62
	ld   de, wOBJPalettes                                   ; $723b: $11 $1e $c3
	ld   bc, $0020                                   ; $723e: $01 $20 $00
	call FarMemCopy                                       ; $7241: $cd $b2 $09
	ld   bc, $202f                                   ; $7244: $01 $2f $20
	call SetBGandOBJPaletteRangesToUpdate                                       ; $7247: $cd $aa $04

Jump_021_724a:
	call Call_021_72e5                               ; $724a: $cd $e5 $72
	call Call_021_738b                               ; $724d: $cd $8b $73
	ld   hl, wGameSubstate                                   ; $7250: $21 $a1 $c2
	inc  [hl]                                        ; $7253: $34
	ret                                              ; $7254: $c9


	ld   a, [wNapOrTrainIdx]                                  ; $7255: $fa $6d $ca
	cp   $00                                         ; $7258: $fe $00
	jp   z, Jump_021_72cb                            ; $725a: $ca $cb $72

	cp   $01                                         ; $725d: $fe $01
	jp   z, Jump_021_72b9                            ; $725f: $ca $b9 $72

	cp   $02                                         ; $7262: $fe $02
	jp   z, Jump_021_72a7                            ; $7264: $ca $a7 $72

	cp   $03                                         ; $7267: $fe $03
	jp   z, Jump_021_7295                            ; $7269: $ca $95 $72

	cp   $04                                         ; $726c: $fe $04
	jp   z, Jump_021_7283                            ; $726e: $ca $83 $72

	ld   c, $00                                      ; $7271: $0e $00
	ld   de, $8500                                   ; $7273: $11 $00 $85
	ld   a, $27                                      ; $7276: $3e $27
	ld   hl, $7500                                   ; $7278: $21 $00 $75
	ld   b, $30                                      ; $727b: $06 $30
	call EnqueueHDMATransfer                                       ; $727d: $cd $7c $02
	jp   Jump_021_72da                               ; $7280: $c3 $da $72


Jump_021_7283:
	ld   c, $00                                      ; $7283: $0e $00
	ld   de, $8500                                   ; $7285: $11 $00 $85
	ld   a, $25                                      ; $7288: $3e $25
	ld   hl, $7d00                                   ; $728a: $21 $00 $7d
	ld   b, $30                                      ; $728d: $06 $30
	call EnqueueHDMATransfer                                       ; $728f: $cd $7c $02
	jp   Jump_021_72da                               ; $7292: $c3 $da $72


Jump_021_7295:
	ld   c, $00                                      ; $7295: $0e $00
	ld   de, $8500                                   ; $7297: $11 $00 $85
	ld   a, $27                                      ; $729a: $3e $27
	ld   hl, $7d00                                   ; $729c: $21 $00 $7d
	ld   b, $30                                      ; $729f: $06 $30
	call EnqueueHDMATransfer                                       ; $72a1: $cd $7c $02
	jp   Jump_021_72da                               ; $72a4: $c3 $da $72


Jump_021_72a7:
	ld   c, $00                                      ; $72a7: $0e $00
	ld   de, $8500                                   ; $72a9: $11 $00 $85
	ld   a, $28                                      ; $72ac: $3e $28
	ld   hl, $7500                                   ; $72ae: $21 $00 $75
	ld   b, $30                                      ; $72b1: $06 $30
	call EnqueueHDMATransfer                                       ; $72b3: $cd $7c $02
	jp   Jump_021_72da                               ; $72b6: $c3 $da $72


Jump_021_72b9:
	ld   c, $00                                      ; $72b9: $0e $00
	ld   de, $8500                                   ; $72bb: $11 $00 $85
	ld   a, $25                                      ; $72be: $3e $25
	ld   hl, $7500                                   ; $72c0: $21 $00 $75
	ld   b, $30                                      ; $72c3: $06 $30
	call EnqueueHDMATransfer                                       ; $72c5: $cd $7c $02
	jp   Jump_021_72da                               ; $72c8: $c3 $da $72


Jump_021_72cb:
	ld   c, $00                                      ; $72cb: $0e $00
	ld   de, $8500                                   ; $72cd: $11 $00 $85
	ld   a, $28                                      ; $72d0: $3e $28
	ld   hl, $7d00                                   ; $72d2: $21 $00 $7d
	ld   b, $30                                      ; $72d5: $06 $30
	call EnqueueHDMATransfer                                       ; $72d7: $cd $7c $02

Jump_021_72da:
	call Call_021_72e5                               ; $72da: $cd $e5 $72
	call Call_021_738b                               ; $72dd: $cd $8b $73
	ld   hl, wGameSubstate                                   ; $72e0: $21 $a1 $c2
	inc  [hl]                                        ; $72e3: $34
	ret                                              ; $72e4: $c9


Call_021_72e5:
	ld   a, [wNapOrTrainIdx]                                  ; $72e5: $fa $6d $ca
	sla  a                                           ; $72e8: $cb $27
	ld   hl, $7327                                   ; $72ea: $21 $27 $73
	ld   b, $00                                      ; $72ed: $06 $00
	ld   c, a                                        ; $72ef: $4f
	add  hl, bc                                      ; $72f0: $09
	ld   a, [hl+]                                    ; $72f1: $2a
	ld   h, [hl]                                     ; $72f2: $66
	ld   l, a                                        ; $72f3: $6f
	ld   a, [$ca86]                                  ; $72f4: $fa $86 $ca
	sla  a                                           ; $72f7: $cb $27
	ld   b, $00                                      ; $72f9: $06 $00
	ld   c, a                                        ; $72fb: $4f
	add  hl, bc                                      ; $72fc: $09
	ld   a, [hl+]                                    ; $72fd: $2a
	ld   [$ca72], a                                  ; $72fe: $ea $72 $ca
	ld   a, [hl]                                     ; $7301: $7e
	ld   [$ca73], a                                  ; $7302: $ea $73 $ca
	ld   a, [wNapOrTrainIdx]                                  ; $7305: $fa $6d $ca
	sla  a                                           ; $7308: $cb $27
	ld   hl, $73d5                                   ; $730a: $21 $d5 $73
	ld   b, $00                                      ; $730d: $06 $00
	ld   c, a                                        ; $730f: $4f
	add  hl, bc                                      ; $7310: $09
	ld   a, [hl+]                                    ; $7311: $2a
	ld   h, [hl]                                     ; $7312: $66
	ld   l, a                                        ; $7313: $6f
	ld   a, [$ca86]                                  ; $7314: $fa $86 $ca
	sla  a                                           ; $7317: $cb $27
	ld   b, $00                                      ; $7319: $06 $00
	ld   c, a                                        ; $731b: $4f
	add  hl, bc                                      ; $731c: $09
	ld   a, [hl+]                                    ; $731d: $2a
	ld   h, [hl]                                     ; $731e: $66
	ld   l, a                                        ; $731f: $6f
	ld   de, wKouboChosen0idxed                                   ; $7320: $11 $6f $ca
	call Call_021_7564                               ; $7323: $cd $64 $75
	ret                                              ; $7326: $c9


	inc  sp                                          ; $7327: $33
	ld   [hl], e                                     ; $7328: $73
	dec  sp                                          ; $7329: $3b
	ld   [hl], e                                     ; $732a: $73
	ld   b, e                                        ; $732b: $43
	ld   [hl], e                                     ; $732c: $73
	ld   c, e                                        ; $732d: $4b
	ld   [hl], e                                     ; $732e: $73
	ld   d, e                                        ; $732f: $53
	ld   [hl], e                                     ; $7330: $73
	ld   e, e                                        ; $7331: $5b
	ld   [hl], e                                     ; $7332: $73
	ld   b, [hl]                                     ; $7333: $46
	jr   nz, @+$49                                   ; $7334: $20 $47

	rra                                              ; $7336: $1f
	ld   b, a                                        ; $7337: $47
	rra                                              ; $7338: $1f
	add  hl, sp                                      ; $7339: $39
	inc  l                                           ; $733a: $2c
	inc  [hl]                                        ; $733b: $34
	inc  l                                           ; $733c: $2c
	ld   c, b                                        ; $733d: $48
	dec  d                                           ; $733e: $15
	ld   c, b                                        ; $733f: $48
	dec  d                                           ; $7340: $15
	ld   [hl], b                                     ; $7341: $70
	inc  hl                                          ; $7342: $23
	ld   b, a                                        ; $7343: $47
	jr   nc, jr_021_735f                             ; $7344: $30 $19

	rra                                              ; $7346: $1f
	add  hl, de                                      ; $7347: $19
	rra                                              ; $7348: $1f
	ld   [hl-], a                                    ; $7349: $32
	add  hl, hl                                      ; $734a: $29
	ld   a, [hl-]                                    ; $734b: $3a
	add  hl, hl                                      ; $734c: $29
	jr   nc, @+$24                                   ; $734d: $30 $22

	jr   nc, jr_021_7373                             ; $734f: $30 $22

	ld   l, c                                        ; $7351: $69
	inc  l                                           ; $7352: $2c
	ld   l, b                                        ; $7353: $68
	ld   h, $33                                      ; $7354: $26 $33
	add  hl, hl                                      ; $7356: $29
	inc  sp                                          ; $7357: $33
	add  hl, hl                                      ; $7358: $29
	ld   a, [hl-]                                    ; $7359: $3a
	jr   z, jr_021_739d                              ; $735a: $28 $41

	dec  l                                           ; $735c: $2d
	ld   b, c                                        ; $735d: $41
	dec  l                                           ; $735e: $2d

jr_021_735f:
	ld   b, c                                        ; $735f: $41
	dec  l                                           ; $7360: $2d
	ld   b, c                                        ; $7361: $41
	dec  l                                           ; $7362: $2d
	ld   a, [$ca87]                                  ; $7363: $fa $87 $ca
	cp   $01                                         ; $7366: $fe $01
	jr   z, jr_021_7386                              ; $7368: $28 $1c

	call ClearOam                                       ; $736a: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $736d: $cd $d3 $2e
	ld   a, [$ca6e]                                  ; $7370: $fa $6e $ca

jr_021_7373:
	and  a                                           ; $7373: $a7
	jr   z, jr_021_7382                              ; $7374: $28 $0c

	ld   a, $ff                                      ; $7376: $3e $ff
	ld   [$ca94], a                                  ; $7378: $ea $94 $ca
	ld   a, [$ca87]                                  ; $737b: $fa $87 $ca
	inc  a                                           ; $737e: $3c
	ld   [$ca87], a                                  ; $737f: $ea $87 $ca

jr_021_7382:
	call Call_021_738b                               ; $7382: $cd $8b $73
	ret                                              ; $7385: $c9


jr_021_7386:
	ld   hl, wGameSubstate                                   ; $7386: $21 $a1 $c2
	inc  [hl]                                        ; $7389: $34
	ret                                              ; $738a: $c9


Call_021_738b:
	ld   a, [wNapOrTrainIdx]                                  ; $738b: $fa $6d $ca
	sla  a                                           ; $738e: $cb $27
	ld   hl, $73d5                                   ; $7390: $21 $d5 $73
	ld   b, $00                                      ; $7393: $06 $00
	ld   c, a                                        ; $7395: $4f
	add  hl, bc                                      ; $7396: $09
	ld   a, [hl+]                                    ; $7397: $2a
	ld   h, [hl]                                     ; $7398: $66
	ld   l, a                                        ; $7399: $6f
	ld   a, [$ca86]                                  ; $739a: $fa $86 $ca

jr_021_739d:
	sla  a                                           ; $739d: $cb $27
	ld   b, $00                                      ; $739f: $06 $00
	ld   c, a                                        ; $73a1: $4f
	add  hl, bc                                      ; $73a2: $09
	ld   a, [hl+]                                    ; $73a3: $2a
	ld   h, [hl]                                     ; $73a4: $66
	ld   l, a                                        ; $73a5: $6f
	ld   de, wKouboChosen0idxed                                   ; $73a6: $11 $6f $ca
	push hl                                          ; $73a9: $e5
	ld   a, [$cab1]                                  ; $73aa: $fa $b1 $ca
	ld   [$ca8e], a                                  ; $73ad: $ea $8e $ca
	call Call_021_7572                               ; $73b0: $cd $72 $75
	pop  hl                                          ; $73b3: $e1
	jr   nc, jr_021_73c1                             ; $73b4: $30 $0b

	ld   a, [wKouboChosen0idxed]                                  ; $73b6: $fa $6f $ca
	and  a                                           ; $73b9: $a7
	jr   nz, jr_021_73c1                             ; $73ba: $20 $05

	ld   a, $01                                      ; $73bc: $3e $01
	ld   [$ca6e], a                                  ; $73be: $ea $6e $ca

jr_021_73c1:
	ld   a, $03                                      ; $73c1: $3e $03
	ld   [wSpriteGroup], a                                  ; $73c3: $ea $1a $c2
	ld   a, [$ca72]                                  ; $73c6: $fa $72 $ca
	ld   b, a                                        ; $73c9: $47
	ld   a, [$ca73]                                  ; $73ca: $fa $73 $ca
	ld   c, a                                        ; $73cd: $4f
	ld   a, [$ca70]                                  ; $73ce: $fa $70 $ca
	call LoadSpriteFromMainTable                                       ; $73d1: $cd $16 $0e
	ret                                              ; $73d4: $c9


	pop  hl                                          ; $73d5: $e1
	ld   [hl], e                                     ; $73d6: $73
	jp   hl                                          ; $73d7: $e9


	ld   [hl], e                                     ; $73d8: $73
	pop  af                                          ; $73d9: $f1
	ld   [hl], e                                     ; $73da: $73
	ld   sp, hl                                      ; $73db: $f9
	ld   [hl], e                                     ; $73dc: $73
	ld   bc, $0974                                   ; $73dd: $01 $74 $09
	ld   [hl], h                                     ; $73e0: $74
	ld   de, $2474                                   ; $73e1: $11 $74 $24
	ld   [hl], h                                     ; $73e4: $74
	inc  h                                           ; $73e5: $24
	ld   [hl], h                                     ; $73e6: $74
	dec  sp                                          ; $73e7: $3b
	ld   [hl], h                                     ; $73e8: $74
	ld   c, h                                        ; $73e9: $4c
	ld   [hl], h                                     ; $73ea: $74
	ld   e, a                                        ; $73eb: $5f
	ld   [hl], h                                     ; $73ec: $74
	ld   e, a                                        ; $73ed: $5f
	ld   [hl], h                                     ; $73ee: $74
	ld   [hl], d                                     ; $73ef: $72
	ld   [hl], h                                     ; $73f0: $74
	add  l                                           ; $73f1: $85
	ld   [hl], h                                     ; $73f2: $74
	sub  d                                           ; $73f3: $92
	ld   [hl], h                                     ; $73f4: $74
	sub  d                                           ; $73f5: $92
	ld   [hl], h                                     ; $73f6: $74
	and  e                                           ; $73f7: $a3
	ld   [hl], h                                     ; $73f8: $74
	xor  [hl]                                        ; $73f9: $ae
	ld   [hl], h                                     ; $73fa: $74
	jp   $c374                                       ; $73fb: $c3 $74 $c3


	ld   [hl], h                                     ; $73fe: $74
	jp   nc, $e574                                   ; $73ff: $d2 $74 $e5

	ld   [hl], h                                     ; $7402: $74
	ld   a, [$fa74]                                  ; $7403: $fa $74 $fa
	ld   [hl], h                                     ; $7406: $74
	dec  c                                           ; $7407: $0d
	ld   [hl], l                                     ; $7408: $75
	ld   a, [de]                                     ; $7409: $1a
	ld   [hl], l                                     ; $740a: $75
	dec  l                                           ; $740b: $2d
	ld   [hl], l                                     ; $740c: $75
	dec  l                                           ; $740d: $2d
	ld   [hl], l                                     ; $740e: $75
	jr   c, @+$77                                    ; $740f: $38 $75

	jr   nc, jr_021_7413                             ; $7411: $30 $00

jr_021_7413:
	ld   de, $1001                                   ; $7413: $11 $01 $10
	nop                                              ; $7416: $00
	ld   de, $1001                                   ; $7417: $11 $01 $10
	nop                                              ; $741a: $00
	ld   de, $1001                                   ; $741b: $11 $01 $10
	nop                                              ; $741e: $00
	ld   de, $4001                                   ; $741f: $11 $01 $40
	nop                                              ; $7422: $00
	nop                                              ; $7423: $00
	jr   nc, @+$04                                   ; $7424: $30 $02

	ld   [$1103], sp                                 ; $7426: $08 $03 $11
	inc  b                                           ; $7429: $04
	ld   a, [bc]                                     ; $742a: $0a
	inc  bc                                          ; $742b: $03
	ld   de, $0a04                                   ; $742c: $11 $04 $0a
	inc  bc                                          ; $742f: $03
	ld   de, $0a04                                   ; $7430: $11 $04 $0a
	inc  bc                                          ; $7433: $03
	ld   de, $0a04                                   ; $7434: $11 $04 $0a
	inc  bc                                          ; $7437: $03
	ld   b, b                                        ; $7438: $40
	inc  b                                           ; $7439: $04
	nop                                              ; $743a: $00
	jr   nc, @+$07                                   ; $743b: $30 $05

	ld   c, $06                                      ; $743d: $0e $06
	ld   c, $05                                      ; $743f: $0e $05
	ld   c, $06                                      ; $7441: $0e $06
	jr   nc, @+$07                                   ; $7443: $30 $05

	db   $10                                         ; $7445: $10
	rlca                                             ; $7446: $07
	ld   a, [bc]                                     ; $7447: $0a
	ld   [$0940], sp                                 ; $7448: $08 $40 $09
	nop                                              ; $744b: $00
	jr   nc, jr_021_744e                             ; $744c: $30 $00

jr_021_744e:
	ld   de, $0f01                                   ; $744e: $11 $01 $0f
	ld   [bc], a                                     ; $7451: $02
	ld   de, $0f01                                   ; $7452: $11 $01 $0f
	ld   [bc], a                                     ; $7455: $02
	ld   de, $0f01                                   ; $7456: $11 $01 $0f
	ld   [bc], a                                     ; $7459: $02
	inc  d                                           ; $745a: $14
	ld   bc, $0040                                   ; $745b: $01 $40 $00
	nop                                              ; $745e: $00
	jr   nc, jr_021_7464                             ; $745f: $30 $03

	ld   de, $1104                                   ; $7461: $11 $04 $11

jr_021_7464:
	dec  b                                           ; $7464: $05
	ld   de, $1104                                   ; $7465: $11 $04 $11
	dec  b                                           ; $7468: $05
	ld   de, $1104                                   ; $7469: $11 $04 $11
	dec  b                                           ; $746c: $05
	ld   de, $4004                                   ; $746d: $11 $04 $40
	inc  bc                                          ; $7470: $03
	nop                                              ; $7471: $00
	jr   nc, jr_021_747a                             ; $7472: $30 $06

	ld   c, $07                                      ; $7474: $0e $07
	dec  d                                           ; $7476: $15
	ld   b, $0f                                      ; $7477: $06 $0f
	rlca                                             ; $7479: $07

jr_021_747a:
	dec  d                                           ; $747a: $15
	ld   b, $0f                                      ; $747b: $06 $0f
	ld   [$060f], sp                                 ; $747d: $08 $0f $06
	rrca                                             ; $7480: $0f
	ld   [$0640], sp                                 ; $7481: $08 $40 $06
	nop                                              ; $7484: $00
	jr   nc, jr_021_7487                             ; $7485: $30 $00

jr_021_7487:
	add  hl, hl                                      ; $7487: $29
	ld   bc, $0029                                   ; $7488: $01 $29 $00
	inc  d                                           ; $748b: $14
	ld   [bc], a                                     ; $748c: $02
	ld   c, $03                                      ; $748d: $0e $03
	ld   b, b                                        ; $748f: $40
	ld   bc, $3000                                   ; $7490: $01 $00 $30
	inc  b                                           ; $7493: $04
	ld   [$0a05], sp                                 ; $7494: $08 $05 $0a
	ld   b, $47                                      ; $7497: $06 $47
	inc  b                                           ; $7499: $04
	ld   [$1005], sp                                 ; $749a: $08 $05 $10
	ld   b, $03                                      ; $749d: $06 $03
	inc  b                                           ; $749f: $04
	ld   b, b                                        ; $74a0: $40
	rlca                                             ; $74a1: $07
	nop                                              ; $74a2: $00
	jr   nc, @+$06                                   ; $74a3: $30 $04

	ld   [$0c05], sp                                 ; $74a5: $08 $05 $0c
	ld   b, $60                                      ; $74a8: $06 $60
	inc  b                                           ; $74aa: $04
	ld   b, b                                        ; $74ab: $40
	ld   [rROMB1], sp                                 ; $74ac: $08 $00 $30
	ld   [bc], a                                     ; $74af: $02
	rrca                                             ; $74b0: $0f
	ld   bc, $0016                                   ; $74b1: $01 $16 $00
	rrca                                             ; $74b4: $0f
	ld   bc, $0016                                   ; $74b5: $01 $16 $00
	rrca                                             ; $74b8: $0f
	ld   bc, $000e                                   ; $74b9: $01 $0e $00
	dec  bc                                          ; $74bc: $0b
	ld   bc, $0012                                   ; $74bd: $01 $12 $00
	jr   nc, @+$04                                   ; $74c0: $30 $02

	nop                                              ; $74c2: $00
	jr   nc, jr_021_74c8                             ; $74c3: $30 $03

	db   $10                                         ; $74c5: $10
	inc  b                                           ; $74c6: $04
	ld   a, [hl+]                                    ; $74c7: $2a

jr_021_74c8:
	dec  b                                           ; $74c8: $05
	db   $10                                         ; $74c9: $10
	inc  b                                           ; $74ca: $04
	ld   a, [hl+]                                    ; $74cb: $2a
	ld   b, $10                                      ; $74cc: $06 $10
	inc  b                                           ; $74ce: $04
	jr   nc, jr_021_74d4                             ; $74cf: $30 $03

	nop                                              ; $74d1: $00
	jr   nc, @+$0a                                   ; $74d2: $30 $08

jr_021_74d4:
	rla                                              ; $74d4: $17
	rlca                                             ; $74d5: $07
	rla                                              ; $74d6: $17
	ld   [$0717], sp                                 ; $74d7: $08 $17 $07
	rla                                              ; $74da: $17
	ld   [$0906], sp                                 ; $74db: $08 $06 $09
	dec  de                                          ; $74de: $1b
	ld   a, [bc]                                     ; $74df: $0a
	rlca                                             ; $74e0: $07
	add  hl, bc                                      ; $74e1: $09
	jr   nc, jr_021_74ef                             ; $74e2: $30 $0b

	nop                                              ; $74e4: $00
	jr   nc, jr_021_74e7                             ; $74e5: $30 $00

jr_021_74e7:
	jr   nz, @+$03                                   ; $74e7: $20 $01

	jr   nz, jr_021_74ed                             ; $74e9: $20 $02

	jr   nz, @+$03                                   ; $74eb: $20 $01

jr_021_74ed:
	jr   @+$04                                       ; $74ed: $18 $02

jr_021_74ef:
	ld   [$0803], sp                                 ; $74ef: $08 $03 $08
	inc  b                                           ; $74f2: $04
	jr   jr_021_74fa                                 ; $74f3: $18 $05

	jr   nz, @+$03                                   ; $74f5: $20 $01

	jr   nc, jr_021_74f9                             ; $74f7: $30 $00

jr_021_74f9:
	nop                                              ; $74f9: $00

jr_021_74fa:
	jr   nc, @+$08                                   ; $74fa: $30 $06

	jr   nz, jr_021_7505                             ; $74fc: $20 $07

	jr   nz, jr_021_7508                             ; $74fe: $20 $08

	ld   [$2009], sp                                 ; $7500: $08 $09 $20
	ld   b, $30                                      ; $7503: $06 $30

jr_021_7505:
	rlca                                             ; $7505: $07
	jr   nz, jr_021_7510                             ; $7506: $20 $08

jr_021_7508:
	ld   [$3009], sp                                 ; $7508: $08 $09 $30
	ld   b, $00                                      ; $750b: $06 $00
	jr   nc, jr_021_7519                             ; $750d: $30 $0a

	db   $10                                         ; $750f: $10

jr_021_7510:
	dec  bc                                          ; $7510: $0b
	jr   nz, @+$0e                                   ; $7511: $20 $0c

	jr   nc, jr_021_7520                             ; $7513: $30 $0b

	ld   d, b                                        ; $7515: $50
	dec  c                                           ; $7516: $0d
	ld   b, b                                        ; $7517: $40
	dec  bc                                          ; $7518: $0b

jr_021_7519:
	nop                                              ; $7519: $00
	jr   nc, jr_021_751c                             ; $751a: $30 $00

jr_021_751c:
	db   $10                                         ; $751c: $10
	ld   bc, $0204                                   ; $751d: $01 $04 $02

jr_021_7520:
	ld   e, $03                                      ; $7520: $1e $03
	ld   [hl+], a                                    ; $7522: $22
	ld   [bc], a                                     ; $7523: $02
	ld   [$2004], sp                                 ; $7524: $08 $04 $20
	ld   c, $08                                      ; $7527: $0e $08
	inc  b                                           ; $7529: $04
	jr   nc, jr_021_753a                             ; $752a: $30 $0e

	nop                                              ; $752c: $00
	jr   nc, jr_021_752f                             ; $752d: $30 $00

jr_021_752f:
	db   $10                                         ; $752f: $10
	ld   bc, $0220                                   ; $7530: $01 $20 $02
	ld   b, h                                        ; $7533: $44
	dec  b                                           ; $7534: $05
	ld   b, b                                        ; $7535: $40
	ld   b, $00                                      ; $7536: $06 $00
	jr   nc, jr_021_7541                             ; $7538: $30 $07

jr_021_753a:
	db   $10                                         ; $753a: $10
	ld   [$0506], sp                                 ; $753b: $08 $06 $05
	ld   [$2009], sp                                 ; $753e: $08 $09 $20

jr_021_7541:
	ld   a, [bc]                                     ; $7541: $0a
	jr   nc, @+$0d                                   ; $7542: $30 $0b

	db   $10                                         ; $7544: $10
	inc  c                                           ; $7545: $0c
	jr   nc, @+$0f                                   ; $7546: $30 $0d

	nop                                              ; $7548: $00
	ld   a, [$ca96]                                  ; $7549: $fa $96 $ca
	inc  a                                           ; $754c: $3c
	ld   [$ca96], a                                  ; $754d: $ea $96 $ca
	cp   $1e                                         ; $7550: $fe $1e
	ret  nz                                          ; $7552: $c0

	xor  a                                           ; $7553: $af
	ld   [$ca96], a                                  ; $7554: $ea $96 $ca
	ld   a, [wNapOrTrainReturnState]                                  ; $7557: $fa $4c $ca
	ld   [wGameState], a                                  ; $755a: $ea $a0 $c2
	ld   a, [wNapOrTrainReturnSubstate]                                  ; $755d: $fa $4d $ca
	ld   [wGameSubstate], a                                  ; $7560: $ea $a1 $c2
	ret                                              ; $7563: $c9


Call_021_7564:
	ld   a, [hl+]                                    ; $7564: $2a
	ld   [de], a                                     ; $7565: $12
	inc  de                                          ; $7566: $13
	ld   a, [$ca8e]                                  ; $7567: $fa $8e $ca
	ld   c, a                                        ; $756a: $4f
	ld   a, [hl+]                                    ; $756b: $2a
	add  c                                           ; $756c: $81
	ld   [de], a                                     ; $756d: $12
	inc  de                                          ; $756e: $13
	xor  a                                           ; $756f: $af
	ld   [de], a                                     ; $7570: $12
	ret                                              ; $7571: $c9


Call_021_7572:
	ld   a, [de]                                     ; $7572: $1a
	and  a                                           ; $7573: $a7
	ret  z                                           ; $7574: $c8

	ld   a, [wInGameButtonsHeld]                                  ; $7575: $fa $0f $c2
	and  $82                                         ; $7578: $e6 $82
	jp   z, Jump_021_758a                            ; $757a: $ca $8a $75

	ld   a, [de]                                     ; $757d: $1a
	dec  a                                           ; $757e: $3d
	ld   [de], a                                     ; $757f: $12
	jr   z, jr_021_758e                              ; $7580: $28 $0c

	dec  a                                           ; $7582: $3d
	ld   [de], a                                     ; $7583: $12
	jr   z, jr_021_758e                              ; $7584: $28 $08

	dec  a                                           ; $7586: $3d
	ld   [de], a                                     ; $7587: $12
	jr   z, jr_021_758e                              ; $7588: $28 $04

Jump_021_758a:
	ld   a, [de]                                     ; $758a: $1a
	dec  a                                           ; $758b: $3d
	ld   [de], a                                     ; $758c: $12
	ret  nz                                          ; $758d: $c0

jr_021_758e:
	push de                                          ; $758e: $d5
	inc  de                                          ; $758f: $13
	inc  de                                          ; $7590: $13
	ld   a, [de]                                     ; $7591: $1a
	inc  a                                           ; $7592: $3c
	ld   [de], a                                     ; $7593: $12
	ld   c, a                                        ; $7594: $4f
	ld   b, $00                                      ; $7595: $06 $00
	sla  c                                           ; $7597: $cb $21
	rl   b                                           ; $7599: $cb $10
	add  hl, bc                                      ; $759b: $09
	ld   a, [hl+]                                    ; $759c: $2a
	pop  de                                          ; $759d: $d1
	and  a                                           ; $759e: $a7
	scf                                              ; $759f: $37
	ret  z                                           ; $75a0: $c8

	push de                                          ; $75a1: $d5
	ld   [de], a                                     ; $75a2: $12
	inc  de                                          ; $75a3: $13
	ld   a, [$ca8e]                                  ; $75a4: $fa $8e $ca
	ld   c, a                                        ; $75a7: $4f
	ld   a, [hl+]                                    ; $75a8: $2a
	add  c                                           ; $75a9: $81
	ld   [de], a                                     ; $75aa: $12
	pop  de                                          ; $75ab: $d1
	ret                                              ; $75ac: $c9


GameState34_GirlSpecialAnims::
	ld   a, [wGameSubstate]                                  ; $75ad: $fa $a1 $c2
	rst  JumpTable                                         ; $75b0: $df
	db   $db                                         ; $75b1: $db
	ld   [hl], l                                     ; $75b2: $75
	sub  l                                           ; $75b3: $95
	halt                                             ; $75b4: $76
	sbc  l                                           ; $75b5: $9d
	ld   [hl], a                                     ; $75b6: $77
	daa                                              ; $75b7: $27
	ld   a, b                                        ; $75b8: $78
	or   c                                           ; $75b9: $b1
	ld   a, b                                        ; $75ba: $78
	dec  sp                                          ; $75bb: $3b
	ld   a, c                                        ; $75bc: $79
	rra                                              ; $75bd: $1f
	ld   a, d                                        ; $75be: $7a
	inc  de                                          ; $75bf: $13
	ld   a, h                                        ; $75c0: $7c


SetGirlSpecialAnimsState::
	dec  a                                           ; $75c1: $3d
	ld   [wNapOrTrainIdx], a                                  ; $75c2: $ea $6d $ca
	ld   a, b                                        ; $75c5: $78
	ld   [$ca86], a                                  ; $75c6: $ea $86 $ca
	ld   a, GS_GIRL_SPECIAL_ANIMS                                      ; $75c9: $3e $34
	ld   [wGameState], a                                  ; $75cb: $ea $a0 $c2
	xor  a                                           ; $75ce: $af
	ld   [wGameSubstate], a                                  ; $75cf: $ea $a1 $c2
	ld   a, h                                        ; $75d2: $7c
	ld   [wNapOrTrainReturnState], a                                  ; $75d3: $ea $4c $ca
	ld   a, l                                        ; $75d6: $7d
	ld   [wNapOrTrainReturnSubstate], a                                  ; $75d7: $ea $4d $ca
	ret                                              ; $75da: $c9


	ld   a, $ff                                      ; $75db: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $75dd: $ea $0e $c2
	ld   a, $0c                                      ; $75e0: $3e $0c
	ld   [wBaseInitialStickyCounter], a                                  ; $75e2: $ea $13 $c2
	ld   a, $04                                      ; $75e5: $3e $04
	ld   [wBaseRepeatedStickyCounter], a                                  ; $75e7: $ea $14 $c2
	call ClearBaseAnimSpriteSpecDetails                                       ; $75ea: $cd $c9 $2e
	call ClearOam                                       ; $75ed: $cd $d7 $0d
	ld   a, [wNapOrTrainIdx]                                  ; $75f0: $fa $6d $ca
	cp   $00                                         ; $75f3: $fe $00
	jr   z, jr_021_7666                              ; $75f5: $28 $6f

	cp   $01                                         ; $75f7: $fe $01
	jr   z, jr_021_7653                              ; $75f9: $28 $58

	cp   $02                                         ; $75fb: $fe $02
	jr   z, jr_021_7640                              ; $75fd: $28 $41

	cp   $03                                         ; $75ff: $fe $03
	jr   z, jr_021_762d                              ; $7601: $28 $2a

	cp   $04                                         ; $7603: $fe $04
	jr   z, jr_021_761a                              ; $7605: $28 $13

	ld   c, $00                                      ; $7607: $0e $00
	ld   de, $8000                                   ; $7609: $11 $00 $80
	ld   a, $29                                      ; $760c: $3e $29
	ld   hl, $4000                                   ; $760e: $21 $00 $40
	ld   b, $40                                      ; $7611: $06 $40
	call EnqueueHDMATransfer                                       ; $7613: $cd $7c $02
	ld   a, $40                                      ; $7616: $3e $40
	jr   jr_021_7677                                 ; $7618: $18 $5d

jr_021_761a:
	ld   c, $00                                      ; $761a: $0e $00
	ld   de, $8000                                   ; $761c: $11 $00 $80
	ld   a, $28                                      ; $761f: $3e $28
	ld   hl, $5800                                   ; $7621: $21 $00 $58
	ld   b, $40                                      ; $7624: $06 $40
	call EnqueueHDMATransfer                                       ; $7626: $cd $7c $02
	ld   a, $14                                      ; $7629: $3e $14
	jr   jr_021_7677                                 ; $762b: $18 $4a

jr_021_762d:
	ld   c, $00                                      ; $762d: $0e $00
	ld   de, $8000                                   ; $762f: $11 $00 $80
	ld   a, $26                                      ; $7632: $3e $26
	ld   hl, $6800                                   ; $7634: $21 $00 $68
	ld   b, $40                                      ; $7637: $06 $40
	call EnqueueHDMATransfer                                       ; $7639: $cd $7c $02
	ld   a, $77                                      ; $763c: $3e $77
	jr   jr_021_7677                                 ; $763e: $18 $37

jr_021_7640:
	ld   c, $00                                      ; $7640: $0e $00
	ld   de, $8000                                   ; $7642: $11 $00 $80
	ld   a, $27                                      ; $7645: $3e $27
	ld   hl, $4000                                   ; $7647: $21 $00 $40
	ld   b, $40                                      ; $764a: $06 $40
	call EnqueueHDMATransfer                                       ; $764c: $cd $7c $02
	ld   a, $00                                      ; $764f: $3e $00
	jr   jr_021_7677                                 ; $7651: $18 $24

jr_021_7653:
	ld   c, $00                                      ; $7653: $0e $00
	ld   de, $8000                                   ; $7655: $11 $00 $80
	ld   a, $28                                      ; $7658: $3e $28
	ld   hl, $4000                                   ; $765a: $21 $00 $40
	ld   b, $40                                      ; $765d: $06 $40
	call EnqueueHDMATransfer                                       ; $765f: $cd $7c $02
	ld   a, $64                                      ; $7662: $3e $64
	jr   jr_021_7677                                 ; $7664: $18 $11

jr_021_7666:
	ld   c, $00                                      ; $7666: $0e $00
	ld   de, $8000                                   ; $7668: $11 $00 $80
	ld   a, $27                                      ; $766b: $3e $27
	ld   hl, $5800                                   ; $766d: $21 $00 $58
	ld   b, $40                                      ; $7670: $06 $40
	call EnqueueHDMATransfer                                       ; $7672: $cd $7c $02
	ld   a, $51                                      ; $7675: $3e $51

jr_021_7677:
	ld   [$cab1], a                                  ; $7677: $ea $b1 $ca
	ld   [$ca8e], a                                  ; $767a: $ea $8e $ca
	xor  a                                           ; $767d: $af
	ld   [$ca6e], a                                  ; $767e: $ea $6e $ca
	ld   [$ca94], a                                  ; $7681: $ea $94 $ca
	ld   [$ca87], a                                  ; $7684: $ea $87 $ca
	ld   [$ca96], a                                  ; $7687: $ea $96 $ca
	ld   [$cab2], a                                  ; $768a: $ea $b2 $ca
	ld   [$cab3], a                                  ; $768d: $ea $b3 $ca
	ld   hl, wGameSubstate                                   ; $7690: $21 $a1 $c2
	inc  [hl]                                        ; $7693: $34
	ret                                              ; $7694: $c9


	ld   a, [wNapOrTrainIdx]                                  ; $7695: $fa $6d $ca
	cp   $00                                         ; $7698: $fe $00
	jp   z, Jump_021_776f                            ; $769a: $ca $6f $77

	cp   $01                                         ; $769d: $fe $01
	jp   z, Jump_021_7749                            ; $769f: $ca $49 $77

	cp   $02                                         ; $76a2: $fe $02
	jp   z, Jump_021_7723                            ; $76a4: $ca $23 $77

	cp   $03                                         ; $76a7: $fe $03
	jp   z, Jump_021_76fd                            ; $76a9: $ca $fd $76

	cp   $04                                         ; $76ac: $fe $04
	jp   z, Jump_021_76d7                            ; $76ae: $ca $d7 $76

	ld   c, $00                                      ; $76b1: $0e $00
	ld   de, $8400                                   ; $76b3: $11 $00 $84
	ld   a, $29                                      ; $76b6: $3e $29
	ld   hl, $4400                                   ; $76b8: $21 $00 $44
	ld   b, $40                                      ; $76bb: $06 $40
	call EnqueueHDMATransfer                                       ; $76bd: $cd $7c $02
	ld   a, $2a                                      ; $76c0: $3e $2a
	ld   hl, $61f0                                   ; $76c2: $21 $f0 $61
	ld   de, wOBJPalettes                                   ; $76c5: $11 $1e $c3
	ld   bc, $0030                                   ; $76c8: $01 $30 $00
	call FarMemCopy                                       ; $76cb: $cd $b2 $09
	ld   bc, $2037                                   ; $76ce: $01 $37 $20
	call SetBGandOBJPaletteRangesToUpdate                                       ; $76d1: $cd $aa $04
	jp   Jump_021_7792                               ; $76d4: $c3 $92 $77


Jump_021_76d7:
	ld   c, $00                                      ; $76d7: $0e $00
	ld   de, $8400                                   ; $76d9: $11 $00 $84
	ld   a, $28                                      ; $76dc: $3e $28
	ld   hl, $5c00                                   ; $76de: $21 $00 $5c
	ld   b, $40                                      ; $76e1: $06 $40
	call EnqueueHDMATransfer                                       ; $76e3: $cd $7c $02
	ld   a, $2a                                      ; $76e6: $3e $2a
	ld   hl, $61c0                                   ; $76e8: $21 $c0 $61
	ld   de, wOBJPalettes                                   ; $76eb: $11 $1e $c3
	ld   bc, $0030                                   ; $76ee: $01 $30 $00
	call FarMemCopy                                       ; $76f1: $cd $b2 $09
	ld   bc, $2037                                   ; $76f4: $01 $37 $20
	call SetBGandOBJPaletteRangesToUpdate                                       ; $76f7: $cd $aa $04
	jp   Jump_021_7792                               ; $76fa: $c3 $92 $77


Jump_021_76fd:
	ld   c, $00                                      ; $76fd: $0e $00
	ld   de, $8400                                   ; $76ff: $11 $00 $84
	ld   a, $26                                      ; $7702: $3e $26
	ld   hl, $6c00                                   ; $7704: $21 $00 $6c
	ld   b, $40                                      ; $7707: $06 $40
	call EnqueueHDMATransfer                                       ; $7709: $cd $7c $02
	ld   a, $2a                                      ; $770c: $3e $2a
	ld   hl, $6100                                   ; $770e: $21 $00 $61
	ld   de, wOBJPalettes                                   ; $7711: $11 $1e $c3
	ld   bc, $0030                                   ; $7714: $01 $30 $00
	call FarMemCopy                                       ; $7717: $cd $b2 $09
	ld   bc, $2037                                   ; $771a: $01 $37 $20
	call SetBGandOBJPaletteRangesToUpdate                                       ; $771d: $cd $aa $04
	jp   Jump_021_7792                               ; $7720: $c3 $92 $77


Jump_021_7723:
	ld   c, $00                                      ; $7723: $0e $00
	ld   de, $8400                                   ; $7725: $11 $00 $84
	ld   a, $27                                      ; $7728: $3e $27
	ld   hl, $4400                                   ; $772a: $21 $00 $44
	ld   b, $40                                      ; $772d: $06 $40
	call EnqueueHDMATransfer                                       ; $772f: $cd $7c $02
	ld   a, $2a                                      ; $7732: $3e $2a
	ld   hl, $6130                                   ; $7734: $21 $30 $61
	ld   de, wOBJPalettes                                   ; $7737: $11 $1e $c3
	ld   bc, $0030                                   ; $773a: $01 $30 $00
	call FarMemCopy                                       ; $773d: $cd $b2 $09
	ld   bc, $2037                                   ; $7740: $01 $37 $20
	call SetBGandOBJPaletteRangesToUpdate                                       ; $7743: $cd $aa $04
	jp   Jump_021_7792                               ; $7746: $c3 $92 $77


Jump_021_7749:
	ld   c, $00                                      ; $7749: $0e $00
	ld   de, $8400                                   ; $774b: $11 $00 $84
	ld   a, $28                                      ; $774e: $3e $28
	ld   hl, $4400                                   ; $7750: $21 $00 $44
	ld   b, $40                                      ; $7753: $06 $40
	call EnqueueHDMATransfer                                       ; $7755: $cd $7c $02
	ld   a, $2a                                      ; $7758: $3e $2a
	ld   hl, $6190                                   ; $775a: $21 $90 $61
	ld   de, wOBJPalettes                                   ; $775d: $11 $1e $c3
	ld   bc, $0030                                   ; $7760: $01 $30 $00
	call FarMemCopy                                       ; $7763: $cd $b2 $09
	ld   bc, $2037                                   ; $7766: $01 $37 $20
	call SetBGandOBJPaletteRangesToUpdate                                       ; $7769: $cd $aa $04
	jp   Jump_021_7792                               ; $776c: $c3 $92 $77


Jump_021_776f:
	ld   c, $00                                      ; $776f: $0e $00
	ld   de, $8400                                   ; $7771: $11 $00 $84
	ld   a, $27                                      ; $7774: $3e $27
	ld   hl, $5c00                                   ; $7776: $21 $00 $5c
	ld   b, $40                                      ; $7779: $06 $40
	call EnqueueHDMATransfer                                       ; $777b: $cd $7c $02
	ld   a, $2a                                      ; $777e: $3e $2a
	ld   hl, $6160                                   ; $7780: $21 $60 $61
	ld   de, wOBJPalettes                                   ; $7783: $11 $1e $c3
	ld   bc, $0030                                   ; $7786: $01 $30 $00
	call FarMemCopy                                       ; $7789: $cd $b2 $09
	ld   bc, $2037                                   ; $778c: $01 $37 $20
	call SetBGandOBJPaletteRangesToUpdate                                       ; $778f: $cd $aa $04

Jump_021_7792:
	call Call_021_79c5                               ; $7792: $cd $c5 $79
	call Call_021_7aa1                               ; $7795: $cd $a1 $7a
	ld   hl, wGameSubstate                                   ; $7798: $21 $a1 $c2
	inc  [hl]                                        ; $779b: $34
	ret                                              ; $779c: $c9


	ld   a, [wNapOrTrainIdx]                                  ; $779d: $fa $6d $ca
	cp   $00                                         ; $77a0: $fe $00
	jp   z, Jump_021_7813                            ; $77a2: $ca $13 $78

	cp   $01                                         ; $77a5: $fe $01
	jp   z, Jump_021_7801                            ; $77a7: $ca $01 $78

	cp   $02                                         ; $77aa: $fe $02
	jp   z, Jump_021_77ef                            ; $77ac: $ca $ef $77

	cp   $03                                         ; $77af: $fe $03
	jp   z, Jump_021_77dd                            ; $77b1: $ca $dd $77

	cp   $04                                         ; $77b4: $fe $04
	jp   z, Jump_021_77cb                            ; $77b6: $ca $cb $77

	ld   c, $00                                      ; $77b9: $0e $00
	ld   de, $8800                                   ; $77bb: $11 $00 $88
	ld   a, $29                                      ; $77be: $3e $29
	ld   hl, $4800                                   ; $77c0: $21 $00 $48
	ld   b, $40                                      ; $77c3: $06 $40
	call EnqueueHDMATransfer                                       ; $77c5: $cd $7c $02
	jp   Jump_021_7822                               ; $77c8: $c3 $22 $78


Jump_021_77cb:
	ld   c, $00                                      ; $77cb: $0e $00
	ld   de, $8800                                   ; $77cd: $11 $00 $88
	ld   a, $28                                      ; $77d0: $3e $28
	ld   hl, $6000                                   ; $77d2: $21 $00 $60
	ld   b, $40                                      ; $77d5: $06 $40
	call EnqueueHDMATransfer                                       ; $77d7: $cd $7c $02
	jp   Jump_021_7822                               ; $77da: $c3 $22 $78


Jump_021_77dd:
	ld   c, $00                                      ; $77dd: $0e $00
	ld   de, $8800                                   ; $77df: $11 $00 $88
	ld   a, $26                                      ; $77e2: $3e $26
	ld   hl, $7000                                   ; $77e4: $21 $00 $70
	ld   b, $40                                      ; $77e7: $06 $40
	call EnqueueHDMATransfer                                       ; $77e9: $cd $7c $02
	jp   Jump_021_7822                               ; $77ec: $c3 $22 $78


Jump_021_77ef:
	ld   c, $00                                      ; $77ef: $0e $00
	ld   de, $8800                                   ; $77f1: $11 $00 $88
	ld   a, $27                                      ; $77f4: $3e $27
	ld   hl, $4800                                   ; $77f6: $21 $00 $48
	ld   b, $40                                      ; $77f9: $06 $40
	call EnqueueHDMATransfer                                       ; $77fb: $cd $7c $02
	jp   Jump_021_7822                               ; $77fe: $c3 $22 $78


Jump_021_7801:
	ld   c, $00                                      ; $7801: $0e $00
	ld   de, $8800                                   ; $7803: $11 $00 $88
	ld   a, $28                                      ; $7806: $3e $28
	ld   hl, $4800                                   ; $7808: $21 $00 $48
	ld   b, $40                                      ; $780b: $06 $40
	call EnqueueHDMATransfer                                       ; $780d: $cd $7c $02
	jp   Jump_021_7822                               ; $7810: $c3 $22 $78


Jump_021_7813:
	ld   c, $00                                      ; $7813: $0e $00
	ld   de, $8800                                   ; $7815: $11 $00 $88
	ld   a, $27                                      ; $7818: $3e $27
	ld   hl, $6000                                   ; $781a: $21 $00 $60
	ld   b, $40                                      ; $781d: $06 $40
	call EnqueueHDMATransfer                                       ; $781f: $cd $7c $02

Jump_021_7822:
	ld   hl, wGameSubstate                                   ; $7822: $21 $a1 $c2
	inc  [hl]                                        ; $7825: $34
	ret                                              ; $7826: $c9


	ld   a, [wNapOrTrainIdx]                                  ; $7827: $fa $6d $ca
	cp   $00                                         ; $782a: $fe $00
	jp   z, Jump_021_789d                            ; $782c: $ca $9d $78

	cp   $01                                         ; $782f: $fe $01
	jp   z, Jump_021_788b                            ; $7831: $ca $8b $78

	cp   $02                                         ; $7834: $fe $02
	jp   z, Jump_021_7879                            ; $7836: $ca $79 $78

	cp   $03                                         ; $7839: $fe $03
	jp   z, Jump_021_7867                            ; $783b: $ca $67 $78

	cp   $04                                         ; $783e: $fe $04
	jp   z, Jump_021_7855                            ; $7840: $ca $55 $78

	ld   c, $00                                      ; $7843: $0e $00
	ld   de, $8c00                                   ; $7845: $11 $00 $8c
	ld   a, $29                                      ; $7848: $3e $29
	ld   hl, $4c00                                   ; $784a: $21 $00 $4c
	ld   b, $40                                      ; $784d: $06 $40
	call EnqueueHDMATransfer                                       ; $784f: $cd $7c $02
	jp   Jump_021_78ac                               ; $7852: $c3 $ac $78


Jump_021_7855:
	ld   c, $00                                      ; $7855: $0e $00
	ld   de, $8c00                                   ; $7857: $11 $00 $8c
	ld   a, $28                                      ; $785a: $3e $28
	ld   hl, $6400                                   ; $785c: $21 $00 $64
	ld   b, $40                                      ; $785f: $06 $40
	call EnqueueHDMATransfer                                       ; $7861: $cd $7c $02
	jp   Jump_021_78ac                               ; $7864: $c3 $ac $78


Jump_021_7867:
	ld   c, $00                                      ; $7867: $0e $00
	ld   de, $8c00                                   ; $7869: $11 $00 $8c
	ld   a, $26                                      ; $786c: $3e $26
	ld   hl, $7400                                   ; $786e: $21 $00 $74
	ld   b, $40                                      ; $7871: $06 $40
	call EnqueueHDMATransfer                                       ; $7873: $cd $7c $02
	jp   Jump_021_78ac                               ; $7876: $c3 $ac $78


Jump_021_7879:
	ld   c, $00                                      ; $7879: $0e $00
	ld   de, $8c00                                   ; $787b: $11 $00 $8c
	ld   a, $27                                      ; $787e: $3e $27
	ld   hl, $4c00                                   ; $7880: $21 $00 $4c
	ld   b, $40                                      ; $7883: $06 $40
	call EnqueueHDMATransfer                                       ; $7885: $cd $7c $02
	jp   Jump_021_78ac                               ; $7888: $c3 $ac $78


Jump_021_788b:
	ld   c, $00                                      ; $788b: $0e $00
	ld   de, $8c00                                   ; $788d: $11 $00 $8c
	ld   a, $28                                      ; $7890: $3e $28
	ld   hl, $4c00                                   ; $7892: $21 $00 $4c
	ld   b, $40                                      ; $7895: $06 $40
	call EnqueueHDMATransfer                                       ; $7897: $cd $7c $02
	jp   Jump_021_78ac                               ; $789a: $c3 $ac $78


Jump_021_789d:
	ld   c, $00                                      ; $789d: $0e $00
	ld   de, $8c00                                   ; $789f: $11 $00 $8c
	ld   a, $27                                      ; $78a2: $3e $27
	ld   hl, $6400                                   ; $78a4: $21 $00 $64
	ld   b, $40                                      ; $78a7: $06 $40
	call EnqueueHDMATransfer                                       ; $78a9: $cd $7c $02

Jump_021_78ac:
	ld   hl, wGameSubstate                                   ; $78ac: $21 $a1 $c2
	inc  [hl]                                        ; $78af: $34
	ret                                              ; $78b0: $c9


	ld   a, [wNapOrTrainIdx]                                  ; $78b1: $fa $6d $ca
	cp   $00                                         ; $78b4: $fe $00
	jp   z, Jump_021_7927                            ; $78b6: $ca $27 $79

	cp   $01                                         ; $78b9: $fe $01
	jp   z, Jump_021_7915                            ; $78bb: $ca $15 $79

	cp   $02                                         ; $78be: $fe $02
	jp   z, Jump_021_7903                            ; $78c0: $ca $03 $79

	cp   $03                                         ; $78c3: $fe $03
	jp   z, Jump_021_78f1                            ; $78c5: $ca $f1 $78

	cp   $04                                         ; $78c8: $fe $04
	jp   z, Jump_021_78df                            ; $78ca: $ca $df $78

	ld   c, $01                                      ; $78cd: $0e $01
	ld   de, $8000                                   ; $78cf: $11 $00 $80
	ld   a, $29                                      ; $78d2: $3e $29
	ld   hl, $5000                                   ; $78d4: $21 $00 $50
	ld   b, $40                                      ; $78d7: $06 $40
	call EnqueueHDMATransfer                                       ; $78d9: $cd $7c $02
	jp   Jump_021_7936                               ; $78dc: $c3 $36 $79


Jump_021_78df:
	ld   c, $01                                      ; $78df: $0e $01
	ld   de, $8000                                   ; $78e1: $11 $00 $80
	ld   a, $28                                      ; $78e4: $3e $28
	ld   hl, $6800                                   ; $78e6: $21 $00 $68
	ld   b, $40                                      ; $78e9: $06 $40
	call EnqueueHDMATransfer                                       ; $78eb: $cd $7c $02
	jp   Jump_021_7936                               ; $78ee: $c3 $36 $79


Jump_021_78f1:
	ld   c, $01                                      ; $78f1: $0e $01
	ld   de, $8000                                   ; $78f3: $11 $00 $80
	ld   a, $26                                      ; $78f6: $3e $26
	ld   hl, $7800                                   ; $78f8: $21 $00 $78
	ld   b, $40                                      ; $78fb: $06 $40
	call EnqueueHDMATransfer                                       ; $78fd: $cd $7c $02
	jp   Jump_021_7936                               ; $7900: $c3 $36 $79


Jump_021_7903:
	ld   c, $01                                      ; $7903: $0e $01
	ld   de, $8000                                   ; $7905: $11 $00 $80
	ld   a, $27                                      ; $7908: $3e $27
	ld   hl, $5000                                   ; $790a: $21 $00 $50
	ld   b, $40                                      ; $790d: $06 $40
	call EnqueueHDMATransfer                                       ; $790f: $cd $7c $02
	jp   Jump_021_7936                               ; $7912: $c3 $36 $79


Jump_021_7915:
	ld   c, $01                                      ; $7915: $0e $01
	ld   de, $8000                                   ; $7917: $11 $00 $80
	ld   a, $28                                      ; $791a: $3e $28
	ld   hl, $5000                                   ; $791c: $21 $00 $50
	ld   b, $40                                      ; $791f: $06 $40
	call EnqueueHDMATransfer                                       ; $7921: $cd $7c $02
	jp   Jump_021_7936                               ; $7924: $c3 $36 $79


Jump_021_7927:
	ld   c, $01                                      ; $7927: $0e $01
	ld   de, $8000                                   ; $7929: $11 $00 $80
	ld   a, $27                                      ; $792c: $3e $27
	ld   hl, $6800                                   ; $792e: $21 $00 $68
	ld   b, $40                                      ; $7931: $06 $40
	call EnqueueHDMATransfer                                       ; $7933: $cd $7c $02

Jump_021_7936:
	ld   hl, wGameSubstate                                   ; $7936: $21 $a1 $c2
	inc  [hl]                                        ; $7939: $34
	ret                                              ; $793a: $c9


	ld   a, [wNapOrTrainIdx]                                  ; $793b: $fa $6d $ca
	cp   $00                                         ; $793e: $fe $00
	jp   z, Jump_021_79b1                            ; $7940: $ca $b1 $79

	cp   $01                                         ; $7943: $fe $01
	jp   z, Jump_021_799f                            ; $7945: $ca $9f $79

	cp   $02                                         ; $7948: $fe $02
	jp   z, Jump_021_798d                            ; $794a: $ca $8d $79

	cp   $03                                         ; $794d: $fe $03
	jp   z, Jump_021_797b                            ; $794f: $ca $7b $79

	cp   $04                                         ; $7952: $fe $04
	jp   z, Jump_021_7969                            ; $7954: $ca $69 $79

	ld   c, $01                                      ; $7957: $0e $01
	ld   de, $8400                                   ; $7959: $11 $00 $84
	ld   a, $29                                      ; $795c: $3e $29
	ld   hl, $5400                                   ; $795e: $21 $00 $54
	ld   b, $40                                      ; $7961: $06 $40
	call EnqueueHDMATransfer                                       ; $7963: $cd $7c $02
	jp   Jump_021_79c0                               ; $7966: $c3 $c0 $79


Jump_021_7969:
	ld   c, $01                                      ; $7969: $0e $01
	ld   de, $8400                                   ; $796b: $11 $00 $84
	ld   a, $28                                      ; $796e: $3e $28
	ld   hl, $6c00                                   ; $7970: $21 $00 $6c
	ld   b, $40                                      ; $7973: $06 $40
	call EnqueueHDMATransfer                                       ; $7975: $cd $7c $02
	jp   Jump_021_79c0                               ; $7978: $c3 $c0 $79


Jump_021_797b:
	ld   c, $01                                      ; $797b: $0e $01
	ld   de, $8400                                   ; $797d: $11 $00 $84
	ld   a, $26                                      ; $7980: $3e $26
	ld   hl, $7c00                                   ; $7982: $21 $00 $7c
	ld   b, $40                                      ; $7985: $06 $40
	call EnqueueHDMATransfer                                       ; $7987: $cd $7c $02
	jp   Jump_021_79c0                               ; $798a: $c3 $c0 $79


Jump_021_798d:
	ld   c, $01                                      ; $798d: $0e $01
	ld   de, $8400                                   ; $798f: $11 $00 $84
	ld   a, $27                                      ; $7992: $3e $27
	ld   hl, $5400                                   ; $7994: $21 $00 $54
	ld   b, $40                                      ; $7997: $06 $40
	call EnqueueHDMATransfer                                       ; $7999: $cd $7c $02
	jp   Jump_021_79c0                               ; $799c: $c3 $c0 $79


Jump_021_799f:
	ld   c, $01                                      ; $799f: $0e $01
	ld   de, $8400                                   ; $79a1: $11 $00 $84
	ld   a, $28                                      ; $79a4: $3e $28
	ld   hl, $5400                                   ; $79a6: $21 $00 $54
	ld   b, $40                                      ; $79a9: $06 $40
	call EnqueueHDMATransfer                                       ; $79ab: $cd $7c $02
	jp   Jump_021_79c0                               ; $79ae: $c3 $c0 $79


Jump_021_79b1:
	ld   c, $01                                      ; $79b1: $0e $01
	ld   de, $8400                                   ; $79b3: $11 $00 $84
	ld   a, $27                                      ; $79b6: $3e $27
	ld   hl, $6c00                                   ; $79b8: $21 $00 $6c
	ld   b, $40                                      ; $79bb: $06 $40
	call EnqueueHDMATransfer                                       ; $79bd: $cd $7c $02

Jump_021_79c0:
	ld   hl, wGameSubstate                                   ; $79c0: $21 $a1 $c2
	inc  [hl]                                        ; $79c3: $34
	ret                                              ; $79c4: $c9


Call_021_79c5:
	ld   a, [wNapOrTrainIdx]                                  ; $79c5: $fa $6d $ca
	sla  a                                           ; $79c8: $cb $27
	ld   hl, $7a07                                   ; $79ca: $21 $07 $7a
	ld   b, $00                                      ; $79cd: $06 $00
	ld   c, a                                        ; $79cf: $4f
	add  hl, bc                                      ; $79d0: $09
	ld   a, [hl+]                                    ; $79d1: $2a
	ld   h, [hl]                                     ; $79d2: $66
	ld   l, a                                        ; $79d3: $6f
	ld   a, [$ca86]                                  ; $79d4: $fa $86 $ca
	sla  a                                           ; $79d7: $cb $27
	ld   b, $00                                      ; $79d9: $06 $00
	ld   c, a                                        ; $79db: $4f
	add  hl, bc                                      ; $79dc: $09
	ld   a, [hl+]                                    ; $79dd: $2a
	ld   [$ca72], a                                  ; $79de: $ea $72 $ca
	ld   a, [hl]                                     ; $79e1: $7e
	ld   [$ca73], a                                  ; $79e2: $ea $73 $ca
	ld   a, [wNapOrTrainIdx]                                  ; $79e5: $fa $6d $ca
	sla  a                                           ; $79e8: $cb $27
	ld   hl, $7aeb                                   ; $79ea: $21 $eb $7a
	ld   b, $00                                      ; $79ed: $06 $00
	ld   c, a                                        ; $79ef: $4f
	add  hl, bc                                      ; $79f0: $09
	ld   a, [hl+]                                    ; $79f1: $2a
	ld   h, [hl]                                     ; $79f2: $66
	ld   l, a                                        ; $79f3: $6f
	ld   a, [$ca86]                                  ; $79f4: $fa $86 $ca
	sla  a                                           ; $79f7: $cb $27
	ld   b, $00                                      ; $79f9: $06 $00
	ld   c, a                                        ; $79fb: $4f
	add  hl, bc                                      ; $79fc: $09
	ld   a, [hl+]                                    ; $79fd: $2a
	ld   h, [hl]                                     ; $79fe: $66
	ld   l, a                                        ; $79ff: $6f
	ld   de, wKouboChosen0idxed                                   ; $7a00: $11 $6f $ca
	call Call_021_411c                               ; $7a03: $cd $1c $41
	ret                                              ; $7a06: $c9


	inc  de                                          ; $7a07: $13
	ld   a, d                                        ; $7a08: $7a
	dec  d                                           ; $7a09: $15
	ld   a, d                                        ; $7a0a: $7a
	rla                                              ; $7a0b: $17
	ld   a, d                                        ; $7a0c: $7a
	add  hl, de                                      ; $7a0d: $19
	ld   a, d                                        ; $7a0e: $7a
	dec  de                                          ; $7a0f: $1b
	ld   a, d                                        ; $7a10: $7a
	dec  e                                           ; $7a11: $1d
	ld   a, d                                        ; $7a12: $7a
	ld   a, c                                        ; $7a13: $79
	ld   e, $59                                      ; $7a14: $1e $59
	dec  [hl]                                        ; $7a16: $35
	ld   [hl], l                                     ; $7a17: $75
	scf                                              ; $7a18: $37
	ld   d, b                                        ; $7a19: $50
	dec  l                                           ; $7a1a: $2d
	ld   a, l                                        ; $7a1b: $7d
	dec  [hl]                                        ; $7a1c: $35
	ld   [hl], b                                     ; $7a1d: $70
	dec  l                                           ; $7a1e: $2d
	ld   a, [$ca87]                                  ; $7a1f: $fa $87 $ca
	cp   $01                                         ; $7a22: $fe $01
	jp   z, Jump_021_7a96                            ; $7a24: $ca $96 $7a

	call ClearOam                                       ; $7a27: $cd $d7 $0d
	call AnimateAllAnimatedSpriteSpecs                                       ; $7a2a: $cd $d3 $2e
	ld   a, [wNapOrTrainIdx]                                  ; $7a2d: $fa $6d $ca
	ld   b, $00                                      ; $7a30: $06 $00
	ld   c, a                                        ; $7a32: $4f
	ld   hl, $7a9b                                   ; $7a33: $21 $9b $7a
	add  hl, bc                                      ; $7a36: $09
	ld   a, [hl]                                     ; $7a37: $7e
	ld   d, a                                        ; $7a38: $57
	ld   a, [$ca71]                                  ; $7a39: $fa $71 $ca
	cp   d                                           ; $7a3c: $ba
	jp   c, Jump_021_7a85                            ; $7a3d: $da $85 $7a

	ld   hl, wBGPalettes                                   ; $7a40: $21 $de $c2
	ld   b, $00                                      ; $7a43: $06 $00
	ld   a, [$cab2]                                  ; $7a45: $fa $b2 $ca
	or   a                                           ; $7a48: $b7
	jr   nz, jr_021_7a63                             ; $7a49: $20 $18

	ld   a, $0c                                      ; $7a4b: $3e $0c
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $7a4d: $ea $62 $c3
	ld   a, $28                                      ; $7a50: $3e $28
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $7a52: $ea $63 $c3
	ld   a, $03                                      ; $7a55: $3e $03
	ld   c, $01                                      ; $7a57: $0e $01
	ld   de, $7000                                   ; $7a59: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $7a5c: $cd $48 $07
	xor  a                                           ; $7a5f: $af
	ld   [$cab2], a                                  ; $7a60: $ea $b2 $ca

jr_021_7a63:
	ld   a, [$cab2]                                  ; $7a63: $fa $b2 $ca
	inc  a                                           ; $7a66: $3c
	ld   [$cab2], a                                  ; $7a67: $ea $b2 $ca
	cp   $0c                                         ; $7a6a: $fe $0c
	jr   c, jr_021_7a85                              ; $7a6c: $38 $17

	xor  a                                           ; $7a6e: $af
	ld   [$cab2], a                                  ; $7a6f: $ea $b2 $ca
	ld   hl, $cab2                                   ; $7a72: $21 $b2 $ca
	ld   a, [hl]                                     ; $7a75: $7e
	inc  [hl]                                        ; $7a76: $34
	cp   $08                                         ; $7a77: $fe $08
	jr   nc, jr_021_7a85                             ; $7a79: $30 $0a

	dec  a                                           ; $7a7b: $3d
	ld   b, $0c                                      ; $7a7c: $06 $0c
	ld   c, $28                                      ; $7a7e: $0e $28
	call FadePalettesAndSetRangeToUpdate                                       ; $7a80: $cd $32 $08
	jr   jr_021_7a85                                 ; $7a83: $18 $00

Jump_021_7a85:
jr_021_7a85:
	ld   a, [$ca6e]                                  ; $7a85: $fa $6e $ca
	and  a                                           ; $7a88: $a7
	jr   z, jr_021_7a92                              ; $7a89: $28 $07

	ld   a, [$ca87]                                  ; $7a8b: $fa $87 $ca
	inc  a                                           ; $7a8e: $3c
	ld   [$ca87], a                                  ; $7a8f: $ea $87 $ca

jr_021_7a92:
	call Call_021_7aa1                               ; $7a92: $cd $a1 $7a
	ret                                              ; $7a95: $c9


Jump_021_7a96:
	ld   hl, wGameSubstate                                   ; $7a96: $21 $a1 $c2
	inc  [hl]                                        ; $7a99: $34
	ret                                              ; $7a9a: $c9


	inc  c                                           ; $7a9b: $0c
	inc  c                                           ; $7a9c: $0c
	ld   a, [bc]                                     ; $7a9d: $0a
	dec  c                                           ; $7a9e: $0d
	dec  h                                           ; $7a9f: $25
	dec  bc                                          ; $7aa0: $0b

Call_021_7aa1:
	ld   a, [wNapOrTrainIdx]                                  ; $7aa1: $fa $6d $ca
	sla  a                                           ; $7aa4: $cb $27
	ld   hl, $7aeb                                   ; $7aa6: $21 $eb $7a
	ld   b, $00                                      ; $7aa9: $06 $00
	ld   c, a                                        ; $7aab: $4f
	add  hl, bc                                      ; $7aac: $09
	ld   a, [hl+]                                    ; $7aad: $2a
	ld   h, [hl]                                     ; $7aae: $66
	ld   l, a                                        ; $7aaf: $6f
	ld   a, [$ca86]                                  ; $7ab0: $fa $86 $ca
	sla  a                                           ; $7ab3: $cb $27
	ld   b, $00                                      ; $7ab5: $06 $00
	ld   c, a                                        ; $7ab7: $4f
	add  hl, bc                                      ; $7ab8: $09
	ld   a, [hl+]                                    ; $7ab9: $2a
	ld   h, [hl]                                     ; $7aba: $66
	ld   l, a                                        ; $7abb: $6f
	ld   de, wKouboChosen0idxed                                   ; $7abc: $11 $6f $ca
	push hl                                          ; $7abf: $e5
	ld   a, [$cab1]                                  ; $7ac0: $fa $b1 $ca
	ld   [$ca8e], a                                  ; $7ac3: $ea $8e $ca
	call Call_021_7c39                               ; $7ac6: $cd $39 $7c
	pop  hl                                          ; $7ac9: $e1
	jr   nc, jr_021_7ad7                             ; $7aca: $30 $0b

	ld   a, [wKouboChosen0idxed]                                  ; $7acc: $fa $6f $ca
	and  a                                           ; $7acf: $a7
	jr   nz, jr_021_7ad7                             ; $7ad0: $20 $05

	ld   a, $01                                      ; $7ad2: $3e $01
	ld   [$ca6e], a                                  ; $7ad4: $ea $6e $ca

jr_021_7ad7:
	ld   a, $0d                                      ; $7ad7: $3e $0d
	ld   [wSpriteGroup], a                                  ; $7ad9: $ea $1a $c2
	ld   a, [$ca72]                                  ; $7adc: $fa $72 $ca
	ld   b, a                                        ; $7adf: $47
	ld   a, [$ca73]                                  ; $7ae0: $fa $73 $ca
	ld   c, a                                        ; $7ae3: $4f
	ld   a, [$ca70]                                  ; $7ae4: $fa $70 $ca
	call LoadSpriteFromMainTable                                       ; $7ae7: $cd $16 $0e
	ret                                              ; $7aea: $c9


	rst  $30                                         ; $7aeb: $f7
	ld   a, d                                        ; $7aec: $7a
	ld   sp, hl                                      ; $7aed: $f9
	ld   a, d                                        ; $7aee: $7a
	ei                                               ; $7aef: $fb
	ld   a, d                                        ; $7af0: $7a
	db   $fd                                         ; $7af1: $fd
	ld   a, d                                        ; $7af2: $7a
	rst  $38                                         ; $7af3: $ff
	ld   a, d                                        ; $7af4: $7a
	ld   bc, $037b                                   ; $7af5: $01 $7b $03
	ld   a, e                                        ; $7af8: $7b
	ld   a, [hl+]                                    ; $7af9: $2a
	ld   a, e                                        ; $7afa: $7b
	ld   d, c                                        ; $7afb: $51
	ld   a, e                                        ; $7afc: $7b
	ld   a, d                                        ; $7afd: $7a
	ld   a, e                                        ; $7afe: $7b
	and  c                                           ; $7aff: $a1
	ld   a, e                                        ; $7b00: $7b
	or   $7b                                         ; $7b01: $f6 $7b
	jr   nz, jr_021_7b05                             ; $7b03: $20 $00

jr_021_7b05:
	ld   [$0801], sp                                 ; $7b05: $08 $01 $08
	ld   [bc], a                                     ; $7b08: $02
	ld   [$0903], sp                                 ; $7b09: $08 $03 $09
	inc  b                                           ; $7b0c: $04
	ld   [$1405], sp                                 ; $7b0d: $08 $05 $14
	ld   b, $06                                      ; $7b10: $06 $06
	rlca                                             ; $7b12: $07
	rlca                                             ; $7b13: $07
	ld   [$0905], sp                                 ; $7b14: $08 $05 $09
	ld   b, $0a                                      ; $7b17: $06 $0a
	rlca                                             ; $7b19: $07
	dec  bc                                          ; $7b1a: $0b
	ld   [$090c], sp                                 ; $7b1b: $08 $0c $09
	dec  c                                           ; $7b1e: $0d
	ld   a, [bc]                                     ; $7b1f: $0a
	ld   c, $0d                                      ; $7b20: $0e $0d
	rrca                                             ; $7b22: $0f
	db   $10                                         ; $7b23: $10
	db   $10                                         ; $7b24: $10
	inc  de                                          ; $7b25: $13
	ld   de, $1115                                   ; $7b26: $11 $15 $11
	nop                                              ; $7b29: $00
	dec  h                                           ; $7b2a: $25
	nop                                              ; $7b2b: $00
	inc  b                                           ; $7b2c: $04
	ld   bc, $0202                                   ; $7b2d: $01 $02 $02
	dec  b                                           ; $7b30: $05
	inc  bc                                          ; $7b31: $03
	ld   a, [bc]                                     ; $7b32: $0a
	inc  b                                           ; $7b33: $04
	rlca                                             ; $7b34: $07
	dec  b                                           ; $7b35: $05
	inc  c                                           ; $7b36: $0c
	ld   b, $19                                      ; $7b37: $06 $19
	rlca                                             ; $7b39: $07
	inc  hl                                          ; $7b3a: $23
	ld   [$0904], sp                                 ; $7b3b: $08 $04 $09
	rlca                                             ; $7b3e: $07
	ld   a, [bc]                                     ; $7b3f: $0a
	dec  b                                           ; $7b40: $05
	dec  bc                                          ; $7b41: $0b
	ld   [$080c], sp                                 ; $7b42: $08 $0c $08
	dec  c                                           ; $7b45: $0d
	ld   a, [bc]                                     ; $7b46: $0a
	ld   c, $0e                                      ; $7b47: $0e $0e
	rrca                                             ; $7b49: $0f
	ld   [de], a                                     ; $7b4a: $12
	db   $10                                         ; $7b4b: $10
	inc  de                                          ; $7b4c: $13
	ld   de, $1213                                   ; $7b4d: $11 $13 $12
	nop                                              ; $7b50: $00
	ld   h, $00                                      ; $7b51: $26 $00
	add  hl, bc                                      ; $7b53: $09
	ld   bc, $020a                                   ; $7b54: $01 $0a $02
	dec  bc                                          ; $7b57: $0b
	inc  bc                                          ; $7b58: $03
	jr   @+$06                                       ; $7b59: $18 $04

	ld   [bc], a                                     ; $7b5b: $02
	dec  b                                           ; $7b5c: $05
	ld   [bc], a                                     ; $7b5d: $02
	ld   b, $02                                      ; $7b5e: $06 $02
	rlca                                             ; $7b60: $07
	inc  b                                           ; $7b61: $04
	ld   [$0903], sp                                 ; $7b62: $08 $03 $09
	inc  bc                                          ; $7b65: $03
	ld   a, [bc]                                     ; $7b66: $0a
	inc  b                                           ; $7b67: $04
	dec  bc                                          ; $7b68: $0b
	dec  b                                           ; $7b69: $05
	inc  c                                           ; $7b6a: $0c
	ld   b, $0d                                      ; $7b6b: $06 $0d
	rlca                                             ; $7b6d: $07
	ld   c, $08                                      ; $7b6e: $0e $08
	rrca                                             ; $7b70: $0f
	ld   a, [bc]                                     ; $7b71: $0a
	db   $10                                         ; $7b72: $10
	rrca                                             ; $7b73: $0f
	ld   de, $1212                                   ; $7b74: $11 $12 $12
	inc  d                                           ; $7b77: $14
	inc  de                                          ; $7b78: $13
	nop                                              ; $7b79: $00
	jr   nc, jr_021_7b7c                             ; $7b7a: $30 $00

jr_021_7b7c:
	rlca                                             ; $7b7c: $07
	ld   bc, $0205                                   ; $7b7d: $01 $05 $02
	dec  b                                           ; $7b80: $05
	inc  bc                                          ; $7b81: $03
	ld   b, $04                                      ; $7b82: $06 $04
	ld   b, $05                                      ; $7b84: $06 $05
	ld   b, $06                                      ; $7b86: $06 $06
	ld   b, $07                                      ; $7b88: $06 $07
	ld   b, $08                                      ; $7b8a: $06 $08
	ld   b, $09                                      ; $7b8c: $06 $09
	ld   b, $0a                                      ; $7b8e: $06 $0a
	ld   b, $0b                                      ; $7b90: $06 $0b
	rlca                                             ; $7b92: $07
	inc  c                                           ; $7b93: $0c
	ld   [$0e0d], sp                                 ; $7b94: $08 $0d $0e
	ld   c, $10                                      ; $7b97: $0e $10
	rrca                                             ; $7b99: $0f
	ld   [de], a                                     ; $7b9a: $12
	db   $10                                         ; $7b9b: $10
	inc  de                                          ; $7b9c: $13
	ld   de, $1215                                   ; $7b9d: $11 $15 $12
	nop                                              ; $7ba0: $00
	inc  h                                           ; $7ba1: $24
	nop                                              ; $7ba2: $00
	dec  b                                           ; $7ba3: $05
	ld   bc, $0206                                   ; $7ba4: $01 $06 $02
	ld   [bc], a                                     ; $7ba7: $02
	inc  bc                                          ; $7ba8: $03
	inc  bc                                          ; $7ba9: $03
	inc  b                                           ; $7baa: $04
	ld   [bc], a                                     ; $7bab: $02
	dec  b                                           ; $7bac: $05
	ld   [bc], a                                     ; $7bad: $02
	ld   b, $01                                      ; $7bae: $06 $01
	rlca                                             ; $7bb0: $07
	ld   [bc], a                                     ; $7bb1: $02
	ld   [$0901], sp                                 ; $7bb2: $08 $01 $09
	ld   [bc], a                                     ; $7bb5: $02
	ld   a, [bc]                                     ; $7bb6: $0a
	inc  bc                                          ; $7bb7: $03
	dec  bc                                          ; $7bb8: $0b
	inc  b                                           ; $7bb9: $04
	inc  c                                           ; $7bba: $0c
	inc  bc                                          ; $7bbb: $03
	dec  c                                           ; $7bbc: $0d
	ld   [bc], a                                     ; $7bbd: $02
	ld   c, $01                                      ; $7bbe: $0e $01
	rrca                                             ; $7bc0: $0f
	dec  b                                           ; $7bc1: $05
	db   $10                                         ; $7bc2: $10
	dec  b                                           ; $7bc3: $05
	ld   de, $1204                                   ; $7bc4: $11 $04 $12
	inc  bc                                          ; $7bc7: $03
	inc  de                                          ; $7bc8: $13
	inc  bc                                          ; $7bc9: $03
	inc  d                                           ; $7bca: $14
	ld   b, $15                                      ; $7bcb: $06 $15
	dec  b                                           ; $7bcd: $05
	ld   d, $05                                      ; $7bce: $16 $05
	rla                                              ; $7bd0: $17
	dec  b                                           ; $7bd1: $05
	jr   jr_021_7bd9                                 ; $7bd2: $18 $05

	add  hl, de                                      ; $7bd4: $19
	ld   b, $1a                                      ; $7bd5: $06 $1a
	ld   b, $1b                                      ; $7bd7: $06 $1b

jr_021_7bd9:
	dec  b                                           ; $7bd9: $05
	inc  e                                           ; $7bda: $1c
	inc  b                                           ; $7bdb: $04
	dec  e                                           ; $7bdc: $1d
	dec  b                                           ; $7bdd: $05
	ld   e, $06                                      ; $7bde: $1e $06
	rra                                              ; $7be0: $1f
	dec  b                                           ; $7be1: $05
	jr   nz, @+$08                                   ; $7be2: $20 $06

	ld   hl, $2208                                   ; $7be4: $21 $08 $22
	ld   a, [bc]                                     ; $7be7: $0a
	inc  hl                                          ; $7be8: $23
	ld   c, $24                                      ; $7be9: $0e $24
	db   $10                                         ; $7beb: $10
	dec  h                                           ; $7bec: $25
	ld   [de], a                                     ; $7bed: $12
	ld   h, $13                                      ; $7bee: $26 $13
	daa                                              ; $7bf0: $27
	dec  d                                           ; $7bf1: $15
	jr   z, jr_021_7c0a                              ; $7bf2: $28 $16

	add  hl, hl                                      ; $7bf4: $29
	nop                                              ; $7bf5: $00
	jr   nc, jr_021_7bf8                             ; $7bf6: $30 $00

jr_021_7bf8:
	inc  b                                           ; $7bf8: $04
	ld   bc, $0205                                   ; $7bf9: $01 $05 $02
	ld   [$0603], sp                                 ; $7bfc: $08 $03 $06
	inc  b                                           ; $7bff: $04
	inc  b                                           ; $7c00: $04
	dec  b                                           ; $7c01: $05
	inc  b                                           ; $7c02: $04
	ld   b, $0b                                      ; $7c03: $06 $0b
	rlca                                             ; $7c05: $07
	db   $10                                         ; $7c06: $10
	ld   [$0907], sp                                 ; $7c07: $08 $07 $09

jr_021_7c0a:
	dec  bc                                          ; $7c0a: $0b
	ld   a, [bc]                                     ; $7c0b: $0a
	inc  d                                           ; $7c0c: $14
	dec  bc                                          ; $7c0d: $0b
	dec  h                                           ; $7c0e: $25
	inc  c                                           ; $7c0f: $0c
	daa                                              ; $7c10: $27
	dec  c                                           ; $7c11: $0d
	nop                                              ; $7c12: $00
	ld   a, [wInGameButtonsHeld]                                  ; $7c13: $fa $0f $c2
	and  $02                                         ; $7c16: $e6 $02
	jp   nz, Jump_021_7c2c                           ; $7c18: $c2 $2c $7c

	ld   a, [wInGameButtonsPressed]                                  ; $7c1b: $fa $10 $c2
	and  $03                                         ; $7c1e: $e6 $03
	jr   nz, jr_021_7c2c                             ; $7c20: $20 $0a

	ld   a, [$ca96]                                  ; $7c22: $fa $96 $ca
	inc  a                                           ; $7c25: $3c
	ld   [$ca96], a                                  ; $7c26: $ea $96 $ca
	cp   $3c                                         ; $7c29: $fe $3c
	ret  nz                                          ; $7c2b: $c0

Jump_021_7c2c:
jr_021_7c2c:
	ld   a, [wNapOrTrainReturnState]                                  ; $7c2c: $fa $4c $ca
	ld   [wGameState], a                                  ; $7c2f: $ea $a0 $c2
	ld   a, [wNapOrTrainReturnSubstate]                                  ; $7c32: $fa $4d $ca
	ld   [wGameSubstate], a                                  ; $7c35: $ea $a1 $c2
	ret                                              ; $7c38: $c9


Call_021_7c39:
	ld   a, [de]                                     ; $7c39: $1a
	and  a                                           ; $7c3a: $a7
	ret  z                                           ; $7c3b: $c8

	ld   a, [de]                                     ; $7c3c: $1a
	dec  a                                           ; $7c3d: $3d
	ld   [de], a                                     ; $7c3e: $12
	ret  nz                                          ; $7c3f: $c0

	push de                                          ; $7c40: $d5
	inc  de                                          ; $7c41: $13
	inc  de                                          ; $7c42: $13
	ld   a, [de]                                     ; $7c43: $1a
	inc  a                                           ; $7c44: $3c
	ld   [de], a                                     ; $7c45: $12
	ld   c, a                                        ; $7c46: $4f
	ld   b, $00                                      ; $7c47: $06 $00
	sla  c                                           ; $7c49: $cb $21
	rl   b                                           ; $7c4b: $cb $10
	add  hl, bc                                      ; $7c4d: $09
	ld   a, [hl+]                                    ; $7c4e: $2a
	pop  de                                          ; $7c4f: $d1
	and  a                                           ; $7c50: $a7
	scf                                              ; $7c51: $37
	ret  z                                           ; $7c52: $c8

	push de                                          ; $7c53: $d5
	ld   [de], a                                     ; $7c54: $12
	inc  de                                          ; $7c55: $13
	ld   a, [$ca8e]                                  ; $7c56: $fa $8e $ca
	ld   c, a                                        ; $7c59: $4f
	ld   a, [hl+]                                    ; $7c5a: $2a
	add  c                                           ; $7c5b: $81
	ld   [de], a                                     ; $7c5c: $12
	pop  de                                          ; $7c5d: $d1
	ret                                              ; $7c5e: $c9


if def(VWF)

NapOrTrainBank1_8800hHook:
	call RLEXorCopy

	ld   a, BANK(Gfx_EnDormRoomStatsLabels)
	ld   bc, Gfx_EnDormRoomStatsLabels.end-Gfx_EnDormRoomStatsLabels
	ld   de, $d000+$b00
	ld   hl, Gfx_EnDormRoomStatsLabels
	call FarMemCopy
	ret


NapOrTrainTileMapHook:
	call RLEXorCopy

	ld   a, BANK(TileMap_TrainingStatsLabels)
	ldbc 5, 6
	ld   de, TileMap_TrainingStatsLabels
	ld   hl, $d021
	call FarCopyLayout
	ret


TileMap_TrainingStatsLabels:
	db $30, $31, $32, $33, $24
	db $34, $35, $36, $37, $24
	db $38, $39, $3a, $3b, $3c
	db $3d, $3e, $46, $46, $24
	db $3f, $40, $41, $46, $24
	db $42, $43, $44, $45, $24


Data_21_4081entry0a::
	db $33, $43, $49, $10, $3b, $43, $48, $10, $48, $3c, $3d, $47, $fa, $00
Data_21_4081entry0b::
	db $21, $43, $43, $38, $10, $40, $49, $37, $3f, $fa, $00
Data_21_4081entry0c::
	db $28, $43, $fa, $00
Data_21_4081entry0d::
	db $28, $43, $fa, $00
Data_21_4081entry0e::
	db $2e, $3c, $35, $48, $10, $4b, $43, $42, $01, $01, $48, $10, $38, $43, $f2, $00
Data_21_4081entry0f::
	db $28, $43, $fa, $00
Data_21_4081entry10::
	db $2e, $3c, $35, $48, $10, $35, $3d, $42, $01, $01, $48, $10, $3b, $43, $42, $42, $35, $10, $37, $49, $48, $10, $3d, $48, $f2, $00
Data_21_4081entry11::
	db $28, $43, $fa, $00
Data_21_4081entry12::
	db $34, $4e, $4e, $f2, $f2, $f2, $00

endc
