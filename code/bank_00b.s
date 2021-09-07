; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

Func_0b_4000::
	cp   $03                                         ; $4000: $fe $03
	jp   z, Jump_00b_4109                            ; $4002: $ca $09 $41

	cp   $02                                         ; $4005: $fe $02
	jr   z, jr_00b_4082                              ; $4007: $28 $79

	cp   $01                                         ; $4009: $fe $01
	jr   z, jr_00b_4043                              ; $400b: $28 $36

	push hl                                          ; $400d: $e5
	ld   a, [wWramBank]                                  ; $400e: $fa $93 $c2
	push af                                          ; $4011: $f5
	ld   a, $07                                      ; $4012: $3e $07
	ld   [wWramBank], a                                  ; $4014: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4017: $e0 $70
	call Call_00b_4138                               ; $4019: $cd $38 $41

; eg de = 5326
	ld   a, [hl+]                                    ; $401c: $2a
	ld   e, a                                        ; $401d: $5f
	ld   a, [hl+]                                    ; $401e: $2a
	ld   d, a                                        ; $401f: $57

; eg a = 9d
	ld   a, [hl]                                     ; $4020: $7e
	ld   hl, $d800                                   ; $4021: $21 $00 $d8
	call RLEXorCopy                                       ; $4024: $cd $d2 $09

	ld   c, $80                                      ; $4027: $0e $80
	ld   de, $8400                                   ; $4029: $11 $00 $84
	ld   a, $07                                      ; $402c: $3e $07
	ld   hl, $d800                                   ; $402e: $21 $00 $d8
	ld   b, $40                                      ; $4031: $06 $40
	call EnqueueHDMATransfer                                       ; $4033: $cd $7c $02

	pop  af                                          ; $4036: $f1
	ld   [wWramBank], a                                  ; $4037: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $403a: $e0 $70
	pop  hl                                          ; $403c: $e1
	ld   a, [wLCDC]                                  ; $403d: $fa $03 $c2
	bit  7, a                                        ; $4040: $cb $7f
	ret  nz                                          ; $4042: $c0

jr_00b_4043:
	push hl                                          ; $4043: $e5
	ld   c, $80                                      ; $4044: $0e $80
	ld   de, $8800                                   ; $4046: $11 $00 $88
	ld   a, $07                                      ; $4049: $3e $07
	ld   hl, $dc00                                   ; $404b: $21 $00 $dc
	ld   b, $40                                      ; $404e: $06 $40
	call EnqueueHDMATransfer                                       ; $4050: $cd $7c $02
	pop  hl                                          ; $4053: $e1
	push hl                                          ; $4054: $e5
	ld   a, [wWramBank]                                  ; $4055: $fa $93 $c2
	push af                                          ; $4058: $f5
	ld   a, $07                                      ; $4059: $3e $07
	ld   [wWramBank], a                                  ; $405b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $405e: $e0 $70
	call Call_00b_4138                               ; $4060: $cd $38 $41
	inc  hl                                          ; $4063: $23
	inc  hl                                          ; $4064: $23
	inc  hl                                          ; $4065: $23
	ld   a, [hl+]                                    ; $4066: $2a
	ld   c, a                                        ; $4067: $4f
	ld   a, [hl+]                                    ; $4068: $2a
	ld   b, a                                        ; $4069: $47
	ld   a, [hl+]                                    ; $406a: $2a
	ld   h, b                                        ; $406b: $60
	ld   l, c                                        ; $406c: $69
	ld   de, $d000                                   ; $406d: $11 $00 $d0
	ld   c, $c0                                      ; $4070: $0e $c0
	call FarMemCopy16C                                       ; $4072: $cd $82 $0a
	pop  af                                          ; $4075: $f1
	ld   [wWramBank], a                                  ; $4076: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $4079: $e0 $70
	pop  hl                                          ; $407b: $e1
	ld   a, [wLCDC]                                  ; $407c: $fa $03 $c2
	bit  7, a                                        ; $407f: $cb $7f
	ret  nz                                          ; $4081: $c0

jr_00b_4082:
	push hl                                          ; $4082: $e5
	ld   d, $00                                      ; $4083: $16 $00
	ld   a, l                                        ; $4085: $7d
	and  $0f                                         ; $4086: $e6 $0f
	ld   e, a                                        ; $4088: $5f
	call Call_00b_4138                               ; $4089: $cd $38 $41
	ld   bc, $0006                                   ; $408c: $01 $06 $00
	add  hl, bc                                      ; $408f: $09
	ld   a, [hl+]                                    ; $4090: $2a
	ld   h, [hl]                                     ; $4091: $66
	ld   l, a                                        ; $4092: $6f
	push hl                                          ; $4093: $e5
	add  hl, de                                      ; $4094: $19
	add  hl, de                                      ; $4095: $19
	ld   a, [hl+]                                    ; $4096: $2a
	ld   d, [hl]                                     ; $4097: $56
	ld   e, a                                        ; $4098: $5f
	pop  hl                                          ; $4099: $e1
	add  hl, de                                      ; $409a: $19
	ld   a, [wWramBank]                                  ; $409b: $fa $93 $c2
	push af                                          ; $409e: $f5
	ld   a, $07                                      ; $409f: $3e $07
	ld   [wWramBank], a                                  ; $40a1: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $40a4: $e0 $70
	ld   de, $dc00                                   ; $40a6: $11 $00 $dc

jr_00b_40a9:
	ld   a, [hl+]                                    ; $40a9: $2a
	cp   $ff                                         ; $40aa: $fe $ff
	jr   z, jr_00b_40ed                              ; $40ac: $28 $3f

	push hl                                          ; $40ae: $e5
	ld   h, $00                                      ; $40af: $26 $00
	ld   l, a                                        ; $40b1: $6f
	add  hl, hl                                      ; $40b2: $29
	add  hl, hl                                      ; $40b3: $29
	add  hl, hl                                      ; $40b4: $29
	add  hl, hl                                      ; $40b5: $29
	ld   bc, $d000                                   ; $40b6: $01 $00 $d0
	add  hl, bc                                      ; $40b9: $09

rept $10
	ld   a, [hl+]                                    ; $40ba: $2a
	ld   [de], a                                     ; $40bb: $12
	inc  de                                          ; $40bc: $13
endr

	pop  hl                                          ; $40ea: $e1
	jr   jr_00b_40a9                                 ; $40eb: $18 $bc

jr_00b_40ed:
	pop  af                                          ; $40ed: $f1
	ld   [wWramBank], a                                  ; $40ee: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $40f1: $e0 $70
	ld   c, $80                                      ; $40f3: $0e $80
	ld   de, $8000                                   ; $40f5: $11 $00 $80
	ld   a, $07                                      ; $40f8: $3e $07
	ld   hl, $dc00                                   ; $40fa: $21 $00 $dc
	ld   b, $40                                      ; $40fd: $06 $40
	call EnqueueHDMATransfer                                       ; $40ff: $cd $7c $02
	pop  hl                                          ; $4102: $e1
	ld   a, [wLCDC]                                  ; $4103: $fa $03 $c2
	bit  7, a                                        ; $4106: $cb $7f
	ret  nz                                          ; $4108: $c0

Jump_00b_4109:
	call Call_00b_4138                               ; $4109: $cd $38 $41
	ld   bc, $000c                                   ; $410c: $01 $0c $00
	add  hl, bc                                      ; $410f: $09
	ld   a, [hl+]                                    ; $4110: $2a
	ld   c, a                                        ; $4111: $4f
	ld   a, [hl+]                                    ; $4112: $2a
	ld   b, a                                        ; $4113: $47
	ld   a, [hl]                                     ; $4114: $7e
	ld   h, b                                        ; $4115: $60
	ld   l, c                                        ; $4116: $69
	ld   de, $c30e                                   ; $4117: $11 $0e $c3
	ld   bc, $0038                                   ; $411a: $01 $38 $00
	call FarMemCopy                                       ; $411d: $cd $b2 $09
	ld   bc, $1833                                   ; $4120: $01 $33 $18
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4123: $cd $aa $04
	xor  a                                           ; $4126: $af
	ret                                              ; $4127: $c9


	nop                                              ; $4128: $00
	inc  b                                           ; $4129: $04
	ld   [FarPopulateKanjiConvoStructForCurrTextBox], sp                                 ; $412a: $08 $0c $10
	inc  d                                           ; $412d: $14
	db $18, $1c

	db $20, $24

	db $28, $2c

	db $30, $34

	db $38, $3c


Call_00b_4138:
; hl /= 8
	srl  h                                           ; $4138: $cb $3c
	rr   l                                           ; $413a: $cb $1d
	srl  h                                           ; $413c: $cb $3c
	rr   l                                           ; $413e: $cb $1d
	srl  h                                           ; $4140: $cb $3c
	rr   l                                           ; $4142: $cb $1d
	res  0, l                                        ; $4144: $cb $85
	ld   bc, .table                                   ; $4146: $01 $4e $41
	add  hl, bc                                      ; $4149: $09
	ld   a, [hl+]                                    ; $414a: $2a
	ld   h, [hl]                                     ; $414b: $66
	ld   l, a                                        ; $414c: $6f
	ret                                              ; $414d: $c9

.table:
	dw Data_0b_434e
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $4370
	dw $4392
	dw $43b4
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $434e
	dw $43d6
	dw $43f8
	dw $441a
	dw $443c
	dw $43d6
	dw $43d6
	dw $43d6
	dw $43d6
	dw $43d6
	dw $43d6
	dw $43d6
	dw $43d6
	dw $43d6
	dw $43d6
	dw $43d6
	dw $43d6
	dw $445e
	dw $4480
	dw $445e
	dw $445e
	dw $445e
	dw $445e
	dw $445e
	dw $445e
	dw $445e
	dw $445e
	dw $445e
	dw $445e
	dw $445e
	dw $445e
	dw $445e
	dw $445e
	dw $44a2
	dw $44c4
	dw $44e6
	dw $4508
	dw $452a
	dw $44a2
	dw $44a2
	dw $44a2
	dw $44a2
	dw $44a2
	dw $44a2
	dw $44a2
	dw $44a2
	dw $44a2
	dw $44a2
	dw $44a2
	dw $454c
	dw $456e
	dw $4590
	dw $454c
	dw $454c
	dw $454c
	dw $454c
	dw $454c
	dw $454c
	dw $454c
	dw $454c
	dw $454c
	dw $454c
	dw $454c
	dw $454c
	dw $454c
	dw $45b2
	dw $45d4
	dw $45b2
	dw $45b2
	dw $45b2
	dw $45b2
	dw $45b2
	dw $45b2
	dw $45b2
	dw $45b2
	dw $45b2
	dw $45b2
	dw $45b2
	dw $45b2
	dw $45b2
	dw $45b2
	dw $45f6
	dw $45f6
	dw $45f6
	dw $45f6
	dw $45f6
	dw $45f6
	dw $45f6
	dw $45f6
	dw $45f6
	dw $45f6
	dw $45f6
	dw $45f6
	dw $45f6
	dw $45f6
	dw $45f6
	dw $45f6
	dw $4618
	dw $4618
	dw $4618
	dw $4618
	dw $4618
	dw $4618
	dw $4618
	dw $4618
	dw $4618
	dw $4618
	dw $4618
	dw $4618
	dw $4618
	dw $4618
	dw $4618
	dw $4618
	dw $463a
	dw $463a
	dw $465c
	dw $463a
	dw $463a
	dw $463a
	dw $463a
	dw $463a
	dw $463a
	dw $463a
	dw $463a
	dw $463a
	dw $463a
	dw $463a
	dw $463a
	dw $463a
	dw $467e
	dw $467e
	dw $46a0
	dw $467e
	dw $467e
	dw $467e
	dw $467e
	dw $467e
	dw $467e
	dw $467e
	dw $467e
	dw $467e
	dw $467e
	dw $467e
	dw $467e
	dw $467e
	dw $46c2
	dw $46c2
	dw $46e4
	dw $46c2
	dw $46c2
	dw $46c2
	dw $46c2
	dw $46c2
	dw $46c2
	dw $46c2
	dw $46c2
	dw $46c2
	dw $46c2
	dw $46c2
	dw $46c2
	dw $46c2
	dw $4706
	dw $4706
	dw $4706
	dw $4706
	dw $4706
	dw $4706
	dw $4706
	dw $4706
	dw $4706
	dw $4706
	dw $4706
	dw $4706
	dw $4706
	dw $4706
	dw $4706
	dw $4706
	dw $4728
	dw $4728
	dw $4728
	dw $4728
	dw $4728
	dw $4728
	dw $4728
	dw $4728
	dw $4728
	dw $4728
	dw $4728
	dw $4728
	dw $4728
	dw $4728
	dw $4728
	dw $4728
	dw $474a
	dw $474a
	dw $474a
	dw $474a
	dw $474a
	dw $474a
	dw $474a
	dw $474a
	dw $474a
	dw $474a
	dw $474a
	dw $474a
	dw $474a
	dw $474a
	dw $474a
	dw $474a
	dw $476c
	dw $478e
	dw $476c
	dw $476c
	dw $476c
	dw $476c
	dw $476c
	dw $476c
	dw $476c
	dw $476c
	dw $476c
	dw $476c
	dw $476c
	dw $476c
	dw $476c
	dw $476c


Data_0b_434e:
	ld   h, $53                                      ; $434e: $26 $53
	sbc  l                                           ; $4350: $9d

jr_00b_4351:
	adc  h                                           ; $4351: $8c
	ld   l, e                                        ; $4352: $6b

jr_00b_4353:
	sub  d                                           ; $4353: $92
	or   b                                           ; $4354: $b0

jr_00b_4355:
	ld   b, a                                        ; $4355: $47
	dec  bc                                          ; $4356: $0b
	sub  d                                           ; $4357: $92
	ld   b, c                                        ; $4358: $41
	and  h                                           ; $4359: $a4
	ret  z                                           ; $435a: $c8

	ld   a, a                                        ; $435b: $7f
	and  e                                           ; $435c: $a3
	ld   b, $00                                      ; $435d: $06 $00
	ld   hl, $0000                                   ; $435f: $21 $00 $00
	ld   bc, $0302                                   ; $4362: $01 $02 $03
	inc  b                                           ; $4365: $04
	ld   bc, $0005                                   ; $4366: $01 $05 $00
	nop                                              ; $4369: $00
	nop                                              ; $436a: $00
	nop                                              ; $436b: $00
	nop                                              ; $436c: $00
	nop                                              ; $436d: $00
	nop                                              ; $436e: $00
	nop                                              ; $436f: $00
	db   $e4                                         ; $4370: $e4
	ld   [hl], h                                     ; $4371: $74
	sbc  d                                           ; $4372: $9a
	adc  h                                           ; $4373: $8c
	ld   l, e                                        ; $4374: $6b
	sub  d                                           ; $4375: $92
	or   b                                           ; $4376: $b0
	ld   b, a                                        ; $4377: $47
	dec  bc                                          ; $4378: $0b
	nop                                              ; $4379: $00
	ld   b, b                                        ; $437a: $40
	and  h                                           ; $437b: $a4
	sub  l                                           ; $437c: $95
	ld   b, a                                        ; $437d: $47
	and  h                                           ; $437e: $a4
	ld   b, $01                                      ; $437f: $06 $01
	ld   hl, $0000                                   ; $4381: $21 $00 $00
	ld   bc, $0302                                   ; $4384: $01 $02 $03
	inc  b                                           ; $4387: $04
	ld   bc, $0005                                   ; $4388: $01 $05 $00
	nop                                              ; $438b: $00
	nop                                              ; $438c: $00
	nop                                              ; $438d: $00
	nop                                              ; $438e: $00
	nop                                              ; $438f: $00
	nop                                              ; $4390: $00
	nop                                              ; $4391: $00
	xor  b                                           ; $4392: $a8
	ld   h, a                                        ; $4393: $67
	sbc  [hl]                                        ; $4394: $9e
	adc  h                                           ; $4395: $8c
	ld   l, e                                        ; $4396: $6b
	sub  d                                           ; $4397: $92
	or   b                                           ; $4398: $b0
	ld   b, a                                        ; $4399: $47
	dec  bc                                          ; $439a: $0b
	call nz, $a445                                   ; $439b: $c4 $45 $a4
	call $a447                                       ; $439e: $cd $47 $a4
	ld   b, $02                                      ; $43a1: $06 $02
	ld   hl, $0000                                   ; $43a3: $21 $00 $00
	ld   bc, $0302                                   ; $43a6: $01 $02 $03
	inc  b                                           ; $43a9: $04
	ld   bc, $0005                                   ; $43aa: $01 $05 $00
	nop                                              ; $43ad: $00
	nop                                              ; $43ae: $00
	nop                                              ; $43af: $00
	nop                                              ; $43b0: $00
	nop                                              ; $43b1: $00
	nop                                              ; $43b2: $00
	nop                                              ; $43b3: $00
	jr   nc, jr_00b_442b                             ; $43b4: $30 $75

	sbc  l                                           ; $43b6: $9d
	di                                               ; $43b7: $f3
	ld   a, [hl]                                     ; $43b8: $7e
	and  c                                           ; $43b9: $a1
	dec  b                                           ; $43ba: $05
	ld   c, c                                        ; $43bb: $49
	dec  bc                                          ; $43bc: $0b
	add  e                                           ; $43bd: $83
	ld   a, a                                        ; $43be: $7f
	and  e                                           ; $43bf: $a3
	dec  b                                           ; $43c0: $05
	ld   c, b                                        ; $43c1: $48
	and  h                                           ; $43c2: $a4
	ld   b, $03                                      ; $43c3: $06 $03
	ld   h, $00                                      ; $43c5: $26 $00
	nop                                              ; $43c7: $00
	nop                                              ; $43c8: $00
	nop                                              ; $43c9: $00
	nop                                              ; $43ca: $00
	nop                                              ; $43cb: $00
	nop                                              ; $43cc: $00
	nop                                              ; $43cd: $00
	nop                                              ; $43ce: $00
	nop                                              ; $43cf: $00
	nop                                              ; $43d0: $00
	nop                                              ; $43d1: $00
	nop                                              ; $43d2: $00
	nop                                              ; $43d3: $00
	nop                                              ; $43d4: $00
	nop                                              ; $43d5: $00
	ld   b, $72                                      ; $43d6: $06 $72
	sbc  [hl]                                        ; $43d8: $9e
	nop                                              ; $43d9: $00
	ld   b, b                                        ; $43da: $40
	sbc  d                                           ; $43db: $9a
	ld   [hl], $49                                   ; $43dc: $36 $49
	dec  bc                                          ; $43de: $0b
	ld   c, h                                        ; $43df: $4c
	ld   b, l                                        ; $43e0: $45
	and  h                                           ; $43e1: $a4
	dec  a                                           ; $43e2: $3d
	ld   c, b                                        ; $43e3: $48
	and  h                                           ; $43e4: $a4
	ld   b, $04                                      ; $43e5: $06 $04
	dec  hl                                          ; $43e7: $2b
	nop                                              ; $43e8: $00
	nop                                              ; $43e9: $00
	ld   bc, $0402                                   ; $43ea: $01 $02 $04
	inc  bc                                          ; $43ed: $03
	ld   bc, $0005                                   ; $43ee: $01 $05 $00
	nop                                              ; $43f1: $00
	nop                                              ; $43f2: $00
	nop                                              ; $43f3: $00
	nop                                              ; $43f4: $00
	nop                                              ; $43f5: $00
	nop                                              ; $43f6: $00
	nop                                              ; $43f7: $00
	and  b                                           ; $43f8: $a0
	ld   h, b                                        ; $43f9: $60
	sbc  [hl]                                        ; $43fa: $9e
	nop                                              ; $43fb: $00
	ld   b, b                                        ; $43fc: $40
	sbc  d                                           ; $43fd: $9a
	ld   [hl], $49                                   ; $43fe: $36 $49
	dec  bc                                          ; $4400: $0b
	ld   e, c                                        ; $4401: $59
	ld   b, e                                        ; $4402: $43
	and  h                                           ; $4403: $a4
	ld   [hl], l                                     ; $4404: $75
	ld   c, b                                        ; $4405: $48
	and  h                                           ; $4406: $a4
	ld   b, $05                                      ; $4407: $06 $05
	dec  hl                                          ; $4409: $2b
	nop                                              ; $440a: $00
	nop                                              ; $440b: $00
	ld   bc, $0402                                   ; $440c: $01 $02 $04
	inc  bc                                          ; $440f: $03
	ld   bc, $0005                                   ; $4410: $01 $05 $00
	nop                                              ; $4413: $00
	nop                                              ; $4414: $00
	nop                                              ; $4415: $00
	nop                                              ; $4416: $00
	nop                                              ; $4417: $00
	nop                                              ; $4418: $00
	nop                                              ; $4419: $00
	ld   [de], a                                     ; $441a: $12
	ld   e, l                                        ; $441b: $5d
	sbc  a                                           ; $441c: $9f
	nop                                              ; $441d: $00
	ld   b, b                                        ; $441e: $40
	sbc  d                                           ; $441f: $9a
	ld   [hl], $49                                   ; $4420: $36 $49
	dec  bc                                          ; $4422: $0b
	sub  l                                           ; $4423: $95
	ld   b, h                                        ; $4424: $44
	and  h                                           ; $4425: $a4
	xor  l                                           ; $4426: $ad
	ld   c, b                                        ; $4427: $48
	and  h                                           ; $4428: $a4
	ld   b, $06                                      ; $4429: $06 $06

jr_00b_442b:
	dec  hl                                          ; $442b: $2b
	nop                                              ; $442c: $00
	nop                                              ; $442d: $00
	ld   bc, $0402                                   ; $442e: $01 $02 $04
	inc  bc                                          ; $4431: $03
	ld   bc, $0005                                   ; $4432: $01 $05 $00
	nop                                              ; $4435: $00
	nop                                              ; $4436: $00
	nop                                              ; $4437: $00
	nop                                              ; $4438: $00
	nop                                              ; $4439: $00
	nop                                              ; $443a: $00
	nop                                              ; $443b: $00
	or   b                                           ; $443c: $b0
	ld   l, l                                        ; $443d: $6d
	sbc  l                                           ; $443e: $9d
	ld   b, a                                        ; $443f: $47
	ld   d, h                                        ; $4440: $54
	and  e                                           ; $4441: $a3
	ld   l, b                                        ; $4442: $68
	ld   c, d                                        ; $4443: $4a
	dec  bc                                          ; $4444: $0b
	adc  b                                           ; $4445: $88
	ld   b, b                                        ; $4446: $40
	and  h                                           ; $4447: $a4
	push hl                                          ; $4448: $e5
	ld   c, b                                        ; $4449: $48
	and  h                                           ; $444a: $a4
	ld   b, $07                                      ; $444b: $06 $07
	jr   nc, jr_00b_444f                             ; $444d: $30 $00

jr_00b_444f:
	nop                                              ; $444f: $00
	nop                                              ; $4450: $00
	nop                                              ; $4451: $00
	nop                                              ; $4452: $00
	nop                                              ; $4453: $00
	nop                                              ; $4454: $00
	nop                                              ; $4455: $00
	nop                                              ; $4456: $00
	nop                                              ; $4457: $00
	nop                                              ; $4458: $00
	nop                                              ; $4459: $00
	nop                                              ; $445a: $00
	nop                                              ; $445b: $00
	nop                                              ; $445c: $00
	nop                                              ; $445d: $00
	push bc                                          ; $445e: $c5
	ld   a, b                                        ; $445f: $78
	sbc  [hl]                                        ; $4460: $9e
	jr   z, jr_00b_44c7                              ; $4461: $28 $64

	sbc  [hl]                                        ; $4463: $9e
	sbc  a                                           ; $4464: $9f
	ld   c, d                                        ; $4465: $4a
	dec  bc                                          ; $4466: $0b
	sub  l                                           ; $4467: $95
	ld   c, [hl]                                     ; $4468: $4e
	and  h                                           ; $4469: $a4
	dec  e                                           ; $446a: $1d
	ld   c, c                                        ; $446b: $49
	and  h                                           ; $446c: $a4
	ld   b, $08                                      ; $446d: $06 $08
	dec  [hl]                                        ; $446f: $35
	nop                                              ; $4470: $00
	inc  b                                           ; $4471: $04
	ld   bc, $0300                                   ; $4472: $01 $00 $03
	ld   bc, $0201                                   ; $4475: $01 $01 $02
	nop                                              ; $4478: $00
	nop                                              ; $4479: $00
	nop                                              ; $447a: $00
	nop                                              ; $447b: $00
	nop                                              ; $447c: $00
	nop                                              ; $447d: $00
	nop                                              ; $447e: $00
	nop                                              ; $447f: $00
	ld   b, $55                                      ; $4480: $06 $55
	sbc  h                                           ; $4482: $9c
	jr   z, jr_00b_44e9                              ; $4483: $28 $64

	sbc  [hl]                                        ; $4485: $9e
	sbc  a                                           ; $4486: $9f
	ld   c, d                                        ; $4487: $4a
	dec  bc                                          ; $4488: $0b
	ld   [hl], l                                     ; $4489: $75
	ld   b, [hl]                                     ; $448a: $46
	and  h                                           ; $448b: $a4
	ld   d, l                                        ; $448c: $55
	ld   c, c                                        ; $448d: $49
	and  h                                           ; $448e: $a4
	ld   b, $09                                      ; $448f: $06 $09
	dec  [hl]                                        ; $4491: $35
	nop                                              ; $4492: $00
	inc  b                                           ; $4493: $04
	ld   bc, $0300                                   ; $4494: $01 $00 $03
	ld   bc, $0201                                   ; $4497: $01 $01 $02
	nop                                              ; $449a: $00
	nop                                              ; $449b: $00
	nop                                              ; $449c: $00
	nop                                              ; $449d: $00
	nop                                              ; $449e: $00
	nop                                              ; $449f: $00
	nop                                              ; $44a0: $00
	nop                                              ; $44a1: $00
	adc  a                                           ; $44a2: $8f
	ld   l, e                                        ; $44a3: $6b
	sbc  d                                           ; $44a4: $9a
	nop                                              ; $44a5: $00
	ld   c, h                                        ; $44a6: $4c
	sub  d                                           ; $44a7: $92
	ld   b, c                                        ; $44a8: $41
	ld   c, e                                        ; $44a9: $4b
	dec  bc                                          ; $44aa: $0b
	cp   c                                           ; $44ab: $b9
	ld   a, c                                        ; $44ac: $79
	and  e                                           ; $44ad: $a3
	adc  l                                           ; $44ae: $8d
	ld   c, c                                        ; $44af: $49
	and  h                                           ; $44b0: $a4
	ld   b, $0a                                      ; $44b1: $06 $0a
	ld   a, [hl-]                                    ; $44b3: $3a
	nop                                              ; $44b4: $00
	nop                                              ; $44b5: $00
	ld   bc, $0603                                   ; $44b6: $01 $03 $06
	inc  b                                           ; $44b9: $04
	ld   [bc], a                                     ; $44ba: $02
	dec  b                                           ; $44bb: $05
	add  hl, bc                                      ; $44bc: $09
	nop                                              ; $44bd: $00
	nop                                              ; $44be: $00
	nop                                              ; $44bf: $00
	nop                                              ; $44c0: $00
	nop                                              ; $44c1: $00
	nop                                              ; $44c2: $00
	nop                                              ; $44c3: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44c4: $cf
	ld   h, e                                        ; $44c5: $63
	sbc  c                                           ; $44c6: $99

jr_00b_44c7:
	nop                                              ; $44c7: $00
	ld   c, h                                        ; $44c8: $4c
	sub  d                                           ; $44c9: $92
	ld   b, c                                        ; $44ca: $41
	ld   c, e                                        ; $44cb: $4b
	dec  bc                                          ; $44cc: $0b
	ld   l, b                                        ; $44cd: $68
	ld   a, [hl]                                     ; $44ce: $7e
	and  e                                           ; $44cf: $a3
	push bc                                          ; $44d0: $c5
	ld   c, c                                        ; $44d1: $49
	and  h                                           ; $44d2: $a4
	ld   b, $0b                                      ; $44d3: $06 $0b
	ld   a, [hl-]                                    ; $44d5: $3a
	nop                                              ; $44d6: $00
	nop                                              ; $44d7: $00
	ld   bc, $0603                                   ; $44d8: $01 $03 $06
	inc  b                                           ; $44db: $04
	ld   [bc], a                                     ; $44dc: $02
	dec  b                                           ; $44dd: $05
	add  hl, bc                                      ; $44de: $09
	nop                                              ; $44df: $00
	nop                                              ; $44e0: $00
	nop                                              ; $44e1: $00
	nop                                              ; $44e2: $00
	nop                                              ; $44e3: $00
	nop                                              ; $44e4: $00
	nop                                              ; $44e5: $00
	ld   c, $75                                      ; $44e6: $0e $75
	sbc  e                                           ; $44e8: $9b

jr_00b_44e9:
	nop                                              ; $44e9: $00
	ld   c, h                                        ; $44ea: $4c
	sub  d                                           ; $44eb: $92
	ld   b, c                                        ; $44ec: $41
	ld   c, e                                        ; $44ed: $4b
	dec  bc                                          ; $44ee: $0b
	db   $d3                                         ; $44ef: $d3
	ld   b, c                                        ; $44f0: $41
	and  h                                           ; $44f1: $a4
	db   $fd                                         ; $44f2: $fd
	ld   c, c                                        ; $44f3: $49
	and  h                                           ; $44f4: $a4
	ld   b, $0c                                      ; $44f5: $06 $0c
	ld   a, [hl-]                                    ; $44f7: $3a
	nop                                              ; $44f8: $00
	nop                                              ; $44f9: $00
	ld   bc, $0603                                   ; $44fa: $01 $03 $06
	inc  b                                           ; $44fd: $04
	ld   [bc], a                                     ; $44fe: $02
	dec  b                                           ; $44ff: $05
	add  hl, bc                                      ; $4500: $09
	nop                                              ; $4501: $00
	nop                                              ; $4502: $00
	nop                                              ; $4503: $00
	nop                                              ; $4504: $00
	nop                                              ; $4505: $00
	nop                                              ; $4506: $00
	nop                                              ; $4507: $00
	ldh  a, [$7b]                                    ; $4508: $f0 $7b
	sub  e                                           ; $450a: $93
	nop                                              ; $450b: $00
	ld   c, h                                        ; $450c: $4c
	sub  d                                           ; $450d: $92
	ld   b, c                                        ; $450e: $41
	ld   c, e                                        ; $450f: $4b
	dec  bc                                          ; $4510: $0b
	bit  0, b                                        ; $4511: $cb $40
	and  h                                           ; $4513: $a4
	dec  [hl]                                        ; $4514: $35
	ld   c, d                                        ; $4515: $4a
	and  h                                           ; $4516: $a4
	ld   b, $0d                                      ; $4517: $06 $0d
	ld   a, [hl-]                                    ; $4519: $3a
	nop                                              ; $451a: $00
	nop                                              ; $451b: $00
	ld   bc, $0603                                   ; $451c: $01 $03 $06
	inc  b                                           ; $451f: $04
	ld   [bc], a                                     ; $4520: $02
	dec  b                                           ; $4521: $05
	add  hl, bc                                      ; $4522: $09
	nop                                              ; $4523: $00
	nop                                              ; $4524: $00
	nop                                              ; $4525: $00
	nop                                              ; $4526: $00
	nop                                              ; $4527: $00
	nop                                              ; $4528: $00
	nop                                              ; $4529: $00
	nop                                              ; $452a: $00
	ld   b, b                                        ; $452b: $40
	sbc  e                                           ; $452c: $9b
	nop                                              ; $452d: $00
	ld   c, h                                        ; $452e: $4c
	sub  d                                           ; $452f: $92
	ld   b, c                                        ; $4530: $41
	ld   c, e                                        ; $4531: $4b
	dec  bc                                          ; $4532: $0b
	or   l                                           ; $4533: $b5
	ld   a, h                                        ; $4534: $7c
	and  e                                           ; $4535: $a3
	ld   l, l                                        ; $4536: $6d
	ld   c, d                                        ; $4537: $4a
	and  h                                           ; $4538: $a4
	ld   b, $0e                                      ; $4539: $06 $0e
	ld   a, [hl-]                                    ; $453b: $3a
	nop                                              ; $453c: $00
	nop                                              ; $453d: $00
	ld   bc, $0603                                   ; $453e: $01 $03 $06
	inc  b                                           ; $4541: $04
	ld   [bc], a                                     ; $4542: $02
	dec  b                                           ; $4543: $05
	add  hl, bc                                      ; $4544: $09
	nop                                              ; $4545: $00
	nop                                              ; $4546: $00
	nop                                              ; $4547: $00
	nop                                              ; $4548: $00
	nop                                              ; $4549: $00
	nop                                              ; $454a: $00
	nop                                              ; $454b: $00
	ccf                                              ; $454c: $3f
	ld   b, h                                        ; $454d: $44
	sbc  h                                           ; $454e: $9c
	or   e                                           ; $454f: $b3
	ld   l, h                                        ; $4550: $6c
	sub  a                                           ; $4551: $97
	ld   a, l                                        ; $4552: $7d
	ld   c, h                                        ; $4553: $4c
	dec  bc                                          ; $4554: $0b
	rst  $38                                         ; $4555: $ff
	ld   b, l                                        ; $4556: $45
	and  h                                           ; $4557: $a4
	and  l                                           ; $4558: $a5
	ld   c, d                                        ; $4559: $4a
	and  h                                           ; $455a: $a4
	ld   b, $0f                                      ; $455b: $06 $0f
	ccf                                              ; $455d: $3f
	nop                                              ; $455e: $00
	nop                                              ; $455f: $00
	inc  bc                                          ; $4560: $03
	ld   [bc], a                                     ; $4561: $02
	inc  b                                           ; $4562: $04
	nop                                              ; $4563: $00
	ld   bc, $0001                                   ; $4564: $01 $01 $00
	nop                                              ; $4567: $00
	nop                                              ; $4568: $00
	nop                                              ; $4569: $00
	nop                                              ; $456a: $00
	nop                                              ; $456b: $00
	nop                                              ; $456c: $00
	nop                                              ; $456d: $00
	add  [hl]                                        ; $456e: $86
	ld   a, c                                        ; $456f: $79
	sbc  d                                           ; $4570: $9a
	or   e                                           ; $4571: $b3
	ld   l, h                                        ; $4572: $6c
	sub  a                                           ; $4573: $97
	ld   a, l                                        ; $4574: $7d
	ld   c, h                                        ; $4575: $4c
	dec  bc                                          ; $4576: $0b
	inc  d                                           ; $4577: $14
	ld   b, d                                        ; $4578: $42
	and  h                                           ; $4579: $a4
	db   $dd                                         ; $457a: $dd
	ld   c, d                                        ; $457b: $4a
	and  h                                           ; $457c: $a4
	ld   b, $10                                      ; $457d: $06 $10
	ccf                                              ; $457f: $3f
	nop                                              ; $4580: $00
	nop                                              ; $4581: $00
	inc  bc                                          ; $4582: $03
	ld   [bc], a                                     ; $4583: $02
	inc  b                                           ; $4584: $04
	nop                                              ; $4585: $00
	ld   bc, $0001                                   ; $4586: $01 $01 $00
	nop                                              ; $4589: $00
	nop                                              ; $458a: $00
	nop                                              ; $458b: $00
	nop                                              ; $458c: $00
	nop                                              ; $458d: $00
	nop                                              ; $458e: $00
	nop                                              ; $458f: $00
	nop                                              ; $4590: $00
	ld   b, b                                        ; $4591: $40
	sbc  h                                           ; $4592: $9c
	add  b                                           ; $4593: $80
	ld   a, [hl]                                     ; $4594: $7e
	sub  d                                           ; $4595: $92
	ld   c, a                                        ; $4596: $4f
	ld   c, l                                        ; $4597: $4d
	dec  bc                                          ; $4598: $0b
	xor  a                                           ; $4599: $af
	ld   b, [hl]                                     ; $459a: $46
	and  h                                           ; $459b: $a4
	dec  d                                           ; $459c: $15
	ld   c, e                                        ; $459d: $4b
	and  h                                           ; $459e: $a4
	ld   b, $11                                      ; $459f: $06 $11
	ld   b, h                                        ; $45a1: $44
	ld   [rRAMG], sp                                 ; $45a2: $08 $00 $00
	nop                                              ; $45a5: $00
	nop                                              ; $45a6: $00
	nop                                              ; $45a7: $00
	nop                                              ; $45a8: $00
	nop                                              ; $45a9: $00
	nop                                              ; $45aa: $00
	nop                                              ; $45ab: $00
	nop                                              ; $45ac: $00
	nop                                              ; $45ad: $00
	nop                                              ; $45ae: $00
	nop                                              ; $45af: $00
	nop                                              ; $45b0: $00
	nop                                              ; $45b1: $00
	ldh  [rSCX], a                                   ; $45b2: $e0 $43
	sbc  l                                           ; $45b4: $9d
	nop                                              ; $45b5: $00
	ld   b, b                                        ; $45b6: $40
	sub  e                                           ; $45b7: $93
	xor  d                                           ; $45b8: $aa
	ld   c, l                                        ; $45b9: $4d
	dec  bc                                          ; $45ba: $0b
	ld   c, $41                                      ; $45bb: $0e $41
	and  h                                           ; $45bd: $a4
	ld   c, l                                        ; $45be: $4d
	ld   c, e                                        ; $45bf: $4b
	and  h                                           ; $45c0: $a4
	ld   b, $12                                      ; $45c1: $06 $12
	ld   c, c                                        ; $45c3: $49
	nop                                              ; $45c4: $00
	nop                                              ; $45c5: $00
	ld   bc, $0402                                   ; $45c6: $01 $02 $04
	inc  bc                                          ; $45c9: $03
	ld   bc, $0000                                   ; $45ca: $01 $00 $00
	nop                                              ; $45cd: $00
	nop                                              ; $45ce: $00
	nop                                              ; $45cf: $00
	nop                                              ; $45d0: $00
	nop                                              ; $45d1: $00
	nop                                              ; $45d2: $00
	nop                                              ; $45d3: $00
	ld   a, h                                        ; $45d4: $7c
	ld   l, h                                        ; $45d5: $6c
	sbc  e                                           ; $45d6: $9b
	nop                                              ; $45d7: $00
	ld   b, b                                        ; $45d8: $40
	sub  e                                           ; $45d9: $93
	xor  d                                           ; $45da: $aa
	ld   c, l                                        ; $45db: $4d
	dec  bc                                          ; $45dc: $0b
	ld   d, l                                        ; $45dd: $55
	ld   b, d                                        ; $45de: $42
	and  h                                           ; $45df: $a4
	add  l                                           ; $45e0: $85
	ld   c, e                                        ; $45e1: $4b
	and  h                                           ; $45e2: $a4
	ld   b, $13                                      ; $45e3: $06 $13
	ld   c, c                                        ; $45e5: $49
	nop                                              ; $45e6: $00
	nop                                              ; $45e7: $00
	ld   bc, $0402                                   ; $45e8: $01 $02 $04
	inc  bc                                          ; $45eb: $03
	ld   bc, $0000                                   ; $45ec: $01 $00 $00
	nop                                              ; $45ef: $00
	nop                                              ; $45f0: $00
	nop                                              ; $45f1: $00
	nop                                              ; $45f2: $00
	nop                                              ; $45f3: $00
	nop                                              ; $45f4: $00
	nop                                              ; $45f5: $00
	ld   c, c                                        ; $45f6: $49
	ld   e, l                                        ; $45f7: $5d
	sbc  d                                           ; $45f8: $9a
	add  [hl]                                        ; $45f9: $86
	ld   h, a                                        ; $45fa: $67
	and  d                                           ; $45fb: $a2
	xor  h                                           ; $45fc: $ac
	ld   c, [hl]                                     ; $45fd: $4e
	dec  bc                                          ; $45fe: $0b
	sub  [hl]                                        ; $45ff: $96
	ld   b, d                                        ; $4600: $42
	and  h                                           ; $4601: $a4
	cp   l                                           ; $4602: $bd
	ld   c, e                                        ; $4603: $4b
	and  h                                           ; $4604: $a4
	ld   b, $14                                      ; $4605: $06 $14
	ld   c, [hl]                                     ; $4607: $4e
	nop                                              ; $4608: $00
	ld   bc, $0000                                   ; $4609: $01 $00 $00
	nop                                              ; $460c: $00
	nop                                              ; $460d: $00
	nop                                              ; $460e: $00
	nop                                              ; $460f: $00
	nop                                              ; $4610: $00
	nop                                              ; $4611: $00
	nop                                              ; $4612: $00
	nop                                              ; $4613: $00
	nop                                              ; $4614: $00
	nop                                              ; $4615: $00
	nop                                              ; $4616: $00
	nop                                              ; $4617: $00
	xor  a                                           ; $4618: $af
	ld   c, h                                        ; $4619: $4c
	sbc  h                                           ; $461a: $9c
	ld   l, b                                        ; $461b: $68
	ld   d, b                                        ; $461c: $50
	and  e                                           ; $461d: $a3
	db   $f4                                         ; $461e: $f4
	ld   c, [hl]                                     ; $461f: $4e
	dec  bc                                          ; $4620: $0b
	rst  $10                                         ; $4621: $d7
	ld   a, e                                        ; $4622: $7b
	and  e                                           ; $4623: $a3
	push af                                          ; $4624: $f5
	ld   c, e                                        ; $4625: $4b
	and  h                                           ; $4626: $a4
	ld   b, $15                                      ; $4627: $06 $15
	ld   d, e                                        ; $4629: $53
	nop                                              ; $462a: $00
	nop                                              ; $462b: $00
	nop                                              ; $462c: $00
	nop                                              ; $462d: $00
	nop                                              ; $462e: $00
	nop                                              ; $462f: $00
	nop                                              ; $4630: $00
	nop                                              ; $4631: $00
	nop                                              ; $4632: $00
	nop                                              ; $4633: $00
	nop                                              ; $4634: $00
	nop                                              ; $4635: $00
	nop                                              ; $4636: $00
	nop                                              ; $4637: $00
	nop                                              ; $4638: $00
	nop                                              ; $4639: $00
	ld   l, h                                        ; $463a: $6c
	ld   a, b                                        ; $463b: $78
	and  b                                           ; $463c: $a0
	or   b                                           ; $463d: $b0
	ld   l, e                                        ; $463e: $6b
	sub  e                                           ; $463f: $93
	ld   c, a                                        ; $4640: $4f
	ld   c, a                                        ; $4641: $4f
	dec  bc                                          ; $4642: $0b
	inc  hl                                          ; $4643: $23
	ld   b, a                                        ; $4644: $47
	and  h                                           ; $4645: $a4
	dec  l                                           ; $4646: $2d
	ld   c, h                                        ; $4647: $4c
	and  h                                           ; $4648: $a4
	ld   b, $16                                      ; $4649: $06 $16
	ld   e, b                                        ; $464b: $58
	nop                                              ; $464c: $00
	nop                                              ; $464d: $00
	ld   bc, $0704                                   ; $464e: $01 $04 $07
	inc  bc                                          ; $4651: $03
	ld   [bc], a                                     ; $4652: $02
	nop                                              ; $4653: $00
	nop                                              ; $4654: $00
	nop                                              ; $4655: $00
	nop                                              ; $4656: $00
	nop                                              ; $4657: $00
	nop                                              ; $4658: $00
	nop                                              ; $4659: $00
	nop                                              ; $465a: $00
	nop                                              ; $465b: $00
	ldh  a, [$59]                                    ; $465c: $f0 $59
	sbc  a                                           ; $465e: $9f
	or   b                                           ; $465f: $b0
	ld   l, e                                        ; $4660: $6b
	sub  e                                           ; $4661: $93
	ld   c, a                                        ; $4662: $4f
	ld   c, a                                        ; $4663: $4f
	dec  bc                                          ; $4664: $0b
	rst  $10                                         ; $4665: $d7
	ld   b, d                                        ; $4666: $42
	and  h                                           ; $4667: $a4
	ld   h, l                                        ; $4668: $65
	ld   c, h                                        ; $4669: $4c
	and  h                                           ; $466a: $a4
	ld   b, $17                                      ; $466b: $06 $17
	ld   e, b                                        ; $466d: $58
	nop                                              ; $466e: $00
	nop                                              ; $466f: $00
	ld   bc, $0704                                   ; $4670: $01 $04 $07
	inc  bc                                          ; $4673: $03
	ld   [bc], a                                     ; $4674: $02
	nop                                              ; $4675: $00
	nop                                              ; $4676: $00
	nop                                              ; $4677: $00
	nop                                              ; $4678: $00
	nop                                              ; $4679: $00
	nop                                              ; $467a: $00
	nop                                              ; $467b: $00
	nop                                              ; $467c: $00
	nop                                              ; $467d: $00
	nop                                              ; $467e: $00
	ld   b, b                                        ; $467f: $40
	and  b                                           ; $4680: $a0
	dec  de                                          ; $4681: $1b
	ld   d, d                                        ; $4682: $52
	sub  e                                           ; $4683: $93
	ld   hl, sp+$50                                  ; $4684: $f8 $50
	dec  bc                                          ; $4686: $0b
	reti                                             ; $4687: $d9


	ld   b, e                                        ; $4688: $43
	and  h                                           ; $4689: $a4
	sbc  l                                           ; $468a: $9d
	ld   c, h                                        ; $468b: $4c
	and  h                                           ; $468c: $a4
	ld   b, $18                                      ; $468d: $06 $18
	ld   e, l                                        ; $468f: $5d
	nop                                              ; $4690: $00
	nop                                              ; $4691: $00
	ld   bc, $0602                                   ; $4692: $01 $02 $06
	nop                                              ; $4695: $00
	inc  bc                                          ; $4696: $03
	nop                                              ; $4697: $00
	nop                                              ; $4698: $00
	nop                                              ; $4699: $00
	nop                                              ; $469a: $00
	nop                                              ; $469b: $00
	nop                                              ; $469c: $00
	nop                                              ; $469d: $00
	nop                                              ; $469e: $00
	nop                                              ; $469f: $00
	inc  hl                                          ; $46a0: $23
	ld   c, l                                        ; $46a1: $4d
	sbc  a                                           ; $46a2: $9f
	nop                                              ; $46a3: $00
	ld   b, b                                        ; $46a4: $40
	sub  h                                           ; $46a5: $94
	cp   l                                           ; $46a6: $bd
	ld   d, d                                        ; $46a7: $52
	dec  bc                                          ; $46a8: $0b
	sub  b                                           ; $46a9: $90
	ld   a, l                                        ; $46aa: $7d
	and  e                                           ; $46ab: $a3
	push de                                          ; $46ac: $d5
	ld   c, h                                        ; $46ad: $4c
	and  h                                           ; $46ae: $a4
	ld   b, $19                                      ; $46af: $06 $19
	ld   e, l                                        ; $46b1: $5d
	nop                                              ; $46b2: $00
	nop                                              ; $46b3: $00
	ld   bc, $0602                                   ; $46b4: $01 $02 $06
	nop                                              ; $46b7: $00
	inc  bc                                          ; $46b8: $03
	nop                                              ; $46b9: $00
	nop                                              ; $46ba: $00
	nop                                              ; $46bb: $00
	nop                                              ; $46bc: $00
	nop                                              ; $46bd: $00
	nop                                              ; $46be: $00
	nop                                              ; $46bf: $00
	nop                                              ; $46c0: $00
	nop                                              ; $46c1: $00
	ld   d, $4b                                      ; $46c2: $16 $4b
	sbc  [hl]                                        ; $46c4: $9e
	ld   d, d                                        ; $46c5: $52
	ld   a, c                                        ; $46c6: $79
	sbc  e                                           ; $46c7: $9b
	add  d                                           ; $46c8: $82
	ld   d, h                                        ; $46c9: $54
	dec  bc                                          ; $46ca: $0b
	call $a44e                                       ; $46cb: $cd $4e $a4
	dec  c                                           ; $46ce: $0d
	ld   c, l                                        ; $46cf: $4d
	and  h                                           ; $46d0: $a4
	ld   b, $1a                                      ; $46d1: $06 $1a
	ld   h, d                                        ; $46d3: $62
	nop                                              ; $46d4: $00
	nop                                              ; $46d5: $00
	ld   bc, $0201                                   ; $46d6: $01 $01 $02
	inc  bc                                          ; $46d9: $03
	nop                                              ; $46da: $00
	nop                                              ; $46db: $00
	nop                                              ; $46dc: $00
	nop                                              ; $46dd: $00
	nop                                              ; $46de: $00
	nop                                              ; $46df: $00
	nop                                              ; $46e0: $00
	nop                                              ; $46e1: $00
	nop                                              ; $46e2: $00
	nop                                              ; $46e3: $00
	ldh  a, [$7c]                                    ; $46e4: $f0 $7c
	sbc  c                                           ; $46e6: $99
	ld   d, d                                        ; $46e7: $52
	ld   a, c                                        ; $46e8: $79
	sbc  e                                           ; $46e9: $9b
	add  d                                           ; $46ea: $82
	ld   d, h                                        ; $46eb: $54
	dec  bc                                          ; $46ec: $0b
	db   $ed                                         ; $46ed: $ed
	ld   e, e                                        ; $46ee: $5b
	and  h                                           ; $46ef: $a4
	ld   b, l                                        ; $46f0: $45
	ld   c, l                                        ; $46f1: $4d
	and  h                                           ; $46f2: $a4
	ld   b, $1b                                      ; $46f3: $06 $1b
	ld   h, d                                        ; $46f5: $62
	nop                                              ; $46f6: $00
	nop                                              ; $46f7: $00
	ld   bc, $0201                                   ; $46f8: $01 $01 $02
	inc  bc                                          ; $46fb: $03
	nop                                              ; $46fc: $00
	nop                                              ; $46fd: $00
	nop                                              ; $46fe: $00
	nop                                              ; $46ff: $00
	nop                                              ; $4700: $00
	nop                                              ; $4701: $00
	nop                                              ; $4702: $00
	nop                                              ; $4703: $00
	nop                                              ; $4704: $00
	nop                                              ; $4705: $00
	inc  l                                           ; $4706: $2c
	ld   h, b                                        ; $4707: $60
	sbc  a                                           ; $4708: $9f
	sbc  d                                           ; $4709: $9a
	ld   b, h                                        ; $470a: $44
	sbc  e                                           ; $470b: $9b
	ld   c, d                                        ; $470c: $4a
	ld   d, l                                        ; $470d: $55
	dec  bc                                          ; $470e: $0b
	jr   @+$46                                       ; $470f: $18 $44

	and  h                                           ; $4711: $a4
	ld   a, l                                        ; $4712: $7d
	ld   c, l                                        ; $4713: $4d
	and  h                                           ; $4714: $a4
	ld   b, $1c                                      ; $4715: $06 $1c
	ld   h, a                                        ; $4717: $67
	nop                                              ; $4718: $00
	nop                                              ; $4719: $00
	ld   bc, $0003                                   ; $471a: $01 $03 $00
	nop                                              ; $471d: $00
	nop                                              ; $471e: $00
	nop                                              ; $471f: $00
	nop                                              ; $4720: $00
	nop                                              ; $4721: $00
	nop                                              ; $4722: $00
	nop                                              ; $4723: $00
	nop                                              ; $4724: $00
	nop                                              ; $4725: $00
	nop                                              ; $4726: $00
	nop                                              ; $4727: $00
	ld   l, b                                        ; $4728: $68
	ld   [hl], l                                     ; $4729: $75
	sbc  [hl]                                        ; $472a: $9e
	ldh  [rBCPS], a                                  ; $472b: $e0 $68
	sbc  c                                           ; $472d: $99
	jr   nz, jr_00b_4786                             ; $472e: $20 $56

	dec  bc                                          ; $4730: $0b
	ld   [hl+], a                                    ; $4731: $22
	ld   e, h                                        ; $4732: $5c
	and  h                                           ; $4733: $a4
	or   l                                           ; $4734: $b5
	ld   c, l                                        ; $4735: $4d
	and  h                                           ; $4736: $a4
	ld   b, $1d                                      ; $4737: $06 $1d
	ld   l, h                                        ; $4739: $6c
	nop                                              ; $473a: $00
	nop                                              ; $473b: $00
	ld   bc, $0203                                   ; $473c: $01 $03 $02
	nop                                              ; $473f: $00
	nop                                              ; $4740: $00
	nop                                              ; $4741: $00
	nop                                              ; $4742: $00
	nop                                              ; $4743: $00
	nop                                              ; $4744: $00
	nop                                              ; $4745: $00
	nop                                              ; $4746: $00
	nop                                              ; $4747: $00
	nop                                              ; $4748: $00
	nop                                              ; $4749: $00
	ld   e, e                                        ; $474a: $5b
	ld   d, d                                        ; $474b: $52
	sbc  [hl]                                        ; $474c: $9e
	ld   a, c                                        ; $474d: $79
	ld   e, b                                        ; $474e: $58
	sbc  d                                           ; $474f: $9a
	bit  2, [hl]                                     ; $4750: $cb $56
	dec  bc                                          ; $4752: $0b
	jp   nc, $a444                                   ; $4753: $d2 $44 $a4

	db   $ed                                         ; $4756: $ed
	ld   c, l                                        ; $4757: $4d
	and  h                                           ; $4758: $a4
	ld   b, $1e                                      ; $4759: $06 $1e
	ld   [hl], c                                     ; $475b: $71
	nop                                              ; $475c: $00
	nop                                              ; $475d: $00
	ld   bc, $0003                                   ; $475e: $01 $03 $00
	nop                                              ; $4761: $00
	nop                                              ; $4762: $00
	nop                                              ; $4763: $00
	nop                                              ; $4764: $00
	nop                                              ; $4765: $00
	nop                                              ; $4766: $00
	nop                                              ; $4767: $00
	nop                                              ; $4768: $00
	nop                                              ; $4769: $00
	nop                                              ; $476a: $00
	nop                                              ; $476b: $00
	add  d                                           ; $476c: $82
	ld   [hl], d                                     ; $476d: $72
	sbc  a                                           ; $476e: $9f
	db   $d3                                         ; $476f: $d3
	ld   [hl], d                                     ; $4770: $72
	sub  a                                           ; $4771: $97
	cp   c                                           ; $4772: $b9
	ld   d, a                                        ; $4773: $57
	dec  bc                                          ; $4774: $0b
	jp   hl                                          ; $4775: $e9


	ld   b, [hl]                                     ; $4776: $46
	and  h                                           ; $4777: $a4
	dec  h                                           ; $4778: $25
	ld   c, [hl]                                     ; $4779: $4e
	and  h                                           ; $477a: $a4
	ld   b, $1f                                      ; $477b: $06 $1f
	halt                                             ; $477d: $76
	nop                                              ; $477e: $00
	nop                                              ; $477f: $00
	ld   bc, $0201                                   ; $4780: $01 $01 $02
	nop                                              ; $4783: $00
	nop                                              ; $4784: $00
	nop                                              ; $4785: $00

jr_00b_4786:
	nop                                              ; $4786: $00
	nop                                              ; $4787: $00
	nop                                              ; $4788: $00
	nop                                              ; $4789: $00
	nop                                              ; $478a: $00
	nop                                              ; $478b: $00
	nop                                              ; $478c: $00
	nop                                              ; $478d: $00
	ld   h, a                                        ; $478e: $67
	ld   c, a                                        ; $478f: $4f
	sbc  c                                           ; $4790: $99
	add  hl, de                                      ; $4791: $19
	ld   e, [hl]                                     ; $4792: $5e
	and  e                                           ; $4793: $a3
	jp   nc, $0b58                                   ; $4794: $d2 $58 $0b

	ld   hl, $a37c                                   ; $4797: $21 $7c $a3
	ld   e, l                                        ; $479a: $5d
	ld   c, [hl]                                     ; $479b: $4e
	and  h                                           ; $479c: $a4
	ld   b, $20                                      ; $479d: $06 $20
	ld   a, e                                        ; $479f: $7b
	nop                                              ; $47a0: $00
	nop                                              ; $47a1: $00
	nop                                              ; $47a2: $00
	nop                                              ; $47a3: $00
	nop                                              ; $47a4: $00
	nop                                              ; $47a5: $00
	nop                                              ; $47a6: $00
	nop                                              ; $47a7: $00
	nop                                              ; $47a8: $00
	nop                                              ; $47a9: $00
	nop                                              ; $47aa: $00
	nop                                              ; $47ab: $00
	nop                                              ; $47ac: $00
	nop                                              ; $47ad: $00
	nop                                              ; $47ae: $00
	nop                                              ; $47af: $00
	ld   a, [de]                                     ; $47b0: $1a
	nop                                              ; $47b1: $00
	dec  a                                           ; $47b2: $3d
	nop                                              ; $47b3: $00
	ld   h, b                                        ; $47b4: $60
	nop                                              ; $47b5: $00
	add  e                                           ; $47b6: $83
	nop                                              ; $47b7: $00
	and  [hl]                                        ; $47b8: $a6
	nop                                              ; $47b9: $00
	ret                                              ; $47ba: $c9


	nop                                              ; $47bb: $00
	db   $ec                                         ; $47bc: $ec
	nop                                              ; $47bd: $00
	rrca                                             ; $47be: $0f
	ld   bc, $0132                                   ; $47bf: $01 $32 $01
	ld   a, [de]                                     ; $47c2: $1a
	nop                                              ; $47c3: $00
	ld   a, [de]                                     ; $47c4: $1a
	nop                                              ; $47c5: $00
	ld   a, [de]                                     ; $47c6: $1a
	nop                                              ; $47c7: $00
	ld   a, [de]                                     ; $47c8: $1a
	nop                                              ; $47c9: $00
	nop                                              ; $47ca: $00
	ld   bc, $0302                                   ; $47cb: $01 $02 $03
	inc  b                                           ; $47ce: $04
	dec  b                                           ; $47cf: $05
	ld   b, $07                                      ; $47d0: $06 $07
	ld   [$0a09], sp                                 ; $47d2: $08 $09 $0a
	ld   bc, $0c0b                                   ; $47d5: $01 $0b $0c
	inc  b                                           ; $47d8: $04
	dec  c                                           ; $47d9: $0d
	ld   c, $07                                      ; $47da: $0e $07
	ld   [$0f09], sp                                 ; $47dc: $08 $09 $0f
	db   $10                                         ; $47df: $10
	ld   de, $0412                                   ; $47e0: $11 $12 $04
	inc  de                                          ; $47e3: $13
	inc  d                                           ; $47e4: $14
	dec  d                                           ; $47e5: $15
	ld   d, $09                                      ; $47e6: $16 $09
	rla                                              ; $47e8: $17
	jr   jr_00b_4804                                 ; $47e9: $18 $19

	jr   @+$01                                       ; $47eb: $18 $ff

	ld   a, [de]                                     ; $47ed: $1a
	dec  de                                          ; $47ee: $1b
	inc  e                                           ; $47ef: $1c
	dec  e                                           ; $47f0: $1d
	inc  b                                           ; $47f1: $04
	ld   e, $1f                                      ; $47f2: $1e $1f
	jr   nz, @+$23                                   ; $47f4: $20 $21

	add  hl, bc                                      ; $47f6: $09
	ld   a, [de]                                     ; $47f7: $1a
	dec  de                                          ; $47f8: $1b
	inc  e                                           ; $47f9: $1c
	dec  e                                           ; $47fa: $1d
	inc  b                                           ; $47fb: $04
	ld   e, $1f                                      ; $47fc: $1e $1f
	jr   nz, jr_00b_4821                             ; $47fe: $20 $21

	add  hl, bc                                      ; $4800: $09
	ld   a, [de]                                     ; $4801: $1a
	dec  de                                          ; $4802: $1b
	inc  e                                           ; $4803: $1c

jr_00b_4804:
	dec  e                                           ; $4804: $1d
	inc  b                                           ; $4805: $04
	ld   e, $1f                                      ; $4806: $1e $1f
	jr   nz, @+$23                                   ; $4808: $20 $21

	add  hl, bc                                      ; $480a: $09
	ld   [hl+], a                                    ; $480b: $22
	jr   jr_00b_4831                                 ; $480c: $18 $23

	jr   @+$01                                       ; $480e: $18 $ff

	nop                                              ; $4810: $00
	ld   bc, $0324                                   ; $4811: $01 $24 $03
	inc  b                                           ; $4814: $04
	dec  h                                           ; $4815: $25
	ld   h, $07                                      ; $4816: $26 $07
	ld   [$2709], sp                                 ; $4818: $08 $09 $27
	ld   bc, $0c28                                   ; $481b: $01 $28 $0c
	inc  b                                           ; $481e: $04
	add  hl, hl                                      ; $481f: $29
	ld   a, [hl+]                                    ; $4820: $2a

jr_00b_4821:
	rlca                                             ; $4821: $07
	ld   [$2b09], sp                                 ; $4822: $08 $09 $2b
	db   $10                                         ; $4825: $10
	inc  l                                           ; $4826: $2c
	ld   [de], a                                     ; $4827: $12
	inc  b                                           ; $4828: $04
	dec  l                                           ; $4829: $2d
	ld   l, $15                                      ; $482a: $2e $15
	ld   d, $09                                      ; $482c: $16 $09
	cpl                                              ; $482e: $2f
	jr   jr_00b_4861                                 ; $482f: $18 $30

jr_00b_4831:
	jr   @+$01                                       ; $4831: $18 $ff

	ld   sp, $3332                                   ; $4833: $31 $32 $33
	inc  [hl]                                        ; $4836: $34
	inc  b                                           ; $4837: $04
	dec  [hl]                                        ; $4838: $35
	ld   [hl], $37                                   ; $4839: $36 $37
	jr   c, jr_00b_4846                              ; $483b: $38 $09

	add  hl, sp                                      ; $483d: $39
	ld   a, [hl-]                                    ; $483e: $3a
	dec  sp                                          ; $483f: $3b
	inc  a                                           ; $4840: $3c
	inc  b                                           ; $4841: $04
	dec  a                                           ; $4842: $3d
	ld   a, $3f                                      ; $4843: $3e $3f
	ld   b, b                                        ; $4845: $40

jr_00b_4846:
	add  hl, bc                                      ; $4846: $09
	dec  hl                                          ; $4847: $2b
	ld   b, c                                        ; $4848: $41
	ld   b, d                                        ; $4849: $42
	ld   b, e                                        ; $484a: $43
	inc  b                                           ; $484b: $04
	ld   b, h                                        ; $484c: $44
	ld   b, l                                        ; $484d: $45
	ld   b, [hl]                                     ; $484e: $46
	ld   b, a                                        ; $484f: $47
	add  hl, bc                                      ; $4850: $09
	ld   c, b                                        ; $4851: $48
	jr   jr_00b_4883                                 ; $4852: $18 $2f

	jr   @+$01                                       ; $4854: $18 $ff

	ld   c, c                                        ; $4856: $49
	ld   bc, $034a                                   ; $4857: $01 $4a $03
	inc  b                                           ; $485a: $04
	ld   c, e                                        ; $485b: $4b
	ld   c, h                                        ; $485c: $4c
	rlca                                             ; $485d: $07
	ld   c, l                                        ; $485e: $4d
	add  hl, bc                                      ; $485f: $09
	ld   c, [hl]                                     ; $4860: $4e

jr_00b_4861:
	ld   bc, $504f                                   ; $4861: $01 $4f $50
	inc  b                                           ; $4864: $04
	ld   d, c                                        ; $4865: $51
	ld   d, d                                        ; $4866: $52
	rlca                                             ; $4867: $07
	ld   d, e                                        ; $4868: $53
	add  hl, bc                                      ; $4869: $09
	ld   d, h                                        ; $486a: $54
	db   $10                                         ; $486b: $10
	ld   d, l                                        ; $486c: $55
	ld   [de], a                                     ; $486d: $12

jr_00b_486e:
	inc  b                                           ; $486e: $04
	ld   d, [hl]                                     ; $486f: $56
	ld   d, a                                        ; $4870: $57
	dec  d                                           ; $4871: $15
	ld   d, $09                                      ; $4872: $16 $09
	ld   e, b                                        ; $4874: $58
	jr   jr_00b_48d0                                 ; $4875: $18 $59

	jr   @+$01                                       ; $4877: $18 $ff

	ld   c, c                                        ; $4879: $49
	ld   e, d                                        ; $487a: $5a
	ld   c, d                                        ; $487b: $4a
	ld   e, e                                        ; $487c: $5b
	inc  b                                           ; $487d: $04
	ld   c, e                                        ; $487e: $4b
	ld   c, h                                        ; $487f: $4c
	ld   e, h                                        ; $4880: $5c
	ld   e, l                                        ; $4881: $5d
	add  hl, bc                                      ; $4882: $09

jr_00b_4883:
	ld   c, [hl]                                     ; $4883: $4e
	ld   e, d                                        ; $4884: $5a
	ld   e, [hl]                                     ; $4885: $5e
	ld   e, a                                        ; $4886: $5f
	inc  b                                           ; $4887: $04
	ld   d, c                                        ; $4888: $51
	ld   d, d                                        ; $4889: $52
	ld   e, h                                        ; $488a: $5c
	ld   h, b                                        ; $488b: $60
	add  hl, bc                                      ; $488c: $09
	ld   d, h                                        ; $488d: $54
	ld   h, c                                        ; $488e: $61
	ld   h, d                                        ; $488f: $62
	ld   h, e                                        ; $4890: $63
	inc  b                                           ; $4891: $04
	ld   d, [hl]                                     ; $4892: $56
	ld   d, a                                        ; $4893: $57
	ld   h, h                                        ; $4894: $64
	ld   h, l                                        ; $4895: $65
	add  hl, bc                                      ; $4896: $09
	rla                                              ; $4897: $17
	jr   jr_00b_4900                                 ; $4898: $18 $66

	jr   @+$01                                       ; $489a: $18 $ff

jr_00b_489c:
	ld   h, a                                        ; $489c: $67
	ld   bc, $5068                                   ; $489d: $01 $68 $50
	inc  b                                           ; $48a0: $04
	ld   l, c                                        ; $48a1: $69
	ld   l, d                                        ; $48a2: $6a
	rlca                                             ; $48a3: $07
	ld   l, e                                        ; $48a4: $6b
	add  hl, bc                                      ; $48a5: $09
	ld   l, h                                        ; $48a6: $6c
	ld   bc, $6e6d                                   ; $48a7: $01 $6d $6e
	inc  b                                           ; $48aa: $04
	ld   l, a                                        ; $48ab: $6f
	ld   [hl], b                                     ; $48ac: $70
	rlca                                             ; $48ad: $07
	ld   [hl], c                                     ; $48ae: $71
	add  hl, bc                                      ; $48af: $09
	ld   [hl], d                                     ; $48b0: $72
	db   $10                                         ; $48b1: $10
	ld   [hl], e                                     ; $48b2: $73
	ld   [de], a                                     ; $48b3: $12
	inc  b                                           ; $48b4: $04
	ld   [hl], h                                     ; $48b5: $74
	ld   [hl], l                                     ; $48b6: $75
	dec  d                                           ; $48b7: $15
	ld   d, $09                                      ; $48b8: $16 $09
	halt                                             ; $48ba: $76
	jr   jr_00b_4934                                 ; $48bb: $18 $77

	jr   @+$01                                       ; $48bd: $18 $ff

	ld   a, b                                        ; $48bf: $78
	ld   a, c                                        ; $48c0: $79
	ld   a, d                                        ; $48c1: $7a
	ld   a, e                                        ; $48c2: $7b
	inc  b                                           ; $48c3: $04
	ld   a, h                                        ; $48c4: $7c
	ld   a, l                                        ; $48c5: $7d
	ld   a, [hl]                                     ; $48c6: $7e
	ld   a, a                                        ; $48c7: $7f
	add  hl, bc                                      ; $48c8: $09
	add  b                                           ; $48c9: $80
	add  c                                           ; $48ca: $81
	add  d                                           ; $48cb: $82
	add  e                                           ; $48cc: $83
	inc  b                                           ; $48cd: $04
	add  h                                           ; $48ce: $84
	add  l                                           ; $48cf: $85

jr_00b_48d0:
	ld   a, [hl]                                     ; $48d0: $7e
	add  [hl]                                        ; $48d1: $86
	add  hl, bc                                      ; $48d2: $09
	add  a                                           ; $48d3: $87
	adc  b                                           ; $48d4: $88
	adc  c                                           ; $48d5: $89
	adc  d                                           ; $48d6: $8a
	inc  b                                           ; $48d7: $04
	adc  e                                           ; $48d8: $8b
	adc  h                                           ; $48d9: $8c
	dec  d                                           ; $48da: $15
	adc  l                                           ; $48db: $8d
	add  hl, bc                                      ; $48dc: $09
	ld   e, b                                        ; $48dd: $58
	jr   jr_00b_486e                                 ; $48de: $18 $8e

	jr   @+$01                                       ; $48e0: $18 $ff

	adc  a                                           ; $48e2: $8f
	sub  b                                           ; $48e3: $90
	sub  c                                           ; $48e4: $91
	sub  d                                           ; $48e5: $92
	inc  b                                           ; $48e6: $04
	sub  e                                           ; $48e7: $93
	sub  h                                           ; $48e8: $94
	sub  l                                           ; $48e9: $95
	sub  [hl]                                        ; $48ea: $96
	sub  a                                           ; $48eb: $97
	adc  a                                           ; $48ec: $8f
	sub  b                                           ; $48ed: $90
	sub  c                                           ; $48ee: $91
	sub  d                                           ; $48ef: $92
	inc  b                                           ; $48f0: $04
	sub  e                                           ; $48f1: $93
	sub  h                                           ; $48f2: $94
	sub  l                                           ; $48f3: $95
	sub  [hl]                                        ; $48f4: $96
	sub  a                                           ; $48f5: $97
	adc  a                                           ; $48f6: $8f
	sub  b                                           ; $48f7: $90
	sub  c                                           ; $48f8: $91
	sub  d                                           ; $48f9: $92
	inc  b                                           ; $48fa: $04
	sub  e                                           ; $48fb: $93
	sub  h                                           ; $48fc: $94
	sub  l                                           ; $48fd: $95
	sub  [hl]                                        ; $48fe: $96
	sub  a                                           ; $48ff: $97

jr_00b_4900:
	sbc  b                                           ; $4900: $98
	jr   jr_00b_489c                                 ; $4901: $18 $99

	jr   @+$01                                       ; $4903: $18 $ff

	ld   a, [de]                                     ; $4905: $1a
	nop                                              ; $4906: $00
	ld   a, [de]                                     ; $4907: $1a
	nop                                              ; $4908: $00
	ld   a, [de]                                     ; $4909: $1a
	nop                                              ; $490a: $00
	ld   a, [de]                                     ; $490b: $1a
	nop                                              ; $490c: $00
	ld   a, [de]                                     ; $490d: $1a
	nop                                              ; $490e: $00
	ld   a, [de]                                     ; $490f: $1a
	nop                                              ; $4910: $00
	ld   a, [de]                                     ; $4911: $1a
	nop                                              ; $4912: $00
	ld   a, [de]                                     ; $4913: $1a
	nop                                              ; $4914: $00
	ld   a, [de]                                     ; $4915: $1a
	nop                                              ; $4916: $00
	ld   a, [de]                                     ; $4917: $1a
	nop                                              ; $4918: $00
	ld   a, [de]                                     ; $4919: $1a
	nop                                              ; $491a: $00
	ld   a, [de]                                     ; $491b: $1a
	nop                                              ; $491c: $00
	ld   a, [de]                                     ; $491d: $1a
	nop                                              ; $491e: $00
	nop                                              ; $491f: $00
	ld   bc, $0302                                   ; $4920: $01 $02 $03
	inc  b                                           ; $4923: $04
	dec  b                                           ; $4924: $05
	ld   b, $07                                      ; $4925: $06 $07
	ld   [bc], a                                     ; $4927: $02
	ld   [$0904], sp                                 ; $4928: $08 $04 $09
	ld   b, $0a                                      ; $492b: $06 $0a
	ld   [bc], a                                     ; $492d: $02
	dec  bc                                          ; $492e: $0b
	inc  b                                           ; $492f: $04
	inc  c                                           ; $4930: $0c
	dec  c                                           ; $4931: $0d
	ld   c, $0f                                      ; $4932: $0e $0f

jr_00b_4934:
	ld   c, $ff                                      ; $4934: $0e $ff
	ld   a, [de]                                     ; $4936: $1a
	nop                                              ; $4937: $00
	dec  a                                           ; $4938: $3d
	nop                                              ; $4939: $00
	ld   h, b                                        ; $493a: $60
	nop                                              ; $493b: $00
	add  e                                           ; $493c: $83
	nop                                              ; $493d: $00
	and  [hl]                                        ; $493e: $a6
	nop                                              ; $493f: $00
	ret                                              ; $4940: $c9


	nop                                              ; $4941: $00
	db   $ec                                         ; $4942: $ec
	nop                                              ; $4943: $00
	rrca                                             ; $4944: $0f
	ld   bc, $001a                                   ; $4945: $01 $1a $00
	ld   a, [de]                                     ; $4948: $1a
	nop                                              ; $4949: $00
	ld   a, [de]                                     ; $494a: $1a
	nop                                              ; $494b: $00
	ld   a, [de]                                     ; $494c: $1a
	nop                                              ; $494d: $00
	ld   a, [de]                                     ; $494e: $1a
	nop                                              ; $494f: $00
	nop                                              ; $4950: $00
	ld   bc, $0302                                   ; $4951: $01 $02 $03
	inc  b                                           ; $4954: $04
	dec  b                                           ; $4955: $05
	ld   b, $07                                      ; $4956: $06 $07
	ld   [$0a09], sp                                 ; $4958: $08 $09 $0a
	dec  bc                                          ; $495b: $0b
	inc  c                                           ; $495c: $0c
	ld   bc, $0302                                   ; $495d: $01 $02 $03
	inc  b                                           ; $4960: $04
	dec  c                                           ; $4961: $0d
	ld   c, $0f                                      ; $4962: $0e $0f
	ld   [$1009], sp                                 ; $4964: $08 $09 $10
	dec  bc                                          ; $4967: $0b
	ld   de, $0201                                   ; $4968: $11 $01 $02
	inc  bc                                          ; $496b: $03
	inc  b                                           ; $496c: $04
	ld   [de], a                                     ; $496d: $12
	ld   a, [bc]                                     ; $496e: $0a
	dec  bc                                          ; $496f: $0b
	ld   [$ff09], sp                                 ; $4970: $08 $09 $ff
	inc  de                                          ; $4973: $13
	ld   bc, $0302                                   ; $4974: $01 $02 $03
	inc  b                                           ; $4977: $04
	inc  d                                           ; $4978: $14
	dec  d                                           ; $4979: $15
	rlca                                             ; $497a: $07
	ld   [$1609], sp                                 ; $497b: $08 $09 $16
	dec  bc                                          ; $497e: $0b
	rla                                              ; $497f: $17
	ld   bc, $0302                                   ; $4980: $01 $02 $03
	inc  b                                           ; $4983: $04
	jr   @+$1b                                       ; $4984: $18 $19

	ld   a, [de]                                     ; $4986: $1a
	ld   [$1b09], sp                                 ; $4987: $08 $09 $1b
	dec  bc                                          ; $498a: $0b
	inc  e                                           ; $498b: $1c
	ld   bc, $0302                                   ; $498c: $01 $02 $03
	inc  b                                           ; $498f: $04
	dec  e                                           ; $4990: $1d
	ld   a, [bc]                                     ; $4991: $0a
	dec  bc                                          ; $4992: $0b
	ld   [$ff09], sp                                 ; $4993: $08 $09 $ff
	ld   e, $01                                      ; $4996: $1e $01
	ld   [bc], a                                     ; $4998: $02
	rra                                              ; $4999: $1f
	inc  b                                           ; $499a: $04
	jr   nz, jr_00b_49be                             ; $499b: $20 $21

	rlca                                             ; $499d: $07
	ld   [$0a09], sp                                 ; $499e: $08 $09 $0a
	dec  bc                                          ; $49a1: $0b
	ld   [hl+], a                                    ; $49a2: $22
	ld   bc, $1f02                                   ; $49a3: $01 $02 $1f
	inc  b                                           ; $49a6: $04
	inc  hl                                          ; $49a7: $23
	inc  h                                           ; $49a8: $24
	dec  h                                           ; $49a9: $25
	ld   [$0a09], sp                                 ; $49aa: $08 $09 $0a
	dec  bc                                          ; $49ad: $0b
	ld   h, $01                                      ; $49ae: $26 $01
	ld   [bc], a                                     ; $49b0: $02
	daa                                              ; $49b1: $27
	inc  b                                           ; $49b2: $04
	jr   z, jr_00b_49bf                              ; $49b3: $28 $0a

	dec  bc                                          ; $49b5: $0b
	ld   [$ff09], sp                                 ; $49b6: $08 $09 $ff
	add  hl, hl                                      ; $49b9: $29
	ld   bc, $2a02                                   ; $49ba: $01 $02 $2a
	dec  hl                                          ; $49bd: $2b

jr_00b_49be:
	inc  l                                           ; $49be: $2c

jr_00b_49bf:
	dec  l                                           ; $49bf: $2d
	ld   l, $08                                      ; $49c0: $2e $08
	add  hl, bc                                      ; $49c2: $09
	ld   a, [bc]                                     ; $49c3: $0a
	dec  bc                                          ; $49c4: $0b
	cpl                                              ; $49c5: $2f
	ld   bc, $2a02                                   ; $49c6: $01 $02 $2a
	dec  hl                                          ; $49c9: $2b
	jr   nc, @+$33                                   ; $49ca: $30 $31

	rlca                                             ; $49cc: $07
	ld   [$1609], sp                                 ; $49cd: $08 $09 $16
	dec  bc                                          ; $49d0: $0b
	ld   [hl-], a                                    ; $49d1: $32
	ld   bc, $2a02                                   ; $49d2: $01 $02 $2a
	dec  hl                                          ; $49d5: $2b
	inc  sp                                          ; $49d6: $33
	ld   a, [bc]                                     ; $49d7: $0a
	dec  bc                                          ; $49d8: $0b
	ld   [$ff09], sp                                 ; $49d9: $08 $09 $ff
	inc  [hl]                                        ; $49dc: $34
	dec  [hl]                                        ; $49dd: $35
	ld   [bc], a                                     ; $49de: $02
	ld   [hl], $04                                   ; $49df: $36 $04
	scf                                              ; $49e1: $37
	dec  d                                           ; $49e2: $15
	rlca                                             ; $49e3: $07
	jr   c, jr_00b_49ef                              ; $49e4: $38 $09

	ld   a, [bc]                                     ; $49e6: $0a
	dec  bc                                          ; $49e7: $0b
	add  hl, sp                                      ; $49e8: $39
	dec  [hl]                                        ; $49e9: $35
	ld   [bc], a                                     ; $49ea: $02
	ld   [hl], $04                                   ; $49eb: $36 $04
	ld   a, [hl-]                                    ; $49ed: $3a
	add  hl, de                                      ; $49ee: $19

jr_00b_49ef:
	ld   a, [de]                                     ; $49ef: $1a
	jr   c, jr_00b_49fb                              ; $49f0: $38 $09

	db   $10                                         ; $49f2: $10
	dec  bc                                          ; $49f3: $0b
	dec  sp                                          ; $49f4: $3b
	dec  [hl]                                        ; $49f5: $35
	ld   [bc], a                                     ; $49f6: $02
	ld   [hl], $04                                   ; $49f7: $36 $04
	inc  a                                           ; $49f9: $3c
	ld   a, [bc]                                     ; $49fa: $0a

jr_00b_49fb:
	dec  bc                                          ; $49fb: $0b
	jr   c, @+$0b                                    ; $49fc: $38 $09

	rst  $38                                         ; $49fe: $ff
	inc  [hl]                                        ; $49ff: $34
	ld   bc, $3602                                   ; $4a00: $01 $02 $36
	inc  b                                           ; $4a03: $04
	scf                                              ; $4a04: $37
	ld   hl, $0807                                   ; $4a05: $21 $07 $08
	add  hl, bc                                      ; $4a08: $09
	ld   a, [bc]                                     ; $4a09: $0a
	dec  bc                                          ; $4a0a: $0b
	add  hl, sp                                      ; $4a0b: $39
	ld   bc, $3602                                   ; $4a0c: $01 $02 $36
	inc  b                                           ; $4a0f: $04
	dec  a                                           ; $4a10: $3d
	ld   a, $3f                                      ; $4a11: $3e $3f
	ld   [$1009], sp                                 ; $4a13: $08 $09 $10
	dec  bc                                          ; $4a16: $0b
	ld   b, b                                        ; $4a17: $40
	ld   bc, $3602                                   ; $4a18: $01 $02 $36
	inc  b                                           ; $4a1b: $04
	inc  a                                           ; $4a1c: $3c
	ld   a, [bc]                                     ; $4a1d: $0a
	dec  bc                                          ; $4a1e: $0b
	ld   [$ff09], sp                                 ; $4a1f: $08 $09 $ff
	ld   b, c                                        ; $4a22: $41
	ld   bc, $3602                                   ; $4a23: $01 $02 $36
	inc  b                                           ; $4a26: $04
	ld   b, d                                        ; $4a27: $42
	ld   hl, $0807                                   ; $4a28: $21 $07 $08
	add  hl, bc                                      ; $4a2b: $09
	ld   a, [bc]                                     ; $4a2c: $0a
	dec  bc                                          ; $4a2d: $0b
	add  hl, sp                                      ; $4a2e: $39
	ld   bc, $3602                                   ; $4a2f: $01 $02 $36
	inc  b                                           ; $4a32: $04
	dec  a                                           ; $4a33: $3d
	ld   b, e                                        ; $4a34: $43
	ld   a, [de]                                     ; $4a35: $1a
	ld   [$1009], sp                                 ; $4a36: $08 $09 $10
	dec  bc                                          ; $4a39: $0b
	ld   b, b                                        ; $4a3a: $40
	ld   bc, $3602                                   ; $4a3b: $01 $02 $36
	inc  b                                           ; $4a3e: $04
	inc  a                                           ; $4a3f: $3c
	ld   a, [bc]                                     ; $4a40: $0a
	dec  bc                                          ; $4a41: $0b
	ld   [$ff09], sp                                 ; $4a42: $08 $09 $ff
	ld   b, h                                        ; $4a45: $44
	ld   b, l                                        ; $4a46: $45
	ld   [bc], a                                     ; $4a47: $02
	rra                                              ; $4a48: $1f
	inc  b                                           ; $4a49: $04
	ld   b, [hl]                                     ; $4a4a: $46
	ld   b, a                                        ; $4a4b: $47
	ld   c, b                                        ; $4a4c: $48
	ld   [$0a09], sp                                 ; $4a4d: $08 $09 $0a
	dec  bc                                          ; $4a50: $0b
	ld   c, c                                        ; $4a51: $49
	ld   b, l                                        ; $4a52: $45
	ld   [bc], a                                     ; $4a53: $02
	rra                                              ; $4a54: $1f
	inc  b                                           ; $4a55: $04
	ld   c, d                                        ; $4a56: $4a
	ld   c, e                                        ; $4a57: $4b
	ld   c, h                                        ; $4a58: $4c
	ld   [$1609], sp                                 ; $4a59: $08 $09 $16
	dec  bc                                          ; $4a5c: $0b
	ld   c, l                                        ; $4a5d: $4d
	ld   bc, $1f02                                   ; $4a5e: $01 $02 $1f
	inc  b                                           ; $4a61: $04
	ld   c, [hl]                                     ; $4a62: $4e
	ld   d, $0b                                      ; $4a63: $16 $0b
	ld   [$ff09], sp                                 ; $4a65: $08 $09 $ff
	ld   a, [de]                                     ; $4a68: $1a
	nop                                              ; $4a69: $00
	ld   a, [de]                                     ; $4a6a: $1a
	nop                                              ; $4a6b: $00
	ld   a, [de]                                     ; $4a6c: $1a
	nop                                              ; $4a6d: $00
	ld   a, [de]                                     ; $4a6e: $1a
	nop                                              ; $4a6f: $00
	ld   a, [de]                                     ; $4a70: $1a
	nop                                              ; $4a71: $00
	ld   a, [de]                                     ; $4a72: $1a
	nop                                              ; $4a73: $00
	ld   a, [de]                                     ; $4a74: $1a
	nop                                              ; $4a75: $00
	ld   a, [de]                                     ; $4a76: $1a
	nop                                              ; $4a77: $00
	ld   a, [de]                                     ; $4a78: $1a
	nop                                              ; $4a79: $00
	ld   a, [de]                                     ; $4a7a: $1a
	nop                                              ; $4a7b: $00
	ld   a, [de]                                     ; $4a7c: $1a
	nop                                              ; $4a7d: $00
	ld   a, [de]                                     ; $4a7e: $1a
	nop                                              ; $4a7f: $00
	ld   a, [de]                                     ; $4a80: $1a
	nop                                              ; $4a81: $00
	nop                                              ; $4a82: $00
	ld   bc, $0302                                   ; $4a83: $01 $02 $03
	inc  b                                           ; $4a86: $04
	dec  b                                           ; $4a87: $05
	ld   b, $07                                      ; $4a88: $06 $07
	nop                                              ; $4a8a: $00
	ld   [$0902], sp                                 ; $4a8b: $08 $02 $09
	inc  b                                           ; $4a8e: $04
	ld   a, [bc]                                     ; $4a8f: $0a
	ld   b, $0b                                      ; $4a90: $06 $0b
	nop                                              ; $4a92: $00
	inc  c                                           ; $4a93: $0c
	ld   [bc], a                                     ; $4a94: $02
	dec  c                                           ; $4a95: $0d
	inc  b                                           ; $4a96: $04
	ld   c, $06                                      ; $4a97: $0e $06
	rrca                                             ; $4a99: $0f
	db   $10                                         ; $4a9a: $10
	ld   de, $1312                                   ; $4a9b: $11 $12 $13
	rst  $38                                         ; $4a9e: $ff
	ld   a, [de]                                     ; $4a9f: $1a
	nop                                              ; $4aa0: $00
	dec  hl                                          ; $4aa1: $2b
	nop                                              ; $4aa2: $00
	inc  a                                           ; $4aa3: $3c
	nop                                              ; $4aa4: $00
	ld   c, l                                        ; $4aa5: $4d
	nop                                              ; $4aa6: $00
	ld   e, [hl]                                     ; $4aa7: $5e
	nop                                              ; $4aa8: $00
	ld   l, a                                        ; $4aa9: $6f
	nop                                              ; $4aaa: $00
	add  b                                           ; $4aab: $80
	nop                                              ; $4aac: $00
	sub  c                                           ; $4aad: $91
	nop                                              ; $4aae: $00
	ld   a, [de]                                     ; $4aaf: $1a
	nop                                              ; $4ab0: $00
	ld   a, [de]                                     ; $4ab1: $1a
	nop                                              ; $4ab2: $00
	ld   a, [de]                                     ; $4ab3: $1a
	nop                                              ; $4ab4: $00
	ld   a, [de]                                     ; $4ab5: $1a
	nop                                              ; $4ab6: $00
	ld   a, [de]                                     ; $4ab7: $1a
	nop                                              ; $4ab8: $00
	nop                                              ; $4ab9: $00
	ld   bc, $0302                                   ; $4aba: $01 $02 $03
	nop                                              ; $4abd: $00
	inc  b                                           ; $4abe: $04
	ld   [bc], a                                     ; $4abf: $02
	dec  b                                           ; $4ac0: $05
	nop                                              ; $4ac1: $00
	ld   b, $07                                      ; $4ac2: $06 $07
	ld   [$0a09], sp                                 ; $4ac4: $08 $09 $0a
	add  hl, bc                                      ; $4ac7: $09
	dec  bc                                          ; $4ac8: $0b
	rst  $38                                         ; $4ac9: $ff
	nop                                              ; $4aca: $00
	inc  c                                           ; $4acb: $0c
	dec  c                                           ; $4acc: $0d
	ld   c, $00                                      ; $4acd: $0e $00
	inc  b                                           ; $4acf: $04
	dec  c                                           ; $4ad0: $0d
	rrca                                             ; $4ad1: $0f
	nop                                              ; $4ad2: $00
	ld   b, $10                                      ; $4ad3: $06 $10
	ld   de, $1209                                   ; $4ad5: $11 $09 $12
	add  hl, bc                                      ; $4ad8: $09
	inc  de                                          ; $4ad9: $13
	rst  $38                                         ; $4ada: $ff
	nop                                              ; $4adb: $00
	ld   bc, $1514                                   ; $4adc: $01 $14 $15
	nop                                              ; $4adf: $00
	inc  b                                           ; $4ae0: $04
	inc  d                                           ; $4ae1: $14
	ld   d, $00                                      ; $4ae2: $16 $00
	ld   b, $14                                      ; $4ae4: $06 $14
	rla                                              ; $4ae6: $17
	jr   jr_00b_4af3                                 ; $4ae7: $18 $0a

	jr   jr_00b_4b04                                 ; $4ae9: $18 $19

	rst  $38                                         ; $4aeb: $ff
	ld   a, [de]                                     ; $4aec: $1a
	inc  c                                           ; $4aed: $0c
	dec  c                                           ; $4aee: $0d
	dec  de                                          ; $4aef: $1b
	ld   a, [de]                                     ; $4af0: $1a
	inc  b                                           ; $4af1: $04
	dec  c                                           ; $4af2: $0d

jr_00b_4af3:
	inc  e                                           ; $4af3: $1c
	ld   a, [de]                                     ; $4af4: $1a
	ld   b, $1d                                      ; $4af5: $06 $1d
	ld   e, $09                                      ; $4af7: $1e $09
	ld   [de], a                                     ; $4af9: $12
	add  hl, bc                                      ; $4afa: $09
	inc  de                                          ; $4afb: $13
	rst  $38                                         ; $4afc: $ff
	nop                                              ; $4afd: $00
	ld   bc, $201f                                   ; $4afe: $01 $1f $20
	nop                                              ; $4b01: $00
	inc  b                                           ; $4b02: $04
	rra                                              ; $4b03: $1f

jr_00b_4b04:
	ld   hl, $0600                                   ; $4b04: $21 $00 $06
	ld   [hl+], a                                    ; $4b07: $22
	ld   e, $09                                      ; $4b08: $1e $09
	inc  hl                                          ; $4b0a: $23
	add  hl, bc                                      ; $4b0b: $09
	inc  h                                           ; $4b0c: $24
	rst  $38                                         ; $4b0d: $ff
	nop                                              ; $4b0e: $00
	ld   bc, $2522                                   ; $4b0f: $01 $22 $25
	nop                                              ; $4b12: $00
	inc  b                                           ; $4b13: $04
	ld   [hl+], a                                    ; $4b14: $22
	ld   h, $00                                      ; $4b15: $26 $00
	ld   b, $22                                      ; $4b17: $06 $22
	ld   e, $09                                      ; $4b19: $1e $09
	daa                                              ; $4b1b: $27
	add  hl, bc                                      ; $4b1c: $09
	jr   z, @+$01                                    ; $4b1d: $28 $ff

	add  hl, hl                                      ; $4b1f: $29
	ld   bc, $2b2a                                   ; $4b20: $01 $2a $2b
	inc  l                                           ; $4b23: $2c
	inc  b                                           ; $4b24: $04
	ld   a, [hl+]                                    ; $4b25: $2a
	dec  l                                           ; $4b26: $2d
	inc  l                                           ; $4b27: $2c
	ld   b, $2a                                      ; $4b28: $06 $2a
	ld   l, $09                                      ; $4b2a: $2e $09
	cpl                                              ; $4b2c: $2f
	add  hl, bc                                      ; $4b2d: $09
	jr   nc, @+$01                                   ; $4b2e: $30 $ff

	add  hl, hl                                      ; $4b30: $29
	ld   sp, $3332                                   ; $4b31: $31 $32 $33
	inc  l                                           ; $4b34: $2c
	ld   bc, $3534                                   ; $4b35: $01 $34 $35
	add  hl, hl                                      ; $4b38: $29
	ld   b, $36                                      ; $4b39: $06 $36
	ld   e, $09                                      ; $4b3b: $1e $09
	scf                                              ; $4b3d: $37
	add  hl, bc                                      ; $4b3e: $09
	inc  hl                                          ; $4b3f: $23
	rst  $38                                         ; $4b40: $ff
	ld   a, [de]                                     ; $4b41: $1a
	nop                                              ; $4b42: $00
	scf                                              ; $4b43: $37
	nop                                              ; $4b44: $00
	ld   d, h                                        ; $4b45: $54
	nop                                              ; $4b46: $00
	ld   [hl], c                                     ; $4b47: $71
	nop                                              ; $4b48: $00
	adc  [hl]                                        ; $4b49: $8e
	nop                                              ; $4b4a: $00
	xor  e                                           ; $4b4b: $ab
	nop                                              ; $4b4c: $00
	ret  z                                           ; $4b4d: $c8

	nop                                              ; $4b4e: $00
	push hl                                          ; $4b4f: $e5
	nop                                              ; $4b50: $00
	ld   [bc], a                                     ; $4b51: $02
	ld   bc, $011f                                   ; $4b52: $01 $1f $01
	ld   a, [de]                                     ; $4b55: $1a
	nop                                              ; $4b56: $00
	ld   a, [de]                                     ; $4b57: $1a
	nop                                              ; $4b58: $00
	ld   a, [de]                                     ; $4b59: $1a
	nop                                              ; $4b5a: $00
	nop                                              ; $4b5b: $00
	ld   bc, $0302                                   ; $4b5c: $01 $02 $03
	inc  b                                           ; $4b5f: $04
	dec  b                                           ; $4b60: $05
	ld   b, $07                                      ; $4b61: $06 $07
	ld   [$0a09], sp                                 ; $4b63: $08 $09 $0a
	dec  bc                                          ; $4b66: $0b
	inc  c                                           ; $4b67: $0c
	dec  c                                           ; $4b68: $0d
	ld   c, $0f                                      ; $4b69: $0e $0f
	ld   [$0a10], sp                                 ; $4b6b: $08 $10 $0a
	ld   de, $120c                                   ; $4b6e: $11 $0c $12
	ld   c, $13                                      ; $4b71: $0e $13
	inc  d                                           ; $4b73: $14
	dec  d                                           ; $4b74: $15
	ld   d, $15                                      ; $4b75: $16 $15
	rst  $38                                         ; $4b77: $ff
	nop                                              ; $4b78: $00
	rla                                              ; $4b79: $17
	jr   jr_00b_4b95                                 ; $4b7a: $18 $19

	ld   a, [de]                                     ; $4b7c: $1a
	dec  de                                          ; $4b7d: $1b
	ld   b, $1c                                      ; $4b7e: $06 $1c
	ld   [$0a1d], sp                                 ; $4b80: $08 $1d $0a
	ld   e, $0c                                      ; $4b83: $1e $0c
	dec  c                                           ; $4b85: $0d
	ld   c, $1f                                      ; $4b86: $0e $1f
	ld   [$0a10], sp                                 ; $4b88: $08 $10 $0a
	ld   de, $120c                                   ; $4b8b: $11 $0c $12
	ld   c, $13                                      ; $4b8e: $0e $13
	jr   nz, jr_00b_4ba7                             ; $4b90: $20 $15

	ld   hl, $ff15                                   ; $4b92: $21 $15 $ff

jr_00b_4b95:
	ld   [hl+], a                                    ; $4b95: $22
	ld   bc, $2423                                   ; $4b96: $01 $23 $24
	dec  h                                           ; $4b99: $25
	ld   h, $27                                      ; $4b9a: $26 $27
	rlca                                             ; $4b9c: $07
	jr   z, jr_00b_4bc8                              ; $4b9d: $28 $29

	ld   a, [hl+]                                    ; $4b9f: $2a
	dec  hl                                          ; $4ba0: $2b
	inc  l                                           ; $4ba1: $2c
	dec  c                                           ; $4ba2: $0d
	dec  l                                           ; $4ba3: $2d
	ld   l, $2f                                      ; $4ba4: $2e $2f
	db   $10                                         ; $4ba6: $10

jr_00b_4ba7:
	jr   nc, jr_00b_4bba                             ; $4ba7: $30 $11

	ld   sp, $3212                                   ; $4ba9: $31 $12 $32
	inc  de                                          ; $4bac: $13
	inc  sp                                          ; $4bad: $33
	dec  d                                           ; $4bae: $15
	inc  [hl]                                        ; $4baf: $34
	dec  d                                           ; $4bb0: $15
	rst  $38                                         ; $4bb1: $ff
	dec  [hl]                                        ; $4bb2: $35
	ld   [hl], $37                                   ; $4bb3: $36 $37
	jr   c, @+$3b                                    ; $4bb5: $38 $39

	ld   a, [hl-]                                    ; $4bb7: $3a
	dec  sp                                          ; $4bb8: $3b
	inc  a                                           ; $4bb9: $3c

jr_00b_4bba:
	dec  a                                           ; $4bba: $3d
	ld   a, $3f                                      ; $4bbb: $3e $3f
	ld   b, b                                        ; $4bbd: $40
	ld   b, c                                        ; $4bbe: $41
	ld   b, d                                        ; $4bbf: $42
	ld   b, e                                        ; $4bc0: $43
	ld   b, h                                        ; $4bc1: $44
	ld   b, l                                        ; $4bc2: $45
	ld   b, [hl]                                     ; $4bc3: $46
	ld   b, a                                        ; $4bc4: $47
	ld   c, b                                        ; $4bc5: $48
	ld   c, c                                        ; $4bc6: $49
	ld   c, d                                        ; $4bc7: $4a

jr_00b_4bc8:
	ld   c, e                                        ; $4bc8: $4b
	ld   c, h                                        ; $4bc9: $4c
	ld   c, l                                        ; $4bca: $4d
	dec  d                                           ; $4bcb: $15
	ld   c, [hl]                                     ; $4bcc: $4e
	dec  d                                           ; $4bcd: $15
	rst  $38                                         ; $4bce: $ff
	ld   c, a                                        ; $4bcf: $4f
	ld   [hl], $50                                   ; $4bd0: $36 $50
	ld   d, c                                        ; $4bd2: $51
	ld   d, d                                        ; $4bd3: $52
	ld   d, e                                        ; $4bd4: $53
	dec  sp                                          ; $4bd5: $3b
	inc  a                                           ; $4bd6: $3c
	ld   d, h                                        ; $4bd7: $54
	ld   d, l                                        ; $4bd8: $55
	ld   d, [hl]                                     ; $4bd9: $56
	ld   d, a                                        ; $4bda: $57
	ld   e, b                                        ; $4bdb: $58
	ld   e, c                                        ; $4bdc: $59
	ld   e, d                                        ; $4bdd: $5a
	ld   e, e                                        ; $4bde: $5b
	ld   e, h                                        ; $4bdf: $5c
	ld   b, [hl]                                     ; $4be0: $46
	ld   e, l                                        ; $4be1: $5d
	ld   c, b                                        ; $4be2: $48
	ld   e, [hl]                                     ; $4be3: $5e
	ld   c, d                                        ; $4be4: $4a
	ld   e, a                                        ; $4be5: $5f
	ld   c, h                                        ; $4be6: $4c
	ld   h, b                                        ; $4be7: $60
	dec  d                                           ; $4be8: $15
	ld   h, c                                        ; $4be9: $61
	dec  d                                           ; $4bea: $15
	rst  $38                                         ; $4beb: $ff
	dec  [hl]                                        ; $4bec: $35
	ld   [hl], $37                                   ; $4bed: $36 $37
	jr   c, jr_00b_4c2a                              ; $4bef: $38 $39

	ld   a, [hl-]                                    ; $4bf1: $3a
	dec  sp                                          ; $4bf2: $3b
	inc  a                                           ; $4bf3: $3c
	dec  a                                           ; $4bf4: $3d
	ld   d, l                                        ; $4bf5: $55
	ld   h, d                                        ; $4bf6: $62
	ld   b, b                                        ; $4bf7: $40
	ld   h, e                                        ; $4bf8: $63
	ld   b, d                                        ; $4bf9: $42
	ld   e, d                                        ; $4bfa: $5a
	ld   h, h                                        ; $4bfb: $64
	ld   b, l                                        ; $4bfc: $45
	ld   b, [hl]                                     ; $4bfd: $46
	ld   h, l                                        ; $4bfe: $65
	ld   c, b                                        ; $4bff: $48
	ld   h, [hl]                                     ; $4c00: $66
	ld   c, d                                        ; $4c01: $4a
	ld   c, e                                        ; $4c02: $4b
	ld   c, h                                        ; $4c03: $4c
	ld   h, a                                        ; $4c04: $67
	dec  d                                           ; $4c05: $15
	ld   l, b                                        ; $4c06: $68
	dec  d                                           ; $4c07: $15
	rst  $38                                         ; $4c08: $ff
	ld   l, c                                        ; $4c09: $69
	ld   l, d                                        ; $4c0a: $6a
	ld   l, e                                        ; $4c0b: $6b
	ld   l, h                                        ; $4c0c: $6c
	ld   l, l                                        ; $4c0d: $6d
	ld   l, [hl]                                     ; $4c0e: $6e
	ld   l, a                                        ; $4c0f: $6f
	ld   [hl], b                                     ; $4c10: $70
	ld   [hl], c                                     ; $4c11: $71
	ld   [hl], d                                     ; $4c12: $72
	ld   [hl], e                                     ; $4c13: $73
	ld   [hl], h                                     ; $4c14: $74
	ld   [hl], l                                     ; $4c15: $75
	halt                                             ; $4c16: $76
	ld   [hl], a                                     ; $4c17: $77
	ld   a, b                                        ; $4c18: $78
	ld   [$7910], sp                                 ; $4c19: $08 $10 $79
	ld   de, $127a                                   ; $4c1c: $11 $7a $12
	ld   c, $13                                      ; $4c1f: $0e $13
	ld   a, e                                        ; $4c21: $7b
	dec  d                                           ; $4c22: $15
	ld   a, h                                        ; $4c23: $7c
	dec  d                                           ; $4c24: $15
	rst  $38                                         ; $4c25: $ff
	ld   [hl+], a                                    ; $4c26: $22
	ld   a, l                                        ; $4c27: $7d
	ld   a, [hl]                                     ; $4c28: $7e
	ld   a, a                                        ; $4c29: $7f

jr_00b_4c2a:
	add  b                                           ; $4c2a: $80
	add  c                                           ; $4c2b: $81
	add  d                                           ; $4c2c: $82
	add  e                                           ; $4c2d: $83
	ld   [hl+], a                                    ; $4c2e: $22
	add  h                                           ; $4c2f: $84
	add  l                                           ; $4c30: $85
	add  [hl]                                        ; $4c31: $86
	inc  l                                           ; $4c32: $2c
	add  a                                           ; $4c33: $87
	adc  b                                           ; $4c34: $88
	adc  c                                           ; $4c35: $89
	cpl                                              ; $4c36: $2f
	ld   b, [hl]                                     ; $4c37: $46
	adc  d                                           ; $4c38: $8a
	adc  e                                           ; $4c39: $8b
	inc  l                                           ; $4c3a: $2c
	ld   c, d                                        ; $4c3b: $4a
	ld   [hl-], a                                    ; $4c3c: $32
	ld   c, h                                        ; $4c3d: $4c
	adc  h                                           ; $4c3e: $8c
	dec  d                                           ; $4c3f: $15
	adc  l                                           ; $4c40: $8d
	dec  d                                           ; $4c41: $15
	rst  $38                                         ; $4c42: $ff
	adc  [hl]                                        ; $4c43: $8e
	adc  a                                           ; $4c44: $8f
	sub  b                                           ; $4c45: $90
	sub  c                                           ; $4c46: $91
	sub  d                                           ; $4c47: $92
	sub  e                                           ; $4c48: $93
	sub  h                                           ; $4c49: $94
	sub  l                                           ; $4c4a: $95
	adc  [hl]                                        ; $4c4b: $8e
	sub  [hl]                                        ; $4c4c: $96
	sub  a                                           ; $4c4d: $97
	sbc  b                                           ; $4c4e: $98
	sbc  c                                           ; $4c4f: $99
	sbc  d                                           ; $4c50: $9a
	sbc  e                                           ; $4c51: $9b
	sbc  h                                           ; $4c52: $9c
	adc  [hl]                                        ; $4c53: $8e
	sbc  l                                           ; $4c54: $9d
	sbc  [hl]                                        ; $4c55: $9e
	sbc  a                                           ; $4c56: $9f
	and  b                                           ; $4c57: $a0
	and  c                                           ; $4c58: $a1
	and  d                                           ; $4c59: $a2
	ld   c, h                                        ; $4c5a: $4c
	ld   c, l                                        ; $4c5b: $4d
	dec  d                                           ; $4c5c: $15
	and  e                                           ; $4c5d: $a3
	dec  d                                           ; $4c5e: $15
	rst  $38                                         ; $4c5f: $ff
	and  h                                           ; $4c60: $a4
	db   $10                                         ; $4c61: $10
	and  l                                           ; $4c62: $a5
	and  [hl]                                        ; $4c63: $a6
	and  a                                           ; $4c64: $a7
	xor  b                                           ; $4c65: $a8
	ld   c, $13                                      ; $4c66: $0e $13
	and  h                                           ; $4c68: $a4
	db   $10                                         ; $4c69: $10
	and  l                                           ; $4c6a: $a5
	and  [hl]                                        ; $4c6b: $a6
	and  a                                           ; $4c6c: $a7
	xor  b                                           ; $4c6d: $a8
	ld   c, $13                                      ; $4c6e: $0e $13
	and  h                                           ; $4c70: $a4
	db   $10                                         ; $4c71: $10
	and  l                                           ; $4c72: $a5
	and  [hl]                                        ; $4c73: $a6
	and  a                                           ; $4c74: $a7
	xor  b                                           ; $4c75: $a8
	ld   c, $13                                      ; $4c76: $0e $13
	inc  sp                                          ; $4c78: $33
	dec  d                                           ; $4c79: $15
	inc  [hl]                                        ; $4c7a: $34
	dec  d                                           ; $4c7b: $15
	rst  $38                                         ; $4c7c: $ff
	ld   a, [de]                                     ; $4c7d: $1a
	nop                                              ; $4c7e: $00
	ld   sp, $4800                                   ; $4c7f: $31 $00 $48
	nop                                              ; $4c82: $00
	ld   e, a                                        ; $4c83: $5f
	nop                                              ; $4c84: $00
	halt                                             ; $4c85: $76
	nop                                              ; $4c86: $00
	adc  l                                           ; $4c87: $8d
	nop                                              ; $4c88: $00
	and  h                                           ; $4c89: $a4
	nop                                              ; $4c8a: $00
	cp   e                                           ; $4c8b: $bb
	nop                                              ; $4c8c: $00
	ld   a, [de]                                     ; $4c8d: $1a
	nop                                              ; $4c8e: $00
	ld   a, [de]                                     ; $4c8f: $1a
	nop                                              ; $4c90: $00
	ld   a, [de]                                     ; $4c91: $1a
	nop                                              ; $4c92: $00
	ld   a, [de]                                     ; $4c93: $1a
	nop                                              ; $4c94: $00
	ld   a, [de]                                     ; $4c95: $1a
	nop                                              ; $4c96: $00
	nop                                              ; $4c97: $00
	ld   bc, $0302                                   ; $4c98: $01 $02 $03
	inc  b                                           ; $4c9b: $04
	dec  b                                           ; $4c9c: $05
	ld   b, $07                                      ; $4c9d: $06 $07
	ld   [$0903], sp                                 ; $4c9f: $08 $03 $09
	ld   a, [bc]                                     ; $4ca2: $0a
	dec  bc                                          ; $4ca3: $0b
	inc  c                                           ; $4ca4: $0c
	ld   [$0d03], sp                                 ; $4ca5: $08 $03 $0d
	ld   c, $0f                                      ; $4ca8: $0e $0f
	db   $10                                         ; $4caa: $10
	rrca                                             ; $4cab: $0f
	ld   de, $12ff                                   ; $4cac: $11 $ff $12
	ld   bc, $0313                                   ; $4caf: $01 $13 $03
	inc  d                                           ; $4cb2: $14
	dec  b                                           ; $4cb3: $05
	dec  d                                           ; $4cb4: $15
	rlca                                             ; $4cb5: $07
	ld   [$0903], sp                                 ; $4cb6: $08 $03 $09
	ld   a, [bc]                                     ; $4cb9: $0a
	ld   d, $0c                                      ; $4cba: $16 $0c
	ld   [$0d03], sp                                 ; $4cbc: $08 $03 $0d
	ld   c, $0f                                      ; $4cbf: $0e $0f
	rla                                              ; $4cc1: $17
	rrca                                             ; $4cc2: $0f
	jr   @+$01                                       ; $4cc3: $18 $ff

	add  hl, de                                      ; $4cc5: $19
	ld   a, [de]                                     ; $4cc6: $1a
	dec  de                                          ; $4cc7: $1b
	inc  bc                                          ; $4cc8: $03
	inc  e                                           ; $4cc9: $1c
	dec  e                                           ; $4cca: $1d
	ld   e, $1a                                      ; $4ccb: $1e $1a
	rra                                              ; $4ccd: $1f
	inc  bc                                          ; $4cce: $03
	jr   nz, @+$1f                                   ; $4ccf: $20 $1d

	ld   hl, $220c                                   ; $4cd1: $21 $0c $22
	inc  bc                                          ; $4cd4: $03
	inc  hl                                          ; $4cd5: $23
	ld   c, $0f                                      ; $4cd6: $0e $0f
	inc  h                                           ; $4cd8: $24
	rrca                                             ; $4cd9: $0f
	dec  h                                           ; $4cda: $25
	rst  $38                                         ; $4cdb: $ff
	ld   h, $27                                      ; $4cdc: $26 $27
	jr   z, jr_00b_4ce3                              ; $4cde: $28 $03

	add  hl, hl                                      ; $4ce0: $29
	ld   a, [hl+]                                    ; $4ce1: $2a
	dec  hl                                          ; $4ce2: $2b

jr_00b_4ce3:
	inc  l                                           ; $4ce3: $2c
	dec  l                                           ; $4ce4: $2d
	inc  bc                                          ; $4ce5: $03
	ld   l, $2f                                      ; $4ce6: $2e $2f
	dec  bc                                          ; $4ce8: $0b
	inc  c                                           ; $4ce9: $0c
	ld   [$0d03], sp                                 ; $4cea: $08 $03 $0d
	ld   c, $0f                                      ; $4ced: $0e $0f
	jr   nc, @+$11                                   ; $4cef: $30 $0f

	ld   sp, $32ff                                   ; $4cf1: $31 $ff $32
	inc  sp                                          ; $4cf4: $33
	dec  de                                          ; $4cf5: $1b
	inc  [hl]                                        ; $4cf6: $34
	dec  [hl]                                        ; $4cf7: $35
	ld   [hl], $37                                   ; $4cf8: $36 $37
	inc  sp                                          ; $4cfa: $33
	rra                                              ; $4cfb: $1f
	inc  [hl]                                        ; $4cfc: $34
	jr   c, jr_00b_4d35                              ; $4cfd: $38 $36

	ld   hl, $2239                                   ; $4cff: $21 $39 $22
	inc  [hl]                                        ; $4d02: $34
	inc  hl                                          ; $4d03: $23
	ld   a, [hl-]                                    ; $4d04: $3a
	rrca                                             ; $4d05: $0f
	rla                                              ; $4d06: $17
	rrca                                             ; $4d07: $0f
	jr   @+$01                                       ; $4d08: $18 $ff

	dec  sp                                          ; $4d0a: $3b
	ld   bc, $033c                                   ; $4d0b: $01 $3c $03
	dec  a                                           ; $4d0e: $3d
	dec  b                                           ; $4d0f: $05
	ld   a, $3f                                      ; $4d10: $3e $3f
	ld   b, b                                        ; $4d12: $40
	inc  bc                                          ; $4d13: $03
	ld   b, c                                        ; $4d14: $41
	ld   b, d                                        ; $4d15: $42
	ld   b, e                                        ; $4d16: $43
	inc  c                                           ; $4d17: $0c
	ld   b, b                                        ; $4d18: $40
	inc  bc                                          ; $4d19: $03
	ld   b, h                                        ; $4d1a: $44
	ld   c, $45                                      ; $4d1b: $0e $45
	ld   b, [hl]                                     ; $4d1d: $46
	ld   b, l                                        ; $4d1e: $45
	ld   b, a                                        ; $4d1f: $47
	rst  $38                                         ; $4d20: $ff
	ld   c, b                                        ; $4d21: $48
	ld   c, c                                        ; $4d22: $49
	ld   c, d                                        ; $4d23: $4a
	inc  bc                                          ; $4d24: $03
	ld   c, e                                        ; $4d25: $4b
	ld   c, h                                        ; $4d26: $4c
	ld   c, l                                        ; $4d27: $4d
	ld   c, [hl]                                     ; $4d28: $4e
	ld   c, a                                        ; $4d29: $4f
	ld   d, b                                        ; $4d2a: $50
	ld   d, c                                        ; $4d2b: $51
	ld   d, d                                        ; $4d2c: $52
	ld   d, e                                        ; $4d2d: $53
	inc  c                                           ; $4d2e: $0c
	ld   d, h                                        ; $4d2f: $54
	inc  bc                                          ; $4d30: $03
	ld   d, l                                        ; $4d31: $55
	ld   c, $0f                                      ; $4d32: $0e $0f
	ld   d, [hl]                                     ; $4d34: $56

jr_00b_4d35:
	rrca                                             ; $4d35: $0f
	ld   d, a                                        ; $4d36: $57
	rst  $38                                         ; $4d37: $ff
	ld   e, b                                        ; $4d38: $58
	ld   bc, $0359                                   ; $4d39: $01 $59 $03
	ld   e, d                                        ; $4d3c: $5a
	dec  b                                           ; $4d3d: $05
	ld   e, e                                        ; $4d3e: $5b
	ld   bc, $035c                                   ; $4d3f: $01 $5c $03
	ld   e, l                                        ; $4d42: $5d
	dec  b                                           ; $4d43: $05
	ld   e, [hl]                                     ; $4d44: $5e
	inc  c                                           ; $4d45: $0c
	ld   e, c                                        ; $4d46: $59
	inc  bc                                          ; $4d47: $03
	ld   e, a                                        ; $4d48: $5f
	ld   c, $0f                                      ; $4d49: $0e $0f
	ld   h, b                                        ; $4d4b: $60
	rrca                                             ; $4d4c: $0f
	ld   h, c                                        ; $4d4d: $61
	rst  $38                                         ; $4d4e: $ff
	ld   a, [de]                                     ; $4d4f: $1a
	nop                                              ; $4d50: $00
	ld   a, [de]                                     ; $4d51: $1a
	nop                                              ; $4d52: $00
	ld   a, [de]                                     ; $4d53: $1a
	nop                                              ; $4d54: $00
	ld   a, [de]                                     ; $4d55: $1a
	nop                                              ; $4d56: $00
	ld   a, [de]                                     ; $4d57: $1a
	nop                                              ; $4d58: $00
	ld   a, [de]                                     ; $4d59: $1a
	nop                                              ; $4d5a: $00
	ld   a, [de]                                     ; $4d5b: $1a
	nop                                              ; $4d5c: $00
	ld   a, [de]                                     ; $4d5d: $1a
	nop                                              ; $4d5e: $00
	ld   a, [de]                                     ; $4d5f: $1a
	nop                                              ; $4d60: $00
	ld   a, [de]                                     ; $4d61: $1a
	nop                                              ; $4d62: $00
	ld   a, [de]                                     ; $4d63: $1a
	nop                                              ; $4d64: $00
	ld   a, [de]                                     ; $4d65: $1a
	nop                                              ; $4d66: $00
	ld   a, [de]                                     ; $4d67: $1a
	nop                                              ; $4d68: $00
	nop                                              ; $4d69: $00
	ld   bc, $0302                                   ; $4d6a: $01 $02 $03
	inc  b                                           ; $4d6d: $04
	dec  b                                           ; $4d6e: $05
	ld   b, $07                                      ; $4d6f: $06 $07
	nop                                              ; $4d71: $00
	ld   [$0309], sp                                 ; $4d72: $08 $09 $03
	ld   a, [bc]                                     ; $4d75: $0a
	dec  bc                                          ; $4d76: $0b
	ld   b, $07                                      ; $4d77: $06 $07
	nop                                              ; $4d79: $00
	inc  c                                           ; $4d7a: $0c
	dec  c                                           ; $4d7b: $0d
	ld   c, $0f                                      ; $4d7c: $0e $0f
	db   $10                                         ; $4d7e: $10
	ld   b, $07                                      ; $4d7f: $06 $07
	ld   de, $1312                                   ; $4d81: $11 $12 $13
	inc  d                                           ; $4d84: $14
	dec  d                                           ; $4d85: $15
	ld   [de], a                                     ; $4d86: $12
	ld   d, $14                                      ; $4d87: $16 $14
	rla                                              ; $4d89: $17
	rla                                              ; $4d8a: $17
	rla                                              ; $4d8b: $17
	rla                                              ; $4d8c: $17
	rla                                              ; $4d8d: $17
	rla                                              ; $4d8e: $17
	rla                                              ; $4d8f: $17
	rla                                              ; $4d90: $17
	rla                                              ; $4d91: $17
	rla                                              ; $4d92: $17
	rla                                              ; $4d93: $17
	rla                                              ; $4d94: $17
	rla                                              ; $4d95: $17
	rla                                              ; $4d96: $17
	rla                                              ; $4d97: $17
	rla                                              ; $4d98: $17
	rla                                              ; $4d99: $17
	rla                                              ; $4d9a: $17
	rla                                              ; $4d9b: $17
	rla                                              ; $4d9c: $17
	rla                                              ; $4d9d: $17
	rla                                              ; $4d9e: $17
	rla                                              ; $4d9f: $17
	rla                                              ; $4da0: $17
	rla                                              ; $4da1: $17
	rla                                              ; $4da2: $17
	rla                                              ; $4da3: $17
	rla                                              ; $4da4: $17
	rla                                              ; $4da5: $17
	rla                                              ; $4da6: $17
	rla                                              ; $4da7: $17
	rla                                              ; $4da8: $17
	rst  $38                                         ; $4da9: $ff
	ld   a, [de]                                     ; $4daa: $1a
	nop                                              ; $4dab: $00
	scf                                              ; $4dac: $37
	nop                                              ; $4dad: $00
	ld   d, h                                        ; $4dae: $54
	nop                                              ; $4daf: $00
	ld   [hl], c                                     ; $4db0: $71
	nop                                              ; $4db1: $00
	adc  [hl]                                        ; $4db2: $8e
	nop                                              ; $4db3: $00
	xor  e                                           ; $4db4: $ab
	nop                                              ; $4db5: $00
	ret  z                                           ; $4db6: $c8

	nop                                              ; $4db7: $00
	push hl                                          ; $4db8: $e5
	nop                                              ; $4db9: $00
	ld   a, [de]                                     ; $4dba: $1a
	nop                                              ; $4dbb: $00
	ld   a, [de]                                     ; $4dbc: $1a
	nop                                              ; $4dbd: $00
	ld   a, [de]                                     ; $4dbe: $1a
	nop                                              ; $4dbf: $00
	ld   a, [de]                                     ; $4dc0: $1a
	nop                                              ; $4dc1: $00
	ld   a, [de]                                     ; $4dc2: $1a
	nop                                              ; $4dc3: $00
	nop                                              ; $4dc4: $00
	ld   bc, $0302                                   ; $4dc5: $01 $02 $03
	inc  b                                           ; $4dc8: $04
	dec  b                                           ; $4dc9: $05
	ld   b, $07                                      ; $4dca: $06 $07
	ld   [$0a09], sp                                 ; $4dcc: $08 $09 $0a
	dec  bc                                          ; $4dcf: $0b
	inc  c                                           ; $4dd0: $0c
	dec  c                                           ; $4dd1: $0d
	ld   c, $0f                                      ; $4dd2: $0e $0f
	ld   [$0a10], sp                                 ; $4dd4: $08 $10 $0a
	ld   de, $120c                                   ; $4dd7: $11 $0c $12
	ld   c, $13                                      ; $4dda: $0e $13
	inc  d                                           ; $4ddc: $14
	dec  d                                           ; $4ddd: $15
	ld   d, $17                                      ; $4dde: $16 $17
	rst  $38                                         ; $4de0: $ff
	nop                                              ; $4de1: $00
	ld   bc, $1918                                   ; $4de2: $01 $18 $19
	ld   a, [de]                                     ; $4de5: $1a
	dec  de                                          ; $4de6: $1b
	ld   b, $1c                                      ; $4de7: $06 $1c
	ld   [$1d09], sp                                 ; $4de9: $08 $09 $1d
	ld   e, $1f                                      ; $4dec: $1e $1f
	jr   nz, @+$23                                   ; $4dee: $20 $21

	rrca                                             ; $4df0: $0f
	ld   [$2322], sp                                 ; $4df1: $08 $22 $23
	inc  h                                           ; $4df4: $24
	dec  h                                           ; $4df5: $25
	ld   h, $0e                                      ; $4df6: $26 $0e
	inc  de                                          ; $4df8: $13
	daa                                              ; $4df9: $27
	dec  d                                           ; $4dfa: $15
	jr   z, jr_00b_4e26                              ; $4dfb: $28 $29

	rst  $38                                         ; $4dfd: $ff
	ld   a, [hl+]                                    ; $4dfe: $2a
	ld   bc, $2c2b                                   ; $4dff: $01 $2b $2c
	dec  l                                           ; $4e02: $2d
	ld   l, $06                                      ; $4e03: $2e $06
	rlca                                             ; $4e05: $07
	cpl                                              ; $4e06: $2f
	add  hl, bc                                      ; $4e07: $09
	jr   nc, jr_00b_4e3b                             ; $4e08: $30 $31

	ld   [hl-], a                                    ; $4e0a: $32
	inc  sp                                          ; $4e0b: $33
	ld   hl, $3534                                   ; $4e0c: $21 $34 $35
	ld   [hl+], a                                    ; $4e0f: $22
	jr   nc, jr_00b_4e48                             ; $4e10: $30 $36

	scf                                              ; $4e12: $37
	jr   c, jr_00b_4e23                              ; $4e13: $38 $0e

	inc  de                                          ; $4e15: $13
	add  hl, sp                                      ; $4e16: $39
	dec  d                                           ; $4e17: $15
	ld   a, [hl-]                                    ; $4e18: $3a
	dec  sp                                          ; $4e19: $3b
	rst  $38                                         ; $4e1a: $ff
	nop                                              ; $4e1b: $00
	inc  a                                           ; $4e1c: $3c
	dec  a                                           ; $4e1d: $3d
	ld   a, $3f                                      ; $4e1e: $3e $3f
	ld   b, b                                        ; $4e20: $40
	ld   b, c                                        ; $4e21: $41
	ld   b, d                                        ; $4e22: $42

jr_00b_4e23:
	ld   b, e                                        ; $4e23: $43
	ld   b, h                                        ; $4e24: $44
	ld   b, l                                        ; $4e25: $45

jr_00b_4e26:
	ld   b, [hl]                                     ; $4e26: $46
	ld   b, a                                        ; $4e27: $47
	ld   c, b                                        ; $4e28: $48
	ld   c, c                                        ; $4e29: $49
	ld   c, d                                        ; $4e2a: $4a
	ld   [$4b10], sp                                 ; $4e2b: $08 $10 $4b
	ld   c, h                                        ; $4e2e: $4c
	ld   c, l                                        ; $4e2f: $4d
	ld   c, [hl]                                     ; $4e30: $4e
	ld   c, a                                        ; $4e31: $4f
	inc  de                                          ; $4e32: $13
	ld   d, b                                        ; $4e33: $50
	ld   d, c                                        ; $4e34: $51
	add  hl, sp                                      ; $4e35: $39
	dec  d                                           ; $4e36: $15
	rst  $38                                         ; $4e37: $ff
	ld   d, d                                        ; $4e38: $52
	ld   d, e                                        ; $4e39: $53
	ld   d, h                                        ; $4e3a: $54

jr_00b_4e3b:
	ld   d, l                                        ; $4e3b: $55
	ld   d, [hl]                                     ; $4e3c: $56
	ld   d, a                                        ; $4e3d: $57
	ld   b, $58                                      ; $4e3e: $06 $58
	ld   e, c                                        ; $4e40: $59
	ld   e, d                                        ; $4e41: $5a
	ld   e, e                                        ; $4e42: $5b
	ld   e, h                                        ; $4e43: $5c
	ld   e, l                                        ; $4e44: $5d
	ld   e, [hl]                                     ; $4e45: $5e
	ld   c, $5f                                      ; $4e46: $0e $5f

jr_00b_4e48:
	ld   h, b                                        ; $4e48: $60
	ld   h, c                                        ; $4e49: $61
	ld   e, e                                        ; $4e4a: $5b
	ld   h, d                                        ; $4e4b: $62
	ld   e, l                                        ; $4e4c: $5d
	ld   h, e                                        ; $4e4d: $63
	ld   c, $64                                      ; $4e4e: $0e $64
	inc  d                                           ; $4e50: $14
	dec  d                                           ; $4e51: $15
	ld   h, l                                        ; $4e52: $65
	dec  d                                           ; $4e53: $15
	rst  $38                                         ; $4e54: $ff
	ld   h, [hl]                                     ; $4e55: $66
	ld   h, a                                        ; $4e56: $67
	ld   l, b                                        ; $4e57: $68
	ld   l, c                                        ; $4e58: $69
	ld   l, d                                        ; $4e59: $6a
	ld   l, e                                        ; $4e5a: $6b
	ld   b, $6c                                      ; $4e5b: $06 $6c
	ld   [$6e6d], sp                                 ; $4e5d: $08 $6d $6e
	ld   l, a                                        ; $4e60: $6f
	ld   [hl], b                                     ; $4e61: $70
	ld   [hl], c                                     ; $4e62: $71
	ld   hl, $0872                                   ; $4e63: $21 $72 $08
	db   $10                                         ; $4e66: $10
	ld   [hl], e                                     ; $4e67: $73
	ld   [hl], h                                     ; $4e68: $74
	ld   [hl], l                                     ; $4e69: $75
	halt                                             ; $4e6a: $76
	ld   c, $13                                      ; $4e6b: $0e $13
	add  hl, sp                                      ; $4e6d: $39
	dec  d                                           ; $4e6e: $15
	ld   [hl], a                                     ; $4e6f: $77
	ld   a, b                                        ; $4e70: $78
	rst  $38                                         ; $4e71: $ff
	ld   a, c                                        ; $4e72: $79
	ld   a, d                                        ; $4e73: $7a
	ld   a, e                                        ; $4e74: $7b
	ld   a, h                                        ; $4e75: $7c
	ld   a, l                                        ; $4e76: $7d
	ld   a, [hl]                                     ; $4e77: $7e
	ld   a, a                                        ; $4e78: $7f
	add  b                                           ; $4e79: $80
	ld   a, c                                        ; $4e7a: $79
	add  c                                           ; $4e7b: $81
	ld   a, e                                        ; $4e7c: $7b
	add  d                                           ; $4e7d: $82
	ld   a, l                                        ; $4e7e: $7d
	add  e                                           ; $4e7f: $83
	ld   a, a                                        ; $4e80: $7f
	add  h                                           ; $4e81: $84
	ld   a, c                                        ; $4e82: $79
	db   $10                                         ; $4e83: $10
	ld   a, e                                        ; $4e84: $7b
	add  l                                           ; $4e85: $85
	ld   a, l                                        ; $4e86: $7d
	add  [hl]                                        ; $4e87: $86
	ld   a, a                                        ; $4e88: $7f
	add  a                                           ; $4e89: $87
	add  hl, sp                                      ; $4e8a: $39
	dec  d                                           ; $4e8b: $15
	adc  b                                           ; $4e8c: $88
	adc  c                                           ; $4e8d: $89
	rst  $38                                         ; $4e8e: $ff
	ld   b, e                                        ; $4e8f: $43
	adc  d                                           ; $4e90: $8a
	ld   a, [bc]                                     ; $4e91: $0a
	adc  e                                           ; $4e92: $8b
	adc  h                                           ; $4e93: $8c
	adc  l                                           ; $4e94: $8d
	adc  [hl]                                        ; $4e95: $8e
	adc  a                                           ; $4e96: $8f
	ld   b, e                                        ; $4e97: $43
	adc  d                                           ; $4e98: $8a
	ld   a, [bc]                                     ; $4e99: $0a
	adc  e                                           ; $4e9a: $8b
	adc  h                                           ; $4e9b: $8c
	adc  l                                           ; $4e9c: $8d
	adc  [hl]                                        ; $4e9d: $8e
	adc  a                                           ; $4e9e: $8f
	ld   b, e                                        ; $4e9f: $43
	adc  d                                           ; $4ea0: $8a
	ld   a, [bc]                                     ; $4ea1: $0a
	adc  e                                           ; $4ea2: $8b
	adc  h                                           ; $4ea3: $8c
	adc  l                                           ; $4ea4: $8d
	adc  [hl]                                        ; $4ea5: $8e
	adc  a                                           ; $4ea6: $8f
	sub  b                                           ; $4ea7: $90
	dec  d                                           ; $4ea8: $15
	sub  c                                           ; $4ea9: $91
	sub  d                                           ; $4eaa: $92
	rst  $38                                         ; $4eab: $ff
	ld   a, [de]                                     ; $4eac: $1a
	nop                                              ; $4ead: $00
	ld   sp, $1a00                                   ; $4eae: $31 $00 $1a
	nop                                              ; $4eb1: $00
	ld   a, [de]                                     ; $4eb2: $1a
	nop                                              ; $4eb3: $00
	ld   a, [de]                                     ; $4eb4: $1a
	nop                                              ; $4eb5: $00
	ld   a, [de]                                     ; $4eb6: $1a
	nop                                              ; $4eb7: $00
	ld   a, [de]                                     ; $4eb8: $1a
	nop                                              ; $4eb9: $00
	ld   a, [de]                                     ; $4eba: $1a
	nop                                              ; $4ebb: $00
	ld   a, [de]                                     ; $4ebc: $1a
	nop                                              ; $4ebd: $00
	ld   a, [de]                                     ; $4ebe: $1a
	nop                                              ; $4ebf: $00
	ld   a, [de]                                     ; $4ec0: $1a
	nop                                              ; $4ec1: $00
	ld   a, [de]                                     ; $4ec2: $1a
	nop                                              ; $4ec3: $00
	ld   a, [de]                                     ; $4ec4: $1a
	nop                                              ; $4ec5: $00
	nop                                              ; $4ec6: $00
	ld   bc, $0302                                   ; $4ec7: $01 $02 $03
	inc  b                                           ; $4eca: $04
	dec  b                                           ; $4ecb: $05
	nop                                              ; $4ecc: $00
	ld   b, $02                                      ; $4ecd: $06 $02
	rlca                                             ; $4ecf: $07
	inc  b                                           ; $4ed0: $04
	ld   [$0900], sp                                 ; $4ed1: $08 $00 $09
	ld   [bc], a                                     ; $4ed4: $02
	ld   a, [bc]                                     ; $4ed5: $0a
	inc  b                                           ; $4ed6: $04
	dec  bc                                          ; $4ed7: $0b
	inc  c                                           ; $4ed8: $0c
	dec  c                                           ; $4ed9: $0d
	ld   c, $0d                                      ; $4eda: $0e $0d
	rst  $38                                         ; $4edc: $ff
	rrca                                             ; $4edd: $0f
	db   $10                                         ; $4ede: $10
	ld   [bc], a                                     ; $4edf: $02
	ld   de, $1204                                   ; $4ee0: $11 $04 $12
	rrca                                             ; $4ee3: $0f
	inc  de                                          ; $4ee4: $13
	ld   [bc], a                                     ; $4ee5: $02
	inc  d                                           ; $4ee6: $14
	inc  b                                           ; $4ee7: $04
	dec  d                                           ; $4ee8: $15
	rrca                                             ; $4ee9: $0f
	ld   d, $02                                      ; $4eea: $16 $02
	rla                                              ; $4eec: $17
	inc  b                                           ; $4eed: $04
	jr   jr_00b_4f09                                 ; $4eee: $18 $19

	dec  c                                           ; $4ef0: $0d
	ld   a, [de]                                     ; $4ef1: $1a
	dec  c                                           ; $4ef2: $0d
	rst  $38                                         ; $4ef3: $ff
	ld   a, [de]                                     ; $4ef4: $1a
	nop                                              ; $4ef5: $00
	ld   a, [de]                                     ; $4ef6: $1a
	nop                                              ; $4ef7: $00
	ld   a, [de]                                     ; $4ef8: $1a
	nop                                              ; $4ef9: $00
	ld   a, [de]                                     ; $4efa: $1a
	nop                                              ; $4efb: $00
	ld   a, [de]                                     ; $4efc: $1a
	nop                                              ; $4efd: $00
	ld   a, [de]                                     ; $4efe: $1a
	nop                                              ; $4eff: $00
	ld   a, [de]                                     ; $4f00: $1a
	nop                                              ; $4f01: $00
	ld   a, [de]                                     ; $4f02: $1a
	nop                                              ; $4f03: $00
	ld   a, [de]                                     ; $4f04: $1a
	nop                                              ; $4f05: $00
	ld   a, [de]                                     ; $4f06: $1a
	nop                                              ; $4f07: $00
	ld   a, [de]                                     ; $4f08: $1a

jr_00b_4f09:
	nop                                              ; $4f09: $00
	ld   a, [de]                                     ; $4f0a: $1a
	nop                                              ; $4f0b: $00
	ld   a, [de]                                     ; $4f0c: $1a
	nop                                              ; $4f0d: $00
	nop                                              ; $4f0e: $00
	ld   bc, $0302                                   ; $4f0f: $01 $02 $03
	inc  b                                           ; $4f12: $04
	dec  b                                           ; $4f13: $05
	ld   b, $07                                      ; $4f14: $06 $07
	ld   [$0901], sp                                 ; $4f16: $08 $01 $09
	inc  bc                                          ; $4f19: $03
	ld   a, [bc]                                     ; $4f1a: $0a
	dec  b                                           ; $4f1b: $05
	dec  bc                                          ; $4f1c: $0b
	rlca                                             ; $4f1d: $07
	inc  c                                           ; $4f1e: $0c
	ld   bc, $030d                                   ; $4f1f: $01 $0d $03
	ld   c, $05                                      ; $4f22: $0e $05
	rrca                                             ; $4f24: $0f
	rlca                                             ; $4f25: $07
	db   $10                                         ; $4f26: $10
	ld   de, $1312                                   ; $4f27: $11 $12 $13
	inc  d                                           ; $4f2a: $14
	inc  d                                           ; $4f2b: $14
	inc  d                                           ; $4f2c: $14
	inc  d                                           ; $4f2d: $14
	inc  d                                           ; $4f2e: $14
	inc  d                                           ; $4f2f: $14
	inc  d                                           ; $4f30: $14
	inc  d                                           ; $4f31: $14
	inc  d                                           ; $4f32: $14
	inc  d                                           ; $4f33: $14
	inc  d                                           ; $4f34: $14
	inc  d                                           ; $4f35: $14
	inc  d                                           ; $4f36: $14
	inc  d                                           ; $4f37: $14
	inc  d                                           ; $4f38: $14
	inc  d                                           ; $4f39: $14
	inc  d                                           ; $4f3a: $14
	inc  d                                           ; $4f3b: $14
	inc  d                                           ; $4f3c: $14
	inc  d                                           ; $4f3d: $14
	inc  d                                           ; $4f3e: $14
	inc  d                                           ; $4f3f: $14
	inc  d                                           ; $4f40: $14
	inc  d                                           ; $4f41: $14
	inc  d                                           ; $4f42: $14
	inc  d                                           ; $4f43: $14
	inc  d                                           ; $4f44: $14
	inc  d                                           ; $4f45: $14
	inc  d                                           ; $4f46: $14
	inc  d                                           ; $4f47: $14
	inc  d                                           ; $4f48: $14
	inc  d                                           ; $4f49: $14
	inc  d                                           ; $4f4a: $14
	inc  d                                           ; $4f4b: $14
	inc  d                                           ; $4f4c: $14
	inc  d                                           ; $4f4d: $14
	rst  $38                                         ; $4f4e: $ff
	ld   a, [de]                                     ; $4f4f: $1a
	nop                                              ; $4f50: $00
	ld   d, e                                        ; $4f51: $53
	nop                                              ; $4f52: $00
	adc  h                                           ; $4f53: $8c
	nop                                              ; $4f54: $00
	push bc                                          ; $4f55: $c5
	nop                                              ; $4f56: $00
	cp   $00                                         ; $4f57: $fe $00
	scf                                              ; $4f59: $37
	ld   bc, $0170                                   ; $4f5a: $01 $70 $01
	ld   a, [de]                                     ; $4f5d: $1a
	nop                                              ; $4f5e: $00
	ld   a, [de]                                     ; $4f5f: $1a
	nop                                              ; $4f60: $00
	ld   a, [de]                                     ; $4f61: $1a
	nop                                              ; $4f62: $00
	ld   a, [de]                                     ; $4f63: $1a
	nop                                              ; $4f64: $00
	ld   a, [de]                                     ; $4f65: $1a
	nop                                              ; $4f66: $00
	ld   a, [de]                                     ; $4f67: $1a
	nop                                              ; $4f68: $00
	nop                                              ; $4f69: $00
	ld   bc, $0302                                   ; $4f6a: $01 $02 $03
	inc  b                                           ; $4f6d: $04
	dec  b                                           ; $4f6e: $05
	ld   b, $07                                      ; $4f6f: $06 $07
	ld   [$0a09], sp                                 ; $4f71: $08 $09 $0a
	dec  bc                                          ; $4f74: $0b
	inc  c                                           ; $4f75: $0c
	dec  c                                           ; $4f76: $0d
	ld   c, $0f                                      ; $4f77: $0e $0f
	nop                                              ; $4f79: $00
	ld   bc, $0302                                   ; $4f7a: $01 $02 $03
	inc  b                                           ; $4f7d: $04
	dec  b                                           ; $4f7e: $05
	ld   b, $07                                      ; $4f7f: $06 $07
	ld   [$1009], sp                                 ; $4f81: $08 $09 $10
	dec  bc                                          ; $4f84: $0b
	ld   de, $120d                                   ; $4f85: $11 $0d $12
	rrca                                             ; $4f88: $0f
	nop                                              ; $4f89: $00
	ld   bc, $0302                                   ; $4f8a: $01 $02 $03
	inc  b                                           ; $4f8d: $04
	dec  b                                           ; $4f8e: $05
	ld   b, $07                                      ; $4f8f: $06 $07
	ld   [$1309], sp                                 ; $4f91: $08 $09 $13
	dec  bc                                          ; $4f94: $0b
	ld   de, $140d                                   ; $4f95: $11 $0d $14
	rrca                                             ; $4f98: $0f
	dec  d                                           ; $4f99: $15
	ld   d, $17                                      ; $4f9a: $16 $17
	jr   jr_00b_4fb7                                 ; $4f9c: $18 $19

	ld   a, [de]                                     ; $4f9e: $1a
	dec  de                                          ; $4f9f: $1b
	jr   @+$01                                       ; $4fa0: $18 $ff

	nop                                              ; $4fa2: $00
	inc  e                                           ; $4fa3: $1c
	ld   [bc], a                                     ; $4fa4: $02
	dec  e                                           ; $4fa5: $1d
	inc  b                                           ; $4fa6: $04
	dec  b                                           ; $4fa7: $05
	ld   b, $1e                                      ; $4fa8: $06 $1e
	rra                                              ; $4faa: $1f
	add  hl, bc                                      ; $4fab: $09
	jr   nz, @+$0d                                   ; $4fac: $20 $0b

	ld   hl, $220d                                   ; $4fae: $21 $0d $22
	rrca                                             ; $4fb1: $0f
	nop                                              ; $4fb2: $00
	inc  e                                           ; $4fb3: $1c
	ld   [bc], a                                     ; $4fb4: $02
	dec  e                                           ; $4fb5: $1d
	inc  b                                           ; $4fb6: $04

jr_00b_4fb7:
	dec  b                                           ; $4fb7: $05
	ld   b, $1e                                      ; $4fb8: $06 $1e
	rra                                              ; $4fba: $1f
	add  hl, bc                                      ; $4fbb: $09
	inc  hl                                          ; $4fbc: $23
	dec  bc                                          ; $4fbd: $0b
	inc  h                                           ; $4fbe: $24
	dec  c                                           ; $4fbf: $0d
	dec  h                                           ; $4fc0: $25
	rrca                                             ; $4fc1: $0f
	nop                                              ; $4fc2: $00
	inc  e                                           ; $4fc3: $1c
	ld   [bc], a                                     ; $4fc4: $02
	dec  e                                           ; $4fc5: $1d
	inc  b                                           ; $4fc6: $04
	dec  b                                           ; $4fc7: $05
	ld   b, $1e                                      ; $4fc8: $06 $1e
	rra                                              ; $4fca: $1f
	add  hl, bc                                      ; $4fcb: $09
	ld   h, $0b                                      ; $4fcc: $26 $0b
	daa                                              ; $4fce: $27
	dec  c                                           ; $4fcf: $0d
	jr   z, @+$11                                    ; $4fd0: $28 $0f

	add  hl, hl                                      ; $4fd2: $29
	ld   d, $2a                                      ; $4fd3: $16 $2a
	jr   jr_00b_5002                                 ; $4fd5: $18 $2b

	inc  l                                           ; $4fd7: $2c
	dec  l                                           ; $4fd8: $2d
	jr   @+$01                                       ; $4fd9: $18 $ff

	nop                                              ; $4fdb: $00
	ld   l, $02                                      ; $4fdc: $2e $02
	cpl                                              ; $4fde: $2f
	inc  b                                           ; $4fdf: $04
	jr   jr_00b_4fe8                                 ; $4fe0: $18 $06

	jr   nc, jr_00b_4fec                             ; $4fe2: $30 $08

	add  hl, bc                                      ; $4fe4: $09
	ld   sp, $320b                                   ; $4fe5: $31 $0b $32

jr_00b_4fe8:
	dec  c                                           ; $4fe8: $0d
	ld   c, $0f                                      ; $4fe9: $0e $0f
	nop                                              ; $4feb: $00

jr_00b_4fec:
	ld   l, $02                                      ; $4fec: $2e $02
	cpl                                              ; $4fee: $2f
	inc  b                                           ; $4fef: $04
	jr   jr_00b_4ff8                                 ; $4ff0: $18 $06

	jr   nc, jr_00b_4ffc                             ; $4ff2: $30 $08

	add  hl, bc                                      ; $4ff4: $09
	inc  sp                                          ; $4ff5: $33
	dec  bc                                          ; $4ff6: $0b
	inc  [hl]                                        ; $4ff7: $34

jr_00b_4ff8:
	dec  c                                           ; $4ff8: $0d
	ld   [de], a                                     ; $4ff9: $12
	rrca                                             ; $4ffa: $0f
	nop                                              ; $4ffb: $00

jr_00b_4ffc:
	ld   l, $02                                      ; $4ffc: $2e $02
	cpl                                              ; $4ffe: $2f
	inc  b                                           ; $4fff: $04
	jr   jr_00b_5008                                 ; $5000: $18 $06

jr_00b_5002:
	jr   nc, @+$0a                                   ; $5002: $30 $08

	add  hl, bc                                      ; $5004: $09
	dec  [hl]                                        ; $5005: $35
	dec  bc                                          ; $5006: $0b
	inc  [hl]                                        ; $5007: $34

jr_00b_5008:
	dec  c                                           ; $5008: $0d
	inc  d                                           ; $5009: $14
	rrca                                             ; $500a: $0f
	ld   [hl], $16                                   ; $500b: $36 $16
	scf                                              ; $500d: $37
	jr   @+$3a                                       ; $500e: $18 $38

	add  hl, sp                                      ; $5010: $39
	ld   a, [hl-]                                    ; $5011: $3a
	dec  sp                                          ; $5012: $3b
	rst  $38                                         ; $5013: $ff
	nop                                              ; $5014: $00
	inc  e                                           ; $5015: $1c
	ld   [bc], a                                     ; $5016: $02
	inc  a                                           ; $5017: $3c
	inc  b                                           ; $5018: $04
	dec  a                                           ; $5019: $3d
	ld   b, $3e                                      ; $501a: $06 $3e
	ccf                                              ; $501c: $3f
	add  hl, bc                                      ; $501d: $09
	ld   b, b                                        ; $501e: $40
	dec  bc                                          ; $501f: $0b
	ld   b, c                                        ; $5020: $41
	dec  c                                           ; $5021: $0d
	ld   b, d                                        ; $5022: $42
	rrca                                             ; $5023: $0f
	nop                                              ; $5024: $00
	inc  e                                           ; $5025: $1c
	ld   [bc], a                                     ; $5026: $02
	inc  a                                           ; $5027: $3c
	inc  b                                           ; $5028: $04
	dec  a                                           ; $5029: $3d
	ld   b, $3e                                      ; $502a: $06 $3e
	ccf                                              ; $502c: $3f
	add  hl, bc                                      ; $502d: $09
	ld   b, e                                        ; $502e: $43
	dec  bc                                          ; $502f: $0b
	ld   b, h                                        ; $5030: $44
	dec  c                                           ; $5031: $0d
	ld   b, l                                        ; $5032: $45
	rrca                                             ; $5033: $0f
	nop                                              ; $5034: $00
	inc  e                                           ; $5035: $1c
	ld   [bc], a                                     ; $5036: $02
	inc  a                                           ; $5037: $3c
	inc  b                                           ; $5038: $04
	dec  a                                           ; $5039: $3d
	ld   b, $3e                                      ; $503a: $06 $3e
	ccf                                              ; $503c: $3f
	add  hl, bc                                      ; $503d: $09
	ld   b, [hl]                                     ; $503e: $46
	dec  bc                                          ; $503f: $0b
	ld   b, h                                        ; $5040: $44
	dec  c                                           ; $5041: $0d
	ld   b, a                                        ; $5042: $47
	rrca                                             ; $5043: $0f
	ld   c, b                                        ; $5044: $48
	ld   d, $49                                      ; $5045: $16 $49
	jr   jr_00b_5093                                 ; $5047: $18 $4a

	ld   c, e                                        ; $5049: $4b
	dec  de                                          ; $504a: $1b
	jr   @+$01                                       ; $504b: $18 $ff

	nop                                              ; $504d: $00
	ld   c, h                                        ; $504e: $4c
	ld   [bc], a                                     ; $504f: $02
	ld   c, l                                        ; $5050: $4d
	inc  b                                           ; $5051: $04
	ld   c, [hl]                                     ; $5052: $4e
	ld   b, $4f                                      ; $5053: $06 $4f
	rra                                              ; $5055: $1f
	add  hl, bc                                      ; $5056: $09
	ld   d, b                                        ; $5057: $50
	dec  bc                                          ; $5058: $0b
	ld   d, c                                        ; $5059: $51
	dec  c                                           ; $505a: $0d
	ld   c, $0f                                      ; $505b: $0e $0f
	nop                                              ; $505d: $00
	ld   c, h                                        ; $505e: $4c
	ld   [bc], a                                     ; $505f: $02
	ld   c, l                                        ; $5060: $4d
	inc  b                                           ; $5061: $04
	ld   c, [hl]                                     ; $5062: $4e
	ld   b, $4f                                      ; $5063: $06 $4f
	rra                                              ; $5065: $1f
	add  hl, bc                                      ; $5066: $09
	ld   d, d                                        ; $5067: $52
	dec  bc                                          ; $5068: $0b
	ld   d, e                                        ; $5069: $53
	dec  c                                           ; $506a: $0d
	ld   d, h                                        ; $506b: $54
	rrca                                             ; $506c: $0f
	nop                                              ; $506d: $00
	ld   c, h                                        ; $506e: $4c
	ld   [bc], a                                     ; $506f: $02
	ld   c, l                                        ; $5070: $4d
	inc  b                                           ; $5071: $04
	ld   c, [hl]                                     ; $5072: $4e
	ld   b, $4f                                      ; $5073: $06 $4f
	rra                                              ; $5075: $1f
	add  hl, bc                                      ; $5076: $09
	ld   d, l                                        ; $5077: $55
	dec  bc                                          ; $5078: $0b
	ld   d, e                                        ; $5079: $53
	dec  c                                           ; $507a: $0d
	ld   d, [hl]                                     ; $507b: $56
	rrca                                             ; $507c: $0f
	ld   d, a                                        ; $507d: $57
	ld   d, $17                                      ; $507e: $16 $17
	jr   jr_00b_50da                                 ; $5080: $18 $58

	ld   e, c                                        ; $5082: $59
	ld   e, d                                        ; $5083: $5a
	ld   e, e                                        ; $5084: $5b
	rst  $38                                         ; $5085: $ff
	nop                                              ; $5086: $00
	ld   e, h                                        ; $5087: $5c
	ld   [bc], a                                     ; $5088: $02
	ld   e, l                                        ; $5089: $5d
	inc  b                                           ; $508a: $04
	ld   e, [hl]                                     ; $508b: $5e
	ld   b, $5f                                      ; $508c: $06 $5f
	ld   [$6009], sp                                 ; $508e: $08 $09 $60
	dec  bc                                          ; $5091: $0b
	ld   h, c                                        ; $5092: $61

jr_00b_5093:
	dec  c                                           ; $5093: $0d
	ld   c, $0f                                      ; $5094: $0e $0f
	nop                                              ; $5096: $00
	ld   e, h                                        ; $5097: $5c
	ld   [bc], a                                     ; $5098: $02
	ld   e, l                                        ; $5099: $5d
	inc  b                                           ; $509a: $04
	ld   e, [hl]                                     ; $509b: $5e
	ld   b, $5f                                      ; $509c: $06 $5f
	ld   [$6209], sp                                 ; $509e: $08 $09 $62
	dec  bc                                          ; $50a1: $0b
	ld   h, e                                        ; $50a2: $63
	dec  c                                           ; $50a3: $0d
	ld   h, h                                        ; $50a4: $64
	rrca                                             ; $50a5: $0f
	nop                                              ; $50a6: $00
	ld   e, h                                        ; $50a7: $5c
	ld   [bc], a                                     ; $50a8: $02
	ld   e, l                                        ; $50a9: $5d
	inc  b                                           ; $50aa: $04
	ld   e, [hl]                                     ; $50ab: $5e
	ld   b, $5f                                      ; $50ac: $06 $5f
	ld   [$6509], sp                                 ; $50ae: $08 $09 $65
	dec  bc                                          ; $50b1: $0b
	ld   h, e                                        ; $50b2: $63
	dec  c                                           ; $50b3: $0d
	ld   h, [hl]                                     ; $50b4: $66
	rrca                                             ; $50b5: $0f
	ld   h, a                                        ; $50b6: $67
	ld   l, b                                        ; $50b7: $68
	ld   l, c                                        ; $50b8: $69
	jr   jr_00b_5125                                 ; $50b9: $18 $6a

	ld   l, e                                        ; $50bb: $6b
	ld   l, h                                        ; $50bc: $6c
	ld   e, e                                        ; $50bd: $5b
	rst  $38                                         ; $50be: $ff
	nop                                              ; $50bf: $00
	ld   l, $02                                      ; $50c0: $2e $02
	ld   l, l                                        ; $50c2: $6d
	inc  b                                           ; $50c3: $04
	ld   l, [hl]                                     ; $50c4: $6e
	ld   b, $6f                                      ; $50c5: $06 $6f
	ld   [hl], b                                     ; $50c7: $70
	add  hl, bc                                      ; $50c8: $09
	ld   [hl], c                                     ; $50c9: $71
	dec  bc                                          ; $50ca: $0b
	ld   [hl], d                                     ; $50cb: $72
	dec  c                                           ; $50cc: $0d
	ld   [hl], e                                     ; $50cd: $73
	rrca                                             ; $50ce: $0f
	nop                                              ; $50cf: $00
	ld   l, $02                                      ; $50d0: $2e $02
	ld   l, l                                        ; $50d2: $6d
	inc  b                                           ; $50d3: $04
	ld   [hl], h                                     ; $50d4: $74
	ld   b, $75                                      ; $50d5: $06 $75
	ld   [hl], b                                     ; $50d7: $70
	add  hl, bc                                      ; $50d8: $09
	halt                                             ; $50d9: $76

jr_00b_50da:
	dec  bc                                          ; $50da: $0b
	ld   [hl], a                                     ; $50db: $77
	dec  c                                           ; $50dc: $0d
	ld   a, b                                        ; $50dd: $78
	rrca                                             ; $50de: $0f
	nop                                              ; $50df: $00
	ld   l, $02                                      ; $50e0: $2e $02
	ld   l, l                                        ; $50e2: $6d
	inc  b                                           ; $50e3: $04
	ld   [hl], h                                     ; $50e4: $74
	ld   b, $79                                      ; $50e5: $06 $79
	ld   [hl], b                                     ; $50e7: $70
	add  hl, bc                                      ; $50e8: $09
	ld   a, d                                        ; $50e9: $7a
	dec  bc                                          ; $50ea: $0b
	ld   a, e                                        ; $50eb: $7b
	ld   a, h                                        ; $50ec: $7c
	ld   a, l                                        ; $50ed: $7d
	rrca                                             ; $50ee: $0f
	ld   a, [hl]                                     ; $50ef: $7e
	ld   a, a                                        ; $50f0: $7f
	add  b                                           ; $50f1: $80
	add  c                                           ; $50f2: $81
	add  d                                           ; $50f3: $82
	ld   d, $83                                      ; $50f4: $16 $83
	jr   @+$01                                       ; $50f6: $18 $ff

	ld   a, [de]                                     ; $50f8: $1a
	nop                                              ; $50f9: $00
	ld   d, a                                        ; $50fa: $57
	nop                                              ; $50fb: $00
	sub  h                                           ; $50fc: $94
	nop                                              ; $50fd: $00
	pop  de                                          ; $50fe: $d1
	nop                                              ; $50ff: $00
	ld   c, $01                                      ; $5100: $0e $01
	ld   c, e                                        ; $5102: $4b
	ld   bc, $0188                                   ; $5103: $01 $88 $01
	ld   a, [de]                                     ; $5106: $1a
	nop                                              ; $5107: $00
	ld   a, [de]                                     ; $5108: $1a
	nop                                              ; $5109: $00
	ld   a, [de]                                     ; $510a: $1a
	nop                                              ; $510b: $00
	ld   a, [de]                                     ; $510c: $1a
	nop                                              ; $510d: $00
	ld   a, [de]                                     ; $510e: $1a
	nop                                              ; $510f: $00
	ld   a, [de]                                     ; $5110: $1a
	nop                                              ; $5111: $00
	nop                                              ; $5112: $00
	ld   bc, $0302                                   ; $5113: $01 $02 $03
	inc  b                                           ; $5116: $04
	dec  b                                           ; $5117: $05
	ld   b, $07                                      ; $5118: $06 $07
	ld   [$0a09], sp                                 ; $511a: $08 $09 $0a
	dec  bc                                          ; $511d: $0b
	inc  c                                           ; $511e: $0c
	dec  c                                           ; $511f: $0d
	ld   c, $0f                                      ; $5120: $0e $0f
	nop                                              ; $5122: $00
	db   $10                                         ; $5123: $10
	ld   [bc], a                                     ; $5124: $02

jr_00b_5125:
	ld   de, $1204                                   ; $5125: $11 $04 $12
	ld   b, $07                                      ; $5128: $06 $07
	ld   [$0a09], sp                                 ; $512a: $08 $09 $0a
	dec  bc                                          ; $512d: $0b
	inc  c                                           ; $512e: $0c
	dec  c                                           ; $512f: $0d
	ld   c, $0f                                      ; $5130: $0e $0f
	nop                                              ; $5132: $00
	inc  de                                          ; $5133: $13
	ld   [bc], a                                     ; $5134: $02
	inc  d                                           ; $5135: $14
	inc  b                                           ; $5136: $04
	dec  d                                           ; $5137: $15
	ld   b, $07                                      ; $5138: $06 $07
	ld   [$0a09], sp                                 ; $513a: $08 $09 $0a
	dec  bc                                          ; $513d: $0b
	inc  c                                           ; $513e: $0c
	dec  c                                           ; $513f: $0d
	ld   c, $0f                                      ; $5140: $0e $0f
	ld   d, $17                                      ; $5142: $16 $17
	jr   jr_00b_515f                                 ; $5144: $18 $19

	ld   a, [de]                                     ; $5146: $1a
	dec  de                                          ; $5147: $1b
	ld   d, $17                                      ; $5148: $16 $17
	jr   @+$1e                                       ; $514a: $18 $1c

	ld   a, [de]                                     ; $514c: $1a
	dec  e                                           ; $514d: $1d
	rst  $38                                         ; $514e: $ff
	ld   e, $1f                                      ; $514f: $1e $1f
	jr   nz, jr_00b_5174                             ; $5151: $20 $21

	ld   [hl+], a                                    ; $5153: $22
	inc  hl                                          ; $5154: $23
	ld   b, $24                                      ; $5155: $06 $24
	ld   [$0a09], sp                                 ; $5157: $08 $09 $0a
	dec  bc                                          ; $515a: $0b
	inc  c                                           ; $515b: $0c
	dec  c                                           ; $515c: $0d
	ld   c, $0f                                      ; $515d: $0e $0f

jr_00b_515f:
	ld   e, $25                                      ; $515f: $1e $25
	jr   nz, jr_00b_5189                             ; $5161: $20 $26

	ld   [hl+], a                                    ; $5163: $22
	daa                                              ; $5164: $27
	ld   b, $24                                      ; $5165: $06 $24
	ld   [$0a09], sp                                 ; $5167: $08 $09 $0a
	dec  bc                                          ; $516a: $0b
	inc  c                                           ; $516b: $0c
	dec  c                                           ; $516c: $0d
	ld   c, $0f                                      ; $516d: $0e $0f
	ld   e, $28                                      ; $516f: $1e $28
	jr   nz, jr_00b_519c                             ; $5171: $20 $29

	ld   [hl+], a                                    ; $5173: $22

jr_00b_5174:
	ld   a, [hl+]                                    ; $5174: $2a
	ld   b, $24                                      ; $5175: $06 $24
	ld   [$0a09], sp                                 ; $5177: $08 $09 $0a
	dec  bc                                          ; $517a: $0b
	inc  c                                           ; $517b: $0c
	dec  c                                           ; $517c: $0d
	ld   c, $0f                                      ; $517d: $0e $0f
	ld   d, $17                                      ; $517f: $16 $17
	jr   jr_00b_519c                                 ; $5181: $18 $19

	dec  hl                                          ; $5183: $2b
	inc  l                                           ; $5184: $2c
	ld   d, $2d                                      ; $5185: $16 $2d
	ld   l, $2f                                      ; $5187: $2e $2f

jr_00b_5189:
	jr   nc, jr_00b_51bc                             ; $5189: $30 $31

	rst  $38                                         ; $518b: $ff
	nop                                              ; $518c: $00
	ld   [hl-], a                                    ; $518d: $32
	ld   [bc], a                                     ; $518e: $02
	inc  sp                                          ; $518f: $33
	inc  [hl]                                        ; $5190: $34
	dec  [hl]                                        ; $5191: $35
	ld   b, $07                                      ; $5192: $06 $07
	ld   [$0a09], sp                                 ; $5194: $08 $09 $0a
	dec  bc                                          ; $5197: $0b
	inc  c                                           ; $5198: $0c
	dec  c                                           ; $5199: $0d
	ld   c, $0f                                      ; $519a: $0e $0f

jr_00b_519c:
	nop                                              ; $519c: $00
	ld   [hl], $02                                   ; $519d: $36 $02
	scf                                              ; $519f: $37
	inc  [hl]                                        ; $51a0: $34
	jr   c, jr_00b_51a9                              ; $51a1: $38 $06

	rlca                                             ; $51a3: $07
	ld   [$0a09], sp                                 ; $51a4: $08 $09 $0a
	dec  bc                                          ; $51a7: $0b
	inc  c                                           ; $51a8: $0c

jr_00b_51a9:
	dec  c                                           ; $51a9: $0d
	ld   c, $0f                                      ; $51aa: $0e $0f
	nop                                              ; $51ac: $00
	add  hl, sp                                      ; $51ad: $39
	ld   [bc], a                                     ; $51ae: $02
	ld   a, [hl-]                                    ; $51af: $3a
	inc  [hl]                                        ; $51b0: $34
	dec  sp                                          ; $51b1: $3b
	ld   b, $07                                      ; $51b2: $06 $07
	ld   [$0a09], sp                                 ; $51b4: $08 $09 $0a
	dec  bc                                          ; $51b7: $0b
	inc  c                                           ; $51b8: $0c
	dec  c                                           ; $51b9: $0d
	ld   c, $0f                                      ; $51ba: $0e $0f

jr_00b_51bc:
	ld   d, $17                                      ; $51bc: $16 $17
	jr   jr_00b_51fc                                 ; $51be: $18 $3c

	dec  a                                           ; $51c0: $3d
	ld   a, $16                                      ; $51c1: $3e $16
	ccf                                              ; $51c3: $3f
	jr   jr_00b_5206                                 ; $51c4: $18 $40

	ld   b, c                                        ; $51c6: $41
	ld   b, d                                        ; $51c7: $42
	rst  $38                                         ; $51c8: $ff
	ld   b, e                                        ; $51c9: $43
	ld   b, h                                        ; $51ca: $44
	ld   b, l                                        ; $51cb: $45
	ld   b, [hl]                                     ; $51cc: $46
	ld   b, a                                        ; $51cd: $47
	ld   c, b                                        ; $51ce: $48
	ld   b, $24                                      ; $51cf: $06 $24
	ld   [$0a09], sp                                 ; $51d1: $08 $09 $0a
	dec  bc                                          ; $51d4: $0b
	inc  c                                           ; $51d5: $0c
	dec  c                                           ; $51d6: $0d
	ld   c, $0f                                      ; $51d7: $0e $0f
	ld   b, e                                        ; $51d9: $43
	ld   c, c                                        ; $51da: $49
	ld   b, l                                        ; $51db: $45
	ld   c, d                                        ; $51dc: $4a
	ld   b, a                                        ; $51dd: $47
	ld   c, e                                        ; $51de: $4b
	ld   b, $24                                      ; $51df: $06 $24
	ld   [$0a09], sp                                 ; $51e1: $08 $09 $0a
	dec  bc                                          ; $51e4: $0b
	inc  c                                           ; $51e5: $0c
	dec  c                                           ; $51e6: $0d
	ld   c, $0f                                      ; $51e7: $0e $0f
	ld   b, e                                        ; $51e9: $43
	ld   c, h                                        ; $51ea: $4c
	ld   b, l                                        ; $51eb: $45
	ld   c, l                                        ; $51ec: $4d
	ld   b, a                                        ; $51ed: $47
	ld   c, [hl]                                     ; $51ee: $4e
	ld   b, $24                                      ; $51ef: $06 $24
	ld   [$0a09], sp                                 ; $51f1: $08 $09 $0a
	dec  bc                                          ; $51f4: $0b
	inc  c                                           ; $51f5: $0c
	dec  c                                           ; $51f6: $0d
	ld   c, $0f                                      ; $51f7: $0e $0f
	ld   d, $4f                                      ; $51f9: $16 $4f
	ld   d, b                                        ; $51fb: $50

jr_00b_51fc:
	ld   d, c                                        ; $51fc: $51
	ld   d, d                                        ; $51fd: $52
	ld   d, e                                        ; $51fe: $53
	ld   d, $4f                                      ; $51ff: $16 $4f
	ld   d, h                                        ; $5201: $54
	ld   d, l                                        ; $5202: $55
	ld   d, [hl]                                     ; $5203: $56
	ld   d, a                                        ; $5204: $57
	rst  $38                                         ; $5205: $ff

jr_00b_5206:
	ld   e, b                                        ; $5206: $58
	ld   e, c                                        ; $5207: $59
	ld   b, l                                        ; $5208: $45
	ld   e, d                                        ; $5209: $5a
	ld   e, e                                        ; $520a: $5b
	ld   e, h                                        ; $520b: $5c
	ld   b, $5d                                      ; $520c: $06 $5d
	ld   [$0a09], sp                                 ; $520e: $08 $09 $0a
	dec  bc                                          ; $5211: $0b
	inc  c                                           ; $5212: $0c
	dec  c                                           ; $5213: $0d
	ld   c, $0f                                      ; $5214: $0e $0f
	ld   e, b                                        ; $5216: $58
	ld   e, [hl]                                     ; $5217: $5e
	ld   b, l                                        ; $5218: $45
	ld   e, a                                        ; $5219: $5f
	ld   e, e                                        ; $521a: $5b
	ld   h, b                                        ; $521b: $60
	ld   b, $5d                                      ; $521c: $06 $5d
	ld   [$0a09], sp                                 ; $521e: $08 $09 $0a
	dec  bc                                          ; $5221: $0b
	inc  c                                           ; $5222: $0c
	dec  c                                           ; $5223: $0d
	ld   c, $0f                                      ; $5224: $0e $0f
	ld   e, b                                        ; $5226: $58
	ld   h, c                                        ; $5227: $61
	ld   b, l                                        ; $5228: $45
	ld   h, d                                        ; $5229: $62
	ld   e, e                                        ; $522a: $5b
	ld   h, e                                        ; $522b: $63
	ld   b, $5d                                      ; $522c: $06 $5d
	ld   [$0a09], sp                                 ; $522e: $08 $09 $0a
	dec  bc                                          ; $5231: $0b
	inc  c                                           ; $5232: $0c
	dec  c                                           ; $5233: $0d
	ld   c, $0f                                      ; $5234: $0e $0f
	ld   d, $3f                                      ; $5236: $16 $3f
	jr   jr_00b_5276                                 ; $5238: $18 $3c

	ld   h, h                                        ; $523a: $64
	ld   h, l                                        ; $523b: $65
	ld   d, $3f                                      ; $523c: $16 $3f
	jr   jr_00b_52a6                                 ; $523e: $18 $66

	ld   h, h                                        ; $5240: $64
	ld   h, a                                        ; $5241: $67
	rst  $38                                         ; $5242: $ff
	nop                                              ; $5243: $00
	ld   bc, $0302                                   ; $5244: $01 $02 $03
	inc  b                                           ; $5247: $04
	dec  b                                           ; $5248: $05
	ld   b, $07                                      ; $5249: $06 $07
	ld   l, b                                        ; $524b: $68
	add  hl, bc                                      ; $524c: $09
	ld   l, c                                        ; $524d: $69
	dec  bc                                          ; $524e: $0b
	ld   l, d                                        ; $524f: $6a
	dec  c                                           ; $5250: $0d
	ld   l, e                                        ; $5251: $6b
	rrca                                             ; $5252: $0f
	nop                                              ; $5253: $00
	db   $10                                         ; $5254: $10
	ld   [bc], a                                     ; $5255: $02
	ld   de, $1204                                   ; $5256: $11 $04 $12
	ld   b, $07                                      ; $5259: $06 $07
	ld   l, b                                        ; $525b: $68
	add  hl, bc                                      ; $525c: $09
	ld   l, c                                        ; $525d: $69
	dec  bc                                          ; $525e: $0b
	ld   l, d                                        ; $525f: $6a
	dec  c                                           ; $5260: $0d
	ld   l, e                                        ; $5261: $6b
	rrca                                             ; $5262: $0f
	nop                                              ; $5263: $00
	inc  de                                          ; $5264: $13
	ld   [bc], a                                     ; $5265: $02
	inc  d                                           ; $5266: $14
	inc  b                                           ; $5267: $04
	dec  d                                           ; $5268: $15
	ld   b, $07                                      ; $5269: $06 $07
	ld   l, b                                        ; $526b: $68
	add  hl, bc                                      ; $526c: $09
	ld   l, c                                        ; $526d: $69
	dec  bc                                          ; $526e: $0b
	ld   l, d                                        ; $526f: $6a
	dec  c                                           ; $5270: $0d
	ld   l, e                                        ; $5271: $6b
	rrca                                             ; $5272: $0f
	ld   l, h                                        ; $5273: $6c
	rla                                              ; $5274: $17
	ld   l, l                                        ; $5275: $6d

jr_00b_5276:
	ld   l, [hl]                                     ; $5276: $6e
	ld   l, a                                        ; $5277: $6f
	ld   [hl], b                                     ; $5278: $70
	ld   l, h                                        ; $5279: $6c
	rla                                              ; $527a: $17
	ld   l, l                                        ; $527b: $6d
	ld   [hl], c                                     ; $527c: $71
	ld   [hl], d                                     ; $527d: $72
	ld   [hl], e                                     ; $527e: $73
	rst  $38                                         ; $527f: $ff
	ld   e, b                                        ; $5280: $58
	ld   [hl], h                                     ; $5281: $74
	ld   b, l                                        ; $5282: $45
	ld   [hl], l                                     ; $5283: $75
	halt                                             ; $5284: $76
	ld   [hl], a                                     ; $5285: $77
	ld   b, $78                                      ; $5286: $06 $78
	ld   l, b                                        ; $5288: $68
	add  hl, bc                                      ; $5289: $09
	ld   l, c                                        ; $528a: $69
	dec  bc                                          ; $528b: $0b
	ld   l, d                                        ; $528c: $6a
	dec  c                                           ; $528d: $0d
	ld   l, e                                        ; $528e: $6b
	rrca                                             ; $528f: $0f
	ld   e, b                                        ; $5290: $58
	ld   a, c                                        ; $5291: $79
	ld   b, l                                        ; $5292: $45
	ld   a, d                                        ; $5293: $7a
	halt                                             ; $5294: $76
	ld   a, e                                        ; $5295: $7b
	ld   b, $7c                                      ; $5296: $06 $7c
	ld   l, b                                        ; $5298: $68
	add  hl, bc                                      ; $5299: $09
	ld   l, c                                        ; $529a: $69
	dec  bc                                          ; $529b: $0b
	ld   l, d                                        ; $529c: $6a
	dec  c                                           ; $529d: $0d
	ld   l, e                                        ; $529e: $6b
	rrca                                             ; $529f: $0f
	ld   e, b                                        ; $52a0: $58
	ld   a, l                                        ; $52a1: $7d
	ld   b, l                                        ; $52a2: $45
	ld   a, [hl]                                     ; $52a3: $7e
	halt                                             ; $52a4: $76
	ld   a, a                                        ; $52a5: $7f

jr_00b_52a6:
	ld   b, $7c                                      ; $52a6: $06 $7c
	ld   l, b                                        ; $52a8: $68
	add  hl, bc                                      ; $52a9: $09
	ld   l, c                                        ; $52aa: $69
	dec  bc                                          ; $52ab: $0b
	ld   l, d                                        ; $52ac: $6a
	dec  c                                           ; $52ad: $0d
	ld   l, e                                        ; $52ae: $6b
	rrca                                             ; $52af: $0f
	add  b                                           ; $52b0: $80
	add  c                                           ; $52b1: $81
	add  d                                           ; $52b2: $82
	add  e                                           ; $52b3: $83
	add  h                                           ; $52b4: $84
	add  l                                           ; $52b5: $85
	add  b                                           ; $52b6: $80
	add  c                                           ; $52b7: $81
	add  d                                           ; $52b8: $82
	add  [hl]                                        ; $52b9: $86
	add  a                                           ; $52ba: $87
	adc  b                                           ; $52bb: $88
	rst  $38                                         ; $52bc: $ff
	ld   a, [de]                                     ; $52bd: $1a
	nop                                              ; $52be: $00
	ld   d, a                                        ; $52bf: $57
	nop                                              ; $52c0: $00
	sub  h                                           ; $52c1: $94
	nop                                              ; $52c2: $00
	pop  de                                          ; $52c3: $d1
	nop                                              ; $52c4: $00
	ld   c, $01                                      ; $52c5: $0e $01
	ld   c, e                                        ; $52c7: $4b
	ld   bc, $0188                                   ; $52c8: $01 $88 $01
	ld   a, [de]                                     ; $52cb: $1a
	nop                                              ; $52cc: $00
	ld   a, [de]                                     ; $52cd: $1a
	nop                                              ; $52ce: $00
	ld   a, [de]                                     ; $52cf: $1a
	nop                                              ; $52d0: $00
	ld   a, [de]                                     ; $52d1: $1a
	nop                                              ; $52d2: $00
	ld   a, [de]                                     ; $52d3: $1a
	nop                                              ; $52d4: $00
	ld   a, [de]                                     ; $52d5: $1a
	nop                                              ; $52d6: $00
	nop                                              ; $52d7: $00
	ld   bc, $0200                                   ; $52d8: $01 $00 $02
	nop                                              ; $52db: $00
	inc  bc                                          ; $52dc: $03
	nop                                              ; $52dd: $00
	inc  b                                           ; $52de: $04
	dec  b                                           ; $52df: $05
	ld   b, $07                                      ; $52e0: $06 $07
	ld   [$0a09], sp                                 ; $52e2: $08 $09 $0a
	dec  bc                                          ; $52e5: $0b
	inc  c                                           ; $52e6: $0c
	nop                                              ; $52e7: $00
	dec  c                                           ; $52e8: $0d
	nop                                              ; $52e9: $00
	ld   c, $00                                      ; $52ea: $0e $00
	rrca                                             ; $52ec: $0f
	nop                                              ; $52ed: $00
	inc  b                                           ; $52ee: $04
	dec  b                                           ; $52ef: $05
	ld   b, $07                                      ; $52f0: $06 $07
	ld   [$0a09], sp                                 ; $52f2: $08 $09 $0a
	dec  bc                                          ; $52f5: $0b
	inc  c                                           ; $52f6: $0c
	nop                                              ; $52f7: $00
	stop                                             ; $52f8: $10 $00
	ld   de, $1200                                   ; $52fa: $11 $00 $12
	nop                                              ; $52fd: $00
	inc  b                                           ; $52fe: $04
	dec  b                                           ; $52ff: $05
	ld   b, $07                                      ; $5300: $06 $07
	ld   [$0a09], sp                                 ; $5302: $08 $09 $0a
	dec  bc                                          ; $5305: $0b
	inc  c                                           ; $5306: $0c
	inc  de                                          ; $5307: $13
	inc  d                                           ; $5308: $14
	dec  d                                           ; $5309: $15
	ld   d, $17                                      ; $530a: $16 $17
	jr   @+$15                                       ; $530c: $18 $13

	inc  d                                           ; $530e: $14
	dec  d                                           ; $530f: $15
	add  hl, de                                      ; $5310: $19
	rla                                              ; $5311: $17
	ld   a, [de]                                     ; $5312: $1a
	rst  $38                                         ; $5313: $ff
	nop                                              ; $5314: $00
	dec  de                                          ; $5315: $1b
	nop                                              ; $5316: $00
	inc  e                                           ; $5317: $1c
	nop                                              ; $5318: $00
	dec  e                                           ; $5319: $1d
	nop                                              ; $531a: $00
	inc  b                                           ; $531b: $04
	dec  b                                           ; $531c: $05
	ld   b, $07                                      ; $531d: $06 $07
	ld   [$0a09], sp                                 ; $531f: $08 $09 $0a
	dec  bc                                          ; $5322: $0b
	inc  c                                           ; $5323: $0c
	nop                                              ; $5324: $00
	ld   e, $00                                      ; $5325: $1e $00
	rra                                              ; $5327: $1f
	nop                                              ; $5328: $00
	jr   nz, jr_00b_532b                             ; $5329: $20 $00

jr_00b_532b:
	inc  b                                           ; $532b: $04
	dec  b                                           ; $532c: $05
	ld   b, $07                                      ; $532d: $06 $07
	ld   [$0a09], sp                                 ; $532f: $08 $09 $0a
	dec  bc                                          ; $5332: $0b
	inc  c                                           ; $5333: $0c
	nop                                              ; $5334: $00
	ld   hl, $2200                                   ; $5335: $21 $00 $22
	nop                                              ; $5338: $00
	inc  hl                                          ; $5339: $23
	nop                                              ; $533a: $00
	inc  b                                           ; $533b: $04
	dec  b                                           ; $533c: $05
	ld   b, $07                                      ; $533d: $06 $07
	ld   [$0a09], sp                                 ; $533f: $08 $09 $0a
	dec  bc                                          ; $5342: $0b
	inc  c                                           ; $5343: $0c
	inc  de                                          ; $5344: $13
	inc  d                                           ; $5345: $14
	dec  d                                           ; $5346: $15
	ld   d, $24                                      ; $5347: $16 $24
	dec  h                                           ; $5349: $25
	inc  de                                          ; $534a: $13
	ld   h, $27                                      ; $534b: $26 $27
	jr   z, jr_00b_5378                              ; $534d: $28 $29

	ld   a, [hl+]                                    ; $534f: $2a
	rst  $38                                         ; $5350: $ff
	nop                                              ; $5351: $00
	dec  hl                                          ; $5352: $2b
	nop                                              ; $5353: $00
	inc  l                                           ; $5354: $2c
	nop                                              ; $5355: $00
	dec  l                                           ; $5356: $2d
	nop                                              ; $5357: $00
	inc  b                                           ; $5358: $04
	dec  b                                           ; $5359: $05
	ld   b, $07                                      ; $535a: $06 $07
	ld   [$0a09], sp                                 ; $535c: $08 $09 $0a
	dec  bc                                          ; $535f: $0b
	inc  c                                           ; $5360: $0c
	nop                                              ; $5361: $00
	ld   l, $00                                      ; $5362: $2e $00
	cpl                                              ; $5364: $2f
	nop                                              ; $5365: $00
	jr   nc, jr_00b_5368                             ; $5366: $30 $00

jr_00b_5368:
	inc  b                                           ; $5368: $04
	dec  b                                           ; $5369: $05
	ld   b, $07                                      ; $536a: $06 $07
	ld   [$0a09], sp                                 ; $536c: $08 $09 $0a
	dec  bc                                          ; $536f: $0b
	inc  c                                           ; $5370: $0c
	nop                                              ; $5371: $00
	ld   sp, $3200                                   ; $5372: $31 $00 $32
	nop                                              ; $5375: $00
	inc  sp                                          ; $5376: $33
	nop                                              ; $5377: $00

jr_00b_5378:
	inc  b                                           ; $5378: $04
	dec  b                                           ; $5379: $05
	ld   b, $07                                      ; $537a: $06 $07
	ld   [$0a09], sp                                 ; $537c: $08 $09 $0a
	dec  bc                                          ; $537f: $0b
	inc  c                                           ; $5380: $0c
	inc  de                                          ; $5381: $13
	inc  d                                           ; $5382: $14
	dec  d                                           ; $5383: $15
	inc  [hl]                                        ; $5384: $34
	dec  [hl]                                        ; $5385: $35
	ld   [hl], $13                                   ; $5386: $36 $13
	scf                                              ; $5388: $37
	dec  d                                           ; $5389: $15
	jr   c, jr_00b_53c5                              ; $538a: $38 $39

	ld   a, [hl-]                                    ; $538c: $3a
	rst  $38                                         ; $538d: $ff
	nop                                              ; $538e: $00
	dec  sp                                          ; $538f: $3b
	nop                                              ; $5390: $00
	inc  a                                           ; $5391: $3c
	nop                                              ; $5392: $00
	dec  a                                           ; $5393: $3d
	nop                                              ; $5394: $00
	inc  b                                           ; $5395: $04
	dec  b                                           ; $5396: $05
	ld   b, $07                                      ; $5397: $06 $07
	ld   [$0a09], sp                                 ; $5399: $08 $09 $0a
	dec  bc                                          ; $539c: $0b
	inc  c                                           ; $539d: $0c
	nop                                              ; $539e: $00
	ld   a, $00                                      ; $539f: $3e $00
	ccf                                              ; $53a1: $3f
	nop                                              ; $53a2: $00
	ld   b, b                                        ; $53a3: $40
	nop                                              ; $53a4: $00
	inc  b                                           ; $53a5: $04
	dec  b                                           ; $53a6: $05
	ld   b, $07                                      ; $53a7: $06 $07
	ld   [$0a09], sp                                 ; $53a9: $08 $09 $0a
	dec  bc                                          ; $53ac: $0b
	inc  c                                           ; $53ad: $0c
	nop                                              ; $53ae: $00
	ld   hl, $4100                                   ; $53af: $21 $00 $41
	nop                                              ; $53b2: $00
	ld   [de], a                                     ; $53b3: $12
	nop                                              ; $53b4: $00
	inc  b                                           ; $53b5: $04
	dec  b                                           ; $53b6: $05
	ld   b, $07                                      ; $53b7: $06 $07
	ld   [$0a09], sp                                 ; $53b9: $08 $09 $0a
	dec  bc                                          ; $53bc: $0b
	inc  c                                           ; $53bd: $0c
	inc  de                                          ; $53be: $13
	ld   b, d                                        ; $53bf: $42
	ld   b, e                                        ; $53c0: $43
	ld   b, h                                        ; $53c1: $44
	ld   b, l                                        ; $53c2: $45
	ld   b, [hl]                                     ; $53c3: $46
	inc  de                                          ; $53c4: $13

jr_00b_53c5:
	ld   b, d                                        ; $53c5: $42
	ld   b, a                                        ; $53c6: $47
	ld   c, b                                        ; $53c7: $48
	ld   c, c                                        ; $53c8: $49
	ld   c, d                                        ; $53c9: $4a
	rst  $38                                         ; $53ca: $ff
	nop                                              ; $53cb: $00
	ld   c, e                                        ; $53cc: $4b
	nop                                              ; $53cd: $00
	ld   c, h                                        ; $53ce: $4c
	nop                                              ; $53cf: $00
	ld   c, l                                        ; $53d0: $4d
	nop                                              ; $53d1: $00
	ld   c, [hl]                                     ; $53d2: $4e
	dec  b                                           ; $53d3: $05
	ld   b, $07                                      ; $53d4: $06 $07
	ld   [$0a09], sp                                 ; $53d6: $08 $09 $0a
	dec  bc                                          ; $53d9: $0b
	inc  c                                           ; $53da: $0c
	nop                                              ; $53db: $00
	ld   c, a                                        ; $53dc: $4f
	nop                                              ; $53dd: $00
	ld   d, b                                        ; $53de: $50
	nop                                              ; $53df: $00
	ld   d, c                                        ; $53e0: $51
	nop                                              ; $53e1: $00
	ld   c, [hl]                                     ; $53e2: $4e
	dec  b                                           ; $53e3: $05
	ld   b, $07                                      ; $53e4: $06 $07
	ld   [$0a09], sp                                 ; $53e6: $08 $09 $0a
	dec  bc                                          ; $53e9: $0b
	inc  c                                           ; $53ea: $0c
	nop                                              ; $53eb: $00
	ld   d, d                                        ; $53ec: $52
	nop                                              ; $53ed: $00
	ld   d, e                                        ; $53ee: $53
	nop                                              ; $53ef: $00
	ld   d, h                                        ; $53f0: $54
	nop                                              ; $53f1: $00
	ld   c, [hl]                                     ; $53f2: $4e
	dec  b                                           ; $53f3: $05
	ld   b, $07                                      ; $53f4: $06 $07
	ld   [$0a09], sp                                 ; $53f6: $08 $09 $0a
	dec  bc                                          ; $53f9: $0b
	inc  c                                           ; $53fa: $0c
	inc  de                                          ; $53fb: $13
	scf                                              ; $53fc: $37
	dec  d                                           ; $53fd: $15
	inc  [hl]                                        ; $53fe: $34
	ld   d, l                                        ; $53ff: $55
	ld   d, [hl]                                     ; $5400: $56
	inc  de                                          ; $5401: $13
	scf                                              ; $5402: $37
	dec  d                                           ; $5403: $15
	ld   d, a                                        ; $5404: $57
	ld   d, l                                        ; $5405: $55
	ld   e, b                                        ; $5406: $58
	rst  $38                                         ; $5407: $ff
	nop                                              ; $5408: $00
	ld   bc, $5900                                   ; $5409: $01 $00 $59
	nop                                              ; $540c: $00
	inc  bc                                          ; $540d: $03
	nop                                              ; $540e: $00
	inc  b                                           ; $540f: $04
	ld   e, d                                        ; $5410: $5a
	ld   b, $5b                                      ; $5411: $06 $5b
	ld   [$0a5c], sp                                 ; $5413: $08 $5c $0a
	ld   e, l                                        ; $5416: $5d
	inc  c                                           ; $5417: $0c
	nop                                              ; $5418: $00
	dec  c                                           ; $5419: $0d
	nop                                              ; $541a: $00
	ld   e, [hl]                                     ; $541b: $5e
	nop                                              ; $541c: $00
	rrca                                             ; $541d: $0f
	nop                                              ; $541e: $00
	inc  b                                           ; $541f: $04
	ld   e, d                                        ; $5420: $5a
	ld   b, $5b                                      ; $5421: $06 $5b
	ld   [$0a5c], sp                                 ; $5423: $08 $5c $0a
	ld   e, l                                        ; $5426: $5d
	inc  c                                           ; $5427: $0c
	nop                                              ; $5428: $00
	stop                                             ; $5429: $10 $00
	ld   e, a                                        ; $542b: $5f
	nop                                              ; $542c: $00
	ld   [de], a                                     ; $542d: $12
	nop                                              ; $542e: $00
	inc  b                                           ; $542f: $04
	ld   e, d                                        ; $5430: $5a
	ld   b, $5b                                      ; $5431: $06 $5b
	ld   [$0a5c], sp                                 ; $5433: $08 $5c $0a
	ld   e, l                                        ; $5436: $5d
	inc  c                                           ; $5437: $0c
	ld   h, b                                        ; $5438: $60
	inc  d                                           ; $5439: $14
	ld   h, c                                        ; $543a: $61
	ld   h, d                                        ; $543b: $62
	ld   h, e                                        ; $543c: $63
	ld   h, h                                        ; $543d: $64
	ld   h, b                                        ; $543e: $60
	inc  d                                           ; $543f: $14
	ld   h, c                                        ; $5440: $61
	ld   h, l                                        ; $5441: $65
	ld   h, [hl]                                     ; $5442: $66
	ld   h, a                                        ; $5443: $67
	rst  $38                                         ; $5444: $ff
	nop                                              ; $5445: $00
	ld   l, b                                        ; $5446: $68
	nop                                              ; $5447: $00
	ld   l, c                                        ; $5448: $69
	nop                                              ; $5449: $00
	ld   l, d                                        ; $544a: $6a
	nop                                              ; $544b: $00
	ld   l, e                                        ; $544c: $6b
	ld   e, d                                        ; $544d: $5a
	ld   b, $5b                                      ; $544e: $06 $5b
	ld   [$0a5c], sp                                 ; $5450: $08 $5c $0a
	ld   e, l                                        ; $5453: $5d
	inc  c                                           ; $5454: $0c
	nop                                              ; $5455: $00
	ld   l, h                                        ; $5456: $6c
	nop                                              ; $5457: $00
	ld   l, l                                        ; $5458: $6d
	nop                                              ; $5459: $00
	ld   l, [hl]                                     ; $545a: $6e
	nop                                              ; $545b: $00
	ld   l, a                                        ; $545c: $6f
	ld   e, d                                        ; $545d: $5a
	ld   b, $5b                                      ; $545e: $06 $5b
	ld   [$0a5c], sp                                 ; $5460: $08 $5c $0a
	ld   e, l                                        ; $5463: $5d
	inc  c                                           ; $5464: $0c
	nop                                              ; $5465: $00
	ld   [hl], b                                     ; $5466: $70
	nop                                              ; $5467: $00
	ld   [hl], c                                     ; $5468: $71
	nop                                              ; $5469: $00
	ld   [hl], d                                     ; $546a: $72
	nop                                              ; $546b: $00
	ld   l, a                                        ; $546c: $6f
	ld   e, d                                        ; $546d: $5a
	ld   b, $5b                                      ; $546e: $06 $5b
	ld   [$0a5c], sp                                 ; $5470: $08 $5c $0a
	ld   e, l                                        ; $5473: $5d
	inc  c                                           ; $5474: $0c
	ld   [hl], e                                     ; $5475: $73
	ld   [hl], h                                     ; $5476: $74
	ld   [hl], l                                     ; $5477: $75
	halt                                             ; $5478: $76
	ld   [hl], a                                     ; $5479: $77
	ld   a, b                                        ; $547a: $78
	ld   [hl], e                                     ; $547b: $73
	ld   [hl], h                                     ; $547c: $74
	ld   [hl], l                                     ; $547d: $75
	ld   a, c                                        ; $547e: $79
	ld   a, d                                        ; $547f: $7a
	ld   a, e                                        ; $5480: $7b
	rst  $38                                         ; $5481: $ff
	ld   a, [de]                                     ; $5482: $1a
	nop                                              ; $5483: $00
	scf                                              ; $5484: $37
	nop                                              ; $5485: $00
	ld   d, h                                        ; $5486: $54
	nop                                              ; $5487: $00
	ld   [hl], c                                     ; $5488: $71
	nop                                              ; $5489: $00
	adc  [hl]                                        ; $548a: $8e
	nop                                              ; $548b: $00
	xor  e                                           ; $548c: $ab
	nop                                              ; $548d: $00
	ld   a, [de]                                     ; $548e: $1a
	nop                                              ; $548f: $00
	ld   a, [de]                                     ; $5490: $1a
	nop                                              ; $5491: $00
	ld   a, [de]                                     ; $5492: $1a
	nop                                              ; $5493: $00
	ld   a, [de]                                     ; $5494: $1a
	nop                                              ; $5495: $00
	ld   a, [de]                                     ; $5496: $1a
	nop                                              ; $5497: $00
	ld   a, [de]                                     ; $5498: $1a
	nop                                              ; $5499: $00
	ld   a, [de]                                     ; $549a: $1a
	nop                                              ; $549b: $00
	nop                                              ; $549c: $00
	ld   bc, $0302                                   ; $549d: $01 $02 $03
	inc  b                                           ; $54a0: $04
	dec  b                                           ; $54a1: $05
	ld   b, $07                                      ; $54a2: $06 $07
	ld   [$0901], sp                                 ; $54a4: $08 $01 $09
	inc  bc                                          ; $54a7: $03
	ld   a, [bc]                                     ; $54a8: $0a
	dec  b                                           ; $54a9: $05
	dec  bc                                          ; $54aa: $0b
	rlca                                             ; $54ab: $07
	inc  c                                           ; $54ac: $0c
	ld   bc, $030d                                   ; $54ad: $01 $0d $03
	ld   c, $05                                      ; $54b0: $0e $05
	rrca                                             ; $54b2: $0f
	rlca                                             ; $54b3: $07
	db   $10                                         ; $54b4: $10
	ld   de, $1312                                   ; $54b5: $11 $12 $13
	rst  $38                                         ; $54b8: $ff
	inc  d                                           ; $54b9: $14
	ld   bc, $0315                                   ; $54ba: $01 $15 $03
	ld   d, $05                                      ; $54bd: $16 $05
	rrca                                             ; $54bf: $0f
	rlca                                             ; $54c0: $07
	inc  d                                           ; $54c1: $14
	ld   bc, $0315                                   ; $54c2: $01 $15 $03
	ld   d, $05                                      ; $54c5: $16 $05
	rrca                                             ; $54c7: $0f
	rlca                                             ; $54c8: $07
	inc  d                                           ; $54c9: $14
	ld   bc, $0315                                   ; $54ca: $01 $15 $03
	ld   d, $05                                      ; $54cd: $16 $05
	rrca                                             ; $54cf: $0f
	rlca                                             ; $54d0: $07
	rla                                              ; $54d1: $17
	ld   de, $1918                                   ; $54d2: $11 $18 $19
	rst  $38                                         ; $54d5: $ff
	nop                                              ; $54d6: $00
	ld   bc, $031a                                   ; $54d7: $01 $1a $03
	inc  b                                           ; $54da: $04
	dec  b                                           ; $54db: $05
	ld   b, $07                                      ; $54dc: $06 $07
	ld   [$1b01], sp                                 ; $54de: $08 $01 $1b
	inc  bc                                          ; $54e1: $03
	ld   a, [bc]                                     ; $54e2: $0a
	dec  b                                           ; $54e3: $05
	inc  e                                           ; $54e4: $1c
	rlca                                             ; $54e5: $07
	inc  c                                           ; $54e6: $0c
	ld   bc, $031d                                   ; $54e7: $01 $1d $03
	ld   c, $05                                      ; $54ea: $0e $05
	rrca                                             ; $54ec: $0f
	rlca                                             ; $54ed: $07
	ld   e, $11                                      ; $54ee: $1e $11
	ld   [de], a                                     ; $54f0: $12
	inc  de                                          ; $54f1: $13
	rst  $38                                         ; $54f2: $ff
	rra                                              ; $54f3: $1f
	ld   bc, $0320                                   ; $54f4: $01 $20 $03
	ld   hl, $2205                                   ; $54f7: $21 $05 $22
	rlca                                             ; $54fa: $07
	inc  hl                                          ; $54fb: $23
	ld   bc, $0324                                   ; $54fc: $01 $24 $03
	ld   a, [bc]                                     ; $54ff: $0a
	dec  b                                           ; $5500: $05
	inc  e                                           ; $5501: $1c
	rlca                                             ; $5502: $07
	dec  h                                           ; $5503: $25
	ld   bc, $0326                                   ; $5504: $01 $26 $03
	ld   c, $05                                      ; $5507: $0e $05
	rrca                                             ; $5509: $0f
	rlca                                             ; $550a: $07
	db   $10                                         ; $550b: $10
	daa                                              ; $550c: $27
	jr   z, @+$2b                                    ; $550d: $28 $29

	rst  $38                                         ; $550f: $ff
	ld   a, [hl+]                                    ; $5510: $2a
	dec  hl                                          ; $5511: $2b
	inc  l                                           ; $5512: $2c
	dec  l                                           ; $5513: $2d
	ld   l, $2f                                      ; $5514: $2e $2f
	ld   b, $07                                      ; $5516: $06 $07
	jr   nc, jr_00b_554b                             ; $5518: $30 $31

	ld   [hl-], a                                    ; $551a: $32
	inc  sp                                          ; $551b: $33
	inc  [hl]                                        ; $551c: $34
	dec  [hl]                                        ; $551d: $35
	inc  e                                           ; $551e: $1c
	rlca                                             ; $551f: $07
	ld   [hl], $37                                   ; $5520: $36 $37
	jr   c, jr_00b_555d                              ; $5522: $38 $39

	ld   a, [hl-]                                    ; $5524: $3a
	dec  sp                                          ; $5525: $3b
	inc  a                                           ; $5526: $3c
	rlca                                             ; $5527: $07
	dec  a                                           ; $5528: $3d
	ld   a, $3f                                      ; $5529: $3e $3f
	ld   de, $40ff                                   ; $552b: $11 $ff $40
	ld   bc, $0341                                   ; $552e: $01 $41 $03
	inc  b                                           ; $5531: $04
	dec  b                                           ; $5532: $05
	ld   [hl+], a                                    ; $5533: $22
	rlca                                             ; $5534: $07
	inc  hl                                          ; $5535: $23
	ld   bc, $0342                                   ; $5536: $01 $42 $03
	ld   a, [bc]                                     ; $5539: $0a
	dec  b                                           ; $553a: $05
	inc  e                                           ; $553b: $1c
	rlca                                             ; $553c: $07
	dec  h                                           ; $553d: $25
	ld   bc, $0326                                   ; $553e: $01 $26 $03
	ld   c, $05                                      ; $5541: $0e $05
	rrca                                             ; $5543: $0f
	rlca                                             ; $5544: $07
	db   $10                                         ; $5545: $10
	daa                                              ; $5546: $27
	jr   z, jr_00b_558c                              ; $5547: $28 $43

	rst  $38                                         ; $5549: $ff
	ld   a, [de]                                     ; $554a: $1a

jr_00b_554b:
	nop                                              ; $554b: $00
	ld   c, c                                        ; $554c: $49
	nop                                              ; $554d: $00
	ld   a, b                                        ; $554e: $78
	nop                                              ; $554f: $00
	and  a                                           ; $5550: $a7
	nop                                              ; $5551: $00
	ld   a, [de]                                     ; $5552: $1a
	nop                                              ; $5553: $00
	ld   a, [de]                                     ; $5554: $1a
	nop                                              ; $5555: $00
	ld   a, [de]                                     ; $5556: $1a
	nop                                              ; $5557: $00
	ld   a, [de]                                     ; $5558: $1a
	nop                                              ; $5559: $00
	ld   a, [de]                                     ; $555a: $1a
	nop                                              ; $555b: $00
	ld   a, [de]                                     ; $555c: $1a

jr_00b_555d:
	nop                                              ; $555d: $00
	ld   a, [de]                                     ; $555e: $1a
	nop                                              ; $555f: $00
	ld   a, [de]                                     ; $5560: $1a
	nop                                              ; $5561: $00
	ld   a, [de]                                     ; $5562: $1a
	nop                                              ; $5563: $00
	nop                                              ; $5564: $00
	ld   bc, $0302                                   ; $5565: $01 $02 $03
	inc  b                                           ; $5568: $04
	dec  b                                           ; $5569: $05
	ld   b, $07                                      ; $556a: $06 $07
	ld   [$0a09], sp                                 ; $556c: $08 $09 $0a
	dec  bc                                          ; $556f: $0b
	inc  c                                           ; $5570: $0c
	dec  c                                           ; $5571: $0d
	nop                                              ; $5572: $00
	ld   c, $02                                      ; $5573: $0e $02
	inc  bc                                          ; $5575: $03
	inc  b                                           ; $5576: $04
	dec  b                                           ; $5577: $05
	ld   b, $07                                      ; $5578: $06 $07
	rrca                                             ; $557a: $0f
	add  hl, bc                                      ; $557b: $09
	db   $10                                         ; $557c: $10
	dec  bc                                          ; $557d: $0b
	ld   de, $000d                                   ; $557e: $11 $0d $00
	ld   [de], a                                     ; $5581: $12
	ld   [bc], a                                     ; $5582: $02
	inc  bc                                          ; $5583: $03
	inc  b                                           ; $5584: $04
	dec  b                                           ; $5585: $05
	ld   b, $07                                      ; $5586: $06 $07
	inc  de                                          ; $5588: $13
	add  hl, bc                                      ; $5589: $09
	inc  d                                           ; $558a: $14
	dec  bc                                          ; $558b: $0b

jr_00b_558c:
	dec  d                                           ; $558c: $15
	dec  c                                           ; $558d: $0d
	ld   d, $17                                      ; $558e: $16 $17
	jr   jr_00b_55a9                                 ; $5590: $18 $17

	rst  $38                                         ; $5592: $ff
	add  hl, de                                      ; $5593: $19
	ld   a, [de]                                     ; $5594: $1a
	ld   [bc], a                                     ; $5595: $02
	dec  de                                          ; $5596: $1b
	inc  b                                           ; $5597: $04
	inc  e                                           ; $5598: $1c
	ld   b, $1d                                      ; $5599: $06 $1d
	ld   e, $09                                      ; $559b: $1e $09
	rra                                              ; $559d: $1f
	dec  bc                                          ; $559e: $0b
	jr   nz, jr_00b_55ae                             ; $559f: $20 $0d

	add  hl, de                                      ; $55a1: $19
	ld   hl, $1b02                                   ; $55a2: $21 $02 $1b
	inc  b                                           ; $55a5: $04
	inc  e                                           ; $55a6: $1c
	ld   b, $1d                                      ; $55a7: $06 $1d

jr_00b_55a9:
	ld   [hl+], a                                    ; $55a9: $22
	add  hl, bc                                      ; $55aa: $09
	inc  hl                                          ; $55ab: $23
	dec  bc                                          ; $55ac: $0b
	inc  h                                           ; $55ad: $24

jr_00b_55ae:
	dec  c                                           ; $55ae: $0d
	add  hl, de                                      ; $55af: $19
	dec  h                                           ; $55b0: $25
	ld   [bc], a                                     ; $55b1: $02
	dec  de                                          ; $55b2: $1b
	inc  b                                           ; $55b3: $04
	inc  e                                           ; $55b4: $1c
	ld   b, $1d                                      ; $55b5: $06 $1d
	ld   h, $09                                      ; $55b7: $26 $09
	daa                                              ; $55b9: $27
	dec  bc                                          ; $55ba: $0b
	dec  d                                           ; $55bb: $15
	dec  c                                           ; $55bc: $0d
	ld   d, $17                                      ; $55bd: $16 $17
	jr   z, jr_00b_55ea                              ; $55bf: $28 $29

	rst  $38                                         ; $55c1: $ff
	ld   a, [hl+]                                    ; $55c2: $2a
	ld   bc, $2b02                                   ; $55c3: $01 $02 $2b
	inc  b                                           ; $55c6: $04
	inc  l                                           ; $55c7: $2c
	ld   b, $07                                      ; $55c8: $06 $07
	dec  l                                           ; $55ca: $2d
	add  hl, bc                                      ; $55cb: $09
	ld   l, $0b                                      ; $55cc: $2e $0b
	inc  c                                           ; $55ce: $0c
	dec  c                                           ; $55cf: $0d
	ld   a, [hl+]                                    ; $55d0: $2a
	cpl                                              ; $55d1: $2f
	ld   [bc], a                                     ; $55d2: $02
	dec  hl                                          ; $55d3: $2b
	inc  b                                           ; $55d4: $04
	inc  l                                           ; $55d5: $2c
	ld   b, $07                                      ; $55d6: $06 $07
	jr   nc, jr_00b_55e3                             ; $55d8: $30 $09

	ld   sp, $320b                                   ; $55da: $31 $0b $32
	dec  c                                           ; $55dd: $0d
	ld   a, [hl+]                                    ; $55de: $2a
	ld   [de], a                                     ; $55df: $12
	ld   [bc], a                                     ; $55e0: $02
	dec  hl                                          ; $55e1: $2b
	inc  b                                           ; $55e2: $04

jr_00b_55e3:
	inc  l                                           ; $55e3: $2c
	ld   b, $07                                      ; $55e4: $06 $07
	inc  sp                                          ; $55e6: $33
	add  hl, bc                                      ; $55e7: $09
	inc  [hl]                                        ; $55e8: $34
	dec  bc                                          ; $55e9: $0b

jr_00b_55ea:
	dec  d                                           ; $55ea: $15
	dec  c                                           ; $55eb: $0d
	dec  [hl]                                        ; $55ec: $35
	rla                                              ; $55ed: $17
	ld   [hl], $17                                   ; $55ee: $36 $17
	rst  $38                                         ; $55f0: $ff
	scf                                              ; $55f1: $37
	jr   c, jr_00b_55f6                              ; $55f2: $38 $02

	add  hl, sp                                      ; $55f4: $39
	inc  b                                           ; $55f5: $04

jr_00b_55f6:
	ld   a, [hl-]                                    ; $55f6: $3a
	ld   b, $1d                                      ; $55f7: $06 $1d
	dec  sp                                          ; $55f9: $3b
	add  hl, bc                                      ; $55fa: $09
	inc  a                                           ; $55fb: $3c
	dec  bc                                          ; $55fc: $0b
	dec  a                                           ; $55fd: $3d
	dec  c                                           ; $55fe: $0d
	scf                                              ; $55ff: $37
	ld   a, $02                                      ; $5600: $3e $02
	add  hl, sp                                      ; $5602: $39
	inc  b                                           ; $5603: $04
	ld   a, [hl-]                                    ; $5604: $3a
	ld   b, $1d                                      ; $5605: $06 $1d
	ccf                                              ; $5607: $3f
	add  hl, bc                                      ; $5608: $09
	ld   b, b                                        ; $5609: $40
	dec  bc                                          ; $560a: $0b
	ld   b, c                                        ; $560b: $41
	dec  c                                           ; $560c: $0d
	scf                                              ; $560d: $37
	ld   b, d                                        ; $560e: $42
	ld   [bc], a                                     ; $560f: $02
	add  hl, sp                                      ; $5610: $39
	inc  b                                           ; $5611: $04
	ld   a, [hl-]                                    ; $5612: $3a
	ld   b, $1d                                      ; $5613: $06 $1d
	ld   b, e                                        ; $5615: $43
	add  hl, bc                                      ; $5616: $09
	ld   b, h                                        ; $5617: $44
	dec  bc                                          ; $5618: $0b
	ld   b, l                                        ; $5619: $45
	dec  c                                           ; $561a: $0d
	ld   d, $17                                      ; $561b: $16 $17
	ld   b, [hl]                                     ; $561d: $46
	ld   b, a                                        ; $561e: $47
	rst  $38                                         ; $561f: $ff
	ld   a, [de]                                     ; $5620: $1a
	nop                                              ; $5621: $00
	scf                                              ; $5622: $37
	nop                                              ; $5623: $00
	ld   d, h                                        ; $5624: $54
	nop                                              ; $5625: $00
	ld   [hl], c                                     ; $5626: $71
	nop                                              ; $5627: $00
	adc  [hl]                                        ; $5628: $8e
	nop                                              ; $5629: $00
	ld   a, [de]                                     ; $562a: $1a
	nop                                              ; $562b: $00
	ld   a, [de]                                     ; $562c: $1a
	nop                                              ; $562d: $00
	ld   a, [de]                                     ; $562e: $1a
	nop                                              ; $562f: $00
	ld   a, [de]                                     ; $5630: $1a
	nop                                              ; $5631: $00
	ld   a, [de]                                     ; $5632: $1a
	nop                                              ; $5633: $00
	ld   a, [de]                                     ; $5634: $1a
	nop                                              ; $5635: $00
	ld   a, [de]                                     ; $5636: $1a
	nop                                              ; $5637: $00
	ld   a, [de]                                     ; $5638: $1a
	nop                                              ; $5639: $00
	nop                                              ; $563a: $00
	ld   bc, $0302                                   ; $563b: $01 $02 $03
	inc  b                                           ; $563e: $04
	dec  b                                           ; $563f: $05
	ld   b, $07                                      ; $5640: $06 $07
	ld   [$0209], sp                                 ; $5642: $08 $09 $02
	ld   a, [bc]                                     ; $5645: $0a
	dec  bc                                          ; $5646: $0b
	inc  c                                           ; $5647: $0c
	ld   b, $07                                      ; $5648: $06 $07
	ld   [$020d], sp                                 ; $564a: $08 $0d $02
	ld   c, $0b                                      ; $564d: $0e $0b
	rrca                                             ; $564f: $0f
	ld   b, $07                                      ; $5650: $06 $07
	db   $10                                         ; $5652: $10
	ld   de, $1112                                   ; $5653: $11 $12 $11
	rst  $38                                         ; $5656: $ff
	inc  de                                          ; $5657: $13
	inc  d                                           ; $5658: $14
	ld   [bc], a                                     ; $5659: $02
	dec  d                                           ; $565a: $15
	ld   d, $17                                      ; $565b: $16 $17
	ld   b, $07                                      ; $565d: $06 $07
	jr   jr_00b_567a                                 ; $565f: $18 $19

	ld   [bc], a                                     ; $5661: $02
	ld   a, [de]                                     ; $5662: $1a
	dec  de                                          ; $5663: $1b
	inc  e                                           ; $5664: $1c
	ld   b, $07                                      ; $5665: $06 $07
	dec  e                                           ; $5667: $1d
	ld   e, $02                                      ; $5668: $1e $02
	rra                                              ; $566a: $1f
	dec  de                                          ; $566b: $1b
	rrca                                             ; $566c: $0f
	ld   b, $07                                      ; $566d: $06 $07
	jr   nz, jr_00b_5682                             ; $566f: $20 $11

	ld   hl, rAUD1LEN                                   ; $5671: $21 $11 $ff
	ld   [hl+], a                                    ; $5674: $22
	inc  hl                                          ; $5675: $23
	inc  h                                           ; $5676: $24
	dec  h                                           ; $5677: $25
	ld   h, $27                                      ; $5678: $26 $27

jr_00b_567a:
	ld   b, $07                                      ; $567a: $06 $07
	jr   z, jr_00b_56a7                              ; $567c: $28 $29

	inc  h                                           ; $567e: $24
	ld   a, [hl+]                                    ; $567f: $2a
	dec  hl                                          ; $5680: $2b
	inc  l                                           ; $5681: $2c

jr_00b_5682:
	ld   b, $07                                      ; $5682: $06 $07
	dec  l                                           ; $5684: $2d
	dec  c                                           ; $5685: $0d
	inc  h                                           ; $5686: $24
	ld   l, $2f                                      ; $5687: $2e $2f
	rrca                                             ; $5689: $0f
	ld   b, $07                                      ; $568a: $06 $07
	jr   nc, jr_00b_569f                             ; $568c: $30 $11

	ld   sp, rAUD1LEN                                   ; $568e: $31 $11 $ff
	ld   [hl-], a                                    ; $5691: $32
	inc  sp                                          ; $5692: $33
	inc  [hl]                                        ; $5693: $34
	inc  bc                                          ; $5694: $03
	dec  [hl]                                        ; $5695: $35
	ld   [hl], $06                                   ; $5696: $36 $06
	rlca                                             ; $5698: $07
	scf                                              ; $5699: $37
	jr   c, jr_00b_56d0                              ; $569a: $38 $34

	ld   a, [bc]                                     ; $569c: $0a
	add  hl, sp                                      ; $569d: $39
	ld   a, [hl-]                                    ; $569e: $3a

jr_00b_569f:
	ld   b, $07                                      ; $569f: $06 $07
	dec  sp                                          ; $56a1: $3b
	dec  c                                           ; $56a2: $0d
	inc  [hl]                                        ; $56a3: $34
	ld   c, $3c                                      ; $56a4: $0e $3c
	rrca                                             ; $56a6: $0f

jr_00b_56a7:
	ld   b, $07                                      ; $56a7: $06 $07
	dec  a                                           ; $56a9: $3d
	ld   de, $3f3e                                   ; $56aa: $11 $3e $3f
	rst  $38                                         ; $56ad: $ff
	ld   b, b                                        ; $56ae: $40
	ld   b, c                                        ; $56af: $41
	ld   b, d                                        ; $56b0: $42
	dec  d                                           ; $56b1: $15
	ld   b, e                                        ; $56b2: $43
	ld   b, h                                        ; $56b3: $44
	ld   b, $07                                      ; $56b4: $06 $07
	ld   b, l                                        ; $56b6: $45
	ld   b, [hl]                                     ; $56b7: $46
	ld   [bc], a                                     ; $56b8: $02
	ld   b, a                                        ; $56b9: $47
	ld   c, b                                        ; $56ba: $48
	ld   c, c                                        ; $56bb: $49
	ld   b, $07                                      ; $56bc: $06 $07
	ld   c, d                                        ; $56be: $4a
	ld   c, e                                        ; $56bf: $4b
	ld   [bc], a                                     ; $56c0: $02
	ld   c, h                                        ; $56c1: $4c
	ld   c, l                                        ; $56c2: $4d
	ld   c, [hl]                                     ; $56c3: $4e
	ld   b, $07                                      ; $56c4: $06 $07
	ld   c, a                                        ; $56c6: $4f
	ccf                                              ; $56c7: $3f
	ld   d, b                                        ; $56c8: $50
	ld   de, $1aff                                   ; $56c9: $11 $ff $1a
	nop                                              ; $56cc: $00
	ld   c, a                                        ; $56cd: $4f
	nop                                              ; $56ce: $00
	add  h                                           ; $56cf: $84

jr_00b_56d0:
	nop                                              ; $56d0: $00
	cp   c                                           ; $56d1: $b9
	nop                                              ; $56d2: $00
	ld   a, [de]                                     ; $56d3: $1a
	nop                                              ; $56d4: $00
	ld   a, [de]                                     ; $56d5: $1a
	nop                                              ; $56d6: $00
	ld   a, [de]                                     ; $56d7: $1a
	nop                                              ; $56d8: $00
	ld   a, [de]                                     ; $56d9: $1a
	nop                                              ; $56da: $00
	ld   a, [de]                                     ; $56db: $1a
	nop                                              ; $56dc: $00
	ld   a, [de]                                     ; $56dd: $1a
	nop                                              ; $56de: $00
	ld   a, [de]                                     ; $56df: $1a
	nop                                              ; $56e0: $00
	ld   a, [de]                                     ; $56e1: $1a
	nop                                              ; $56e2: $00
	ld   a, [de]                                     ; $56e3: $1a
	nop                                              ; $56e4: $00
	nop                                              ; $56e5: $00
	ld   bc, $0302                                   ; $56e6: $01 $02 $03
	inc  b                                           ; $56e9: $04
	dec  b                                           ; $56ea: $05
	ld   b, $07                                      ; $56eb: $06 $07
	ld   [$0a09], sp                                 ; $56ed: $08 $09 $0a
	dec  bc                                          ; $56f0: $0b
	inc  c                                           ; $56f1: $0c
	dec  c                                           ; $56f2: $0d
	ld   c, $0f                                      ; $56f3: $0e $0f
	nop                                              ; $56f5: $00
	db   $10                                         ; $56f6: $10
	ld   [bc], a                                     ; $56f7: $02
	ld   de, $1204                                   ; $56f8: $11 $04 $12
	ld   b, $13                                      ; $56fb: $06 $13
	inc  d                                           ; $56fd: $14
	add  hl, bc                                      ; $56fe: $09
	ld   a, [bc]                                     ; $56ff: $0a
	dec  bc                                          ; $5700: $0b
	dec  d                                           ; $5701: $15
	dec  c                                           ; $5702: $0d
	ld   d, $0f                                      ; $5703: $16 $0f
	nop                                              ; $5705: $00
	rla                                              ; $5706: $17
	ld   [bc], a                                     ; $5707: $02
	jr   jr_00b_570e                                 ; $5708: $18 $04

	add  hl, de                                      ; $570a: $19
	ld   b, $1a                                      ; $570b: $06 $1a
	dec  de                                          ; $570d: $1b

jr_00b_570e:
	add  hl, bc                                      ; $570e: $09
	inc  e                                           ; $570f: $1c
	dec  bc                                          ; $5710: $0b
	dec  e                                           ; $5711: $1d
	dec  c                                           ; $5712: $0d
	ld   e, $0f                                      ; $5713: $1e $0f
	rra                                              ; $5715: $1f
	jr   nz, jr_00b_5737                             ; $5716: $20 $1f

	ld   hl, $00ff                                   ; $5718: $21 $ff $00
	ld   [hl+], a                                    ; $571b: $22
	ld   [bc], a                                     ; $571c: $02
	inc  hl                                          ; $571d: $23
	inc  b                                           ; $571e: $04
	inc  h                                           ; $571f: $24
	ld   b, $25                                      ; $5720: $06 $25
	ld   h, $09                                      ; $5722: $26 $09
	ld   a, [bc]                                     ; $5724: $0a
	dec  bc                                          ; $5725: $0b
	inc  c                                           ; $5726: $0c
	dec  c                                           ; $5727: $0d
	daa                                              ; $5728: $27
	rrca                                             ; $5729: $0f
	nop                                              ; $572a: $00
	jr   z, jr_00b_572f                              ; $572b: $28 $02

	add  hl, hl                                      ; $572d: $29
	inc  b                                           ; $572e: $04

jr_00b_572f:
	ld   a, [hl+]                                    ; $572f: $2a
	ld   b, $13                                      ; $5730: $06 $13
	inc  d                                           ; $5732: $14
	add  hl, bc                                      ; $5733: $09
	ld   a, [bc]                                     ; $5734: $0a
	dec  bc                                          ; $5735: $0b
	dec  d                                           ; $5736: $15

jr_00b_5737:
	dec  c                                           ; $5737: $0d
	ld   d, $0f                                      ; $5738: $16 $0f
	nop                                              ; $573a: $00
	dec  hl                                          ; $573b: $2b
	ld   [bc], a                                     ; $573c: $02
	inc  l                                           ; $573d: $2c
	inc  b                                           ; $573e: $04
	dec  l                                           ; $573f: $2d
	ld   b, $1a                                      ; $5740: $06 $1a
	dec  de                                          ; $5742: $1b
	add  hl, bc                                      ; $5743: $09
	inc  e                                           ; $5744: $1c
	dec  bc                                          ; $5745: $0b
	dec  e                                           ; $5746: $1d
	dec  c                                           ; $5747: $0d
	ld   e, $0f                                      ; $5748: $1e $0f
	rra                                              ; $574a: $1f
	ld   l, $1f                                      ; $574b: $2e $1f
	cpl                                              ; $574d: $2f
	rst  $38                                         ; $574e: $ff
	nop                                              ; $574f: $00
	jr   nc, @+$04                                   ; $5750: $30 $02

	ld   sp, $3204                                   ; $5752: $31 $04 $32
	ld   b, $07                                      ; $5755: $06 $07
	ld   [$0a09], sp                                 ; $5757: $08 $09 $0a
	dec  bc                                          ; $575a: $0b
	inc  c                                           ; $575b: $0c
	dec  c                                           ; $575c: $0d
	ld   c, $0f                                      ; $575d: $0e $0f
	nop                                              ; $575f: $00
	inc  sp                                          ; $5760: $33
	ld   [bc], a                                     ; $5761: $02
	inc  [hl]                                        ; $5762: $34
	inc  b                                           ; $5763: $04
	dec  [hl]                                        ; $5764: $35
	ld   b, $13                                      ; $5765: $06 $13
	inc  d                                           ; $5767: $14
	add  hl, bc                                      ; $5768: $09
	ld   a, [bc]                                     ; $5769: $0a
	dec  bc                                          ; $576a: $0b
	dec  d                                           ; $576b: $15
	dec  c                                           ; $576c: $0d
	ld   d, $0f                                      ; $576d: $16 $0f
	nop                                              ; $576f: $00
	ld   [hl], $02                                   ; $5770: $36 $02
	scf                                              ; $5772: $37
	inc  b                                           ; $5773: $04
	jr   c, jr_00b_577c                              ; $5774: $38 $06

	ld   a, [de]                                     ; $5776: $1a
	dec  de                                          ; $5777: $1b
	add  hl, bc                                      ; $5778: $09
	inc  e                                           ; $5779: $1c
	dec  bc                                          ; $577a: $0b
	dec  e                                           ; $577b: $1d

jr_00b_577c:
	dec  c                                           ; $577c: $0d
	ld   e, $0f                                      ; $577d: $1e $0f
	rra                                              ; $577f: $1f
	add  hl, sp                                      ; $5780: $39
	rra                                              ; $5781: $1f
	ld   a, [hl-]                                    ; $5782: $3a
	rst  $38                                         ; $5783: $ff
	nop                                              ; $5784: $00
	dec  sp                                          ; $5785: $3b
	ld   [bc], a                                     ; $5786: $02
	inc  a                                           ; $5787: $3c
	inc  b                                           ; $5788: $04
	dec  a                                           ; $5789: $3d
	ld   b, $3e                                      ; $578a: $06 $3e
	ccf                                              ; $578c: $3f
	add  hl, bc                                      ; $578d: $09
	ld   a, [bc]                                     ; $578e: $0a
	dec  bc                                          ; $578f: $0b
	inc  c                                           ; $5790: $0c
	dec  c                                           ; $5791: $0d
	ld   b, b                                        ; $5792: $40
	rrca                                             ; $5793: $0f
	nop                                              ; $5794: $00
	ld   b, c                                        ; $5795: $41
	ld   [bc], a                                     ; $5796: $02
	ld   b, d                                        ; $5797: $42
	inc  b                                           ; $5798: $04
	ld   b, e                                        ; $5799: $43
	ld   b, $44                                      ; $579a: $06 $44
	ld   b, l                                        ; $579c: $45
	add  hl, bc                                      ; $579d: $09
	ld   b, [hl]                                     ; $579e: $46
	dec  bc                                          ; $579f: $0b
	ld   b, a                                        ; $57a0: $47
	dec  c                                           ; $57a1: $0d
	ld   c, b                                        ; $57a2: $48
	rrca                                             ; $57a3: $0f
	nop                                              ; $57a4: $00
	ld   c, c                                        ; $57a5: $49
	ld   [bc], a                                     ; $57a6: $02
	ld   c, d                                        ; $57a7: $4a
	inc  b                                           ; $57a8: $04
	ld   b, e                                        ; $57a9: $43
	ld   b, $44                                      ; $57aa: $06 $44
	dec  de                                          ; $57ac: $1b
	add  hl, bc                                      ; $57ad: $09
	inc  e                                           ; $57ae: $1c
	dec  bc                                          ; $57af: $0b
	dec  e                                           ; $57b0: $1d
	dec  c                                           ; $57b1: $0d
	ld   e, $0f                                      ; $57b2: $1e $0f
	rra                                              ; $57b4: $1f
	ld   c, e                                        ; $57b5: $4b
	rra                                              ; $57b6: $1f
	ld   c, h                                        ; $57b7: $4c
	rst  $38                                         ; $57b8: $ff
	ld   a, [de]                                     ; $57b9: $1a
	nop                                              ; $57ba: $00
	ld   c, l                                        ; $57bb: $4d
	nop                                              ; $57bc: $00
	add  b                                           ; $57bd: $80
	nop                                              ; $57be: $00
	or   e                                           ; $57bf: $b3
	nop                                              ; $57c0: $00
	and  $00                                         ; $57c1: $e6 $00
	ld   a, [de]                                     ; $57c3: $1a
	nop                                              ; $57c4: $00
	ld   a, [de]                                     ; $57c5: $1a
	nop                                              ; $57c6: $00
	ld   a, [de]                                     ; $57c7: $1a
	nop                                              ; $57c8: $00
	ld   a, [de]                                     ; $57c9: $1a
	nop                                              ; $57ca: $00
	ld   a, [de]                                     ; $57cb: $1a
	nop                                              ; $57cc: $00
	ld   a, [de]                                     ; $57cd: $1a
	nop                                              ; $57ce: $00
	ld   a, [de]                                     ; $57cf: $1a
	nop                                              ; $57d0: $00
	ld   a, [de]                                     ; $57d1: $1a
	nop                                              ; $57d2: $00
	nop                                              ; $57d3: $00
	ld   bc, $0302                                   ; $57d4: $01 $02 $03
	inc  b                                           ; $57d7: $04
	dec  b                                           ; $57d8: $05
	ld   b, $07                                      ; $57d9: $06 $07
	ld   [$0a09], sp                                 ; $57db: $08 $09 $0a
	dec  bc                                          ; $57de: $0b
	inc  c                                           ; $57df: $0c
	dec  c                                           ; $57e0: $0d
	nop                                              ; $57e1: $00
	ld   bc, $0302                                   ; $57e2: $01 $02 $03
	inc  b                                           ; $57e5: $04
	dec  b                                           ; $57e6: $05
	ld   b, $0e                                      ; $57e7: $06 $0e
	rrca                                             ; $57e9: $0f
	add  hl, bc                                      ; $57ea: $09
	db   $10                                         ; $57eb: $10
	dec  bc                                          ; $57ec: $0b
	ld   de, $000d                                   ; $57ed: $11 $0d $00
	ld   bc, $0302                                   ; $57f0: $01 $02 $03
	inc  b                                           ; $57f3: $04
	dec  b                                           ; $57f4: $05
	ld   b, $12                                      ; $57f5: $06 $12
	inc  de                                          ; $57f7: $13
	add  hl, bc                                      ; $57f8: $09
	inc  d                                           ; $57f9: $14
	dec  bc                                          ; $57fa: $0b
	dec  d                                           ; $57fb: $15
	dec  c                                           ; $57fc: $0d
	ld   d, $17                                      ; $57fd: $16 $17
	jr   @+$1b                                       ; $57ff: $18 $19

	ld   a, [de]                                     ; $5801: $1a
	rla                                              ; $5802: $17
	dec  de                                          ; $5803: $1b
	inc  e                                           ; $5804: $1c
	rst  $38                                         ; $5805: $ff
	nop                                              ; $5806: $00
	dec  e                                           ; $5807: $1d
	ld   [bc], a                                     ; $5808: $02
	ld   e, $04                                      ; $5809: $1e $04
	rra                                              ; $580b: $1f
	jr   nz, jr_00b_5815                             ; $580c: $20 $07

	ld   [$0a09], sp                                 ; $580e: $08 $09 $0a
	dec  bc                                          ; $5811: $0b
	inc  c                                           ; $5812: $0c
	dec  c                                           ; $5813: $0d
	nop                                              ; $5814: $00

jr_00b_5815:
	dec  e                                           ; $5815: $1d
	ld   [bc], a                                     ; $5816: $02
	ld   e, $04                                      ; $5817: $1e $04
	ld   hl, $0e20                                   ; $5819: $21 $20 $0e
	rrca                                             ; $581c: $0f
	add  hl, bc                                      ; $581d: $09
	ld   [hl+], a                                    ; $581e: $22
	dec  bc                                          ; $581f: $0b
	inc  hl                                          ; $5820: $23
	dec  c                                           ; $5821: $0d
	nop                                              ; $5822: $00
	dec  e                                           ; $5823: $1d
	ld   [bc], a                                     ; $5824: $02
	ld   e, $04                                      ; $5825: $1e $04
	ld   hl, $1220                                   ; $5827: $21 $20 $12
	inc  de                                          ; $582a: $13
	add  hl, bc                                      ; $582b: $09
	inc  h                                           ; $582c: $24
	dec  bc                                          ; $582d: $0b
	dec  h                                           ; $582e: $25
	dec  c                                           ; $582f: $0d
	ld   h, $17                                      ; $5830: $26 $17
	daa                                              ; $5832: $27
	add  hl, de                                      ; $5833: $19
	jr   z, @+$19                                    ; $5834: $28 $17

	add  hl, hl                                      ; $5836: $29
	ld   a, [hl+]                                    ; $5837: $2a
	rst  $38                                         ; $5838: $ff
	nop                                              ; $5839: $00
	dec  hl                                          ; $583a: $2b
	ld   [bc], a                                     ; $583b: $02
	inc  bc                                          ; $583c: $03
	inc  b                                           ; $583d: $04
	dec  b                                           ; $583e: $05
	inc  l                                           ; $583f: $2c
	rlca                                             ; $5840: $07
	dec  l                                           ; $5841: $2d
	add  hl, bc                                      ; $5842: $09
	ld   l, $0b                                      ; $5843: $2e $0b
	cpl                                              ; $5845: $2f
	dec  c                                           ; $5846: $0d
	nop                                              ; $5847: $00
	dec  hl                                          ; $5848: $2b
	ld   [bc], a                                     ; $5849: $02
	inc  bc                                          ; $584a: $03
	inc  b                                           ; $584b: $04
	jr   nc, jr_00b_587a                             ; $584c: $30 $2c

	ld   c, $31                                      ; $584e: $0e $31
	add  hl, bc                                      ; $5850: $09
	ld   [hl-], a                                    ; $5851: $32
	dec  bc                                          ; $5852: $0b
	ld   de, $000d                                   ; $5853: $11 $0d $00
	dec  hl                                          ; $5856: $2b
	ld   [bc], a                                     ; $5857: $02
	inc  bc                                          ; $5858: $03
	inc  b                                           ; $5859: $04
	dec  b                                           ; $585a: $05
	inc  l                                           ; $585b: $2c
	ld   [de], a                                     ; $585c: $12
	inc  sp                                          ; $585d: $33
	add  hl, bc                                      ; $585e: $09
	inc  d                                           ; $585f: $14
	dec  bc                                          ; $5860: $0b
	dec  d                                           ; $5861: $15
	dec  c                                           ; $5862: $0d
	inc  [hl]                                        ; $5863: $34
	rla                                              ; $5864: $17
	dec  [hl]                                        ; $5865: $35
	add  hl, de                                      ; $5866: $19
	ld   [hl], $17                                   ; $5867: $36 $17
	scf                                              ; $5869: $37
	inc  e                                           ; $586a: $1c
	rst  $38                                         ; $586b: $ff
	nop                                              ; $586c: $00
	jr   c, jr_00b_5871                              ; $586d: $38 $02

	inc  bc                                          ; $586f: $03
	inc  b                                           ; $5870: $04

jr_00b_5871:
	add  hl, sp                                      ; $5871: $39
	ld   a, [hl-]                                    ; $5872: $3a
	dec  sp                                          ; $5873: $3b
	inc  a                                           ; $5874: $3c
	add  hl, bc                                      ; $5875: $09
	ld   a, [bc]                                     ; $5876: $0a
	dec  bc                                          ; $5877: $0b
	dec  a                                           ; $5878: $3d
	dec  c                                           ; $5879: $0d

jr_00b_587a:
	nop                                              ; $587a: $00
	jr   c, jr_00b_587f                              ; $587b: $38 $02

	inc  bc                                          ; $587d: $03
	inc  b                                           ; $587e: $04

jr_00b_587f:
	add  hl, sp                                      ; $587f: $39
	ld   a, $0e                                      ; $5880: $3e $0e
	ld   sp, $3209                                   ; $5882: $31 $09 $32
	dec  bc                                          ; $5885: $0b
	ccf                                              ; $5886: $3f
	dec  c                                           ; $5887: $0d
	nop                                              ; $5888: $00
	jr   c, jr_00b_588d                              ; $5889: $38 $02

	inc  bc                                          ; $588b: $03
	inc  b                                           ; $588c: $04

jr_00b_588d:
	add  hl, sp                                      ; $588d: $39
	ld   a, $12                                      ; $588e: $3e $12
	inc  sp                                          ; $5890: $33
	add  hl, bc                                      ; $5891: $09
	inc  d                                           ; $5892: $14
	dec  bc                                          ; $5893: $0b
	ld   b, b                                        ; $5894: $40
	dec  c                                           ; $5895: $0d
	inc  [hl]                                        ; $5896: $34
	rla                                              ; $5897: $17
	dec  [hl]                                        ; $5898: $35
	add  hl, de                                      ; $5899: $19
	ld   b, c                                        ; $589a: $41
	ld   b, d                                        ; $589b: $42
	ld   b, e                                        ; $589c: $43
	ld   b, h                                        ; $589d: $44
	rst  $38                                         ; $589e: $ff
	nop                                              ; $589f: $00
	ld   b, l                                        ; $58a0: $45
	ld   [bc], a                                     ; $58a1: $02
	ld   b, [hl]                                     ; $58a2: $46
	inc  b                                           ; $58a3: $04
	ld   b, a                                        ; $58a4: $47
	ld   c, b                                        ; $58a5: $48
	ld   c, c                                        ; $58a6: $49
	ld   c, d                                        ; $58a7: $4a
	add  hl, bc                                      ; $58a8: $09
	ld   c, e                                        ; $58a9: $4b
	dec  bc                                          ; $58aa: $0b
	ld   c, h                                        ; $58ab: $4c
	dec  c                                           ; $58ac: $0d
	nop                                              ; $58ad: $00
	ld   b, l                                        ; $58ae: $45
	ld   [bc], a                                     ; $58af: $02
	ld   c, l                                        ; $58b0: $4d
	inc  b                                           ; $58b1: $04
	ld   c, [hl]                                     ; $58b2: $4e
	ld   c, a                                        ; $58b3: $4f
	ld   d, b                                        ; $58b4: $50
	ld   d, c                                        ; $58b5: $51
	add  hl, bc                                      ; $58b6: $09
	ld   d, d                                        ; $58b7: $52
	dec  bc                                          ; $58b8: $0b
	ld   d, e                                        ; $58b9: $53
	dec  c                                           ; $58ba: $0d
	nop                                              ; $58bb: $00
	ld   b, l                                        ; $58bc: $45
	ld   [bc], a                                     ; $58bd: $02
	ld   d, h                                        ; $58be: $54
	inc  b                                           ; $58bf: $04
	ld   c, [hl]                                     ; $58c0: $4e
	ld   c, a                                        ; $58c1: $4f
	ld   d, l                                        ; $58c2: $55
	ld   d, [hl]                                     ; $58c3: $56
	add  hl, bc                                      ; $58c4: $09
	ld   d, a                                        ; $58c5: $57
	dec  bc                                          ; $58c6: $0b
	ld   e, b                                        ; $58c7: $58
	dec  c                                           ; $58c8: $0d
	ld   e, c                                        ; $58c9: $59
	ld   e, d                                        ; $58ca: $5a
	ld   e, e                                        ; $58cb: $5b
	ld   e, h                                        ; $58cc: $5c
	ld   e, l                                        ; $58cd: $5d
	rla                                              ; $58ce: $17
	ld   e, [hl]                                     ; $58cf: $5e
	ld   e, a                                        ; $58d0: $5f
	rst  $38                                         ; $58d1: $ff
	ld   a, [de]                                     ; $58d2: $1a
	nop                                              ; $58d3: $00
	ld   a, [de]                                     ; $58d4: $1a
	nop                                              ; $58d5: $00
	ld   a, [de]                                     ; $58d6: $1a
	nop                                              ; $58d7: $00
	ld   a, [de]                                     ; $58d8: $1a
	nop                                              ; $58d9: $00
	ld   a, [de]                                     ; $58da: $1a
	nop                                              ; $58db: $00
	ld   a, [de]                                     ; $58dc: $1a
	nop                                              ; $58dd: $00
	ld   a, [de]                                     ; $58de: $1a
	nop                                              ; $58df: $00
	ld   a, [de]                                     ; $58e0: $1a
	nop                                              ; $58e1: $00
	ld   a, [de]                                     ; $58e2: $1a
	nop                                              ; $58e3: $00
	ld   a, [de]                                     ; $58e4: $1a
	nop                                              ; $58e5: $00
	ld   a, [de]                                     ; $58e6: $1a
	nop                                              ; $58e7: $00
	ld   a, [de]                                     ; $58e8: $1a
	nop                                              ; $58e9: $00
	ld   a, [de]                                     ; $58ea: $1a
	nop                                              ; $58eb: $00
	nop                                              ; $58ec: $00
	ld   bc, $0302                                   ; $58ed: $01 $02 $03
	inc  b                                           ; $58f0: $04
	dec  b                                           ; $58f1: $05
	ld   b, $01                                      ; $58f2: $06 $01
	rlca                                             ; $58f4: $07
	inc  bc                                          ; $58f5: $03
	inc  b                                           ; $58f6: $04
	dec  b                                           ; $58f7: $05
	ld   [$0901], sp                                 ; $58f8: $08 $01 $09
	inc  bc                                          ; $58fb: $03
	inc  b                                           ; $58fc: $04
	dec  b                                           ; $58fd: $05
	ld   a, [bc]                                     ; $58fe: $0a
	dec  bc                                          ; $58ff: $0b
	ld   a, [bc]                                     ; $5900: $0a
	inc  c                                           ; $5901: $0c
	rst  $38                                         ; $5902: $ff


Func_0b_5903::
	ld   a, [wWramBank]                                  ; $5903: $fa $93 $c2
	push af                                          ; $5906: $f5
	ld   a, $02                                      ; $5907: $3e $02
	ld   [wWramBank], a                                  ; $5909: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $590c: $e0 $70
	call Call_00b_4138                               ; $590e: $cd $38 $41
	ld   bc, $0009                                   ; $5911: $01 $09 $00
	add  hl, bc                                      ; $5914: $09
	ld   a, [hl+]                                    ; $5915: $2a
	ld   c, a                                        ; $5916: $4f
	ld   a, [hl+]                                    ; $5917: $2a
	ld   b, a                                        ; $5918: $47
	ld   a, [hl]                                     ; $5919: $7e

Jump_00b_591a:
	ld   h, b                                        ; $591a: $60
	ld   l, c                                        ; $591b: $69
	ld   de, $da80                                   ; $591c: $11 $80 $da
	ld   bc, $0100                                   ; $591f: $01 $00 $01
	call FarMemCopy                                       ; $5922: $cd $b2 $09
	ld   de, $da80                                   ; $5925: $11 $80 $da

jr_00b_5928:
	ld   a, [de]                                     ; $5928: $1a
	inc  de                                          ; $5929: $13
	ld   b, a                                        ; $592a: $47
	bit  7, a                                        ; $592b: $cb $7f
	jr   nz, jr_00b_5945                             ; $592d: $20 $16

	ld   a, [de]                                     ; $592f: $1a
	inc  de                                          ; $5930: $13
	ld   c, a                                        ; $5931: $4f
	ld   a, [de]                                     ; $5932: $1a
	inc  de                                          ; $5933: $13
	ld   hl, $d140                                   ; $5934: $21 $40 $d1
	add  hl, bc                                      ; $5937: $09
	ld   b, a                                        ; $5938: $47

jr_00b_5939:
	ld   a, [de]                                     ; $5939: $1a
	inc  de                                          ; $593a: $13
	and  $7f                                         ; $593b: $e6 $7f
	set  7, a                                        ; $593d: $cb $ff
	ld   [hl+], a                                    ; $593f: $22
	dec  b                                           ; $5940: $05
	jr   nz, jr_00b_5939                             ; $5941: $20 $f6

	jr   jr_00b_5928                                 ; $5943: $18 $e3

jr_00b_5945:
	ld   de, $da80                                   ; $5945: $11 $80 $da

jr_00b_5948:
	ld   a, [de]                                     ; $5948: $1a
	inc  de                                          ; $5949: $13
	ld   b, a                                        ; $594a: $47
	bit  7, a                                        ; $594b: $cb $7f
	jr   nz, jr_00b_5969                             ; $594d: $20 $1a

	ld   a, [de]                                     ; $594f: $1a
	inc  de                                          ; $5950: $13
	ld   c, a                                        ; $5951: $4f
	ld   a, [de]                                     ; $5952: $1a
	inc  de                                          ; $5953: $13
	ld   hl, $d000                                   ; $5954: $21 $00 $d0
	add  hl, bc                                      ; $5957: $09
	ld   b, a                                        ; $5958: $47

jr_00b_5959:
	ld   a, [de]                                     ; $5959: $1a
	inc  de                                          ; $595a: $13
	ld   c, a                                        ; $595b: $4f
	ld   a, $06                                      ; $595c: $3e $06
	bit  7, c                                        ; $595e: $cb $79
	jr   z, jr_00b_5963                              ; $5960: $28 $01

	inc  a                                           ; $5962: $3c

jr_00b_5963:
	ld   [hl+], a                                    ; $5963: $22
	dec  b                                           ; $5964: $05
	jr   nz, jr_00b_5959                             ; $5965: $20 $f2

	jr   jr_00b_5948                                 ; $5967: $18 $df

jr_00b_5969:
	pop  af                                          ; $5969: $f1
	ld   [wWramBank], a                                  ; $596a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $596d: $e0 $70
	ret                                              ; $596f: $c9


Func_0b_5970::
	ld   d, l                                        ; $5970: $55
	ld   l, h                                        ; $5971: $6c
	ld   h, $00                                      ; $5972: $26 $00
	add  hl, hl                                      ; $5974: $29
	ld   bc, $5981                                   ; $5975: $01 $81 $59
	add  hl, bc                                      ; $5978: $09
	ld   a, [hl+]                                    ; $5979: $2a
	ld   h, [hl]                                     ; $597a: $66
	ld   l, a                                        ; $597b: $6f
	push hl                                          ; $597c: $e5
	ld   a, d                                        ; $597d: $7a
	jp   Jump_00b_5b1f                               ; $597e: $c3 $1f $5b


	adc  a                                           ; $5981: $8f
	ld   e, c                                        ; $5982: $59
	jp   nz, $f859                                   ; $5983: $c2 $59 $f8

	ld   e, c                                        ; $5986: $59
	ld   e, d                                        ; $5987: $5a
	ld   e, d                                        ; $5988: $5a
	sub  c                                           ; $5989: $91
	ld   e, d                                        ; $598a: $5a
	ret  z                                           ; $598b: $c8

	ld   e, d                                        ; $598c: $5a
	db   $fd                                         ; $598d: $fd
	ld   e, d                                        ; $598e: $5a
	push hl                                          ; $598f: $e5
	ld   a, [wWramBank]                                  ; $5990: $fa $93 $c2
	push af                                          ; $5993: $f5
	ld   a, $07                                      ; $5994: $3e $07
	ld   [wWramBank], a                                  ; $5996: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5999: $e0 $70
	ld   a, [hl+]                                    ; $599b: $2a
	ld   e, a                                        ; $599c: $5f
	ld   a, [hl+]                                    ; $599d: $2a
	ld   d, a                                        ; $599e: $57
	ld   a, [hl]                                     ; $599f: $7e
	ld   hl, $d000                                   ; $59a0: $21 $00 $d0
	call RLEXorCopy                                       ; $59a3: $cd $d2 $09
	pop  af                                          ; $59a6: $f1
	ld   [wWramBank], a                                  ; $59a7: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $59aa: $e0 $70
	ld   c, $80                                      ; $59ac: $0e $80
	ld   de, $8000                                   ; $59ae: $11 $00 $80
	ld   a, $07                                      ; $59b1: $3e $07
	ld   hl, $d000                                   ; $59b3: $21 $00 $d0
	ld   b, $60                                      ; $59b6: $06 $60
	call EnqueueHDMATransfer                                       ; $59b8: $cd $7c $02
	pop  hl                                          ; $59bb: $e1
	ld   a, [wLCDC]                                  ; $59bc: $fa $03 $c2
	bit  7, a                                        ; $59bf: $cb $7f
	ret  nz                                          ; $59c1: $c0

	push hl                                          ; $59c2: $e5
	ld   a, [wWramBank]                                  ; $59c3: $fa $93 $c2
	push af                                          ; $59c6: $f5
	ld   a, $07                                      ; $59c7: $3e $07
	ld   [wWramBank], a                                  ; $59c9: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $59cc: $e0 $70
	inc  hl                                          ; $59ce: $23
	inc  hl                                          ; $59cf: $23
	inc  hl                                          ; $59d0: $23
	ld   a, [hl+]                                    ; $59d1: $2a
	ld   e, a                                        ; $59d2: $5f
	ld   a, [hl+]                                    ; $59d3: $2a
	ld   d, a                                        ; $59d4: $57
	ld   a, [hl]                                     ; $59d5: $7e
	ld   hl, $d800                                   ; $59d6: $21 $00 $d8
	call RLEXorCopy                                       ; $59d9: $cd $d2 $09
	pop  af                                          ; $59dc: $f1
	ld   [wWramBank], a                                  ; $59dd: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $59e0: $e0 $70
	ld   c, $80                                      ; $59e2: $0e $80
	ld   de, $8600                                   ; $59e4: $11 $00 $86
	ld   a, $07                                      ; $59e7: $3e $07
	ld   hl, $d600                                   ; $59e9: $21 $00 $d6
	ld   b, $60                                      ; $59ec: $06 $60
	call EnqueueHDMATransfer                                       ; $59ee: $cd $7c $02
	pop  hl                                          ; $59f1: $e1
	ld   a, [wLCDC]                                  ; $59f2: $fa $03 $c2
	bit  7, a                                        ; $59f5: $cb $7f
	ret  nz                                          ; $59f7: $c0

	push hl                                          ; $59f8: $e5
	ld   a, [wWramBank]                                  ; $59f9: $fa $93 $c2
	push af                                          ; $59fc: $f5
	ld   a, $02                                      ; $59fd: $3e $02
	ld   [wWramBank], a                                  ; $59ff: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5a02: $e0 $70
	ld   de, $000c                                   ; $5a04: $11 $0c $00
	add  hl, de                                      ; $5a07: $19
	ld   a, [hl+]                                    ; $5a08: $2a
	ld   e, a                                        ; $5a09: $5f
	ld   a, [hl+]                                    ; $5a0a: $2a
	ld   d, a                                        ; $5a0b: $57
	ld   a, [hl]                                     ; $5a0c: $7e
	ld   hl, $d000                                   ; $5a0d: $21 $00 $d0
	ld   bc, $140a                                   ; $5a10: $01 $0a $14
	call FarCopyLayout                                       ; $5a13: $cd $2c $0b
	ld   hl, $d140                                   ; $5a16: $21 $40 $d1
	call FarCopyLayout                                       ; $5a19: $cd $2c $0b
	ld   hl, $d000                                   ; $5a1c: $21 $00 $d0
	ld   bc, $0140                                   ; $5a1f: $01 $40 $01

jr_00b_5a22:
	ld   a, [hl]                                     ; $5a22: $7e
	bit  2, a                                        ; $5a23: $cb $57
	jr   nz, jr_00b_5a29                             ; $5a25: $20 $02

	add  $03                                         ; $5a27: $c6 $03

jr_00b_5a29:
	ld   [hl+], a                                    ; $5a29: $22
	dec  bc                                          ; $5a2a: $0b
	ld   a, b                                        ; $5a2b: $78
	or   c                                           ; $5a2c: $b1
	jr   nz, jr_00b_5a22                             ; $5a2d: $20 $f3

	pop  af                                          ; $5a2f: $f1
	ld   [wWramBank], a                                  ; $5a30: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5a33: $e0 $70
	ld   c, $80                                      ; $5a35: $0e $80
	ld   de, $8c00                                   ; $5a37: $11 $00 $8c
	ld   a, $07                                      ; $5a3a: $3e $07
	ld   hl, $dc00                                   ; $5a3c: $21 $00 $dc
	ld   b, $40                                      ; $5a3f: $06 $40
	call EnqueueHDMATransfer                                       ; $5a41: $cd $7c $02
	ld   c, $80                                      ; $5a44: $0e $80
	ld   de, $9800                                   ; $5a46: $11 $00 $98
	ld   a, $02                                      ; $5a49: $3e $02
	ld   hl, $d140                                   ; $5a4b: $21 $40 $d1
	ld   b, $14                                      ; $5a4e: $06 $14
	call EnqueueHDMATransfer                                       ; $5a50: $cd $7c $02
	pop  hl                                          ; $5a53: $e1
	ld   a, [wLCDC]                                  ; $5a54: $fa $03 $c2
	bit  7, a                                        ; $5a57: $cb $7f
	ret  nz                                          ; $5a59: $c0

	push hl                                          ; $5a5a: $e5
	ld   a, [wWramBank]                                  ; $5a5b: $fa $93 $c2
	push af                                          ; $5a5e: $f5
	ld   a, $07                                      ; $5a5f: $3e $07
	ld   [wWramBank], a                                  ; $5a61: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5a64: $e0 $70
	ld   de, $0006                                   ; $5a66: $11 $06 $00
	add  hl, de                                      ; $5a69: $19
	ld   a, [hl+]                                    ; $5a6a: $2a
	ld   e, a                                        ; $5a6b: $5f
	ld   a, [hl+]                                    ; $5a6c: $2a
	ld   d, a                                        ; $5a6d: $57
	ld   a, [hl]                                     ; $5a6e: $7e
	ld   hl, $d000                                   ; $5a6f: $21 $00 $d0
	call RLEXorCopy                                       ; $5a72: $cd $d2 $09
	pop  af                                          ; $5a75: $f1
	ld   [wWramBank], a                                  ; $5a76: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5a79: $e0 $70
	ld   c, $80                                      ; $5a7b: $0e $80
	ld   de, $9000                                   ; $5a7d: $11 $00 $90
	ld   a, $07                                      ; $5a80: $3e $07
	ld   hl, $d000                                   ; $5a82: $21 $00 $d0
	ld   b, $60                                      ; $5a85: $06 $60
	call EnqueueHDMATransfer                                       ; $5a87: $cd $7c $02
	pop  hl                                          ; $5a8a: $e1
	ld   a, [wLCDC]                                  ; $5a8b: $fa $03 $c2
	bit  7, a                                        ; $5a8e: $cb $7f
	ret  nz                                          ; $5a90: $c0

	push hl                                          ; $5a91: $e5
	ld   a, [wWramBank]                                  ; $5a92: $fa $93 $c2
	push af                                          ; $5a95: $f5
	ld   a, $07                                      ; $5a96: $3e $07
	ld   [wWramBank], a                                  ; $5a98: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5a9b: $e0 $70
	ld   de, $0009                                   ; $5a9d: $11 $09 $00
	add  hl, de                                      ; $5aa0: $19
	ld   a, [hl+]                                    ; $5aa1: $2a
	ld   e, a                                        ; $5aa2: $5f
	ld   a, [hl+]                                    ; $5aa3: $2a
	ld   d, a                                        ; $5aa4: $57
	ld   a, [hl]                                     ; $5aa5: $7e
	ld   hl, $d800                                   ; $5aa6: $21 $00 $d8
	call RLEXorCopy                                       ; $5aa9: $cd $d2 $09
	pop  af                                          ; $5aac: $f1
	ld   [wWramBank], a                                  ; $5aad: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5ab0: $e0 $70
	ld   c, $81                                      ; $5ab2: $0e $81
	ld   de, $9000                                   ; $5ab4: $11 $00 $90
	ld   a, $07                                      ; $5ab7: $3e $07
	ld   hl, $d800                                   ; $5ab9: $21 $00 $d8
	ld   b, $60                                      ; $5abc: $06 $60
	call EnqueueHDMATransfer                                       ; $5abe: $cd $7c $02
	pop  hl                                          ; $5ac1: $e1
	ld   a, [wLCDC]                                  ; $5ac2: $fa $03 $c2
	bit  7, a                                        ; $5ac5: $cb $7f
	ret  nz                                          ; $5ac7: $c0

	push hl                                          ; $5ac8: $e5
	ld   c, $80                                      ; $5ac9: $0e $80
	ld   de, $9600                                   ; $5acb: $11 $00 $96
	ld   a, $07                                      ; $5ace: $3e $07
	ld   hl, $d600                                   ; $5ad0: $21 $00 $d6
	ld   b, $20                                      ; $5ad3: $06 $20
	call EnqueueHDMATransfer                                       ; $5ad5: $cd $7c $02
	ld   c, $81                                      ; $5ad8: $0e $81
	ld   de, $9600                                   ; $5ada: $11 $00 $96
	ld   a, $07                                      ; $5add: $3e $07
	ld   hl, $de00                                   ; $5adf: $21 $00 $de
	ld   b, $20                                      ; $5ae2: $06 $20
	call EnqueueHDMATransfer                                       ; $5ae4: $cd $7c $02
	ld   c, $81                                      ; $5ae7: $0e $81
	ld   de, $9800                                   ; $5ae9: $11 $00 $98
	ld   a, $02                                      ; $5aec: $3e $02
	ld   hl, $d000                                   ; $5aee: $21 $00 $d0
	ld   b, $14                                      ; $5af1: $06 $14
	call EnqueueHDMATransfer                                       ; $5af3: $cd $7c $02
	pop  hl                                          ; $5af6: $e1
	ld   a, [wLCDC]                                  ; $5af7: $fa $03 $c2
	bit  7, a                                        ; $5afa: $cb $7f
	ret  nz                                          ; $5afc: $c0

	push hl                                          ; $5afd: $e5
	ld   de, $000f                                   ; $5afe: $11 $0f $00
	add  hl, de                                      ; $5b01: $19
	ld   a, [hl+]                                    ; $5b02: $2a
	ld   e, a                                        ; $5b03: $5f
	ld   a, [hl+]                                    ; $5b04: $2a
	ld   d, a                                        ; $5b05: $57
	ld   a, [hl]                                     ; $5b06: $7e
	ld   h, d                                        ; $5b07: $62
	ld   l, e                                        ; $5b08: $6b
	ld   de, wBGPalettes+3*8                                   ; $5b09: $11 $f6 $c2
	ld   bc, $0050                                   ; $5b0c: $01 $50 $00
	call FarMemCopy                                       ; $5b0f: $cd $b2 $09
	ld   bc, $0c33                                   ; $5b12: $01 $33 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5b15: $cd $aa $04
	pop  hl                                          ; $5b18: $e1
	ld   de, $0017                                   ; $5b19: $11 $17 $00
	add  hl, de                                      ; $5b1c: $19
	ld   a, [hl]                                     ; $5b1d: $7e
	ret                                              ; $5b1e: $c9


Call_00b_5b1f:
Jump_00b_5b1f:
	ld   h, $00                                      ; $5b1f: $26 $00
	ld   l, a                                        ; $5b21: $6f
	add  hl, hl                                      ; $5b22: $29
	add  hl, hl                                      ; $5b23: $29
	add  hl, hl                                      ; $5b24: $29
	add  hl, hl                                      ; $5b25: $29
	add  hl, hl                                      ; $5b26: $29
	ld   bc, $5b0c                                   ; $5b27: $01 $0c $5b
	add  hl, bc                                      ; $5b2a: $09
	ret                                              ; $5b2b: $c9


	dec  [hl]                                        ; $5b2c: $35
	ld   b, [hl]                                     ; $5b2d: $46
	and  e                                           ; $5b2e: $a3
	sbc  $7f                                         ; $5b2f: $de $7f
	sub  c                                           ; $5b31: $91
	nop                                              ; $5b32: $00
	ld   b, b                                        ; $5b33: $40
	sub  l                                           ; $5b34: $95
	dec  sp                                          ; $5b35: $3b
	ld   e, l                                        ; $5b36: $5d
	sbc  h                                           ; $5b37: $9c
	jr   nz, jr_00b_5bad                             ; $5b38: $20 $73

	and  d                                           ; $5b3a: $a2
	ld   sp, hl                                      ; $5b3b: $f9
	ld   [hl], l                                     ; $5b3c: $75
	and  e                                           ; $5b3d: $a3
	nop                                              ; $5b3e: $00
	nop                                              ; $5b3f: $00
	rst  $38                                         ; $5b40: $ff
	rst  $38                                         ; $5b41: $ff
	rst  $38                                         ; $5b42: $ff
	ld   [bc], a                                     ; $5b43: $02
	nop                                              ; $5b44: $00
	nop                                              ; $5b45: $00
	nop                                              ; $5b46: $00
	nop                                              ; $5b47: $00
	nop                                              ; $5b48: $00
	nop                                              ; $5b49: $00
	nop                                              ; $5b4a: $00
	nop                                              ; $5b4b: $00
	xor  $42                                         ; $5b4c: $ee $42
	and  b                                           ; $5b4e: $a0
	or   b                                           ; $5b4f: $b0
	ld   e, h                                        ; $5b50: $5c
	and  h                                           ; $5b51: $a4
	inc  [hl]                                        ; $5b52: $34
	ld   h, d                                        ; $5b53: $62
	sub  [hl]                                        ; $5b54: $96
	ld   c, a                                        ; $5b55: $4f
	ld   l, l                                        ; $5b56: $6d
	sbc  h                                           ; $5b57: $9c
	or   b                                           ; $5b58: $b0
	ld   [hl], h                                     ; $5b59: $74
	and  d                                           ; $5b5a: $a2
	ld   c, c                                        ; $5b5b: $49
	halt                                             ; $5b5c: $76
	and  e                                           ; $5b5d: $a3
	ld   bc, $0201                                   ; $5b5e: $01 $01 $02
	dec  b                                           ; $5b61: $05
	rst  $38                                         ; $5b62: $ff
	inc  bc                                          ; $5b63: $03
	db   $fc                                         ; $5b64: $fc
	db   $fc                                         ; $5b65: $fc
	db   $fc                                         ; $5b66: $fc
	dec  c                                           ; $5b67: $0d
	ld   c, $0d                                      ; $5b68: $0e $0d
	nop                                              ; $5b6a: $00
	nop                                              ; $5b6b: $00
	adc  h                                           ; $5b6c: $8c
	halt                                             ; $5b6d: $76
	and  c                                           ; $5b6e: $a1
	jp   nc, $a45c                                   ; $5b6f: $d2 $5c $a4

	xor  $56                                         ; $5b72: $ee $56
	sub  h                                           ; $5b74: $94
	call c, $9b63                                    ; $5b75: $dc $63 $9b
	ld   b, b                                        ; $5b78: $40
	halt                                             ; $5b79: $76
	and  d                                           ; $5b7a: $a2
	sbc  c                                           ; $5b7b: $99
	halt                                             ; $5b7c: $76
	and  e                                           ; $5b7d: $a3
	nop                                              ; $5b7e: $00
	rlca                                             ; $5b7f: $07
	rst  $38                                         ; $5b80: $ff
	rst  $38                                         ; $5b81: $ff
	rst  $38                                         ; $5b82: $ff
	ld   b, $00                                      ; $5b83: $06 $00
	nop                                              ; $5b85: $00
	nop                                              ; $5b86: $00
	nop                                              ; $5b87: $00
	nop                                              ; $5b88: $00
	nop                                              ; $5b89: $00
	nop                                              ; $5b8a: $00
	nop                                              ; $5b8b: $00
	dec  sp                                          ; $5b8c: $3b
	ld   c, h                                        ; $5b8d: $4c
	and  e                                           ; $5b8e: $a3
	db   $f4                                         ; $5b8f: $f4
	ld   e, h                                        ; $5b90: $5c
	and  h                                           ; $5b91: $a4
	or   l                                           ; $5b92: $b5
	ld   l, h                                        ; $5b93: $6c
	sbc  b                                           ; $5b94: $98
	ldh  a, [rHDMA5]                                 ; $5b95: $f0 $55
	sbc  [hl]                                        ; $5b97: $9e
	ret  nc                                          ; $5b98: $d0

	ld   [hl], a                                     ; $5b99: $77
	and  d                                           ; $5b9a: $a2
	jp   hl                                          ; $5b9b: $e9


	halt                                             ; $5b9c: $76
	and  e                                           ; $5b9d: $a3
	nop                                              ; $5b9e: $00
	ld   [$ffff], sp                                 ; $5b9f: $08 $ff $ff
	rst  $38                                         ; $5ba2: $ff
	ld   b, $00                                      ; $5ba3: $06 $00
	nop                                              ; $5ba5: $00
	nop                                              ; $5ba6: $00
	nop                                              ; $5ba7: $00
	nop                                              ; $5ba8: $00
	nop                                              ; $5ba9: $00
	nop                                              ; $5baa: $00
	nop                                              ; $5bab: $00
	sub  c                                           ; $5bac: $91

jr_00b_5bad:
	ld   d, a                                        ; $5bad: $57
	and  d                                           ; $5bae: $a2
	ld   d, $5d                                      ; $5baf: $16 $5d
	and  h                                           ; $5bb1: $a4
	jr   z, jr_00b_5c17                              ; $5bb2: $28 $63

	sub  l                                           ; $5bb4: $95
	dec  sp                                          ; $5bb5: $3b
	ld   [hl], l                                     ; $5bb6: $75
	sbc  h                                           ; $5bb7: $9c
	ld   h, b                                        ; $5bb8: $60
	ld   a, c                                        ; $5bb9: $79
	and  d                                           ; $5bba: $a2
	add  hl, sp                                      ; $5bbb: $39
	ld   [hl], a                                     ; $5bbc: $77
	and  e                                           ; $5bbd: $a3
	nop                                              ; $5bbe: $00
	add  hl, bc                                      ; $5bbf: $09
	rst  $38                                         ; $5bc0: $ff
	rst  $38                                         ; $5bc1: $ff
	rst  $38                                         ; $5bc2: $ff
	inc  b                                           ; $5bc3: $04
	nop                                              ; $5bc4: $00
	nop                                              ; $5bc5: $00
	nop                                              ; $5bc6: $00
	nop                                              ; $5bc7: $00
	nop                                              ; $5bc8: $00
	nop                                              ; $5bc9: $00
	nop                                              ; $5bca: $00
	nop                                              ; $5bcb: $00
	ld   a, [de]                                     ; $5bcc: $1a
	ld   d, d                                        ; $5bcd: $52
	sbc  e                                           ; $5bce: $9b
	ld   l, b                                        ; $5bcf: $68
	ld   e, e                                        ; $5bd0: $5b
	sub  [hl]                                        ; $5bd1: $96
	adc  c                                           ; $5bd2: $89
	ld   e, h                                        ; $5bd3: $5c
	and  c                                           ; $5bd4: $a1
	jr   c, jr_00b_5c34                              ; $5bd5: $38 $5d

	and  h                                           ; $5bd7: $a4
	ldh  a, [$7a]                                    ; $5bd8: $f0 $7a
	and  d                                           ; $5bda: $a2
	adc  c                                           ; $5bdb: $89
	ld   [hl], a                                     ; $5bdc: $77
	and  e                                           ; $5bdd: $a3
	ld   bc, $0b0a                                   ; $5bde: $01 $0a $0b
	ld   c, $ff                                      ; $5be1: $0e $ff
	ld   bc, $fcfc                                   ; $5be3: $01 $fc $fc
	db   $fc                                         ; $5be6: $fc
	dec  c                                           ; $5be7: $0d
	ld   c, $0d                                      ; $5be8: $0e $0d
	nop                                              ; $5bea: $00
	nop                                              ; $5beb: $00
	rlca                                             ; $5bec: $07
	ld   b, d                                        ; $5bed: $42
	and  d                                           ; $5bee: $a2
	ld   e, d                                        ; $5bef: $5a
	ld   e, l                                        ; $5bf0: $5d
	and  h                                           ; $5bf1: $a4
	ret  nz                                          ; $5bf2: $c0

	ld   b, a                                        ; $5bf3: $47
	sub  h                                           ; $5bf4: $94
	add  $70                                         ; $5bf5: $c6 $70
	sbc  e                                           ; $5bf7: $9b
	add  b                                           ; $5bf8: $80
	ld   a, h                                        ; $5bf9: $7c
	and  d                                           ; $5bfa: $a2
	reti                                             ; $5bfb: $d9


	ld   [hl], a                                     ; $5bfc: $77
	and  e                                           ; $5bfd: $a3
	nop                                              ; $5bfe: $00
	db   $10                                         ; $5bff: $10
	rst  $38                                         ; $5c00: $ff
	rst  $38                                         ; $5c01: $ff
	rst  $38                                         ; $5c02: $ff
	ld   [bc], a                                     ; $5c03: $02
	nop                                              ; $5c04: $00
	nop                                              ; $5c05: $00
	nop                                              ; $5c06: $00
	nop                                              ; $5c07: $00
	nop                                              ; $5c08: $00
	nop                                              ; $5c09: $00
	nop                                              ; $5c0a: $00
	nop                                              ; $5c0b: $00
	ld   a, [hl]                                     ; $5c0c: $7e
	ld   d, d                                        ; $5c0d: $52
	and  c                                           ; $5c0e: $a1
	add  l                                           ; $5c0f: $85
	ld   d, h                                        ; $5c10: $54
	sbc  c                                           ; $5c11: $99
	ld   a, h                                        ; $5c12: $7c
	ld   e, l                                        ; $5c13: $5d
	and  h                                           ; $5c14: $a4
	sbc  [hl]                                        ; $5c15: $9e
	ld   e, l                                        ; $5c16: $5d

jr_00b_5c17:
	and  h                                           ; $5c17: $a4
	db   $10                                         ; $5c18: $10
	ld   a, [hl]                                     ; $5c19: $7e
	and  d                                           ; $5c1a: $a2
	add  hl, hl                                      ; $5c1b: $29
	ld   a, b                                        ; $5c1c: $78
	and  e                                           ; $5c1d: $a3
	ld   bc, $1211                                   ; $5c1e: $01 $11 $12
	dec  d                                           ; $5c21: $15
	rst  $38                                         ; $5c22: $ff
	inc  bc                                          ; $5c23: $03
	db   $fc                                         ; $5c24: $fc
	db   $fc                                         ; $5c25: $fc
	db   $fc                                         ; $5c26: $fc
	dec  c                                           ; $5c27: $0d
	ld   c, $0d                                      ; $5c28: $0e $0d
	nop                                              ; $5c2a: $00
	nop                                              ; $5c2b: $00
	cp   [hl]                                        ; $5c2c: $be
	ld   b, a                                        ; $5c2d: $47
	and  e                                           ; $5c2e: $a3
	ret  nz                                          ; $5c2f: $c0

	ld   e, l                                        ; $5c30: $5d
	and  h                                           ; $5c31: $a4
	adc  l                                           ; $5c32: $8d
	ld   d, e                                        ; $5c33: $53

jr_00b_5c34:
	sub  a                                           ; $5c34: $97
	call z, $a371                                    ; $5c35: $cc $71 $a3
	nop                                              ; $5c38: $00
	ld   b, b                                        ; $5c39: $40
	and  e                                           ; $5c3a: $a3
	ld   a, c                                        ; $5c3b: $79
	ld   a, b                                        ; $5c3c: $78
	and  e                                           ; $5c3d: $a3
	nop                                              ; $5c3e: $00
	rla                                              ; $5c3f: $17
	rst  $38                                         ; $5c40: $ff
	rst  $38                                         ; $5c41: $ff
	rst  $38                                         ; $5c42: $ff
	ld   b, $00                                      ; $5c43: $06 $00
	nop                                              ; $5c45: $00
	nop                                              ; $5c46: $00
	nop                                              ; $5c47: $00
	nop                                              ; $5c48: $00
	nop                                              ; $5c49: $00
	nop                                              ; $5c4a: $00
	nop                                              ; $5c4b: $00
	inc  de                                          ; $5c4c: $13
	ld   e, l                                        ; $5c4d: $5d
	sbc  [hl]                                        ; $5c4e: $9e
	ldh  [c], a                                      ; $5c4f: $e2
	ld   e, l                                        ; $5c50: $5d
	and  h                                           ; $5c51: $a4
	or   a                                           ; $5c52: $b7
	ld   c, l                                        ; $5c53: $4d
	sub  [hl]                                        ; $5c54: $96
	db   $f4                                         ; $5c55: $f4
	ld   d, [hl]                                     ; $5c56: $56
	sbc  l                                           ; $5c57: $9d
	sub  b                                           ; $5c58: $90
	ld   b, c                                        ; $5c59: $41
	and  e                                           ; $5c5a: $a3
	ret                                              ; $5c5b: $c9


	ld   a, b                                        ; $5c5c: $78
	and  e                                           ; $5c5d: $a3
	nop                                              ; $5c5e: $00
	jr   @+$01                                       ; $5c5f: $18 $ff

	rst  $38                                         ; $5c61: $ff
	rst  $38                                         ; $5c62: $ff
	nop                                              ; $5c63: $00
	nop                                              ; $5c64: $00
	nop                                              ; $5c65: $00
	nop                                              ; $5c66: $00
	nop                                              ; $5c67: $00
	nop                                              ; $5c68: $00
	nop                                              ; $5c69: $00
	nop                                              ; $5c6a: $00
	nop                                              ; $5c6b: $00


Func_0b_5c6c::
	ld   a, h                                        ; $5c6c: $7c
	ld   h, $00                                      ; $5c6d: $26 $00
	cp   $03                                         ; $5c6f: $fe $03
	jp   z, Jump_00b_5d02                            ; $5c71: $ca $02 $5d

	cp   $02                                         ; $5c74: $fe $02
	jr   z, jr_00b_5ceb                              ; $5c76: $28 $73

	cp   $01                                         ; $5c78: $fe $01
	jr   z, jr_00b_5cb2                              ; $5c7a: $28 $36

	push hl                                          ; $5c7c: $e5
	ld   a, [wWramBank]                                  ; $5c7d: $fa $93 $c2
	push af                                          ; $5c80: $f5
	ld   a, $07                                      ; $5c81: $3e $07
	ld   [wWramBank], a                                  ; $5c83: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5c86: $e0 $70
	call Call_00b_5d2e                               ; $5c88: $cd $2e $5d
	ld   a, [hl+]                                    ; $5c8b: $2a
	ld   e, a                                        ; $5c8c: $5f
	ld   a, [hl+]                                    ; $5c8d: $2a
	ld   d, a                                        ; $5c8e: $57
	ld   a, [hl]                                     ; $5c8f: $7e
	ld   hl, $d000                                   ; $5c90: $21 $00 $d0
	call RLEXorCopy                                       ; $5c93: $cd $d2 $09
	pop  af                                          ; $5c96: $f1
	ld   [wWramBank], a                                  ; $5c97: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5c9a: $e0 $70
	ld   c, $80                                      ; $5c9c: $0e $80
	ld   de, $8000                                   ; $5c9e: $11 $00 $80
	ld   a, $07                                      ; $5ca1: $3e $07
	ld   hl, $d000                                   ; $5ca3: $21 $00 $d0
	ld   b, $60                                      ; $5ca6: $06 $60
	call EnqueueHDMATransfer                                       ; $5ca8: $cd $7c $02
	pop  hl                                          ; $5cab: $e1
	ld   a, [wLCDC]                                  ; $5cac: $fa $03 $c2
	bit  7, a                                        ; $5caf: $cb $7f
	ret  nz                                          ; $5cb1: $c0

jr_00b_5cb2:
	push hl                                          ; $5cb2: $e5
	ld   a, [wWramBank]                                  ; $5cb3: $fa $93 $c2
	push af                                          ; $5cb6: $f5
	ld   a, $07                                      ; $5cb7: $3e $07
	ld   [wWramBank], a                                  ; $5cb9: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5cbc: $e0 $70
	call Call_00b_5d2e                               ; $5cbe: $cd $2e $5d
	inc  hl                                          ; $5cc1: $23
	inc  hl                                          ; $5cc2: $23
	inc  hl                                          ; $5cc3: $23
	ld   a, [hl+]                                    ; $5cc4: $2a
	ld   e, a                                        ; $5cc5: $5f
	ld   a, [hl+]                                    ; $5cc6: $2a
	ld   d, a                                        ; $5cc7: $57
	ld   a, [hl]                                     ; $5cc8: $7e
	ld   hl, $d800                                   ; $5cc9: $21 $00 $d8
	call RLEXorCopy                                       ; $5ccc: $cd $d2 $09
	pop  af                                          ; $5ccf: $f1
	ld   [wWramBank], a                                  ; $5cd0: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5cd3: $e0 $70
	ld   c, $80                                      ; $5cd5: $0e $80
	ld   de, $8600                                   ; $5cd7: $11 $00 $86
	ld   a, $07                                      ; $5cda: $3e $07
	ld   hl, $d600                                   ; $5cdc: $21 $00 $d6
	ld   b, $60                                      ; $5cdf: $06 $60
	call EnqueueHDMATransfer                                       ; $5ce1: $cd $7c $02
	pop  hl                                          ; $5ce4: $e1
	ld   a, [wLCDC]                                  ; $5ce5: $fa $03 $c2
	bit  7, a                                        ; $5ce8: $cb $7f
	ret  nz                                          ; $5cea: $c0

jr_00b_5ceb:
	push hl                                          ; $5ceb: $e5
	ld   c, $80                                      ; $5cec: $0e $80
	ld   de, $8c00                                   ; $5cee: $11 $00 $8c
	ld   a, $07                                      ; $5cf1: $3e $07
	ld   hl, $dc00                                   ; $5cf3: $21 $00 $dc
	ld   b, $40                                      ; $5cf6: $06 $40
	call EnqueueHDMATransfer                                       ; $5cf8: $cd $7c $02
	pop  hl                                          ; $5cfb: $e1
	ld   a, [wLCDC]                                  ; $5cfc: $fa $03 $c2
	bit  7, a                                        ; $5cff: $cb $7f
	ret  nz                                          ; $5d01: $c0

Jump_00b_5d02:
	call Call_00b_5d2e                               ; $5d02: $cd $2e $5d
	push hl                                          ; $5d05: $e5
	ld   bc, $0009                                   ; $5d06: $01 $09 $00
	add  hl, bc                                      ; $5d09: $09
	ld   a, [hl+]                                    ; $5d0a: $2a
	ld   c, a                                        ; $5d0b: $4f
	ld   a, [hl+]                                    ; $5d0c: $2a
	ld   b, a                                        ; $5d0d: $47
	ld   a, [hl+]                                    ; $5d0e: $2a
	ld   e, [hl]                                     ; $5d0f: $5e
	inc  hl                                          ; $5d10: $23
	ld   d, [hl]                                     ; $5d11: $56
	push de                                          ; $5d12: $d5
	ld   h, b                                        ; $5d13: $60
	ld   l, c                                        ; $5d14: $69
	ld   de, $c30e                                   ; $5d15: $11 $0e $c3
	ld   bc, $0038                                   ; $5d18: $01 $38 $00
	call FarMemCopy                                       ; $5d1b: $cd $b2 $09
	ld   bc, $1833                                   ; $5d1e: $01 $33 $18
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5d21: $cd $aa $04
	pop  de                                          ; $5d24: $d1
	pop  hl                                          ; $5d25: $e1
	ld   bc, $0014                                   ; $5d26: $01 $14 $00
	add  hl, bc                                      ; $5d29: $09
	ld   a, [hl]                                     ; $5d2a: $7e
	ld   h, d                                        ; $5d2b: $62
	ld   l, e                                        ; $5d2c: $6b
	ret                                              ; $5d2d: $c9


Call_00b_5d2e:
	ld   b, h                                        ; $5d2e: $44
	ld   c, l                                        ; $5d2f: $4d
	add  hl, hl                                      ; $5d30: $29
	add  hl, hl                                      ; $5d31: $29
	add  hl, hl                                      ; $5d32: $29
	add  hl, hl                                      ; $5d33: $29
	add  hl, bc                                      ; $5d34: $09
	add  hl, bc                                      ; $5d35: $09
	add  hl, bc                                      ; $5d36: $09
	add  hl, bc                                      ; $5d37: $09
	add  hl, bc                                      ; $5d38: $09
	ld   bc, $5d29                                   ; $5d39: $01 $29 $5d
	add  hl, bc                                      ; $5d3c: $09
	ret                                              ; $5d3d: $c9


	ld   b, h                                        ; $5d3e: $44
	ld   h, [hl]                                     ; $5d3f: $66
	and  c                                           ; $5d40: $a1
	ld   b, d                                        ; $5d41: $42
	ld   [hl], d                                     ; $5d42: $72
	and  e                                           ; $5d43: $a3
	ld   l, b                                        ; $5d44: $68
	ld   h, d                                        ; $5d45: $62
	and  h                                           ; $5d46: $a4
	dec  b                                           ; $5d47: $05
	ld   c, a                                        ; $5d48: $4f
	and  h                                           ; $5d49: $a4
	ccf                                              ; $5d4a: $3f
	nop                                              ; $5d4b: $00
	rlca                                             ; $5d4c: $07
	nop                                              ; $5d4d: $00
	nop                                              ; $5d4e: $00
	rst  $38                                         ; $5d4f: $ff
	rst  $38                                         ; $5d50: $ff
	rst  $38                                         ; $5d51: $ff
	nop                                              ; $5d52: $00
	ld   bc, $a148                                   ; $5d53: $01 $48 $a1
	inc  b                                           ; $5d56: $04
	ld   e, [hl]                                     ; $5d57: $5e
	and  h                                           ; $5d58: $a4
	db   $fc                                         ; $5d59: $fc
	ld   a, a                                        ; $5d5a: $7f
	sub  e                                           ; $5d5b: $93
	dec  a                                           ; $5d5c: $3d
	ld   c, a                                        ; $5d5d: $4f
	and  h                                           ; $5d5e: $a4
	sbc  h                                           ; $5d5f: $9c
	nop                                              ; $5d60: $00
	rlca                                             ; $5d61: $07
	ld   h, b                                        ; $5d62: $60
	ld   bc, $0100                                   ; $5d63: $01 $00 $01
	rst  $38                                         ; $5d66: $ff
	ld   bc, $5a0c                                   ; $5d67: $01 $0c $5a
	and  c                                           ; $5d6a: $a1
	ld   h, $5e                                      ; $5d6b: $26 $5e
	and  h                                           ; $5d6d: $a4
	db   $fc                                         ; $5d6e: $fc
	ld   a, a                                        ; $5d6f: $7f
	sub  e                                           ; $5d70: $93
	ld   [hl], l                                     ; $5d71: $75
	ld   c, a                                        ; $5d72: $4f
	and  h                                           ; $5d73: $a4
	sbc  h                                           ; $5d74: $9c
	nop                                              ; $5d75: $00
	rlca                                             ; $5d76: $07
	ld   h, b                                        ; $5d77: $60
	ld   [$0100], sp                                 ; $5d78: $08 $00 $01
	rst  $38                                         ; $5d7b: $ff
	ld   [bc], a                                     ; $5d7c: $02
	ld   a, [de]                                     ; $5d7d: $1a
	ld   a, l                                        ; $5d7e: $7d
	sbc  h                                           ; $5d7f: $9c
	ld   c, b                                        ; $5d80: $48
	ld   e, [hl]                                     ; $5d81: $5e
	and  h                                           ; $5d82: $a4
	db   $fc                                         ; $5d83: $fc
	ld   a, a                                        ; $5d84: $7f
	sub  e                                           ; $5d85: $93
	xor  l                                           ; $5d86: $ad
	ld   c, a                                        ; $5d87: $4f
	and  h                                           ; $5d88: $a4
	sbc  h                                           ; $5d89: $9c
	nop                                              ; $5d8a: $00
	rlca                                             ; $5d8b: $07
	ld   h, b                                        ; $5d8c: $60
	rrca                                             ; $5d8d: $0f
	nop                                              ; $5d8e: $00
	ld   bc, $03ff                                   ; $5d8f: $01 $ff $03
	ld   d, h                                        ; $5d92: $54
	ld   h, [hl]                                     ; $5d93: $66
	sbc  a                                           ; $5d94: $9f
	ld   l, d                                        ; $5d95: $6a
	ld   e, [hl]                                     ; $5d96: $5e
	and  h                                           ; $5d97: $a4
	db   $fc                                         ; $5d98: $fc
	ld   a, a                                        ; $5d99: $7f
	sub  e                                           ; $5d9a: $93
	push hl                                          ; $5d9b: $e5
	ld   c, a                                        ; $5d9c: $4f
	and  h                                           ; $5d9d: $a4
	sbc  h                                           ; $5d9e: $9c
	nop                                              ; $5d9f: $00
	rlca                                             ; $5da0: $07
	ld   h, b                                        ; $5da1: $60
	ld   d, $00                                      ; $5da2: $16 $00
	ld   bc, $06ff                                   ; $5da4: $01 $ff $06
	nop                                              ; $5da7: $00
	ld   b, b                                        ; $5da8: $40
	and  c                                           ; $5da9: $a1
	adc  h                                           ; $5daa: $8c
	ld   e, [hl]                                     ; $5dab: $5e
	and  h                                           ; $5dac: $a4
	db   $fc                                         ; $5dad: $fc
	ld   a, a                                        ; $5dae: $7f
	sub  e                                           ; $5daf: $93
	dec  e                                           ; $5db0: $1d
	ld   d, b                                        ; $5db1: $50
	and  h                                           ; $5db2: $a4
	sbc  h                                           ; $5db3: $9c
	nop                                              ; $5db4: $00
	rlca                                             ; $5db5: $07
	ld   h, b                                        ; $5db6: $60
	dec  e                                           ; $5db7: $1d
	nop                                              ; $5db8: $00
	ld   bc, $05ff                                   ; $5db9: $01 $ff $05
	adc  [hl]                                        ; $5dbc: $8e
	ld   d, a                                        ; $5dbd: $57
	and  c                                           ; $5dbe: $a1
	xor  [hl]                                        ; $5dbf: $ae
	ld   e, [hl]                                     ; $5dc0: $5e
	and  h                                           ; $5dc1: $a4
	db   $fc                                         ; $5dc2: $fc
	ld   a, a                                        ; $5dc3: $7f
	sub  e                                           ; $5dc4: $93
	ld   d, l                                        ; $5dc5: $55
	ld   d, b                                        ; $5dc6: $50
	and  h                                           ; $5dc7: $a4
	sbc  h                                           ; $5dc8: $9c
	nop                                              ; $5dc9: $00
	rlca                                             ; $5dca: $07
	ld   h, b                                        ; $5dcb: $60
	inc  h                                           ; $5dcc: $24
	nop                                              ; $5dcd: $00
	ld   bc, $04ff                                   ; $5dce: $01 $ff $04
	ld   e, b                                        ; $5dd1: $58
	ld   b, l                                        ; $5dd2: $45
	and  c                                           ; $5dd3: $a1
	ret  nc                                          ; $5dd4: $d0

	ld   e, [hl]                                     ; $5dd5: $5e
	and  h                                           ; $5dd6: $a4
	db   $fc                                         ; $5dd7: $fc
	ld   a, a                                        ; $5dd8: $7f
	sub  e                                           ; $5dd9: $93
	adc  l                                           ; $5dda: $8d
	ld   d, b                                        ; $5ddb: $50
	and  h                                           ; $5ddc: $a4
	sbc  h                                           ; $5ddd: $9c
	nop                                              ; $5dde: $00
	rlca                                             ; $5ddf: $07
	ld   h, b                                        ; $5de0: $60
	dec  hl                                          ; $5de1: $2b
	nop                                              ; $5de2: $00
	ld   bc, $0bff                                   ; $5de3: $01 $ff $0b
	ld   h, h                                        ; $5de6: $64
	ld   l, c                                        ; $5de7: $69
	sbc  a                                           ; $5de8: $9f
	ldh  a, [c]                                      ; $5de9: $f2
	ld   e, [hl]                                     ; $5dea: $5e
	and  h                                           ; $5deb: $a4
	db   $fc                                         ; $5dec: $fc
	ld   a, a                                        ; $5ded: $7f
	sub  e                                           ; $5dee: $93
	push bc                                          ; $5def: $c5
	ld   d, b                                        ; $5df0: $50
	and  h                                           ; $5df1: $a4
	sbc  h                                           ; $5df2: $9c
	nop                                              ; $5df3: $00
	rlca                                             ; $5df4: $07
	ld   h, b                                        ; $5df5: $60
	ld   [hl-], a                                    ; $5df6: $32
	nop                                              ; $5df7: $00
	ld   bc, $0aff                                   ; $5df8: $01 $ff $0a
	dec  de                                          ; $5dfb: $1b
	ld   a, h                                        ; $5dfc: $7c
	sbc  [hl]                                        ; $5dfd: $9e
	sub  h                                           ; $5dfe: $94
	ld   a, [hl]                                     ; $5dff: $7e
	sub  a                                           ; $5e00: $97
	ld   d, [hl]                                     ; $5e01: $56
	ld   e, h                                        ; $5e02: $5c
	and  h                                           ; $5e03: $a4
	db   $fd                                         ; $5e04: $fd
	ld   d, b                                        ; $5e05: $50
	and  h                                           ; $5e06: $a4
	ld   d, l                                        ; $5e07: $55
	nop                                              ; $5e08: $00
	rlca                                             ; $5e09: $07
	nop                                              ; $5e0a: $00
	add  hl, sp                                      ; $5e0b: $39
	rst  $38                                         ; $5e0c: $ff
	rst  $38                                         ; $5e0d: $ff
	rst  $38                                         ; $5e0e: $ff
	dec  b                                           ; $5e0f: $05
	cp   b                                           ; $5e10: $b8
	ld   d, c                                        ; $5e11: $51
	and  e                                           ; $5e12: $a3
	inc  d                                           ; $5e13: $14
	ld   e, a                                        ; $5e14: $5f
	and  h                                           ; $5e15: $a4
	db   $fc                                         ; $5e16: $fc
	ld   a, a                                        ; $5e17: $7f
	sub  e                                           ; $5e18: $93
	dec  [hl]                                        ; $5e19: $35
	ld   d, c                                        ; $5e1a: $51
	and  h                                           ; $5e1b: $a4
	dec  hl                                          ; $5e1c: $2b
	nop                                              ; $5e1d: $00
	rlca                                             ; $5e1e: $07
	nop                                              ; $5e1f: $00
	ld   a, [hl-]                                    ; $5e20: $3a
	rst  $38                                         ; $5e21: $ff
	rst  $38                                         ; $5e22: $ff
	rst  $38                                         ; $5e23: $ff
	inc  b                                           ; $5e24: $04
	or   l                                           ; $5e25: $b5
	ld   b, e                                        ; $5e26: $43
	sbc  [hl]                                        ; $5e27: $9e
	ld   c, [hl]                                     ; $5e28: $4e
	ld   c, l                                        ; $5e29: $4d
	and  c                                           ; $5e2a: $a1
	ld   a, [$a374]                                  ; $5e2b: $fa $74 $a3
	ld   l, l                                        ; $5e2e: $6d
	ld   d, c                                        ; $5e2f: $51
	and  h                                           ; $5e30: $a4
	cp   h                                           ; $5e31: $bc
	nop                                              ; $5e32: $00
	rlca                                             ; $5e33: $07
	ld   bc, $3c3b                                   ; $5e34: $01 $3b $3c
	ccf                                              ; $5e37: $3f
	rst  $38                                         ; $5e38: $ff
	ld   bc, $72ec                                   ; $5e39: $01 $ec $72
	and  b                                           ; $5e3c: $a0
	ld   c, [hl]                                     ; $5e3d: $4e
	ld   b, e                                        ; $5e3e: $43
	sbc  a                                           ; $5e3f: $9f
	and  d                                           ; $5e40: $a2
	ld   [hl], h                                     ; $5e41: $74
	and  e                                           ; $5e42: $a3
	and  l                                           ; $5e43: $a5
	ld   d, c                                        ; $5e44: $51
	and  h                                           ; $5e45: $a4
	cp   h                                           ; $5e46: $bc
	nop                                              ; $5e47: $00
	rlca                                             ; $5e48: $07
	ld   bc, $4241                                   ; $5e49: $01 $41 $42
	ld   b, l                                        ; $5e4c: $45
	rst  $38                                         ; $5e4d: $ff
	ld   bc, $4d9a                                   ; $5e4e: $01 $9a $4d
	sbc  e                                           ; $5e51: $9b
	sbc  $63                                         ; $5e52: $de $63
	and  c                                           ; $5e54: $a1
	add  hl, de                                      ; $5e55: $19
	ld   a, c                                        ; $5e56: $79
	and  e                                           ; $5e57: $a3
	db   $dd                                         ; $5e58: $dd
	ld   d, c                                        ; $5e59: $51
	and  h                                           ; $5e5a: $a4
	cp   h                                           ; $5e5b: $bc
	nop                                              ; $5e5c: $00
	rlca                                             ; $5e5d: $07
	ld   bc, $4847                                   ; $5e5e: $01 $47 $48
	ld   c, e                                        ; $5e61: $4b
	rst  $38                                         ; $5e62: $ff
	ld   bc, $792c                                   ; $5e63: $01 $2c $79
	sbc  h                                           ; $5e66: $9c
	ld   a, [hl]                                     ; $5e67: $7e
	ld   l, a                                        ; $5e68: $6f
	sbc  a                                           ; $5e69: $9f
	ld   c, b                                        ; $5e6a: $48
	ld   [hl], h                                     ; $5e6b: $74
	and  e                                           ; $5e6c: $a3
	dec  d                                           ; $5e6d: $15
	ld   d, d                                        ; $5e6e: $52
	and  h                                           ; $5e6f: $a4
	cp   h                                           ; $5e70: $bc
	nop                                              ; $5e71: $00
	rlca                                             ; $5e72: $07
	ld   bc, $4e4d                                   ; $5e73: $01 $4d $4e
	ld   d, c                                        ; $5e76: $51
	rst  $38                                         ; $5e77: $ff
	ld   bc, $6c74                                   ; $5e78: $01 $74 $6c
	sbc  a                                           ; $5e7b: $9f
	ld   [bc], a                                     ; $5e7c: $02
	ld   e, l                                        ; $5e7d: $5d
	and  d                                           ; $5e7e: $a2
	ld   b, h                                        ; $5e7f: $44
	ld   b, b                                        ; $5e80: $40
	and  h                                           ; $5e81: $a4
	ld   c, l                                        ; $5e82: $4d
	ld   d, d                                        ; $5e83: $52
	and  h                                           ; $5e84: $a4
	xor  l                                           ; $5e85: $ad
	nop                                              ; $5e86: $00
	rlca                                             ; $5e87: $07
	ld   bc, $5453                                   ; $5e88: $01 $53 $54
	ld   d, a                                        ; $5e8b: $57
	rst  $38                                         ; $5e8c: $ff
	ld   [bc], a                                     ; $5e8d: $02
	add  [hl]                                        ; $5e8e: $86
	ld   c, e                                        ; $5e8f: $4b
	sbc  l                                           ; $5e90: $9d
	or   d                                           ; $5e91: $b2
	ld   l, a                                        ; $5e92: $6f
	and  c                                           ; $5e93: $a1
	cp   $7c                                         ; $5e94: $fe $7c
	and  e                                           ; $5e96: $a3
	add  l                                           ; $5e97: $85
	ld   d, d                                        ; $5e98: $52
	and  h                                           ; $5e99: $a4
	cp   l                                           ; $5e9a: $bd
	nop                                              ; $5e9b: $00
	rlca                                             ; $5e9c: $07
	ld   bc, $5a59                                   ; $5e9d: $01 $59 $5a
	ld   e, l                                        ; $5ea0: $5d
	rst  $38                                         ; $5ea1: $ff
	ld   [bc], a                                     ; $5ea2: $02
	cp   c                                           ; $5ea3: $b9
	ld   c, [hl]                                     ; $5ea4: $4e
	sbc  [hl]                                        ; $5ea5: $9e
	inc  de                                          ; $5ea6: $13
	ld   c, h                                        ; $5ea7: $4c
	and  d                                           ; $5ea8: $a2
	xor  a                                           ; $5ea9: $af
	ld   a, [hl]                                     ; $5eaa: $7e
	and  e                                           ; $5eab: $a3
	cp   l                                           ; $5eac: $bd
	ld   d, d                                        ; $5ead: $52
	and  h                                           ; $5eae: $a4
	cp   l                                           ; $5eaf: $bd
	nop                                              ; $5eb0: $00
	rlca                                             ; $5eb1: $07
	ld   bc, $605f                                   ; $5eb2: $01 $5f $60
	ld   h, e                                        ; $5eb5: $63
	rst  $38                                         ; $5eb6: $ff
	ld   [bc], a                                     ; $5eb7: $02
	ld   l, $68                                      ; $5eb8: $2e $68
	sbc  e                                           ; $5eba: $9b
	add  [hl]                                        ; $5ebb: $86
	ld   [hl], c                                     ; $5ebc: $71
	and  d                                           ; $5ebd: $a2
	ret  c                                           ; $5ebe: $d8

	ld   a, l                                        ; $5ebf: $7d
	and  e                                           ; $5ec0: $a3
	push af                                          ; $5ec1: $f5
	ld   d, d                                        ; $5ec2: $52
	and  h                                           ; $5ec3: $a4
	cp   l                                           ; $5ec4: $bd
	nop                                              ; $5ec5: $00
	rlca                                             ; $5ec6: $07
	ld   bc, $6665                                   ; $5ec7: $01 $65 $66
	ld   l, c                                        ; $5eca: $69
	rst  $38                                         ; $5ecb: $ff
	ld   [bc], a                                     ; $5ecc: $02
	bit  2, [hl]                                     ; $5ecd: $cb $56
	sbc  a                                           ; $5ecf: $9f
	db   $fc                                         ; $5ed0: $fc
	ld   [hl], c                                     ; $5ed1: $71
	and  c                                           ; $5ed2: $a1
	ld   l, c                                        ; $5ed3: $69
	ld   a, c                                        ; $5ed4: $79
	and  e                                           ; $5ed5: $a3
	dec  l                                           ; $5ed6: $2d
	ld   d, e                                        ; $5ed7: $53
	and  h                                           ; $5ed8: $a4
	sub  a                                           ; $5ed9: $97
	nop                                              ; $5eda: $00
	rlca                                             ; $5edb: $07
	ld   bc, $6c6b                                   ; $5edc: $01 $6b $6c
	ld   l, a                                        ; $5edf: $6f
	rst  $38                                         ; $5ee0: $ff
	inc  bc                                          ; $5ee1: $03
	jp   nz, $9d5a                                   ; $5ee2: $c2 $5a $9d

	push af                                          ; $5ee5: $f5
	ld   d, c                                        ; $5ee6: $51
	and  d                                           ; $5ee7: $a2
	ld   b, c                                        ; $5ee8: $41
	ld   a, e                                        ; $5ee9: $7b
	and  e                                           ; $5eea: $a3
	ld   h, l                                        ; $5eeb: $65
	ld   d, e                                        ; $5eec: $53
	and  h                                           ; $5eed: $a4
	cp   [hl]                                        ; $5eee: $be
	nop                                              ; $5eef: $00
	rlca                                             ; $5ef0: $07
	ld   bc, $7271                                   ; $5ef1: $01 $71 $72
	ld   [hl], l                                     ; $5ef4: $75
	rst  $38                                         ; $5ef5: $ff
	inc  bc                                          ; $5ef6: $03
	adc  a                                           ; $5ef7: $8f
	ld   e, [hl]                                     ; $5ef8: $5e
	sbc  l                                           ; $5ef9: $9d
	db   $e4                                         ; $5efa: $e4
	ld   l, d                                        ; $5efb: $6a
	and  d                                           ; $5efc: $a2
	adc  b                                           ; $5efd: $88
	ld   b, l                                        ; $5efe: $45
	and  h                                           ; $5eff: $a4
	sbc  l                                           ; $5f00: $9d
	ld   d, e                                        ; $5f01: $53
	and  h                                           ; $5f02: $a4
	cp   [hl]                                        ; $5f03: $be
	nop                                              ; $5f04: $00
	rlca                                             ; $5f05: $07
	ld   bc, $7877                                   ; $5f06: $01 $77 $78
	ld   a, e                                        ; $5f09: $7b
	rst  $38                                         ; $5f0a: $ff
	inc  bc                                          ; $5f0b: $03
	or   h                                           ; $5f0c: $b4
	ld   b, a                                        ; $5f0d: $47
	sbc  l                                           ; $5f0e: $9d
	ld   h, $70                                      ; $5f0f: $26 $70
	and  b                                           ; $5f11: $a0
	and  b                                           ; $5f12: $a0
	ld   a, a                                        ; $5f13: $7f
	and  d                                           ; $5f14: $a2
	push de                                          ; $5f15: $d5
	ld   d, e                                        ; $5f16: $53
	and  h                                           ; $5f17: $a4
	pop  bc                                          ; $5f18: $c1
	nop                                              ; $5f19: $00
	rlca                                             ; $5f1a: $07
	ld   bc, $7e7d                                   ; $5f1b: $01 $7d $7e
	add  c                                           ; $5f1e: $81
	rst  $38                                         ; $5f1f: $ff
	ld   b, $eb                                      ; $5f20: $06 $eb
	ld   a, b                                        ; $5f22: $78
	sbc  l                                           ; $5f23: $9d
	xor  c                                           ; $5f24: $a9
	ld   l, b                                        ; $5f25: $68
	and  c                                           ; $5f26: $a1
	ld   d, b                                        ; $5f27: $50
	ld   b, c                                        ; $5f28: $41
	and  h                                           ; $5f29: $a4
	dec  c                                           ; $5f2a: $0d
	ld   d, h                                        ; $5f2b: $54
	and  h                                           ; $5f2c: $a4
	pop  bc                                          ; $5f2d: $c1
	nop                                              ; $5f2e: $00
	rlca                                             ; $5f2f: $07
	ld   bc, $8483                                   ; $5f30: $01 $83 $84
	add  a                                           ; $5f33: $87
	rst  $38                                         ; $5f34: $ff
	ld   b, $98                                      ; $5f35: $06 $98
	ld   b, [hl]                                     ; $5f37: $46
	sbc  a                                           ; $5f38: $9f
	nop                                              ; $5f39: $00
	ld   b, b                                        ; $5f3a: $40
	and  d                                           ; $5f3b: $a2
	and  [hl]                                        ; $5f3c: $a6
	ld   [hl], l                                     ; $5f3d: $75
	and  e                                           ; $5f3e: $a3
	ld   b, l                                        ; $5f3f: $45
	ld   d, h                                        ; $5f40: $54
	and  h                                           ; $5f41: $a4
	pop  bc                                          ; $5f42: $c1
	nop                                              ; $5f43: $00
	rlca                                             ; $5f44: $07
	ld   bc, $8a89                                   ; $5f45: $01 $89 $8a
	adc  l                                           ; $5f48: $8d
	rst  $38                                         ; $5f49: $ff
	ld   b, $0f                                      ; $5f4a: $06 $0f
	ld   e, e                                        ; $5f4c: $5b
	sbc  e                                           ; $5f4d: $9b
	dec  c                                           ; $5f4e: $0d
	ld   b, h                                        ; $5f4f: $44
	and  d                                           ; $5f50: $a2
	ld   [$a37a], sp                                 ; $5f51: $08 $7a $a3
	ld   a, l                                        ; $5f54: $7d
	ld   d, h                                        ; $5f55: $54
	and  h                                           ; $5f56: $a4
	sub  l                                           ; $5f57: $95
	nop                                              ; $5f58: $00
	rlca                                             ; $5f59: $07
	ld   bc, $908f                                   ; $5f5a: $01 $8f $90
	sub  e                                           ; $5f5d: $93
	rst  $38                                         ; $5f5e: $ff
	dec  b                                           ; $5f5f: $05
	and  c                                           ; $5f60: $a1
	ld   e, c                                        ; $5f61: $59
	sbc  c                                           ; $5f62: $99
	xor  b                                           ; $5f63: $a8
	ld   c, l                                        ; $5f64: $4d
	and  e                                           ; $5f65: $a3
	push af                                          ; $5f66: $f5
	ld   a, d                                        ; $5f67: $7a
	and  e                                           ; $5f68: $a3
	or   l                                           ; $5f69: $b5
	ld   d, h                                        ; $5f6a: $54
	and  h                                           ; $5f6b: $a4
	ret  nz                                          ; $5f6c: $c0

	nop                                              ; $5f6d: $00
	rlca                                             ; $5f6e: $07
	ld   bc, $9695                                   ; $5f6f: $01 $95 $96
	sbc  c                                           ; $5f72: $99
	rst  $38                                         ; $5f73: $ff
	dec  b                                           ; $5f74: $05
	or   e                                           ; $5f75: $b3
	ld   h, c                                        ; $5f76: $61
	sbc  b                                           ; $5f77: $98
	sbc  b                                           ; $5f78: $98
	ld   d, [hl]                                     ; $5f79: $56
	sbc  b                                           ; $5f7a: $98
	jp   hl                                          ; $5f7b: $e9


	ld   e, [hl]                                     ; $5f7c: $5e
	and  e                                           ; $5f7d: $a3
	db   $ed                                         ; $5f7e: $ed
	ld   d, h                                        ; $5f7f: $54
	and  h                                           ; $5f80: $a4
	ld   a, e                                        ; $5f81: $7b
	nop                                              ; $5f82: $00
	rlca                                             ; $5f83: $07
	ld   bc, $9c9b                                   ; $5f84: $01 $9b $9c
	sbc  a                                           ; $5f87: $9f
	rst  $38                                         ; $5f88: $ff
	dec  b                                           ; $5f89: $05
	inc  h                                           ; $5f8a: $24
	ld   b, l                                        ; $5f8b: $45
	sbc  c                                           ; $5f8c: $99
	dec  d                                           ; $5f8d: $15
	ld   c, a                                        ; $5f8e: $4f
	and  e                                           ; $5f8f: $a3
	adc  h                                           ; $5f90: $8c
	ld   a, e                                        ; $5f91: $7b
	and  e                                           ; $5f92: $a3
	dec  h                                           ; $5f93: $25
	ld   d, l                                        ; $5f94: $55
	and  h                                           ; $5f95: $a4
	ret  nz                                          ; $5f96: $c0

	nop                                              ; $5f97: $00
	rlca                                             ; $5f98: $07
	ld   bc, $a2a1                                   ; $5f99: $01 $a1 $a2
	and  l                                           ; $5f9c: $a5
	rst  $38                                         ; $5f9d: $ff
	dec  b                                           ; $5f9e: $05
	inc  h                                           ; $5f9f: $24
	ld   h, [hl]                                     ; $5fa0: $66
	sbc  l                                           ; $5fa1: $9d
	jp   c, $a045                                    ; $5fa2: $da $45 $a0

	jr   nz, jr_00b_6025                             ; $5fa5: $20 $7e

	and  e                                           ; $5fa7: $a3
	ld   e, l                                        ; $5fa8: $5d
	ld   d, l                                        ; $5fa9: $55
	and  h                                           ; $5faa: $a4
	cp   a                                           ; $5fab: $bf
	nop                                              ; $5fac: $00
	rlca                                             ; $5fad: $07
	ld   bc, $a8a7                                   ; $5fae: $01 $a7 $a8
	xor  e                                           ; $5fb1: $ab
	rst  $38                                         ; $5fb2: $ff
	inc  b                                           ; $5fb3: $04
	ld   b, a                                        ; $5fb4: $47
	ld   c, d                                        ; $5fb5: $4a
	sbc  c                                           ; $5fb6: $99
	sub  l                                           ; $5fb7: $95
	ld   d, [hl]                                     ; $5fb8: $56
	sbc  e                                           ; $5fb9: $9b
	or   e                                           ; $5fba: $b3
	ld   [hl], d                                     ; $5fbb: $72
	and  e                                           ; $5fbc: $a3
	sub  l                                           ; $5fbd: $95
	ld   d, l                                        ; $5fbe: $55
	and  h                                           ; $5fbf: $a4
	cp   a                                           ; $5fc0: $bf
	nop                                              ; $5fc1: $00
	rlca                                             ; $5fc2: $07
	ld   bc, $aead                                   ; $5fc3: $01 $ad $ae
	or   c                                           ; $5fc6: $b1
	rst  $38                                         ; $5fc7: $ff
	inc  b                                           ; $5fc8: $04
	ld   h, d                                        ; $5fc9: $62
	ld   e, c                                        ; $5fca: $59
	and  d                                           ; $5fcb: $a2
	add  d                                           ; $5fcc: $82
	ld   [hl], e                                     ; $5fcd: $73
	and  e                                           ; $5fce: $a3
	pop  bc                                          ; $5fcf: $c1
	ld   h, d                                        ; $5fd0: $62
	and  h                                           ; $5fd1: $a4
	call $a455                                       ; $5fd2: $cd $55 $a4
	ld   a, [bc]                                     ; $5fd5: $0a
	nop                                              ; $5fd6: $00
	rlca                                             ; $5fd7: $07
	ld   bc, $b4b3                                   ; $5fd8: $01 $b3 $b4
	or   a                                           ; $5fdb: $b7
	rst  $38                                         ; $5fdc: $ff
	inc  b                                           ; $5fdd: $04
	ld   a, e                                        ; $5fde: $7b
	ld   c, b                                        ; $5fdf: $48
	sbc  h                                           ; $5fe0: $9c
	rst  $38                                         ; $5fe1: $ff
	ld   e, [hl]                                     ; $5fe2: $5e
	and  c                                           ; $5fe3: $a1
	ld   b, a                                        ; $5fe4: $47
	ld   a, l                                        ; $5fe5: $7d
	and  e                                           ; $5fe6: $a3
	dec  b                                           ; $5fe7: $05
	ld   d, [hl]                                     ; $5fe8: $56
	and  h                                           ; $5fe9: $a4
	xor  a                                           ; $5fea: $af
	nop                                              ; $5feb: $00
	rlca                                             ; $5fec: $07
	ld   bc, $bbba                                   ; $5fed: $01 $ba $bb
	cp   [hl]                                        ; $5ff0: $be
	rst  $38                                         ; $5ff1: $ff
	inc  b                                           ; $5ff2: $04
	ldh  [c], a                                      ; $5ff3: $e2
	ld   d, b                                        ; $5ff4: $50
	sbc  h                                           ; $5ff5: $9c
	ld   b, [hl]                                     ; $5ff6: $46
	ld   c, c                                        ; $5ff7: $49
	and  e                                           ; $5ff8: $a3
	ld   l, e                                        ; $5ff9: $6b
	ld   a, h                                        ; $5ffa: $7c
	and  e                                           ; $5ffb: $a3
	dec  a                                           ; $5ffc: $3d
	ld   d, [hl]                                     ; $5ffd: $56
	and  h                                           ; $5ffe: $a4
	or   e                                           ; $5fff: $b3
	nop                                              ; $6000: $00
	rlca                                             ; $6001: $07
	ld   bc, $c1c0                                   ; $6002: $01 $c0 $c1
	call nz, $01ff                                   ; $6005: $c4 $ff $01
	nop                                              ; $6008: $00
	ld   b, b                                        ; $6009: $40
	sbc  [hl]                                        ; $600a: $9e
	ld   l, b                                        ; $600b: $68
	ld   h, d                                        ; $600c: $62
	and  d                                           ; $600d: $a2
	jr   jr_00b_6053                                 ; $600e: $18 $43

	and  h                                           ; $6010: $a4
	ld   [hl], l                                     ; $6011: $75
	ld   d, [hl]                                     ; $6012: $56
	and  h                                           ; $6013: $a4
	or   h                                           ; $6014: $b4
	nop                                              ; $6015: $00
	rlca                                             ; $6016: $07
	ld   bc, $c7c6                                   ; $6017: $01 $c6 $c7
	jp   z, $02ff                                    ; $601a: $ca $ff $02

	sbc  $49                                         ; $601d: $de $49
	sbc  a                                           ; $601f: $9f
	db   $e3                                         ; $6020: $e3
	ld   a, h                                        ; $6021: $7c
	and  c                                           ; $6022: $a1
	or   $7e                                         ; $6023: $f6 $7e

jr_00b_6025:
	and  e                                           ; $6025: $a3
	xor  l                                           ; $6026: $ad
	ld   d, [hl]                                     ; $6027: $56
	and  h                                           ; $6028: $a4
	or   l                                           ; $6029: $b5
	nop                                              ; $602a: $00
	rlca                                             ; $602b: $07
	ld   bc, $cdcc                                   ; $602c: $01 $cc $cd
	ret  nc                                          ; $602f: $d0

	rst  $38                                         ; $6030: $ff
	inc  bc                                          ; $6031: $03
	jr   jr_00b_6096                                 ; $6032: $18 $62

	sbc  d                                           ; $6034: $9a
	db   $10                                         ; $6035: $10
	ld   c, [hl]                                     ; $6036: $4e
	and  d                                           ; $6037: $a2
	ld   d, a                                        ; $6038: $57
	ld   a, d                                        ; $6039: $7a
	and  e                                           ; $603a: $a3
	push hl                                          ; $603b: $e5
	ld   d, [hl]                                     ; $603c: $56
	and  h                                           ; $603d: $a4
	cp   b                                           ; $603e: $b8
	nop                                              ; $603f: $00
	ld   c, $01                                      ; $6040: $0e $01
	nop                                              ; $6042: $00
	ld   bc, $ff04                                   ; $6043: $01 $04 $ff
	ld   b, $40                                      ; $6046: $06 $40
	ld   [hl], b                                     ; $6048: $70
	sbc  d                                           ; $6049: $9a
	sub  c                                           ; $604a: $91
	ld   l, h                                        ; $604b: $6c
	and  d                                           ; $604c: $a2
	ld   e, h                                        ; $604d: $5c
	ld   b, a                                        ; $604e: $47
	and  h                                           ; $604f: $a4
	dec  e                                           ; $6050: $1d
	ld   d, a                                        ; $6051: $57
	and  h                                           ; $6052: $a4

jr_00b_6053:
	or   a                                           ; $6053: $b7
	nop                                              ; $6054: $00
	ld   c, $01                                      ; $6055: $0e $01
	ld   b, $07                                      ; $6057: $06 $07
	ld   a, [bc]                                     ; $6059: $0a
	rst  $38                                         ; $605a: $ff
	dec  b                                           ; $605b: $05
	cp   b                                           ; $605c: $b8
	ld   e, [hl]                                     ; $605d: $5e
	sbc  c                                           ; $605e: $99
	jr   nz, jr_00b_60c5                             ; $605f: $20 $64

	and  d                                           ; $6061: $a2
	and  [hl]                                        ; $6062: $a6
	ld   a, d                                        ; $6063: $7a
	and  e                                           ; $6064: $a3
	ld   d, l                                        ; $6065: $55
	ld   d, a                                        ; $6066: $57
	and  h                                           ; $6067: $a4
	or   [hl]                                        ; $6068: $b6
	nop                                              ; $6069: $00
	ld   c, $01                                      ; $606a: $0e $01
	inc  c                                           ; $606c: $0c
	dec  c                                           ; $606d: $0d
	db   $10                                         ; $606e: $10
	rst  $38                                         ; $606f: $ff
	inc  b                                           ; $6070: $04
	ld   [hl], $5f                                   ; $6071: $36 $5f
	and  h                                           ; $6073: $a4
	ld   b, l                                        ; $6074: $45
	ld   [hl], h                                     ; $6075: $74
	and  c                                           ; $6076: $a1
	sub  a                                           ; $6077: $97
	ld   h, d                                        ; $6078: $62
	and  h                                           ; $6079: $a4
	adc  l                                           ; $607a: $8d
	ld   d, a                                        ; $607b: $57
	and  h                                           ; $607c: $a4
	dec  d                                           ; $607d: $15
	nop                                              ; $607e: $00
	ld   c, $00                                      ; $607f: $0e $00
	ld   [de], a                                     ; $6081: $12
	rst  $38                                         ; $6082: $ff
	rst  $38                                         ; $6083: $ff
	rst  $38                                         ; $6084: $ff
	ld   bc, $5f58                                   ; $6085: $01 $58 $5f
	and  h                                           ; $6088: $a4
	ld   e, [hl]                                     ; $6089: $5e
	ld   l, l                                        ; $608a: $6d
	and  b                                           ; $608b: $a0
	add  c                                           ; $608c: $81
	ld   h, d                                        ; $608d: $62
	and  h                                           ; $608e: $a4
	push bc                                          ; $608f: $c5
	ld   d, a                                        ; $6090: $57
	and  h                                           ; $6091: $a4
	dec  d                                           ; $6092: $15
	nop                                              ; $6093: $00
	ld   c, $00                                      ; $6094: $0e $00

jr_00b_6096:
	inc  de                                          ; $6096: $13
	rst  $38                                         ; $6097: $ff
	rst  $38                                         ; $6098: $ff
	rst  $38                                         ; $6099: $ff
	ld   [bc], a                                     ; $609a: $02
	ld   a, d                                        ; $609b: $7a
	ld   e, a                                        ; $609c: $5f
	and  h                                           ; $609d: $a4
	xor  d                                           ; $609e: $aa
	ld   a, b                                        ; $609f: $78
	and  c                                           ; $60a0: $a1
	db   $f4                                         ; $60a1: $f4
	ld   a, a                                        ; $60a2: $7f
	sub  l                                           ; $60a3: $95
	db   $fd                                         ; $60a4: $fd
	ld   d, a                                        ; $60a5: $57
	and  h                                           ; $60a6: $a4
	dec  d                                           ; $60a7: $15
	nop                                              ; $60a8: $00
	ld   c, $00                                      ; $60a9: $0e $00
	inc  d                                           ; $60ab: $14
	rst  $38                                         ; $60ac: $ff
	rst  $38                                         ; $60ad: $ff
	rst  $38                                         ; $60ae: $ff
	inc  bc                                          ; $60af: $03
	sbc  h                                           ; $60b0: $9c
	ld   e, a                                        ; $60b1: $5f
	and  h                                           ; $60b2: $a4
	pop  de                                          ; $60b3: $d1
	ld   e, [hl]                                     ; $60b4: $5e
	and  d                                           ; $60b5: $a2
	di                                               ; $60b6: $f3
	ld   a, a                                        ; $60b7: $7f
	sbc  b                                           ; $60b8: $98
	dec  [hl]                                        ; $60b9: $35
	ld   e, b                                        ; $60ba: $58
	and  h                                           ; $60bb: $a4
	dec  d                                           ; $60bc: $15
	nop                                              ; $60bd: $00
	ld   c, $00                                      ; $60be: $0e $00
	dec  d                                           ; $60c0: $15
	rst  $38                                         ; $60c1: $ff
	rst  $38                                         ; $60c2: $ff
	rst  $38                                         ; $60c3: $ff
	inc  b                                           ; $60c4: $04

jr_00b_60c5:
	cp   [hl]                                        ; $60c5: $be
	ld   e, a                                        ; $60c6: $5f
	and  h                                           ; $60c7: $a4
	ld   h, l                                        ; $60c8: $65
	ld   l, l                                        ; $60c9: $6d
	and  c                                           ; $60ca: $a1
	xor  h                                           ; $60cb: $ac
	ld   h, d                                        ; $60cc: $62
	and  h                                           ; $60cd: $a4
	ld   l, l                                        ; $60ce: $6d
	ld   e, b                                        ; $60cf: $58
	and  h                                           ; $60d0: $a4
	dec  d                                           ; $60d1: $15
	nop                                              ; $60d2: $00
	ld   c, $00                                      ; $60d3: $0e $00
	ld   d, $ff                                      ; $60d5: $16 $ff
	rst  $38                                         ; $60d7: $ff
	rst  $38                                         ; $60d8: $ff
	dec  b                                           ; $60d9: $05
	ldh  [$5f], a                                    ; $60da: $e0 $5f
	and  h                                           ; $60dc: $a4
	ld   d, c                                        ; $60dd: $51
	ld   [hl], l                                     ; $60de: $75
	and  e                                           ; $60df: $a3
	db   $fc                                         ; $60e0: $fc
	ld   a, a                                        ; $60e1: $7f
	sub  e                                           ; $60e2: $93
	and  l                                           ; $60e3: $a5
	ld   e, b                                        ; $60e4: $58
	and  h                                           ; $60e5: $a4
	and  [hl]                                        ; $60e6: $a6
	nop                                              ; $60e7: $00
	ld   c, $00                                      ; $60e8: $0e $00
	rla                                              ; $60ea: $17
	rst  $38                                         ; $60eb: $ff
	rst  $38                                         ; $60ec: $ff
	rst  $38                                         ; $60ed: $ff
	nop                                              ; $60ee: $00
	and  [hl]                                        ; $60ef: $a6
	ld   e, a                                        ; $60f0: $5f
	and  e                                           ; $60f1: $a3
	ld   [bc], a                                     ; $60f2: $02
	ld   h, b                                        ; $60f3: $60
	and  h                                           ; $60f4: $a4
	db   $fd                                         ; $60f5: $fd
	ld   a, a                                        ; $60f6: $7f
	sub  e                                           ; $60f7: $93
	db   $dd                                         ; $60f8: $dd
	ld   e, b                                        ; $60f9: $58
	and  h                                           ; $60fa: $a4
	adc  c                                           ; $60fb: $89
	nop                                              ; $60fc: $00
	ld   c, $00                                      ; $60fd: $0e $00
	jr   @+$01                                       ; $60ff: $18 $ff

	rst  $38                                         ; $6101: $ff
	rst  $38                                         ; $6102: $ff
	ld   bc, $48c2                                   ; $6103: $01 $c2 $48
	and  b                                           ; $6106: $a0
	inc  h                                           ; $6107: $24
	ld   h, b                                        ; $6108: $60
	and  h                                           ; $6109: $a4
	db   $fc                                         ; $610a: $fc
	ld   a, a                                        ; $610b: $7f
	sub  e                                           ; $610c: $93
	dec  d                                           ; $610d: $15
	ld   e, c                                        ; $610e: $59
	and  h                                           ; $610f: $a4
	sbc  h                                           ; $6110: $9c
	nop                                              ; $6111: $00
	ld   c, $60                                      ; $6112: $0e $60
	add  hl, de                                      ; $6114: $19
	nop                                              ; $6115: $00
	ld   bc, $09ff                                   ; $6116: $01 $ff $09
	xor  c                                           ; $6119: $a9
	ld   c, d                                        ; $611a: $4a
	and  c                                           ; $611b: $a1
	ld   c, c                                        ; $611c: $49
	ld   [hl], c                                     ; $611d: $71
	sbc  h                                           ; $611e: $9c
	and  $73                                         ; $611f: $e6 $73
	and  e                                           ; $6121: $a3
	ld   c, l                                        ; $6122: $4d
	ld   e, c                                        ; $6123: $59
	and  h                                           ; $6124: $a4
	sbc  e                                           ; $6125: $9b
	nop                                              ; $6126: $00
	ld   c, $00                                      ; $6127: $0e $00
	jr   nz, @+$01                                   ; $6129: $20 $ff

	rst  $38                                         ; $612b: $ff
	rst  $38                                         ; $612c: $ff
	nop                                              ; $612d: $00
	inc  b                                           ; $612e: $04
	ld   d, b                                        ; $612f: $50
	and  d                                           ; $6130: $a2
	jr   nz, jr_00b_6176                             ; $6131: $20 $43

	and  e                                           ; $6133: $a3
	add  a                                           ; $6134: $87
	ld   e, h                                        ; $6135: $5c
	and  h                                           ; $6136: $a4
	add  l                                           ; $6137: $85
	ld   e, c                                        ; $6138: $59
	and  h                                           ; $6139: $a4
	or   c                                           ; $613a: $b1
	nop                                              ; $613b: $00
	ld   c, $00                                      ; $613c: $0e $00
	ld   hl, $ffff                                   ; $613e: $21 $ff $ff
	rst  $38                                         ; $6141: $ff
	nop                                              ; $6142: $00
	ld   a, $7b                                      ; $6143: $3e $7b
	sub  h                                           ; $6145: $94
	ld   d, [hl]                                     ; $6146: $56
	ld   e, h                                        ; $6147: $5c
	and  e                                           ; $6148: $a3
	ld   a, [hl-]                                    ; $6149: $3a
	ld   b, [hl]                                     ; $614a: $46
	and  h                                           ; $614b: $a4
	cp   l                                           ; $614c: $bd
	ld   e, c                                        ; $614d: $59
	and  h                                           ; $614e: $a4
	adc  a                                           ; $614f: $8f
	nop                                              ; $6150: $00
	ld   c, $01                                      ; $6151: $0e $01
	ld   [hl+], a                                    ; $6153: $22
	inc  hl                                          ; $6154: $23
	ld   h, $ff                                      ; $6155: $26 $ff
	add  hl, bc                                      ; $6157: $09
	inc  e                                           ; $6158: $1c
	ld   [hl], e                                     ; $6159: $73
	and  e                                           ; $615a: $a3
	ld   b, [hl]                                     ; $615b: $46
	ld   h, b                                        ; $615c: $60
	and  h                                           ; $615d: $a4
	db   $fc                                         ; $615e: $fc
	ld   a, a                                        ; $615f: $7f
	sub  e                                           ; $6160: $93
	push af                                          ; $6161: $f5
	ld   e, c                                        ; $6162: $59
	and  h                                           ; $6163: $a4
	dec  hl                                          ; $6164: $2b
	nop                                              ; $6165: $00
	ld   c, $00                                      ; $6166: $0e $00
	jr   z, @+$01                                    ; $6168: $28 $ff

	rst  $38                                         ; $616a: $ff
	rst  $38                                         ; $616b: $ff
	nop                                              ; $616c: $00
	inc  hl                                          ; $616d: $23
	ld   e, c                                        ; $616e: $59
	sbc  h                                           ; $616f: $9c
	ld   bc, $a359                                   ; $6170: $01 $59 $a3
	ld   d, a                                        ; $6173: $57
	ld   b, h                                        ; $6174: $44
	and  h                                           ; $6175: $a4

jr_00b_6176:
	dec  l                                           ; $6176: $2d
	ld   e, d                                        ; $6177: $5a
	and  h                                           ; $6178: $a4
	ld   b, b                                        ; $6179: $40
	nop                                              ; $617a: $00
	ld   c, $01                                      ; $617b: $0e $01
	jr   c, jr_00b_61b8                              ; $617d: $38 $39

	inc  a                                           ; $617f: $3c
	rst  $38                                         ; $6180: $ff
	ld   [bc], a                                     ; $6181: $02


Func_0b_6182::
	ld   a, [wWramBank]                                  ; $6182: $fa $93 $c2
	push af                                          ; $6185: $f5
	ld   a, $02                                      ; $6186: $3e $02
	ld   [wWramBank], a                                  ; $6188: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $618b: $e0 $70
	call Call_00b_5d2e                               ; $618d: $cd $2e $5d
	ld   bc, $0006                                   ; $6190: $01 $06 $00
	add  hl, bc                                      ; $6193: $09
	ld   a, [hl+]                                    ; $6194: $2a
	ld   c, a                                        ; $6195: $4f
	ld   a, [hl+]                                    ; $6196: $2a
	ld   b, a                                        ; $6197: $47
	ld   a, [hl]                                     ; $6198: $7e
	jp   Jump_00b_591a                               ; $6199: $c3 $1a $59


Func_0b_619c::
	push af                                          ; $619c: $f5
	call Call_00b_6402                               ; $619d: $cd $02 $64
	xor  a                                           ; $61a0: $af
	ld   [$cbc9], a                                  ; $61a1: $ea $c9 $cb
	ld   [$cbca], a                                  ; $61a4: $ea $ca $cb
	ld   [$cbcb], a                                  ; $61a7: $ea $cb $cb
	ld   [$cbcd], a                                  ; $61aa: $ea $cd $cb
	ld   [$cbce], a                                  ; $61ad: $ea $ce $cb
	pop  af                                          ; $61b0: $f1
	ld   h, $00                                      ; $61b1: $26 $00
	ld   l, a                                        ; $61b3: $6f
	push hl                                          ; $61b4: $e5
	call Call_00b_5d2e                               ; $61b5: $cd $2e $5d

jr_00b_61b8:
	ld   bc, $000e                                   ; $61b8: $01 $0e $00
	add  hl, bc                                      ; $61bb: $09
	ld   a, [hl+]                                    ; $61bc: $2a
	ld   [$cbd3], a                                  ; $61bd: $ea $d3 $cb
	ld   a, [hl+]                                    ; $61c0: $2a
	ld   c, a                                        ; $61c1: $4f
	or   $0f                                         ; $61c2: $f6 $0f
	ld   b, a                                        ; $61c4: $47
	ld   de, $cbcf                                   ; $61c5: $11 $cf $cb

Jump_00b_61c8:
jr_00b_61c8:
	bit  3, b                                        ; $61c8: $cb $58
	jp   z, Jump_00b_624f                            ; $61ca: $ca $4f $62

	ld   a, [hl]                                     ; $61cd: $7e
	cp   $ff                                         ; $61ce: $fe $ff
	jr   z, jr_00b_624f                              ; $61d0: $28 $7d

	sla  b                                           ; $61d2: $cb $20
	jr   c, jr_00b_6213                              ; $61d4: $38 $3d

	push bc                                          ; $61d6: $c5
	push hl                                          ; $61d7: $e5
	push de                                          ; $61d8: $d5
	ld   a, $00                                      ; $61d9: $3e $00
	ld   hl, $0000                                   ; $61db: $21 $00 $00
	ld   de, $8000                                   ; $61de: $11 $00 $80
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $61e1: $cd $4b $2f
	pop  de                                          ; $61e4: $d1
	ld   [de], a                                     ; $61e5: $12
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $61e6: $cd $76 $30
	ld   b, h                                        ; $61e9: $44
	ld   c, l                                        ; $61ea: $4d
	pop  hl                                          ; $61eb: $e1
	push hl                                          ; $61ec: $e5
	push de                                          ; $61ed: $d5
	ld   a, [$cbd3]                                  ; $61ee: $fa $d3 $cb
	ld   d, a                                        ; $61f1: $57
	ld   e, [hl]                                     ; $61f2: $5e
	ld   h, b                                        ; $61f3: $60
	ld   l, c                                        ; $61f4: $69
	ld   bc, $5020                                   ; $61f5: $01 $20 $50
	push af                                          ; $61f8: $f5
	ld   a, $3c                                      ; $61f9: $3e $3c
	ld   [wFarCallAddr], a                                  ; $61fb: $ea $98 $c2
	ld   a, $40                                      ; $61fe: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $6200: $ea $99 $c2
	ld   a, $01                                      ; $6203: $3e $01
	ld   [wFarCallBank], a                                  ; $6205: $ea $9a $c2
	pop  af                                          ; $6208: $f1
	call FarCall                                       ; $6209: $cd $62 $09
	pop  de                                          ; $620c: $d1
	pop  hl                                          ; $620d: $e1
	pop  bc                                          ; $620e: $c1
	inc  de                                          ; $620f: $13
	inc  hl                                          ; $6210: $23
	jr   jr_00b_61c8                                 ; $6211: $18 $b5

jr_00b_6213:
	push bc                                          ; $6213: $c5
	push hl                                          ; $6214: $e5
	push de                                          ; $6215: $d5
	ld   a, $01                                      ; $6216: $3e $01
	ld   hl, $0000                                   ; $6218: $21 $00 $00
	ld   d, h                                        ; $621b: $54
	ld   e, l                                        ; $621c: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $621d: $cd $4b $2f
	pop  de                                          ; $6220: $d1
	ld   [de], a                                     ; $6221: $12
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6222: $cd $76 $30
	ld   b, h                                        ; $6225: $44
	ld   c, l                                        ; $6226: $4d
	pop  hl                                          ; $6227: $e1
	push hl                                          ; $6228: $e5
	push de                                          ; $6229: $d5
	ld   a, [hl]                                     ; $622a: $7e
	ld   h, b                                        ; $622b: $60
	ld   l, c                                        ; $622c: $69
	ld   de, $7ae3                                   ; $622d: $11 $e3 $7a
	ld   bc, $5020                                   ; $6230: $01 $20 $50
	push af                                          ; $6233: $f5
	ld   a, $03                                      ; $6234: $3e $03
	ld   [wFarCallAddr], a                                  ; $6236: $ea $98 $c2
	ld   a, $41                                      ; $6239: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $623b: $ea $99 $c2
	ld   a, $01                                      ; $623e: $3e $01
	ld   [wFarCallBank], a                                  ; $6240: $ea $9a $c2
	pop  af                                          ; $6243: $f1
	call FarCall                                       ; $6244: $cd $62 $09
	pop  de                                          ; $6247: $d1
	pop  hl                                          ; $6248: $e1
	pop  bc                                          ; $6249: $c1
	inc  de                                          ; $624a: $13
	inc  hl                                          ; $624b: $23
	jp   Jump_00b_61c8                               ; $624c: $c3 $c8 $61


Jump_00b_624f:
jr_00b_624f:
	pop  hl                                          ; $624f: $e1
	ld   a, c                                        ; $6250: $79
	and  $0f                                         ; $6251: $e6 $0f
	ret  z                                           ; $6253: $c8

Jump_00b_6254:
	push af                                          ; $6254: $f5
	call Call_00b_5d2e                               ; $6255: $cd $2e $5d
	ld   bc, $000e                                   ; $6258: $01 $0e $00
	add  hl, bc                                      ; $625b: $09
	ld   a, [hl+]                                    ; $625c: $2a
	ld   [$cbd3], a                                  ; $625d: $ea $d3 $cb
	inc  hl                                          ; $6260: $23
	ld   a, [$cbd3]                                  ; $6261: $fa $d3 $cb
	ld   b, a                                        ; $6264: $47
	ld   a, [hl+]                                    ; $6265: $2a
	ld   c, a                                        ; $6266: $4f
	ld   d, h                                        ; $6267: $54
	ld   e, l                                        ; $6268: $5d
	ld   a, [$cbcf]                                  ; $6269: $fa $cf $cb
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $626c: $cd $76 $30
	push af                                          ; $626f: $f5
	ld   a, $4b                                      ; $6270: $3e $4b
	ld   [wFarCallAddr], a                                  ; $6272: $ea $98 $c2
	ld   a, $40                                      ; $6275: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $6277: $ea $99 $c2
	ld   a, $01                                      ; $627a: $3e $01
	ld   [wFarCallBank], a                                  ; $627c: $ea $9a $c2
	pop  af                                          ; $627f: $f1
	call FarCall                                       ; $6280: $cd $62 $09
	ld   bc, $5020                                   ; $6283: $01 $20 $50
	push af                                          ; $6286: $f5
	ld   a, $55                                      ; $6287: $3e $55
	ld   [wFarCallAddr], a                                  ; $6289: $ea $98 $c2
	ld   a, $40                                      ; $628c: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $628e: $ea $99 $c2
	ld   a, $01                                      ; $6291: $3e $01
	ld   [wFarCallBank], a                                  ; $6293: $ea $9a $c2
	pop  af                                          ; $6296: $f1
	call FarCall                                       ; $6297: $cd $62 $09
	ld   a, [$cbd3]                                  ; $629a: $fa $d3 $cb
	ld   b, a                                        ; $629d: $47
	ld   a, [de]                                     ; $629e: $1a
	inc  de                                          ; $629f: $13
	ld   c, a                                        ; $62a0: $4f
	ld   a, [$cbc9]                                  ; $62a1: $fa $c9 $cb
	add  c                                           ; $62a4: $81
	ld   c, a                                        ; $62a5: $4f
	ld   a, [$cbd0]                                  ; $62a6: $fa $d0 $cb
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $62a9: $cd $76 $30
	push af                                          ; $62ac: $f5
	ld   a, $4b                                      ; $62ad: $3e $4b
	ld   [wFarCallAddr], a                                  ; $62af: $ea $98 $c2
	ld   a, $40                                      ; $62b2: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $62b4: $ea $99 $c2
	ld   a, $01                                      ; $62b7: $3e $01
	ld   [wFarCallBank], a                                  ; $62b9: $ea $9a $c2
	pop  af                                          ; $62bc: $f1
	call FarCall                                       ; $62bd: $cd $62 $09
	ld   bc, $5020                                   ; $62c0: $01 $20 $50
	push af                                          ; $62c3: $f5
	ld   a, $55                                      ; $62c4: $3e $55
	ld   [wFarCallAddr], a                                  ; $62c6: $ea $98 $c2
	ld   a, $40                                      ; $62c9: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $62cb: $ea $99 $c2
	ld   a, $01                                      ; $62ce: $3e $01
	ld   [wFarCallBank], a                                  ; $62d0: $ea $9a $c2
	pop  af                                          ; $62d3: $f1
	call FarCall                                       ; $62d4: $cd $62 $09
	ld   a, [$cbd3]                                  ; $62d7: $fa $d3 $cb
	ld   b, a                                        ; $62da: $47
	ld   a, [de]                                     ; $62db: $1a
	ld   c, a                                        ; $62dc: $4f
	ld   a, [$cbcd]                                  ; $62dd: $fa $cd $cb
	add  c                                           ; $62e0: $81
	ld   c, a                                        ; $62e1: $4f
	ld   a, [$cbd1]                                  ; $62e2: $fa $d1 $cb
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $62e5: $cd $76 $30
	push af                                          ; $62e8: $f5
	ld   a, $4b                                      ; $62e9: $3e $4b
	ld   [wFarCallAddr], a                                  ; $62eb: $ea $98 $c2
	ld   a, $40                                      ; $62ee: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $62f0: $ea $99 $c2
	ld   a, $01                                      ; $62f3: $3e $01
	ld   [wFarCallBank], a                                  ; $62f5: $ea $9a $c2
	pop  af                                          ; $62f8: $f1
	call FarCall                                       ; $62f9: $cd $62 $09
	ld   bc, $5020                                   ; $62fc: $01 $20 $50
	push af                                          ; $62ff: $f5
	ld   a, $55                                      ; $6300: $3e $55
	ld   [wFarCallAddr], a                                  ; $6302: $ea $98 $c2
	ld   a, $40                                      ; $6305: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $6307: $ea $99 $c2
	ld   a, $01                                      ; $630a: $3e $01
	ld   [wFarCallBank], a                                  ; $630c: $ea $9a $c2
	pop  af                                          ; $630f: $f1
	call FarCall                                       ; $6310: $cd $62 $09
	pop  af                                          ; $6313: $f1
	ret                                              ; $6314: $c9


Func_0b_6315::
	push hl                                          ; $6315: $e5
	ld   d, $00                                      ; $6316: $16 $00
	ld   e, l                                        ; $6318: $5d
	bit  0, e                                        ; $6319: $cb $43
	jr   nz, jr_00b_6323                             ; $631b: $20 $06

	ld   a, [$cbc9]                                  ; $631d: $fa $c9 $cb
	or   a                                           ; $6320: $b7
	jr   z, jr_00b_6351                              ; $6321: $28 $2e

jr_00b_6323:
	ld   a, [$cbcb]                                  ; $6323: $fa $cb $cb
	ld   c, a                                        ; $6326: $4f
	ld   a, [$cbcc]                                  ; $6327: $fa $cc $cb
	ld   b, a                                        ; $632a: $47
	dec  bc                                          ; $632b: $0b
	ld   a, c                                        ; $632c: $79
	ld   [$cbcb], a                                  ; $632d: $ea $cb $cb
	ld   a, b                                        ; $6330: $78
	ld   [$cbcc], a                                  ; $6331: $ea $cc $cb
	bit  7, b                                        ; $6334: $cb $78
	jr   z, jr_00b_6351                              ; $6336: $28 $19

	inc  d                                           ; $6338: $14
	push de                                          ; $6339: $d5
	ld   a, [$cbca]                                  ; $633a: $fa $ca $cb
	call Call_00b_638a                               ; $633d: $cd $8a $63
	ld   a, b                                        ; $6340: $78
	ld   [$cbc9], a                                  ; $6341: $ea $c9 $cb
	ld   a, c                                        ; $6344: $79
	ld   [$cbca], a                                  ; $6345: $ea $ca $cb
	ld   a, l                                        ; $6348: $7d
	ld   [$cbcb], a                                  ; $6349: $ea $cb $cb
	ld   a, h                                        ; $634c: $7c
	ld   [$cbcc], a                                  ; $634d: $ea $cc $cb
	pop  de                                          ; $6350: $d1

jr_00b_6351:
	bit  1, e                                        ; $6351: $cb $4b
	jr   nz, jr_00b_635b                             ; $6353: $20 $06

	ld   a, [$cbcd]                                  ; $6355: $fa $cd $cb
	or   a                                           ; $6358: $b7
	jr   z, jr_00b_6380                              ; $6359: $28 $25

jr_00b_635b:
	ld   a, [$cbce]                                  ; $635b: $fa $ce $cb
	sub  $01                                         ; $635e: $d6 $01
	ld   [$cbce], a                                  ; $6360: $ea $ce $cb
	jr   nc, jr_00b_6380                             ; $6363: $30 $1b

	inc  d                                           ; $6365: $14
	ld   a, $ff                                      ; $6366: $3e $ff
	ld   [wRandomNumRange], a                                  ; $6368: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $636b: $cd $10 $0d
	and  $03                                         ; $636e: $e6 $03
	add  $06                                         ; $6370: $c6 $06
	ld   [$cbce], a                                  ; $6372: $ea $ce $cb
	ld   hl, $cbcd                                   ; $6375: $21 $cd $cb
	inc  [hl]                                        ; $6378: $34
	ld   a, [hl]                                     ; $6379: $7e
	cp   $02                                         ; $637a: $fe $02
	jr   c, jr_00b_6380                              ; $637c: $38 $02

	xor  a                                           ; $637e: $af
	ld   [hl], a                                     ; $637f: $77

jr_00b_6380:
	pop  hl                                          ; $6380: $e1
	ld   a, d                                        ; $6381: $7a
	or   a                                           ; $6382: $b7
	ret  z                                           ; $6383: $c8

	ld   l, h                                        ; $6384: $6c
	ld   h, $00                                      ; $6385: $26 $00
	jp   Jump_00b_6254                               ; $6387: $c3 $54 $62


Call_00b_638a:
	ld   b, $00                                      ; $638a: $06 $00
	ld   c, a                                        ; $638c: $4f
	push bc                                          ; $638d: $c5
	ld   l, h                                        ; $638e: $6c
	ld   h, $00                                      ; $638f: $26 $00
	call Call_00b_5d2e                               ; $6391: $cd $2e $5d
	ld   bc, $000f                                   ; $6394: $01 $0f $00
	add  hl, bc                                      ; $6397: $09
	ld   a, [hl]                                     ; $6398: $7e
	dec  a                                           ; $6399: $3d
	and  $0f                                         ; $639a: $e6 $0f
	ld   l, a                                        ; $639c: $6f
	ld   h, $00                                      ; $639d: $26 $00
	add  hl, hl                                      ; $639f: $29
	add  hl, hl                                      ; $63a0: $29
	add  hl, hl                                      ; $63a1: $29
	add  hl, hl                                      ; $63a2: $29
	ld   bc, $662d                                   ; $63a3: $01 $2d $66
	add  hl, bc                                      ; $63a6: $09
	ld   d, h                                        ; $63a7: $54
	ld   e, l                                        ; $63a8: $5d
	pop  bc                                          ; $63a9: $c1
	add  hl, bc                                      ; $63aa: $09
	add  hl, bc                                      ; $63ab: $09
	ld   a, c                                        ; $63ac: $79
	cp   $08                                         ; $63ad: $fe $08
	jr   nc, jr_00b_63ce                             ; $63af: $30 $1d

	ld   a, [hl+]                                    ; $63b1: $2a
	ld   h, [hl]                                     ; $63b2: $66
	ld   l, a                                        ; $63b3: $6f
	or   h                                           ; $63b4: $b4
	jr   z, jr_00b_63ce                              ; $63b5: $28 $17

	ld   a, c                                        ; $63b7: $79
	cp   $04                                         ; $63b8: $fe $04
	jr   nz, jr_00b_63d5                             ; $63ba: $20 $19

	push bc                                          ; $63bc: $c5
	push de                                          ; $63bd: $d5
	push hl                                          ; $63be: $e5
	ld   a, $ff                                      ; $63bf: $3e $ff
	ld   [wRandomNumRange], a                                  ; $63c1: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $63c4: $cd $10 $0d
	pop  hl                                          ; $63c7: $e1
	pop  de                                          ; $63c8: $d1
	pop  bc                                          ; $63c9: $c1
	cp   $20                                         ; $63ca: $fe $20
	jr   c, jr_00b_63d5                              ; $63cc: $38 $07

jr_00b_63ce:
	ld   c, $00                                      ; $63ce: $0e $00
	ld   h, d                                        ; $63d0: $62
	ld   l, e                                        ; $63d1: $6b
	ld   a, [hl+]                                    ; $63d2: $2a
	ld   h, [hl]                                     ; $63d3: $66
	ld   l, a                                        ; $63d4: $6f

jr_00b_63d5:
	ld   a, c                                        ; $63d5: $79
	or   a                                           ; $63d6: $b7
	jr   nz, jr_00b_63f6                             ; $63d7: $20 $1d

	push bc                                          ; $63d9: $c5
	push hl                                          ; $63da: $e5
	srl  a                                           ; $63db: $cb $3f
	srl  a                                           ; $63dd: $cb $3f
	and  $03                                         ; $63df: $e6 $03
	ld   b, a                                        ; $63e1: $47
	xor  a                                           ; $63e2: $af

jr_00b_63e3:
	add  $3c                                         ; $63e3: $c6 $3c
	dec  b                                           ; $63e5: $05
	bit  7, b                                        ; $63e6: $cb $78
	jr   z, jr_00b_63e3                              ; $63e8: $28 $f9

	ld   [wRandomNumRange], a                                  ; $63ea: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $63ed: $cd $10 $0d
	ld   d, $00                                      ; $63f0: $16 $00
	ld   e, a                                        ; $63f2: $5f
	pop  hl                                          ; $63f3: $e1
	add  hl, de                                      ; $63f4: $19
	pop  bc                                          ; $63f5: $c1

jr_00b_63f6:
	ld   a, h                                        ; $63f6: $7c
	and  $f0                                         ; $63f7: $e6 $f0
	swap a                                           ; $63f9: $cb $37
	ld   b, a                                        ; $63fb: $47
	inc  c                                           ; $63fc: $0c
	ld   a, h                                        ; $63fd: $7c
	and  $03                                         ; $63fe: $e6 $03
	ld   h, a                                        ; $6400: $67
	ret                                              ; $6401: $c9


Call_00b_6402::
	ld   hl, $cbcf                                   ; $6402: $21 $cf $cb
	ld   a, $04                                      ; $6405: $3e $04

jr_00b_6407:
	bit  7, [hl]                                     ; $6407: $cb $7e
	jr   nz, jr_00b_6415                             ; $6409: $20 $0a

	push af                                          ; $640b: $f5
	push hl                                          ; $640c: $e5
	ld   a, [hl]                                     ; $640d: $7e
	call DeleteAnimatedSpriteSpec                                       ; $640e: $cd $bb $2f
	pop  hl                                          ; $6411: $e1
	pop  af                                          ; $6412: $f1
	set  7, [hl]                                     ; $6413: $cb $fe

jr_00b_6415:
	dec  a                                           ; $6415: $3d
	ret  z                                           ; $6416: $c8

	inc  hl                                          ; $6417: $23
	jr   jr_00b_6407                                 ; $6418: $18 $ed


Func_0b_641a::
	ld   hl, $cbcf                                   ; $641a: $21 $cf $cb
	ld   a, $04                                      ; $641d: $3e $04

jr_00b_641f:
	bit  7, [hl]                                     ; $641f: $cb $7e
	jr   nz, jr_00b_642b                             ; $6421: $20 $08

	push af                                          ; $6423: $f5
	push hl                                          ; $6424: $e5
	ld   a, [hl]                                     ; $6425: $7e
	call StartAnimatingAnimatedSpriteSpec                                       ; $6426: $cd $14 $30
	pop  hl                                          ; $6429: $e1
	pop  af                                          ; $642a: $f1

jr_00b_642b:
	dec  a                                           ; $642b: $3d
	ret  z                                           ; $642c: $c8

	inc  hl                                          ; $642d: $23
	jr   jr_00b_641f                                 ; $642e: $18 $ef



Func_0b_6430::
	ld   hl, $cbcf                                   ; $6430: $21 $cf $cb
	ld   a, $04                                      ; $6433: $3e $04

jr_00b_6435:
	bit  7, [hl]                                     ; $6435: $cb $7e
	jr   nz, jr_00b_6441                             ; $6437: $20 $08

	push af                                          ; $6439: $f5
	push hl                                          ; $643a: $e5
	ld   a, [hl]                                     ; $643b: $7e
	call StopAnimatingAnimatedSpriteSpec                                       ; $643c: $cd $06 $30
	pop  hl                                          ; $643f: $e1
	pop  af                                          ; $6440: $f1

jr_00b_6441:
	dec  a                                           ; $6441: $3d
	ret  z                                           ; $6442: $c8

	inc  hl                                          ; $6443: $23
	jr   jr_00b_6435                                 ; $6444: $18 $ef


Func_0b_6446::
	push hl                                          ; $6446: $e5
	call Call_00b_6402                               ; $6447: $cd $02 $64
	ld   a, $00                                      ; $644a: $3e $00
	ld   hl, $0000                                   ; $644c: $21 $00 $00
	ld   de, $8000                                   ; $644f: $11 $00 $80
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $6452: $cd $4b $2f
	ld   [$cbcf], a                                  ; $6455: $ea $cf $cb
	ld   a, $00                                      ; $6458: $3e $00
	ld   hl, $0000                                   ; $645a: $21 $00 $00
	ld   de, $8000                                   ; $645d: $11 $00 $80
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $6460: $cd $4b $2f
	ld   [$cbd0], a                                  ; $6463: $ea $d0 $cb
	ld   a, $00                                      ; $6466: $3e $00
	ld   hl, $0000                                   ; $6468: $21 $00 $00
	ld   de, $8000                                   ; $646b: $11 $00 $80
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $646e: $cd $4b $2f
	ld   [$cbd1], a                                  ; $6471: $ea $d1 $cb
	xor  a                                           ; $6474: $af
	ld   [$cbc9], a                                  ; $6475: $ea $c9 $cb
	ld   [$cbca], a                                  ; $6478: $ea $ca $cb
	ld   [$cbcb], a                                  ; $647b: $ea $cb $cb
	ld   [$cbcc], a                                  ; $647e: $ea $cc $cb
	ld   [$cbcd], a                                  ; $6481: $ea $cd $cb
	ld   [$cbce], a                                  ; $6484: $ea $ce $cb
	pop  hl                                          ; $6487: $e1

Jump_00b_6488:
	call Call_00b_4138                               ; $6488: $cd $38 $41
	ld   bc, $000f                                   ; $648b: $01 $0f $00
	add  hl, bc                                      ; $648e: $09
	ld   a, [hl+]                                    ; $648f: $2a
	ld   b, a                                        ; $6490: $47
	ld   a, [hl+]                                    ; $6491: $2a
	ld   c, a                                        ; $6492: $4f
	ld   d, h                                        ; $6493: $54
	ld   e, l                                        ; $6494: $5d
	push bc                                          ; $6495: $c5
	ld   a, [$cbcf]                                  ; $6496: $fa $cf $cb
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6499: $cd $76 $30
	push af                                          ; $649c: $f5
	ld   a, $4b                                      ; $649d: $3e $4b
	ld   [wFarCallAddr], a                                  ; $649f: $ea $98 $c2
	ld   a, $40                                      ; $64a2: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $64a4: $ea $99 $c2
	ld   a, $01                                      ; $64a7: $3e $01
	ld   [wFarCallBank], a                                  ; $64a9: $ea $9a $c2
	pop  af                                          ; $64ac: $f1
	call FarCall                                       ; $64ad: $cd $62 $09
	ld   bc, $5020                                   ; $64b0: $01 $20 $50
	push af                                          ; $64b3: $f5
	ld   a, $55                                      ; $64b4: $3e $55
	ld   [wFarCallAddr], a                                  ; $64b6: $ea $98 $c2
	ld   a, $40                                      ; $64b9: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $64bb: $ea $99 $c2
	ld   a, $01                                      ; $64be: $3e $01
	ld   [wFarCallBank], a                                  ; $64c0: $ea $9a $c2
	pop  af                                          ; $64c3: $f1
	call FarCall                                       ; $64c4: $cd $62 $09
	pop  bc                                          ; $64c7: $c1
	ld   a, [de]                                     ; $64c8: $1a
	ld   c, a                                        ; $64c9: $4f
	push bc                                          ; $64ca: $c5
	ld   a, [$cbc9]                                  ; $64cb: $fa $c9 $cb
	add  c                                           ; $64ce: $81
	ld   c, a                                        ; $64cf: $4f
	ld   a, [$cbd0]                                  ; $64d0: $fa $d0 $cb
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $64d3: $cd $76 $30
	push af                                          ; $64d6: $f5
	ld   a, $4b                                      ; $64d7: $3e $4b
	ld   [wFarCallAddr], a                                  ; $64d9: $ea $98 $c2
	ld   a, $40                                      ; $64dc: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $64de: $ea $99 $c2
	ld   a, $01                                      ; $64e1: $3e $01
	ld   [wFarCallBank], a                                  ; $64e3: $ea $9a $c2
	pop  af                                          ; $64e6: $f1
	call FarCall                                       ; $64e7: $cd $62 $09
	ld   bc, $5020                                   ; $64ea: $01 $20 $50
	push af                                          ; $64ed: $f5
	ld   a, $55                                      ; $64ee: $3e $55
	ld   [wFarCallAddr], a                                  ; $64f0: $ea $98 $c2
	ld   a, $40                                      ; $64f3: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $64f5: $ea $99 $c2
	ld   a, $01                                      ; $64f8: $3e $01
	ld   [wFarCallBank], a                                  ; $64fa: $ea $9a $c2
	pop  af                                          ; $64fd: $f1
	call FarCall                                       ; $64fe: $cd $62 $09
	pop  bc                                          ; $6501: $c1
	ld   a, [$cbcd]                                  ; $6502: $fa $cd $cb
	add  c                                           ; $6505: $81
	add  $03                                         ; $6506: $c6 $03
	ld   c, a                                        ; $6508: $4f
	ld   a, [$cbd1]                                  ; $6509: $fa $d1 $cb
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $650c: $cd $76 $30
	push af                                          ; $650f: $f5
	ld   a, $4b                                      ; $6510: $3e $4b
	ld   [wFarCallAddr], a                                  ; $6512: $ea $98 $c2
	ld   a, $40                                      ; $6515: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $6517: $ea $99 $c2
	ld   a, $01                                      ; $651a: $3e $01
	ld   [wFarCallBank], a                                  ; $651c: $ea $9a $c2
	pop  af                                          ; $651f: $f1
	call FarCall                                       ; $6520: $cd $62 $09
	ld   bc, $5020                                   ; $6523: $01 $20 $50
	push af                                          ; $6526: $f5
	ld   a, $55                                      ; $6527: $3e $55
	ld   [wFarCallAddr], a                                  ; $6529: $ea $98 $c2
	ld   a, $40                                      ; $652c: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $652e: $ea $99 $c2
	ld   a, $01                                      ; $6531: $3e $01
	ld   [wFarCallBank], a                                  ; $6533: $ea $9a $c2
	pop  af                                          ; $6536: $f1
	call FarCall                                       ; $6537: $cd $62 $09
	ret                                              ; $653a: $c9


Func_0b_653b::
	push hl                                          ; $653b: $e5
	ld   hl, $cbcf                                   ; $653c: $21 $cf $cb
	bit  7, [hl]                                     ; $653f: $cb $7e
	pop  hl                                          ; $6541: $e1
	ret  nz                                          ; $6542: $c0

	push hl                                          ; $6543: $e5
	ld   d, $00                                      ; $6544: $16 $00
	ld   e, a                                        ; $6546: $5f
	bit  0, e                                        ; $6547: $cb $43
	jr   nz, jr_00b_6551                             ; $6549: $20 $06

	ld   a, [$cbc9]                                  ; $654b: $fa $c9 $cb
	or   a                                           ; $654e: $b7
	jr   z, jr_00b_657f                              ; $654f: $28 $2e

jr_00b_6551:
	ld   a, [$cbcb]                                  ; $6551: $fa $cb $cb
	ld   c, a                                        ; $6554: $4f
	ld   a, [$cbcc]                                  ; $6555: $fa $cc $cb
	ld   b, a                                        ; $6558: $47
	dec  bc                                          ; $6559: $0b
	ld   a, c                                        ; $655a: $79
	ld   [$cbcb], a                                  ; $655b: $ea $cb $cb
	ld   a, b                                        ; $655e: $78
	ld   [$cbcc], a                                  ; $655f: $ea $cc $cb
	bit  7, b                                        ; $6562: $cb $78
	jr   z, jr_00b_657f                              ; $6564: $28 $19

	inc  d                                           ; $6566: $14
	push de                                          ; $6567: $d5
	ld   a, [$cbca]                                  ; $6568: $fa $ca $cb
	call Call_00b_65b5                               ; $656b: $cd $b5 $65
	ld   a, b                                        ; $656e: $78
	ld   [$cbc9], a                                  ; $656f: $ea $c9 $cb
	ld   a, c                                        ; $6572: $79
	ld   [$cbca], a                                  ; $6573: $ea $ca $cb
	ld   a, l                                        ; $6576: $7d
	ld   [$cbcb], a                                  ; $6577: $ea $cb $cb
	ld   a, h                                        ; $657a: $7c
	ld   [$cbcc], a                                  ; $657b: $ea $cc $cb
	pop  de                                          ; $657e: $d1

jr_00b_657f:
	bit  1, e                                        ; $657f: $cb $4b
	jr   nz, jr_00b_6589                             ; $6581: $20 $06

	ld   a, [$cbcd]                                  ; $6583: $fa $cd $cb
	or   a                                           ; $6586: $b7
	jr   z, jr_00b_65ae                              ; $6587: $28 $25

jr_00b_6589:
	ld   a, [$cbce]                                  ; $6589: $fa $ce $cb
	sub  $01                                         ; $658c: $d6 $01
	ld   [$cbce], a                                  ; $658e: $ea $ce $cb
	jr   nc, jr_00b_65ae                             ; $6591: $30 $1b

	inc  d                                           ; $6593: $14
	ld   a, $ff                                      ; $6594: $3e $ff
	ld   [wRandomNumRange], a                                  ; $6596: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $6599: $cd $10 $0d
	and  $03                                         ; $659c: $e6 $03
	add  $06                                         ; $659e: $c6 $06
	ld   [$cbce], a                                  ; $65a0: $ea $ce $cb
	ld   hl, $cbcd                                   ; $65a3: $21 $cd $cb
	inc  [hl]                                        ; $65a6: $34
	ld   a, [hl]                                     ; $65a7: $7e
	cp   $02                                         ; $65a8: $fe $02
	jr   c, jr_00b_65ae                              ; $65aa: $38 $02

	xor  a                                           ; $65ac: $af
	ld   [hl], a                                     ; $65ad: $77

jr_00b_65ae:
	pop  hl                                          ; $65ae: $e1
	ld   a, d                                        ; $65af: $7a
	or   a                                           ; $65b0: $b7
	jp   nz, Jump_00b_6488                           ; $65b1: $c2 $88 $64

	ret                                              ; $65b4: $c9


Call_00b_65b5:
	ld   b, $00                                      ; $65b5: $06 $00
	ld   c, a                                        ; $65b7: $4f
	push bc                                          ; $65b8: $c5
	ld   d, $00                                      ; $65b9: $16 $00
	ld   a, l                                        ; $65bb: $7d
	and  $0f                                         ; $65bc: $e6 $0f
	ld   e, a                                        ; $65be: $5f
	call Call_00b_4138                               ; $65bf: $cd $38 $41
	ld   bc, $0012                                   ; $65c2: $01 $12 $00
	add  hl, bc                                      ; $65c5: $09
	add  hl, de                                      ; $65c6: $19
	ld   l, [hl]                                     ; $65c7: $6e
	ld   h, $00                                      ; $65c8: $26 $00
	add  hl, hl                                      ; $65ca: $29
	add  hl, hl                                      ; $65cb: $29
	add  hl, hl                                      ; $65cc: $29
	add  hl, hl                                      ; $65cd: $29
	ld   bc, $662d                                   ; $65ce: $01 $2d $66
	add  hl, bc                                      ; $65d1: $09
	ld   d, h                                        ; $65d2: $54
	ld   e, l                                        ; $65d3: $5d
	pop  bc                                          ; $65d4: $c1
	add  hl, bc                                      ; $65d5: $09
	add  hl, bc                                      ; $65d6: $09
	ld   a, c                                        ; $65d7: $79
	cp   $08                                         ; $65d8: $fe $08
	jr   nc, jr_00b_65f9                             ; $65da: $30 $1d

	ld   a, [hl+]                                    ; $65dc: $2a
	ld   h, [hl]                                     ; $65dd: $66
	ld   l, a                                        ; $65de: $6f
	or   h                                           ; $65df: $b4
	jr   z, jr_00b_65f9                              ; $65e0: $28 $17

	ld   a, c                                        ; $65e2: $79
	cp   $04                                         ; $65e3: $fe $04
	jr   nz, jr_00b_6600                             ; $65e5: $20 $19

	push bc                                          ; $65e7: $c5
	push de                                          ; $65e8: $d5
	push hl                                          ; $65e9: $e5
	ld   a, $ff                                      ; $65ea: $3e $ff
	ld   [wRandomNumRange], a                                  ; $65ec: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $65ef: $cd $10 $0d
	pop  hl                                          ; $65f2: $e1
	pop  de                                          ; $65f3: $d1
	pop  bc                                          ; $65f4: $c1
	cp   $20                                         ; $65f5: $fe $20
	jr   c, jr_00b_6600                              ; $65f7: $38 $07

jr_00b_65f9:
	ld   c, $00                                      ; $65f9: $0e $00
	ld   h, d                                        ; $65fb: $62
	ld   l, e                                        ; $65fc: $6b
	ld   a, [hl+]                                    ; $65fd: $2a
	ld   h, [hl]                                     ; $65fe: $66
	ld   l, a                                        ; $65ff: $6f

jr_00b_6600:
	ld   a, c                                        ; $6600: $79
	or   a                                           ; $6601: $b7
	jr   nz, jr_00b_6621                             ; $6602: $20 $1d

	push bc                                          ; $6604: $c5
	push hl                                          ; $6605: $e5
	srl  a                                           ; $6606: $cb $3f
	srl  a                                           ; $6608: $cb $3f
	and  $03                                         ; $660a: $e6 $03
	ld   b, a                                        ; $660c: $47
	xor  a                                           ; $660d: $af

jr_00b_660e:
	add  $3c                                         ; $660e: $c6 $3c
	dec  b                                           ; $6610: $05
	bit  7, b                                        ; $6611: $cb $78
	jr   z, jr_00b_660e                              ; $6613: $28 $f9

	ld   [wRandomNumRange], a                                  ; $6615: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $6618: $cd $10 $0d
	ld   d, $00                                      ; $661b: $16 $00
	ld   e, a                                        ; $661d: $5f
	pop  hl                                          ; $661e: $e1
	add  hl, de                                      ; $661f: $19
	pop  bc                                          ; $6620: $c1

jr_00b_6621:
	ld   a, h                                        ; $6621: $7c
	and  $f0                                         ; $6622: $e6 $f0
	swap a                                           ; $6624: $cb $37
	ld   b, a                                        ; $6626: $47
	inc  c                                           ; $6627: $0c
	ld   a, h                                        ; $6628: $7c
	and  $03                                         ; $6629: $e6 $03
	ld   h, a                                        ; $662b: $67
	ret                                              ; $662c: $c9


	inc  l                                           ; $662d: $2c
	ld   bc, $1003                                   ; $662e: $01 $03 $10
	inc  b                                           ; $6631: $04
	jr   nz, jr_00b_6636                             ; $6632: $20 $02

	stop                                             ; $6634: $10 $00

jr_00b_6636:
	nop                                              ; $6636: $00
	nop                                              ; $6637: $00
	nop                                              ; $6638: $00
	nop                                              ; $6639: $00
	nop                                              ; $663a: $00
	nop                                              ; $663b: $00
	nop                                              ; $663c: $00
	ld   l, b                                        ; $663d: $68
	dec  b                                           ; $663e: $05
	inc  bc                                          ; $663f: $03
	db   $10                                         ; $6640: $10
	inc  b                                           ; $6641: $04
	jr   nz, jr_00b_6646                             ; $6642: $20 $02

	stop                                             ; $6644: $10 $00

jr_00b_6646:
	nop                                              ; $6646: $00
	nop                                              ; $6647: $00
	nop                                              ; $6648: $00
	nop                                              ; $6649: $00
	nop                                              ; $664a: $00
	nop                                              ; $664b: $00
	nop                                              ; $664c: $00
	ldh  a, [rP1]                                    ; $664d: $f0 $00
	ld   [bc], a                                     ; $664f: $02
	db   $10                                         ; $6650: $10
	inc  bc                                          ; $6651: $03
	jr   nz, jr_00b_6655                             ; $6652: $20 $01

	db   $10                                         ; $6654: $10

jr_00b_6655:
	ld   a, [bc]                                     ; $6655: $0a
	nop                                              ; $6656: $00
	ld   [bc], a                                     ; $6657: $02
	db   $10                                         ; $6658: $10
	inc  bc                                          ; $6659: $03
	jr   nz, jr_00b_665d                             ; $665a: $20 $01

	db   $10                                         ; $665c: $10

jr_00b_665d:
	inc  l                                           ; $665d: $2c
	dec  b                                           ; $665e: $05
	inc  bc                                          ; $665f: $03
	db   $10                                         ; $6660: $10
	inc  b                                           ; $6661: $04
	jr   nz, jr_00b_6666                             ; $6662: $20 $02

	stop                                             ; $6664: $10 $00

jr_00b_6666:
	nop                                              ; $6666: $00
	nop                                              ; $6667: $00
	nop                                              ; $6668: $00
	nop                                              ; $6669: $00
	nop                                              ; $666a: $00
	nop                                              ; $666b: $00
	nop                                              ; $666c: $00
	ldh  a, [rP1]                                    ; $666d: $f0 $00
	inc  bc                                          ; $666f: $03
	db   $10                                         ; $6670: $10
	inc  b                                           ; $6671: $04
	jr   nz, jr_00b_6676                             ; $6672: $20 $02

	stop                                             ; $6674: $10 $00

jr_00b_6676:
	nop                                              ; $6676: $00
	nop                                              ; $6677: $00
	nop                                              ; $6678: $00
	nop                                              ; $6679: $00
	nop                                              ; $667a: $00
	nop                                              ; $667b: $00
	nop                                              ; $667c: $00
	and  b                                           ; $667d: $a0
	ld   bc, $1003                                   ; $667e: $01 $03 $10
	inc  b                                           ; $6681: $04
	jr   nz, jr_00b_6686                             ; $6682: $20 $02

	stop                                             ; $6684: $10 $00

jr_00b_6686:
	nop                                              ; $6686: $00
	nop                                              ; $6687: $00
	nop                                              ; $6688: $00
	nop                                              ; $6689: $00
	nop                                              ; $668a: $00
	nop                                              ; $668b: $00
	nop                                              ; $668c: $00
	ld   l, b                                        ; $668d: $68
	dec  b                                           ; $668e: $05
	inc  bc                                          ; $668f: $03
	db   $10                                         ; $6690: $10
	inc  b                                           ; $6691: $04
	jr   nz, jr_00b_6696                             ; $6692: $20 $02

	stop                                             ; $6694: $10 $00

jr_00b_6696:
	nop                                              ; $6696: $00
	nop                                              ; $6697: $00
	nop                                              ; $6698: $00
	nop                                              ; $6699: $00
	nop                                              ; $669a: $00
	nop                                              ; $669b: $00
	nop                                              ; $669c: $00
	ldh  a, [rDIV]                                   ; $669d: $f0 $04
	inc  bc                                          ; $669f: $03
	db   $10                                         ; $66a0: $10
	inc  b                                           ; $66a1: $04
	jr   nz, @+$04                                   ; $66a2: $20 $02

	db   $10                                         ; $66a4: $10
	stop                                             ; $66a5: $10 $00
	inc  bc                                          ; $66a7: $03
	db   $10                                         ; $66a8: $10
	inc  b                                           ; $66a9: $04
	jr   nz, jr_00b_66ae                             ; $66aa: $20 $02

	db   $10                                         ; $66ac: $10
	inc  l                                           ; $66ad: $2c

jr_00b_66ae:
	dec  b                                           ; $66ae: $05
	ld   [bc], a                                     ; $66af: $02
	db   $10                                         ; $66b0: $10
	inc  bc                                          ; $66b1: $03
	jr   nz, jr_00b_66b5                             ; $66b2: $20 $01

	db   $10                                         ; $66b4: $10

jr_00b_66b5:
	stop                                             ; $66b5: $10 $00
	ld   [bc], a                                     ; $66b7: $02
	db   $10                                         ; $66b8: $10
	inc  bc                                          ; $66b9: $03
	jr   nz, jr_00b_66bd                             ; $66ba: $20 $01

	db   $10                                         ; $66bc: $10

jr_00b_66bd:
	ld   a, b                                        ; $66bd: $78
	inc  b                                           ; $66be: $04
	ld   b, $10                                      ; $66bf: $06 $10
	ld   a, [bc]                                     ; $66c1: $0a
	jr   nz, jr_00b_66c9                             ; $66c2: $20 $05

	db   $10                                         ; $66c4: $10
	jr   nz, jr_00b_66c7                             ; $66c5: $20 $00

jr_00b_66c7:
	ld   b, $10                                      ; $66c7: $06 $10

jr_00b_66c9:
	ld   a, [bc]                                     ; $66c9: $0a
	jr   nz, jr_00b_66d1                             ; $66ca: $20 $05

	db   $10                                         ; $66cc: $10


Func_0b_66cd::
	push af                                          ; $66cd: $f5
	call Call_00b_6402                               ; $66ce: $cd $02 $64

jr_00b_66d1:
	xor  a                                           ; $66d1: $af
	ld   [$cbc9], a                                  ; $66d2: $ea $c9 $cb
	ld   [$cbca], a                                  ; $66d5: $ea $ca $cb
	ld   [$cbcb], a                                  ; $66d8: $ea $cb $cb
	ld   [$cbcd], a                                  ; $66db: $ea $cd $cb
	ld   [$cbce], a                                  ; $66de: $ea $ce $cb
	pop  af                                          ; $66e1: $f1
	push af                                          ; $66e2: $f5
	call Call_00b_5b1f                               ; $66e3: $cd $1f $5b
	ld   bc, $0012                                   ; $66e6: $01 $12 $00
	add  hl, bc                                      ; $66e9: $09
	ld   a, [hl+]                                    ; $66ea: $2a
	ld   c, a                                        ; $66eb: $4f
	or   $0f                                         ; $66ec: $f6 $0f
	ld   b, a                                        ; $66ee: $47
	ld   de, $cbcf                                   ; $66ef: $11 $cf $cb

Jump_00b_66f2:
jr_00b_66f2:
	bit  3, b                                        ; $66f2: $cb $58
	jp   z, Jump_00b_6777                            ; $66f4: $ca $77 $67

	ld   a, [hl]                                     ; $66f7: $7e
	cp   $ff                                         ; $66f8: $fe $ff
	jr   z, jr_00b_6777                              ; $66fa: $28 $7b

	sla  b                                           ; $66fc: $cb $20
	jr   c, jr_00b_673b                              ; $66fe: $38 $3b

	push bc                                          ; $6700: $c5
	push hl                                          ; $6701: $e5
	push de                                          ; $6702: $d5
	ld   a, $00                                      ; $6703: $3e $00
	ld   hl, $0000                                   ; $6705: $21 $00 $00
	ld   de, $8000                                   ; $6708: $11 $00 $80
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $670b: $cd $4b $2f
	pop  de                                          ; $670e: $d1
	ld   [de], a                                     ; $670f: $12
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6710: $cd $76 $30
	ld   b, h                                        ; $6713: $44
	ld   c, l                                        ; $6714: $4d
	pop  hl                                          ; $6715: $e1
	push de                                          ; $6716: $d5
	push hl                                          ; $6717: $e5
	ld   d, $08                                      ; $6718: $16 $08
	ld   e, [hl]                                     ; $671a: $5e
	ld   h, b                                        ; $671b: $60
	ld   l, c                                        ; $671c: $69
	ld   bc, $5020                                   ; $671d: $01 $20 $50
	push af                                          ; $6720: $f5
	ld   a, $3c                                      ; $6721: $3e $3c
	ld   [wFarCallAddr], a                                  ; $6723: $ea $98 $c2
	ld   a, $40                                      ; $6726: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $6728: $ea $99 $c2
	ld   a, $01                                      ; $672b: $3e $01
	ld   [wFarCallBank], a                                  ; $672d: $ea $9a $c2
	pop  af                                          ; $6730: $f1
	call FarCall                                       ; $6731: $cd $62 $09
	pop  hl                                          ; $6734: $e1
	pop  de                                          ; $6735: $d1
	pop  bc                                          ; $6736: $c1
	inc  de                                          ; $6737: $13
	inc  hl                                          ; $6738: $23
	jr   jr_00b_66f2                                 ; $6739: $18 $b7

jr_00b_673b:
	push bc                                          ; $673b: $c5
	push hl                                          ; $673c: $e5
	push de                                          ; $673d: $d5
	ld   a, $01                                      ; $673e: $3e $01
	ld   hl, $0000                                   ; $6740: $21 $00 $00
	ld   d, h                                        ; $6743: $54
	ld   e, l                                        ; $6744: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $6745: $cd $4b $2f
	pop  de                                          ; $6748: $d1
	ld   [de], a                                     ; $6749: $12
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $674a: $cd $76 $30
	ld   b, h                                        ; $674d: $44
	ld   c, l                                        ; $674e: $4d
	pop  hl                                          ; $674f: $e1
	push de                                          ; $6750: $d5
	push hl                                          ; $6751: $e5
	ld   a, [hl]                                     ; $6752: $7e
	ld   h, b                                        ; $6753: $60
	ld   l, c                                        ; $6754: $69
	ld   de, $7ae3                                   ; $6755: $11 $e3 $7a
	ld   bc, $5020                                   ; $6758: $01 $20 $50
	push af                                          ; $675b: $f5
	ld   a, $03                                      ; $675c: $3e $03
	ld   [wFarCallAddr], a                                  ; $675e: $ea $98 $c2
	ld   a, $41                                      ; $6761: $3e $41
	ld   [wFarCallAddr+1], a                                  ; $6763: $ea $99 $c2
	ld   a, $01                                      ; $6766: $3e $01
	ld   [wFarCallBank], a                                  ; $6768: $ea $9a $c2
	pop  af                                          ; $676b: $f1
	call FarCall                                       ; $676c: $cd $62 $09
	pop  hl                                          ; $676f: $e1
	pop  de                                          ; $6770: $d1
	pop  bc                                          ; $6771: $c1
	inc  de                                          ; $6772: $13
	inc  hl                                          ; $6773: $23
	jp   Jump_00b_66f2                               ; $6774: $c3 $f2 $66


Jump_00b_6777:
jr_00b_6777:
	pop  hl                                          ; $6777: $e1
	ld   a, c                                        ; $6778: $79
	and  $0f                                         ; $6779: $e6 $0f
	ret  z                                           ; $677b: $c8

Jump_00b_677c:
	push af                                          ; $677c: $f5
	ld   a, h                                        ; $677d: $7c
	call Call_00b_5b1f                               ; $677e: $cd $1f $5b
	ld   bc, $0013                                   ; $6781: $01 $13 $00
	add  hl, bc                                      ; $6784: $09
	ld   b, $08                                      ; $6785: $06 $08
	ld   a, [hl+]                                    ; $6787: $2a
	ld   c, a                                        ; $6788: $4f
	ld   d, h                                        ; $6789: $54
	ld   e, l                                        ; $678a: $5d
	ld   a, [$cbcf]                                  ; $678b: $fa $cf $cb
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $678e: $cd $76 $30
	push af                                          ; $6791: $f5
	ld   a, $4b                                      ; $6792: $3e $4b
	ld   [wFarCallAddr], a                                  ; $6794: $ea $98 $c2
	ld   a, $40                                      ; $6797: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $6799: $ea $99 $c2
	ld   a, $01                                      ; $679c: $3e $01
	ld   [wFarCallBank], a                                  ; $679e: $ea $9a $c2
	pop  af                                          ; $67a1: $f1
	call FarCall                                       ; $67a2: $cd $62 $09
	ld   bc, $5020                                   ; $67a5: $01 $20 $50
	push af                                          ; $67a8: $f5
	ld   a, $55                                      ; $67a9: $3e $55
	ld   [wFarCallAddr], a                                  ; $67ab: $ea $98 $c2
	ld   a, $40                                      ; $67ae: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $67b0: $ea $99 $c2
	ld   a, $01                                      ; $67b3: $3e $01
	ld   [wFarCallBank], a                                  ; $67b5: $ea $9a $c2
	pop  af                                          ; $67b8: $f1
	call FarCall                                       ; $67b9: $cd $62 $09
	ld   b, $08                                      ; $67bc: $06 $08
	ld   a, [de]                                     ; $67be: $1a
	inc  de                                          ; $67bf: $13
	ld   c, a                                        ; $67c0: $4f
	ld   a, [$cbc9]                                  ; $67c1: $fa $c9 $cb
	add  c                                           ; $67c4: $81
	ld   c, a                                        ; $67c5: $4f
	ld   a, [$cbd0]                                  ; $67c6: $fa $d0 $cb
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $67c9: $cd $76 $30
	push af                                          ; $67cc: $f5
	ld   a, $4b                                      ; $67cd: $3e $4b
	ld   [wFarCallAddr], a                                  ; $67cf: $ea $98 $c2
	ld   a, $40                                      ; $67d2: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $67d4: $ea $99 $c2
	ld   a, $01                                      ; $67d7: $3e $01
	ld   [wFarCallBank], a                                  ; $67d9: $ea $9a $c2
	pop  af                                          ; $67dc: $f1
	call FarCall                                       ; $67dd: $cd $62 $09
	ld   bc, $5020                                   ; $67e0: $01 $20 $50
	push af                                          ; $67e3: $f5
	ld   a, $55                                      ; $67e4: $3e $55
	ld   [wFarCallAddr], a                                  ; $67e6: $ea $98 $c2
	ld   a, $40                                      ; $67e9: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $67eb: $ea $99 $c2
	ld   a, $01                                      ; $67ee: $3e $01
	ld   [wFarCallBank], a                                  ; $67f0: $ea $9a $c2
	pop  af                                          ; $67f3: $f1
	call FarCall                                       ; $67f4: $cd $62 $09
	ld   b, $08                                      ; $67f7: $06 $08
	ld   a, [de]                                     ; $67f9: $1a
	ld   c, a                                        ; $67fa: $4f
	ld   a, [$cbcd]                                  ; $67fb: $fa $cd $cb
	add  c                                           ; $67fe: $81
	ld   c, a                                        ; $67ff: $4f
	ld   a, [$cbd1]                                  ; $6800: $fa $d1 $cb
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $6803: $cd $76 $30
	push af                                          ; $6806: $f5
	ld   a, $4b                                      ; $6807: $3e $4b
	ld   [wFarCallAddr], a                                  ; $6809: $ea $98 $c2
	ld   a, $40                                      ; $680c: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $680e: $ea $99 $c2
	ld   a, $01                                      ; $6811: $3e $01
	ld   [wFarCallBank], a                                  ; $6813: $ea $9a $c2
	pop  af                                          ; $6816: $f1
	call FarCall                                       ; $6817: $cd $62 $09
	ld   bc, $5020                                   ; $681a: $01 $20 $50
	push af                                          ; $681d: $f5
	ld   a, $55                                      ; $681e: $3e $55
	ld   [wFarCallAddr], a                                  ; $6820: $ea $98 $c2
	ld   a, $40                                      ; $6823: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $6825: $ea $99 $c2
	ld   a, $01                                      ; $6828: $3e $01
	ld   [wFarCallBank], a                                  ; $682a: $ea $9a $c2
	pop  af                                          ; $682d: $f1
	call FarCall                                       ; $682e: $cd $62 $09
	pop  af                                          ; $6831: $f1
	ret                                              ; $6832: $c9


Func_0b_6833::
	push hl                                          ; $6833: $e5
	ld   d, $00                                      ; $6834: $16 $00
	ld   e, l                                        ; $6836: $5d
	bit  0, e                                        ; $6837: $cb $43
	jr   nz, jr_00b_6841                             ; $6839: $20 $06

	ld   a, [$cbc9]                                  ; $683b: $fa $c9 $cb
	or   a                                           ; $683e: $b7
	jr   z, jr_00b_6860                              ; $683f: $28 $1f

jr_00b_6841:
	ld   a, [$cbcb]                                  ; $6841: $fa $cb $cb
	sub  $01                                         ; $6844: $d6 $01
	ld   [$cbcb], a                                  ; $6846: $ea $cb $cb
	jr   nc, jr_00b_6860                             ; $6849: $30 $15

	inc  d                                           ; $684b: $14
	push de                                          ; $684c: $d5
	ld   a, [$cbca]                                  ; $684d: $fa $ca $cb
	ld   l, a                                        ; $6850: $6f
	call Call_00b_6897                               ; $6851: $cd $97 $68
	ld   [$cbca], a                                  ; $6854: $ea $ca $cb
	ld   a, h                                        ; $6857: $7c
	ld   [$cbc9], a                                  ; $6858: $ea $c9 $cb
	ld   a, l                                        ; $685b: $7d
	ld   [$cbcb], a                                  ; $685c: $ea $cb $cb
	pop  de                                          ; $685f: $d1

jr_00b_6860:
	bit  1, e                                        ; $6860: $cb $4b
	jr   nz, jr_00b_686a                             ; $6862: $20 $06

	ld   a, [$cbcd]                                  ; $6864: $fa $cd $cb
	or   a                                           ; $6867: $b7
	jr   z, jr_00b_688f                              ; $6868: $28 $25

jr_00b_686a:
	ld   a, [$cbce]                                  ; $686a: $fa $ce $cb
	sub  $01                                         ; $686d: $d6 $01
	ld   [$cbce], a                                  ; $686f: $ea $ce $cb
	jr   nc, jr_00b_688f                             ; $6872: $30 $1b

	inc  d                                           ; $6874: $14
	ld   a, $ff                                      ; $6875: $3e $ff
	ld   [wRandomNumRange], a                                  ; $6877: $ea $a5 $c2
	call GetRandomNumInPreSpecifiedRange                                       ; $687a: $cd $10 $0d
	and  $03                                         ; $687d: $e6 $03
	add  $06                                         ; $687f: $c6 $06
	ld   [$cbce], a                                  ; $6881: $ea $ce $cb
	ld   hl, $cbcd                                   ; $6884: $21 $cd $cb
	inc  [hl]                                        ; $6887: $34
	ld   a, [hl]                                     ; $6888: $7e
	cp   $02                                         ; $6889: $fe $02
	jr   c, jr_00b_688f                              ; $688b: $38 $02

	xor  a                                           ; $688d: $af
	ld   [hl], a                                     ; $688e: $77

jr_00b_688f:
	pop  hl                                          ; $688f: $e1
	ld   a, d                                        ; $6890: $7a
	or   a                                           ; $6891: $b7
	ret  z                                           ; $6892: $c8

	ld   a, h                                        ; $6893: $7c
	jp   Jump_00b_677c                               ; $6894: $c3 $7c $67


Call_00b_6897:
	ld   a, h                                        ; $6897: $7c
	ld   d, $00                                      ; $6898: $16 $00
	ld   e, l                                        ; $689a: $5d
	call Call_00b_5b1f                               ; $689b: $cd $1f $5b
	ld   bc, $0018                                   ; $689e: $01 $18 $00
	add  hl, bc                                      ; $68a1: $09
	ld   b, h                                        ; $68a2: $44
	ld   c, l                                        ; $68a3: $4d
	add  hl, de                                      ; $68a4: $19
	ld   a, [hl]                                     ; $68a5: $7e
	or   a                                           ; $68a6: $b7
	jr   nz, jr_00b_68ab                             ; $68a7: $20 $02

	ld   e, a                                        ; $68a9: $5f
	ld   a, [bc]                                     ; $68aa: $0a

jr_00b_68ab:
	ld   l, a                                        ; $68ab: $6f
	and  $03                                         ; $68ac: $e6 $03
	ld   h, a                                        ; $68ae: $67
	srl  l                                           ; $68af: $cb $3d
	srl  l                                           ; $68b1: $cb $3d
	ld   a, e                                        ; $68b3: $7b
	inc  a                                           ; $68b4: $3c
	ret                                              ; $68b5: $c9


GameState48::
	ld   a, [wGameSubstate]                                  ; $68b6: $fa $a1 $c2
	or   a                                           ; $68b9: $b7
	jp   nz, Jump_00b_6949                           ; $68ba: $c2 $49 $69

	call TurnOffLCD                                       ; $68bd: $cd $e3 $08
	call ClearDisplayRegsAllowVBlankInt                                       ; $68c0: $cd $59 $0b
	ld   a, [wLCDC]                                  ; $68c3: $fa $03 $c2
	and  $e0                                         ; $68c6: $e6 $e0
	or   $07                                         ; $68c8: $f6 $07
	ld   [wLCDC], a                                  ; $68ca: $ea $03 $c2
	ld   a, $ff                                      ; $68cd: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $68cf: $ea $0e $c2
	call ClearOam                                       ; $68d2: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $68d5: $cd $c9 $2e
	ld   a, [wWramBank]                                  ; $68d8: $fa $93 $c2
	push af                                          ; $68db: $f5
	ld   a, $06                                      ; $68dc: $3e $06
	ld   [wWramBank], a                                  ; $68de: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $68e1: $e0 $70
	ld   a, $9a                                      ; $68e3: $3e $9a
	ld   hl, $d000                                   ; $68e5: $21 $00 $d0
	ld   de, $7e23                                   ; $68e8: $11 $23 $7e
	call RLEXorCopy                                       ; $68eb: $cd $d2 $09
	pop  af                                          ; $68ee: $f1
	ld   [wWramBank], a                                  ; $68ef: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $68f2: $e0 $70
	push af                                          ; $68f4: $f5
	ld   a, $1a                                      ; $68f5: $3e $1a
	ld   [wFarCallAddr], a                                  ; $68f7: $ea $98 $c2
	ld   a, $48                                      ; $68fa: $3e $48
	ld   [wFarCallAddr+1], a                                  ; $68fc: $ea $99 $c2
	ld   a, $0a                                      ; $68ff: $3e $0a
	ld   [wFarCallBank], a                                  ; $6901: $ea $9a $c2
	pop  af                                          ; $6904: $f1
	call FarCall                                       ; $6905: $cd $62 $09
	push af                                          ; $6908: $f5
	ld   a, $34                                      ; $6909: $3e $34
	ld   [wFarCallAddr], a                                  ; $690b: $ea $98 $c2
	ld   a, $49                                      ; $690e: $3e $49
	ld   [wFarCallAddr+1], a                                  ; $6910: $ea $99 $c2
	ld   a, $0a                                      ; $6913: $3e $0a
	ld   [wFarCallBank], a                                  ; $6915: $ea $9a $c2
	pop  af                                          ; $6918: $f1
	call FarCall                                       ; $6919: $cd $62 $09
	xor  a                                           ; $691c: $af
	ld   [$cbf7], a                                  ; $691d: $ea $f7 $cb
	ld   [$cbf8], a                                  ; $6920: $ea $f8 $cb
	ld   [$cbf9], a                                  ; $6923: $ea $f9 $cb
	ld   [$cbfa], a                                  ; $6926: $ea $fa $cb
	ld   a, $01                                      ; $6929: $3e $01
	ld   [$cbfb], a                                  ; $692b: $ea $fb $cb
	xor  a                                           ; $692e: $af
	ld   [$cbfc], a                                  ; $692f: $ea $fc $cb
	ld   [$cbfd], a                                  ; $6932: $ea $fd $cb
	ld   a, $01                                      ; $6935: $3e $01
	ld   [$cbfe], a                                  ; $6937: $ea $fe $cb
	xor  a                                           ; $693a: $af
	ld   [$cc00], a                                  ; $693b: $ea $00 $cc
	ld   [$cc01], a                                  ; $693e: $ea $01 $cc
	call TurnOnLCD                                       ; $6941: $cd $09 $09
	ld   hl, wGameSubstate                                   ; $6944: $21 $a1 $c2
	inc  [hl]                                        ; $6947: $34
	ret                                              ; $6948: $c9


Jump_00b_6949:
	call ClearOam                                       ; $6949: $cd $d7 $0d
	ld   bc, $695f                                   ; $694c: $01 $5f $69
	push bc                                          ; $694f: $c5
	ld   a, [$cbf7]                                  ; $6950: $fa $f7 $cb
	ld   h, $00                                      ; $6953: $26 $00
	ld   l, a                                        ; $6955: $6f
	add  hl, hl                                      ; $6956: $29
	ld   bc, $6962                                   ; $6957: $01 $62 $69
	add  hl, bc                                      ; $695a: $09
	ld   a, [hl+]                                    ; $695b: $2a
	ld   h, [hl]                                     ; $695c: $66
	ld   l, a                                        ; $695d: $6f
	jp   hl                                          ; $695e: $e9


	jp   AnimateAllAnimatedSpriteSpecs                                       ; $695f: $c3 $d3 $2e


	adc  b                                           ; $6962: $88
	ld   l, c                                        ; $6963: $69
	sub  c                                           ; $6964: $91
	ld   l, c                                        ; $6965: $69
	ld   b, h                                        ; $6966: $44
	ld   l, d                                        ; $6967: $6a
	ret  nz                                          ; $6968: $c0

	ld   l, d                                        ; $6969: $6a
	ld   [hl], h                                     ; $696a: $74
	ld   l, e                                        ; $696b: $6b
	or   e                                           ; $696c: $b3
	ld   l, e                                        ; $696d: $6b
	add  [hl]                                        ; $696e: $86
	ld   l, h                                        ; $696f: $6c
	adc  a                                           ; $6970: $8f
	ld   l, h                                        ; $6971: $6c
	db   $ec                                         ; $6972: $ec
	ld   l, h                                        ; $6973: $6c
	ld   [hl], a                                     ; $6974: $77
	ld   l, l                                        ; $6975: $6d
	ldh  [c], a                                      ; $6976: $e2
	ld   l, l                                        ; $6977: $6d
	rlca                                             ; $6978: $07
	ld   l, [hl]                                     ; $6979: $6e
	ld   a, [hl]                                     ; $697a: $7e
	ld   l, [hl]                                     ; $697b: $6e
	add  a                                           ; $697c: $87
	ld   l, [hl]                                     ; $697d: $6e
	ld   a, [hl-]                                    ; $697e: $3a
	ld   l, a                                        ; $697f: $6f
	or   [hl]                                        ; $6980: $b6
	ld   l, a                                        ; $6981: $6f
	dec  bc                                          ; $6982: $0b
	ld   [hl], b                                     ; $6983: $70
	jp   nz, $e270                                   ; $6984: $c2 $70 $e2

	ld   [hl], b                                     ; $6987: $70
	ld   hl, $cbf7                                   ; $6988: $21 $f7 $cb
	inc  [hl]                                        ; $698b: $34
	xor  a                                           ; $698c: $af
	ld   [$cbf8], a                                  ; $698d: $ea $f8 $cb
	ret                                              ; $6990: $c9


	ld   a, [$cbf8]                                  ; $6991: $fa $f8 $cb
	or   a                                           ; $6994: $b7
	jr   nz, jr_00b_69b0                             ; $6995: $20 $19

	ld   a, $04                                      ; $6997: $3e $04
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $6999: $ea $62 $c3
	ld   a, $30                                      ; $699c: $3e $30
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $699e: $ea $63 $c3
	ld   a, $02                                      ; $69a1: $3e $02
	ld   b, $00                                      ; $69a3: $06 $00
	ld   hl, wBGPalettes                                   ; $69a5: $21 $de $c2
	ld   c, $01                                      ; $69a8: $0e $01
	ld   de, $7000                                   ; $69aa: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $69ad: $cd $48 $07

jr_00b_69b0:
	ld   hl, $cbf8                                   ; $69b0: $21 $f8 $cb
	ld   a, [hl]                                     ; $69b3: $7e
	inc  [hl]                                        ; $69b4: $34
	ld   bc, $0430                                   ; $69b5: $01 $30 $04
	cp   $03                                         ; $69b8: $fe $03
	jp   c, FadePalettesAndSetRangeToUpdate                                    ; $69ba: $da $32 $08

	ld   a, $01                                      ; $69bd: $3e $01
	ld   hl, $7000                                   ; $69bf: $21 $00 $70
	ld   de, wBGPalettes+1*8                                   ; $69c2: $11 $e6 $c2
	ld   bc, $0060                                   ; $69c5: $01 $60 $00
	call FarMemCopy                                       ; $69c8: $cd $b2 $09
	ld   bc, $0433                                   ; $69cb: $01 $33 $04
	call SetBGandOBJPaletteRangesToUpdate                                       ; $69ce: $cd $aa $04
	push af                                          ; $69d1: $f5
	ld   a, $02                                      ; $69d2: $3e $02
	ld   [wFarCallAddr], a                                  ; $69d4: $ea $98 $c2
	ld   a, $64                                      ; $69d7: $3e $64
	ld   [wFarCallAddr+1], a                                  ; $69d9: $ea $99 $c2
	ld   a, $0b                                      ; $69dc: $3e $0b
	ld   [wFarCallBank], a                                  ; $69de: $ea $9a $c2
	pop  af                                          ; $69e1: $f1
	call FarCall                                       ; $69e2: $cd $62 $09
	ld   a, [wWramBank]                                  ; $69e5: $fa $93 $c2
	push af                                          ; $69e8: $f5
	ld   a, $02                                      ; $69e9: $3e $02
	ld   [wWramBank], a                                  ; $69eb: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $69ee: $e0 $70
	ld   c, $80                                      ; $69f0: $0e $80
	ld   de, $9000                                   ; $69f2: $11 $00 $90
	ld   a, $02                                      ; $69f5: $3e $02
	ld   hl, $7080                                   ; $69f7: $21 $80 $70
	ld   b, $01                                      ; $69fa: $06 $01
	call EnqueueHDMATransfer                                       ; $69fc: $cd $7c $02
	ld   hl, $d000                                   ; $69ff: $21 $00 $d0
	ld   bc, $00a0                                   ; $6a02: $01 $a0 $00
	ld   de, $0303                                   ; $6a05: $11 $03 $03
	call CopyEthenDintoHL_BCtimes                                       ; $6a08: $cd $9f $09
	ld   hl, $d140                                   ; $6a0b: $21 $40 $d1
	ld   bc, $00a0                                   ; $6a0e: $01 $a0 $00
	ld   de, $0000                                   ; $6a11: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $6a14: $cd $9f $09
	ld   c, $80                                      ; $6a17: $0e $80
	ld   de, $9800                                   ; $6a19: $11 $00 $98
	ld   a, $02                                      ; $6a1c: $3e $02
	ld   hl, $d140                                   ; $6a1e: $21 $40 $d1
	ld   b, $14                                      ; $6a21: $06 $14
	call EnqueueHDMATransfer                                       ; $6a23: $cd $7c $02
	ld   c, $81                                      ; $6a26: $0e $81
	ld   de, $9800                                   ; $6a28: $11 $00 $98
	ld   a, $02                                      ; $6a2b: $3e $02
	ld   hl, $d000                                   ; $6a2d: $21 $00 $d0
	ld   b, $14                                      ; $6a30: $06 $14
	call EnqueueHDMATransfer                                       ; $6a32: $cd $7c $02
	pop  af                                          ; $6a35: $f1
	ld   [wWramBank], a                                  ; $6a36: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6a39: $e0 $70
	ld   hl, $cbf7                                   ; $6a3b: $21 $f7 $cb
	inc  [hl]                                        ; $6a3e: $34
	xor  a                                           ; $6a3f: $af
	ld   [$cbf8], a                                  ; $6a40: $ea $f8 $cb
	ret                                              ; $6a43: $c9


	ld   hl, $cbf8                                   ; $6a44: $21 $f8 $cb
	ld   a, [hl]                                     ; $6a47: $7e
	inc  [hl]                                        ; $6a48: $34
	or   a                                           ; $6a49: $b7
	jr   nz, jr_00b_6a71                             ; $6a4a: $20 $25

	call Call_00b_6c70                               ; $6a4c: $cd $70 $6c
	ld   a, h                                        ; $6a4f: $7c
	or   a                                           ; $6a50: $b7
	jr   nz, jr_00b_6a5d                             ; $6a51: $20 $0a

	ld   a, $04                                      ; $6a53: $3e $04
	ld   [$cbf7], a                                  ; $6a55: $ea $f7 $cb
	xor  a                                           ; $6a58: $af
	ld   [$cbf8], a                                  ; $6a59: $ea $f8 $cb
	ret                                              ; $6a5c: $c9


jr_00b_6a5d:
	push af                                          ; $6a5d: $f5
	ld   a, $46                                      ; $6a5e: $3e $46
	ld   [wFarCallAddr], a                                  ; $6a60: $ea $98 $c2
	ld   a, $64                                      ; $6a63: $3e $64
	ld   [wFarCallAddr+1], a                                  ; $6a65: $ea $99 $c2
	ld   a, $0b                                      ; $6a68: $3e $0b
	ld   [wFarCallBank], a                                  ; $6a6a: $ea $9a $c2
	pop  af                                          ; $6a6d: $f1
	call FarCall                                       ; $6a6e: $cd $62 $09

jr_00b_6a71:
	call Call_00b_6c70                               ; $6a71: $cd $70 $6c
	ld   a, [$cbf8]                                  ; $6a74: $fa $f8 $cb
	dec  a                                           ; $6a77: $3d
	push af                                          ; $6a78: $f5
	ld   a, $00                                      ; $6a79: $3e $00
	ld   [wFarCallAddr], a                                  ; $6a7b: $ea $98 $c2
	ld   a, $40                                      ; $6a7e: $3e $40
	ld   [wFarCallAddr+1], a                                  ; $6a80: $ea $99 $c2
	ld   a, $0b                                      ; $6a83: $3e $0b
	ld   [wFarCallBank], a                                  ; $6a85: $ea $9a $c2
	pop  af                                          ; $6a88: $f1
	call FarCall                                       ; $6a89: $cd $62 $09
	or   a                                           ; $6a8c: $b7
	ret  nz                                          ; $6a8d: $c0

	ld   a, [wWramBank]                                  ; $6a8e: $fa $93 $c2
	push af                                          ; $6a91: $f5
	ld   a, $02                                      ; $6a92: $3e $02
	ld   [wWramBank], a                                  ; $6a94: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6a97: $e0 $70
	ld   de, $da30                                   ; $6a99: $11 $30 $da
	ld   hl, $c30e                                   ; $6a9c: $21 $0e $c3
	ld   bc, $0038                                   ; $6a9f: $01 $38 $00
	call MemCopy                                       ; $6aa2: $cd $a9 $09
	ld   hl, $c30e                                   ; $6aa5: $21 $0e $c3
	ld   bc, $001c                                   ; $6aa8: $01 $1c $00
	ld   de, $7fff                                   ; $6aab: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $6aae: $cd $9f $09
	pop  af                                          ; $6ab1: $f1
	ld   [wWramBank], a                                  ; $6ab2: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6ab5: $e0 $70
	ld   hl, $cbf7                                   ; $6ab7: $21 $f7 $cb
	inc  [hl]                                        ; $6aba: $34
	xor  a                                           ; $6abb: $af
	ld   [$cbf8], a                                  ; $6abc: $ea $f8 $cb
	ret                                              ; $6abf: $c9


	ld   a, [$cbf8]                                  ; $6ac0: $fa $f8 $cb
	or   a                                           ; $6ac3: $b7
	jp   nz, Jump_00b_6b3a                           ; $6ac4: $c2 $3a $6b

	push af                                          ; $6ac7: $f5
	ld   a, $1a                                      ; $6ac8: $3e $1a
	ld   [wFarCallAddr], a                                  ; $6aca: $ea $98 $c2
	ld   a, $64                                      ; $6acd: $3e $64
	ld   [wFarCallAddr+1], a                                  ; $6acf: $ea $99 $c2
	ld   a, $0b                                      ; $6ad2: $3e $0b
	ld   [wFarCallBank], a                                  ; $6ad4: $ea $9a $c2
	pop  af                                          ; $6ad7: $f1
	call FarCall                                       ; $6ad8: $cd $62 $09
	call Call_00b_6c70                               ; $6adb: $cd $70 $6c
	push af                                          ; $6ade: $f5
	ld   a, $03                                      ; $6adf: $3e $03
	ld   [wFarCallAddr], a                                  ; $6ae1: $ea $98 $c2
	ld   a, $59                                      ; $6ae4: $3e $59
	ld   [wFarCallAddr+1], a                                  ; $6ae6: $ea $99 $c2
	ld   a, $0b                                      ; $6ae9: $3e $0b
	ld   [wFarCallBank], a                                  ; $6aeb: $ea $9a $c2
	pop  af                                          ; $6aee: $f1
	call FarCall                                       ; $6aef: $cd $62 $09
	ld   c, $80                                      ; $6af2: $0e $80
	ld   de, $9800                                   ; $6af4: $11 $00 $98
	ld   a, $02                                      ; $6af7: $3e $02
	ld   hl, $d140                                   ; $6af9: $21 $40 $d1
	ld   b, $14                                      ; $6afc: $06 $14
	call EnqueueHDMATransfer                                       ; $6afe: $cd $7c $02
	ld   c, $81                                      ; $6b01: $0e $81
	ld   de, $9800                                   ; $6b03: $11 $00 $98
	ld   a, $02                                      ; $6b06: $3e $02
	ld   hl, $d000                                   ; $6b08: $21 $00 $d0
	ld   b, $14                                      ; $6b0b: $06 $14
	call EnqueueHDMATransfer                                       ; $6b0d: $cd $7c $02
	ld   a, [wWramBank]                                  ; $6b10: $fa $93 $c2
	push af                                          ; $6b13: $f5
	ld   a, $02                                      ; $6b14: $3e $02
	ld   [wWramBank], a                                  ; $6b16: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6b19: $e0 $70
	ld   a, $18                                      ; $6b1b: $3e $18
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $6b1d: $ea $62 $c3
	ld   a, $1c                                      ; $6b20: $3e $1c
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $6b22: $ea $63 $c3
	ld   a, $02                                      ; $6b25: $3e $02
	ld   b, $00                                      ; $6b27: $06 $00
	ld   hl, wBGPalettes                                   ; $6b29: $21 $de $c2
	ld   c, $00                                      ; $6b2c: $0e $00
	ld   de, $da00                                   ; $6b2e: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $6b31: $cd $48 $07
	pop  af                                          ; $6b34: $f1
	ld   [wWramBank], a                                  ; $6b35: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6b38: $e0 $70

Jump_00b_6b3a:
	ld   hl, $cbf8                                   ; $6b3a: $21 $f8 $cb
	ld   a, [hl]                                     ; $6b3d: $7e
	inc  [hl]                                        ; $6b3e: $34
	ld   bc, $181c                                   ; $6b3f: $01 $1c $18
	cp   $03                                         ; $6b42: $fe $03
	jp   c, FadePalettesAndSetRangeToUpdate                                    ; $6b44: $da $32 $08

	ld   a, [wWramBank]                                  ; $6b47: $fa $93 $c2
	push af                                          ; $6b4a: $f5
	ld   a, $02                                      ; $6b4b: $3e $02
	ld   [wWramBank], a                                  ; $6b4d: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6b50: $e0 $70
	xor  a                                           ; $6b52: $af
	ld   hl, $da30                                   ; $6b53: $21 $30 $da
	ld   de, $c30e                                   ; $6b56: $11 $0e $c3
	ld   bc, $0038                                   ; $6b59: $01 $38 $00
	call FarMemCopy                                       ; $6b5c: $cd $b2 $09
	ld   bc, $1833                                   ; $6b5f: $01 $33 $18
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6b62: $cd $aa $04
	pop  af                                          ; $6b65: $f1
	ld   [wWramBank], a                                  ; $6b66: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6b69: $e0 $70
	ld   hl, $cbf7                                   ; $6b6b: $21 $f7 $cb
	inc  [hl]                                        ; $6b6e: $34
	xor  a                                           ; $6b6f: $af
	ld   [$cbf8], a                                  ; $6b70: $ea $f8 $cb
	ret                                              ; $6b73: $c9


	ld   a, [wWramBank]                                  ; $6b74: $fa $93 $c2
	push af                                          ; $6b77: $f5
	ld   a, $06                                      ; $6b78: $3e $06
	ld   [wWramBank], a                                  ; $6b7a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6b7d: $e0 $70
	call Call_00b_6c70                               ; $6b7f: $cd $70 $6c
	ld   bc, $d000                                   ; $6b82: $01 $00 $d0
	add  hl, bc                                      ; $6b85: $09
	ld   a, [hl]                                     ; $6b86: $7e
	ld   c, a                                        ; $6b87: $4f
	ld   a, [$cbf9]                                  ; $6b88: $fa $f9 $cb
	and  $f0                                         ; $6b8b: $e6 $f0
	swap a                                           ; $6b8d: $cb $37
	ld   b, a                                        ; $6b8f: $47
	push af                                          ; $6b90: $f5
	ld   a, $ba                                      ; $6b91: $3e $ba
	ld   [wFarCallAddr], a                                  ; $6b93: $ea $98 $c2
	ld   a, $54                                      ; $6b96: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $6b98: $ea $99 $c2
	ld   a, $0a                                      ; $6b9b: $3e $0a
	ld   [wFarCallBank], a                                  ; $6b9d: $ea $9a $c2
	pop  af                                          ; $6ba0: $f1
	call FarCall                                       ; $6ba1: $cd $62 $09
	pop  af                                          ; $6ba4: $f1
	ld   [wWramBank], a                                  ; $6ba5: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6ba8: $e0 $70
	ld   hl, $cbf7                                   ; $6baa: $21 $f7 $cb
	inc  [hl]                                        ; $6bad: $34
	xor  a                                           ; $6bae: $af
	ld   [$cbf8], a                                  ; $6baf: $ea $f8 $cb
	ret                                              ; $6bb2: $c9


	call Call_00b_6c70                               ; $6bb3: $cd $70 $6c
	ld   a, h                                        ; $6bb6: $7c
	or   l                                           ; $6bb7: $b5
	jr   z, jr_00b_6bd7                              ; $6bb8: $28 $1d

	ld   a, [wInGameButtonsHeld]                                  ; $6bba: $fa $0f $c2
	sla  a                                           ; $6bbd: $cb $27
	and  $03                                         ; $6bbf: $e6 $03
	set  0, a                                        ; $6bc1: $cb $c7
	push af                                          ; $6bc3: $f5
	ld   a, $3b                                      ; $6bc4: $3e $3b
	ld   [wFarCallAddr], a                                  ; $6bc6: $ea $98 $c2
	ld   a, $65                                      ; $6bc9: $3e $65
	ld   [wFarCallAddr+1], a                                  ; $6bcb: $ea $99 $c2
	ld   a, $0b                                      ; $6bce: $3e $0b
	ld   [wFarCallBank], a                                  ; $6bd0: $ea $9a $c2
	pop  af                                          ; $6bd3: $f1
	call FarCall                                       ; $6bd4: $cd $62 $09

jr_00b_6bd7:
	ld   a, [wInGameButtonsPressed]                                  ; $6bd7: $fa $10 $c2
	bit  1, a                                        ; $6bda: $cb $4f
	jr   z, jr_00b_6be8                              ; $6bdc: $28 $0a

	ld   a, GS_TITLE_SCREEN                                      ; $6bde: $3e $36
	ld   [wGameState], a                                  ; $6be0: $ea $a0 $c2
	xor  a                                           ; $6be3: $af
	ld   [wGameSubstate], a                                  ; $6be4: $ea $a1 $c2
	ret                                              ; $6be7: $c9


jr_00b_6be8:
	bit  2, a                                        ; $6be8: $cb $57
	jr   z, jr_00b_6bf6                              ; $6bea: $28 $0a

	ld   a, $06                                      ; $6bec: $3e $06
	ld   [$cbf7], a                                  ; $6bee: $ea $f7 $cb
	xor  a                                           ; $6bf1: $af
	ld   [$cbf8], a                                  ; $6bf2: $ea $f8 $cb
	ret                                              ; $6bf5: $c9


jr_00b_6bf6:
	ld   a, [wWramBank]                                  ; $6bf6: $fa $93 $c2
	push af                                          ; $6bf9: $f5
	ld   a, $06                                      ; $6bfa: $3e $06
	ld   [wWramBank], a                                  ; $6bfc: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6bff: $e0 $70
	ld   a, [wInGameButtonsHeld]                                  ; $6c01: $fa $0f $c2
	bit  5, a                                        ; $6c04: $cb $6f
	jr   z, jr_00b_6c1e                              ; $6c06: $28 $16

jr_00b_6c08:
	ld   a, [$cbfa]                                  ; $6c08: $fa $fa $cb
	dec  a                                           ; $6c0b: $3d
	and  $0f                                         ; $6c0c: $e6 $0f
	ld   [$cbfa], a                                  ; $6c0e: $ea $fa $cb
	call Call_00b_6c70                               ; $6c11: $cd $70 $6c
	ld   bc, $d000                                   ; $6c14: $01 $00 $d0
	add  hl, bc                                      ; $6c17: $09
	bit  7, [hl]                                     ; $6c18: $cb $7e
	jr   nz, jr_00b_6c08                             ; $6c1a: $20 $ec

	jr   jr_00b_6c60                                 ; $6c1c: $18 $42

jr_00b_6c1e:
	bit  4, a                                        ; $6c1e: $cb $67
	jr   z, jr_00b_6c38                              ; $6c20: $28 $16

jr_00b_6c22:
	ld   a, [$cbfa]                                  ; $6c22: $fa $fa $cb
	inc  a                                           ; $6c25: $3c
	and  $0f                                         ; $6c26: $e6 $0f
	ld   [$cbfa], a                                  ; $6c28: $ea $fa $cb
	call Call_00b_6c70                               ; $6c2b: $cd $70 $6c
	ld   bc, $d000                                   ; $6c2e: $01 $00 $d0
	add  hl, bc                                      ; $6c31: $09
	bit  7, [hl]                                     ; $6c32: $cb $7e
	jr   nz, jr_00b_6c22                             ; $6c34: $20 $ec

	jr   jr_00b_6c60                                 ; $6c36: $18 $28

jr_00b_6c38:
	bit  6, a                                        ; $6c38: $cb $77
	jr   z, jr_00b_6c4d                              ; $6c3a: $28 $11

jr_00b_6c3c:
	ld   hl, $cbf9                                   ; $6c3c: $21 $f9 $cb
	dec  [hl]                                        ; $6c3f: $35
	call Call_00b_6c70                               ; $6c40: $cd $70 $6c
	ld   bc, $d000                                   ; $6c43: $01 $00 $d0
	add  hl, bc                                      ; $6c46: $09
	bit  7, [hl]                                     ; $6c47: $cb $7e
	jr   nz, jr_00b_6c3c                             ; $6c49: $20 $f1

	jr   jr_00b_6c60                                 ; $6c4b: $18 $13

jr_00b_6c4d:
	bit  7, a                                        ; $6c4d: $cb $7f
	jr   z, jr_00b_6c69                              ; $6c4f: $28 $18

jr_00b_6c51:
	ld   hl, $cbf9                                   ; $6c51: $21 $f9 $cb
	inc  [hl]                                        ; $6c54: $34
	call Call_00b_6c70                               ; $6c55: $cd $70 $6c
	ld   bc, $d000                                   ; $6c58: $01 $00 $d0
	add  hl, bc                                      ; $6c5b: $09
	bit  7, [hl]                                     ; $6c5c: $cb $7e
	jr   nz, jr_00b_6c51                             ; $6c5e: $20 $f1

jr_00b_6c60:
	ld   a, $01                                      ; $6c60: $3e $01
	ld   [$cbf7], a                                  ; $6c62: $ea $f7 $cb
	xor  a                                           ; $6c65: $af
	ld   [$cbf8], a                                  ; $6c66: $ea $f8 $cb

jr_00b_6c69:
	pop  af                                          ; $6c69: $f1
	ld   [wWramBank], a                                  ; $6c6a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6c6d: $e0 $70
	ret                                              ; $6c6f: $c9


Call_00b_6c70:
	ld   a, [$cbf9]                                  ; $6c70: $fa $f9 $cb
	swap a                                           ; $6c73: $cb $37
	and  $0f                                         ; $6c75: $e6 $0f
	ld   h, a                                        ; $6c77: $67
	ld   a, [$cbf9]                                  ; $6c78: $fa $f9 $cb
	swap a                                           ; $6c7b: $cb $37
	and  $f0                                         ; $6c7d: $e6 $f0
	ld   l, a                                        ; $6c7f: $6f
	ld   a, [$cbfa]                                  ; $6c80: $fa $fa $cb
	or   l                                           ; $6c83: $b5
	ld   l, a                                        ; $6c84: $6f
	ret                                              ; $6c85: $c9


	ld   hl, $cbf7                                   ; $6c86: $21 $f7 $cb
	inc  [hl]                                        ; $6c89: $34
	xor  a                                           ; $6c8a: $af
	ld   [$cbf8], a                                  ; $6c8b: $ea $f8 $cb
	ret                                              ; $6c8e: $c9


	ld   a, [$cbf8]                                  ; $6c8f: $fa $f8 $cb
	or   a                                           ; $6c92: $b7
	jr   nz, jr_00b_6cae                             ; $6c93: $20 $19

	ld   a, $04                                      ; $6c95: $3e $04
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $6c97: $ea $62 $c3
	ld   a, $30                                      ; $6c9a: $3e $30
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $6c9c: $ea $63 $c3
	ld   a, $02                                      ; $6c9f: $3e $02
	ld   b, $00                                      ; $6ca1: $06 $00
	ld   hl, wBGPalettes                                   ; $6ca3: $21 $de $c2
	ld   c, $01                                      ; $6ca6: $0e $01
	ld   de, $7000                                   ; $6ca8: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $6cab: $cd $48 $07

jr_00b_6cae:
	ld   hl, $cbf8                                   ; $6cae: $21 $f8 $cb
	ld   a, [hl]                                     ; $6cb1: $7e
	inc  [hl]                                        ; $6cb2: $34
	ld   bc, $0430                                   ; $6cb3: $01 $30 $04
	cp   $03                                         ; $6cb6: $fe $03
	jp   c, FadePalettesAndSetRangeToUpdate                                    ; $6cb8: $da $32 $08

	ld   a, $01                                      ; $6cbb: $3e $01
	ld   hl, $7000                                   ; $6cbd: $21 $00 $70
	ld   de, wBGPalettes+1*8                                   ; $6cc0: $11 $e6 $c2
	ld   bc, $0060                                   ; $6cc3: $01 $60 $00
	call FarMemCopy                                       ; $6cc6: $cd $b2 $09
	ld   bc, $0433                                   ; $6cc9: $01 $33 $04
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6ccc: $cd $aa $04
	push af                                          ; $6ccf: $f5
	ld   a, $02                                      ; $6cd0: $3e $02
	ld   [wFarCallAddr], a                                  ; $6cd2: $ea $98 $c2
	ld   a, $64                                      ; $6cd5: $3e $64
	ld   [wFarCallAddr+1], a                                  ; $6cd7: $ea $99 $c2
	ld   a, $0b                                      ; $6cda: $3e $0b
	ld   [wFarCallBank], a                                  ; $6cdc: $ea $9a $c2
	pop  af                                          ; $6cdf: $f1
	call FarCall                                       ; $6ce0: $cd $62 $09
	ld   hl, $cbf7                                   ; $6ce3: $21 $f7 $cb
	inc  [hl]                                        ; $6ce6: $34
	xor  a                                           ; $6ce7: $af
	ld   [$cbf8], a                                  ; $6ce8: $ea $f8 $cb
	ret                                              ; $6ceb: $c9


	ld   hl, $cbf8                                   ; $6cec: $21 $f8 $cb
	ld   a, [hl]                                     ; $6cef: $7e
	inc  [hl]                                        ; $6cf0: $34
	or   a                                           ; $6cf1: $b7
	jr   nz, jr_00b_6d22                             ; $6cf2: $20 $2e

	ld   a, [$cbfb]                                  ; $6cf4: $fa $fb $cb
	push af                                          ; $6cf7: $f5
	ld   a, $cd                                      ; $6cf8: $3e $cd
	ld   [wFarCallAddr], a                                  ; $6cfa: $ea $98 $c2
	ld   a, $66                                      ; $6cfd: $3e $66
	ld   [wFarCallAddr+1], a                                  ; $6cff: $ea $99 $c2
	ld   a, $0b                                      ; $6d02: $3e $0b
	ld   [wFarCallBank], a                                  ; $6d04: $ea $9a $c2
	pop  af                                          ; $6d07: $f1
	call FarCall                                       ; $6d08: $cd $62 $09
	ld   [$cbfc], a                                  ; $6d0b: $ea $fc $cb
	push af                                          ; $6d0e: $f5
	ld   a, $1a                                      ; $6d0f: $3e $1a
	ld   [wFarCallAddr], a                                  ; $6d11: $ea $98 $c2
	ld   a, $64                                      ; $6d14: $3e $64
	ld   [wFarCallAddr+1], a                                  ; $6d16: $ea $99 $c2
	ld   a, $0b                                      ; $6d19: $3e $0b
	ld   [wFarCallBank], a                                  ; $6d1b: $ea $9a $c2
	pop  af                                          ; $6d1e: $f1
	call FarCall                                       ; $6d1f: $cd $62 $09

jr_00b_6d22:
	ld   a, [$cbf8]                                  ; $6d22: $fa $f8 $cb
	dec  a                                           ; $6d25: $3d
	ld   h, a                                        ; $6d26: $67
	ld   a, [$cbfb]                                  ; $6d27: $fa $fb $cb
	ld   l, a                                        ; $6d2a: $6f
	push af                                          ; $6d2b: $f5
	ld   a, $70                                      ; $6d2c: $3e $70
	ld   [wFarCallAddr], a                                  ; $6d2e: $ea $98 $c2
	ld   a, $59                                      ; $6d31: $3e $59
	ld   [wFarCallAddr+1], a                                  ; $6d33: $ea $99 $c2
	ld   a, $0b                                      ; $6d36: $3e $0b
	ld   [wFarCallBank], a                                  ; $6d38: $ea $9a $c2
	pop  af                                          ; $6d3b: $f1
	call FarCall                                       ; $6d3c: $cd $62 $09
	bit  7, a                                        ; $6d3f: $cb $7f
	ret  nz                                          ; $6d41: $c0

	ld   [$cbfd], a                                  ; $6d42: $ea $fd $cb
	ld   a, [wWramBank]                                  ; $6d45: $fa $93 $c2
	push af                                          ; $6d48: $f5
	ld   a, $02                                      ; $6d49: $3e $02
	ld   [wWramBank], a                                  ; $6d4b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6d4e: $e0 $70
	ld   de, $da08                                   ; $6d50: $11 $08 $da
	ld   hl, wBGPalettes+1*8                                   ; $6d53: $21 $e6 $c2
	ld   bc, $0060                                   ; $6d56: $01 $60 $00
	call MemCopy                                       ; $6d59: $cd $a9 $09
	ld   hl, wBGPalettes+1*8                                   ; $6d5c: $21 $e6 $c2
	ld   bc, $0030                                   ; $6d5f: $01 $30 $00
	ld   de, $7fff                                   ; $6d62: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $6d65: $cd $9f $09
	pop  af                                          ; $6d68: $f1
	ld   [wWramBank], a                                  ; $6d69: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6d6c: $e0 $70
	ld   hl, $cbf7                                   ; $6d6e: $21 $f7 $cb
	inc  [hl]                                        ; $6d71: $34
	xor  a                                           ; $6d72: $af
	ld   [$cbf8], a                                  ; $6d73: $ea $f8 $cb
	ret                                              ; $6d76: $c9


	ld   a, [$cbf8]                                  ; $6d77: $fa $f8 $cb
	or   a                                           ; $6d7a: $b7
	jp   nz, Jump_00b_6da8                           ; $6d7b: $c2 $a8 $6d

	ld   a, [wWramBank]                                  ; $6d7e: $fa $93 $c2
	push af                                          ; $6d81: $f5
	ld   a, $02                                      ; $6d82: $3e $02
	ld   [wWramBank], a                                  ; $6d84: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6d87: $e0 $70
	ld   a, $0c                                      ; $6d89: $3e $0c
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $6d8b: $ea $62 $c3
	ld   a, $28                                      ; $6d8e: $3e $28
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $6d90: $ea $63 $c3
	ld   a, $02                                      ; $6d93: $3e $02
	ld   b, $00                                      ; $6d95: $06 $00
	ld   hl, wBGPalettes                                   ; $6d97: $21 $de $c2
	ld   c, $00                                      ; $6d9a: $0e $00
	ld   de, $da00                                   ; $6d9c: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $6d9f: $cd $48 $07
	pop  af                                          ; $6da2: $f1
	ld   [wWramBank], a                                  ; $6da3: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6da6: $e0 $70

Jump_00b_6da8:
	ld   hl, $cbf8                                   ; $6da8: $21 $f8 $cb
	ld   a, [hl]                                     ; $6dab: $7e
	inc  [hl]                                        ; $6dac: $34
	ld   bc, $0c28                                   ; $6dad: $01 $28 $0c
	cp   $03                                         ; $6db0: $fe $03
	jp   c, FadePalettesAndSetRangeToUpdate                                    ; $6db2: $da $32 $08

	ld   a, [wWramBank]                                  ; $6db5: $fa $93 $c2
	push af                                          ; $6db8: $f5
	ld   a, $02                                      ; $6db9: $3e $02
	ld   [wWramBank], a                                  ; $6dbb: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6dbe: $e0 $70
	xor  a                                           ; $6dc0: $af
	ld   hl, $da18                                   ; $6dc1: $21 $18 $da
	ld   de, wBGPalettes+3*8                                   ; $6dc4: $11 $f6 $c2
	ld   bc, $0050                                   ; $6dc7: $01 $50 $00
	call FarMemCopy                                       ; $6dca: $cd $b2 $09
	ld   bc, $0c33                                   ; $6dcd: $01 $33 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6dd0: $cd $aa $04
	pop  af                                          ; $6dd3: $f1
	ld   [wWramBank], a                                  ; $6dd4: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6dd7: $e0 $70
	ld   hl, $cbf7                                   ; $6dd9: $21 $f7 $cb
	inc  [hl]                                        ; $6ddc: $34
	xor  a                                           ; $6ddd: $af
	ld   [$cbf8], a                                  ; $6dde: $ea $f8 $cb
	ret                                              ; $6de1: $c9


	ld   a, [$cbfd]                                  ; $6de2: $fa $fd $cb
	and  $0f                                         ; $6de5: $e6 $0f
	ld   b, a                                        ; $6de7: $47
	ld   c, $00                                      ; $6de8: $0e $00
	push af                                          ; $6dea: $f5
	ld   a, $ba                                      ; $6deb: $3e $ba
	ld   [wFarCallAddr], a                                  ; $6ded: $ea $98 $c2
	ld   a, $54                                      ; $6df0: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $6df2: $ea $99 $c2
	ld   a, $0a                                      ; $6df5: $3e $0a
	ld   [wFarCallBank], a                                  ; $6df7: $ea $9a $c2
	pop  af                                          ; $6dfa: $f1
	call FarCall                                       ; $6dfb: $cd $62 $09
	ld   hl, $cbf7                                   ; $6dfe: $21 $f7 $cb
	inc  [hl]                                        ; $6e01: $34
	xor  a                                           ; $6e02: $af
	ld   [$cbf8], a                                  ; $6e03: $ea $f8 $cb
	ret                                              ; $6e06: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $6e07: $fa $10 $c2
	bit  1, a                                        ; $6e0a: $cb $4f
	jr   z, jr_00b_6e18                              ; $6e0c: $28 $0a

	ld   a, GS_TITLE_SCREEN                                      ; $6e0e: $3e $36
	ld   [wGameState], a                                  ; $6e10: $ea $a0 $c2
	xor  a                                           ; $6e13: $af
	ld   [wGameSubstate], a                                  ; $6e14: $ea $a1 $c2
	ret                                              ; $6e17: $c9


jr_00b_6e18:
	bit  2, a                                        ; $6e18: $cb $57
	jr   z, jr_00b_6e26                              ; $6e1a: $28 $0a

	ld   a, $0c                                      ; $6e1c: $3e $0c
	ld   [$cbf7], a                                  ; $6e1e: $ea $f7 $cb
	xor  a                                           ; $6e21: $af
	ld   [$cbf8], a                                  ; $6e22: $ea $f8 $cb
	ret                                              ; $6e25: $c9


jr_00b_6e26:
	ld   a, [$cbfc]                                  ; $6e26: $fa $fc $cb
	or   a                                           ; $6e29: $b7
	jr   z, jr_00b_6e4e                              ; $6e2a: $28 $22

	ld   a, [$cbfb]                                  ; $6e2c: $fa $fb $cb
	ld   h, a                                        ; $6e2f: $67
	ld   a, [wInGameButtonsHeld]                                  ; $6e30: $fa $0f $c2
	sla  a                                           ; $6e33: $cb $27
	and  $03                                         ; $6e35: $e6 $03
	set  0, a                                        ; $6e37: $cb $c7
	ld   l, a                                        ; $6e39: $6f
	push af                                          ; $6e3a: $f5
	ld   a, $33                                      ; $6e3b: $3e $33
	ld   [wFarCallAddr], a                                  ; $6e3d: $ea $98 $c2
	ld   a, $68                                      ; $6e40: $3e $68
	ld   [wFarCallAddr+1], a                                  ; $6e42: $ea $99 $c2
	ld   a, $0b                                      ; $6e45: $3e $0b
	ld   [wFarCallBank], a                                  ; $6e47: $ea $9a $c2
	pop  af                                          ; $6e4a: $f1
	call FarCall                                       ; $6e4b: $cd $62 $09

jr_00b_6e4e:
	ld   a, [wInGameButtonsHeld]                                  ; $6e4e: $fa $0f $c2
	bit  5, a                                        ; $6e51: $cb $6f
	jr   z, jr_00b_6e62                              ; $6e53: $28 $0d

	ld   hl, $cbfb                                   ; $6e55: $21 $fb $cb
	dec  [hl]                                        ; $6e58: $35
	ld   a, [hl]                                     ; $6e59: $7e
	or   a                                           ; $6e5a: $b7
	jr   nz, jr_00b_6e74                             ; $6e5b: $20 $17

	ld   a, $0a                                      ; $6e5d: $3e $0a
	ld   [hl], a                                     ; $6e5f: $77
	jr   jr_00b_6e74                                 ; $6e60: $18 $12

jr_00b_6e62:
	ld   a, [wInGameButtonsHeld]                                  ; $6e62: $fa $0f $c2
	bit  4, a                                        ; $6e65: $cb $67
	ret  z                                           ; $6e67: $c8

	ld   hl, $cbfb                                   ; $6e68: $21 $fb $cb
	inc  [hl]                                        ; $6e6b: $34
	ld   a, [hl]                                     ; $6e6c: $7e
	cp   $0b                                         ; $6e6d: $fe $0b
	jr   c, jr_00b_6e74                              ; $6e6f: $38 $03

	ld   a, $01                                      ; $6e71: $3e $01
	ld   [hl], a                                     ; $6e73: $77

jr_00b_6e74:
	ld   a, $07                                      ; $6e74: $3e $07
	ld   [$cbf7], a                                  ; $6e76: $ea $f7 $cb
	xor  a                                           ; $6e79: $af
	ld   [$cbf8], a                                  ; $6e7a: $ea $f8 $cb
	ret                                              ; $6e7d: $c9


	ld   hl, $cbf7                                   ; $6e7e: $21 $f7 $cb
	inc  [hl]                                        ; $6e81: $34
	xor  a                                           ; $6e82: $af
	ld   [$cbf8], a                                  ; $6e83: $ea $f8 $cb
	ret                                              ; $6e86: $c9


	ld   a, [$cbf8]                                  ; $6e87: $fa $f8 $cb
	or   a                                           ; $6e8a: $b7
	jr   nz, jr_00b_6ea6                             ; $6e8b: $20 $19

	ld   a, $04                                      ; $6e8d: $3e $04
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $6e8f: $ea $62 $c3
	ld   a, $30                                      ; $6e92: $3e $30
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $6e94: $ea $63 $c3
	ld   a, $02                                      ; $6e97: $3e $02
	ld   b, $00                                      ; $6e99: $06 $00
	ld   hl, wBGPalettes                                   ; $6e9b: $21 $de $c2
	ld   c, $01                                      ; $6e9e: $0e $01
	ld   de, $7000                                   ; $6ea0: $11 $00 $70
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $6ea3: $cd $48 $07

jr_00b_6ea6:
	ld   hl, $cbf8                                   ; $6ea6: $21 $f8 $cb
	ld   a, [hl]                                     ; $6ea9: $7e
	inc  [hl]                                        ; $6eaa: $34
	ld   bc, $0430                                   ; $6eab: $01 $30 $04
	cp   $03                                         ; $6eae: $fe $03
	jp   c, FadePalettesAndSetRangeToUpdate                                    ; $6eb0: $da $32 $08

	ld   a, $01                                      ; $6eb3: $3e $01
	ld   hl, $7000                                   ; $6eb5: $21 $00 $70
	ld   de, wBGPalettes+1*8                                   ; $6eb8: $11 $e6 $c2
	ld   bc, $0060                                   ; $6ebb: $01 $60 $00
	call FarMemCopy                                       ; $6ebe: $cd $b2 $09
	ld   bc, $0433                                   ; $6ec1: $01 $33 $04
	call SetBGandOBJPaletteRangesToUpdate                                       ; $6ec4: $cd $aa $04
	push af                                          ; $6ec7: $f5
	ld   a, $02                                      ; $6ec8: $3e $02
	ld   [wFarCallAddr], a                                  ; $6eca: $ea $98 $c2
	ld   a, $64                                      ; $6ecd: $3e $64
	ld   [wFarCallAddr+1], a                                  ; $6ecf: $ea $99 $c2
	ld   a, $0b                                      ; $6ed2: $3e $0b
	ld   [wFarCallBank], a                                  ; $6ed4: $ea $9a $c2
	pop  af                                          ; $6ed7: $f1
	call FarCall                                       ; $6ed8: $cd $62 $09
	ld   a, [wWramBank]                                  ; $6edb: $fa $93 $c2
	push af                                          ; $6ede: $f5
	ld   a, $02                                      ; $6edf: $3e $02
	ld   [wWramBank], a                                  ; $6ee1: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6ee4: $e0 $70
	ld   c, $80                                      ; $6ee6: $0e $80
	ld   de, $9000                                   ; $6ee8: $11 $00 $90
	ld   a, $02                                      ; $6eeb: $3e $02
	ld   hl, $7080                                   ; $6eed: $21 $80 $70
	ld   b, $01                                      ; $6ef0: $06 $01
	call EnqueueHDMATransfer                                       ; $6ef2: $cd $7c $02
	ld   hl, $d000                                   ; $6ef5: $21 $00 $d0
	ld   bc, $00a0                                   ; $6ef8: $01 $a0 $00
	ld   de, $0303                                   ; $6efb: $11 $03 $03
	call CopyEthenDintoHL_BCtimes                                       ; $6efe: $cd $9f $09
	ld   hl, $d140                                   ; $6f01: $21 $40 $d1
	ld   bc, $00a0                                   ; $6f04: $01 $a0 $00
	ld   de, $0000                                   ; $6f07: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $6f0a: $cd $9f $09
	ld   c, $80                                      ; $6f0d: $0e $80
	ld   de, $9800                                   ; $6f0f: $11 $00 $98
	ld   a, $02                                      ; $6f12: $3e $02
	ld   hl, $d140                                   ; $6f14: $21 $40 $d1
	ld   b, $14                                      ; $6f17: $06 $14
	call EnqueueHDMATransfer                                       ; $6f19: $cd $7c $02
	ld   c, $81                                      ; $6f1c: $0e $81
	ld   de, $9800                                   ; $6f1e: $11 $00 $98
	ld   a, $02                                      ; $6f21: $3e $02
	ld   hl, $d000                                   ; $6f23: $21 $00 $d0
	ld   b, $14                                      ; $6f26: $06 $14
	call EnqueueHDMATransfer                                       ; $6f28: $cd $7c $02
	pop  af                                          ; $6f2b: $f1
	ld   [wWramBank], a                                  ; $6f2c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6f2f: $e0 $70
	ld   hl, $cbf7                                   ; $6f31: $21 $f7 $cb
	inc  [hl]                                        ; $6f34: $34
	xor  a                                           ; $6f35: $af
	ld   [$cbf8], a                                  ; $6f36: $ea $f8 $cb
	ret                                              ; $6f39: $c9


	ld   hl, $cbf8                                   ; $6f3a: $21 $f8 $cb
	ld   a, [hl]                                     ; $6f3d: $7e
	inc  [hl]                                        ; $6f3e: $34
	or   a                                           ; $6f3f: $b7
	jr   nz, jr_00b_6f5c                             ; $6f40: $20 $1a

	ld   a, [$cbfe]                                  ; $6f42: $fa $fe $cb
	push af                                          ; $6f45: $f5
	ld   a, $9c                                      ; $6f46: $3e $9c
	ld   [wFarCallAddr], a                                  ; $6f48: $ea $98 $c2
	ld   a, $61                                      ; $6f4b: $3e $61
	ld   [wFarCallAddr+1], a                                  ; $6f4d: $ea $99 $c2
	ld   a, $0b                                      ; $6f50: $3e $0b
	ld   [wFarCallBank], a                                  ; $6f52: $ea $9a $c2
	pop  af                                          ; $6f55: $f1
	call FarCall                                       ; $6f56: $cd $62 $09
	ld   [$cbff], a                                  ; $6f59: $ea $ff $cb

jr_00b_6f5c:
	ld   a, [$cbf8]                                  ; $6f5c: $fa $f8 $cb
	dec  a                                           ; $6f5f: $3d
	ld   h, a                                        ; $6f60: $67
	ld   a, [$cbfe]                                  ; $6f61: $fa $fe $cb
	ld   l, a                                        ; $6f64: $6f
	push af                                          ; $6f65: $f5
	ld   a, $6c                                      ; $6f66: $3e $6c
	ld   [wFarCallAddr], a                                  ; $6f68: $ea $98 $c2
	ld   a, $5c                                      ; $6f6b: $3e $5c
	ld   [wFarCallAddr+1], a                                  ; $6f6d: $ea $99 $c2
	ld   a, $0b                                      ; $6f70: $3e $0b
	ld   [wFarCallBank], a                                  ; $6f72: $ea $9a $c2
	pop  af                                          ; $6f75: $f1
	call FarCall                                       ; $6f76: $cd $62 $09
	bit  7, a                                        ; $6f79: $cb $7f
	ret  nz                                          ; $6f7b: $c0

	ld   a, l                                        ; $6f7c: $7d
	ld   [$cc00], a                                  ; $6f7d: $ea $00 $cc
	ld   a, h                                        ; $6f80: $7c
	ld   [$cc01], a                                  ; $6f81: $ea $01 $cc
	ld   a, [wWramBank]                                  ; $6f84: $fa $93 $c2
	push af                                          ; $6f87: $f5
	ld   a, $02                                      ; $6f88: $3e $02
	ld   [wWramBank], a                                  ; $6f8a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6f8d: $e0 $70
	ld   de, $da30                                   ; $6f8f: $11 $30 $da
	ld   hl, $c30e                                   ; $6f92: $21 $0e $c3
	ld   bc, $0038                                   ; $6f95: $01 $38 $00
	call MemCopy                                       ; $6f98: $cd $a9 $09
	ld   hl, $c30e                                   ; $6f9b: $21 $0e $c3
	ld   bc, $001c                                   ; $6f9e: $01 $1c $00
	ld   de, $7fff                                   ; $6fa1: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $6fa4: $cd $9f $09
	pop  af                                          ; $6fa7: $f1
	ld   [wWramBank], a                                  ; $6fa8: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6fab: $e0 $70
	ld   hl, $cbf7                                   ; $6fad: $21 $f7 $cb
	inc  [hl]                                        ; $6fb0: $34
	xor  a                                           ; $6fb1: $af
	ld   [$cbf8], a                                  ; $6fb2: $ea $f8 $cb
	ret                                              ; $6fb5: $c9


	ld   hl, $cbf8                                   ; $6fb6: $21 $f8 $cb
	ld   a, [hl]                                     ; $6fb9: $7e
	inc  [hl]                                        ; $6fba: $34
	ld   b, a                                        ; $6fbb: $47
	ld   hl, $cc00                                   ; $6fbc: $21 $00 $cc
	ld   a, [hl+]                                    ; $6fbf: $2a
	ld   h, [hl]                                     ; $6fc0: $66
	ld   l, a                                        ; $6fc1: $6f
	ld   a, b                                        ; $6fc2: $78
	push af                                          ; $6fc3: $f5
	ld   a, $97                                      ; $6fc4: $3e $97
	ld   [wFarCallAddr], a                                  ; $6fc6: $ea $98 $c2
	ld   a, $49                                      ; $6fc9: $3e $49
	ld   [wFarCallAddr+1], a                                  ; $6fcb: $ea $99 $c2
	ld   a, $0a                                      ; $6fce: $3e $0a
	ld   [wFarCallBank], a                                  ; $6fd0: $ea $9a $c2
	pop  af                                          ; $6fd3: $f1
	call FarCall                                       ; $6fd4: $cd $62 $09
	or   a                                           ; $6fd7: $b7
	ret  nz                                          ; $6fd8: $c0

	ld   a, [wWramBank]                                  ; $6fd9: $fa $93 $c2
	push af                                          ; $6fdc: $f5
	ld   a, $02                                      ; $6fdd: $3e $02
	ld   [wWramBank], a                                  ; $6fdf: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $6fe2: $e0 $70
	ld   de, $da18                                   ; $6fe4: $11 $18 $da
	ld   hl, wBGPalettes+3*8                                   ; $6fe7: $21 $f6 $c2
	ld   bc, $0018                                   ; $6fea: $01 $18 $00
	call MemCopy                                       ; $6fed: $cd $a9 $09
	ld   hl, wBGPalettes+3*8                                   ; $6ff0: $21 $f6 $c2
	ld   bc, $000c                                   ; $6ff3: $01 $0c $00
	ld   de, $7fff                                   ; $6ff6: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $6ff9: $cd $9f $09
	pop  af                                          ; $6ffc: $f1
	ld   [wWramBank], a                                  ; $6ffd: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7000: $e0 $70
	ld   hl, $cbf7                                   ; $7002: $21 $f7 $cb
	inc  [hl]                                        ; $7005: $34
	xor  a                                           ; $7006: $af
	ld   [$cbf8], a                                  ; $7007: $ea $f8 $cb
	ret                                              ; $700a: $c9


	ld   a, [$cbf8]                                  ; $700b: $fa $f8 $cb
	or   a                                           ; $700e: $b7
	jp   nz, Jump_00b_7088                           ; $700f: $c2 $88 $70

	push af                                          ; $7012: $f5
	ld   a, $1a                                      ; $7013: $3e $1a
	ld   [wFarCallAddr], a                                  ; $7015: $ea $98 $c2
	ld   a, $64                                      ; $7018: $3e $64
	ld   [wFarCallAddr+1], a                                  ; $701a: $ea $99 $c2
	ld   a, $0b                                      ; $701d: $3e $0b
	ld   [wFarCallBank], a                                  ; $701f: $ea $9a $c2
	pop  af                                          ; $7022: $f1
	call FarCall                                       ; $7023: $cd $62 $09
	ld   h, $00                                      ; $7026: $26 $00
	ld   a, [$cbfe]                                  ; $7028: $fa $fe $cb
	ld   l, a                                        ; $702b: $6f
	push af                                          ; $702c: $f5
	ld   a, $82                                      ; $702d: $3e $82
	ld   [wFarCallAddr], a                                  ; $702f: $ea $98 $c2
	ld   a, $61                                      ; $7032: $3e $61
	ld   [wFarCallAddr+1], a                                  ; $7034: $ea $99 $c2
	ld   a, $0b                                      ; $7037: $3e $0b
	ld   [wFarCallBank], a                                  ; $7039: $ea $9a $c2
	pop  af                                          ; $703c: $f1
	call FarCall                                       ; $703d: $cd $62 $09
	ld   c, $80                                      ; $7040: $0e $80
	ld   de, $9800                                   ; $7042: $11 $00 $98
	ld   a, $02                                      ; $7045: $3e $02
	ld   hl, $d140                                   ; $7047: $21 $40 $d1
	ld   b, $14                                      ; $704a: $06 $14
	call EnqueueHDMATransfer                                       ; $704c: $cd $7c $02
	ld   c, $81                                      ; $704f: $0e $81
	ld   de, $9800                                   ; $7051: $11 $00 $98
	ld   a, $02                                      ; $7054: $3e $02
	ld   hl, $d000                                   ; $7056: $21 $00 $d0
	ld   b, $14                                      ; $7059: $06 $14
	call EnqueueHDMATransfer                                       ; $705b: $cd $7c $02
	ld   a, [wWramBank]                                  ; $705e: $fa $93 $c2
	push af                                          ; $7061: $f5
	ld   a, $02                                      ; $7062: $3e $02
	ld   [wWramBank], a                                  ; $7064: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7067: $e0 $70
	ld   a, $0c                                      ; $7069: $3e $0c
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $706b: $ea $62 $c3
	ld   a, $28                                      ; $706e: $3e $28
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $7070: $ea $63 $c3
	ld   a, $02                                      ; $7073: $3e $02
	ld   b, $00                                      ; $7075: $06 $00
	ld   hl, wBGPalettes                                   ; $7077: $21 $de $c2
	ld   c, $00                                      ; $707a: $0e $00
	ld   de, $da00                                   ; $707c: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $707f: $cd $48 $07
	pop  af                                          ; $7082: $f1
	ld   [wWramBank], a                                  ; $7083: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $7086: $e0 $70

Jump_00b_7088:
	ld   hl, $cbf8                                   ; $7088: $21 $f8 $cb
	ld   a, [hl]                                     ; $708b: $7e
	inc  [hl]                                        ; $708c: $34
	ld   bc, $0c28                                   ; $708d: $01 $28 $0c
	cp   $03                                         ; $7090: $fe $03
	jp   c, FadePalettesAndSetRangeToUpdate                                    ; $7092: $da $32 $08

	ld   a, [wWramBank]                                  ; $7095: $fa $93 $c2
	push af                                          ; $7098: $f5
	ld   a, $02                                      ; $7099: $3e $02
	ld   [wWramBank], a                                  ; $709b: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $709e: $e0 $70
	xor  a                                           ; $70a0: $af
	ld   hl, $da18                                   ; $70a1: $21 $18 $da
	ld   de, wBGPalettes+3*8                                   ; $70a4: $11 $f6 $c2
	ld   bc, $0050                                   ; $70a7: $01 $50 $00
	call FarMemCopy                                       ; $70aa: $cd $b2 $09
	ld   bc, $0c33                                   ; $70ad: $01 $33 $0c
	call SetBGandOBJPaletteRangesToUpdate                                       ; $70b0: $cd $aa $04
	pop  af                                          ; $70b3: $f1
	ld   [wWramBank], a                                  ; $70b4: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $70b7: $e0 $70
	ld   hl, $cbf7                                   ; $70b9: $21 $f7 $cb
	inc  [hl]                                        ; $70bc: $34
	xor  a                                           ; $70bd: $af
	ld   [$cbf8], a                                  ; $70be: $ea $f8 $cb
	ret                                              ; $70c1: $c9


	ld   bc, $0000                                   ; $70c2: $01 $00 $00
	push af                                          ; $70c5: $f5
	ld   a, $ba                                      ; $70c6: $3e $ba
	ld   [wFarCallAddr], a                                  ; $70c8: $ea $98 $c2
	ld   a, $54                                      ; $70cb: $3e $54
	ld   [wFarCallAddr+1], a                                  ; $70cd: $ea $99 $c2
	ld   a, $0a                                      ; $70d0: $3e $0a
	ld   [wFarCallBank], a                                  ; $70d2: $ea $9a $c2
	pop  af                                          ; $70d5: $f1
	call FarCall                                       ; $70d6: $cd $62 $09
	ld   hl, $cbf7                                   ; $70d9: $21 $f7 $cb
	inc  [hl]                                        ; $70dc: $34
	xor  a                                           ; $70dd: $af
	ld   [$cbf8], a                                  ; $70de: $ea $f8 $cb
	ret                                              ; $70e1: $c9


	ld   a, [wInGameButtonsPressed]                                  ; $70e2: $fa $10 $c2
	bit  1, a                                        ; $70e5: $cb $4f
	jr   z, jr_00b_70f3                              ; $70e7: $28 $0a

	ld   a, GS_TITLE_SCREEN                                      ; $70e9: $3e $36
	ld   [wGameState], a                                  ; $70eb: $ea $a0 $c2
	xor  a                                           ; $70ee: $af
	ld   [wGameSubstate], a                                  ; $70ef: $ea $a1 $c2
	ret                                              ; $70f2: $c9


jr_00b_70f3:
	bit  2, a                                        ; $70f3: $cb $57
	jr   z, jr_00b_7101                              ; $70f5: $28 $0a

	ld   a, $00                                      ; $70f7: $3e $00
	ld   [$cbf7], a                                  ; $70f9: $ea $f7 $cb
	xor  a                                           ; $70fc: $af
	ld   [$cbf8], a                                  ; $70fd: $ea $f8 $cb
	ret                                              ; $7100: $c9


jr_00b_7101:
	ld   a, [$cbff]                                  ; $7101: $fa $ff $cb
	or   a                                           ; $7104: $b7
	jr   z, jr_00b_7129                              ; $7105: $28 $22

	ld   a, [$cbfe]                                  ; $7107: $fa $fe $cb
	ld   h, a                                        ; $710a: $67
	ld   a, [wInGameButtonsHeld]                                  ; $710b: $fa $0f $c2
	sla  a                                           ; $710e: $cb $27
	and  $03                                         ; $7110: $e6 $03
	set  0, a                                        ; $7112: $cb $c7
	ld   l, a                                        ; $7114: $6f
	push af                                          ; $7115: $f5
	ld   a, $15                                      ; $7116: $3e $15
	ld   [wFarCallAddr], a                                  ; $7118: $ea $98 $c2
	ld   a, $63                                      ; $711b: $3e $63
	ld   [wFarCallAddr+1], a                                  ; $711d: $ea $99 $c2
	ld   a, $0b                                      ; $7120: $3e $0b
	ld   [wFarCallBank], a                                  ; $7122: $ea $9a $c2
	pop  af                                          ; $7125: $f1
	call FarCall                                       ; $7126: $cd $62 $09

jr_00b_7129:
	ld   a, [wInGameButtonsHeld]                                  ; $7129: $fa $0f $c2
	bit  5, a                                        ; $712c: $cb $6f
	jr   z, jr_00b_713d                              ; $712e: $28 $0d

	ld   hl, $cbfe                                   ; $7130: $21 $fe $cb
	dec  [hl]                                        ; $7133: $35
	ld   a, [hl]                                     ; $7134: $7e
	or   a                                           ; $7135: $b7
	jr   nz, jr_00b_714f                             ; $7136: $20 $17

	ld   a, $34                                      ; $7138: $3e $34
	ld   [hl], a                                     ; $713a: $77
	jr   jr_00b_714f                                 ; $713b: $18 $12

jr_00b_713d:
	ld   a, [wInGameButtonsHeld]                                  ; $713d: $fa $0f $c2
	bit  4, a                                        ; $7140: $cb $67
	ret  z                                           ; $7142: $c8

	ld   hl, $cbfe                                   ; $7143: $21 $fe $cb
	inc  [hl]                                        ; $7146: $34
	ld   a, [hl]                                     ; $7147: $7e
	cp   $35                                         ; $7148: $fe $35
	jr   c, jr_00b_714f                              ; $714a: $38 $03

	ld   a, $01                                      ; $714c: $3e $01
	ld   [hl], a                                     ; $714e: $77

jr_00b_714f:
	ld   a, $0d                                      ; $714f: $3e $0d
	ld   [$cbf7], a                                  ; $7151: $ea $f7 $cb
	xor  a                                           ; $7154: $af
	ld   [$cbf8], a                                  ; $7155: $ea $f8 $cb
	ret                                              ; $7158: $c9


Call_00b_7159:
	push hl                                          ; $7159: $e5
	push bc                                          ; $715a: $c5
	ld   b, a                                        ; $715b: $47
	ld   a, c                                        ; $715c: $79
	ld   c, b                                        ; $715d: $48
	ld   b, $00                                      ; $715e: $06 $00
	ld   hl, $7168                                   ; $7160: $21 $68 $71
	add  hl, bc                                      ; $7163: $09
	add  [hl]                                        ; $7164: $86
	pop  bc                                          ; $7165: $c1
	pop  hl                                          ; $7166: $e1
	ret                                              ; $7167: $c9


	nop                                              ; $7168: $00
	ld   [bc], a                                     ; $7169: $02
	inc  b                                           ; $716a: $04
	ld   b, $08                                      ; $716b: $06 $08
	ld   a, [bc]                                     ; $716d: $0a
	push hl                                          ; $716e: $e5
	call Call_00b_7159                               ; $716f: $cd $59 $71
	push af                                          ; $7172: $f5
	ld   a, $97                                      ; $7173: $3e $97
	ld   [wFarCallAddr], a                                  ; $7175: $ea $98 $c2
	ld   a, $42                                      ; $7178: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $717a: $ea $99 $c2
	ld   a, $0a                                      ; $717d: $3e $0a
	ld   [wFarCallBank], a                                  ; $717f: $ea $9a $c2
	pop  af                                          ; $7182: $f1
	call FarCall                                       ; $7183: $cd $62 $09
	pop  hl                                          ; $7186: $e1
	ld   a, b                                        ; $7187: $78
	ld   [hl+], a                                    ; $7188: $22
	ld   a, c                                        ; $7189: $79
	ld   [hl+], a                                    ; $718a: $22
	ld   a, d                                        ; $718b: $7a
	ld   [hl+], a                                    ; $718c: $22
	ld   a, e                                        ; $718d: $7b
	ld   [hl+], a                                    ; $718e: $22
	ret                                              ; $718f: $c9


	call Call_00b_7159                               ; $7190: $cd $59 $71
	push af                                          ; $7193: $f5
	ld   a, [hl+]                                    ; $7194: $2a
	ld   b, a                                        ; $7195: $47
	ld   a, [hl+]                                    ; $7196: $2a
	ld   c, a                                        ; $7197: $4f
	ld   a, [hl+]                                    ; $7198: $2a
	ld   d, a                                        ; $7199: $57
	ld   a, [hl+]                                    ; $719a: $2a
	ld   e, a                                        ; $719b: $5f
	pop  af                                          ; $719c: $f1
	push af                                          ; $719d: $f5
	ld   a, $78                                      ; $719e: $3e $78
	ld   [wFarCallAddr], a                                  ; $71a0: $ea $98 $c2
	ld   a, $42                                      ; $71a3: $3e $42
	ld   [wFarCallAddr+1], a                                  ; $71a5: $ea $99 $c2
	ld   a, $0a                                      ; $71a8: $3e $0a
	ld   [wFarCallBank], a                                  ; $71aa: $ea $9a $c2
	pop  af                                          ; $71ad: $f1
	call FarCall                                       ; $71ae: $cd $62 $09
	ret                                              ; $71b1: $c9
