; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $04b", ROMX[$4000], BANK[$4b]

	dec  b                                           ; $4000: $05
	dec  b                                           ; $4001: $05
	ld   bc, $5656                                   ; $4002: $01 $56 $56
	rst  $38                                         ; $4005: $ff
	rst  $38                                         ; $4006: $ff
	dec  c                                           ; $4007: $0d
	nop                                              ; $4008: $00
	ld   a, [bc]                                     ; $4009: $0a
	rrca                                             ; $400a: $0f
	ld   b, $0e                                      ; $400b: $06 $0e
	ld   bc, $5258                                   ; $400d: $01 $58 $52
	ld   e, b                                        ; $4010: $58
	ld   d, d                                        ; $4011: $52
	sbc  [hl]                                        ; $4012: $9e
	sbc  l                                           ; $4013: $9d
	ld   e, c                                        ; $4014: $59
	sbc  c                                           ; $4015: $99
	sub  [hl]                                        ; $4016: $96
	ld   d, h                                        ; $4017: $54
	ld   a, c                                        ; $4018: $79
	dec  c                                           ; $4019: $0d
	ld   [bc], a                                     ; $401a: $02
	rst  $30                                         ; $401b: $f7
	inc  b                                           ; $401c: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $401d: $cf
	ld   h, l                                        ; $401e: $65
	ld   [hl], h                                     ; $401f: $74
	ld   e, l                                        ; $4020: $5d
	sbc  d                                           ; $4021: $9a
	sub  [hl]                                        ; $4022: $96
	ld   a, [$000d]                                  ; $4023: $fa $0d $00
	ld   a, [bc]                                     ; $4026: $0a
	inc  e                                           ; $4027: $1c
	dec  bc                                          ; $4028: $0b
	nop                                              ; $4029: $00
	nop                                              ; $402a: $00
	ld   bc, $a502                                   ; $402b: $01 $02 $a5
	inc  b                                           ; $402e: $04
	add  hl, hl                                      ; $402f: $29
	sbc  [hl]                                        ; $4030: $9e
	inc  bc                                          ; $4031: $03
	adc  e                                           ; $4032: $8b
	ld   [bc], a                                     ; $4033: $02
	sub  [hl]                                        ; $4034: $96
	ld   [bc], a                                     ; $4035: $02
	ld   e, b                                        ; $4036: $58
	and  b                                           ; $4037: $a0
	ld   [bc], a                                     ; $4038: $02
	jr   nz, jr_04b_403f                             ; $4039: $20 $04

	inc  c                                           ; $403b: $0c
	dec  c                                           ; $403c: $0d
	ld   h, c                                        ; $403d: $61
	ld   h, c                                        ; $403e: $61

jr_04b_403f:
	ld   a, c                                        ; $403f: $79
	inc  b                                           ; $4040: $04
	xor  e                                           ; $4041: $ab
	inc  b                                           ; $4042: $04
	ld   d, e                                        ; $4043: $53
	ld   h, a                                        ; $4044: $67
	sbc  c                                           ; $4045: $99
	dec  b                                           ; $4046: $05
	jr   nz, jr_04b_40c6                             ; $4047: $20 $7d

	dec  c                                           ; $4049: $0d
	inc  b                                           ; $404a: $04
	dec  hl                                          ; $404b: $2b
	ld   [hl], c                                     ; $404c: $71
	ld   [hl], h                                     ; $404d: $74
	sbc  c                                           ; $404e: $99
	sbc  l                                           ; $404f: $9d
	sub  [hl]                                        ; $4050: $96
	ld   a, e                                        ; $4051: $7b
	rst  $38                                         ; $4052: $ff
	rst  $38                                         ; $4053: $ff
	ld   sp, hl                                      ; $4054: $f9
	dec  c                                           ; $4055: $0d
	nop                                              ; $4056: $00
	ld   a, [bc]                                     ; $4057: $0a
	rrca                                             ; $4058: $0f
	add  hl, bc                                      ; $4059: $09
	ld   c, $01                                      ; $405a: $0e $01
	ld   d, [hl]                                     ; $405c: $56
	sbc  [hl]                                        ; $405d: $9e
	ld   d, [hl]                                     ; $405e: $56
	ld   d, [hl]                                     ; $405f: $56
	rst  $38                                         ; $4060: $ff
	rst  $38                                         ; $4061: $ff
	inc  bc                                          ; $4062: $03
	sub  b                                           ; $4063: $90
	inc  bc                                          ; $4064: $03
	cp   e                                           ; $4065: $bb
	inc  bc                                          ; $4066: $03
	ccf                                              ; $4067: $3f
	ld   [bc], a                                     ; $4068: $02
	ld   c, a                                        ; $4069: $4f
	ld   a, h                                        ; $406a: $7c
	inc  b                                           ; $406b: $04
	ld   a, b                                        ; $406c: $78
	ld   [hl], l                                     ; $406d: $75
	dec  c                                           ; $406e: $0d
	inc  bc                                          ; $406f: $03
	add  c                                           ; $4070: $81
	cp   b                                           ; $4071: $b8
	cp   d                                           ; $4072: $ba
	rst  ToBoot                                         ; $4073: $c7
	ldh  [c], a                                      ; $4074: $e2
	and  b                                           ; $4075: $a0
	halt                                             ; $4076: $76
	ld   d, h                                        ; $4077: $54
	ld   h, e                                        ; $4078: $63
	ld   d, d                                        ; $4079: $52
	ld   h, l                                        ; $407a: $65
	ld   l, l                                        ; $407b: $6d
	ld   [bc], a                                     ; $407c: $02
	ld   e, b                                        ; $407d: $58
	inc  b                                           ; $407e: $04
	dec  c                                           ; $407f: $0d
	dec  c                                           ; $4080: $0d
	rst  $38                                         ; $4081: $ff
	rst  $38                                         ; $4082: $ff
	dec  c                                           ; $4083: $0d
	nop                                              ; $4084: $00
	ld   a, [bc]                                     ; $4085: $0a
	rrca                                             ; $4086: $0f
	add  hl, bc                                      ; $4087: $09
	inc  d                                           ; $4088: $14
	ld   bc, $638c                                   ; $4089: $01 $8c $63
	ld   e, c                                        ; $408c: $59
	ld   a, [$000d]                                  ; $408d: $fa $0d $00
	ld   a, [bc]                                     ; $4090: $0a
	inc  e                                           ; $4091: $1c
	dec  b                                           ; $4092: $05
	rla                                              ; $4093: $17
	db   $10                                         ; $4094: $10
	ld   bc, $7c6b                                   ; $4095: $01 $6b $7c
	adc  h                                           ; $4098: $8c
	ld   h, e                                        ; $4099: $63
	ld   e, c                                        ; $409a: $59
	rst  $38                                         ; $409b: $ff
	rst  $38                                         ; $409c: $ff
	dec  c                                           ; $409d: $0d
	inc  bc                                          ; $409e: $03
	ld   h, l                                        ; $409f: $65
	inc  b                                           ; $40a0: $04
	rst  $20                                         ; $40a1: $e7
	ld   [bc], a                                     ; $40a2: $02
	sbc  c                                           ; $40a3: $99
	ld   [bc], a                                     ; $40a4: $02
	inc  c                                           ; $40a5: $0c
	ld   [hl], l                                     ; $40a6: $75
	ld   d, b                                        ; $40a7: $50
	ld   a, [hl]                                     ; $40a8: $7e
	sbc  d                                           ; $40a9: $9a
	halt                                             ; $40aa: $76
	sbc  c                                           ; $40ab: $99
	ld   a, h                                        ; $40ac: $7c
	ld   a, l                                        ; $40ad: $7d
	dec  c                                           ; $40ae: $0d
	ld   l, e                                        ; $40af: $6b
	ld   a, h                                        ; $40b0: $7c
	inc  bc                                          ; $40b1: $03
	adc  e                                           ; $40b2: $8b
	ld   [bc], a                                     ; $40b3: $02
	sub  [hl]                                        ; $40b4: $96
	ld   [bc], a                                     ; $40b5: $02
	ld   e, b                                        ; $40b6: $58
	sub  d                                           ; $40b7: $92
	rst  $38                                         ; $40b8: $ff
	rst  $38                                         ; $40b9: $ff
	dec  c                                           ; $40ba: $0d
	nop                                              ; $40bb: $00
	ld   a, [bc]                                     ; $40bc: $0a
	dec  c                                           ; $40bd: $0d
	nop                                              ; $40be: $00
	nop                                              ; $40bf: $00
	rrca                                             ; $40c0: $0f
	nop                                              ; $40c1: $00
	ld   bc, $9b23                                   ; $40c2: $01 $23 $9b
	rrca                                             ; $40c5: $0f

jr_04b_40c6:
	add  hl, bc                                      ; $40c6: $09
	db   $10                                         ; $40c7: $10
	ld   bc, $a18d                                   ; $40c8: $01 $8d $a1
	ld   a, b                                        ; $40cb: $78
	inc  b                                           ; $40cc: $04
	xor  e                                           ; $40cd: $ab
	inc  b                                           ; $40ce: $04
	jr   z, jr_04b_414a                              ; $40cf: $28 $79

	ld   [hl], d                                     ; $40d1: $72
	ld   d, d                                        ; $40d2: $52
	ld   l, l                                        ; $40d3: $6d
	ld   a, b                                        ; $40d4: $78
	sbc  a                                           ; $40d5: $9f
	dec  c                                           ; $40d6: $0d
	dec  b                                           ; $40d7: $05
	and  l                                           ; $40d8: $a5
	ld   [bc], a                                     ; $40d9: $02
	nop                                              ; $40da: $00
	ld   l, e                                        ; $40db: $6b
	ld   a, h                                        ; $40dc: $7c
	inc  b                                           ; $40dd: $04
	ld   a, d                                        ; $40de: $7a
	ld   [hl], l                                     ; $40df: $75
	ld   l, l                                        ; $40e0: $6d
	ld   d, d                                        ; $40e1: $52
	ld   e, e                                        ; $40e2: $5b
	ld   l, c                                        ; $40e3: $69
	sub  [hl]                                        ; $40e4: $96
	sbc  a                                           ; $40e5: $9f
	dec  c                                           ; $40e6: $0d
	nop                                              ; $40e7: $00
	ld   a, [bc]                                     ; $40e8: $0a
	ld   bc, $0008                                   ; $40e9: $01 $08 $00
	ld   e, l                                        ; $40ec: $5d
	and  c                                           ; $40ed: $a1
	sbc  [hl]                                        ; $40ee: $9e
	dec  c                                           ; $40ef: $0d
	ld   [bc], a                                     ; $40f0: $02
	jp   z, $057d                                    ; $40f1: $ca $7d $05

	ld   [hl], e                                     ; $40f4: $73
	ld   a, h                                        ; $40f5: $7c
	ld   l, e                                        ; $40f6: $6b
	ld   a, [hl]                                     ; $40f7: $7e
	ld   a, c                                        ; $40f8: $79
	ld   d, d                                        ; $40f9: $52
	sbc  c                                           ; $40fa: $99
	and  c                                           ; $40fb: $a1
	ld   l, [hl]                                     ; $40fc: $6e
	sbc  a                                           ; $40fd: $9f
	dec  c                                           ; $40fe: $0d
	nop                                              ; $40ff: $00
	ld   a, [bc]                                     ; $4100: $0a
	add  hl, de                                      ; $4101: $19
	inc  bc                                          ; $4102: $03
	ld   [bc], a                                     ; $4103: $02
	sbc  l                                           ; $4104: $9d
	ld   e, c                                        ; $4105: $59
	sbc  b                                           ; $4106: $98
	adc  h                                           ; $4107: $8c
	ld   h, l                                        ; $4108: $65
	ld   l, l                                        ; $4109: $6d
	nop                                              ; $410a: $00
	nop                                              ; $410b: $00
	inc  b                                           ; $410c: $04
	ld   l, l                                        ; $410d: $6d
	sub  b                                           ; $410e: $90
	inc  bc                                          ; $410f: $03
	xor  b                                           ; $4110: $a8
	ld   d, d                                        ; $4111: $52
	adc  h                                           ; $4112: $8c
	ld   h, a                                        ; $4113: $67
	nop                                              ; $4114: $00
	ld   bc, $2107                                   ; $4115: $01 $07 $21
	rrca                                             ; $4118: $0f
	ld   [bc], a                                     ; $4119: $02
	inc  bc                                          ; $411a: $03
	ld   bc, $2000                                   ; $411b: $01 $00 $20
	nop                                              ; $411e: $00
	rlca                                             ; $411f: $07
	ld   b, c                                        ; $4120: $41
	rrca                                             ; $4121: $0f
	ld   [bc], a                                     ; $4122: $02
	inc  bc                                          ; $4123: $03
	ld   bc, $2001                                   ; $4124: $01 $01 $20
	nop                                              ; $4127: $00
	ld   b, $92                                      ; $4128: $06 $92
	rrca                                             ; $412a: $0f
	rrca                                             ; $412b: $0f
	nop                                              ; $412c: $00
	ld   bc, $9d01                                   ; $412d: $01 $01 $9d
	ld   e, c                                        ; $4130: $59
	sbc  b                                           ; $4131: $98
	adc  h                                           ; $4132: $8c
	ld   h, l                                        ; $4133: $65
	ld   l, l                                        ; $4134: $6d
	sbc  a                                           ; $4135: $9f
	dec  c                                           ; $4136: $0d
	nop                                              ; $4137: $00
	ld   a, [bc]                                     ; $4138: $0a
	rrca                                             ; $4139: $0f
	add  hl, bc                                      ; $413a: $09
	db   $10                                         ; $413b: $10
	ld   bc, $6596                                   ; $413c: $01 $96 $65
	sbc  [hl]                                        ; $413f: $9e
	ld   d, d                                        ; $4140: $52
	ld   e, l                                        ; $4141: $5d
	ld   l, h                                        ; $4142: $6c
	ld   a, [$0dfa]                                  ; $4143: $fa $fa $0d
	nop                                              ; $4146: $00
	ld   a, [bc]                                     ; $4147: $0a
	ld   b, $92                                      ; $4148: $06 $92

jr_04b_414a:
	rrca                                             ; $414a: $0f
	rrca                                             ; $414b: $0f
	nop                                              ; $414c: $00
	ld   bc, $0401                                   ; $414d: $01 $01 $04
	ld   l, l                                        ; $4150: $6d
	sub  b                                           ; $4151: $90
	inc  bc                                          ; $4152: $03
	xor  b                                           ; $4153: $a8
	ld   d, d                                        ; $4154: $52
	adc  h                                           ; $4155: $8c
	ld   h, a                                        ; $4156: $67
	ld   a, [$000d]                                  ; $4157: $fa $0d $00
	ld   a, [bc]                                     ; $415a: $0a
	rrca                                             ; $415b: $0f
	add  hl, bc                                      ; $415c: $09
	db   $10                                         ; $415d: $10
	ld   bc, $e3c1                                   ; $415e: $01 $c1 $e3
	ld   l, [hl]                                     ; $4161: $6e
	ld   a, [$520d]                                  ; $4162: $fa $0d $52
	ld   e, e                                        ; $4165: $5b
	ld   a, b                                        ; $4166: $78
	sbc  b                                           ; $4167: $98
	inc  bc                                          ; $4168: $03
	adc  e                                           ; $4169: $8b
	inc  bc                                          ; $416a: $03
	xor  b                                           ; $416b: $a8
	ld   a, l                                        ; $416c: $7d
	xor  [hl]                                        ; $416d: $ae
	or   d                                           ; $416e: $b2
	push af                                          ; $416f: $f5
	ld   h, a                                        ; $4170: $67
	ld   e, h                                        ; $4171: $5c
	sbc  c                                           ; $4172: $99
	sbc  a                                           ; $4173: $9f
	dec  c                                           ; $4174: $0d
	nop                                              ; $4175: $00
	ld   a, [bc]                                     ; $4176: $0a
	rrca                                             ; $4177: $0f
	add  hl, bc                                      ; $4178: $09
	db   $10                                         ; $4179: $10
	ld   bc, $a502                                   ; $417a: $01 $02 $a5
	inc  b                                           ; $417d: $04
	xor  d                                           ; $417e: $aa
	ld   a, l                                        ; $417f: $7d
	ld   [bc], a                                     ; $4180: $02
	sbc  b                                           ; $4181: $98
	inc  bc                                          ; $4182: $03
	nop                                              ; $4183: $00
	ld   a, h                                        ; $4184: $7c
	inc  bc                                          ; $4185: $03
	xor  b                                           ; $4186: $a8
	ld   d, d                                        ; $4187: $52
	add  h                                           ; $4188: $84
	sbc  b                                           ; $4189: $98
	and  b                                           ; $418a: $a0
	dec  c                                           ; $418b: $0d
	inc  b                                           ; $418c: $04
	call nc, $9279                                   ; $418d: $d4 $79 $92
	ld   e, e                                        ; $4190: $5b
	ld   [hl], d                                     ; $4191: $72
	ld   e, a                                        ; $4192: $5f
	ld   [hl], h                                     ; $4193: $74
	ld   e, b                                        ; $4194: $58
	ld   e, l                                        ; $4195: $5d
	and  c                                           ; $4196: $a1
	ld   l, [hl]                                     ; $4197: $6e
	sbc  a                                           ; $4198: $9f
	dec  c                                           ; $4199: $0d
	nop                                              ; $419a: $00
	ld   a, [bc]                                     ; $419b: $0a
	rrca                                             ; $419c: $0f
	nop                                              ; $419d: $00
	ld   bc, $3d16                                   ; $419e: $01 $16 $3d
	rrca                                             ; $41a1: $0f
	inc  bc                                          ; $41a2: $03
	ld   a, [bc]                                     ; $41a3: $0a
	ld   bc, $0a04                                   ; $41a4: $01 $04 $0a
	inc  bc                                          ; $41a7: $03
	jp   nc, $0dfa                                   ; $41a8: $d2 $fa $0d

	inc  b                                           ; $41ab: $04
	cp   a                                           ; $41ac: $bf
	inc  b                                           ; $41ad: $04
	dec  d                                           ; $41ae: $15
	ld   a, h                                        ; $41af: $7c
	ld   [bc], a                                     ; $41b0: $02
	jr   c, jr_04b_41b7                              ; $41b1: $38 $04

	ld   d, d                                        ; $41b3: $52
	and  b                                           ; $41b4: $a0
	inc  b                                           ; $41b5: $04
	ld   e, [hl]                                     ; $41b6: $5e

jr_04b_41b7:
	ld   [bc], a                                     ; $41b7: $02
	sub  l                                           ; $41b8: $95
	ld   h, l                                        ; $41b9: $65
	adc  h                                           ; $41ba: $8c
	ld   h, l                                        ; $41bb: $65
	ld   l, l                                        ; $41bc: $6d
	ld   a, [$000d]                                  ; $41bd: $fa $0d $00
	ld   a, [bc]                                     ; $41c0: $0a
	rrca                                             ; $41c1: $0f
	add  hl, bc                                      ; $41c2: $09
	db   $10                                         ; $41c3: $10
	ld   bc, $5496                                   ; $41c4: $01 $96 $54
	ld   h, a                                        ; $41c7: $67
	ld   a, l                                        ; $41c8: $7d
	ld   [hl], a                                     ; $41c9: $77
	ld   d, h                                        ; $41ca: $54
	ld   l, [hl]                                     ; $41cb: $6e
	ld   sp, hl                                      ; $41cc: $f9
	dec  c                                           ; $41cd: $0d
	nop                                              ; $41ce: $00
	ld   a, [bc]                                     ; $41cf: $0a
	rrca                                             ; $41d0: $0f
	inc  bc                                          ; $41d1: $03
	inc  c                                           ; $41d2: $0c
	ld   bc, $9a6b                                   ; $41d3: $01 $6b $9a
	ld   e, d                                        ; $41d6: $5a
	rst  $38                                         ; $41d7: $ff
	rst  $38                                         ; $41d8: $ff
	dec  c                                           ; $41d9: $0d
	nop                                              ; $41da: $00
	ld   a, [bc]                                     ; $41db: $0a
	ld   bc, $4103                                   ; $41dc: $01 $03 $41
	adc  h                                           ; $41df: $8c
	ld   [hl], c                                     ; $41e0: $71
	ld   [hl], h                                     ; $41e1: $74
	ld   d, d                                        ; $41e2: $52
	adc  h                                           ; $41e3: $8c
	ld   h, a                                        ; $41e4: $67
	rst  $38                                         ; $41e5: $ff
	rst  $38                                         ; $41e6: $ff
	dec  c                                           ; $41e7: $0d
	ld   [bc], a                                     ; $41e8: $02
	or   a                                           ; $41e9: $b7
	inc  b                                           ; $41ea: $04
	dec  de                                          ; $41eb: $1b
	and  b                                           ; $41ec: $a0
	inc  bc                                          ; $41ed: $03
	db   $e3                                         ; $41ee: $e3
	inc  bc                                          ; $41ef: $03
	ld   b, c                                        ; $41f0: $41
	ld   h, l                                        ; $41f1: $65
	ld   [hl], h                                     ; $41f2: $74
	ld   d, d                                        ; $41f3: $52
	sbc  c                                           ; $41f4: $99
	and  c                                           ; $41f5: $a1
	ld   [hl], l                                     ; $41f6: $75
	ld   h, a                                        ; $41f7: $67
	sbc  a                                           ; $41f8: $9f
	dec  c                                           ; $41f9: $0d
	nop                                              ; $41fa: $00
	ld   a, [bc]                                     ; $41fb: $0a
	rrca                                             ; $41fc: $0f
	add  hl, bc                                      ; $41fd: $09
	inc  d                                           ; $41fe: $14
	ld   bc, $0b04                                   ; $41ff: $01 $04 $0b
	ld   a, c                                        ; $4202: $79
	ld   a, l                                        ; $4203: $7d
	inc  bc                                          ; $4204: $03
	xor  c                                           ; $4205: $a9
	sub  b                                           ; $4206: $90
	ld   a, h                                        ; $4207: $7c
	ld   [hl], c                                     ; $4208: $71
	ld   [hl], h                                     ; $4209: $74
	ld   d, d                                        ; $420a: $52
	ld   a, b                                        ; $420b: $78
	ld   d, d                                        ; $420c: $52
	ld   a, h                                        ; $420d: $7c
	ld   e, c                                        ; $420e: $59
	ld   sp, hl                                      ; $420f: $f9
	dec  c                                           ; $4210: $0d
	nop                                              ; $4211: $00
	ld   a, [bc]                                     ; $4212: $0a
	rrca                                             ; $4213: $0f
	inc  bc                                          ; $4214: $03
	inc  c                                           ; $4215: $0c
	ld   bc, $5c04                                   ; $4216: $01 $04 $5c
	ld   [bc], a                                     ; $4219: $02
	add  hl, bc                                      ; $421a: $09
	ld   e, d                                        ; $421b: $5a
	ld   d, b                                        ; $421c: $50
	sbc  b                                           ; $421d: $98
	adc  h                                           ; $421e: $8c
	ld   l, c                                        ; $421f: $69
	and  c                                           ; $4220: $a1
	rst  $38                                         ; $4221: $ff
	rst  $38                                         ; $4222: $ff
	dec  c                                           ; $4223: $0d
	inc  bc                                          ; $4224: $03
	push de                                          ; $4225: $d5
	ld   h, b                                        ; $4226: $60
	ld   l, l                                        ; $4227: $6d
	ld   [bc], a                                     ; $4228: $02
	xor  d                                           ; $4229: $aa
	ld   a, h                                        ; $422a: $7c
	sub  [hl]                                        ; $422b: $96
	ld   d, h                                        ; $422c: $54
	ld   [hl], l                                     ; $422d: $75
	ld   h, a                                        ; $422e: $67
	rst  $38                                         ; $422f: $ff
	rst  $38                                         ; $4230: $ff
	dec  c                                           ; $4231: $0d
	nop                                              ; $4232: $00
	ld   a, [bc]                                     ; $4233: $0a
	rrca                                             ; $4234: $0f
	add  hl, bc                                      ; $4235: $09
	db   $10                                         ; $4236: $10
	ld   bc, $546b                                   ; $4237: $01 $6b $54
	ld   e, c                                        ; $423a: $59
	rst  $38                                         ; $423b: $ff
	rst  $38                                         ; $423c: $ff
	dec  c                                           ; $423d: $0d
	nop                                              ; $423e: $00
	ld   a, [bc]                                     ; $423f: $0a
	rrca                                             ; $4240: $0f
	inc  bc                                          ; $4241: $03
	ld   [$6101], sp                                 ; $4242: $08 $01 $61
	sbc  d                                           ; $4245: $9a
	sub  [hl]                                        ; $4246: $96
	sbc  b                                           ; $4247: $98
	ld   [bc], a                                     ; $4248: $02
	ld   e, b                                        ; $4249: $58
	inc  b                                           ; $424a: $04
	dec  c                                           ; $424b: $0d
	ld   a, h                                        ; $424c: $7c
	ld   [bc], a                                     ; $424d: $02
	sub  e                                           ; $424e: $93
	dec  b                                           ; $424f: $05
	bit  7, c                                        ; $4250: $cb $79
	dec  c                                           ; $4252: $0d
	ld   e, c                                        ; $4253: $59
	ld   e, c                                        ; $4254: $59
	sbc  b                                           ; $4255: $98
	adc  h                                           ; $4256: $8c
	ld   h, a                                        ; $4257: $67
	sbc  a                                           ; $4258: $9f
	dec  c                                           ; $4259: $0d
	nop                                              ; $425a: $00
	ld   a, [bc]                                     ; $425b: $0a
	rrca                                             ; $425c: $0f
	nop                                              ; $425d: $00
	ld   bc, $0013                                   ; $425e: $01 $13 $00
	inc  c                                           ; $4261: $0c
	ld   [bc], a                                     ; $4262: $02
	ld   b, $5c                                      ; $4263: $06 $5c
	db   $10                                         ; $4265: $10
	inc  de                                          ; $4266: $13
	inc  bc                                          ; $4267: $03
	ld   c, $63                                      ; $4268: $0e $63
	inc  e                                           ; $426a: $1c
	ld   a, [bc]                                     ; $426b: $0a
	ld   [hl+], a                                    ; $426c: $22
	ld   c, $01                                      ; $426d: $0e $01
	add  e                                           ; $426f: $83
	adc  [hl]                                        ; $4270: $8e
	rst  $38                                         ; $4271: $ff
	rst  $38                                         ; $4272: $ff
	dec  c                                           ; $4273: $0d
	adc  l                                           ; $4274: $8d
	sub  l                                           ; $4275: $95
	ld   d, h                                        ; $4276: $54
	ld   a, b                                        ; $4277: $78
	dec  b                                           ; $4278: $05
	jr   nz, jr_04b_42e9                             ; $4279: $20 $6e

	ld   a, b                                        ; $427b: $78
	rst  $38                                         ; $427c: $ff
	rst  $38                                         ; $427d: $ff
	dec  c                                           ; $427e: $0d
	nop                                              ; $427f: $00
	ld   a, [bc]                                     ; $4280: $0a
	rrca                                             ; $4281: $0f
	dec  bc                                          ; $4282: $0b
	nop                                              ; $4283: $00
	ld   bc, $9003                                   ; $4284: $01 $03 $90
	inc  bc                                          ; $4287: $03
	cp   e                                           ; $4288: $bb
	inc  bc                                          ; $4289: $03
	ccf                                              ; $428a: $3f
	ld   [bc], a                                     ; $428b: $02
	ld   c, a                                        ; $428c: $4f
	ld   e, c                                        ; $428d: $59
	sub  a                                           ; $428e: $97
	ld   a, h                                        ; $428f: $7c
	inc  b                                           ; $4290: $04
	db   $fd                                         ; $4291: $fd
	ld   b, $34                                      ; $4292: $06 $34
	ld   a, c                                        ; $4294: $79
	sub  [hl]                                        ; $4295: $96
	sbc  c                                           ; $4296: $99
	halt                                             ; $4297: $76
	dec  c                                           ; $4298: $0d
	ld   h, c                                        ; $4299: $61
	ld   l, a                                        ; $429a: $6f
	sub  a                                           ; $429b: $97
	add  [hl]                                        ; $429c: $86
	ld   b, $2c                                      ; $429d: $06 $2c
	inc  bc                                          ; $429f: $03
	sbc  a                                           ; $42a0: $9f
	ld   h, a                                        ; $42a1: $67
	sbc  c                                           ; $42a2: $99
	inc  b                                           ; $42a3: $04
	ld   [hl-], a                                    ; $42a4: $32
	inc  b                                           ; $42a5: $04
	dec  bc                                          ; $42a6: $0b
	ld   a, c                                        ; $42a7: $79
	dec  c                                           ; $42a8: $0d
	halt                                             ; $42a9: $76
	ld   [hl], d                                     ; $42aa: $72
	ld   l, d                                        ; $42ab: $6a
	and  c                                           ; $42ac: $a1
	ld   [bc], a                                     ; $42ad: $02
	ld   e, d                                        ; $42ae: $5a
	inc  b                                           ; $42af: $04
	dec  de                                          ; $42b0: $1b
	ld   h, l                                        ; $42b1: $65
	ld   l, l                                        ; $42b2: $6d
	ld   l, e                                        ; $42b3: $6b
	ld   d, h                                        ; $42b4: $54
	ld   [hl], l                                     ; $42b5: $75
	ld   h, a                                        ; $42b6: $67
	rst  $38                                         ; $42b7: $ff
	rst  $38                                         ; $42b8: $ff
	dec  c                                           ; $42b9: $0d
	nop                                              ; $42ba: $00
	ld   a, [bc]                                     ; $42bb: $0a
	inc  e                                           ; $42bc: $1c
	ld   a, [bc]                                     ; $42bd: $0a
	ld   [hl+], a                                    ; $42be: $22
	ld   c, $01                                      ; $42bf: $0e $01
	inc  bc                                          ; $42c1: $03
	xor  c                                           ; $42c2: $a9
	ld   e, c                                        ; $42c3: $59
	ld   e, d                                        ; $42c4: $5a
	inc  bc                                          ; $42c5: $03
	ld   c, [hl]                                     ; $42c6: $4e
	inc  bc                                          ; $42c7: $03
	ld   l, e                                        ; $42c8: $6b
	ld   a, c                                        ; $42c9: $79
	ld   l, e                                        ; $42ca: $6b
	ld   d, h                                        ; $42cb: $54
	ld   h, [hl]                                     ; $42cc: $66
	sub  e                                           ; $42cd: $93
	ld   d, h                                        ; $42ce: $54
	ld   h, l                                        ; $42cf: $65
	ld   [hl], h                                     ; $42d0: $74
	sbc  [hl]                                        ; $42d1: $9e
	dec  c                                           ; $42d2: $0d
	ld   l, e                                        ; $42d3: $6b
	ld   h, l                                        ; $42d4: $65
	ld   [hl], h                                     ; $42d5: $74
	inc  bc                                          ; $42d6: $03
	ld   c, [hl]                                     ; $42d7: $4e
	inc  bc                                          ; $42d8: $03
	ld   l, e                                        ; $42d9: $6b
	ld   a, c                                        ; $42da: $79
	inc  bc                                          ; $42db: $03
	cp   c                                           ; $42dc: $b9
	sbc  b                                           ; $42dd: $98
	ld   h, a                                        ; $42de: $67
	ld   [hl], h                                     ; $42df: $74
	ld   [hl], h                                     ; $42e0: $74
	dec  c                                           ; $42e1: $0d
	ld   d, d                                        ; $42e2: $52
	ld   [hl], c                                     ; $42e3: $71
	ld   l, l                                        ; $42e4: $6d
	ld   e, c                                        ; $42e5: $59
	rst  $38                                         ; $42e6: $ff
	rst  $38                                         ; $42e7: $ff
	dec  c                                           ; $42e8: $0d

jr_04b_42e9:
	nop                                              ; $42e9: $00
	ld   a, [bc]                                     ; $42ea: $0a
	rrca                                             ; $42eb: $0f
	add  hl, bc                                      ; $42ec: $09
	db   $10                                         ; $42ed: $10
	ld   bc, $6d52                                   ; $42ee: $01 $52 $6d
	ld   l, b                                        ; $42f1: $68
	sub  a                                           ; $42f2: $97
	ld   a, c                                        ; $42f3: $79
	ld   h, l                                        ; $42f4: $65
	ld   [hl], h                                     ; $42f5: $74
	ld   a, l                                        ; $42f6: $7d
	dec  c                                           ; $42f7: $0d
	inc  b                                           ; $42f8: $04
	add  hl, hl                                      ; $42f9: $29
	ld   e, d                                        ; $42fa: $5a
	ld   h, a                                        ; $42fb: $67
	ld   e, h                                        ; $42fc: $5c
	ld   [hl], h                                     ; $42fd: $74
	adc  h                                           ; $42fe: $8c
	ld   h, a                                        ; $42ff: $67
	ld   a, e                                        ; $4300: $7b
	rst  $38                                         ; $4301: $ff
	rst  $38                                         ; $4302: $ff
	dec  c                                           ; $4303: $0d
	nop                                              ; $4304: $00
	ld   a, [bc]                                     ; $4305: $0a
	inc  e                                           ; $4306: $1c
	ld   a, [bc]                                     ; $4307: $0a
	jr   nz, jr_04b_4316                             ; $4308: $20 $0c

	ld   bc, $5258                                   ; $430a: $01 $58 $52
	sbc  [hl]                                        ; $430d: $9e
	ld   [$ff00], sp                                 ; $430e: $08 $00 $ff
	rst  $38                                         ; $4311: $ff
	dec  c                                           ; $4312: $0d
	ld   e, b                                        ; $4313: $58
	inc  bc                                          ; $4314: $03
	ld   c, a                                        ; $4315: $4f

jr_04b_4316:
	ld   a, l                                        ; $4316: $7d
	ld   [hl], a                                     ; $4317: $77
	ld   d, h                                        ; $4318: $54
	dec  b                                           ; $4319: $05
	pop  de                                          ; $431a: $d1
	ld   d, h                                        ; $431b: $54
	ld   sp, hl                                      ; $431c: $f9
	dec  c                                           ; $431d: $0d
	nop                                              ; $431e: $00
	ld   a, [bc]                                     ; $431f: $0a
	add  hl, de                                      ; $4320: $19
	dec  b                                           ; $4321: $05
	inc  bc                                          ; $4322: $03
	ld   d, d                                        ; $4323: $52
	ld   l, l                                        ; $4324: $6d
	ld   l, b                                        ; $4325: $68
	sub  a                                           ; $4326: $97
	ld   l, [hl]                                     ; $4327: $6e
	halt                                             ; $4328: $76
	dec  b                                           ; $4329: $05
	pop  de                                          ; $432a: $d1
	ld   d, d                                        ; $432b: $52
	adc  h                                           ; $432c: $8c
	ld   h, a                                        ; $432d: $67
	nop                                              ; $432e: $00
	nop                                              ; $432f: $00
	ld   [bc], a                                     ; $4330: $02
	jr   c, jr_04b_4337                              ; $4331: $38 $04

	ld   d, d                                        ; $4333: $52
	ld   e, d                                        ; $4334: $5a
	ld   e, c                                        ; $4335: $59
	ld   [hl], c                                     ; $4336: $71

jr_04b_4337:
	ld   [hl], h                                     ; $4337: $74
	ld   a, c                                        ; $4338: $79
	inc  b                                           ; $4339: $04
	dec  de                                          ; $433a: $1b
	ld   d, d                                        ; $433b: $52
	ld   l, l                                        ; $433c: $6d
	rst  $38                                         ; $433d: $ff
	rst  $38                                         ; $433e: $ff
	nop                                              ; $433f: $00
	ld   bc, $4704                                   ; $4340: $01 $04 $47
	inc  b                                           ; $4343: $04
	sub  l                                           ; $4344: $95
	ld   a, h                                        ; $4345: $7c
	ld   b, $11                                      ; $4346: $06 $11
	ld   [bc], a                                     ; $4348: $02
	ld   a, a                                        ; $4349: $7f
	ld   l, [hl]                                     ; $434a: $6e
	halt                                             ; $434b: $76
	dec  b                                           ; $434c: $05
	pop  de                                          ; $434d: $d1
	ld   d, d                                        ; $434e: $52
	adc  h                                           ; $434f: $8c
	ld   h, a                                        ; $4350: $67
	nop                                              ; $4351: $00
	ld   [bc], a                                     ; $4352: $02
	rlca                                             ; $4353: $07
	ld   h, a                                        ; $4354: $67
	ld   de, $0302                                   ; $4355: $11 $02 $03
	ld   bc, $2000                                   ; $4358: $01 $00 $20
	nop                                              ; $435b: $00
	rlca                                             ; $435c: $07
	and  c                                           ; $435d: $a1
	ld   de, $0302                                   ; $435e: $11 $02 $03
	ld   bc, $2001                                   ; $4361: $01 $01 $20
	nop                                              ; $4364: $00
	rlca                                             ; $4365: $07
	inc  bc                                          ; $4366: $03
	ld   [de], a                                     ; $4367: $12
	ld   [bc], a                                     ; $4368: $02
	inc  bc                                          ; $4369: $03
	ld   bc, $2002                                   ; $436a: $01 $02 $20
	nop                                              ; $436d: $00
	ld   b, $c6                                      ; $436e: $06 $c6
	ld   [de], a                                     ; $4370: $12
	rrca                                             ; $4371: $0f
	nop                                              ; $4372: $00
	ld   bc, $5201                                   ; $4373: $01 $01 $52
	ld   l, l                                        ; $4376: $6d
	ld   l, b                                        ; $4377: $68
	sub  a                                           ; $4378: $97
	ld   l, [hl]                                     ; $4379: $6e
	halt                                             ; $437a: $76
	dec  b                                           ; $437b: $05
	pop  de                                          ; $437c: $d1
	ld   d, d                                        ; $437d: $52
	adc  h                                           ; $437e: $8c
	ld   h, a                                        ; $437f: $67
	dec  c                                           ; $4380: $0d
	nop                                              ; $4381: $00
	ld   a, [bc]                                     ; $4382: $0a
	inc  e                                           ; $4383: $1c
	ld   a, [bc]                                     ; $4384: $0a
	jr   nz, jr_04b_4393                             ; $4385: $20 $0c

	ld   bc, $786e                                   ; $4387: $01 $6e $78
	rst  $38                                         ; $438a: $ff
	rst  $38                                         ; $438b: $ff
	dec  c                                           ; $438c: $0d
	inc  b                                           ; $438d: $04
	ld   c, $04                                      ; $438e: $0e $04
	ld   a, b                                        ; $4390: $78
	ld   [hl], a                                     ; $4391: $77
	ld   h, c                                        ; $4392: $61

jr_04b_4393:
	ld   l, h                                        ; $4393: $6c
	ld   a, h                                        ; $4394: $7c
	pop  de                                          ; $4395: $d1
	xor  h                                           ; $4396: $ac
	ld   e, d                                        ; $4397: $5a
	dec  c                                           ; $4398: $0d
	add  e                                           ; $4399: $83
	ld   h, h                                        ; $439a: $64
	ld   e, a                                        ; $439b: $5f
	ld   [hl], h                                     ; $439c: $74
	sub  d                                           ; $439d: $92
	ld   [hl], c                                     ; $439e: $71
	ld   l, l                                        ; $439f: $6d
	and  c                                           ; $43a0: $a1
	ld   l, [hl]                                     ; $43a1: $6e
	sbc  e                                           ; $43a2: $9b
	ld   d, h                                        ; $43a3: $54
	sbc  a                                           ; $43a4: $9f
	dec  c                                           ; $43a5: $0d
	nop                                              ; $43a6: $00
	ld   a, [bc]                                     ; $43a7: $0a
	ld   b, $01                                      ; $43a8: $06 $01
	inc  de                                          ; $43aa: $13
	rrca                                             ; $43ab: $0f
	nop                                              ; $43ac: $00
	ld   bc, $0201                                   ; $43ad: $01 $01 $02
	jr   c, jr_04b_43b6                              ; $43b0: $38 $04

	ld   d, d                                        ; $43b2: $52
	ld   e, d                                        ; $43b3: $5a
	ld   e, c                                        ; $43b4: $59
	ld   [hl], c                                     ; $43b5: $71

jr_04b_43b6:
	ld   [hl], h                                     ; $43b6: $74
	ld   a, c                                        ; $43b7: $79
	dec  c                                           ; $43b8: $0d
	inc  b                                           ; $43b9: $04
	dec  de                                          ; $43ba: $1b
	ld   d, d                                        ; $43bb: $52
	ld   l, l                                        ; $43bc: $6d
	rst  $38                                         ; $43bd: $ff
	rst  $38                                         ; $43be: $ff
	halt                                             ; $43bf: $76
	ld   e, c                                        ; $43c0: $59
	sbc  a                                           ; $43c1: $9f
	dec  c                                           ; $43c2: $0d
	nop                                              ; $43c3: $00
	ld   a, [bc]                                     ; $43c4: $0a
	rrca                                             ; $43c5: $0f
	add  hl, bc                                      ; $43c6: $09
	inc  de                                          ; $43c7: $13
	ld   bc, $5258                                   ; $43c8: $01 $58 $52
	ld   e, b                                        ; $43cb: $58
	ld   d, d                                        ; $43cc: $52
	rst  $38                                         ; $43cd: $ff
	rst  $38                                         ; $43ce: $ff
	dec  c                                           ; $43cf: $0d
	ld   h, e                                        ; $43d0: $63
	ld   h, a                                        ; $43d1: $67
	ld   e, d                                        ; $43d2: $5a
	ld   a, c                                        ; $43d3: $79
	ld   l, e                                        ; $43d4: $6b
	sbc  d                                           ; $43d5: $9a
	ld   a, l                                        ; $43d6: $7d
	ld   a, b                                        ; $43d7: $78
	ld   d, d                                        ; $43d8: $52
	ld   l, [hl]                                     ; $43d9: $6e
	sbc  e                                           ; $43da: $9b
	ld   d, h                                        ; $43db: $54
	ld   sp, hl                                      ; $43dc: $f9
	dec  c                                           ; $43dd: $0d
	nop                                              ; $43de: $00
	ld   a, [bc]                                     ; $43df: $0a
	inc  e                                           ; $43e0: $1c
	ld   a, [bc]                                     ; $43e1: $0a
	ld   hl, $010d                                   ; $43e2: $21 $0d $01
	ret  nc                                          ; $43e5: $d0

	ret  nc                                          ; $43e6: $d0

	ret  nc                                          ; $43e7: $d0

	ret  nc                                          ; $43e8: $d0

	ret  nc                                          ; $43e9: $d0

	ret  nc                                          ; $43ea: $d0

	rst  $38                                         ; $43eb: $ff
	rst  $38                                         ; $43ec: $ff
	dec  c                                           ; $43ed: $0d
	ld   d, d                                        ; $43ee: $52
	sub  d                                           ; $43ef: $92
	inc  b                                           ; $43f0: $04
	ret  c                                           ; $43f1: $d8

	inc  b                                           ; $43f2: $04
	xor  h                                           ; $43f3: $ac

jr_04b_43f4:
	ld   d, d                                        ; $43f4: $52
	ld   [bc], a                                     ; $43f5: $02
	ld   b, $02                                      ; $43f6: $06 $02
	sub  l                                           ; $43f8: $95
	ld   l, [hl]                                     ; $43f9: $6e
	sbc  a                                           ; $43fa: $9f
	dec  c                                           ; $43fb: $0d
	ld   e, b                                        ; $43fc: $58
	inc  bc                                          ; $43fd: $03
	ld   c, a                                        ; $43fe: $4f
	sbc  [hl]                                        ; $43ff: $9e
	cp   h                                           ; $4400: $bc
	push af                                          ; $4401: $f5
	cp   d                                           ; $4402: $ba
	ld   d, b                                        ; $4403: $50
	sbc  c                                           ; $4404: $99
	ld   a, b                                        ; $4405: $78
	sbc  a                                           ; $4406: $9f
	dec  c                                           ; $4407: $0d
	nop                                              ; $4408: $00
	ld   a, [bc]                                     ; $4409: $0a
	ld   b, $01                                      ; $440a: $06 $01
	inc  de                                          ; $440c: $13
	rrca                                             ; $440d: $0f
	nop                                              ; $440e: $00
	ld   bc, $0401                                   ; $440f: $01 $01 $04
	ld   b, a                                        ; $4412: $47
	inc  b                                           ; $4413: $04
	sub  l                                           ; $4414: $95
	ld   a, h                                        ; $4415: $7c
	ld   b, $11                                      ; $4416: $06 $11
	ld   [bc], a                                     ; $4418: $02
	ld   a, a                                        ; $4419: $7f
	rst  $38                                         ; $441a: $ff
	rst  $38                                         ; $441b: $ff
	ld   l, [hl]                                     ; $441c: $6e
	halt                                             ; $441d: $76
	dec  b                                           ; $441e: $05
	pop  de                                          ; $441f: $d1
	ld   d, d                                        ; $4420: $52
	adc  h                                           ; $4421: $8c
	ld   h, a                                        ; $4422: $67
	sbc  a                                           ; $4423: $9f
	dec  c                                           ; $4424: $0d
	nop                                              ; $4425: $00
	ld   a, [bc]                                     ; $4426: $0a
	inc  e                                           ; $4427: $1c
	ld   a, [bc]                                     ; $4428: $0a
	inc  hl                                          ; $4429: $23
	rrca                                             ; $442a: $0f
	ld   bc, $0804                                   ; $442b: $01 $04 $08
	ld   [bc], a                                     ; $442e: $02
	sub  c                                           ; $442f: $91
	ld   a, h                                        ; $4430: $7c
	inc  b                                           ; $4431: $04
	dec  bc                                          ; $4432: $0b
	ld   a, c                                        ; $4433: $79
	ld   b, $11                                      ; $4434: $06 $11
	inc  bc                                          ; $4436: $03
	add  d                                           ; $4437: $82
	ld   e, d                                        ; $4438: $5a
	ld   d, d                                        ; $4439: $52
	sbc  c                                           ; $443a: $99
	ld   l, [hl]                                     ; $443b: $6e
	halt                                             ; $443c: $76
	ld   d, a                                        ; $443d: $57
	ld   sp, hl                                      ; $443e: $f9
	dec  c                                           ; $443f: $0d
	nop                                              ; $4440: $00
	ld   a, [bc]                                     ; $4441: $0a
	rrca                                             ; $4442: $0f
	add  hl, bc                                      ; $4443: $09
	db   $10                                         ; $4444: $10
	ld   bc, $a16b                                   ; $4445: $01 $6b $a1
	ld   a, b                                        ; $4448: $78
	sbc  l                                           ; $4449: $9d
	ld   e, a                                        ; $444a: $5f
	ld   a, b                                        ; $444b: $78
	ld   d, d                                        ; $444c: $52
	ld   l, [hl]                                     ; $444d: $6e
	sbc  e                                           ; $444e: $9b
	ld   a, [$030d]                                  ; $444f: $fa $0d $03
	pop  de                                          ; $4452: $d1
	ld   [bc], a                                     ; $4453: $02
	jr   nz, jr_04b_43f4                             ; $4454: $20 $9e

	adc  l                                           ; $4456: $8d
	and  c                                           ; $4457: $a1
	ld   a, b                                        ; $4458: $78
	ld   [bc], a                                     ; $4459: $02
	jp   z, Jump_04b_597c                            ; $445a: $ca $7c $59

	and  c                                           ; $445d: $a1
	ld   h, b                                        ; $445e: $60
	ld   d, d                                        ; $445f: $52
	ld   [bc], a                                     ; $4460: $02
	add  [hl]                                        ; $4461: $86
	ld   [hl], l                                     ; $4462: $75
	dec  c                                           ; $4463: $0d
	inc  bc                                          ; $4464: $03
	ld   h, d                                        ; $4465: $62
	adc  h                                           ; $4466: $8c
	ld   [hl], c                                     ; $4467: $71
	ld   [hl], h                                     ; $4468: $74
	ld   l, l                                        ; $4469: $6d
	ld   h, [hl]                                     ; $446a: $66
	sub  c                                           ; $446b: $91
	ld   a, b                                        ; $446c: $78
	ld   d, d                                        ; $446d: $52
	ld   e, c                                        ; $446e: $59
	rst  $38                                         ; $446f: $ff
	rst  $38                                         ; $4470: $ff
	dec  c                                           ; $4471: $0d
	nop                                              ; $4472: $00
	ld   a, [bc]                                     ; $4473: $0a
	inc  e                                           ; $4474: $1c
	ld   a, [bc]                                     ; $4475: $0a
	jr   nz, jr_04b_4484                             ; $4476: $20 $0c

	ld   bc, $0e04                                   ; $4478: $01 $04 $0e
	inc  bc                                          ; $447b: $03
	sub  b                                           ; $447c: $90
	sbc  [hl]                                        ; $447d: $9e
	ldh  [c], a                                      ; $447e: $e2
	xor  [hl]                                        ; $447f: $ae
	ld   a, c                                        ; $4480: $79
	ld   a, b                                        ; $4481: $78
	sbc  c                                           ; $4482: $99
	ld   a, b                                        ; $4483: $78

jr_04b_4484:
	rst  $38                                         ; $4484: $ff
	rst  $38                                         ; $4485: $ff
	dec  c                                           ; $4486: $0d
	ld   h, c                                        ; $4487: $61
	ld   d, d                                        ; $4488: $52
	ld   [hl], d                                     ; $4489: $72
	ld   a, l                                        ; $448a: $7d
	inc  bc                                          ; $448b: $03
	and  e                                           ; $448c: $a3
	ld   d, d                                        ; $448d: $52
	ld   [bc], a                                     ; $448e: $02
	ld   b, $04                                      ; $448f: $06 $04
	jp   nc, $0d75                                   ; $4491: $d2 $75 $0d

	ld   [bc], a                                     ; $4494: $02
	sbc  l                                           ; $4495: $9d
	ld   [hl], c                                     ; $4496: $71
	ld   l, l                                        ; $4497: $6d
	and  c                                           ; $4498: $a1
	ld   h, [hl]                                     ; $4499: $66
	sub  c                                           ; $449a: $91
	ld   a, b                                        ; $449b: $78
	ld   d, d                                        ; $449c: $52
	rst  $38                                         ; $449d: $ff
	rst  $38                                         ; $449e: $ff
	dec  c                                           ; $449f: $0d
	nop                                              ; $44a0: $00
	ld   a, [bc]                                     ; $44a1: $0a
	ld   bc, $9e8c                                   ; $44a2: $01 $8c $9e
	inc  b                                           ; $44a5: $04
	ld   b, a                                        ; $44a6: $47
	inc  b                                           ; $44a7: $04
	sub  l                                           ; $44a8: $95
	ld   e, c                                        ; $44a9: $59
	ld   a, l                                        ; $44aa: $7d
	halt                                             ; $44ab: $76
	sub  b                                           ; $44ac: $90
	ld   e, c                                        ; $44ad: $59
	ld   e, l                                        ; $44ae: $5d
	rst  $38                                         ; $44af: $ff
	rst  $38                                         ; $44b0: $ff
	dec  c                                           ; $44b1: $0d
	inc  b                                           ; $44b2: $04
	ld   c, $04                                      ; $44b3: $0e $04
	ld   a, b                                        ; $44b5: $78
	ld   [hl], a                                     ; $44b6: $77
	ld   h, c                                        ; $44b7: $61
	ld   l, h                                        ; $44b8: $6c
	ld   a, h                                        ; $44b9: $7c
	pop  de                                          ; $44ba: $d1
	xor  h                                           ; $44bb: $ac
	ld   e, d                                        ; $44bc: $5a
	dec  c                                           ; $44bd: $0d
	add  e                                           ; $44be: $83
	ld   h, h                                        ; $44bf: $64
	ld   e, a                                        ; $44c0: $5f
	ld   [hl], h                                     ; $44c1: $74
	sub  d                                           ; $44c2: $92
	ld   [hl], c                                     ; $44c3: $71
	ld   l, l                                        ; $44c4: $6d
	and  c                                           ; $44c5: $a1
	ld   l, [hl]                                     ; $44c6: $6e
	sbc  e                                           ; $44c7: $9b
	ld   d, h                                        ; $44c8: $54
	sbc  a                                           ; $44c9: $9f
	dec  c                                           ; $44ca: $0d
	nop                                              ; $44cb: $00
	ld   a, [bc]                                     ; $44cc: $0a
	ld   b, $01                                      ; $44cd: $06 $01
	inc  de                                          ; $44cf: $13
	inc  e                                           ; $44d0: $1c
	ld   a, [bc]                                     ; $44d1: $0a
	ld   [hl+], a                                    ; $44d2: $22
	ld   c, $01                                      ; $44d3: $0e $01
	ld   d, b                                        ; $44d5: $50
	ei                                               ; $44d6: $fb
	sub  b                                           ; $44d7: $90
	ld   d, h                                        ; $44d8: $54
	ld   d, d                                        ; $44d9: $52
	ld   d, d                                        ; $44da: $52
	sbc  a                                           ; $44db: $9f
	dec  c                                           ; $44dc: $0d
	ld   l, e                                        ; $44dd: $6b
	and  c                                           ; $44de: $a1
	ld   a, b                                        ; $44df: $78
	ld   h, l                                        ; $44e0: $65
	and  c                                           ; $44e1: $a1
	ld   e, a                                        ; $44e2: $5f
	and  c                                           ; $44e3: $a1
	ld   a, c                                        ; $44e4: $79
	ld   [bc], a                                     ; $44e5: $02
	ld   h, l                                        ; $44e6: $65
	ld   d, [hl]                                     ; $44e7: $56
	sbc  c                                           ; $44e8: $99
	ld   a, b                                        ; $44e9: $78
	rst  $38                                         ; $44ea: $ff
	rst  $38                                         ; $44eb: $ff
	dec  c                                           ; $44ec: $0d
	nop                                              ; $44ed: $00
	ld   a, [bc]                                     ; $44ee: $0a
	ld   bc, $0e04                                   ; $44ef: $01 $04 $0e
	inc  b                                           ; $44f2: $04
	ld   a, b                                        ; $44f3: $78
	ld   [hl], a                                     ; $44f4: $77
	ld   h, c                                        ; $44f5: $61
	ld   l, h                                        ; $44f6: $6c
	ld   a, h                                        ; $44f7: $7c
	pop  de                                          ; $44f8: $d1
	xor  h                                           ; $44f9: $ac
	ld   e, d                                        ; $44fa: $5a
	dec  c                                           ; $44fb: $0d
	add  e                                           ; $44fc: $83
	ld   h, h                                        ; $44fd: $64
	ld   e, a                                        ; $44fe: $5f
	ld   [hl], h                                     ; $44ff: $74
	sub  d                                           ; $4500: $92
	ld   [hl], c                                     ; $4501: $71
	ld   l, l                                        ; $4502: $6d
	and  c                                           ; $4503: $a1
	ld   l, [hl]                                     ; $4504: $6e
	sbc  e                                           ; $4505: $9b
	ld   d, h                                        ; $4506: $54
	sbc  a                                           ; $4507: $9f
	dec  c                                           ; $4508: $0d
	nop                                              ; $4509: $00
	ld   a, [bc]                                     ; $450a: $0a
	inc  e                                           ; $450b: $1c
	ld   a, [bc]                                     ; $450c: $0a
	jr   nz, jr_04b_451b                             ; $450d: $20 $0c

	ld   bc, $5276                                   ; $450f: $01 $76 $52
	ld   d, h                                        ; $4512: $54
	sbc  l                                           ; $4513: $9d
	ld   e, a                                        ; $4514: $5f
	ld   l, [hl]                                     ; $4515: $6e
	sbc  a                                           ; $4516: $9f
	dec  c                                           ; $4517: $0d
	ld   [bc], a                                     ; $4518: $02
	and  l                                           ; $4519: $a5
	ld   [bc], a                                     ; $451a: $02

jr_04b_451b:
	xor  d                                           ; $451b: $aa
	sbc  [hl]                                        ; $451c: $9e
	ld   [bc], a                                     ; $451d: $02
	jr   c, jr_04b_4524                              ; $451e: $38 $04

	ld   d, d                                        ; $4520: $52
	ld   a, h                                        ; $4521: $7c
	ld   b, $2c                                      ; $4522: $06 $2c

jr_04b_4524:
	inc  bc                                          ; $4524: $03
	sbc  a                                           ; $4525: $9f
	ld   a, c                                        ; $4526: $79
	ld   a, l                                        ; $4527: $7d
	dec  c                                           ; $4528: $0d
	dec  b                                           ; $4529: $05
	cp   h                                           ; $452a: $bc
	inc  b                                           ; $452b: $04
	sbc  [hl]                                        ; $452c: $9e
	ld   [bc], a                                     ; $452d: $02
	and  c                                           ; $452e: $a1
	and  b                                           ; $452f: $a0
	ld   [hl], d                                     ; $4530: $72
	ld   e, a                                        ; $4531: $5f
	sbc  c                                           ; $4532: $99
	ld   h, c                                        ; $4533: $61
	halt                                             ; $4534: $76
	ld   l, [hl]                                     ; $4535: $6e
	ld   a, b                                        ; $4536: $78
	sbc  a                                           ; $4537: $9f
	dec  c                                           ; $4538: $0d
	nop                                              ; $4539: $00
	ld   a, [bc]                                     ; $453a: $0a
	ld   bc, $9003                                   ; $453b: $01 $03 $90
	inc  bc                                          ; $453e: $03
	cp   e                                           ; $453f: $bb
	inc  bc                                          ; $4540: $03
	ccf                                              ; $4541: $3f
	ld   [bc], a                                     ; $4542: $02
	ld   c, a                                        ; $4543: $4f
	ld   a, c                                        ; $4544: $79
	ld   a, l                                        ; $4545: $7d
	sbc  [hl]                                        ; $4546: $9e
	ld   h, b                                        ; $4547: $60
	and  c                                           ; $4548: $a1
	ld   h, [hl]                                     ; $4549: $66
	sub  e                                           ; $454a: $93
	ld   d, h                                        ; $454b: $54
	ld   a, c                                        ; $454c: $79
	dec  c                                           ; $454d: $0d
	inc  bc                                          ; $454e: $03
	and  $02                                         ; $454f: $e6 $02
	ld   b, $65                                      ; $4551: $06 $65
	ld   [hl], h                                     ; $4553: $74
	ld   e, b                                        ; $4554: $58
	ld   d, d                                        ; $4555: $52
	ld   [hl], h                                     ; $4556: $74
	ld   e, l                                        ; $4557: $5d
	sbc  d                                           ; $4558: $9a
	sbc  a                                           ; $4559: $9f
	dec  c                                           ; $455a: $0d
	nop                                              ; $455b: $00
	ld   a, [bc]                                     ; $455c: $0a
	inc  e                                           ; $455d: $1c
	dec  bc                                          ; $455e: $0b
	dec  b                                           ; $455f: $05
	dec  b                                           ; $4560: $05
	ld   bc, $ffff                                   ; $4561: $01 $ff $ff
	rst  $38                                         ; $4564: $ff
	rst  $38                                         ; $4565: $ff
	dec  c                                           ; $4566: $0d
	nop                                              ; $4567: $00
	ld   a, [bc]                                     ; $4568: $0a
	rrca                                             ; $4569: $0f
	ld   a, [bc]                                     ; $456a: $0a
	rrca                                             ; $456b: $0f
	ld   bc, $9ea1                                   ; $456c: $01 $a1 $9e
	ld   [hl], a                                     ; $456f: $77
	ld   d, h                                        ; $4570: $54
	ld   h, l                                        ; $4571: $65
	ld   l, l                                        ; $4572: $6d
	rst  $38                                         ; $4573: $ff
	rst  $38                                         ; $4574: $ff
	ld   d, b                                        ; $4575: $50
	sub  d                                           ; $4576: $92
	adc  a                                           ; $4577: $8f
	ld   e, l                                        ; $4578: $5d
	and  c                                           ; $4579: $a1
	ld   sp, hl                                      ; $457a: $f9
	dec  c                                           ; $457b: $0d
	nop                                              ; $457c: $00
	ld   a, [bc]                                     ; $457d: $0a
	inc  e                                           ; $457e: $1c
	dec  bc                                          ; $457f: $0b
	dec  b                                           ; $4580: $05
	dec  b                                           ; $4581: $05
	ld   bc, $5652                                   ; $4582: $01 $52 $56
	rst  $38                                         ; $4585: $ff
	rst  $38                                         ; $4586: $ff
	dec  b                                           ; $4587: $05
	nop                                              ; $4588: $00
	ld   [bc], a                                     ; $4589: $02
	or   h                                           ; $458a: $b4
	ld   h, l                                        ; $458b: $65
	adc  h                                           ; $458c: $8c
	ld   h, l                                        ; $458d: $65
	ld   l, l                                        ; $458e: $6d
	sbc  a                                           ; $458f: $9f
	dec  c                                           ; $4590: $0d
	nop                                              ; $4591: $00
	ld   a, [bc]                                     ; $4592: $0a
	inc  e                                           ; $4593: $1c
	ld   a, [bc]                                     ; $4594: $0a
	jr   nz, jr_04b_45a3                             ; $4595: $20 $0c

	ld   bc, $6596                                   ; $4597: $01 $96 $65
	ld   [bc], a                                     ; $459a: $02
	or   h                                           ; $459b: $b4
	inc  bc                                          ; $459c: $03
	sub  [hl]                                        ; $459d: $96
	ld   a, [$000d]                                  ; $459e: $fa $0d $00
	ld   a, [bc]                                     ; $45a1: $0a
	dec  c                                           ; $45a2: $0d

jr_04b_45a3:
	nop                                              ; $45a3: $00
	nop                                              ; $45a4: $00
	rrca                                             ; $45a5: $0f
	nop                                              ; $45a6: $00
	ld   bc, $1e09                                   ; $45a7: $01 $09 $1e
	add  hl, hl                                      ; $45aa: $29
	nop                                              ; $45ab: $00
	nop                                              ; $45ac: $00
	nop                                              ; $45ad: $00
	inc  b                                           ; $45ae: $04
	add  b                                           ; $45af: $80
	ld   a, l                                        ; $45b0: $7d
	ld   bc, $20ff                                   ; $45b1: $01 $ff $20
	inc  b                                           ; $45b4: $04
	add  b                                           ; $45b5: $80
	ld   a, [hl]                                     ; $45b6: $7e
	ld   bc, $2000                                   ; $45b7: $01 $00 $20
	inc  e                                           ; $45ba: $1c
	nop                                              ; $45bb: $00
	ld   c, $01                                      ; $45bc: $0e $01
	rrca                                             ; $45be: $0f
	nop                                              ; $45bf: $00
	ld   bc, $0502                                   ; $45c0: $01 $02 $05
	add  b                                           ; $45c3: $80
	ld   a, [hl]                                     ; $45c4: $7e
	ld   bc, $0001                                   ; $45c5: $01 $01 $00
	ld   bc, $5063                                   ; $45c8: $01 $63 $50
	sbc  [hl]                                        ; $45cb: $9e
	ld   [bc], a                                     ; $45cc: $02
	and  l                                           ; $45cd: $a5
	inc  b                                           ; $45ce: $04
	xor  d                                           ; $45cf: $aa
	sub  b                                           ; $45d0: $90
	ld   [bc], a                                     ; $45d1: $02
	jr   nz, jr_04b_45d8                             ; $45d2: $20 $04

	xor  d                                           ; $45d4: $aa
	ld   e, d                                        ; $45d5: $5a
	dec  b                                           ; $45d6: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45d7: $cf

jr_04b_45d8:
	adc  h                                           ; $45d8: $8c
	sbc  c                                           ; $45d9: $99
	sbc  a                                           ; $45da: $9f
	dec  c                                           ; $45db: $0d
	ld   [bc], a                                     ; $45dc: $02
	and  c                                           ; $45dd: $a1
	ld   [bc], a                                     ; $45de: $02
	ld   a, e                                        ; $45df: $7b
	ld   d, d                                        ; $45e0: $52
	and  b                                           ; $45e1: $a0
	inc  b                                           ; $45e2: $04
	ld   b, l                                        ; $45e3: $45
	sbc  d                                           ; $45e4: $9a
	ld   [hl], h                                     ; $45e5: $74
	ld   e, d                                        ; $45e6: $5a
	and  c                                           ; $45e7: $a1
	ld   a, [hl]                                     ; $45e8: $7e
	sbc  c                                           ; $45e9: $99
	ld   l, h                                        ; $45ea: $6c
	ld   a, [$000d]                                  ; $45eb: $fa $0d $00
	ld   a, [bc]                                     ; $45ee: $0a
	inc  d                                           ; $45ef: $14
	ld   b, $01                                      ; $45f0: $06 $01
	rrca                                             ; $45f2: $0f
	ld   b, $02                                      ; $45f3: $06 $02
	ld   bc, $0008                                   ; $45f5: $01 $08 $00
	ld   a, [$520d]                                  ; $45f8: $fa $0d $52
	sbc  c                                           ; $45fb: $99
	ld   e, c                                        ; $45fc: $59
	ld   a, [$000d]                                  ; $45fd: $fa $0d $00
	ld   a, [bc]                                     ; $4600: $0a
	rrca                                             ; $4601: $0f
	nop                                              ; $4602: $00
	ld   bc, $7d01                                   ; $4603: $01 $01 $7d
	ld   d, d                                        ; $4606: $52
	sbc  [hl]                                        ; $4607: $9e
	ld   [hl], a                                     ; $4608: $77
	ld   d, h                                        ; $4609: $54
	ld   l, h                                        ; $460a: $6c
	sbc  a                                           ; $460b: $9f
	dec  c                                           ; $460c: $0d
	nop                                              ; $460d: $00
	ld   a, [bc]                                     ; $460e: $0a
	inc  d                                           ; $460f: $14
	ld   a, [bc]                                     ; $4610: $0a
	ld   bc, $5a09                                   ; $4611: $01 $09 $5a
	inc  e                                           ; $4614: $1c
	ld   b, $02                                      ; $4615: $06 $02
	ld   [bc], a                                     ; $4617: $02
	ld   bc, $0008                                   ; $4618: $01 $08 $00
	sbc  a                                           ; $461b: $9f
	dec  c                                           ; $461c: $0d
	inc  b                                           ; $461d: $04
	ld   c, c                                        ; $461e: $49
	ld   e, c                                        ; $461f: $59
	inc  b                                           ; $4620: $04
	and  e                                           ; $4621: $a3
	sbc  d                                           ; $4622: $9a
	ld   [hl], h                                     ; $4623: $74
	ld   a, b                                        ; $4624: $78
	ld   d, d                                        ; $4625: $52
	ld   e, c                                        ; $4626: $59
	ld   sp, hl                                      ; $4627: $f9
	dec  c                                           ; $4628: $0d
	nop                                              ; $4629: $00
	ld   a, [bc]                                     ; $462a: $0a
	ld   bc, $6d50                                   ; $462b: $01 $50 $6d
	ld   d, d                                        ; $462e: $52
	halt                                             ; $462f: $76
	ld   a, h                                        ; $4630: $7c
	inc  b                                           ; $4631: $04
	ldh  [$03], a                                    ; $4632: $e0 $03
	dec  hl                                          ; $4634: $2b
	ld   a, [$5b0d]                                  ; $4635: $fa $0d $5b
	ld   a, h                                        ; $4638: $7c
	ld   d, h                                        ; $4639: $54
	ld   a, h                                        ; $463a: $7c
	inc  b                                           ; $463b: $04
	rst  $28                                         ; $463c: $ef
	sbc  [hl]                                        ; $463d: $9e
	inc  bc                                          ; $463e: $03
	db   $f4                                         ; $463f: $f4
	inc  b                                           ; $4640: $04
	ld   e, c                                        ; $4641: $59
	ld   a, h                                        ; $4642: $7c
	inc  bc                                          ; $4643: $03
	cp   $05                                         ; $4644: $fe $05
	cp   [hl]                                        ; $4646: $be
	and  b                                           ; $4647: $a0
	dec  c                                           ; $4648: $0d
	ld   h, a                                        ; $4649: $67
	sbc  c                                           ; $464a: $99
	ld   [hl], c                                     ; $464b: $71
	ld   [hl], h                                     ; $464c: $74
	ld   [bc], a                                     ; $464d: $02
	sbc  l                                           ; $464e: $9d
	ld   [hl], c                                     ; $464f: $71
	ld   l, l                                        ; $4650: $6d
	ld   l, [hl]                                     ; $4651: $6e
	sbc  e                                           ; $4652: $9b
	sbc  a                                           ; $4653: $9f
	dec  c                                           ; $4654: $0d
	nop                                              ; $4655: $00
	ld   a, [bc]                                     ; $4656: $0a
	dec  e                                           ; $4657: $1d
	ld   b, b                                        ; $4658: $40
	ld   d, $03                                      ; $4659: $16 $03
	ld   d, $01                                      ; $465b: $16 $01
	inc  bc                                          ; $465d: $03
	add  hl, hl                                      ; $465e: $29
	nop                                              ; $465f: $00
	ld   bc, $e004                                   ; $4660: $01 $04 $e0
	inc  bc                                          ; $4663: $03
	dec  hl                                          ; $4664: $2b
	sub  d                                           ; $4665: $92
	add  h                                           ; $4666: $84
	sbc  c                                           ; $4667: $99
	ld   a, b                                        ; $4668: $78
	and  c                                           ; $4669: $a1
	ld   [hl], h                                     ; $466a: $74
	sbc  [hl]                                        ; $466b: $9e
	dec  c                                           ; $466c: $0d
	adc  l                                           ; $466d: $8d
	ld   l, e                                        ; $466e: $6b
	ld   h, c                                        ; $466f: $61
	ld   a, b                                        ; $4670: $78
	ld   [hl], c                                     ; $4671: $71
	ld   l, l                                        ; $4672: $6d
	ld   l, d                                        ; $4673: $6a
	ld   a, [$000d]                                  ; $4674: $fa $0d $00
	ld   a, [bc]                                     ; $4677: $0a
	inc  e                                           ; $4678: $1c
	ld   b, $00                                      ; $4679: $06 $00
	nop                                              ; $467b: $00
	ld   bc, $9a61                                   ; $467c: $01 $61 $9a
	ld   e, c                                        ; $467f: $59
	sub  a                                           ; $4680: $97
	ld   a, l                                        ; $4681: $7d
	ld   [bc], a                                     ; $4682: $02
	and  c                                           ; $4683: $a1
	and  b                                           ; $4684: $a0
	ld   [hl], d                                     ; $4685: $72
	ld   e, a                                        ; $4686: $5f
	sbc  e                                           ; $4687: $9b
	sub  [hl]                                        ; $4688: $96
	sbc  a                                           ; $4689: $9f
	dec  c                                           ; $468a: $0d
	ld   h, [hl]                                     ; $468b: $66
	sub  c                                           ; $468c: $91
	ld   d, b                                        ; $468d: $50
	ld   a, b                                        ; $468e: $78
	sbc  a                                           ; $468f: $9f
	dec  c                                           ; $4690: $0d
	nop                                              ; $4691: $00
	ld   a, [bc]                                     ; $4692: $0a
	dec  c                                           ; $4693: $0d
	nop                                              ; $4694: $00
	nop                                              ; $4695: $00
	rrca                                             ; $4696: $0f
	nop                                              ; $4697: $00
	ld   bc, $1e09                                   ; $4698: $01 $09 $1e
	add  hl, hl                                      ; $469b: $29
	ld   bc, $0000                                   ; $469c: $01 $00 $00
	inc  b                                           ; $469f: $04
	add  b                                           ; $46a0: $80
	ld   l, b                                        ; $46a1: $68
	ld   bc, $20ff                                   ; $46a2: $01 $ff $20
	inc  b                                           ; $46a5: $04
	add  b                                           ; $46a6: $80
	ld   l, c                                        ; $46a7: $69
	ld   bc, $2000                                   ; $46a8: $01 $00 $20
	inc  e                                           ; $46ab: $1c
	nop                                              ; $46ac: $00
	ld   c, $01                                      ; $46ad: $0e $01
	rrca                                             ; $46af: $0f
	nop                                              ; $46b0: $00
	ld   bc, $0502                                   ; $46b1: $01 $02 $05
	add  b                                           ; $46b4: $80
	ld   l, c                                        ; $46b5: $69
	ld   bc, $0001                                   ; $46b6: $01 $01 $00
	ld   bc, $6596                                   ; $46b9: $01 $96 $65
	sbc  [hl]                                        ; $46bc: $9e
	ld   [bc], a                                     ; $46bd: $02
	and  l                                           ; $46be: $a5
	inc  b                                           ; $46bf: $04
	xor  d                                           ; $46c0: $aa
	sub  b                                           ; $46c1: $90
	ld   d, d                                        ; $46c2: $52
	ld   d, d                                        ; $46c3: $52
	inc  b                                           ; $46c4: $04
	inc  de                                          ; $46c5: $13
	ld   [bc], a                                     ; $46c6: $02
	and  c                                           ; $46c7: $a1
	ld   l, [hl]                                     ; $46c8: $6e
	ld   a, [$5a0d]                                  ; $46c9: $fa $0d $5a
	and  c                                           ; $46cc: $a1
	ld   a, [hl]                                     ; $46cd: $7e
	sbc  c                                           ; $46ce: $99
	ld   l, h                                        ; $46cf: $6c
	ld   a, [$0dfa]                                  ; $46d0: $fa $fa $0d
	nop                                              ; $46d3: $00
	ld   a, [bc]                                     ; $46d4: $0a
	inc  d                                           ; $46d5: $14
	ld   b, $01                                      ; $46d6: $06 $01
	rrca                                             ; $46d8: $0f
	inc  bc                                          ; $46d9: $03
	ld   [bc], a                                     ; $46da: $02
	ld   bc, $0008                                   ; $46db: $01 $08 $00
	ld   e, l                                        ; $46de: $5d
	and  c                                           ; $46df: $a1
	sbc  a                                           ; $46e0: $9f
	dec  c                                           ; $46e1: $0d
	ld   l, a                                        ; $46e2: $6f
	sub  l                                           ; $46e3: $95
	ld   [hl], c                                     ; $46e4: $71
	halt                                             ; $46e5: $76
	ld   d, d                                        ; $46e6: $52
	ld   d, d                                        ; $46e7: $52
	ld   e, c                                        ; $46e8: $59
	ld   h, l                                        ; $46e9: $65
	sub  a                                           ; $46ea: $97
	sbc  a                                           ; $46eb: $9f
	dec  c                                           ; $46ec: $0d
	nop                                              ; $46ed: $00
	ld   a, [bc]                                     ; $46ee: $0a
	rrca                                             ; $46ef: $0f
	nop                                              ; $46f0: $00
	ld   bc, $7d01                                   ; $46f1: $01 $01 $7d
	ld   d, d                                        ; $46f4: $52
	sbc  [hl]                                        ; $46f5: $9e
	ld   [hl], a                                     ; $46f6: $77
	ld   d, h                                        ; $46f7: $54
	ld   l, h                                        ; $46f8: $6c
	sbc  a                                           ; $46f9: $9f
	dec  c                                           ; $46fa: $0d
	nop                                              ; $46fb: $00
	ld   a, [bc]                                     ; $46fc: $0a
	inc  d                                           ; $46fd: $14
	ld   a, [bc]                                     ; $46fe: $0a
	ld   bc, $031c                                   ; $46ff: $01 $1c $03
	ld   [bc], a                                     ; $4702: $02
	ld   [bc], a                                     ; $4703: $02
	ld   bc, $0008                                   ; $4704: $01 $08 $00
	ld   e, l                                        ; $4707: $5d
	and  c                                           ; $4708: $a1
	sbc  a                                           ; $4709: $9f
	dec  c                                           ; $470a: $0d
	inc  bc                                          ; $470b: $03
	ret  z                                           ; $470c: $c8

	ld   a, c                                        ; $470d: $79
	ld   a, b                                        ; $470e: $78
	ld   a, c                                        ; $470f: $79
	ld   e, c                                        ; $4710: $59
	dec  c                                           ; $4711: $0d
	inc  bc                                          ; $4712: $03
	ld   [$9d65], a                                  ; $4713: $ea $65 $9d
	ld   h, a                                        ; $4716: $67
	sbc  d                                           ; $4717: $9a
	ld   [hl], h                                     ; $4718: $74
	ld   a, b                                        ; $4719: $78
	ld   d, d                                        ; $471a: $52
	ld   sp, hl                                      ; $471b: $f9
	dec  c                                           ; $471c: $0d
	nop                                              ; $471d: $00
	ld   a, [bc]                                     ; $471e: $0a
	rrca                                             ; $471f: $0f
	nop                                              ; $4720: $00
	ld   bc, $ff01                                   ; $4721: $01 $01 $ff
	rst  $38                                         ; $4724: $ff
	rst  $38                                         ; $4725: $ff
	rst  $38                                         ; $4726: $ff
	rst  $38                                         ; $4727: $ff
	rst  $38                                         ; $4728: $ff
	rst  $38                                         ; $4729: $ff
	rst  $38                                         ; $472a: $ff
	rst  $38                                         ; $472b: $ff
	rst  $38                                         ; $472c: $ff
	ld   sp, hl                                      ; $472d: $f9
	ld   sp, hl                                      ; $472e: $f9
	ld   sp, hl                                      ; $472f: $f9
	dec  c                                           ; $4730: $0d
	nop                                              ; $4731: $00
	ld   a, [bc]                                     ; $4732: $0a
	inc  e                                           ; $4733: $1c
	inc  bc                                          ; $4734: $03
	ld   [bc], a                                     ; $4735: $02
	ld   [bc], a                                     ; $4736: $02
	ld   bc, $6759                                   ; $4737: $01 $59 $67
	adc  l                                           ; $473a: $8d
	ld   e, c                                        ; $473b: $59
	sub  a                                           ; $473c: $97
	ld   d, b                                        ; $473d: $50
	ld   l, b                                        ; $473e: $68
	ld   e, c                                        ; $473f: $59
	ld   [hl], c                                     ; $4740: $71
	ld   [hl], h                                     ; $4741: $74
	sbc  c                                           ; $4742: $99
	dec  c                                           ; $4743: $0d
	sub  $a2                                         ; $4744: $d6 $a2
	push af                                          ; $4746: $f5
	xor  $c0                                         ; $4747: $ee $c0
	ei                                               ; $4749: $fb
	halt                                             ; $474a: $76
	ld   e, b                                        ; $474b: $58
	ld   e, l                                        ; $474c: $5d
	sbc  b                                           ; $474d: $98
	inc  b                                           ; $474e: $04
	sub  d                                           ; $474f: $92
	sbc  a                                           ; $4750: $9f
	dec  c                                           ; $4751: $0d
	nop                                              ; $4752: $00
	ld   a, [bc]                                     ; $4753: $0a
	inc  e                                           ; $4754: $1c
	inc  bc                                          ; $4755: $03
	ld   b, $06                                      ; $4756: $06 $06
	dec  e                                           ; $4758: $1d
	ld   b, b                                        ; $4759: $40
	inc  de                                          ; $475a: $13
	inc  bc                                          ; $475b: $03
	inc  de                                          ; $475c: $13
	ld   bc, $2902                                   ; $475d: $01 $02 $29
	nop                                              ; $4760: $00
	ld   bc, $e3c1                                   ; $4761: $01 $c1 $e3
	ld   h, [hl]                                     ; $4764: $66
	sub  c                                           ; $4765: $91
	ld   a, b                                        ; $4766: $78
	ld   d, d                                        ; $4767: $52
	sbc  a                                           ; $4768: $9f
	dec  c                                           ; $4769: $0d
	ld   [bc], a                                     ; $476a: $02
	rst  $38                                         ; $476b: $ff
	ld   e, a                                        ; $476c: $5f
	ld   l, l                                        ; $476d: $6d
	inc  bc                                          ; $476e: $03
	dec  c                                           ; $476f: $0d
	ld   [bc], a                                     ; $4770: $02
	jp   $ae7d                                       ; $4771: $c3 $7d $ae


	call nz, $ecc2                                   ; $4774: $c4 $c2 $ec
	halt                                             ; $4777: $76
	dec  c                                           ; $4778: $0d
	ld   h, c                                        ; $4779: $61
	ld   a, b                                        ; $477a: $78
	ld   h, e                                        ; $477b: $63
	ld   a, b                                        ; $477c: $78
	ld   d, d                                        ; $477d: $52
	halt                                             ; $477e: $76
	sbc  a                                           ; $477f: $9f
	dec  c                                           ; $4780: $0d
	nop                                              ; $4781: $00
	ld   a, [bc]                                     ; $4782: $0a
	ld   bc, $0b02                                   ; $4783: $01 $02 $0b
	ld   [bc], a                                     ; $4786: $02
	xor  d                                           ; $4787: $aa
	sbc  [hl]                                        ; $4788: $9e
	ld   [bc], a                                     ; $4789: $02
	and  c                                           ; $478a: $a1
	and  b                                           ; $478b: $a0
	ld   [hl], d                                     ; $478c: $72
	ld   e, a                                        ; $478d: $5f
	sbc  c                                           ; $478e: $99
	sub  [hl]                                        ; $478f: $96
	ld   d, h                                        ; $4790: $54
	ld   a, c                                        ; $4791: $79
	sbc  a                                           ; $4792: $9f
	dec  c                                           ; $4793: $0d
	nop                                              ; $4794: $00
	ld   a, [bc]                                     ; $4795: $0a
	dec  c                                           ; $4796: $0d
	nop                                              ; $4797: $00
	nop                                              ; $4798: $00
	rrca                                             ; $4799: $0f
	nop                                              ; $479a: $00
	ld   bc, $1e09                                   ; $479b: $01 $09 $1e
	add  hl, hl                                      ; $479e: $29
	ld   bc, $0000                                   ; $479f: $01 $00 $00
	inc  b                                           ; $47a2: $04
	add  b                                           ; $47a3: $80
	ld   a, a                                        ; $47a4: $7f
	ld   bc, $20ff                                   ; $47a5: $01 $ff $20
	inc  b                                           ; $47a8: $04
	add  b                                           ; $47a9: $80
	add  b                                           ; $47aa: $80
	ld   bc, $2000                                   ; $47ab: $01 $00 $20
	inc  e                                           ; $47ae: $1c
	nop                                              ; $47af: $00
	ld   c, $01                                      ; $47b0: $0e $01
	rrca                                             ; $47b2: $0f
	nop                                              ; $47b3: $00
	ld   bc, $0102                                   ; $47b4: $01 $02 $01
	ld   d, b                                        ; $47b7: $50
	db   $fc                                         ; $47b8: $fc
	rst  $38                                         ; $47b9: $ff
	rst  $38                                         ; $47ba: $ff
	ld   a, b                                        ; $47bb: $78
	and  c                                           ; $47bc: $a1
	ld   l, [hl]                                     ; $47bd: $6e
	ld   e, c                                        ; $47be: $59
	ld   [bc], a                                     ; $47bf: $02
	and  l                                           ; $47c0: $a5
	inc  b                                           ; $47c1: $04
	xor  d                                           ; $47c2: $aa
	ld   a, l                                        ; $47c3: $7d
	dec  c                                           ; $47c4: $0d
	ld   [bc], a                                     ; $47c5: $02
	and  c                                           ; $47c6: $a1
	inc  b                                           ; $47c7: $04
	sbc  [hl]                                        ; $47c8: $9e
	ld   e, d                                        ; $47c9: $5a
	ld   h, a                                        ; $47ca: $67
	ld   e, [hl]                                     ; $47cb: $5e
	sbc  d                                           ; $47cc: $9a
	ld   a, b                                        ; $47cd: $78
	ld   d, d                                        ; $47ce: $52
	ld   l, h                                        ; $47cf: $6c
	rst  $38                                         ; $47d0: $ff
	rst  $38                                         ; $47d1: $ff
	dec  c                                           ; $47d2: $0d
	nop                                              ; $47d3: $00
	ld   a, [bc]                                     ; $47d4: $0a
	inc  d                                           ; $47d5: $14
	ld   b, $01                                      ; $47d6: $06 $01
	rrca                                             ; $47d8: $0f
	ld   b, $02                                      ; $47d9: $06 $02
	ld   bc, $0008                                   ; $47db: $01 $08 $00
	ld   a, [$520d]                                  ; $47de: $fa $0d $52
	sbc  c                                           ; $47e1: $99
	ld   e, c                                        ; $47e2: $59
	ld   a, [$000d]                                  ; $47e3: $fa $0d $00
	ld   a, [bc]                                     ; $47e6: $0a
	rrca                                             ; $47e7: $0f
	nop                                              ; $47e8: $00
	ld   bc, $0a14                                   ; $47e9: $01 $14 $0a
	ld   bc, $7d01                                   ; $47ec: $01 $01 $7d
	ld   d, d                                        ; $47ef: $52
	sbc  [hl]                                        ; $47f0: $9e
	ld   [hl], a                                     ; $47f1: $77
	ld   d, h                                        ; $47f2: $54
	ld   l, h                                        ; $47f3: $6c
	sbc  a                                           ; $47f4: $9f
	dec  c                                           ; $47f5: $0d
	nop                                              ; $47f6: $00
	ld   a, [bc]                                     ; $47f7: $0a
	inc  e                                           ; $47f8: $1c
	ld   b, $02                                      ; $47f9: $06 $02
	ld   [bc], a                                     ; $47fb: $02
	ld   bc, $0008                                   ; $47fc: $01 $08 $00
	sbc  a                                           ; $47ff: $9f
	dec  c                                           ; $4800: $0d
	inc  b                                           ; $4801: $04
	ld   c, c                                        ; $4802: $49
	ld   e, c                                        ; $4803: $59
	inc  b                                           ; $4804: $04
	and  e                                           ; $4805: $a3
	sbc  d                                           ; $4806: $9a
	ld   [hl], h                                     ; $4807: $74
	ld   a, b                                        ; $4808: $78
	ld   d, d                                        ; $4809: $52
	ld   e, c                                        ; $480a: $59
	ld   sp, hl                                      ; $480b: $f9
	dec  c                                           ; $480c: $0d
	nop                                              ; $480d: $00
	ld   a, [bc]                                     ; $480e: $0a
	ld   bc, $6d50                                   ; $480f: $01 $50 $6d
	ld   d, d                                        ; $4812: $52
	halt                                             ; $4813: $76
	ld   a, h                                        ; $4814: $7c
	inc  b                                           ; $4815: $04
	ldh  [$03], a                                    ; $4816: $e0 $03
	dec  hl                                          ; $4818: $2b
	ld   a, [$5b0d]                                  ; $4819: $fa $0d $5b
	ld   a, h                                        ; $481c: $7c
	ld   d, h                                        ; $481d: $54
	ld   a, h                                        ; $481e: $7c
	inc  b                                           ; $481f: $04
	rst  $28                                         ; $4820: $ef
	sbc  [hl]                                        ; $4821: $9e
	ld   e, a                                        ; $4822: $5f
	ld   d, d                                        ; $4823: $52
	ld   h, c                                        ; $4824: $61
	ld   h, a                                        ; $4825: $67
	sbc  c                                           ; $4826: $99
	ld   [hl], c                                     ; $4827: $71
	ld   [hl], h                                     ; $4828: $74
	dec  c                                           ; $4829: $0d
	inc  b                                           ; $482a: $04
	ldh  [$03], a                                    ; $482b: $e0 $03
	dec  hl                                          ; $482d: $2b
	ld   h, l                                        ; $482e: $65
	ld   l, l                                        ; $482f: $6d
	ld   l, [hl]                                     ; $4830: $6e
	sbc  e                                           ; $4831: $9b
	ld   a, [$000d]                                  ; $4832: $fa $0d $00
	ld   a, [bc]                                     ; $4835: $0a
	dec  e                                           ; $4836: $1d
	ld   b, b                                        ; $4837: $40
	ld   d, $03                                      ; $4838: $16 $03
	ld   d, $01                                      ; $483a: $16 $01
	inc  bc                                          ; $483c: $03
	add  hl, hl                                      ; $483d: $29
	nop                                              ; $483e: $00
	ld   bc, $e004                                   ; $483f: $01 $04 $e0
	inc  bc                                          ; $4842: $03
	dec  hl                                          ; $4843: $2b
	sub  d                                           ; $4844: $92
	add  h                                           ; $4845: $84
	sbc  c                                           ; $4846: $99
	ld   a, b                                        ; $4847: $78
	and  c                                           ; $4848: $a1
	ld   [hl], h                                     ; $4849: $74
	sbc  [hl]                                        ; $484a: $9e
	dec  c                                           ; $484b: $0d
	adc  l                                           ; $484c: $8d
	ld   l, e                                        ; $484d: $6b
	ld   h, c                                        ; $484e: $61
	ld   a, b                                        ; $484f: $78
	ld   [hl], c                                     ; $4850: $71
	ld   l, l                                        ; $4851: $6d
	ld   l, d                                        ; $4852: $6a
	ld   a, [$000d]                                  ; $4853: $fa $0d $00
	ld   a, [bc]                                     ; $4856: $0a
	inc  e                                           ; $4857: $1c
	ld   b, $00                                      ; $4858: $06 $00
	nop                                              ; $485a: $00
	ld   bc, $9a61                                   ; $485b: $01 $61 $9a
	ld   e, c                                        ; $485e: $59
	sub  a                                           ; $485f: $97
	ld   a, l                                        ; $4860: $7d
	ld   [bc], a                                     ; $4861: $02
	and  c                                           ; $4862: $a1
	and  b                                           ; $4863: $a0
	ld   [hl], d                                     ; $4864: $72
	ld   e, a                                        ; $4865: $5f
	sbc  e                                           ; $4866: $9b
	sub  [hl]                                        ; $4867: $96
	sbc  a                                           ; $4868: $9f
	dec  c                                           ; $4869: $0d
	ld   h, [hl]                                     ; $486a: $66
	sub  c                                           ; $486b: $91
	ld   d, b                                        ; $486c: $50
	ld   a, b                                        ; $486d: $78
	sbc  a                                           ; $486e: $9f
	dec  c                                           ; $486f: $0d
	nop                                              ; $4870: $00
	ld   a, [bc]                                     ; $4871: $0a
	dec  c                                           ; $4872: $0d
	nop                                              ; $4873: $00
	nop                                              ; $4874: $00
	rrca                                             ; $4875: $0f
	nop                                              ; $4876: $00
	ld   bc, $1e09                                   ; $4877: $01 $09 $1e
	add  hl, hl                                      ; $487a: $29
	ld   bc, $0000                                   ; $487b: $01 $00 $00
	inc  b                                           ; $487e: $04
	add  b                                           ; $487f: $80
	ld   b, b                                        ; $4880: $40
	ld   bc, $20ff                                   ; $4881: $01 $ff $20
	inc  b                                           ; $4884: $04
	add  b                                           ; $4885: $80
	ld   b, c                                        ; $4886: $41
	ld   bc, $2000                                   ; $4887: $01 $00 $20
	inc  e                                           ; $488a: $1c
	nop                                              ; $488b: $00
	ld   c, $01                                      ; $488c: $0e $01
	rrca                                             ; $488e: $0f
	nop                                              ; $488f: $00
	ld   bc, $0102                                   ; $4890: $01 $02 $01
	ld   h, e                                        ; $4893: $63
	ld   d, b                                        ; $4894: $50
	sbc  [hl]                                        ; $4895: $9e
	ld   [bc], a                                     ; $4896: $02
	and  l                                           ; $4897: $a5
	inc  b                                           ; $4898: $04
	xor  d                                           ; $4899: $aa
	sub  b                                           ; $489a: $90
	ld   [bc], a                                     ; $489b: $02
	jr   nz, jr_04b_48a2                             ; $489c: $20 $04

	xor  d                                           ; $489e: $aa
	ld   e, d                                        ; $489f: $5a
	dec  b                                           ; $48a0: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48a1: $cf

jr_04b_48a2:
	adc  h                                           ; $48a2: $8c
	sbc  c                                           ; $48a3: $99
	sbc  a                                           ; $48a4: $9f
	dec  c                                           ; $48a5: $0d
	ld   [bc], a                                     ; $48a6: $02
	and  c                                           ; $48a7: $a1
	ld   [bc], a                                     ; $48a8: $02
	ld   a, e                                        ; $48a9: $7b
	ld   d, d                                        ; $48aa: $52
	and  b                                           ; $48ab: $a0
	inc  b                                           ; $48ac: $04
	ld   b, l                                        ; $48ad: $45
	sbc  d                                           ; $48ae: $9a
	ld   [hl], h                                     ; $48af: $74
	ld   e, d                                        ; $48b0: $5a
	and  c                                           ; $48b1: $a1
	ld   a, [hl]                                     ; $48b2: $7e
	sbc  c                                           ; $48b3: $99
	ld   l, h                                        ; $48b4: $6c
	ld   a, [$000d]                                  ; $48b5: $fa $0d $00
	ld   a, [bc]                                     ; $48b8: $0a
	inc  d                                           ; $48b9: $14
	ld   b, $01                                      ; $48ba: $06 $01
	rrca                                             ; $48bc: $0f
	inc  b                                           ; $48bd: $04
	rlca                                             ; $48be: $07
	ld   bc, $526f                                   ; $48bf: $01 $6f $52
	ld   [bc], a                                     ; $48c2: $02
	inc  de                                          ; $48c3: $13
	ld   l, a                                        ; $48c4: $6f
	sub  c                                           ; $48c5: $91
	and  c                                           ; $48c6: $a1
	sbc  [hl]                                        ; $48c7: $9e
	ld   d, d                                        ; $48c8: $52
	sbc  c                                           ; $48c9: $99
	ld   sp, hl                                      ; $48ca: $f9
	dec  c                                           ; $48cb: $0d
	nop                                              ; $48cc: $00
	ld   a, [bc]                                     ; $48cd: $0a
	rrca                                             ; $48ce: $0f
	nop                                              ; $48cf: $00
	ld   bc, $7d01                                   ; $48d0: $01 $01 $7d
	ld   d, d                                        ; $48d3: $52
	sbc  [hl]                                        ; $48d4: $9e
	ld   [hl], a                                     ; $48d5: $77
	ld   d, h                                        ; $48d6: $54
	ld   l, h                                        ; $48d7: $6c
	sbc  a                                           ; $48d8: $9f
	dec  c                                           ; $48d9: $0d
	nop                                              ; $48da: $00
	ld   a, [bc]                                     ; $48db: $0a
	inc  d                                           ; $48dc: $14
	ld   a, [bc]                                     ; $48dd: $0a
	ld   bc, $5a09                                   ; $48de: $01 $09 $5a
	inc  e                                           ; $48e1: $1c
	inc  b                                           ; $48e2: $04
	rlca                                             ; $48e3: $07
	rlca                                             ; $48e4: $07
	ld   bc, $526f                                   ; $48e5: $01 $6f $52
	ld   [bc], a                                     ; $48e8: $02
	inc  de                                          ; $48e9: $13
	ld   l, a                                        ; $48ea: $6f
	sub  c                                           ; $48eb: $91
	and  c                                           ; $48ec: $a1
	dec  c                                           ; $48ed: $0d
	ld   a, b                                        ; $48ee: $78
	ld   a, c                                        ; $48ef: $79
	ld   e, c                                        ; $48f0: $59
	sbc  l                                           ; $48f1: $9d
	ld   h, a                                        ; $48f2: $67
	sbc  d                                           ; $48f3: $9a
	ld   [hl], h                                     ; $48f4: $74
	ld   a, b                                        ; $48f5: $78
	ld   d, d                                        ; $48f6: $52
	ld   sp, hl                                      ; $48f7: $f9
	dec  c                                           ; $48f8: $0d
	nop                                              ; $48f9: $00
	ld   a, [bc]                                     ; $48fa: $0a
	ld   bc, $a5a3                                   ; $48fb: $01 $a3 $a5
	db   $ec                                         ; $48fe: $ec
	cp   d                                           ; $48ff: $ba
	halt                                             ; $4900: $76
	ld   a, h                                        ; $4901: $7c
	sub  d                                           ; $4902: $92
	ld   e, l                                        ; $4903: $5d
	ld   l, e                                        ; $4904: $6b
	ld   e, l                                        ; $4905: $5d
	rst  $38                                         ; $4906: $ff
	rst  $38                                         ; $4907: $ff
	dec  c                                           ; $4908: $0d
	ld   e, e                                        ; $4909: $5b
	ld   a, h                                        ; $490a: $7c
	ld   d, h                                        ; $490b: $54
	ld   a, h                                        ; $490c: $7c
	inc  b                                           ; $490d: $04
	rst  $28                                         ; $490e: $ef
	sbc  [hl]                                        ; $490f: $9e
	and  e                                           ; $4910: $a3
	and  l                                           ; $4911: $a5
	db   $ec                                         ; $4912: $ec
	cp   d                                           ; $4913: $ba
	ld   a, h                                        ; $4914: $7c
	add  [hl]                                        ; $4915: $86
	sub  d                                           ; $4916: $92
	ld   a, c                                        ; $4917: $79
	dec  c                                           ; $4918: $0d
	ld   e, l                                        ; $4919: $5d
	sbc  c                                           ; $491a: $99
	ld   [hl], c                                     ; $491b: $71
	ld   [hl], h                                     ; $491c: $74
	ld   d, d                                        ; $491d: $52
	ld   [hl], c                                     ; $491e: $71
	ld   [hl], h                                     ; $491f: $74
	ld   l, l                                        ; $4920: $6d
	ld   a, h                                        ; $4921: $7c
	ld   a, c                                        ; $4922: $79
	rst  $38                                         ; $4923: $ff
	rst  $38                                         ; $4924: $ff
	dec  c                                           ; $4925: $0d
	nop                                              ; $4926: $00
	ld   a, [bc]                                     ; $4927: $0a
	dec  e                                           ; $4928: $1d
	ld   b, b                                        ; $4929: $40
	inc  d                                           ; $492a: $14
	inc  bc                                          ; $492b: $03
	inc  d                                           ; $492c: $14
	ld   bc, $2903                                   ; $492d: $01 $03 $29
	nop                                              ; $4930: $00
	ld   bc, $526f                                   ; $4931: $01 $6f $52
	ld   [bc], a                                     ; $4934: $02
	inc  de                                          ; $4935: $13
	ld   l, a                                        ; $4936: $6f
	sub  c                                           ; $4937: $91
	and  c                                           ; $4938: $a1
	ld   a, h                                        ; $4939: $7c
	pop  de                                          ; $493a: $d1
	xor  h                                           ; $493b: $ac
	ei                                               ; $493c: $fb
	ld   [hl], c                                     ; $493d: $71
	ld   a, [$000d]                                  ; $493e: $fa $0d $00
	ld   a, [bc]                                     ; $4941: $0a
	dec  b                                           ; $4942: $05
	ld   b, b                                        ; $4943: $40
	ld   d, c                                        ; $4944: $51
	ld   bc, $0000                                   ; $4945: $01 $00 $00
	dec  c                                           ; $4948: $0d
	nop                                              ; $4949: $00
	nop                                              ; $494a: $00
	rrca                                             ; $494b: $0f
	nop                                              ; $494c: $00
	ld   bc, $1e09                                   ; $494d: $01 $09 $1e
	add  hl, hl                                      ; $4950: $29
	ld   bc, $0000                                   ; $4951: $01 $00 $00
	inc  b                                           ; $4954: $04
	add  b                                           ; $4955: $80
	inc  h                                           ; $4956: $24
	ld   bc, $20ff                                   ; $4957: $01 $ff $20
	inc  b                                           ; $495a: $04
	add  b                                           ; $495b: $80
	dec  h                                           ; $495c: $25
	ld   bc, $2000                                   ; $495d: $01 $00 $20
	inc  e                                           ; $4960: $1c
	nop                                              ; $4961: $00
	ld   c, $01                                      ; $4962: $0e $01
	rrca                                             ; $4964: $0f
	nop                                              ; $4965: $00
	ld   bc, $0102                                   ; $4966: $01 $02 $01
	sub  [hl]                                        ; $4969: $96
	ei                                               ; $496a: $fb
	ld   h, l                                        ; $496b: $65
	sbc  [hl]                                        ; $496c: $9e
	inc  b                                           ; $496d: $04
	call nc, Call_04b_7a02                           ; $496e: $d4 $02 $7a
	adc  a                                           ; $4971: $8f
	pop  de                                          ; $4972: $d1
	call nz, $ecc2                                   ; $4973: $c4 $c2 $ec
	ld   l, [hl]                                     ; $4976: $6e
	ld   a, [$020d]                                  ; $4977: $fa $0d $02
	and  l                                           ; $497a: $a5
	inc  b                                           ; $497b: $04
	xor  d                                           ; $497c: $aa
	sub  b                                           ; $497d: $90
	sbc  [hl]                                        ; $497e: $9e
	ld   e, d                                        ; $497f: $5a
	and  c                                           ; $4980: $a1
	ld   a, [hl]                                     ; $4981: $7e
	sbc  c                                           ; $4982: $99
	ld   l, h                                        ; $4983: $6c
	ld   a, [$0dfa]                                  ; $4984: $fa $fa $0d
	nop                                              ; $4987: $00
	ld   a, [bc]                                     ; $4988: $0a
	inc  d                                           ; $4989: $14
	ld   b, $01                                      ; $498a: $06 $01
	rrca                                             ; $498c: $0f
	dec  b                                           ; $498d: $05
	nop                                              ; $498e: $00
	ld   bc, $0008                                   ; $498f: $01 $08 $00
	ld   a, l                                        ; $4992: $7d
	and  c                                           ; $4993: $a1
	sbc  a                                           ; $4994: $9f
	dec  c                                           ; $4995: $0d
	ld   d, d                                        ; $4996: $52
	sbc  c                                           ; $4997: $99
	ld   sp, hl                                      ; $4998: $f9
	dec  c                                           ; $4999: $0d
	nop                                              ; $499a: $00
	ld   a, [bc]                                     ; $499b: $0a
	rrca                                             ; $499c: $0f
	nop                                              ; $499d: $00
	ld   bc, $0a14                                   ; $499e: $01 $14 $0a
	ld   bc, $7d01                                   ; $49a1: $01 $01 $7d
	ld   d, d                                        ; $49a4: $52
	sbc  [hl]                                        ; $49a5: $9e
	ld   [hl], a                                     ; $49a6: $77
	ld   d, h                                        ; $49a7: $54
	ld   l, h                                        ; $49a8: $6c
	sbc  a                                           ; $49a9: $9f
	dec  c                                           ; $49aa: $0d
	nop                                              ; $49ab: $00
	ld   a, [bc]                                     ; $49ac: $0a
	inc  e                                           ; $49ad: $1c
	dec  b                                           ; $49ae: $05
	rlca                                             ; $49af: $07
	rlca                                             ; $49b0: $07
	ld   bc, $0008                                   ; $49b1: $01 $08 $00
	ld   a, l                                        ; $49b4: $7d
	and  c                                           ; $49b5: $a1
	sbc  a                                           ; $49b6: $9f
	dec  c                                           ; $49b7: $0d
	ld   a, b                                        ; $49b8: $78
	and  c                                           ; $49b9: $a1
	ld   e, c                                        ; $49ba: $59
	inc  b                                           ; $49bb: $04
	and  e                                           ; $49bc: $a3
	sbc  d                                           ; $49bd: $9a
	ld   [hl], h                                     ; $49be: $74
	add  [hl]                                        ; $49bf: $86
	and  c                                           ; $49c0: $a1
	ld   sp, hl                                      ; $49c1: $f9
	dec  c                                           ; $49c2: $0d
	nop                                              ; $49c3: $00
	ld   a, [bc]                                     ; $49c4: $0a
	ld   bc, wRandomNumStruct                                   ; $49c5: $01 $a7 $c2
	halt                                             ; $49c8: $76
	ld   a, h                                        ; $49c9: $7c
	inc  b                                           ; $49ca: $04
	ldh  [$03], a                                    ; $49cb: $e0 $03
	dec  hl                                          ; $49cd: $2b
	sub  d                                           ; $49ce: $92
	add  h                                           ; $49cf: $84
	ld   [hl], c                                     ; $49d0: $71
	ld   l, l                                        ; $49d1: $6d
	sub  d                                           ; $49d2: $92
	sbc  e                                           ; $49d3: $9b
	sbc  a                                           ; $49d4: $9f
	dec  c                                           ; $49d5: $0d
	dec  b                                           ; $49d6: $05
	ld   b, l                                        ; $49d7: $45
	inc  b                                           ; $49d8: $04
	xor  d                                           ; $49d9: $aa
	ld   a, h                                        ; $49da: $7c
	inc  b                                           ; $49db: $04
	rst  $28                                         ; $49dc: $ef
	sbc  [hl]                                        ; $49dd: $9e
	and  a                                           ; $49de: $a7
	jp   nz, $047c                                   ; $49df: $c2 $7c $04

	sub  l                                           ; $49e2: $95
	ld   [bc], a                                     ; $49e3: $02
	ld   hl, $0d79                                   ; $49e4: $21 $79 $0d
	dec  b                                           ; $49e7: $05
	db   $10                                         ; $49e8: $10
	sbc  c                                           ; $49e9: $99
	ld   [bc], a                                     ; $49ea: $02
	sbc  l                                           ; $49eb: $9d
	ld   d, h                                        ; $49ec: $54
	ld   [hl], h                                     ; $49ed: $74
	ld   l, l                                        ; $49ee: $6d
	sub  d                                           ; $49ef: $92
	and  c                                           ; $49f0: $a1
	sbc  a                                           ; $49f1: $9f
	dec  c                                           ; $49f2: $0d
	nop                                              ; $49f3: $00
	ld   a, [bc]                                     ; $49f4: $0a
	dec  e                                           ; $49f5: $1d
	ld   b, b                                        ; $49f6: $40
	dec  d                                           ; $49f7: $15
	inc  bc                                          ; $49f8: $03
	dec  d                                           ; $49f9: $15
	ld   bc, $2903                                   ; $49fa: $01 $03 $29
	nop                                              ; $49fd: $00
	ld   bc, $e004                                   ; $49fe: $01 $04 $e0
	inc  bc                                          ; $4a01: $03
	dec  hl                                          ; $4a02: $2b
	and  b                                           ; $4a03: $a0
	sub  d                                           ; $4a04: $92
	add  h                                           ; $4a05: $84
	sbc  c                                           ; $4a06: $99
	and  c                                           ; $4a07: $a1
	ld   a, l                                        ; $4a08: $7d
	dec  c                                           ; $4a09: $0d
	inc  bc                                          ; $4a0a: $03
	add  d                                           ; $4a0b: $82
	halt                                             ; $4a0c: $76
	ld   h, l                                        ; $4a0d: $65
	ld   [hl], h                                     ; $4a0e: $74
	inc  bc                                          ; $4a0f: $03
	ld   l, c                                        ; $4a10: $69
	inc  bc                                          ; $4a11: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a12: $cf
	sub  d                                           ; $4a13: $92
	ld   [hl], l                                     ; $4a14: $75
	sbc  a                                           ; $4a15: $9f
	dec  c                                           ; $4a16: $0d
	ld   h, c                                        ; $4a17: $61
	sbc  d                                           ; $4a18: $9a
	ld   e, c                                        ; $4a19: $59
	sub  a                                           ; $4a1a: $97
	ld   a, l                                        ; $4a1b: $7d
	ld   [bc], a                                     ; $4a1c: $02
	and  c                                           ; $4a1d: $a1
	ld   d, d                                        ; $4a1e: $52
	ld   [hl], d                                     ; $4a1f: $72
	ld   e, a                                        ; $4a20: $5f
	ld   [hl], h                                     ; $4a21: $74
	ld   a, b                                        ; $4a22: $78
	sbc  a                                           ; $4a23: $9f
	dec  c                                           ; $4a24: $0d
	nop                                              ; $4a25: $00
	ld   a, [bc]                                     ; $4a26: $0a
	inc  e                                           ; $4a27: $1c
	dec  b                                           ; $4a28: $05
	ld   bc, $0101                                   ; $4a29: $01 $01 $01
	adc  c                                           ; $4a2c: $89
	ld   a, b                                        ; $4a2d: $78
	sbc  [hl]                                        ; $4a2e: $9e
	adc  h                                           ; $4a2f: $8c
	ld   l, l                                        ; $4a30: $6d
	ld   a, b                                        ; $4a31: $78
	sbc  a                                           ; $4a32: $9f
	dec  c                                           ; $4a33: $0d
	nop                                              ; $4a34: $00
	ld   a, [bc]                                     ; $4a35: $0a
	dec  c                                           ; $4a36: $0d
	nop                                              ; $4a37: $00
	nop                                              ; $4a38: $00
	rrca                                             ; $4a39: $0f
	nop                                              ; $4a3a: $00
	ld   bc, $1e09                                   ; $4a3b: $01 $09 $1e
	add  hl, hl                                      ; $4a3e: $29
	ld   bc, $0000                                   ; $4a3f: $01 $00 $00
	inc  b                                           ; $4a42: $04
	add  b                                           ; $4a43: $80
	add  hl, de                                      ; $4a44: $19
	ld   bc, $20ff                                   ; $4a45: $01 $ff $20
	inc  b                                           ; $4a48: $04
	add  b                                           ; $4a49: $80
	ld   a, [de]                                     ; $4a4a: $1a
	ld   bc, $2000                                   ; $4a4b: $01 $00 $20
	inc  e                                           ; $4a4e: $1c
	nop                                              ; $4a4f: $00
	ld   c, $01                                      ; $4a50: $0e $01
	rrca                                             ; $4a52: $0f
	nop                                              ; $4a53: $00
	ld   bc, $0102                                   ; $4a54: $01 $02 $01
	sub  [hl]                                        ; $4a57: $96
	ld   h, l                                        ; $4a58: $65
	sbc  [hl]                                        ; $4a59: $9e
	ld   d, d                                        ; $4a5a: $52
	ld   d, d                                        ; $4a5b: $52
	inc  b                                           ; $4a5c: $04
	inc  de                                          ; $4a5d: $13
	ld   [bc], a                                     ; $4a5e: $02
	and  c                                           ; $4a5f: $a1
	ld   l, [hl]                                     ; $4a60: $6e
	ld   a, [$020d]                                  ; $4a61: $fa $0d $02
	and  l                                           ; $4a64: $a5
	inc  b                                           ; $4a65: $04
	xor  d                                           ; $4a66: $aa
	sub  b                                           ; $4a67: $90
	sbc  [hl]                                        ; $4a68: $9e
	ld   e, d                                        ; $4a69: $5a
	and  c                                           ; $4a6a: $a1
	ld   a, [hl]                                     ; $4a6b: $7e
	sbc  c                                           ; $4a6c: $99
	ld   l, h                                        ; $4a6d: $6c
	ld   a, [$0dfa]                                  ; $4a6e: $fa $fa $0d
	nop                                              ; $4a71: $00
	ld   a, [bc]                                     ; $4a72: $0a
	inc  d                                           ; $4a73: $14
	ld   b, $01                                      ; $4a74: $06 $01
	rrca                                             ; $4a76: $0f
	ld   [bc], a                                     ; $4a77: $02
	rlca                                             ; $4a78: $07
	ld   bc, $0008                                   ; $4a79: $01 $08 $00
	ld   h, e                                        ; $4a7c: $63
	and  c                                           ; $4a7d: $a1
	sbc  [hl]                                        ; $4a7e: $9e
	ld   d, d                                        ; $4a7f: $52
	adc  h                                           ; $4a80: $8c
	ld   h, a                                        ; $4a81: $67
	ld   sp, hl                                      ; $4a82: $f9
	dec  c                                           ; $4a83: $0d
	nop                                              ; $4a84: $00
	ld   a, [bc]                                     ; $4a85: $0a
	rrca                                             ; $4a86: $0f
	nop                                              ; $4a87: $00
	ld   bc, $0a14                                   ; $4a88: $01 $14 $0a
	ld   bc, $7d01                                   ; $4a8b: $01 $01 $7d
	ld   d, d                                        ; $4a8e: $52
	sbc  [hl]                                        ; $4a8f: $9e
	ld   [hl], a                                     ; $4a90: $77
	ld   d, h                                        ; $4a91: $54
	ld   l, h                                        ; $4a92: $6c
	sbc  a                                           ; $4a93: $9f
	dec  c                                           ; $4a94: $0d
	nop                                              ; $4a95: $00
	ld   a, [bc]                                     ; $4a96: $0a
	inc  e                                           ; $4a97: $1c
	ld   [bc], a                                     ; $4a98: $02
	ld   [bc], a                                     ; $4a99: $02
	ld   [bc], a                                     ; $4a9a: $02
	ld   bc, $956f                                   ; $4a9b: $01 $6f $95
	ld   [hl], c                                     ; $4a9e: $71
	halt                                             ; $4a9f: $76
	ld   [$6300], sp                                 ; $4aa0: $08 $00 $63
	and  c                                           ; $4aa3: $a1
	sbc  a                                           ; $4aa4: $9f
	dec  c                                           ; $4aa5: $0d
	sbc  l                                           ; $4aa6: $9d
	ld   l, l                                        ; $4aa7: $6d
	ld   e, l                                        ; $4aa8: $5d
	ld   h, l                                        ; $4aa9: $65
	halt                                             ; $4aaa: $76
	ld   a, h                                        ; $4aab: $7c
	inc  b                                           ; $4aac: $04
	ldh  [$03], a                                    ; $4aad: $e0 $03
	dec  hl                                          ; $4aaf: $2b
	dec  c                                           ; $4ab0: $0d
	inc  b                                           ; $4ab1: $04
	and  e                                           ; $4ab2: $a3
	sbc  d                                           ; $4ab3: $9a
	ld   [hl], h                                     ; $4ab4: $74
	adc  h                                           ; $4ab5: $8c
	ld   h, l                                        ; $4ab6: $65
	ld   l, l                                        ; $4ab7: $6d
	sbc  l                                           ; $4ab8: $9d
	ld   a, e                                        ; $4ab9: $7b
	ld   sp, hl                                      ; $4aba: $f9
	dec  c                                           ; $4abb: $0d
	nop                                              ; $4abc: $00
	ld   a, [bc]                                     ; $4abd: $0a
	ld   bc, $4505                                   ; $4abe: $01 $05 $45
	inc  b                                           ; $4ac1: $04
	rst  $28                                         ; $4ac2: $ef
	sbc  [hl]                                        ; $4ac3: $9e
	inc  bc                                          ; $4ac4: $03
	ld   e, c                                        ; $4ac5: $59
	ld   [bc], a                                     ; $4ac6: $02
	ld   [hl-], a                                    ; $4ac7: $32
	ld   a, h                                        ; $4ac8: $7c
	inc  bc                                          ; $4ac9: $03
	db   $fd                                         ; $4aca: $fd
	inc  bc                                          ; $4acb: $03
	ld   l, l                                        ; $4acc: $6d
	and  b                                           ; $4acd: $a0
	ld   h, a                                        ; $4ace: $67
	sbc  c                                           ; $4acf: $99
	ld   e, c                                        ; $4ad0: $59
	sub  a                                           ; $4ad1: $97
	dec  c                                           ; $4ad2: $0d
	inc  bc                                          ; $4ad3: $03
	ld   e, c                                        ; $4ad4: $59
	ld   [bc], a                                     ; $4ad5: $02
	ld   [hl-], a                                    ; $4ad6: $32
	inc  b                                           ; $4ad7: $04
	ld   a, d                                        ; $4ad8: $7a
	ld   a, c                                        ; $4ad9: $79
	ld   e, l                                        ; $4ada: $5d
	sbc  c                                           ; $4adb: $99
	sub  [hl]                                        ; $4adc: $96
	ld   d, h                                        ; $4add: $54
	ld   a, c                                        ; $4ade: $79
	dec  c                                           ; $4adf: $0d
	ld   [bc], a                                     ; $4ae0: $02
	sbc  l                                           ; $4ae1: $9d
	ld   d, d                                        ; $4ae2: $52
	adc  h                                           ; $4ae3: $8c
	ld   h, l                                        ; $4ae4: $65
	ld   l, l                                        ; $4ae5: $6d
	sbc  l                                           ; $4ae6: $9d
	sub  [hl]                                        ; $4ae7: $96
	ld   a, e                                        ; $4ae8: $7b
	sbc  a                                           ; $4ae9: $9f
	dec  c                                           ; $4aea: $0d
	nop                                              ; $4aeb: $00
	ld   a, [bc]                                     ; $4aec: $0a
	dec  e                                           ; $4aed: $1d
	ld   b, b                                        ; $4aee: $40
	ld   [de], a                                     ; $4aef: $12
	inc  bc                                          ; $4af0: $03
	ld   [de], a                                     ; $4af1: $12
	ld   bc, $2903                                   ; $4af2: $01 $03 $29
	nop                                              ; $4af5: $00
	ld   bc, $6d9d                                   ; $4af6: $01 $9d $6d
	ld   e, l                                        ; $4af9: $5d
	ld   h, l                                        ; $4afa: $65
	halt                                             ; $4afb: $76
	ld   a, h                                        ; $4afc: $7c
	inc  b                                           ; $4afd: $04
	ldh  [$03], a                                    ; $4afe: $e0 $03
	dec  hl                                          ; $4b00: $2b
	and  b                                           ; $4b01: $a0
	dec  c                                           ; $4b02: $0d
	sub  d                                           ; $4b03: $92
	add  h                                           ; $4b04: $84
	sbc  c                                           ; $4b05: $99
	ld   a, b                                        ; $4b06: $78
	and  c                                           ; $4b07: $a1
	ld   [hl], h                                     ; $4b08: $74
	sbc  [hl]                                        ; $4b09: $9e
	inc  bc                                          ; $4b0a: $03
	ld   l, c                                        ; $4b0b: $69
	inc  bc                                          ; $4b0c: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b0d: $cf
	ld   [hl], l                                     ; $4b0e: $75
	ld   h, a                                        ; $4b0f: $67
	sbc  l                                           ; $4b10: $9d
	ld   a, [$040d]                                  ; $4b11: $fa $0d $04
	ld   e, h                                        ; $4b14: $5c
	ld   b, $c4                                      ; $4b15: $06 $c4
	ld   a, b                                        ; $4b17: $78
	ld   h, e                                        ; $4b18: $63
	ld   d, d                                        ; $4b19: $52
	sbc  a                                           ; $4b1a: $9f
	dec  c                                           ; $4b1b: $0d
	nop                                              ; $4b1c: $00
	ld   a, [bc]                                     ; $4b1d: $0a
	inc  e                                           ; $4b1e: $1c
	ld   [bc], a                                     ; $4b1f: $02
	rlca                                             ; $4b20: $07
	rlca                                             ; $4b21: $07
	ld   bc, $9a61                                   ; $4b22: $01 $61 $9a
	ld   e, c                                        ; $4b25: $59
	sub  a                                           ; $4b26: $97
	ld   a, l                                        ; $4b27: $7d
	ld   [bc], a                                     ; $4b28: $02
	and  c                                           ; $4b29: $a1
	and  b                                           ; $4b2a: $a0
	ld   [hl], d                                     ; $4b2b: $72
	ld   e, a                                        ; $4b2c: $5f
	ld   a, b                                        ; $4b2d: $78
	ld   h, e                                        ; $4b2e: $63
	ld   d, d                                        ; $4b2f: $52
	sbc  a                                           ; $4b30: $9f
	dec  c                                           ; $4b31: $0d
	sbc  l                                           ; $4b32: $9d
	ld   e, c                                        ; $4b33: $59
	sbc  b                                           ; $4b34: $98
	adc  h                                           ; $4b35: $8c
	ld   h, l                                        ; $4b36: $65
	ld   l, l                                        ; $4b37: $6d
	sbc  l                                           ; $4b38: $9d
	ld   a, e                                        ; $4b39: $7b
	ld   sp, hl                                      ; $4b3a: $f9
	dec  c                                           ; $4b3b: $0d
	ld   [hl], l                                     ; $4b3c: $75
	ld   a, l                                        ; $4b3d: $7d
	sbc  [hl]                                        ; $4b3e: $9e
	inc  bc                                          ; $4b3f: $03
	add  e                                           ; $4b40: $83
	dec  b                                           ; $4b41: $05
	dec  c                                           ; $4b42: $0d
	rst  $38                                         ; $4b43: $ff
	rst  $38                                         ; $4b44: $ff
	dec  c                                           ; $4b45: $0d
	nop                                              ; $4b46: $00
	ld   a, [bc]                                     ; $4b47: $0a
	dec  c                                           ; $4b48: $0d
	nop                                              ; $4b49: $00
	nop                                              ; $4b4a: $00
	rrca                                             ; $4b4b: $0f
	nop                                              ; $4b4c: $00
	ld   bc, $1e09                                   ; $4b4d: $01 $09 $1e
	add  hl, hl                                      ; $4b50: $29
	ld   bc, $0000                                   ; $4b51: $01 $00 $00
	ld   c, $41                                      ; $4b54: $0e $41
	rrca                                             ; $4b56: $0f
	nop                                              ; $4b57: $00
	ld   bc, $1c02                                   ; $4b58: $01 $02 $1c
	add  hl, bc                                      ; $4b5b: $09
	nop                                              ; $4b5c: $00
	nop                                              ; $4b5d: $00
	ld   bc, $0008                                   ; $4b5e: $01 $08 $00
	ld   e, l                                        ; $4b61: $5d
	and  c                                           ; $4b62: $a1
	ld   h, [hl]                                     ; $4b63: $66
	sub  c                                           ; $4b64: $91
	ld   a, b                                        ; $4b65: $78
	ld   d, d                                        ; $4b66: $52
	ld   e, c                                        ; $4b67: $59
	sbc  a                                           ; $4b68: $9f
	dec  c                                           ; $4b69: $0d
	ld   a, b                                        ; $4b6a: $78
	ld   a, c                                        ; $4b6b: $79
	ld   e, c                                        ; $4b6c: $59
	inc  b                                           ; $4b6d: $04
	di                                               ; $4b6e: $f3
	ld   e, c                                        ; $4b6f: $59
	ld   d, d                                        ; $4b70: $52
	ld   sp, hl                                      ; $4b71: $f9
	dec  c                                           ; $4b72: $0d
	nop                                              ; $4b73: $00
	ld   a, [bc]                                     ; $4b74: $0a
	add  hl, de                                      ; $4b75: $19
	dec  b                                           ; $4b76: $05
	ld   [bc], a                                     ; $4b77: $02
	inc  b                                           ; $4b78: $04
	ld   a, [bc]                                     ; $4b79: $0a
	ld   [bc], a                                     ; $4b7a: $02
	nop                                              ; $4b7b: $00
	ld   e, c                                        ; $4b7c: $59
	sub  a                                           ; $4b7d: $97
	ld   a, h                                        ; $4b7e: $7c
	inc  b                                           ; $4b7f: $04
	ld   d, a                                        ; $4b80: $57
	inc  b                                           ; $4b81: $04
	ld   h, e                                        ; $4b82: $63
	and  b                                           ; $4b83: $a0
	ld   [bc], a                                     ; $4b84: $02
	jp   nz, $005d                                   ; $4b85: $c2 $5d $00

	nop                                              ; $4b88: $00
	inc  bc                                          ; $4b89: $03
	ld   l, l                                        ; $4b8a: $6d
	dec  b                                           ; $4b8b: $05
	add  hl, de                                      ; $4b8c: $19
	ld   a, h                                        ; $4b8d: $7c
	and  e                                           ; $4b8e: $a3
	jp   z, $a5d1                                    ; $4b8f: $ca $d1 $a5

	cp   d                                           ; $4b92: $ba
	and  b                                           ; $4b93: $a0
	ld   [bc], a                                     ; $4b94: $02
	jp   nz, $005d                                   ; $4b95: $c2 $5d $00

	ld   bc, $8b07                                   ; $4b98: $01 $07 $8b
	ld   bc, $0302                                   ; $4b9b: $01 $02 $03
	ld   bc, $2000                                   ; $4b9e: $01 $00 $20
	nop                                              ; $4ba1: $00
	rlca                                             ; $4ba2: $07
	ld   c, c                                        ; $4ba3: $49
	ld   a, [bc]                                     ; $4ba4: $0a
	ld   [bc], a                                     ; $4ba5: $02
	inc  bc                                          ; $4ba6: $03
	ld   bc, $2001                                   ; $4ba7: $01 $01 $20
	nop                                              ; $4baa: $00
	ld   b, $5a                                      ; $4bab: $06 $5a
	nop                                              ; $4bad: $00
	rrca                                             ; $4bae: $0f
	nop                                              ; $4baf: $00
	ld   bc, $5201                                   ; $4bb0: $01 $01 $52
	ld   d, [hl]                                     ; $4bb3: $56
	rst  $38                                         ; $4bb4: $ff
	rst  $38                                         ; $4bb5: $ff
	sbc  a                                           ; $4bb6: $9f
	dec  c                                           ; $4bb7: $0d
	halt                                             ; $4bb8: $76
	ld   e, l                                        ; $4bb9: $5d
	ld   a, c                                        ; $4bba: $79
	inc  b                                           ; $4bbb: $04
	di                                               ; $4bbc: $f3
	ld   [bc], a                                     ; $4bbd: $02
	jp   Jump_04b_5276                               ; $4bbe: $c3 $76 $52


	ld   d, h                                        ; $4bc1: $54
	sbc  l                                           ; $4bc2: $9d
	ld   e, a                                        ; $4bc3: $5f
	ld   [hl], l                                     ; $4bc4: $75
	ld   a, l                                        ; $4bc5: $7d
	rst  $38                                         ; $4bc6: $ff
	sbc  a                                           ; $4bc7: $9f
	dec  c                                           ; $4bc8: $0d
	nop                                              ; $4bc9: $00
	ld   a, [bc]                                     ; $4bca: $0a
	rlca                                             ; $4bcb: $07
	rst  JumpTable                                         ; $4bcc: $df
	nop                                              ; $4bcd: $00
	inc  bc                                          ; $4bce: $03
	jr   nz, jr_04b_4bd2                             ; $4bcf: $20 $01

	ld   h, h                                        ; $4bd1: $64

jr_04b_4bd2:
	inc  hl                                          ; $4bd2: $23
	nop                                              ; $4bd3: $00
	rrca                                             ; $4bd4: $0f
	add  hl, bc                                      ; $4bd5: $09
	nop                                              ; $4bd6: $00
	ld   bc, $546b                                   ; $4bd7: $01 $6b $54
	ld   e, c                                        ; $4bda: $59
	rst  $38                                         ; $4bdb: $ff
	rst  $38                                         ; $4bdc: $ff
	adc  h                                           ; $4bdd: $8c
	ld   d, b                                        ; $4bde: $50
	sbc  [hl]                                        ; $4bdf: $9e
	dec  c                                           ; $4be0: $0d
	ld   a, b                                        ; $4be1: $78
	ld   a, c                                        ; $4be2: $79
	ld   e, c                                        ; $4be3: $59
	ld   [bc], a                                     ; $4be4: $02
	ld   a, [de]                                     ; $4be5: $1a
	dec  b                                           ; $4be6: $05
	ldh  a, [$5a]                                    ; $4be7: $f0 $5a
	ld   d, b                                        ; $4be9: $50
	sbc  c                                           ; $4bea: $99
	ld   a, b                                        ; $4beb: $78
	sub  a                                           ; $4bec: $97
	dec  c                                           ; $4bed: $0d
	ld   d, d                                        ; $4bee: $52
	ld   [hl], d                                     ; $4bef: $72
	ld   [hl], l                                     ; $4bf0: $75
	sub  b                                           ; $4bf1: $90
	dec  b                                           ; $4bf2: $05
	db   $10                                         ; $4bf3: $10
	sbc  c                                           ; $4bf4: $99
	halt                                             ; $4bf5: $76
	ld   d, d                                        ; $4bf6: $52
	ld   d, d                                        ; $4bf7: $52
	sbc  a                                           ; $4bf8: $9f
	dec  c                                           ; $4bf9: $0d
	nop                                              ; $4bfa: $00
	ld   a, [bc]                                     ; $4bfb: $0a
	rrca                                             ; $4bfc: $0f
	nop                                              ; $4bfd: $00
	ld   bc, $7d01                                   ; $4bfe: $01 $01 $7d
	rst  $38                                         ; $4c01: $ff
	rst  $38                                         ; $4c02: $ff
	ld   a, l                                        ; $4c03: $7d
	ld   d, d                                        ; $4c04: $52
	sbc  a                                           ; $4c05: $9f
	dec  c                                           ; $4c06: $0d
	ld   d, b                                        ; $4c07: $50
	sbc  b                                           ; $4c08: $98
	ld   e, d                                        ; $4c09: $5a
	halt                                             ; $4c0a: $76
	ld   d, h                                        ; $4c0b: $54
	ld   h, d                                        ; $4c0c: $62
	ld   h, h                                        ; $4c0d: $64
	ld   d, d                                        ; $4c0e: $52
	adc  h                                           ; $4c0f: $8c
	ld   h, a                                        ; $4c10: $67
	sbc  a                                           ; $4c11: $9f
	dec  c                                           ; $4c12: $0d
	nop                                              ; $4c13: $00
	ld   a, [bc]                                     ; $4c14: $0a
	rrca                                             ; $4c15: $0f
	add  hl, bc                                      ; $4c16: $09
	nop                                              ; $4c17: $00
	ld   bc, $9a6b                                   ; $4c18: $01 $6b $9a
	ld   h, [hl]                                     ; $4c1b: $66
	sub  c                                           ; $4c1c: $91
	sbc  [hl]                                        ; $4c1d: $9e
	dec  b                                           ; $4c1e: $05
	ld   [hl], e                                     ; $4c1f: $73
	sub  b                                           ; $4c20: $90
	inc  bc                                          ; $4c21: $03
	dec  c                                           ; $4c22: $0d
	ld   [bc], a                                     ; $4c23: $02
	jp   Jump_04b_505a                               ; $4c24: $c3 $5a $50


	sbc  c                                           ; $4c27: $99
	ld   e, c                                        ; $4c28: $59
	sub  a                                           ; $4c29: $97
	dec  c                                           ; $4c2a: $0d
	ld   h, c                                        ; $4c2b: $61
	sbc  d                                           ; $4c2c: $9a
	ld   [hl], l                                     ; $4c2d: $75
	sbc  a                                           ; $4c2e: $9f
	dec  c                                           ; $4c2f: $0d
	nop                                              ; $4c30: $00
	ld   a, [bc]                                     ; $4c31: $0a
	nop                                              ; $4c32: $00
	inc  e                                           ; $4c33: $1c
	add  hl, bc                                      ; $4c34: $09
	dec  b                                           ; $4c35: $05
	ld   a, [bc]                                     ; $4c36: $0a
	ld   bc, $0008                                   ; $4c37: $01 $08 $00
	ld   e, l                                        ; $4c3a: $5d
	and  c                                           ; $4c3b: $a1
	sbc  a                                           ; $4c3c: $9f
	dec  c                                           ; $4c3d: $0d
	ld   a, b                                        ; $4c3e: $78
	and  c                                           ; $4c3f: $a1
	ld   l, [hl]                                     ; $4c40: $6e
	ld   e, c                                        ; $4c41: $59
	ld   [bc], a                                     ; $4c42: $02
	ld   [hl], d                                     ; $4c43: $72
	inc  bc                                          ; $4c44: $03
	dec  bc                                          ; $4c45: $0b
	ld   e, d                                        ; $4c46: $5a
	ld   [bc], a                                     ; $4c47: $02
	jr   z, jr_04b_4c9c                              ; $4c48: $28 $52

	ld   l, h                                        ; $4c4a: $6c
	sbc  a                                           ; $4c4b: $9f
	dec  c                                           ; $4c4c: $0d
	nop                                              ; $4c4d: $00
	ld   a, [bc]                                     ; $4c4e: $0a
	inc  e                                           ; $4c4f: $1c
	add  hl, bc                                      ; $4c50: $09
	nop                                              ; $4c51: $00
	nop                                              ; $4c52: $00
	ld   bc, $a15a                                   ; $4c53: $01 $5a $a1
	ld   a, [hl]                                     ; $4c56: $7e
	sbc  c                                           ; $4c57: $99
	ld   a, h                                        ; $4c58: $7c
	sub  b                                           ; $4c59: $90
	ld   d, d                                        ; $4c5a: $52
	ld   d, d                                        ; $4c5b: $52
	ld   e, d                                        ; $4c5c: $5a
	sbc  [hl]                                        ; $4c5d: $9e
	dec  c                                           ; $4c5e: $0d
	ld   l, l                                        ; $4c5f: $6d
	adc  h                                           ; $4c60: $8c
	ld   a, c                                        ; $4c61: $79
	ld   a, l                                        ; $4c62: $7d
	inc  bc                                          ; $4c63: $03
	and  a                                           ; $4c64: $a7
	adc  l                                           ; $4c65: $8d
	and  b                                           ; $4c66: $a0
	halt                                             ; $4c67: $76
	sub  a                                           ; $4c68: $97
	ld   a, b                                        ; $4c69: $78
	ld   d, d                                        ; $4c6a: $52
	halt                                             ; $4c6b: $76
	dec  c                                           ; $4c6c: $0d
	inc  b                                           ; $4c6d: $04
	dec  c                                           ; $4c6e: $0d
	ld   e, d                                        ; $4c6f: $5a
	sub  b                                           ; $4c70: $90
	ld   l, l                                        ; $4c71: $6d
	ld   a, b                                        ; $4c72: $78
	ld   d, d                                        ; $4c73: $52
	ld   l, h                                        ; $4c74: $6c
	sbc  a                                           ; $4c75: $9f
	dec  c                                           ; $4c76: $0d
	nop                                              ; $4c77: $00
	ld   a, [bc]                                     ; $4c78: $0a
	ld   bc, $0a04                                   ; $4c79: $01 $04 $0a
	ld   [bc], a                                     ; $4c7c: $02
	nop                                              ; $4c7d: $00
	ld   a, c                                        ; $4c7e: $79
	halt                                             ; $4c7f: $76
	ld   [hl], c                                     ; $4c80: $71
	ld   [hl], h                                     ; $4c81: $74
	ld   a, l                                        ; $4c82: $7d
	inc  bc                                          ; $4c83: $03
	sub  h                                           ; $4c84: $94
	dec  b                                           ; $4c85: $05
	inc  sp                                          ; $4c86: $33
	ld   [bc], a                                     ; $4c87: $02
	ld   l, b                                        ; $4c88: $68
	dec  b                                           ; $4c89: $05
	ld   de, $0d90                                   ; $4c8a: $11 $90 $0d
	inc  b                                           ; $4c8d: $04
	ld   c, $02                                      ; $4c8e: $0e $02
	jp   $0378                                       ; $4c90: $c3 $78 $03


	dec  c                                           ; $4c93: $0d
	ld   [bc], a                                     ; $4c94: $02
	jp   Jump_04b_547c                               ; $4c95: $c3 $7c $54


	ld   l, a                                        ; $4c98: $6f
	ld   l, [hl]                                     ; $4c99: $6e
	ld   e, c                                        ; $4c9a: $59
	sub  a                                           ; $4c9b: $97

jr_04b_4c9c:
	ld   a, b                                        ; $4c9c: $78
	sbc  a                                           ; $4c9d: $9f
	dec  c                                           ; $4c9e: $0d
	nop                                              ; $4c9f: $00
	ld   a, [bc]                                     ; $4ca0: $0a
	rrca                                             ; $4ca1: $0f
	nop                                              ; $4ca2: $00
	ld   bc, $7d01                                   ; $4ca3: $01 $01 $7d
	rst  $38                                         ; $4ca6: $ff
	rst  $38                                         ; $4ca7: $ff
	ld   a, l                                        ; $4ca8: $7d
	ld   d, d                                        ; $4ca9: $52
	sbc  a                                           ; $4caa: $9f
	dec  c                                           ; $4cab: $0d
	ld   [bc], a                                     ; $4cac: $02
	and  c                                           ; $4cad: $a1
	and  b                                           ; $4cae: $a0
	ld   [hl], d                                     ; $4caf: $72
	ld   e, a                                        ; $4cb0: $5f
	adc  h                                           ; $4cb1: $8c
	ld   h, a                                        ; $4cb2: $67
	sbc  a                                           ; $4cb3: $9f
	dec  c                                           ; $4cb4: $0d
	nop                                              ; $4cb5: $00
	ld   a, [bc]                                     ; $4cb6: $0a
	inc  e                                           ; $4cb7: $1c
	add  hl, bc                                      ; $4cb8: $09
	ld   bc, $0101                                   ; $4cb9: $01 $01 $01
	ld   d, h                                        ; $4cbc: $54
	and  c                                           ; $4cbd: $a1
	sbc  a                                           ; $4cbe: $9f
	dec  c                                           ; $4cbf: $0d
	ld   l, e                                        ; $4cc0: $6b
	sbc  d                                           ; $4cc1: $9a
	ld   h, [hl]                                     ; $4cc2: $66
	sub  c                                           ; $4cc3: $91
	sbc  [hl]                                        ; $4cc4: $9e
	dec  b                                           ; $4cc5: $05
	ld   [hl], e                                     ; $4cc6: $73
	sub  b                                           ; $4cc7: $90
	ld   l, e                                        ; $4cc8: $6b
	sbc  e                                           ; $4cc9: $9b
	ld   l, e                                        ; $4cca: $6b
	sbc  e                                           ; $4ccb: $9b
	inc  bc                                          ; $4ccc: $03
	dec  c                                           ; $4ccd: $0d
	ld   [bc], a                                     ; $4cce: $02
	jp   $0d79                                       ; $4ccf: $c3 $79 $0d


	sub  b                                           ; $4cd2: $90
	ld   [hl], a                                     ; $4cd3: $77
	sbc  c                                           ; $4cd4: $99
	ld   e, c                                        ; $4cd5: $59
	sub  a                                           ; $4cd6: $97
	ld   h, c                                        ; $4cd7: $61
	sbc  d                                           ; $4cd8: $9a
	ld   [hl], l                                     ; $4cd9: $75
	sbc  a                                           ; $4cda: $9f
	dec  c                                           ; $4cdb: $0d
	nop                                              ; $4cdc: $00
	ld   a, [bc]                                     ; $4cdd: $0a
	nop                                              ; $4cde: $00
	rrca                                             ; $4cdf: $0f
	nop                                              ; $4ce0: $00
	ld   bc, $5001                                   ; $4ce1: $01 $01 $50
	ld   a, h                                        ; $4ce4: $7c
	rst  $38                                         ; $4ce5: $ff
	rst  $38                                         ; $4ce6: $ff
	ld   l, a                                        ; $4ce7: $6f
	sub  l                                           ; $4ce8: $95
	ld   [hl], c                                     ; $4ce9: $71
	halt                                             ; $4cea: $76
	dec  c                                           ; $4ceb: $0d
	ld   e, b                                        ; $4cec: $58
	ld   [bc], a                                     ; $4ced: $02
	jp   nz, Jump_04b_655b                           ; $4cee: $c2 $5b $65

	ld   l, l                                        ; $4cf1: $6d
	ld   d, d                                        ; $4cf2: $52
	ld   h, c                                        ; $4cf3: $61
	halt                                             ; $4cf4: $76
	ld   e, d                                        ; $4cf5: $5a
	dec  c                                           ; $4cf6: $0d
	ld   d, b                                        ; $4cf7: $50
	sbc  c                                           ; $4cf8: $99
	and  c                                           ; $4cf9: $a1
	ld   [hl], l                                     ; $4cfa: $75
	ld   h, a                                        ; $4cfb: $67
	ld   e, a                                        ; $4cfc: $5f
	ld   [hl], a                                     ; $4cfd: $77
	rst  $38                                         ; $4cfe: $ff
	dec  c                                           ; $4cff: $0d
	nop                                              ; $4d00: $00
	ld   a, [bc]                                     ; $4d01: $0a
	rrca                                             ; $4d02: $0f
	add  hl, bc                                      ; $4d03: $09
	nop                                              ; $4d04: $00
	ld   bc, $ffff                                   ; $4d05: $01 $ff $ff
	ld   [bc], a                                     ; $4d08: $02
	jp   nz, Jump_04b_6d5b                           ; $4d09: $c2 $5b $6d

	ld   d, d                                        ; $4d0c: $52
	ld   h, c                                        ; $4d0d: $61
	halt                                             ; $4d0e: $76
	ld   sp, hl                                      ; $4d0f: $f9
	dec  c                                           ; $4d10: $0d
	nop                                              ; $4d11: $00
	ld   a, [bc]                                     ; $4d12: $0a
	jr   jr_04b_4d18                                 ; $4d13: $18 $03

	ld   bc, $5d63                                   ; $4d15: $01 $63 $5d

jr_04b_4d18:
	sub  a                                           ; $4d18: $97
	ld   e, c                                        ; $4d19: $59
	sub  a                                           ; $4d1a: $97
	ld   a, h                                        ; $4d1b: $7c
	inc  b                                           ; $4d1c: $04
	ld   d, a                                        ; $4d1d: $57
	inc  b                                           ; $4d1e: $04
	ld   h, e                                        ; $4d1f: $63
	and  b                                           ; $4d20: $a0
	ld   e, e                                        ; $4d21: $5b
	ld   e, l                                        ; $4d22: $5d
	nop                                              ; $4d23: $00
	nop                                              ; $4d24: $00
	ld   h, a                                        ; $4d25: $67
	adc  l                                           ; $4d26: $8d
	sbc  d                                           ; $4d27: $9a
	ld   e, c                                        ; $4d28: $59
	sub  a                                           ; $4d29: $97
	ld   a, h                                        ; $4d2a: $7c
	inc  b                                           ; $4d2b: $04
	ld   d, a                                        ; $4d2c: $57
	inc  b                                           ; $4d2d: $04
	ld   h, e                                        ; $4d2e: $63
	and  b                                           ; $4d2f: $a0
	ld   e, e                                        ; $4d30: $5b
	ld   e, l                                        ; $4d31: $5d
	nop                                              ; $4d32: $00
	ld   bc, $7c6b                                   ; $4d33: $01 $6b $7c
	inc  b                                           ; $4d36: $04
	ld   e, $7c                                      ; $4d37: $1e $7c
	inc  bc                                          ; $4d39: $03
	add  d                                           ; $4d3a: $82
	ld   a, h                                        ; $4d3b: $7c
	inc  b                                           ; $4d3c: $04
	ld   d, a                                        ; $4d3d: $57
	inc  b                                           ; $4d3e: $04
	ld   h, e                                        ; $4d3f: $63
	and  b                                           ; $4d40: $a0
	ld   e, e                                        ; $4d41: $5b
	ld   e, l                                        ; $4d42: $5d
	nop                                              ; $4d43: $00
	ld   [bc], a                                     ; $4d44: $02
	rlca                                             ; $4d45: $07
	ld   h, $03                                      ; $4d46: $26 $03
	ld   [bc], a                                     ; $4d48: $02
	ld   [bc], a                                     ; $4d49: $02
	ld   bc, $2000                                   ; $4d4a: $01 $00 $20
	nop                                              ; $4d4d: $00
	rlca                                             ; $4d4e: $07
	ld   d, d                                        ; $4d4f: $52
	inc  b                                           ; $4d50: $04
	ld   [bc], a                                     ; $4d51: $02
	ld   [bc], a                                     ; $4d52: $02
	ld   bc, $2001                                   ; $4d53: $01 $01 $20
	nop                                              ; $4d56: $00
	rlca                                             ; $4d57: $07
	inc  c                                           ; $4d58: $0c
	ld   [bc], a                                     ; $4d59: $02
	ld   [bc], a                                     ; $4d5a: $02
	ld   [bc], a                                     ; $4d5b: $02
	ld   bc, $2002                                   ; $4d5c: $01 $02 $20
	nop                                              ; $4d5f: $00
	jr   jr_04b_4d65                                 ; $4d60: $18 $03

	ld   bc, $ecdf                                   ; $4d62: $01 $df $ec

jr_04b_4d65:
	and  e                                           ; $4d65: $a3
	ld   e, c                                        ; $4d66: $59
	sub  a                                           ; $4d67: $97
	ld   a, h                                        ; $4d68: $7c
	inc  b                                           ; $4d69: $04
	ld   d, a                                        ; $4d6a: $57
	inc  b                                           ; $4d6b: $04
	ld   h, e                                        ; $4d6c: $63
	and  b                                           ; $4d6d: $a0
	ld   e, e                                        ; $4d6e: $5b
	ld   e, l                                        ; $4d6f: $5d
	nop                                              ; $4d70: $00
	nop                                              ; $4d71: $00
	xor  h                                           ; $4d72: $ac
	push af                                          ; $4d73: $f5
	bit  3, c                                        ; $4d74: $cb $59
	sub  a                                           ; $4d76: $97
	ld   a, h                                        ; $4d77: $7c
	inc  b                                           ; $4d78: $04
	ld   d, a                                        ; $4d79: $57
	inc  b                                           ; $4d7a: $04
	ld   h, e                                        ; $4d7b: $63
	and  b                                           ; $4d7c: $a0
	ld   e, e                                        ; $4d7d: $5b
	ld   e, l                                        ; $4d7e: $5d
	nop                                              ; $4d7f: $00
	ld   bc, $7c6b                                   ; $4d80: $01 $6b $7c
	inc  b                                           ; $4d83: $04
	ld   e, $7c                                      ; $4d84: $1e $7c
	inc  bc                                          ; $4d86: $03
	add  d                                           ; $4d87: $82
	ld   a, h                                        ; $4d88: $7c
	inc  b                                           ; $4d89: $04
	ld   d, a                                        ; $4d8a: $57
	inc  b                                           ; $4d8b: $04
	ld   h, e                                        ; $4d8c: $63
	and  b                                           ; $4d8d: $a0
	ld   e, e                                        ; $4d8e: $5b
	ld   e, l                                        ; $4d8f: $5d
	nop                                              ; $4d90: $00
	ld   [bc], a                                     ; $4d91: $02
	rlca                                             ; $4d92: $07
	ld   a, [hl]                                     ; $4d93: $7e
	dec  b                                           ; $4d94: $05
	ld   [bc], a                                     ; $4d95: $02
	ld   [bc], a                                     ; $4d96: $02
	ld   bc, $2000                                   ; $4d97: $01 $00 $20
	nop                                              ; $4d9a: $00
	rlca                                             ; $4d9b: $07
	or   $08                                         ; $4d9c: $f6 $08
	ld   [bc], a                                     ; $4d9e: $02
	ld   [bc], a                                     ; $4d9f: $02
	ld   bc, $2001                                   ; $4da0: $01 $01 $20
	nop                                              ; $4da3: $00
	rlca                                             ; $4da4: $07
	ld   e, c                                        ; $4da5: $59
	ld   [bc], a                                     ; $4da6: $02
	ld   [bc], a                                     ; $4da7: $02
	ld   [bc], a                                     ; $4da8: $02
	ld   bc, $2002                                   ; $4da9: $01 $02 $20
	nop                                              ; $4dac: $00
	jr   jr_04b_4db2                                 ; $4dad: $18 $03

	ld   bc, $cf02                                   ; $4daf: $01 $02 $cf

jr_04b_4db2:
	dec  b                                           ; $4db2: $05
	ld   a, [de]                                     ; $4db3: $1a
	ld   e, c                                        ; $4db4: $59
	sub  a                                           ; $4db5: $97
	ld   a, h                                        ; $4db6: $7c
	inc  b                                           ; $4db7: $04
	ld   d, a                                        ; $4db8: $57
	inc  b                                           ; $4db9: $04
	ld   h, e                                        ; $4dba: $63
	and  b                                           ; $4dbb: $a0
	ld   e, e                                        ; $4dbc: $5b
	ld   e, l                                        ; $4dbd: $5d
	nop                                              ; $4dbe: $00
	nop                                              ; $4dbf: $00
	and  e                                           ; $4dc0: $a3
	and  l                                           ; $4dc1: $a5
	db   $ec                                         ; $4dc2: $ec
	cp   d                                           ; $4dc3: $ba
	ld   e, c                                        ; $4dc4: $59
	sub  a                                           ; $4dc5: $97
	ld   a, h                                        ; $4dc6: $7c
	inc  b                                           ; $4dc7: $04
	ld   d, a                                        ; $4dc8: $57
	inc  b                                           ; $4dc9: $04
	ld   h, e                                        ; $4dca: $63
	and  b                                           ; $4dcb: $a0
	ld   e, e                                        ; $4dcc: $5b
	ld   e, l                                        ; $4dcd: $5d
	nop                                              ; $4dce: $00
	ld   bc, $7c6b                                   ; $4dcf: $01 $6b $7c
	inc  b                                           ; $4dd2: $04
	ld   e, $7c                                      ; $4dd3: $1e $7c
	inc  bc                                          ; $4dd5: $03
	add  d                                           ; $4dd6: $82
	ld   a, h                                        ; $4dd7: $7c
	inc  b                                           ; $4dd8: $04
	ld   d, a                                        ; $4dd9: $57
	inc  b                                           ; $4dda: $04
	ld   h, e                                        ; $4ddb: $63
	and  b                                           ; $4ddc: $a0
	ld   e, e                                        ; $4ddd: $5b
	ld   e, l                                        ; $4dde: $5d
	nop                                              ; $4ddf: $00
	ld   [bc], a                                     ; $4de0: $02
	rlca                                             ; $4de1: $07
	call z, $0207                                    ; $4de2: $cc $07 $02
	ld   [bc], a                                     ; $4de5: $02
	ld   bc, $2000                                   ; $4de6: $01 $00 $20
	nop                                              ; $4de9: $00
	rlca                                             ; $4dea: $07
	and  h                                           ; $4deb: $a4
	ld   b, $02                                      ; $4dec: $06 $02
	ld   [bc], a                                     ; $4dee: $02
	ld   bc, $2001                                   ; $4def: $01 $01 $20
	nop                                              ; $4df2: $00
	rlca                                             ; $4df3: $07
	xor  b                                           ; $4df4: $a8
	ld   [bc], a                                     ; $4df5: $02
	ld   [bc], a                                     ; $4df6: $02
	ld   [bc], a                                     ; $4df7: $02
	ld   bc, $2002                                   ; $4df8: $01 $02 $20
	nop                                              ; $4dfb: $00
	jr   @+$04                                       ; $4dfc: $18 $02

	ld   bc, $7192                                   ; $4dfe: $01 $92 $71
	ld   a, a                                        ; $4e01: $7f
	sbc  b                                           ; $4e02: $98
	sub  d                                           ; $4e03: $92
	adc  a                                           ; $4e04: $8f
	sbc  c                                           ; $4e05: $99
	nop                                              ; $4e06: $00
	nop                                              ; $4e07: $00
	ld   l, e                                        ; $4e08: $6b
	ld   a, h                                        ; $4e09: $7c
	inc  b                                           ; $4e0a: $04
	ld   e, $7c                                      ; $4e0b: $1e $7c
	inc  bc                                          ; $4e0d: $03
	add  d                                           ; $4e0e: $82
	ld   a, h                                        ; $4e0f: $7c
	inc  b                                           ; $4e10: $04
	ld   d, a                                        ; $4e11: $57
	inc  b                                           ; $4e12: $04
	ld   h, e                                        ; $4e13: $63
	and  b                                           ; $4e14: $a0
	ld   e, e                                        ; $4e15: $5b
	ld   e, l                                        ; $4e16: $5d
	nop                                              ; $4e17: $00
	ld   bc, $d707                                   ; $4e18: $01 $07 $d7
	ld   [bc], a                                     ; $4e1b: $02
	ld   [bc], a                                     ; $4e1c: $02
	ld   [bc], a                                     ; $4e1d: $02
	ld   bc, $2000                                   ; $4e1e: $01 $00 $20
	nop                                              ; $4e21: $00
	rlca                                             ; $4e22: $07
	cp   a                                           ; $4e23: $bf
	ld   bc, $0202                                   ; $4e24: $01 $02 $02
	ld   bc, $2001                                   ; $4e27: $01 $01 $20
	nop                                              ; $4e2a: $00
	rrca                                             ; $4e2b: $0f
	nop                                              ; $4e2c: $00
	ld   bc, $5001                                   ; $4e2d: $01 $01 $50
	sbc  [hl]                                        ; $4e30: $9e
	sub  d                                           ; $4e31: $92
	ld   [hl], c                                     ; $4e32: $71
	ld   a, a                                        ; $4e33: $7f
	sbc  b                                           ; $4e34: $98
	ld   d, d                                        ; $4e35: $52
	ld   d, d                                        ; $4e36: $52
	ld   [hl], l                                     ; $4e37: $75
	ld   h, a                                        ; $4e38: $67
	sbc  a                                           ; $4e39: $9f
	dec  c                                           ; $4e3a: $0d
	ld   [hl], l                                     ; $4e3b: $75
	ld   a, l                                        ; $4e3c: $7d
	sbc  [hl]                                        ; $4e3d: $9e
	inc  bc                                          ; $4e3e: $03
	add  e                                           ; $4e3f: $83
	dec  b                                           ; $4e40: $05
	dec  c                                           ; $4e41: $0d
	ld   h, l                                        ; $4e42: $65
	adc  h                                           ; $4e43: $8c
	ld   h, a                                        ; $4e44: $67
	sbc  a                                           ; $4e45: $9f
	dec  c                                           ; $4e46: $0d
	nop                                              ; $4e47: $00
	ld   a, [bc]                                     ; $4e48: $0a
	rrca                                             ; $4e49: $0f
	add  hl, bc                                      ; $4e4a: $09
	nop                                              ; $4e4b: $00
	ld   bc, $546b                                   ; $4e4c: $01 $6b $54
	ld   e, c                                        ; $4e4f: $59
	ld   d, d                                        ; $4e50: $52
	sbc  a                                           ; $4e51: $9f
	dec  c                                           ; $4e52: $0d
	ld   [hl], l                                     ; $4e53: $75
	sub  b                                           ; $4e54: $90
	sbc  [hl]                                        ; $4e55: $9e
	inc  b                                           ; $4e56: $04
	di                                               ; $4e57: $f3
	ld   e, d                                        ; $4e58: $5a
	ld   d, b                                        ; $4e59: $50
	ld   [hl], c                                     ; $4e5a: $71
	ld   l, l                                        ; $4e5b: $6d
	sub  a                                           ; $4e5c: $97
	dec  c                                           ; $4e5d: $0d
	ld   d, d                                        ; $4e5e: $52
	ld   [hl], d                                     ; $4e5f: $72
	ld   [hl], l                                     ; $4e60: $75
	sub  b                                           ; $4e61: $90
	dec  b                                           ; $4e62: $05
	db   $10                                         ; $4e63: $10
	sbc  c                                           ; $4e64: $99
	halt                                             ; $4e65: $76
	ld   d, d                                        ; $4e66: $52
	ld   d, d                                        ; $4e67: $52
	sbc  a                                           ; $4e68: $9f
	dec  c                                           ; $4e69: $0d
	nop                                              ; $4e6a: $00
	ld   a, [bc]                                     ; $4e6b: $0a
	ld   bc, $9166                                   ; $4e6c: $01 $66 $91
	sbc  [hl]                                        ; $4e6f: $9e
	ld   e, d                                        ; $4e70: $5a
	and  c                                           ; $4e71: $a1
	ld   a, [hl]                                     ; $4e72: $7e
	sbc  d                                           ; $4e73: $9a
	sub  [hl]                                        ; $4e74: $96
	sbc  a                                           ; $4e75: $9f
	dec  c                                           ; $4e76: $0d
	nop                                              ; $4e77: $00
	ld   a, [bc]                                     ; $4e78: $0a
	nop                                              ; $4e79: $00
	rrca                                             ; $4e7a: $0f
	nop                                              ; $4e7b: $00
	ld   bc, $6301                                   ; $4e7c: $01 $01 $63

jr_04b_4e7f:
	ld   e, l                                        ; $4e7f: $5d
	sub  a                                           ; $4e80: $97
	ld   h, e                                        ; $4e81: $63
	and  c                                           ; $4e82: $a1
	ld   a, h                                        ; $4e83: $7c
	inc  b                                           ; $4e84: $04
	ld   l, l                                        ; $4e85: $6d
	add  [hl]                                        ; $4e86: $86
	ld   a, h                                        ; $4e87: $7c
	inc  b                                           ; $4e88: $04
	ld   d, a                                        ; $4e89: $57
	inc  b                                           ; $4e8a: $04
	ld   h, e                                        ; $4e8b: $63
	ld   [hl], c                                     ; $4e8c: $71
	ld   [hl], h                                     ; $4e8d: $74
	dec  c                                           ; $4e8e: $0d
	ld   [hl], a                                     ; $4e8f: $77
	ld   d, h                                        ; $4e90: $54
	ld   a, b                                        ; $4e91: $78
	and  c                                           ; $4e92: $a1
	ld   [hl], l                                     ; $4e93: $75
	ld   h, l                                        ; $4e94: $65
	sub  l                                           ; $4e95: $95

jr_04b_4e96:
	ld   d, h                                        ; $4e96: $54
	ld   e, c                                        ; $4e97: $59
	ld   sp, hl                                      ; $4e98: $f9
	dec  c                                           ; $4e99: $0d
	nop                                              ; $4e9a: $00
	ld   a, [bc]                                     ; $4e9b: $0a
	rrca                                             ; $4e9c: $0f
	add  hl, bc                                      ; $4e9d: $09
	nop                                              ; $4e9e: $00
	ld   bc, $8e83                                   ; $4e9f: $01 $83 $8e
	sbc  [hl]                                        ; $4ea2: $9e
	ld   l, e                                        ; $4ea3: $6b
	ld   d, h                                        ; $4ea4: $54
	ld   l, [hl]                                     ; $4ea5: $6e
	ld   a, b                                        ; $4ea6: $78
	rst  $38                                         ; $4ea7: $ff
	rst  $38                                         ; $4ea8: $ff
	dec  c                                           ; $4ea9: $0d
	nop                                              ; $4eaa: $00
	ld   a, [bc]                                     ; $4eab: $0a
	rlca                                             ; $4eac: $07
	ret  nz                                          ; $4ead: $c0

	inc  bc                                          ; $4eae: $03
	inc  bc                                          ; $4eaf: $03
	ld   de, $6401                                   ; $4eb0: $11 $01 $64
	inc  hl                                          ; $4eb3: $23
	nop                                              ; $4eb4: $00
	rlca                                             ; $4eb5: $07
	rrca                                             ; $4eb6: $0f
	inc  b                                           ; $4eb7: $04
	inc  bc                                          ; $4eb8: $03
	ld   de, $9601                                   ; $4eb9: $11 $01 $96
	dec  h                                           ; $4ebc: $25
	nop                                              ; $4ebd: $00
	ld   bc, $5d63                                   ; $4ebe: $01 $63 $5d
	sub  a                                           ; $4ec1: $97
	ld   e, l                                        ; $4ec2: $5d
	and  c                                           ; $4ec3: $a1
	ld   a, h                                        ; $4ec4: $7c
	sbc  [hl]                                        ; $4ec5: $9e
	ld   [$5d00], sp                                 ; $4ec6: $08 $00 $5d
	and  c                                           ; $4ec9: $a1
	dec  c                                           ; $4eca: $0d
	add  [hl]                                        ; $4ecb: $86
	ld   a, h                                        ; $4ecc: $7c
	inc  b                                           ; $4ecd: $04
	ld   d, a                                        ; $4ece: $57
	inc  b                                           ; $4ecf: $04
	ld   h, e                                        ; $4ed0: $63
	ld   a, l                                        ; $4ed1: $7d
	sbc  [hl]                                        ; $4ed2: $9e
	adc  h                                           ; $4ed3: $8c
	ld   d, b                                        ; $4ed4: $50
	adc  h                                           ; $4ed5: $8c
	ld   d, b                                        ; $4ed6: $50
	dec  c                                           ; $4ed7: $0d
	halt                                             ; $4ed8: $76
	ld   d, d                                        ; $4ed9: $52
	ld   [hl], c                                     ; $4eda: $71
	ld   l, l                                        ; $4edb: $6d
	halt                                             ; $4edc: $76
	ld   h, c                                        ; $4edd: $61
	sbc  e                                           ; $4ede: $9b
	ld   e, c                                        ; $4edf: $59
	ld   a, b                                        ; $4ee0: $78
	sbc  a                                           ; $4ee1: $9f
	dec  c                                           ; $4ee2: $0d
	nop                                              ; $4ee3: $00
	ld   a, [bc]                                     ; $4ee4: $0a
	ld   bc, $5d76                                   ; $4ee5: $01 $76 $5d
	ld   a, c                                        ; $4ee8: $79
	ld   [bc], a                                     ; $4ee9: $02
	jr   z, jr_04b_4f3e                              ; $4eea: $28 $52

	dec  b                                           ; $4eec: $05
	jr   nz, jr_04b_4e7f                             ; $4eed: $20 $90

	ld   [bc], a                                     ; $4eef: $02
	jp   nz, Jump_04b_7859                           ; $4ef0: $c2 $59 $78

	ld   d, d                                        ; $4ef3: $52
	ld   h, l                                        ; $4ef4: $65
	rst  $38                                         ; $4ef5: $ff
	rst  $38                                         ; $4ef6: $ff
	dec  c                                           ; $4ef7: $0d
	ld   e, c                                        ; $4ef8: $59
	halt                                             ; $4ef9: $76
	ld   d, d                                        ; $4efa: $52
	ld   [hl], c                                     ; $4efb: $71
	ld   [hl], h                                     ; $4efc: $74
	sbc  [hl]                                        ; $4efd: $9e
	ld   d, d                                        ; $4efe: $52
	ld   d, d                                        ; $4eff: $52
	halt                                             ; $4f00: $76
	ld   d, d                                        ; $4f01: $52
	ld   d, h                                        ; $4f02: $54
	dec  b                                           ; $4f03: $05
	jr   nz, jr_04b_4e96                             ; $4f04: $20 $90

	dec  c                                           ; $4f06: $0d
	ld   [bc], a                                     ; $4f07: $02
	jp   nz, Jump_04b_7859                           ; $4f08: $c2 $59 $78

	ld   d, d                                        ; $4f0b: $52
	ld   a, b                                        ; $4f0c: $78
	sbc  a                                           ; $4f0d: $9f
	dec  c                                           ; $4f0e: $0d
	nop                                              ; $4f0f: $00
	ld   a, [bc]                                     ; $4f10: $0a
	ld   b, $1c                                      ; $4f11: $06 $1c
	ld   a, [bc]                                     ; $4f13: $0a
	ld   bc, $5d63                                   ; $4f14: $01 $63 $5d
	sub  a                                           ; $4f17: $97
	ld   e, l                                        ; $4f18: $5d
	and  c                                           ; $4f19: $a1
	ld   a, h                                        ; $4f1a: $7c
	sbc  [hl]                                        ; $4f1b: $9e
	ld   [$5d00], sp                                 ; $4f1c: $08 $00 $5d
	and  c                                           ; $4f1f: $a1
	dec  c                                           ; $4f20: $0d
	add  [hl]                                        ; $4f21: $86
	ld   a, h                                        ; $4f22: $7c
	inc  b                                           ; $4f23: $04
	ld   d, a                                        ; $4f24: $57
	inc  b                                           ; $4f25: $04
	ld   h, e                                        ; $4f26: $63
	ld   a, l                                        ; $4f27: $7d
	rst  $38                                         ; $4f28: $ff
	rst  $38                                         ; $4f29: $ff
	dec  c                                           ; $4f2a: $0d
	ld   d, b                                        ; $4f2b: $50
	adc  h                                           ; $4f2c: $8c
	sbc  b                                           ; $4f2d: $98
	sub  [hl]                                        ; $4f2e: $96
	ld   e, l                                        ; $4f2f: $5d
	ld   a, b                                        ; $4f30: $78
	ld   d, d                                        ; $4f31: $52
	ld   a, b                                        ; $4f32: $78
	sbc  a                                           ; $4f33: $9f
	dec  c                                           ; $4f34: $0d
	nop                                              ; $4f35: $00
	ld   a, [bc]                                     ; $4f36: $0a
	ld   bc, $7190                                   ; $4f37: $01 $90 $71
	halt                                             ; $4f3a: $76
	ld   [bc], a                                     ; $4f3b: $02
	ld   a, [de]                                     ; $4f3c: $1a
	inc  bc                                          ; $4f3d: $03

jr_04b_4f3e:
	ld   l, e                                        ; $4f3e: $6b
	ld   a, h                                        ; $4f3f: $7c
	ld   [bc], a                                     ; $4f40: $02
	and  c                                           ; $4f41: $a1
	inc  bc                                          ; $4f42: $03
	and  b                                           ; $4f43: $a0
	ld   l, a                                        ; $4f44: $6f
	and  b                                           ; $4f45: $a0
	dec  c                                           ; $4f46: $0d
	ld   [bc], a                                     ; $4f47: $02
	ld   h, l                                        ; $4f48: $65
	ld   d, [hl]                                     ; $4f49: $56
	ld   [hl], h                                     ; $4f4a: $74
	ld   [bc], a                                     ; $4f4b: $02
	ld   a, a                                        ; $4f4c: $7f
	inc  b                                           ; $4f4d: $04
	dec  de                                          ; $4f4e: $1b
	ld   h, l                                        ; $4f4f: $65
	ld   l, l                                        ; $4f50: $6d
	adc  c                                           ; $4f51: $89
	ld   d, h                                        ; $4f52: $54
	ld   e, d                                        ; $4f53: $5a
	ld   d, d                                        ; $4f54: $52
	ld   d, d                                        ; $4f55: $52
	halt                                             ; $4f56: $76
	dec  c                                           ; $4f57: $0d
	dec  b                                           ; $4f58: $05
	pop  de                                          ; $4f59: $d1
	ld   d, h                                        ; $4f5a: $54
	ld   l, h                                        ; $4f5b: $6c
	sbc  a                                           ; $4f5c: $9f
	dec  c                                           ; $4f5d: $0d
	nop                                              ; $4f5e: $00
	ld   a, [bc]                                     ; $4f5f: $0a
	ld   b, $1c                                      ; $4f60: $06 $1c
	ld   a, [bc]                                     ; $4f62: $0a
	ld   bc, $5d63                                   ; $4f63: $01 $63 $5d
	sub  a                                           ; $4f66: $97
	ld   e, l                                        ; $4f67: $5d
	and  c                                           ; $4f68: $a1
	ld   a, h                                        ; $4f69: $7c
	sbc  [hl]                                        ; $4f6a: $9e
	ld   [$5d00], sp                                 ; $4f6b: $08 $00 $5d
	and  c                                           ; $4f6e: $a1
	dec  c                                           ; $4f6f: $0d
	add  [hl]                                        ; $4f70: $86
	ld   a, h                                        ; $4f71: $7c
	inc  b                                           ; $4f72: $04
	ld   d, a                                        ; $4f73: $57
	inc  b                                           ; $4f74: $04
	ld   h, e                                        ; $4f75: $63
	ld   a, l                                        ; $4f76: $7d
	sbc  [hl]                                        ; $4f77: $9e
	ld   e, c                                        ; $4f78: $59
	ld   a, b                                        ; $4f79: $78
	sbc  b                                           ; $4f7a: $98
	ld   d, d                                        ; $4f7b: $52
	ld   d, d                                        ; $4f7c: $52
	dec  c                                           ; $4f7d: $0d
	halt                                             ; $4f7e: $76
	dec  b                                           ; $4f7f: $05
	pop  de                                          ; $4f80: $d1
	ld   d, h                                        ; $4f81: $54
	ld   l, h                                        ; $4f82: $6c
	sbc  a                                           ; $4f83: $9f
	dec  c                                           ; $4f84: $0d
	nop                                              ; $4f85: $00
	ld   a, [bc]                                     ; $4f86: $0a
	ld   bc, $ca02                                   ; $4f87: $01 $02 $ca
	sub  b                                           ; $4f8a: $90
	ld   l, e                                        ; $4f8b: $6b
	sbc  d                                           ; $4f8c: $9a
	ld   a, c                                        ; $4f8d: $79
	ld   [bc], a                                     ; $4f8e: $02
	add  hl, bc                                      ; $4f8f: $09
	ld   d, [hl]                                     ; $4f90: $56
	sub  a                                           ; $4f91: $97
	sbc  d                                           ; $4f92: $9a
	sbc  c                                           ; $4f93: $99
	sub  [hl]                                        ; $4f94: $96
	ld   d, h                                        ; $4f95: $54
	ld   a, c                                        ; $4f96: $79
	dec  c                                           ; $4f97: $0d
	ld   e, d                                        ; $4f98: $5a
	and  c                                           ; $4f99: $a1
	ld   a, [hl]                                     ; $4f9a: $7e
	sbc  c                                           ; $4f9b: $99
	and  c                                           ; $4f9c: $a1
	ld   l, [hl]                                     ; $4f9d: $6e
	ld   l, h                                        ; $4f9e: $6c
	sbc  a                                           ; $4f9f: $9f
	dec  c                                           ; $4fa0: $0d
	nop                                              ; $4fa1: $00
	ld   a, [bc]                                     ; $4fa2: $0a
	ld   b, $1c                                      ; $4fa3: $06 $1c
	ld   a, [bc]                                     ; $4fa5: $0a
	rrca                                             ; $4fa6: $0f
	nop                                              ; $4fa7: $00
	ld   bc, $6701                                   ; $4fa8: $01 $01 $67

jr_04b_4fab:
	adc  l                                           ; $4fab: $8d
	sbc  d                                           ; $4fac: $9a
	ld   h, e                                        ; $4fad: $63
	and  c                                           ; $4fae: $a1
	ld   a, h                                        ; $4faf: $7c
	inc  b                                           ; $4fb0: $04
	ld   l, l                                        ; $4fb1: $6d
	add  [hl]                                        ; $4fb2: $86
	ld   a, h                                        ; $4fb3: $7c
	inc  b                                           ; $4fb4: $04
	ld   d, a                                        ; $4fb5: $57
	inc  b                                           ; $4fb6: $04
	ld   h, e                                        ; $4fb7: $63
	ld   [hl], c                                     ; $4fb8: $71
	ld   [hl], h                                     ; $4fb9: $74
	dec  c                                           ; $4fba: $0d
	ld   [hl], a                                     ; $4fbb: $77
	ld   d, h                                        ; $4fbc: $54
	ld   a, b                                        ; $4fbd: $78
	and  c                                           ; $4fbe: $a1
	ld   [hl], l                                     ; $4fbf: $75
	ld   h, l                                        ; $4fc0: $65
	sub  l                                           ; $4fc1: $95

jr_04b_4fc2:
	ld   d, h                                        ; $4fc2: $54
	ld   e, c                                        ; $4fc3: $59
	ld   sp, hl                                      ; $4fc4: $f9
	dec  c                                           ; $4fc5: $0d
	nop                                              ; $4fc6: $00
	ld   a, [bc]                                     ; $4fc7: $0a
	rrca                                             ; $4fc8: $0f
	add  hl, bc                                      ; $4fc9: $09
	nop                                              ; $4fca: $00
	ld   bc, $8e83                                   ; $4fcb: $01 $83 $8e
	sbc  [hl]                                        ; $4fce: $9e
	ld   l, e                                        ; $4fcf: $6b
	ld   d, h                                        ; $4fd0: $54
	ld   l, [hl]                                     ; $4fd1: $6e
	ld   a, b                                        ; $4fd2: $78
	rst  $38                                         ; $4fd3: $ff
	rst  $38                                         ; $4fd4: $ff
	dec  c                                           ; $4fd5: $0d
	nop                                              ; $4fd6: $00
	ld   a, [bc]                                     ; $4fd7: $0a
	rlca                                             ; $4fd8: $07
	db   $ec                                         ; $4fd9: $ec
	inc  b                                           ; $4fda: $04
	inc  bc                                          ; $4fdb: $03
	ld   [de], a                                     ; $4fdc: $12
	ld   bc, $2364                                   ; $4fdd: $01 $64 $23
	nop                                              ; $4fe0: $00
	rlca                                             ; $4fe1: $07
	dec  sp                                          ; $4fe2: $3b
	dec  b                                           ; $4fe3: $05
	inc  bc                                          ; $4fe4: $03
	ld   [de], a                                     ; $4fe5: $12
	ld   bc, $2596                                   ; $4fe6: $01 $96 $25
	nop                                              ; $4fe9: $00
	ld   bc, $8d67                                   ; $4fea: $01 $67 $8d
	sbc  d                                           ; $4fed: $9a
	ld   e, l                                        ; $4fee: $5d
	and  c                                           ; $4fef: $a1
	ld   a, h                                        ; $4ff0: $7c
	sbc  [hl]                                        ; $4ff1: $9e
	ld   [$5d00], sp                                 ; $4ff2: $08 $00 $5d
	and  c                                           ; $4ff5: $a1
	dec  c                                           ; $4ff6: $0d
	add  [hl]                                        ; $4ff7: $86
	ld   a, h                                        ; $4ff8: $7c
	inc  b                                           ; $4ff9: $04
	ld   d, a                                        ; $4ffa: $57
	inc  b                                           ; $4ffb: $04
	ld   h, e                                        ; $4ffc: $63
	ld   a, l                                        ; $4ffd: $7d
	sbc  [hl]                                        ; $4ffe: $9e
	adc  h                                           ; $4fff: $8c
	ld   d, b                                        ; $5000: $50
	adc  h                                           ; $5001: $8c
	ld   d, b                                        ; $5002: $50
	dec  c                                           ; $5003: $0d
	halt                                             ; $5004: $76
	ld   d, d                                        ; $5005: $52
	ld   [hl], c                                     ; $5006: $71
	ld   l, l                                        ; $5007: $6d
	halt                                             ; $5008: $76
	ld   h, c                                        ; $5009: $61
	sbc  e                                           ; $500a: $9b
	ld   e, c                                        ; $500b: $59
	ld   a, b                                        ; $500c: $78
	sbc  a                                           ; $500d: $9f
	dec  c                                           ; $500e: $0d
	nop                                              ; $500f: $00
	ld   a, [bc]                                     ; $5010: $0a
	ld   bc, $5d76                                   ; $5011: $01 $76 $5d
	ld   a, c                                        ; $5014: $79
	ld   [bc], a                                     ; $5015: $02
	jr   z, jr_04b_506a                              ; $5016: $28 $52

	dec  b                                           ; $5018: $05
	jr   nz, jr_04b_4fab                             ; $5019: $20 $90

	ld   [bc], a                                     ; $501b: $02
	jp   nz, Jump_04b_7859                           ; $501c: $c2 $59 $78

	ld   d, d                                        ; $501f: $52
	ld   h, l                                        ; $5020: $65
	rst  $38                                         ; $5021: $ff
	rst  $38                                         ; $5022: $ff
	dec  c                                           ; $5023: $0d
	ld   e, c                                        ; $5024: $59
	halt                                             ; $5025: $76
	ld   d, d                                        ; $5026: $52
	ld   [hl], c                                     ; $5027: $71
	ld   [hl], h                                     ; $5028: $74
	sbc  [hl]                                        ; $5029: $9e
	ld   d, d                                        ; $502a: $52
	ld   d, d                                        ; $502b: $52
	halt                                             ; $502c: $76
	ld   d, d                                        ; $502d: $52
	ld   d, h                                        ; $502e: $54
	dec  b                                           ; $502f: $05
	jr   nz, jr_04b_4fc2                             ; $5030: $20 $90

	dec  c                                           ; $5032: $0d
	ld   [bc], a                                     ; $5033: $02
	jp   nz, Jump_04b_7859                           ; $5034: $c2 $59 $78

	ld   d, d                                        ; $5037: $52
	ld   a, b                                        ; $5038: $78
	sbc  a                                           ; $5039: $9f
	dec  c                                           ; $503a: $0d
	nop                                              ; $503b: $00
	ld   a, [bc]                                     ; $503c: $0a
	ld   b, $1c                                      ; $503d: $06 $1c
	ld   a, [bc]                                     ; $503f: $0a
	ld   bc, $8d67                                   ; $5040: $01 $67 $8d
	sbc  d                                           ; $5043: $9a
	ld   e, l                                        ; $5044: $5d
	and  c                                           ; $5045: $a1
	ld   a, h                                        ; $5046: $7c
	sbc  [hl]                                        ; $5047: $9e
	ld   [$5d00], sp                                 ; $5048: $08 $00 $5d
	and  c                                           ; $504b: $a1
	dec  c                                           ; $504c: $0d
	add  [hl]                                        ; $504d: $86
	ld   a, h                                        ; $504e: $7c
	inc  b                                           ; $504f: $04
	ld   d, a                                        ; $5050: $57
	inc  b                                           ; $5051: $04
	ld   h, e                                        ; $5052: $63
	ld   a, l                                        ; $5053: $7d
	rst  $38                                         ; $5054: $ff
	rst  $38                                         ; $5055: $ff
	dec  c                                           ; $5056: $0d
	ld   d, b                                        ; $5057: $50
	adc  h                                           ; $5058: $8c
	sbc  b                                           ; $5059: $98

Jump_04b_505a:
	sub  [hl]                                        ; $505a: $96
	ld   e, l                                        ; $505b: $5d
	ld   a, b                                        ; $505c: $78
	ld   d, d                                        ; $505d: $52
	ld   a, b                                        ; $505e: $78
	sbc  a                                           ; $505f: $9f
	dec  c                                           ; $5060: $0d
	nop                                              ; $5061: $00
	ld   a, [bc]                                     ; $5062: $0a
	ld   bc, $7190                                   ; $5063: $01 $90 $71
	halt                                             ; $5066: $76
	ld   [bc], a                                     ; $5067: $02
	ld   a, [de]                                     ; $5068: $1a
	inc  bc                                          ; $5069: $03

jr_04b_506a:
	ld   l, e                                        ; $506a: $6b
	ld   a, h                                        ; $506b: $7c
	ld   [bc], a                                     ; $506c: $02
	and  c                                           ; $506d: $a1
	inc  bc                                          ; $506e: $03
	and  b                                           ; $506f: $a0
	ld   l, a                                        ; $5070: $6f
	and  b                                           ; $5071: $a0
	dec  c                                           ; $5072: $0d
	ld   [bc], a                                     ; $5073: $02
	ld   h, l                                        ; $5074: $65
	ld   d, [hl]                                     ; $5075: $56

Call_04b_5076:
	ld   [hl], h                                     ; $5076: $74
	ld   [bc], a                                     ; $5077: $02
	ld   a, a                                        ; $5078: $7f
	inc  b                                           ; $5079: $04
	dec  de                                          ; $507a: $1b
	ld   h, l                                        ; $507b: $65
	ld   l, l                                        ; $507c: $6d

Jump_04b_507d:
	adc  c                                           ; $507d: $89
	ld   d, h                                        ; $507e: $54
	ld   e, d                                        ; $507f: $5a
	ld   d, d                                        ; $5080: $52
	ld   d, d                                        ; $5081: $52
	halt                                             ; $5082: $76
	dec  c                                           ; $5083: $0d
	dec  b                                           ; $5084: $05
	pop  de                                          ; $5085: $d1
	ld   d, h                                        ; $5086: $54
	ld   l, h                                        ; $5087: $6c
	sbc  a                                           ; $5088: $9f
	dec  c                                           ; $5089: $0d
	nop                                              ; $508a: $00
	ld   a, [bc]                                     ; $508b: $0a
	ld   b, $1c                                      ; $508c: $06 $1c
	ld   a, [bc]                                     ; $508e: $0a
	ld   bc, $8d67                                   ; $508f: $01 $67 $8d
	sbc  d                                           ; $5092: $9a
	ld   e, l                                        ; $5093: $5d
	and  c                                           ; $5094: $a1
	ld   a, h                                        ; $5095: $7c
	sbc  [hl]                                        ; $5096: $9e
	ld   [$5d00], sp                                 ; $5097: $08 $00 $5d
	and  c                                           ; $509a: $a1
	dec  c                                           ; $509b: $0d
	add  [hl]                                        ; $509c: $86
	ld   a, h                                        ; $509d: $7c
	inc  b                                           ; $509e: $04
	ld   d, a                                        ; $509f: $57
	inc  b                                           ; $50a0: $04
	ld   h, e                                        ; $50a1: $63
	ld   a, l                                        ; $50a2: $7d
	sbc  [hl]                                        ; $50a3: $9e
	ld   e, c                                        ; $50a4: $59
	ld   a, b                                        ; $50a5: $78
	sbc  b                                           ; $50a6: $98
	ld   d, d                                        ; $50a7: $52
	ld   d, d                                        ; $50a8: $52
	dec  c                                           ; $50a9: $0d
	halt                                             ; $50aa: $76
	dec  b                                           ; $50ab: $05
	pop  de                                          ; $50ac: $d1
	ld   d, h                                        ; $50ad: $54
	ld   l, h                                        ; $50ae: $6c
	sbc  a                                           ; $50af: $9f
	dec  c                                           ; $50b0: $0d
	nop                                              ; $50b1: $00
	ld   a, [bc]                                     ; $50b2: $0a
	ld   bc, $ca02                                   ; $50b3: $01 $02 $ca
	sub  b                                           ; $50b6: $90
	ld   l, e                                        ; $50b7: $6b
	sbc  d                                           ; $50b8: $9a
	ld   a, c                                        ; $50b9: $79
	ld   [bc], a                                     ; $50ba: $02
	add  hl, bc                                      ; $50bb: $09
	ld   d, [hl]                                     ; $50bc: $56
	sub  a                                           ; $50bd: $97
	sbc  d                                           ; $50be: $9a
	sbc  c                                           ; $50bf: $99
	sub  [hl]                                        ; $50c0: $96
	ld   d, h                                        ; $50c1: $54
	ld   a, c                                        ; $50c2: $79
	dec  c                                           ; $50c3: $0d
	ld   e, d                                        ; $50c4: $5a
	and  c                                           ; $50c5: $a1
	ld   a, [hl]                                     ; $50c6: $7e
	sbc  c                                           ; $50c7: $99
	and  c                                           ; $50c8: $a1
	ld   l, [hl]                                     ; $50c9: $6e
	ld   l, h                                        ; $50ca: $6c
	sbc  a                                           ; $50cb: $9f
	dec  c                                           ; $50cc: $0d
	nop                                              ; $50cd: $00
	ld   a, [bc]                                     ; $50ce: $0a
	ld   b, $1c                                      ; $50cf: $06 $1c
	ld   a, [bc]                                     ; $50d1: $0a
	rrca                                             ; $50d2: $0f
	nop                                              ; $50d3: $00
	ld   bc, $df01                                   ; $50d4: $01 $01 $df
	db   $ec                                         ; $50d7: $ec
	and  e                                           ; $50d8: $a3
	ld   h, e                                        ; $50d9: $63
	and  c                                           ; $50da: $a1
	ld   a, h                                        ; $50db: $7c
	inc  b                                           ; $50dc: $04
	ld   l, l                                        ; $50dd: $6d
	add  [hl]                                        ; $50de: $86
	ld   a, h                                        ; $50df: $7c
	inc  b                                           ; $50e0: $04
	ld   d, a                                        ; $50e1: $57
	inc  b                                           ; $50e2: $04
	ld   h, e                                        ; $50e3: $63
	ld   [hl], c                                     ; $50e4: $71
	ld   [hl], h                                     ; $50e5: $74
	dec  c                                           ; $50e6: $0d
	ld   [hl], a                                     ; $50e7: $77
	ld   d, h                                        ; $50e8: $54
	ld   a, b                                        ; $50e9: $78
	and  c                                           ; $50ea: $a1
	ld   [hl], l                                     ; $50eb: $75

jr_04b_50ec:
	ld   h, l                                        ; $50ec: $65
	sub  l                                           ; $50ed: $95
	ld   d, h                                        ; $50ee: $54
	ld   e, c                                        ; $50ef: $59
	ld   sp, hl                                      ; $50f0: $f9
	dec  c                                           ; $50f1: $0d
	nop                                              ; $50f2: $00
	ld   a, [bc]                                     ; $50f3: $0a
	rrca                                             ; $50f4: $0f
	add  hl, bc                                      ; $50f5: $09
	nop                                              ; $50f6: $00
	ld   bc, $8e83                                   ; $50f7: $01 $83 $8e
	sbc  [hl]                                        ; $50fa: $9e
	ld   l, e                                        ; $50fb: $6b
	ld   d, h                                        ; $50fc: $54
	ld   l, [hl]                                     ; $50fd: $6e
	ld   a, b                                        ; $50fe: $78
	rst  $38                                         ; $50ff: $ff
	rst  $38                                         ; $5100: $ff
	dec  c                                           ; $5101: $0d

Call_04b_5102:
	nop                                              ; $5102: $00
	ld   a, [bc]                                     ; $5103: $0a
	rlca                                             ; $5104: $07
	ld   d, $06                                      ; $5105: $16 $06
	inc  bc                                          ; $5107: $03
	inc  de                                          ; $5108: $13
	ld   bc, $2364                                   ; $5109: $01 $64 $23
	nop                                              ; $510c: $00
	rlca                                             ; $510d: $07
	ld   h, e                                        ; $510e: $63
	ld   b, $03                                      ; $510f: $06 $03
	inc  de                                          ; $5111: $13
	ld   bc, $2596                                   ; $5112: $01 $96 $25
	nop                                              ; $5115: $00
	ld   bc, $ecdf                                   ; $5116: $01 $df $ec
	and  e                                           ; $5119: $a3
	ld   a, h                                        ; $511a: $7c
	sbc  [hl]                                        ; $511b: $9e
	ld   [$5d00], sp                                 ; $511c: $08 $00 $5d
	and  c                                           ; $511f: $a1
	dec  c                                           ; $5120: $0d
	add  [hl]                                        ; $5121: $86
	ld   a, h                                        ; $5122: $7c
	inc  b                                           ; $5123: $04
	ld   d, a                                        ; $5124: $57
	inc  b                                           ; $5125: $04
	ld   h, e                                        ; $5126: $63
	ld   a, l                                        ; $5127: $7d
	sbc  [hl]                                        ; $5128: $9e
	adc  h                                           ; $5129: $8c
	ld   d, b                                        ; $512a: $50
	adc  h                                           ; $512b: $8c
	ld   d, b                                        ; $512c: $50
	dec  c                                           ; $512d: $0d
	halt                                             ; $512e: $76
	ld   d, d                                        ; $512f: $52
	ld   [hl], c                                     ; $5130: $71
	ld   l, l                                        ; $5131: $6d
	halt                                             ; $5132: $76
	ld   h, c                                        ; $5133: $61
	sbc  e                                           ; $5134: $9b
	ld   e, c                                        ; $5135: $59
	ld   a, b                                        ; $5136: $78
	sbc  a                                           ; $5137: $9f
	dec  c                                           ; $5138: $0d
	nop                                              ; $5139: $00
	ld   a, [bc]                                     ; $513a: $0a
	ld   bc, $5d76                                   ; $513b: $01 $76 $5d
	ld   a, c                                        ; $513e: $79
	ld   [bc], a                                     ; $513f: $02
	jr   z, jr_04b_5194                              ; $5140: $28 $52

	dec  b                                           ; $5142: $05
	jr   nz, @-$6e                                   ; $5143: $20 $90

	ld   [bc], a                                     ; $5145: $02
	jp   nz, Jump_04b_7859                           ; $5146: $c2 $59 $78

	ld   d, d                                        ; $5149: $52
	ld   h, l                                        ; $514a: $65
	rst  $38                                         ; $514b: $ff
	rst  $38                                         ; $514c: $ff
	dec  c                                           ; $514d: $0d
	ld   e, c                                        ; $514e: $59
	halt                                             ; $514f: $76
	ld   d, d                                        ; $5150: $52
	ld   [hl], c                                     ; $5151: $71
	ld   [hl], h                                     ; $5152: $74
	sbc  [hl]                                        ; $5153: $9e
	ld   d, d                                        ; $5154: $52
	ld   d, d                                        ; $5155: $52
	halt                                             ; $5156: $76
	ld   d, d                                        ; $5157: $52
	ld   d, h                                        ; $5158: $54
	dec  b                                           ; $5159: $05
	jr   nz, jr_04b_50ec                             ; $515a: $20 $90

	dec  c                                           ; $515c: $0d
	ld   [bc], a                                     ; $515d: $02
	jp   nz, Jump_04b_7859                           ; $515e: $c2 $59 $78

	ld   d, d                                        ; $5161: $52
	ld   a, b                                        ; $5162: $78
	sbc  a                                           ; $5163: $9f
	dec  c                                           ; $5164: $0d
	nop                                              ; $5165: $00
	ld   a, [bc]                                     ; $5166: $0a
	ld   b, $1c                                      ; $5167: $06 $1c
	ld   a, [bc]                                     ; $5169: $0a
	ld   bc, $ecdf                                   ; $516a: $01 $df $ec
	and  e                                           ; $516d: $a3
	ld   a, h                                        ; $516e: $7c
	sbc  [hl]                                        ; $516f: $9e
	ld   [$5d00], sp                                 ; $5170: $08 $00 $5d
	and  c                                           ; $5173: $a1
	dec  c                                           ; $5174: $0d
	add  [hl]                                        ; $5175: $86
	ld   a, h                                        ; $5176: $7c
	inc  b                                           ; $5177: $04
	ld   d, a                                        ; $5178: $57
	inc  b                                           ; $5179: $04
	ld   h, e                                        ; $517a: $63
	ld   a, l                                        ; $517b: $7d
	rst  $38                                         ; $517c: $ff
	rst  $38                                         ; $517d: $ff
	dec  c                                           ; $517e: $0d
	ld   d, b                                        ; $517f: $50
	adc  h                                           ; $5180: $8c
	sbc  b                                           ; $5181: $98
	sub  [hl]                                        ; $5182: $96
	ld   e, l                                        ; $5183: $5d
	ld   a, b                                        ; $5184: $78
	ld   d, d                                        ; $5185: $52
	ld   a, b                                        ; $5186: $78
	sbc  a                                           ; $5187: $9f
	dec  c                                           ; $5188: $0d
	nop                                              ; $5189: $00
	ld   a, [bc]                                     ; $518a: $0a
	ld   bc, $7190                                   ; $518b: $01 $90 $71
	halt                                             ; $518e: $76
	ld   [bc], a                                     ; $518f: $02
	ld   a, [de]                                     ; $5190: $1a
	inc  bc                                          ; $5191: $03
	ld   l, e                                        ; $5192: $6b
	ld   a, h                                        ; $5193: $7c

jr_04b_5194:
	ld   [bc], a                                     ; $5194: $02
	and  c                                           ; $5195: $a1
	inc  bc                                          ; $5196: $03
	and  b                                           ; $5197: $a0
	ld   l, a                                        ; $5198: $6f
	and  b                                           ; $5199: $a0
	dec  c                                           ; $519a: $0d
	ld   [bc], a                                     ; $519b: $02
	ld   h, l                                        ; $519c: $65
	ld   d, [hl]                                     ; $519d: $56
	ld   [hl], h                                     ; $519e: $74
	ld   [bc], a                                     ; $519f: $02
	ld   a, a                                        ; $51a0: $7f
	inc  b                                           ; $51a1: $04
	dec  de                                          ; $51a2: $1b
	ld   h, l                                        ; $51a3: $65
	ld   l, l                                        ; $51a4: $6d
	adc  c                                           ; $51a5: $89
	ld   d, h                                        ; $51a6: $54
	ld   e, d                                        ; $51a7: $5a
	ld   d, d                                        ; $51a8: $52
	ld   d, d                                        ; $51a9: $52
	halt                                             ; $51aa: $76
	dec  c                                           ; $51ab: $0d
	dec  b                                           ; $51ac: $05
	pop  de                                          ; $51ad: $d1
	ld   d, h                                        ; $51ae: $54
	ld   l, h                                        ; $51af: $6c
	sbc  a                                           ; $51b0: $9f
	dec  c                                           ; $51b1: $0d
	nop                                              ; $51b2: $00
	ld   a, [bc]                                     ; $51b3: $0a
	ld   b, $1c                                      ; $51b4: $06 $1c
	ld   a, [bc]                                     ; $51b6: $0a
	ld   bc, $ecdf                                   ; $51b7: $01 $df $ec
	and  e                                           ; $51ba: $a3
	ld   a, h                                        ; $51bb: $7c
	sbc  [hl]                                        ; $51bc: $9e
	ld   [$5d00], sp                                 ; $51bd: $08 $00 $5d
	and  c                                           ; $51c0: $a1
	dec  c                                           ; $51c1: $0d
	add  [hl]                                        ; $51c2: $86
	ld   a, h                                        ; $51c3: $7c
	inc  b                                           ; $51c4: $04
	ld   d, a                                        ; $51c5: $57
	inc  b                                           ; $51c6: $04
	ld   h, e                                        ; $51c7: $63
	ld   a, l                                        ; $51c8: $7d
	sbc  [hl]                                        ; $51c9: $9e
	ld   e, c                                        ; $51ca: $59
	ld   a, b                                        ; $51cb: $78
	sbc  b                                           ; $51cc: $98
	ld   d, d                                        ; $51cd: $52
	ld   d, d                                        ; $51ce: $52
	dec  c                                           ; $51cf: $0d
	halt                                             ; $51d0: $76
	dec  b                                           ; $51d1: $05
	pop  de                                          ; $51d2: $d1
	ld   d, h                                        ; $51d3: $54
	ld   l, h                                        ; $51d4: $6c
	sbc  a                                           ; $51d5: $9f
	dec  c                                           ; $51d6: $0d
	nop                                              ; $51d7: $00
	ld   a, [bc]                                     ; $51d8: $0a
	ld   bc, $ca02                                   ; $51d9: $01 $02 $ca
	sub  b                                           ; $51dc: $90
	ld   l, e                                        ; $51dd: $6b
	sbc  d                                           ; $51de: $9a
	ld   a, c                                        ; $51df: $79
	ld   [bc], a                                     ; $51e0: $02
	add  hl, bc                                      ; $51e1: $09
	ld   d, [hl]                                     ; $51e2: $56
	sub  a                                           ; $51e3: $97
	sbc  d                                           ; $51e4: $9a
	sbc  c                                           ; $51e5: $99
	sub  [hl]                                        ; $51e6: $96
	ld   d, h                                        ; $51e7: $54
	ld   a, c                                        ; $51e8: $79
	dec  c                                           ; $51e9: $0d
	ld   e, d                                        ; $51ea: $5a
	and  c                                           ; $51eb: $a1
	ld   a, [hl]                                     ; $51ec: $7e
	sbc  c                                           ; $51ed: $99
	and  c                                           ; $51ee: $a1
	ld   l, [hl]                                     ; $51ef: $6e
	ld   l, h                                        ; $51f0: $6c
	sbc  a                                           ; $51f1: $9f
	dec  c                                           ; $51f2: $0d
	nop                                              ; $51f3: $00
	ld   a, [bc]                                     ; $51f4: $0a
	ld   b, $1c                                      ; $51f5: $06 $1c
	ld   a, [bc]                                     ; $51f7: $0a
	rrca                                             ; $51f8: $0f
	nop                                              ; $51f9: $00
	ld   bc, $a301                                   ; $51fa: $01 $01 $a3
	and  l                                           ; $51fd: $a5
	db   $ec                                         ; $51fe: $ec
	cp   d                                           ; $51ff: $ba
	ld   a, h                                        ; $5200: $7c
	inc  b                                           ; $5201: $04
	ld   l, l                                        ; $5202: $6d
	add  [hl]                                        ; $5203: $86
	ld   a, h                                        ; $5204: $7c
	inc  b                                           ; $5205: $04
	ld   d, a                                        ; $5206: $57
	inc  b                                           ; $5207: $04
	ld   h, e                                        ; $5208: $63
	ld   [hl], c                                     ; $5209: $71
	ld   [hl], h                                     ; $520a: $74
	dec  c                                           ; $520b: $0d
	ld   [hl], a                                     ; $520c: $77
	ld   d, h                                        ; $520d: $54
	ld   a, b                                        ; $520e: $78
	and  c                                           ; $520f: $a1
	ld   [hl], l                                     ; $5210: $75
	ld   h, l                                        ; $5211: $65

jr_04b_5212:
	sub  l                                           ; $5212: $95
	ld   d, h                                        ; $5213: $54
	ld   e, c                                        ; $5214: $59
	ld   sp, hl                                      ; $5215: $f9
	dec  c                                           ; $5216: $0d
	nop                                              ; $5217: $00
	ld   a, [bc]                                     ; $5218: $0a
	rrca                                             ; $5219: $0f
	add  hl, bc                                      ; $521a: $09
	nop                                              ; $521b: $00
	ld   bc, $8e83                                   ; $521c: $01 $83 $8e
	sbc  [hl]                                        ; $521f: $9e
	ld   l, e                                        ; $5220: $6b
	ld   d, h                                        ; $5221: $54
	ld   l, [hl]                                     ; $5222: $6e
	ld   a, b                                        ; $5223: $78
	rst  $38                                         ; $5224: $ff
	rst  $38                                         ; $5225: $ff
	dec  c                                           ; $5226: $0d
	nop                                              ; $5227: $00
	ld   a, [bc]                                     ; $5228: $0a
	rlca                                             ; $5229: $07
	inc  a                                           ; $522a: $3c
	rlca                                             ; $522b: $07
	inc  bc                                          ; $522c: $03
	inc  d                                           ; $522d: $14
	ld   bc, $2364                                   ; $522e: $01 $64 $23
	nop                                              ; $5231: $00
	rlca                                             ; $5232: $07
	adc  d                                           ; $5233: $8a
	rlca                                             ; $5234: $07
	inc  bc                                          ; $5235: $03
	inc  d                                           ; $5236: $14
	ld   bc, $2596                                   ; $5237: $01 $96 $25
	nop                                              ; $523a: $00
	ld   bc, $a5a3                                   ; $523b: $01 $a3 $a5
	db   $ec                                         ; $523e: $ec
	cp   d                                           ; $523f: $ba
	ld   a, h                                        ; $5240: $7c
	sbc  [hl]                                        ; $5241: $9e
	ld   [$5d00], sp                                 ; $5242: $08 $00 $5d
	and  c                                           ; $5245: $a1
	dec  c                                           ; $5246: $0d
	add  [hl]                                        ; $5247: $86
	ld   a, h                                        ; $5248: $7c
	inc  b                                           ; $5249: $04
	ld   d, a                                        ; $524a: $57
	inc  b                                           ; $524b: $04
	ld   h, e                                        ; $524c: $63
	ld   a, l                                        ; $524d: $7d
	sbc  [hl]                                        ; $524e: $9e
	adc  h                                           ; $524f: $8c
	ld   d, b                                        ; $5250: $50
	adc  h                                           ; $5251: $8c
	ld   d, b                                        ; $5252: $50
	dec  c                                           ; $5253: $0d
	halt                                             ; $5254: $76
	ld   d, d                                        ; $5255: $52
	ld   [hl], c                                     ; $5256: $71
	ld   l, l                                        ; $5257: $6d
	halt                                             ; $5258: $76
	ld   h, c                                        ; $5259: $61
	sbc  e                                           ; $525a: $9b
	ld   e, c                                        ; $525b: $59
	ld   a, b                                        ; $525c: $78
	sbc  a                                           ; $525d: $9f
	dec  c                                           ; $525e: $0d
	nop                                              ; $525f: $00
	ld   a, [bc]                                     ; $5260: $0a
	ld   bc, $5d76                                   ; $5261: $01 $76 $5d
	ld   a, c                                        ; $5264: $79
	ld   [bc], a                                     ; $5265: $02
	jr   z, jr_04b_52ba                              ; $5266: $28 $52

	dec  b                                           ; $5268: $05
	jr   nz, @-$6e                                   ; $5269: $20 $90

	ld   [bc], a                                     ; $526b: $02
	jp   nz, Jump_04b_7859                           ; $526c: $c2 $59 $78

	ld   d, d                                        ; $526f: $52
	ld   h, l                                        ; $5270: $65
	rst  $38                                         ; $5271: $ff
	rst  $38                                         ; $5272: $ff
	dec  c                                           ; $5273: $0d
	ld   e, c                                        ; $5274: $59
	halt                                             ; $5275: $76

Jump_04b_5276:
	ld   d, d                                        ; $5276: $52
	ld   [hl], c                                     ; $5277: $71
	ld   [hl], h                                     ; $5278: $74
	sbc  [hl]                                        ; $5279: $9e
	ld   d, d                                        ; $527a: $52
	ld   d, d                                        ; $527b: $52
	halt                                             ; $527c: $76
	ld   d, d                                        ; $527d: $52
	ld   d, h                                        ; $527e: $54
	dec  b                                           ; $527f: $05
	jr   nz, jr_04b_5212                             ; $5280: $20 $90

	dec  c                                           ; $5282: $0d
	ld   [bc], a                                     ; $5283: $02
	jp   nz, Jump_04b_7859                           ; $5284: $c2 $59 $78

	ld   d, d                                        ; $5287: $52
	ld   a, b                                        ; $5288: $78
	sbc  a                                           ; $5289: $9f
	dec  c                                           ; $528a: $0d
	nop                                              ; $528b: $00
	ld   a, [bc]                                     ; $528c: $0a
	ld   b, $1c                                      ; $528d: $06 $1c
	ld   a, [bc]                                     ; $528f: $0a
	ld   bc, $a5a3                                   ; $5290: $01 $a3 $a5
	db   $ec                                         ; $5293: $ec
	cp   d                                           ; $5294: $ba
	ld   a, h                                        ; $5295: $7c
	sbc  [hl]                                        ; $5296: $9e
	ld   [$5d00], sp                                 ; $5297: $08 $00 $5d
	and  c                                           ; $529a: $a1
	dec  c                                           ; $529b: $0d
	add  [hl]                                        ; $529c: $86
	ld   a, h                                        ; $529d: $7c
	inc  b                                           ; $529e: $04
	ld   d, a                                        ; $529f: $57
	inc  b                                           ; $52a0: $04
	ld   h, e                                        ; $52a1: $63
	ld   a, l                                        ; $52a2: $7d
	rst  $38                                         ; $52a3: $ff
	rst  $38                                         ; $52a4: $ff
	dec  c                                           ; $52a5: $0d
	ld   d, b                                        ; $52a6: $50
	adc  h                                           ; $52a7: $8c
	sbc  b                                           ; $52a8: $98
	sub  [hl]                                        ; $52a9: $96
	ld   e, l                                        ; $52aa: $5d
	ld   a, b                                        ; $52ab: $78
	ld   d, d                                        ; $52ac: $52
	ld   a, b                                        ; $52ad: $78
	sbc  a                                           ; $52ae: $9f
	dec  c                                           ; $52af: $0d
	nop                                              ; $52b0: $00
	ld   a, [bc]                                     ; $52b1: $0a
	ld   bc, $7190                                   ; $52b2: $01 $90 $71
	halt                                             ; $52b5: $76
	ld   [bc], a                                     ; $52b6: $02
	ld   a, [de]                                     ; $52b7: $1a
	inc  bc                                          ; $52b8: $03
	ld   l, e                                        ; $52b9: $6b

jr_04b_52ba:
	ld   a, h                                        ; $52ba: $7c
	ld   [bc], a                                     ; $52bb: $02
	and  c                                           ; $52bc: $a1
	inc  bc                                          ; $52bd: $03
	and  b                                           ; $52be: $a0
	ld   l, a                                        ; $52bf: $6f
	and  b                                           ; $52c0: $a0
	dec  c                                           ; $52c1: $0d
	ld   [bc], a                                     ; $52c2: $02
	ld   h, l                                        ; $52c3: $65
	ld   d, [hl]                                     ; $52c4: $56
	ld   [hl], h                                     ; $52c5: $74
	ld   [bc], a                                     ; $52c6: $02
	ld   a, a                                        ; $52c7: $7f
	inc  b                                           ; $52c8: $04
	dec  de                                          ; $52c9: $1b
	ld   h, l                                        ; $52ca: $65
	ld   l, l                                        ; $52cb: $6d
	adc  c                                           ; $52cc: $89
	ld   d, h                                        ; $52cd: $54
	ld   e, d                                        ; $52ce: $5a
	ld   d, d                                        ; $52cf: $52
	ld   d, d                                        ; $52d0: $52
	halt                                             ; $52d1: $76
	dec  c                                           ; $52d2: $0d
	dec  b                                           ; $52d3: $05
	pop  de                                          ; $52d4: $d1
	ld   d, h                                        ; $52d5: $54
	ld   l, h                                        ; $52d6: $6c
	sbc  a                                           ; $52d7: $9f
	dec  c                                           ; $52d8: $0d
	nop                                              ; $52d9: $00
	ld   a, [bc]                                     ; $52da: $0a
	ld   b, $1c                                      ; $52db: $06 $1c
	ld   a, [bc]                                     ; $52dd: $0a
	ld   bc, $a5a3                                   ; $52de: $01 $a3 $a5
	db   $ec                                         ; $52e1: $ec
	cp   d                                           ; $52e2: $ba
	ld   a, h                                        ; $52e3: $7c
	sbc  [hl]                                        ; $52e4: $9e
	ld   [$5d00], sp                                 ; $52e5: $08 $00 $5d
	and  c                                           ; $52e8: $a1
	dec  c                                           ; $52e9: $0d
	add  [hl]                                        ; $52ea: $86
	ld   a, h                                        ; $52eb: $7c
	inc  b                                           ; $52ec: $04
	ld   d, a                                        ; $52ed: $57
	inc  b                                           ; $52ee: $04
	ld   h, e                                        ; $52ef: $63
	ld   a, l                                        ; $52f0: $7d
	sbc  [hl]                                        ; $52f1: $9e
	ld   e, c                                        ; $52f2: $59
	ld   a, b                                        ; $52f3: $78
	sbc  b                                           ; $52f4: $98
	ld   d, d                                        ; $52f5: $52
	ld   d, d                                        ; $52f6: $52
	dec  c                                           ; $52f7: $0d
	halt                                             ; $52f8: $76
	dec  b                                           ; $52f9: $05
	pop  de                                          ; $52fa: $d1
	ld   d, h                                        ; $52fb: $54
	ld   l, h                                        ; $52fc: $6c
	sbc  a                                           ; $52fd: $9f
	dec  c                                           ; $52fe: $0d
	nop                                              ; $52ff: $00
	ld   a, [bc]                                     ; $5300: $0a
	ld   bc, $ca02                                   ; $5301: $01 $02 $ca
	sub  b                                           ; $5304: $90
	ld   l, e                                        ; $5305: $6b
	sbc  d                                           ; $5306: $9a
	ld   a, c                                        ; $5307: $79
	ld   [bc], a                                     ; $5308: $02
	add  hl, bc                                      ; $5309: $09
	ld   d, [hl]                                     ; $530a: $56
	sub  a                                           ; $530b: $97
	sbc  d                                           ; $530c: $9a
	sbc  c                                           ; $530d: $99
	sub  [hl]                                        ; $530e: $96
	ld   d, h                                        ; $530f: $54
	ld   a, c                                        ; $5310: $79
	dec  c                                           ; $5311: $0d
	ld   e, d                                        ; $5312: $5a
	and  c                                           ; $5313: $a1
	ld   a, [hl]                                     ; $5314: $7e
	sbc  c                                           ; $5315: $99
	and  c                                           ; $5316: $a1
	ld   l, [hl]                                     ; $5317: $6e
	ld   l, h                                        ; $5318: $6c
	sbc  a                                           ; $5319: $9f
	dec  c                                           ; $531a: $0d
	nop                                              ; $531b: $00
	ld   a, [bc]                                     ; $531c: $0a
	ld   b, $1c                                      ; $531d: $06 $1c
	ld   a, [bc]                                     ; $531f: $0a
	rrca                                             ; $5320: $0f
	nop                                              ; $5321: $00
	ld   bc, $0201                                   ; $5322: $01 $01 $02

jr_04b_5325:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5325: $cf
	dec  b                                           ; $5326: $05
	ld   a, [de]                                     ; $5327: $1a
	ld   h, e                                        ; $5328: $63
	and  c                                           ; $5329: $a1
	ld   a, h                                        ; $532a: $7c
	inc  b                                           ; $532b: $04
	ld   l, l                                        ; $532c: $6d
	add  [hl]                                        ; $532d: $86
	ld   a, h                                        ; $532e: $7c
	inc  b                                           ; $532f: $04
	ld   d, a                                        ; $5330: $57
	inc  b                                           ; $5331: $04
	ld   h, e                                        ; $5332: $63
	ld   [hl], c                                     ; $5333: $71
	ld   [hl], h                                     ; $5334: $74
	dec  c                                           ; $5335: $0d
	ld   [hl], a                                     ; $5336: $77
	ld   d, h                                        ; $5337: $54
	ld   a, b                                        ; $5338: $78
	and  c                                           ; $5339: $a1
	ld   [hl], l                                     ; $533a: $75
	ld   h, l                                        ; $533b: $65

jr_04b_533c:
	sub  l                                           ; $533c: $95
	ld   d, h                                        ; $533d: $54
	ld   e, c                                        ; $533e: $59
	ld   sp, hl                                      ; $533f: $f9
	dec  c                                           ; $5340: $0d
	nop                                              ; $5341: $00
	ld   a, [bc]                                     ; $5342: $0a
	rrca                                             ; $5343: $0f
	add  hl, bc                                      ; $5344: $09
	nop                                              ; $5345: $00
	ld   bc, $8e83                                   ; $5346: $01 $83 $8e
	sbc  [hl]                                        ; $5349: $9e
	ld   l, e                                        ; $534a: $6b
	ld   d, h                                        ; $534b: $54
	ld   l, [hl]                                     ; $534c: $6e
	ld   a, b                                        ; $534d: $78
	rst  $38                                         ; $534e: $ff
	rst  $38                                         ; $534f: $ff
	dec  c                                           ; $5350: $0d
	nop                                              ; $5351: $00
	ld   a, [bc]                                     ; $5352: $0a
	rlca                                             ; $5353: $07
	ld   h, [hl]                                     ; $5354: $66
	ld   [$1503], sp                                 ; $5355: $08 $03 $15
	ld   bc, $2364                                   ; $5358: $01 $64 $23
	nop                                              ; $535b: $00
	rlca                                             ; $535c: $07
	or   h                                           ; $535d: $b4
	ld   [$1503], sp                                 ; $535e: $08 $03 $15
	ld   bc, $2596                                   ; $5361: $01 $96 $25
	nop                                              ; $5364: $00
	ld   bc, $cf02                                   ; $5365: $01 $02 $cf
	dec  b                                           ; $5368: $05
	ld   a, [de]                                     ; $5369: $1a
	ld   a, h                                        ; $536a: $7c
	sbc  [hl]                                        ; $536b: $9e
	ld   [$5d00], sp                                 ; $536c: $08 $00 $5d
	and  c                                           ; $536f: $a1
	dec  c                                           ; $5370: $0d
	add  [hl]                                        ; $5371: $86
	ld   a, h                                        ; $5372: $7c
	inc  b                                           ; $5373: $04
	ld   d, a                                        ; $5374: $57
	inc  b                                           ; $5375: $04
	ld   h, e                                        ; $5376: $63
	ld   a, l                                        ; $5377: $7d
	sbc  [hl]                                        ; $5378: $9e
	adc  h                                           ; $5379: $8c
	ld   d, b                                        ; $537a: $50
	adc  h                                           ; $537b: $8c
	ld   d, b                                        ; $537c: $50
	dec  c                                           ; $537d: $0d
	halt                                             ; $537e: $76
	ld   d, d                                        ; $537f: $52
	ld   [hl], c                                     ; $5380: $71
	ld   l, l                                        ; $5381: $6d
	halt                                             ; $5382: $76
	ld   h, c                                        ; $5383: $61
	sbc  e                                           ; $5384: $9b
	ld   e, c                                        ; $5385: $59
	ld   a, b                                        ; $5386: $78
	sbc  a                                           ; $5387: $9f
	dec  c                                           ; $5388: $0d
	nop                                              ; $5389: $00
	ld   a, [bc]                                     ; $538a: $0a
	ld   bc, $5d76                                   ; $538b: $01 $76 $5d
	ld   a, c                                        ; $538e: $79
	ld   [bc], a                                     ; $538f: $02
	jr   z, jr_04b_53e4                              ; $5390: $28 $52

	dec  b                                           ; $5392: $05
	jr   nz, jr_04b_5325                             ; $5393: $20 $90

	ld   [bc], a                                     ; $5395: $02
	jp   nz, Jump_04b_7859                           ; $5396: $c2 $59 $78

	ld   d, d                                        ; $5399: $52
	ld   h, l                                        ; $539a: $65
	rst  $38                                         ; $539b: $ff
	rst  $38                                         ; $539c: $ff
	dec  c                                           ; $539d: $0d
	ld   e, c                                        ; $539e: $59
	halt                                             ; $539f: $76
	ld   d, d                                        ; $53a0: $52
	ld   [hl], c                                     ; $53a1: $71
	ld   [hl], h                                     ; $53a2: $74
	sbc  [hl]                                        ; $53a3: $9e
	ld   d, d                                        ; $53a4: $52
	ld   d, d                                        ; $53a5: $52
	halt                                             ; $53a6: $76
	ld   d, d                                        ; $53a7: $52
	ld   d, h                                        ; $53a8: $54
	dec  b                                           ; $53a9: $05
	jr   nz, jr_04b_533c                             ; $53aa: $20 $90

	dec  c                                           ; $53ac: $0d
	ld   [bc], a                                     ; $53ad: $02
	jp   nz, Jump_04b_7859                           ; $53ae: $c2 $59 $78

	ld   d, d                                        ; $53b1: $52
	ld   a, b                                        ; $53b2: $78
	sbc  a                                           ; $53b3: $9f
	dec  c                                           ; $53b4: $0d
	nop                                              ; $53b5: $00
	ld   a, [bc]                                     ; $53b6: $0a
	ld   b, $1c                                      ; $53b7: $06 $1c
	ld   a, [bc]                                     ; $53b9: $0a
	ld   bc, $cf02                                   ; $53ba: $01 $02 $cf
	dec  b                                           ; $53bd: $05
	ld   a, [de]                                     ; $53be: $1a
	ld   a, h                                        ; $53bf: $7c
	sbc  [hl]                                        ; $53c0: $9e
	ld   [$5d00], sp                                 ; $53c1: $08 $00 $5d
	and  c                                           ; $53c4: $a1
	dec  c                                           ; $53c5: $0d
	add  [hl]                                        ; $53c6: $86
	ld   a, h                                        ; $53c7: $7c
	inc  b                                           ; $53c8: $04
	ld   d, a                                        ; $53c9: $57
	inc  b                                           ; $53ca: $04
	ld   h, e                                        ; $53cb: $63
	ld   a, l                                        ; $53cc: $7d
	rst  $38                                         ; $53cd: $ff
	rst  $38                                         ; $53ce: $ff
	dec  c                                           ; $53cf: $0d
	ld   d, b                                        ; $53d0: $50
	adc  h                                           ; $53d1: $8c
	sbc  b                                           ; $53d2: $98
	sub  [hl]                                        ; $53d3: $96
	ld   e, l                                        ; $53d4: $5d
	ld   a, b                                        ; $53d5: $78
	ld   d, d                                        ; $53d6: $52
	ld   a, b                                        ; $53d7: $78
	sbc  a                                           ; $53d8: $9f
	dec  c                                           ; $53d9: $0d
	nop                                              ; $53da: $00
	ld   a, [bc]                                     ; $53db: $0a
	ld   bc, $7190                                   ; $53dc: $01 $90 $71
	halt                                             ; $53df: $76
	ld   [bc], a                                     ; $53e0: $02
	ld   a, [de]                                     ; $53e1: $1a
	inc  bc                                          ; $53e2: $03
	ld   l, e                                        ; $53e3: $6b

jr_04b_53e4:
	ld   a, h                                        ; $53e4: $7c
	ld   [bc], a                                     ; $53e5: $02
	and  c                                           ; $53e6: $a1
	inc  bc                                          ; $53e7: $03
	and  b                                           ; $53e8: $a0
	ld   l, a                                        ; $53e9: $6f
	and  b                                           ; $53ea: $a0
	dec  c                                           ; $53eb: $0d
	ld   [bc], a                                     ; $53ec: $02
	ld   h, l                                        ; $53ed: $65
	ld   d, [hl]                                     ; $53ee: $56
	ld   [hl], h                                     ; $53ef: $74
	ld   [bc], a                                     ; $53f0: $02
	ld   a, a                                        ; $53f1: $7f
	inc  b                                           ; $53f2: $04
	dec  de                                          ; $53f3: $1b
	ld   h, l                                        ; $53f4: $65
	ld   l, l                                        ; $53f5: $6d
	adc  c                                           ; $53f6: $89
	ld   d, h                                        ; $53f7: $54
	ld   e, d                                        ; $53f8: $5a
	ld   d, d                                        ; $53f9: $52
	ld   d, d                                        ; $53fa: $52
	halt                                             ; $53fb: $76
	dec  c                                           ; $53fc: $0d
	dec  b                                           ; $53fd: $05
	pop  de                                          ; $53fe: $d1
	ld   d, h                                        ; $53ff: $54
	ld   l, h                                        ; $5400: $6c
	sbc  a                                           ; $5401: $9f
	dec  c                                           ; $5402: $0d
	nop                                              ; $5403: $00
	ld   a, [bc]                                     ; $5404: $0a
	ld   b, $1c                                      ; $5405: $06 $1c
	ld   a, [bc]                                     ; $5407: $0a
	ld   bc, $cf02                                   ; $5408: $01 $02 $cf
	dec  b                                           ; $540b: $05
	ld   a, [de]                                     ; $540c: $1a
	ld   a, h                                        ; $540d: $7c
	sbc  [hl]                                        ; $540e: $9e
	ld   [$5d00], sp                                 ; $540f: $08 $00 $5d
	and  c                                           ; $5412: $a1
	dec  c                                           ; $5413: $0d
	add  [hl]                                        ; $5414: $86
	ld   a, h                                        ; $5415: $7c
	inc  b                                           ; $5416: $04
	ld   d, a                                        ; $5417: $57
	inc  b                                           ; $5418: $04
	ld   h, e                                        ; $5419: $63
	ld   a, l                                        ; $541a: $7d
	sbc  [hl]                                        ; $541b: $9e
	ld   e, c                                        ; $541c: $59
	ld   a, b                                        ; $541d: $78
	sbc  b                                           ; $541e: $98
	ld   d, d                                        ; $541f: $52
	ld   d, d                                        ; $5420: $52
	dec  c                                           ; $5421: $0d
	halt                                             ; $5422: $76
	dec  b                                           ; $5423: $05
	pop  de                                          ; $5424: $d1
	ld   d, h                                        ; $5425: $54
	ld   l, h                                        ; $5426: $6c
	sbc  a                                           ; $5427: $9f
	dec  c                                           ; $5428: $0d
	nop                                              ; $5429: $00
	ld   a, [bc]                                     ; $542a: $0a
	ld   bc, $ca02                                   ; $542b: $01 $02 $ca
	sub  b                                           ; $542e: $90
	ld   l, e                                        ; $542f: $6b
	sbc  d                                           ; $5430: $9a
	ld   a, c                                        ; $5431: $79
	ld   [bc], a                                     ; $5432: $02
	add  hl, bc                                      ; $5433: $09
	ld   d, [hl]                                     ; $5434: $56
	sub  a                                           ; $5435: $97
	sbc  d                                           ; $5436: $9a
	sbc  c                                           ; $5437: $99
	sub  [hl]                                        ; $5438: $96
	ld   d, h                                        ; $5439: $54
	ld   a, c                                        ; $543a: $79
	dec  c                                           ; $543b: $0d
	ld   e, d                                        ; $543c: $5a
	and  c                                           ; $543d: $a1
	ld   a, [hl]                                     ; $543e: $7e
	sbc  c                                           ; $543f: $99
	and  c                                           ; $5440: $a1
	ld   l, [hl]                                     ; $5441: $6e
	ld   l, h                                        ; $5442: $6c
	sbc  a                                           ; $5443: $9f
	dec  c                                           ; $5444: $0d
	nop                                              ; $5445: $00
	ld   a, [bc]                                     ; $5446: $0a
	ld   b, $1c                                      ; $5447: $06 $1c
	ld   a, [bc]                                     ; $5449: $0a
	rrca                                             ; $544a: $0f
	nop                                              ; $544b: $00
	ld   bc, $ac01                                   ; $544c: $01 $01 $ac
	push af                                          ; $544f: $f5
	bit  4, e                                        ; $5450: $cb $63
	and  c                                           ; $5452: $a1
	ld   a, h                                        ; $5453: $7c
	inc  b                                           ; $5454: $04
	ld   l, l                                        ; $5455: $6d
	add  [hl]                                        ; $5456: $86
	ld   a, h                                        ; $5457: $7c
	inc  b                                           ; $5458: $04
	ld   d, a                                        ; $5459: $57
	inc  b                                           ; $545a: $04
	ld   h, e                                        ; $545b: $63
	ld   [hl], c                                     ; $545c: $71
	ld   [hl], h                                     ; $545d: $74
	dec  c                                           ; $545e: $0d
	ld   [hl], a                                     ; $545f: $77
	ld   d, h                                        ; $5460: $54

Jump_04b_5461:
	ld   a, b                                        ; $5461: $78
	and  c                                           ; $5462: $a1
	ld   [hl], l                                     ; $5463: $75

jr_04b_5464:
	ld   h, l                                        ; $5464: $65
	sub  l                                           ; $5465: $95
	ld   d, h                                        ; $5466: $54
	ld   e, c                                        ; $5467: $59
	ld   sp, hl                                      ; $5468: $f9
	dec  c                                           ; $5469: $0d
	nop                                              ; $546a: $00
	ld   a, [bc]                                     ; $546b: $0a
	rrca                                             ; $546c: $0f
	add  hl, bc                                      ; $546d: $09
	nop                                              ; $546e: $00
	ld   bc, $8e83                                   ; $546f: $01 $83 $8e
	sbc  [hl]                                        ; $5472: $9e
	ld   l, e                                        ; $5473: $6b
	ld   d, h                                        ; $5474: $54
	ld   l, [hl]                                     ; $5475: $6e
	ld   a, b                                        ; $5476: $78
	rst  $38                                         ; $5477: $ff
	rst  $38                                         ; $5478: $ff
	dec  c                                           ; $5479: $0d
	nop                                              ; $547a: $00
	ld   a, [bc]                                     ; $547b: $0a

Jump_04b_547c:
	rlca                                             ; $547c: $07
	adc  [hl]                                        ; $547d: $8e
	add  hl, bc                                      ; $547e: $09
	inc  bc                                          ; $547f: $03
	ld   d, $01                                      ; $5480: $16 $01
	ld   h, h                                        ; $5482: $64
	inc  hl                                          ; $5483: $23
	nop                                              ; $5484: $00
	rlca                                             ; $5485: $07
	db   $db                                         ; $5486: $db
	add  hl, bc                                      ; $5487: $09
	inc  bc                                          ; $5488: $03
	ld   d, $01                                      ; $5489: $16 $01
	sub  [hl]                                        ; $548b: $96
	dec  h                                           ; $548c: $25
	nop                                              ; $548d: $00
	ld   bc, $f5ac                                   ; $548e: $01 $ac $f5
	bit  7, h                                        ; $5491: $cb $7c
	sbc  [hl]                                        ; $5493: $9e
	ld   [$5d00], sp                                 ; $5494: $08 $00 $5d
	and  c                                           ; $5497: $a1
	dec  c                                           ; $5498: $0d
	add  [hl]                                        ; $5499: $86
	ld   a, h                                        ; $549a: $7c
	inc  b                                           ; $549b: $04
	ld   d, a                                        ; $549c: $57
	inc  b                                           ; $549d: $04
	ld   h, e                                        ; $549e: $63
	ld   a, l                                        ; $549f: $7d
	sbc  [hl]                                        ; $54a0: $9e
	adc  h                                           ; $54a1: $8c
	ld   d, b                                        ; $54a2: $50
	adc  h                                           ; $54a3: $8c
	ld   d, b                                        ; $54a4: $50
	dec  c                                           ; $54a5: $0d
	halt                                             ; $54a6: $76
	ld   d, d                                        ; $54a7: $52
	ld   [hl], c                                     ; $54a8: $71
	ld   l, l                                        ; $54a9: $6d
	halt                                             ; $54aa: $76
	ld   h, c                                        ; $54ab: $61
	sbc  e                                           ; $54ac: $9b
	ld   e, c                                        ; $54ad: $59
	ld   a, b                                        ; $54ae: $78
	sbc  a                                           ; $54af: $9f
	dec  c                                           ; $54b0: $0d
	nop                                              ; $54b1: $00
	ld   a, [bc]                                     ; $54b2: $0a
	ld   bc, $5d76                                   ; $54b3: $01 $76 $5d
	ld   a, c                                        ; $54b6: $79
	ld   [bc], a                                     ; $54b7: $02
	jr   z, jr_04b_550c                              ; $54b8: $28 $52

	dec  b                                           ; $54ba: $05
	jr   nz, @-$6e                                   ; $54bb: $20 $90

	ld   [bc], a                                     ; $54bd: $02
	jp   nz, Jump_04b_7859                           ; $54be: $c2 $59 $78

	ld   d, d                                        ; $54c1: $52
	ld   h, l                                        ; $54c2: $65
	rst  $38                                         ; $54c3: $ff
	rst  $38                                         ; $54c4: $ff
	dec  c                                           ; $54c5: $0d
	ld   e, c                                        ; $54c6: $59
	halt                                             ; $54c7: $76
	ld   d, d                                        ; $54c8: $52
	ld   [hl], c                                     ; $54c9: $71
	ld   [hl], h                                     ; $54ca: $74
	sbc  [hl]                                        ; $54cb: $9e
	ld   d, d                                        ; $54cc: $52
	ld   d, d                                        ; $54cd: $52
	halt                                             ; $54ce: $76
	ld   d, d                                        ; $54cf: $52
	ld   d, h                                        ; $54d0: $54
	dec  b                                           ; $54d1: $05
	jr   nz, jr_04b_5464                             ; $54d2: $20 $90

	dec  c                                           ; $54d4: $0d
	ld   [bc], a                                     ; $54d5: $02
	jp   nz, Jump_04b_7859                           ; $54d6: $c2 $59 $78

	ld   d, d                                        ; $54d9: $52
	ld   a, b                                        ; $54da: $78
	sbc  a                                           ; $54db: $9f
	dec  c                                           ; $54dc: $0d
	nop                                              ; $54dd: $00
	ld   a, [bc]                                     ; $54de: $0a
	ld   b, $1c                                      ; $54df: $06 $1c
	ld   a, [bc]                                     ; $54e1: $0a
	ld   bc, $f5ac                                   ; $54e2: $01 $ac $f5
	bit  7, h                                        ; $54e5: $cb $7c
	sbc  [hl]                                        ; $54e7: $9e
	ld   [$5d00], sp                                 ; $54e8: $08 $00 $5d
	and  c                                           ; $54eb: $a1
	dec  c                                           ; $54ec: $0d
	add  [hl]                                        ; $54ed: $86
	ld   a, h                                        ; $54ee: $7c
	inc  b                                           ; $54ef: $04
	ld   d, a                                        ; $54f0: $57
	inc  b                                           ; $54f1: $04
	ld   h, e                                        ; $54f2: $63
	ld   a, l                                        ; $54f3: $7d
	rst  $38                                         ; $54f4: $ff
	rst  $38                                         ; $54f5: $ff
	dec  c                                           ; $54f6: $0d
	ld   d, b                                        ; $54f7: $50
	adc  h                                           ; $54f8: $8c
	sbc  b                                           ; $54f9: $98
	sub  [hl]                                        ; $54fa: $96
	ld   e, l                                        ; $54fb: $5d
	ld   a, b                                        ; $54fc: $78
	ld   d, d                                        ; $54fd: $52
	ld   a, b                                        ; $54fe: $78
	sbc  a                                           ; $54ff: $9f
	dec  c                                           ; $5500: $0d
	nop                                              ; $5501: $00
	ld   a, [bc]                                     ; $5502: $0a
	ld   bc, $7190                                   ; $5503: $01 $90 $71
	halt                                             ; $5506: $76
	ld   [bc], a                                     ; $5507: $02
	ld   a, [de]                                     ; $5508: $1a
	inc  bc                                          ; $5509: $03
	ld   l, e                                        ; $550a: $6b
	ld   a, h                                        ; $550b: $7c

jr_04b_550c:
	ld   [bc], a                                     ; $550c: $02
	and  c                                           ; $550d: $a1
	inc  bc                                          ; $550e: $03
	and  b                                           ; $550f: $a0
	ld   l, a                                        ; $5510: $6f
	and  b                                           ; $5511: $a0
	dec  c                                           ; $5512: $0d
	ld   [bc], a                                     ; $5513: $02
	ld   h, l                                        ; $5514: $65
	ld   d, [hl]                                     ; $5515: $56
	ld   [hl], h                                     ; $5516: $74
	ld   [bc], a                                     ; $5517: $02
	ld   a, a                                        ; $5518: $7f
	inc  b                                           ; $5519: $04
	dec  de                                          ; $551a: $1b
	ld   h, l                                        ; $551b: $65
	ld   l, l                                        ; $551c: $6d
	adc  c                                           ; $551d: $89
	ld   d, h                                        ; $551e: $54
	ld   e, d                                        ; $551f: $5a
	ld   d, d                                        ; $5520: $52
	ld   d, d                                        ; $5521: $52
	halt                                             ; $5522: $76
	dec  c                                           ; $5523: $0d
	dec  b                                           ; $5524: $05
	pop  de                                          ; $5525: $d1
	ld   d, h                                        ; $5526: $54
	ld   l, h                                        ; $5527: $6c
	sbc  a                                           ; $5528: $9f
	dec  c                                           ; $5529: $0d
	nop                                              ; $552a: $00
	ld   a, [bc]                                     ; $552b: $0a
	ld   b, $1c                                      ; $552c: $06 $1c
	ld   a, [bc]                                     ; $552e: $0a
	ld   bc, $f5ac                                   ; $552f: $01 $ac $f5
	bit  7, h                                        ; $5532: $cb $7c
	sbc  [hl]                                        ; $5534: $9e
	ld   [$5d00], sp                                 ; $5535: $08 $00 $5d
	and  c                                           ; $5538: $a1
	dec  c                                           ; $5539: $0d
	add  [hl]                                        ; $553a: $86
	ld   a, h                                        ; $553b: $7c
	inc  b                                           ; $553c: $04
	ld   d, a                                        ; $553d: $57
	inc  b                                           ; $553e: $04
	ld   h, e                                        ; $553f: $63
	ld   a, l                                        ; $5540: $7d
	sbc  [hl]                                        ; $5541: $9e
	ld   e, c                                        ; $5542: $59
	ld   a, b                                        ; $5543: $78
	sbc  b                                           ; $5544: $98
	ld   d, d                                        ; $5545: $52
	ld   d, d                                        ; $5546: $52
	dec  c                                           ; $5547: $0d
	halt                                             ; $5548: $76
	dec  b                                           ; $5549: $05
	pop  de                                          ; $554a: $d1
	ld   d, h                                        ; $554b: $54
	ld   l, h                                        ; $554c: $6c
	sbc  a                                           ; $554d: $9f
	dec  c                                           ; $554e: $0d
	nop                                              ; $554f: $00
	ld   a, [bc]                                     ; $5550: $0a
	ld   bc, $ca02                                   ; $5551: $01 $02 $ca
	sub  b                                           ; $5554: $90
	ld   l, e                                        ; $5555: $6b
	sbc  d                                           ; $5556: $9a
	ld   a, c                                        ; $5557: $79
	ld   [bc], a                                     ; $5558: $02
	add  hl, bc                                      ; $5559: $09
	ld   d, [hl]                                     ; $555a: $56
	sub  a                                           ; $555b: $97
	sbc  d                                           ; $555c: $9a
	sbc  c                                           ; $555d: $99
	sub  [hl]                                        ; $555e: $96
	ld   d, h                                        ; $555f: $54
	ld   a, c                                        ; $5560: $79
	dec  c                                           ; $5561: $0d
	ld   e, d                                        ; $5562: $5a
	and  c                                           ; $5563: $a1
	ld   a, [hl]                                     ; $5564: $7e
	sbc  c                                           ; $5565: $99
	and  c                                           ; $5566: $a1
	ld   l, [hl]                                     ; $5567: $6e
	ld   l, h                                        ; $5568: $6c
	sbc  a                                           ; $5569: $9f
	dec  c                                           ; $556a: $0d
	nop                                              ; $556b: $00
	ld   a, [bc]                                     ; $556c: $0a
	ld   b, $1c                                      ; $556d: $06 $1c
	ld   a, [bc]                                     ; $556f: $0a
	rrca                                             ; $5570: $0f
	nop                                              ; $5571: $00
	ld   bc, $6b01                                   ; $5572: $01 $01 $6b
	ld   d, h                                        ; $5575: $54
	ld   [hl], l                                     ; $5576: $75
	ld   h, a                                        ; $5577: $67
	ld   e, c                                        ; $5578: $59
	rst  $38                                         ; $5579: $ff
	rst  $38                                         ; $557a: $ff
	dec  c                                           ; $557b: $0d
	ld   d, b                                        ; $557c: $50
	sbc  b                                           ; $557d: $98
	ld   e, d                                        ; $557e: $5a
	halt                                             ; $557f: $76
	ld   d, h                                        ; $5580: $54
	ld   h, d                                        ; $5581: $62
	ld   h, h                                        ; $5582: $64
	ld   d, d                                        ; $5583: $52
	adc  h                                           ; $5584: $8c
	ld   h, l                                        ; $5585: $65
	ld   l, l                                        ; $5586: $6d
	sbc  a                                           ; $5587: $9f
	dec  c                                           ; $5588: $0d
	nop                                              ; $5589: $00
	ld   a, [bc]                                     ; $558a: $0a
	rrca                                             ; $558b: $0f
	add  hl, bc                                      ; $558c: $09
	nop                                              ; $558d: $00
	ld   bc, $a154                                   ; $558e: $01 $54 $a1
	sbc  a                                           ; $5591: $9f
	dec  c                                           ; $5592: $0d
	ld   e, d                                        ; $5593: $5a
	and  c                                           ; $5594: $a1
	ld   a, [hl]                                     ; $5595: $7e
	sbc  d                                           ; $5596: $9a
	sub  [hl]                                        ; $5597: $96
	sbc  a                                           ; $5598: $9f
	dec  c                                           ; $5599: $0d
	nop                                              ; $559a: $00
	ld   a, [bc]                                     ; $559b: $0a
	nop                                              ; $559c: $00
	rrca                                             ; $559d: $0f
	nop                                              ; $559e: $00
	ld   bc, $5001                                   ; $559f: $01 $01 $50
	ld   a, h                                        ; $55a2: $7c
	sbc  [hl]                                        ; $55a3: $9e
	inc  bc                                          ; $55a4: $03
	ld   l, l                                        ; $55a5: $6d
	dec  b                                           ; $55a6: $05
	add  hl, de                                      ; $55a7: $19
	ld   a, h                                        ; $55a8: $7c
	and  e                                           ; $55a9: $a3
	jp   z, $a5d1                                    ; $55aa: $ca $d1 $a5

	cp   d                                           ; $55ad: $ba
	and  b                                           ; $55ae: $a0
	dec  c                                           ; $55af: $0d
	ld   e, b                                        ; $55b0: $58
	ld   [bc], a                                     ; $55b1: $02
	add  b                                           ; $55b2: $80
	ld   d, d                                        ; $55b3: $52
	ld   h, l                                        ; $55b4: $65
	ld   l, l                                        ; $55b5: $6d
	ld   d, d                                        ; $55b6: $52
	and  c                                           ; $55b7: $a1
	ld   [hl], l                                     ; $55b8: $75
	ld   h, a                                        ; $55b9: $67
	ld   e, a                                        ; $55ba: $5f
	ld   [hl], a                                     ; $55bb: $77
	sbc  a                                           ; $55bc: $9f
	dec  c                                           ; $55bd: $0d
	nop                                              ; $55be: $00
	ld   a, [bc]                                     ; $55bf: $0a
	rrca                                             ; $55c0: $0f
	add  hl, bc                                      ; $55c1: $09
	nop                                              ; $55c2: $00
	ld   bc, $8e83                                   ; $55c3: $01 $83 $8e
	sbc  [hl]                                        ; $55c6: $9e
	ld   l, e                                        ; $55c7: $6b
	ld   d, h                                        ; $55c8: $54
	ld   l, [hl]                                     ; $55c9: $6e
	ld   a, b                                        ; $55ca: $78
	rst  $38                                         ; $55cb: $ff
	rst  $38                                         ; $55cc: $ff
	dec  c                                           ; $55cd: $0d
	nop                                              ; $55ce: $00
	ld   a, [bc]                                     ; $55cf: $0a
	rlca                                             ; $55d0: $07
	ld   b, d                                        ; $55d1: $42
	dec  bc                                          ; $55d2: $0b
	inc  bc                                          ; $55d3: $03
	inc  hl                                          ; $55d4: $23
	ld   bc, $234e                                   ; $55d5: $01 $4e $23
	inc  bc                                          ; $55d8: $03
	inc  h                                           ; $55d9: $24
	ld   bc, $234e                                   ; $55da: $01 $4e $23
	inc  e                                           ; $55dd: $1c
	inc  bc                                          ; $55de: $03
	dec  h                                           ; $55df: $25
	ld   bc, $234e                                   ; $55e0: $01 $4e $23
	inc  e                                           ; $55e3: $1c
	inc  bc                                          ; $55e4: $03
	ld   [hl+], a                                    ; $55e5: $22
	ld   bc, $234e                                   ; $55e6: $01 $4e $23
	inc  e                                           ; $55e9: $1c
	inc  bc                                          ; $55ea: $03
	ld   hl, $4e01                                   ; $55eb: $21 $01 $4e
	inc  hl                                          ; $55ee: $23
	inc  e                                           ; $55ef: $1c
	nop                                              ; $55f0: $00
	rlca                                             ; $55f1: $07
	or   [hl]                                        ; $55f2: $b6
	dec  bc                                          ; $55f3: $0b
	inc  bc                                          ; $55f4: $03
	inc  hl                                          ; $55f5: $23
	ld   bc, $255f                                   ; $55f6: $01 $5f $25
	inc  bc                                          ; $55f9: $03
	inc  h                                           ; $55fa: $24
	ld   bc, $255f                                   ; $55fb: $01 $5f $25
	inc  e                                           ; $55fe: $1c
	inc  bc                                          ; $55ff: $03
	dec  h                                           ; $5600: $25
	ld   bc, $255f                                   ; $5601: $01 $5f $25
	inc  e                                           ; $5604: $1c
	inc  bc                                          ; $5605: $03
	ld   [hl+], a                                    ; $5606: $22
	ld   bc, $255f                                   ; $5607: $01 $5f $25
	inc  e                                           ; $560a: $1c
	inc  bc                                          ; $560b: $03
	ld   hl, $5f01                                   ; $560c: $21 $01 $5f
	dec  h                                           ; $560f: $25
	inc  e                                           ; $5610: $1c
	nop                                              ; $5611: $00
	rlca                                             ; $5612: $07
	ld   b, b                                        ; $5613: $40
	inc  c                                           ; $5614: $0c
	inc  bc                                          ; $5615: $03
	inc  hl                                          ; $5616: $23
	ld   bc, $234e                                   ; $5617: $01 $4e $23
	inc  bc                                          ; $561a: $03
	inc  h                                           ; $561b: $24
	ld   bc, $234e                                   ; $561c: $01 $4e $23
	inc  e                                           ; $561f: $1c
	inc  bc                                          ; $5620: $03
	dec  h                                           ; $5621: $25
	ld   bc, $234e                                   ; $5622: $01 $4e $23
	inc  e                                           ; $5625: $1c
	nop                                              ; $5626: $00
	rlca                                             ; $5627: $07
	ldh  a, [$0c]                                    ; $5628: $f0 $0c
	inc  bc                                          ; $562a: $03
	inc  h                                           ; $562b: $24
	inc  bc                                          ; $562c: $03
	inc  hl                                          ; $562d: $23
	inc  hl                                          ; $562e: $23
	inc  bc                                          ; $562f: $03
	inc  h                                           ; $5630: $24
	inc  bc                                          ; $5631: $03
	dec  h                                           ; $5632: $25
	inc  hl                                          ; $5633: $23
	inc  e                                           ; $5634: $1c
	inc  bc                                          ; $5635: $03
	inc  h                                           ; $5636: $24
	inc  bc                                          ; $5637: $03
	ld   [hl+], a                                    ; $5638: $22
	inc  hl                                          ; $5639: $23
	inc  e                                           ; $563a: $1c
	inc  bc                                          ; $563b: $03
	inc  h                                           ; $563c: $24
	inc  bc                                          ; $563d: $03
	ld   hl, $1c23                                   ; $563e: $21 $23 $1c
	nop                                              ; $5641: $00
	rlca                                             ; $5642: $07
	adc  h                                           ; $5643: $8c
	dec  c                                           ; $5644: $0d
	inc  bc                                          ; $5645: $03
	dec  h                                           ; $5646: $25
	inc  bc                                          ; $5647: $03
	inc  hl                                          ; $5648: $23
	inc  hl                                          ; $5649: $23
	inc  bc                                          ; $564a: $03
	dec  h                                           ; $564b: $25
	inc  bc                                          ; $564c: $03
	inc  h                                           ; $564d: $24
	inc  hl                                          ; $564e: $23
	inc  e                                           ; $564f: $1c
	inc  bc                                          ; $5650: $03
	dec  h                                           ; $5651: $25
	inc  bc                                          ; $5652: $03
	ld   [hl+], a                                    ; $5653: $22
	inc  hl                                          ; $5654: $23
	inc  e                                           ; $5655: $1c
	inc  bc                                          ; $5656: $03
	dec  h                                           ; $5657: $25
	inc  bc                                          ; $5658: $03
	ld   hl, $1c23                                   ; $5659: $21 $23 $1c
	nop                                              ; $565c: $00
	rlca                                             ; $565d: $07
	dec  l                                           ; $565e: $2d
	ld   c, $03                                      ; $565f: $0e $03
	ld   [hl+], a                                    ; $5661: $22
	inc  bc                                          ; $5662: $03
	inc  hl                                          ; $5663: $23
	inc  hl                                          ; $5664: $23
	inc  bc                                          ; $5665: $03
	ld   [hl+], a                                    ; $5666: $22
	inc  bc                                          ; $5667: $03
	inc  h                                           ; $5668: $24
	inc  hl                                          ; $5669: $23
	inc  e                                           ; $566a: $1c
	inc  bc                                          ; $566b: $03
	ld   [hl+], a                                    ; $566c: $22
	inc  bc                                          ; $566d: $03
	dec  h                                           ; $566e: $25
	inc  hl                                          ; $566f: $23
	inc  e                                           ; $5670: $1c
	inc  bc                                          ; $5671: $03
	ld   [hl+], a                                    ; $5672: $22
	inc  bc                                          ; $5673: $03
	ld   hl, $1c23                                   ; $5674: $21 $23 $1c
	nop                                              ; $5677: $00
	rlca                                             ; $5678: $07
	ld   h, a                                        ; $5679: $67
	rrca                                             ; $567a: $0f
	inc  bc                                          ; $567b: $03
	inc  hl                                          ; $567c: $23
	inc  bc                                          ; $567d: $03
	ld   [hl+], a                                    ; $567e: $22
	inc  hl                                          ; $567f: $23
	inc  bc                                          ; $5680: $03
	inc  hl                                          ; $5681: $23
	inc  bc                                          ; $5682: $03
	inc  h                                           ; $5683: $24
	inc  hl                                          ; $5684: $23
	inc  e                                           ; $5685: $1c
	inc  bc                                          ; $5686: $03
	inc  hl                                          ; $5687: $23
	inc  bc                                          ; $5688: $03
	ld   [hl+], a                                    ; $5689: $22
	inc  hl                                          ; $568a: $23
	inc  e                                           ; $568b: $1c
	inc  bc                                          ; $568c: $03
	inc  hl                                          ; $568d: $23
	inc  bc                                          ; $568e: $03
	ld   hl, $1c23                                   ; $568f: $21 $23 $1c
	nop                                              ; $5692: $00
	ld   b, $c3                                      ; $5693: $06 $c3
	ld   c, $0f                                      ; $5695: $0e $0f
	add  hl, bc                                      ; $5697: $09
	nop                                              ; $5698: $00
	ld   bc, $ca02                                   ; $5699: $01 $02 $ca
	ld   a, h                                        ; $569c: $7c
	inc  b                                           ; $569d: $04
	ld   a, d                                        ; $569e: $7a
	ld   [bc], a                                     ; $569f: $02
	ld   a, e                                        ; $56a0: $7b
	sbc  [hl]                                        ; $56a1: $9e
	and  e                                           ; $56a2: $a3
	jp   z, $a5d1                                    ; $56a3: $ca $d1 $a5

	cp   d                                           ; $56a6: $ba
	ld   d, d                                        ; $56a7: $52
	ld   l, d                                        ; $56a8: $6a
	and  c                                           ; $56a9: $a1
	ld   a, c                                        ; $56aa: $79
	dec  c                                           ; $56ab: $0d
	sub  b                                           ; $56ac: $90
	ld   [hl], c                                     ; $56ad: $71
	halt                                             ; $56ae: $76
	ld   l, a                                        ; $56af: $6f
	sub  c                                           ; $56b0: $91
	and  c                                           ; $56b1: $a1
	halt                                             ; $56b2: $76
	inc  bc                                          ; $56b3: $03
	ld   l, l                                        ; $56b4: $6d
	dec  b                                           ; $56b5: $05
	add  hl, de                                      ; $56b6: $19
	ld   a, c                                        ; $56b7: $79
	dec  c                                           ; $56b8: $0d
	inc  bc                                          ; $56b9: $03
	add  b                                           ; $56ba: $80
	ld   l, l                                        ; $56bb: $6d
	adc  c                                           ; $56bc: $89
	ld   d, h                                        ; $56bd: $54
	ld   e, d                                        ; $56be: $5a
	ld   d, d                                        ; $56bf: $52
	ld   d, d                                        ; $56c0: $52
	ld   a, b                                        ; $56c1: $78
	sbc  a                                           ; $56c2: $9f
	dec  c                                           ; $56c3: $0d
	nop                                              ; $56c4: $00
	ld   a, [bc]                                     ; $56c5: $0a
	ld   bc, $d303                                   ; $56c6: $01 $03 $d3
	dec  b                                           ; $56c9: $05
	ld   a, [bc]                                     ; $56ca: $0a
	sub  b                                           ; $56cb: $90
	ld   l, c                                        ; $56cc: $69
	ld   l, b                                        ; $56cd: $68
	ld   a, c                                        ; $56ce: $79
	ld   [bc], a                                     ; $56cf: $02
	reti                                             ; $56d0: $d9


	ld   [bc], a                                     ; $56d1: $02
	ld   h, e                                        ; $56d2: $63
	ld   l, [hl]                                     ; $56d3: $6e
	ld   e, a                                        ; $56d4: $5f
	dec  c                                           ; $56d5: $0d
	sub  b                                           ; $56d6: $90
	halt                                             ; $56d7: $76
	adc  a                                           ; $56d8: $8f
	sbc  c                                           ; $56d9: $99
	sub  [hl]                                        ; $56da: $96
	ld   d, h                                        ; $56db: $54
	ld   [hl], l                                     ; $56dc: $75
	ld   a, l                                        ; $56dd: $7d
	pop  bc                                          ; $56de: $c1
	db   $e3                                         ; $56df: $e3
	ld   l, [hl]                                     ; $56e0: $6e
	ld   l, h                                        ; $56e1: $6c
	sbc  a                                           ; $56e2: $9f
	dec  c                                           ; $56e3: $0d
	nop                                              ; $56e4: $00
	ld   a, [bc]                                     ; $56e5: $0a
	rrca                                             ; $56e6: $0f
	nop                                              ; $56e7: $00
	ld   bc, $7d01                                   ; $56e8: $01 $01 $7d
	sbc  [hl]                                        ; $56eb: $9e
	ld   a, l                                        ; $56ec: $7d
	ld   d, d                                        ; $56ed: $52
	sbc  a                                           ; $56ee: $9f
	dec  c                                           ; $56ef: $0d
	sbc  l                                           ; $56f0: $9d
	ld   e, c                                        ; $56f1: $59
	sbc  b                                           ; $56f2: $98
	adc  h                                           ; $56f3: $8c
	ld   h, l                                        ; $56f4: $65
	ld   l, l                                        ; $56f5: $6d
	ld   a, [$0dfa]                                  ; $56f6: $fa $fa $0d
	ld   d, b                                        ; $56f9: $50
	sbc  b                                           ; $56fa: $98
	ld   e, d                                        ; $56fb: $5a
	halt                                             ; $56fc: $76
	ld   d, h                                        ; $56fd: $54
	ld   h, d                                        ; $56fe: $62
	ld   h, h                                        ; $56ff: $64
	ld   d, d                                        ; $5700: $52
	adc  h                                           ; $5701: $8c
	ld   h, a                                        ; $5702: $67
	ld   a, [$000d]                                  ; $5703: $fa $0d $00
	ld   a, [bc]                                     ; $5706: $0a
	ld   b, $08                                      ; $5707: $06 $08
	db   $10                                         ; $5709: $10
	inc  e                                           ; $570a: $1c
	add  hl, bc                                      ; $570b: $09
	ld   bc, $0101                                   ; $570c: $01 $01 $01
	ld   [$5d00], sp                                 ; $570f: $08 $00 $5d
	and  c                                           ; $5712: $a1
	ld   a, l                                        ; $5713: $7d
	dec  c                                           ; $5714: $0d
	ld   [bc], a                                     ; $5715: $02
	and  l                                           ; $5716: $a5
	ld   a, h                                        ; $5717: $7c
	halt                                             ; $5718: $76
	ld   h, c                                        ; $5719: $61
	sbc  e                                           ; $571a: $9b
	ld   [bc], a                                     ; $571b: $02
	sbc  l                                           ; $571c: $9d
	ld   d, h                                        ; $571d: $54
	ld   h, c                                        ; $571e: $61
	halt                                             ; $571f: $76
	ld   a, b                                        ; $5720: $78
	ld   h, l                                        ; $5721: $65
	ld   l, [hl]                                     ; $5722: $6e
	ld   a, b                                        ; $5723: $78
	sbc  a                                           ; $5724: $9f
	dec  c                                           ; $5725: $0d
	nop                                              ; $5726: $00
	ld   a, [bc]                                     ; $5727: $0a
	ld   bc, $7c77                                   ; $5728: $01 $77 $7c
	inc  bc                                          ; $572b: $03
	ld   l, l                                        ; $572c: $6d
	dec  b                                           ; $572d: $05
	add  hl, de                                      ; $572e: $19
	sub  b                                           ; $572f: $90
	adc  h                                           ; $5730: $8c
	and  c                                           ; $5731: $a1
	add  a                                           ; $5732: $87
	and  c                                           ; $5733: $a1
	ld   a, b                                        ; $5734: $78
	ld   e, l                                        ; $5735: $5d
	dec  c                                           ; $5736: $0d
	ld   e, d                                        ; $5737: $5a
	and  c                                           ; $5738: $a1
	ld   a, [hl]                                     ; $5739: $7e
	ld   [hl], c                                     ; $573a: $71
	ld   [hl], h                                     ; $573b: $74
	sub  d                                           ; $573c: $92
	ld   [hl], c                                     ; $573d: $71
	ld   [hl], h                                     ; $573e: $74
	ld   d, d                                        ; $573f: $52
	sbc  c                                           ; $5740: $99
	dec  c                                           ; $5741: $0d
	sub  [hl]                                        ; $5742: $96
	ld   d, h                                        ; $5743: $54
	ld   l, [hl]                                     ; $5744: $6e
	ld   h, l                                        ; $5745: $65
	rst  $38                                         ; $5746: $ff
	rst  $38                                         ; $5747: $ff
	dec  c                                           ; $5748: $0d
	nop                                              ; $5749: $00
	ld   a, [bc]                                     ; $574a: $0a
	ld   bc, $9a61                                   ; $574b: $01 $61 $9a
	ld   e, c                                        ; $574e: $59
	sub  a                                           ; $574f: $97
	sub  b                                           ; $5750: $90
	sbc  [hl]                                        ; $5751: $9e
	ld   h, c                                        ; $5752: $61
	ld   a, h                                        ; $5753: $7c
	inc  bc                                          ; $5754: $03
	cp   $03                                         ; $5755: $fe $03
	add  [hl]                                        ; $5757: $86
	ld   [hl], l                                     ; $5758: $75
	dec  c                                           ; $5759: $0d
	ld   d, d                                        ; $575a: $52
	ld   e, a                                        ; $575b: $5f
	ld   a, [hl]                                     ; $575c: $7e
	sbc  [hl]                                        ; $575d: $9e
	ld   [bc], a                                     ; $575e: $02
	sbc  l                                           ; $575f: $9d
	ld   d, h                                        ; $5760: $54
	ld   h, c                                        ; $5761: $61
	halt                                             ; $5762: $76
	ld   a, b                                        ; $5763: $78
	ld   h, l                                        ; $5764: $65
	ld   l, [hl]                                     ; $5765: $6e
	sbc  a                                           ; $5766: $9f
	dec  c                                           ; $5767: $0d
	nop                                              ; $5768: $00
	ld   a, [bc]                                     ; $5769: $0a
	rrca                                             ; $576a: $0f
	nop                                              ; $576b: $00
	ld   bc, $7d01                                   ; $576c: $01 $01 $7d
	ld   d, d                                        ; $576f: $52
	ld   a, [$500d]                                  ; $5770: $fa $0d $50
	sbc  b                                           ; $5773: $98
	ld   e, d                                        ; $5774: $5a
	halt                                             ; $5775: $76
	ld   d, h                                        ; $5776: $54
	ld   h, d                                        ; $5777: $62
	ld   h, h                                        ; $5778: $64
	ld   d, d                                        ; $5779: $52
	adc  h                                           ; $577a: $8c
	ld   h, a                                        ; $577b: $67
	ld   a, [$0dfa]                                  ; $577c: $fa $fa $0d
	ld   [bc], a                                     ; $577f: $02
	and  l                                           ; $5780: $a5
	ld   [bc], a                                     ; $5781: $02
	xor  d                                           ; $5782: $aa
	sub  b                                           ; $5783: $90
	sbc  [hl]                                        ; $5784: $9e
	ld   e, d                                        ; $5785: $5a
	and  c                                           ; $5786: $a1
	ld   a, [hl]                                     ; $5787: $7e
	sbc  b                                           ; $5788: $98
	adc  h                                           ; $5789: $8c
	ld   h, a                                        ; $578a: $67
	ld   [hl], c                                     ; $578b: $71
	ld   a, [$0dfa]                                  ; $578c: $fa $fa $0d
	nop                                              ; $578f: $00
	ld   a, [bc]                                     ; $5790: $0a
	ld   b, $08                                      ; $5791: $06 $08
	db   $10                                         ; $5793: $10
	rrca                                             ; $5794: $0f
	add  hl, bc                                      ; $5795: $09
	nop                                              ; $5796: $00
	ld   bc, $0008                                   ; $5797: $01 $08 $00
	ld   e, l                                        ; $579a: $5d
	and  c                                           ; $579b: $a1
	ld   a, l                                        ; $579c: $7d
	dec  c                                           ; $579d: $0d
	ld   [bc], a                                     ; $579e: $02
	jr   nc, jr_04b_57a5                             ; $579f: $30 $04

	dec  de                                          ; $57a1: $1b
	inc  b                                           ; $57a2: $04
	ld   b, e                                        ; $57a3: $43
	dec  b                                           ; $57a4: $05

jr_04b_57a5:
	ld   a, [bc]                                     ; $57a5: $0a
	ld   a, h                                        ; $57a6: $7c
	inc  b                                           ; $57a7: $04
	ld   d, a                                        ; $57a8: $57
	dec  b                                           ; $57a9: $05
	add  hl, hl                                      ; $57aa: $29
	ld   e, d                                        ; $57ab: $5a
	inc  bc                                          ; $57ac: $03
	ld   d, a                                        ; $57ad: $57
	inc  b                                           ; $57ae: $04
	dec  c                                           ; $57af: $0d
	inc  b                                           ; $57b0: $04
	jr   nz, jr_04b_582c                             ; $57b1: $20 $79

	dec  c                                           ; $57b3: $0d
	inc  bc                                          ; $57b4: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57b5: $cf
	ld   d, d                                        ; $57b6: $52
	sub  [hl]                                        ; $57b7: $96
	ld   d, h                                        ; $57b8: $54
	ld   l, [hl]                                     ; $57b9: $6e
	ld   a, b                                        ; $57ba: $78
	sbc  a                                           ; $57bb: $9f
	dec  c                                           ; $57bc: $0d
	nop                                              ; $57bd: $00
	ld   a, [bc]                                     ; $57be: $0a
	ld   bc, $5d63                                   ; $57bf: $01 $63 $5d
	sub  a                                           ; $57c2: $97
	ld   e, l                                        ; $57c3: $5d
	and  c                                           ; $57c4: $a1
	ld   a, h                                        ; $57c5: $7c
	inc  bc                                          ; $57c6: $03
	ld   l, l                                        ; $57c7: $6d
	dec  b                                           ; $57c8: $05
	add  hl, de                                      ; $57c9: $19
	and  b                                           ; $57ca: $a0
	dec  c                                           ; $57cb: $0d
	ld   l, a                                        ; $57cc: $6f
	sub  l                                           ; $57cd: $95
	ld   [hl], c                                     ; $57ce: $71
	halt                                             ; $57cf: $76
	inc  b                                           ; $57d0: $04
	rrca                                             ; $57d1: $0f
	adc  a                                           ; $57d2: $8f
	ld   a, c                                        ; $57d3: $79
	halt                                             ; $57d4: $76
	ld   [hl], c                                     ; $57d5: $71
	ld   [hl], h                                     ; $57d6: $74
	ld   e, b                                        ; $57d7: $58
	ld   e, l                                        ; $57d8: $5d
	halt                                             ; $57d9: $76
	dec  c                                           ; $57da: $0d
	ld   d, d                                        ; $57db: $52
	ld   d, d                                        ; $57dc: $52
	and  c                                           ; $57dd: $a1
	ld   h, [hl]                                     ; $57de: $66
	sub  c                                           ; $57df: $91
	ld   a, b                                        ; $57e0: $78
	ld   d, d                                        ; $57e1: $52
	ld   e, c                                        ; $57e2: $59
	ld   a, b                                        ; $57e3: $78
	sbc  a                                           ; $57e4: $9f
	dec  c                                           ; $57e5: $0d
	nop                                              ; $57e6: $00
	ld   a, [bc]                                     ; $57e7: $0a
	ld   bc, $5d63                                   ; $57e8: $01 $63 $5d
	sub  a                                           ; $57eb: $97
	ld   e, l                                        ; $57ec: $5d
	and  c                                           ; $57ed: $a1
	ld   a, h                                        ; $57ee: $7c
	inc  bc                                          ; $57ef: $03
	ld   l, l                                        ; $57f0: $6d
	dec  b                                           ; $57f1: $05
	add  hl, de                                      ; $57f2: $19
	ld   a, l                                        ; $57f3: $7d
	sbc  [hl]                                        ; $57f4: $9e
	dec  c                                           ; $57f5: $0d
	inc  bc                                          ; $57f6: $03
	ld   [hl], l                                     ; $57f7: $75
	di                                               ; $57f8: $f3
	ld   [bc], a                                     ; $57f9: $02
	adc  h                                           ; $57fa: $8c
	di                                               ; $57fb: $f3
	inc  b                                           ; $57fc: $04
	dec  c                                           ; $57fd: $0d
	db   $10                                         ; $57fe: $10
	halt                                             ; $57ff: $76
	sbc  [hl]                                        ; $5800: $9e
	inc  bc                                          ; $5801: $03
	ld   d, a                                        ; $5802: $57
	ld   [hl], h                                     ; $5803: $74
	ld   a, h                                        ; $5804: $7c
	inc  b                                           ; $5805: $04
	rst  JumpTable                                         ; $5806: $df
	inc  bc                                          ; $5807: $03
	and  [hl]                                        ; $5808: $a6
	ld   e, d                                        ; $5809: $5a
	dec  c                                           ; $580a: $0d
	ld   [bc], a                                     ; $580b: $02
	call nc, Call_04b_5102                           ; $580c: $d4 $02 $51
	ld   h, e                                        ; $580f: $63
	sbc  d                                           ; $5810: $9a
	sbc  c                                           ; $5811: $99
	ld   e, c                                        ; $5812: $59
	sub  a                                           ; $5813: $97
	ld   a, e                                        ; $5814: $7b
	sbc  a                                           ; $5815: $9f
	dec  c                                           ; $5816: $0d
	nop                                              ; $5817: $00
	ld   a, [bc]                                     ; $5818: $0a
	rrca                                             ; $5819: $0f
	nop                                              ; $581a: $00
	ld   bc, $7801                                   ; $581b: $01 $01 $78
	sbc  c                                           ; $581e: $99
	adc  c                                           ; $581f: $89
	ld   [hl], a                                     ; $5820: $77
	rst  $38                                         ; $5821: $ff
	rst  $38                                         ; $5822: $ff
	dec  c                                           ; $5823: $0d
	sbc  l                                           ; $5824: $9d
	ld   e, c                                        ; $5825: $59
	sbc  b                                           ; $5826: $98
	adc  h                                           ; $5827: $8c
	ld   h, l                                        ; $5828: $65
	ld   l, l                                        ; $5829: $6d
	sbc  [hl]                                        ; $582a: $9e
	and  e                                           ; $582b: $a3

jr_04b_582c:
	jp   z, $a5d1                                    ; $582c: $ca $d1 $a5

	cp   d                                           ; $582f: $ba
	sbc  [hl]                                        ; $5830: $9e
	dec  c                                           ; $5831: $0d
	ld   d, b                                        ; $5832: $50
	sbc  b                                           ; $5833: $98
	ld   e, d                                        ; $5834: $5a
	halt                                             ; $5835: $76
	ld   d, h                                        ; $5836: $54
	ld   h, d                                        ; $5837: $62
	ld   h, h                                        ; $5838: $64
	ld   d, d                                        ; $5839: $52
	adc  h                                           ; $583a: $8c
	ld   h, l                                        ; $583b: $65
	ld   l, l                                        ; $583c: $6d
	sbc  a                                           ; $583d: $9f
	dec  c                                           ; $583e: $0d
	nop                                              ; $583f: $00
	ld   a, [bc]                                     ; $5840: $0a
	ld   b, $08                                      ; $5841: $06 $08
	db   $10                                         ; $5843: $10
	rrca                                             ; $5844: $0f
	add  hl, bc                                      ; $5845: $09
	nop                                              ; $5846: $00
	ld   bc, $0008                                   ; $5847: $01 $08 $00
	ld   e, l                                        ; $584a: $5d
	and  c                                           ; $584b: $a1
	ld   a, l                                        ; $584c: $7d
	dec  c                                           ; $584d: $0d
	inc  bc                                          ; $584e: $03
	and  [hl]                                        ; $584f: $a6
	inc  bc                                          ; $5850: $03
	ld   [hl], b                                     ; $5851: $70
	ld   h, e                                        ; $5852: $63
	ld   a, h                                        ; $5853: $7c
	inc  b                                           ; $5854: $04
	ld   d, a                                        ; $5855: $57
	dec  b                                           ; $5856: $05
	add  hl, hl                                      ; $5857: $29
	ld   e, d                                        ; $5858: $5a
	dec  c                                           ; $5859: $0d
	inc  bc                                          ; $585a: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $585b: $cf
	ld   d, d                                        ; $585c: $52
	sub  [hl]                                        ; $585d: $96
	ld   d, h                                        ; $585e: $54
	ld   l, [hl]                                     ; $585f: $6e
	ld   a, b                                        ; $5860: $78
	sbc  a                                           ; $5861: $9f
	dec  c                                           ; $5862: $0d
	nop                                              ; $5863: $00
	ld   a, [bc]                                     ; $5864: $0a
	ld   bc, $8d67                                   ; $5865: $01 $67 $8d
	sbc  d                                           ; $5868: $9a
	ld   e, l                                        ; $5869: $5d
	and  c                                           ; $586a: $a1
	ld   a, h                                        ; $586b: $7c
	inc  bc                                          ; $586c: $03
	ld   l, l                                        ; $586d: $6d
	dec  b                                           ; $586e: $05
	add  hl, de                                      ; $586f: $19
	and  b                                           ; $5870: $a0
	dec  c                                           ; $5871: $0d
	ld   l, a                                        ; $5872: $6f
	sub  l                                           ; $5873: $95
	ld   [hl], c                                     ; $5874: $71
	halt                                             ; $5875: $76
	inc  b                                           ; $5876: $04
	rrca                                             ; $5877: $0f
	adc  a                                           ; $5878: $8f
	ld   a, c                                        ; $5879: $79
	halt                                             ; $587a: $76
	ld   [hl], c                                     ; $587b: $71
	ld   [hl], h                                     ; $587c: $74
	ld   e, b                                        ; $587d: $58
	ld   e, l                                        ; $587e: $5d
	halt                                             ; $587f: $76
	dec  c                                           ; $5880: $0d
	ld   d, d                                        ; $5881: $52
	ld   d, d                                        ; $5882: $52
	and  c                                           ; $5883: $a1
	ld   h, [hl]                                     ; $5884: $66
	sub  c                                           ; $5885: $91
	ld   a, b                                        ; $5886: $78
	ld   d, d                                        ; $5887: $52
	ld   e, c                                        ; $5888: $59
	ld   a, b                                        ; $5889: $78
	sbc  a                                           ; $588a: $9f
	dec  c                                           ; $588b: $0d
	nop                                              ; $588c: $00
	ld   a, [bc]                                     ; $588d: $0a
	ld   bc, $8d67                                   ; $588e: $01 $67 $8d
	sbc  d                                           ; $5891: $9a
	ld   e, l                                        ; $5892: $5d
	and  c                                           ; $5893: $a1
	ld   a, h                                        ; $5894: $7c
	inc  bc                                          ; $5895: $03
	ld   l, l                                        ; $5896: $6d
	dec  b                                           ; $5897: $05
	add  hl, de                                      ; $5898: $19
	ld   a, l                                        ; $5899: $7d
	dec  c                                           ; $589a: $0d
	inc  bc                                          ; $589b: $03
	and  [hl]                                        ; $589c: $a6
	inc  bc                                          ; $589d: $03
	ld   [hl], b                                     ; $589e: $70
	ld   h, e                                        ; $589f: $63

Jump_04b_58a0:
	ld   a, h                                        ; $58a0: $7c
	ld   [bc], a                                     ; $58a1: $02
	call nc, Call_04b_5102                           ; $58a2: $d4 $02 $51
	ld   a, c                                        ; $58a5: $79
	ld   a, l                                        ; $58a6: $7d
	dec  c                                           ; $58a7: $0d
	ld   d, h                                        ; $58a8: $54
	ld   [hl], c                                     ; $58a9: $71
	ld   [hl], h                                     ; $58aa: $74
	ld   [hl], d                                     ; $58ab: $72
	ld   e, a                                        ; $58ac: $5f
	ld   l, [hl]                                     ; $58ad: $6e
	ld   e, c                                        ; $58ae: $59
	sub  a                                           ; $58af: $97
	ld   a, e                                        ; $58b0: $7b
	sbc  a                                           ; $58b1: $9f
	dec  c                                           ; $58b2: $0d
	nop                                              ; $58b3: $00
	ld   a, [bc]                                     ; $58b4: $0a
	rrca                                             ; $58b5: $0f
	nop                                              ; $58b6: $00
	ld   bc, $7801                                   ; $58b7: $01 $01 $78
	sbc  c                                           ; $58ba: $99
	adc  c                                           ; $58bb: $89
	ld   [hl], a                                     ; $58bc: $77
	rst  $38                                         ; $58bd: $ff
	rst  $38                                         ; $58be: $ff
	dec  c                                           ; $58bf: $0d
	sbc  l                                           ; $58c0: $9d
	ld   e, c                                        ; $58c1: $59
	sbc  b                                           ; $58c2: $98
	adc  h                                           ; $58c3: $8c
	ld   h, l                                        ; $58c4: $65
	ld   l, l                                        ; $58c5: $6d
	sbc  [hl]                                        ; $58c6: $9e
	and  e                                           ; $58c7: $a3
	jp   z, $a5d1                                    ; $58c8: $ca $d1 $a5

	cp   d                                           ; $58cb: $ba
	sbc  [hl]                                        ; $58cc: $9e
	dec  c                                           ; $58cd: $0d
	ld   d, b                                        ; $58ce: $50
	sbc  b                                           ; $58cf: $98
	ld   e, d                                        ; $58d0: $5a
	halt                                             ; $58d1: $76
	ld   d, h                                        ; $58d2: $54
	ld   h, d                                        ; $58d3: $62
	ld   h, h                                        ; $58d4: $64
	ld   d, d                                        ; $58d5: $52
	adc  h                                           ; $58d6: $8c
	ld   h, l                                        ; $58d7: $65
	ld   l, l                                        ; $58d8: $6d
	sbc  a                                           ; $58d9: $9f
	dec  c                                           ; $58da: $0d
	nop                                              ; $58db: $00
	ld   a, [bc]                                     ; $58dc: $0a
	ld   b, $08                                      ; $58dd: $06 $08
	db   $10                                         ; $58df: $10
	rrca                                             ; $58e0: $0f
	add  hl, bc                                      ; $58e1: $09
	nop                                              ; $58e2: $00
	ld   bc, $0008                                   ; $58e3: $01 $08 $00
	ld   e, l                                        ; $58e6: $5d
	and  c                                           ; $58e7: $a1
	ld   a, l                                        ; $58e8: $7d
	dec  c                                           ; $58e9: $0d
	ld   b, $25                                      ; $58ea: $06 $25
	inc  b                                           ; $58ec: $04
	dec  bc                                          ; $58ed: $0b
	ld   b, $80                                      ; $58ee: $06 $80
	ld   a, h                                        ; $58f0: $7c
	inc  b                                           ; $58f1: $04
	ld   d, a                                        ; $58f2: $57
	dec  b                                           ; $58f3: $05
	add  hl, hl                                      ; $58f4: $29
	ld   e, d                                        ; $58f5: $5a
	dec  c                                           ; $58f6: $0d
	inc  bc                                          ; $58f7: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58f8: $cf
	ld   d, d                                        ; $58f9: $52
	sub  [hl]                                        ; $58fa: $96
	ld   d, h                                        ; $58fb: $54
	ld   l, [hl]                                     ; $58fc: $6e
	ld   a, b                                        ; $58fd: $78
	sbc  a                                           ; $58fe: $9f
	dec  c                                           ; $58ff: $0d
	nop                                              ; $5900: $00
	ld   a, [bc]                                     ; $5901: $0a
	ld   bc, $ecdf                                   ; $5902: $01 $df $ec
	and  e                                           ; $5905: $a3
	ld   a, h                                        ; $5906: $7c
	inc  bc                                          ; $5907: $03
	ld   l, l                                        ; $5908: $6d
	dec  b                                           ; $5909: $05
	add  hl, de                                      ; $590a: $19
	and  b                                           ; $590b: $a0
	dec  c                                           ; $590c: $0d
	ld   l, a                                        ; $590d: $6f
	sub  l                                           ; $590e: $95
	ld   [hl], c                                     ; $590f: $71
	halt                                             ; $5910: $76
	inc  b                                           ; $5911: $04
	rrca                                             ; $5912: $0f
	adc  a                                           ; $5913: $8f
	ld   a, c                                        ; $5914: $79
	halt                                             ; $5915: $76
	ld   [hl], c                                     ; $5916: $71
	ld   [hl], h                                     ; $5917: $74
	ld   e, b                                        ; $5918: $58
	ld   e, l                                        ; $5919: $5d
	halt                                             ; $591a: $76
	dec  c                                           ; $591b: $0d
	ld   d, d                                        ; $591c: $52
	ld   d, d                                        ; $591d: $52
	and  c                                           ; $591e: $a1
	ld   h, [hl]                                     ; $591f: $66
	sub  c                                           ; $5920: $91
	ld   a, b                                        ; $5921: $78
	ld   d, d                                        ; $5922: $52
	ld   e, c                                        ; $5923: $59
	ld   a, b                                        ; $5924: $78
	sbc  a                                           ; $5925: $9f
	dec  c                                           ; $5926: $0d
	nop                                              ; $5927: $00
	ld   a, [bc]                                     ; $5928: $0a
	ld   bc, $ecdf                                   ; $5929: $01 $df $ec
	and  e                                           ; $592c: $a3
	ld   a, h                                        ; $592d: $7c
	inc  bc                                          ; $592e: $03
	ld   l, l                                        ; $592f: $6d
	dec  b                                           ; $5930: $05
	add  hl, de                                      ; $5931: $19
	ld   a, l                                        ; $5932: $7d
	inc  bc                                          ; $5933: $03
	daa                                              ; $5934: $27
	ld   [bc], a                                     ; $5935: $02
	sub  c                                           ; $5936: $91
	ld   l, [hl]                                     ; $5937: $6e
	ld   e, c                                        ; $5938: $59
	sub  a                                           ; $5939: $97
	sbc  [hl]                                        ; $593a: $9e
	dec  c                                           ; $593b: $0d
	ld   e, c                                        ; $593c: $59
	ld   a, b                                        ; $593d: $78
	sbc  b                                           ; $593e: $98
	ld   a, h                                        ; $593f: $7c
	ld   b, $25                                      ; $5940: $06 $25
	inc  b                                           ; $5942: $04
	dec  bc                                          ; $5943: $0b
	ld   b, $80                                      ; $5944: $06 $80
	and  b                                           ; $5946: $a0
	dec  c                                           ; $5947: $0d
	inc  b                                           ; $5948: $04
	rst  JumpTable                                         ; $5949: $df
	ld   b, $85                                      ; $594a: $06 $85
	ld   h, e                                        ; $594c: $63
	sbc  d                                           ; $594d: $9a
	sbc  c                                           ; $594e: $99
	ld   e, c                                        ; $594f: $59
	sub  a                                           ; $5950: $97
	ld   a, e                                        ; $5951: $7b
	sbc  a                                           ; $5952: $9f
	dec  c                                           ; $5953: $0d
	nop                                              ; $5954: $00
	ld   a, [bc]                                     ; $5955: $0a
	rrca                                             ; $5956: $0f
	nop                                              ; $5957: $00
	ld   bc, $7801                                   ; $5958: $01 $01 $78
	sbc  c                                           ; $595b: $99
	adc  c                                           ; $595c: $89
	ld   [hl], a                                     ; $595d: $77
	rst  $38                                         ; $595e: $ff
	rst  $38                                         ; $595f: $ff
	dec  c                                           ; $5960: $0d
	sbc  l                                           ; $5961: $9d
	ld   e, c                                        ; $5962: $59
	sbc  b                                           ; $5963: $98
	adc  h                                           ; $5964: $8c
	ld   h, l                                        ; $5965: $65
	ld   l, l                                        ; $5966: $6d
	sbc  [hl]                                        ; $5967: $9e
	and  e                                           ; $5968: $a3
	jp   z, $a5d1                                    ; $5969: $ca $d1 $a5

	cp   d                                           ; $596c: $ba
	sbc  [hl]                                        ; $596d: $9e
	dec  c                                           ; $596e: $0d
	ld   d, b                                        ; $596f: $50
	sbc  b                                           ; $5970: $98
	ld   e, d                                        ; $5971: $5a
	halt                                             ; $5972: $76
	ld   d, h                                        ; $5973: $54
	ld   h, d                                        ; $5974: $62
	ld   h, h                                        ; $5975: $64
	ld   d, d                                        ; $5976: $52
	adc  h                                           ; $5977: $8c
	ld   h, l                                        ; $5978: $65
	ld   l, l                                        ; $5979: $6d
	sbc  a                                           ; $597a: $9f
	dec  c                                           ; $597b: $0d

Jump_04b_597c:
	nop                                              ; $597c: $00
	ld   a, [bc]                                     ; $597d: $0a
	ld   b, $08                                      ; $597e: $06 $08
	db   $10                                         ; $5980: $10
	rrca                                             ; $5981: $0f
	add  hl, bc                                      ; $5982: $09
	nop                                              ; $5983: $00
	ld   bc, $0008                                   ; $5984: $01 $08 $00
	ld   e, l                                        ; $5987: $5d
	and  c                                           ; $5988: $a1
	ld   a, l                                        ; $5989: $7d
	dec  c                                           ; $598a: $0d
	dec  b                                           ; $598b: $05
	add  hl, bc                                      ; $598c: $09
	dec  b                                           ; $598d: $05
	ld   a, [bc]                                     ; $598e: $0a
	ld   a, h                                        ; $598f: $7c
	inc  b                                           ; $5990: $04
	ld   d, a                                        ; $5991: $57

Jump_04b_5992:
	dec  b                                           ; $5992: $05
	add  hl, hl                                      ; $5993: $29
	ld   e, d                                        ; $5994: $5a
	dec  c                                           ; $5995: $0d
	inc  bc                                          ; $5996: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5997: $cf
	ld   d, d                                        ; $5998: $52
	sub  [hl]                                        ; $5999: $96
	ld   d, h                                        ; $599a: $54
	ld   l, [hl]                                     ; $599b: $6e
	ld   a, b                                        ; $599c: $78
	sbc  a                                           ; $599d: $9f
	dec  c                                           ; $599e: $0d
	nop                                              ; $599f: $00
	ld   a, [bc]                                     ; $59a0: $0a
	ld   bc, $a5a3                                   ; $59a1: $01 $a3 $a5
	db   $ec                                         ; $59a4: $ec
	cp   d                                           ; $59a5: $ba
	ld   a, h                                        ; $59a6: $7c
	inc  bc                                          ; $59a7: $03
	ld   l, l                                        ; $59a8: $6d
	dec  b                                           ; $59a9: $05
	add  hl, de                                      ; $59aa: $19
	and  b                                           ; $59ab: $a0
	dec  c                                           ; $59ac: $0d
	ld   l, a                                        ; $59ad: $6f
	sub  l                                           ; $59ae: $95
	ld   [hl], c                                     ; $59af: $71
	halt                                             ; $59b0: $76
	inc  b                                           ; $59b1: $04
	rrca                                             ; $59b2: $0f
	adc  a                                           ; $59b3: $8f
	ld   a, c                                        ; $59b4: $79
	halt                                             ; $59b5: $76
	ld   [hl], c                                     ; $59b6: $71
	ld   [hl], h                                     ; $59b7: $74
	ld   e, b                                        ; $59b8: $58
	ld   e, l                                        ; $59b9: $5d
	halt                                             ; $59ba: $76
	dec  c                                           ; $59bb: $0d
	ld   d, d                                        ; $59bc: $52
	ld   d, d                                        ; $59bd: $52
	and  c                                           ; $59be: $a1
	ld   h, [hl]                                     ; $59bf: $66
	sub  c                                           ; $59c0: $91
	ld   a, b                                        ; $59c1: $78
	ld   d, d                                        ; $59c2: $52
	ld   e, c                                        ; $59c3: $59
	ld   a, b                                        ; $59c4: $78
	sbc  a                                           ; $59c5: $9f
	dec  c                                           ; $59c6: $0d
	nop                                              ; $59c7: $00
	ld   a, [bc]                                     ; $59c8: $0a
	ld   bc, $a5a3                                   ; $59c9: $01 $a3 $a5
	db   $ec                                         ; $59cc: $ec
	cp   d                                           ; $59cd: $ba
	ld   a, h                                        ; $59ce: $7c
	inc  bc                                          ; $59cf: $03
	ld   l, l                                        ; $59d0: $6d
	dec  b                                           ; $59d1: $05
	add  hl, de                                      ; $59d2: $19
	ld   a, l                                        ; $59d3: $7d
	dec  c                                           ; $59d4: $0d
	dec  b                                           ; $59d5: $05
	add  hl, bc                                      ; $59d6: $09
	dec  b                                           ; $59d7: $05
	ld   a, [bc]                                     ; $59d8: $0a
	and  e                                           ; $59d9: $a3
	call nz, Call_04b_79d8                           ; $59da: $c4 $d8 $79
	ld   a, l                                        ; $59dd: $7d
	dec  c                                           ; $59de: $0d
	ld   d, h                                        ; $59df: $54
	ld   [hl], c                                     ; $59e0: $71
	ld   [hl], h                                     ; $59e1: $74
	ld   [hl], d                                     ; $59e2: $72
	ld   e, a                                        ; $59e3: $5f
	ld   l, [hl]                                     ; $59e4: $6e
	ld   e, c                                        ; $59e5: $59
	sub  a                                           ; $59e6: $97
	ld   a, e                                        ; $59e7: $7b
	sbc  a                                           ; $59e8: $9f
	dec  c                                           ; $59e9: $0d
	nop                                              ; $59ea: $00
	ld   a, [bc]                                     ; $59eb: $0a
	rrca                                             ; $59ec: $0f
	nop                                              ; $59ed: $00
	ld   bc, $7801                                   ; $59ee: $01 $01 $78
	sbc  c                                           ; $59f1: $99
	adc  c                                           ; $59f2: $89
	ld   [hl], a                                     ; $59f3: $77
	rst  $38                                         ; $59f4: $ff
	rst  $38                                         ; $59f5: $ff
	dec  c                                           ; $59f6: $0d
	sbc  l                                           ; $59f7: $9d
	ld   e, c                                        ; $59f8: $59
	sbc  b                                           ; $59f9: $98
	adc  h                                           ; $59fa: $8c
	ld   h, l                                        ; $59fb: $65
	ld   l, l                                        ; $59fc: $6d
	sbc  [hl]                                        ; $59fd: $9e
	and  e                                           ; $59fe: $a3
	jp   z, $a5d1                                    ; $59ff: $ca $d1 $a5

	cp   d                                           ; $5a02: $ba
	sbc  [hl]                                        ; $5a03: $9e
	dec  c                                           ; $5a04: $0d
	ld   d, b                                        ; $5a05: $50
	sbc  b                                           ; $5a06: $98
	ld   e, d                                        ; $5a07: $5a
	halt                                             ; $5a08: $76
	ld   d, h                                        ; $5a09: $54
	ld   h, d                                        ; $5a0a: $62
	ld   h, h                                        ; $5a0b: $64
	ld   d, d                                        ; $5a0c: $52
	adc  h                                           ; $5a0d: $8c
	ld   h, l                                        ; $5a0e: $65
	ld   l, l                                        ; $5a0f: $6d
	sbc  a                                           ; $5a10: $9f
	dec  c                                           ; $5a11: $0d
	nop                                              ; $5a12: $00
	ld   a, [bc]                                     ; $5a13: $0a
	ld   b, $08                                      ; $5a14: $06 $08
	db   $10                                         ; $5a16: $10
	rrca                                             ; $5a17: $0f
	add  hl, bc                                      ; $5a18: $09
	nop                                              ; $5a19: $00
	ld   bc, $0008                                   ; $5a1a: $01 $08 $00
	ld   e, l                                        ; $5a1d: $5d
	and  c                                           ; $5a1e: $a1
	ld   a, l                                        ; $5a1f: $7d
	dec  c                                           ; $5a20: $0d
	sub  b                                           ; $5a21: $90
	ld   d, h                                        ; $5a22: $54
	inc  bc                                          ; $5a23: $03
	ld   l, h                                        ; $5a24: $6c
	ld   h, l                                        ; $5a25: $65
	ld   [bc], a                                     ; $5a26: $02
	add  h                                           ; $5a27: $84
	ld   [bc], a                                     ; $5a28: $02
	and  d                                           ; $5a29: $a2
	inc  b                                           ; $5a2a: $04
	jr   nz, jr_04b_5a31                             ; $5a2b: $20 $04

	dec  hl                                          ; $5a2d: $2b
	inc  bc                                          ; $5a2e: $03
	dec  [hl]                                        ; $5a2f: $35
	and  b                                           ; $5a30: $a0

jr_04b_5a31:
	dec  c                                           ; $5a31: $0d
	inc  b                                           ; $5a32: $04
	pop  de                                          ; $5a33: $d1
	ld   a, c                                        ; $5a34: $79
	ld   [hl], d                                     ; $5a35: $72
	ld   e, a                                        ; $5a36: $5f
	ld   l, l                                        ; $5a37: $6d
	adc  c                                           ; $5a38: $89
	ld   d, h                                        ; $5a39: $54
	ld   e, d                                        ; $5a3a: $5a
	ld   d, d                                        ; $5a3b: $52
	ld   d, d                                        ; $5a3c: $52
	ld   a, b                                        ; $5a3d: $78
	sbc  a                                           ; $5a3e: $9f
	dec  c                                           ; $5a3f: $0d
	nop                                              ; $5a40: $00
	ld   a, [bc]                                     ; $5a41: $0a
	ld   bc, $cf02                                   ; $5a42: $01 $02 $cf
	dec  b                                           ; $5a45: $05
	ld   a, [de]                                     ; $5a46: $1a
	ld   a, h                                        ; $5a47: $7c
	inc  bc                                          ; $5a48: $03
	ld   l, l                                        ; $5a49: $6d
	dec  b                                           ; $5a4a: $05
	add  hl, de                                      ; $5a4b: $19
	and  b                                           ; $5a4c: $a0
	dec  c                                           ; $5a4d: $0d
	ld   l, a                                        ; $5a4e: $6f
	sub  l                                           ; $5a4f: $95
	ld   [hl], c                                     ; $5a50: $71
	halt                                             ; $5a51: $76
	inc  b                                           ; $5a52: $04
	rrca                                             ; $5a53: $0f
	adc  a                                           ; $5a54: $8f
	ld   a, c                                        ; $5a55: $79
	halt                                             ; $5a56: $76
	ld   [hl], c                                     ; $5a57: $71
	ld   [hl], h                                     ; $5a58: $74
	ld   e, b                                        ; $5a59: $58
	ld   e, l                                        ; $5a5a: $5d
	halt                                             ; $5a5b: $76
	dec  c                                           ; $5a5c: $0d
	ld   d, d                                        ; $5a5d: $52
	ld   d, d                                        ; $5a5e: $52
	and  c                                           ; $5a5f: $a1
	ld   h, [hl]                                     ; $5a60: $66
	sub  c                                           ; $5a61: $91
	ld   a, b                                        ; $5a62: $78
	ld   d, d                                        ; $5a63: $52
	ld   e, c                                        ; $5a64: $59
	ld   a, b                                        ; $5a65: $78
	sbc  a                                           ; $5a66: $9f
	dec  c                                           ; $5a67: $0d
	nop                                              ; $5a68: $00
	ld   a, [bc]                                     ; $5a69: $0a
	ld   bc, $cf02                                   ; $5a6a: $01 $02 $cf
	dec  b                                           ; $5a6d: $05
	ld   a, [de]                                     ; $5a6e: $1a
	ld   a, h                                        ; $5a6f: $7c
	ld   [bc], a                                     ; $5a70: $02
	ld   l, d                                        ; $5a71: $6a
	ld   b, $44                                      ; $5a72: $06 $44
	and  b                                           ; $5a74: $a0
	sbc  [hl]                                        ; $5a75: $9e
	ld   l, e                                        ; $5a76: $6b
	ld   a, [hl]                                     ; $5a77: $7e
	ld   [hl], l                                     ; $5a78: $75
	ld   [bc], a                                     ; $5a79: $02
	sub  l                                           ; $5a7a: $95
	ld   [hl], h                                     ; $5a7b: $74
	sbc  c                                           ; $5a7c: $99
	dec  c                                           ; $5a7d: $0d
	ld   l, [hl]                                     ; $5a7e: $6e
	ld   e, a                                        ; $5a7f: $5f
	ld   [hl], l                                     ; $5a80: $75
	sub  b                                           ; $5a81: $90
	inc  b                                           ; $5a82: $04
	xor  [hl]                                        ; $5a83: $ae
	ld   [bc], a                                     ; $5a84: $02
	call nc, $7879                                   ; $5a85: $d4 $79 $78
	sbc  c                                           ; $5a88: $99
	ld   e, c                                        ; $5a89: $59
	sub  a                                           ; $5a8a: $97
	ld   a, e                                        ; $5a8b: $7b
	sbc  a                                           ; $5a8c: $9f
	dec  c                                           ; $5a8d: $0d
	nop                                              ; $5a8e: $00
	ld   a, [bc]                                     ; $5a8f: $0a
	rrca                                             ; $5a90: $0f
	nop                                              ; $5a91: $00
	ld   bc, $7801                                   ; $5a92: $01 $01 $78
	sbc  c                                           ; $5a95: $99
	adc  c                                           ; $5a96: $89
	ld   [hl], a                                     ; $5a97: $77
	rst  $38                                         ; $5a98: $ff
	rst  $38                                         ; $5a99: $ff
	dec  c                                           ; $5a9a: $0d
	sbc  l                                           ; $5a9b: $9d
	ld   e, c                                        ; $5a9c: $59
	sbc  b                                           ; $5a9d: $98
	adc  h                                           ; $5a9e: $8c
	ld   h, l                                        ; $5a9f: $65
	ld   l, l                                        ; $5aa0: $6d
	sbc  [hl]                                        ; $5aa1: $9e
	and  e                                           ; $5aa2: $a3
	jp   z, $a5d1                                    ; $5aa3: $ca $d1 $a5

	cp   d                                           ; $5aa6: $ba
	sbc  [hl]                                        ; $5aa7: $9e
	dec  c                                           ; $5aa8: $0d
	ld   d, b                                        ; $5aa9: $50
	sbc  b                                           ; $5aaa: $98
	ld   e, d                                        ; $5aab: $5a
	halt                                             ; $5aac: $76
	ld   d, h                                        ; $5aad: $54
	ld   h, d                                        ; $5aae: $62
	ld   h, h                                        ; $5aaf: $64
	ld   d, d                                        ; $5ab0: $52
	adc  h                                           ; $5ab1: $8c
	ld   h, l                                        ; $5ab2: $65
	ld   l, l                                        ; $5ab3: $6d
	sbc  a                                           ; $5ab4: $9f
	dec  c                                           ; $5ab5: $0d
	nop                                              ; $5ab6: $00
	ld   a, [bc]                                     ; $5ab7: $0a
	ld   b, $08                                      ; $5ab8: $06 $08
	db   $10                                         ; $5aba: $10
	rrca                                             ; $5abb: $0f
	add  hl, bc                                      ; $5abc: $09
	nop                                              ; $5abd: $00
	ld   bc, $0008                                   ; $5abe: $01 $08 $00
	ld   e, l                                        ; $5ac1: $5d
	and  c                                           ; $5ac2: $a1
	ld   a, l                                        ; $5ac3: $7d
	dec  c                                           ; $5ac4: $0d
	sub  b                                           ; $5ac5: $90
	ld   [hl], c                                     ; $5ac6: $71
	halt                                             ; $5ac7: $76
	ld   [bc], a                                     ; $5ac8: $02
	and  c                                           ; $5ac9: $a1
	ld   [bc], a                                     ; $5aca: $02
	ld   a, e                                        ; $5acb: $7b
	ld   d, d                                        ; $5acc: $52
	and  b                                           ; $5acd: $a0
	dec  c                                           ; $5ace: $0d
	inc  b                                           ; $5acf: $04
	pop  de                                          ; $5ad0: $d1
	ld   a, c                                        ; $5ad1: $79
	ld   [hl], d                                     ; $5ad2: $72
	ld   e, a                                        ; $5ad3: $5f
	ld   l, l                                        ; $5ad4: $6d
	adc  c                                           ; $5ad5: $89
	ld   d, h                                        ; $5ad6: $54
	ld   e, d                                        ; $5ad7: $5a
	ld   d, d                                        ; $5ad8: $52
	ld   d, d                                        ; $5ad9: $52
	ld   a, b                                        ; $5ada: $78
	sbc  a                                           ; $5adb: $9f
	dec  c                                           ; $5adc: $0d
	nop                                              ; $5add: $00
	ld   a, [bc]                                     ; $5ade: $0a
	ld   bc, $f5ac                                   ; $5adf: $01 $ac $f5
	bit  7, h                                        ; $5ae2: $cb $7c
	inc  bc                                          ; $5ae4: $03
	ld   l, l                                        ; $5ae5: $6d
	dec  b                                           ; $5ae6: $05
	add  hl, de                                      ; $5ae7: $19
	and  b                                           ; $5ae8: $a0
	dec  c                                           ; $5ae9: $0d
	ld   l, a                                        ; $5aea: $6f
	sub  l                                           ; $5aeb: $95
	ld   [hl], c                                     ; $5aec: $71
	halt                                             ; $5aed: $76
	inc  b                                           ; $5aee: $04
	rrca                                             ; $5aef: $0f
	adc  a                                           ; $5af0: $8f
	ld   a, c                                        ; $5af1: $79
	halt                                             ; $5af2: $76
	ld   [hl], c                                     ; $5af3: $71
	ld   [hl], h                                     ; $5af4: $74
	ld   e, b                                        ; $5af5: $58
	ld   e, l                                        ; $5af6: $5d
	halt                                             ; $5af7: $76
	dec  c                                           ; $5af8: $0d
	ld   d, d                                        ; $5af9: $52
	ld   d, d                                        ; $5afa: $52
	and  c                                           ; $5afb: $a1
	ld   h, [hl]                                     ; $5afc: $66
	sub  c                                           ; $5afd: $91
	ld   a, b                                        ; $5afe: $78
	ld   d, d                                        ; $5aff: $52
	ld   e, c                                        ; $5b00: $59
	ld   a, b                                        ; $5b01: $78
	sbc  a                                           ; $5b02: $9f
	dec  c                                           ; $5b03: $0d
	nop                                              ; $5b04: $00
	ld   a, [bc]                                     ; $5b05: $0a
	ld   bc, $f5ac                                   ; $5b06: $01 $ac $f5
	bit  7, h                                        ; $5b09: $cb $7c
	ld   [bc], a                                     ; $5b0b: $02
	or   [hl]                                        ; $5b0c: $b6
	inc  bc                                          ; $5b0d: $03
	ld   l, e                                        ; $5b0e: $6b
	ld   a, l                                        ; $5b0f: $7d
	dec  c                                           ; $5b10: $0d
	adc  h                                           ; $5b11: $8c
	ld   h, e                                        ; $5b12: $63
	ld   a, c                                        ; $5b13: $79
	ld   bc, $0207                                   ; $5b14: $01 $07 $02
	and  c                                           ; $5b17: $a1
	ld   [bc], a                                     ; $5b18: $02
	ld   a, e                                        ; $5b19: $7b
	ld   d, d                                        ; $5b1a: $52
	ld   a, h                                        ; $5b1b: $7c
	inc  b                                           ; $5b1c: $04
	ld   d, d                                        ; $5b1d: $52
	inc  bc                                          ; $5b1e: $03
	db   $10                                         ; $5b1f: $10
	ld   bc, $0d08                                   ; $5b20: $01 $08 $0d
	halt                                             ; $5b23: $76
	ld   d, d                                        ; $5b24: $52
	ld   d, h                                        ; $5b25: $54
	ld   [bc], a                                     ; $5b26: $02
	scf                                              ; $5b27: $37
	ld   h, [hl]                                     ; $5b28: $66
	ld   l, [hl]                                     ; $5b29: $6e
	ld   e, c                                        ; $5b2a: $59
	sub  a                                           ; $5b2b: $97
	ld   a, e                                        ; $5b2c: $7b
	sbc  a                                           ; $5b2d: $9f
	dec  c                                           ; $5b2e: $0d
	nop                                              ; $5b2f: $00
	ld   a, [bc]                                     ; $5b30: $0a
	rrca                                             ; $5b31: $0f
	nop                                              ; $5b32: $00
	ld   bc, $7801                                   ; $5b33: $01 $01 $78
	sbc  c                                           ; $5b36: $99
	adc  c                                           ; $5b37: $89
	ld   [hl], a                                     ; $5b38: $77
	rst  $38                                         ; $5b39: $ff
	rst  $38                                         ; $5b3a: $ff
	dec  c                                           ; $5b3b: $0d
	sbc  l                                           ; $5b3c: $9d
	ld   e, c                                        ; $5b3d: $59
	sbc  b                                           ; $5b3e: $98
	adc  h                                           ; $5b3f: $8c
	ld   h, l                                        ; $5b40: $65
	ld   l, l                                        ; $5b41: $6d
	sbc  [hl]                                        ; $5b42: $9e
	and  e                                           ; $5b43: $a3
	jp   z, $a5d1                                    ; $5b44: $ca $d1 $a5

	cp   d                                           ; $5b47: $ba
	sbc  [hl]                                        ; $5b48: $9e
	dec  c                                           ; $5b49: $0d
	ld   d, b                                        ; $5b4a: $50
	sbc  b                                           ; $5b4b: $98
	ld   e, d                                        ; $5b4c: $5a
	halt                                             ; $5b4d: $76
	ld   d, h                                        ; $5b4e: $54
	ld   h, d                                        ; $5b4f: $62
	ld   h, h                                        ; $5b50: $64
	ld   d, d                                        ; $5b51: $52
	adc  h                                           ; $5b52: $8c
	ld   h, l                                        ; $5b53: $65
	ld   l, l                                        ; $5b54: $6d
	sbc  a                                           ; $5b55: $9f
	dec  c                                           ; $5b56: $0d
	nop                                              ; $5b57: $00
	ld   a, [bc]                                     ; $5b58: $0a
	ld   b, $08                                      ; $5b59: $06 $08
	db   $10                                         ; $5b5b: $10
	inc  e                                           ; $5b5c: $1c
	add  hl, bc                                      ; $5b5d: $09
	ld   bc, $0101                                   ; $5b5e: $01 $01 $01
	ld   d, h                                        ; $5b61: $54
	and  c                                           ; $5b62: $a1
	sbc  a                                           ; $5b63: $9f
	dec  c                                           ; $5b64: $0d
	ld   l, e                                        ; $5b65: $6b
	sbc  d                                           ; $5b66: $9a
	ld   h, [hl]                                     ; $5b67: $66
	sub  c                                           ; $5b68: $91
	sbc  [hl]                                        ; $5b69: $9e
	ld   e, d                                        ; $5b6a: $5a
	and  c                                           ; $5b6b: $a1
	ld   a, [hl]                                     ; $5b6c: $7e
	sbc  d                                           ; $5b6d: $9a
	sub  [hl]                                        ; $5b6e: $96
	sbc  a                                           ; $5b6f: $9f
	dec  c                                           ; $5b70: $0d
	nop                                              ; $5b71: $00
	ld   a, [bc]                                     ; $5b72: $0a
	nop                                              ; $5b73: $00
	nop                                              ; $5b74: $00
	inc  b                                           ; $5b75: $04
	add  b                                           ; $5b76: $80
	ld   l, c                                        ; $5b77: $69
	ld   bc, $2000                                   ; $5b78: $01 $00 $20
	nop                                              ; $5b7b: $00
	ld   c, $2f                                      ; $5b7c: $0e $2f
	inc  e                                           ; $5b7e: $1c
	inc  c                                           ; $5b7f: $0c
	nop                                              ; $5b80: $00
	nop                                              ; $5b81: $00
	ld   [bc], a                                     ; $5b82: $02
	ld   bc, $9750                                   ; $5b83: $01 $50 $97
	sbc  [hl]                                        ; $5b86: $9e
	ld   [$6300], sp                                 ; $5b87: $08 $00 $63
	and  c                                           ; $5b8a: $a1
	sbc  a                                           ; $5b8b: $9f
	dec  c                                           ; $5b8c: $0d
	nop                                              ; $5b8d: $00
	ld   a, [bc]                                     ; $5b8e: $0a
	inc  e                                           ; $5b8f: $1c
	inc  c                                           ; $5b90: $0c
	ld   bc, $1001                                   ; $5b91: $01 $01 $10
	ld   de, $0100                                   ; $5b94: $11 $00 $01
	ld   [bc], a                                     ; $5b97: $02
	sub  l                                           ; $5b98: $95
	ld   [hl], h                                     ; $5b99: $74
	ld   e, l                                        ; $5b9a: $5d
	ld   l, [hl]                                     ; $5b9b: $6e
	ld   h, e                                        ; $5b9c: $63
	ld   d, d                                        ; $5b9d: $52
	sbc  [hl]                                        ; $5b9e: $9e
	dec  c                                           ; $5b9f: $0d
	ld   h, c                                        ; $5ba0: $61
	ld   a, h                                        ; $5ba1: $7c
	sub  $a2                                         ; $5ba2: $d6 $a2
	push af                                          ; $5ba4: $f5
	xor  $c0                                         ; $5ba5: $ee $c0
	ei                                               ; $5ba7: $fb
	ld   a, h                                        ; $5ba8: $7c
	inc  bc                                          ; $5ba9: $03
	ld   e, b                                        ; $5baa: $58
	rst  $38                                         ; $5bab: $ff
	rst  $38                                         ; $5bac: $ff
	dec  c                                           ; $5bad: $0d
	ld   l, e                                        ; $5bae: $6b
	ld   h, l                                        ; $5baf: $65
	ld   [hl], h                                     ; $5bb0: $74
	sbc  [hl]                                        ; $5bb1: $9e
	ld   h, c                                        ; $5bb2: $61
	ld   a, h                                        ; $5bb3: $7c
	ld   e, b                                        ; $5bb4: $58
	ld   e, l                                        ; $5bb5: $5d
	sbc  b                                           ; $5bb6: $98
	inc  b                                           ; $5bb7: $04
	sub  d                                           ; $5bb8: $92
	ld   a, h                                        ; $5bb9: $7c
	inc  bc                                          ; $5bba: $03
	ld   e, b                                        ; $5bbb: $58
	sbc  a                                           ; $5bbc: $9f
	dec  c                                           ; $5bbd: $0d
	nop                                              ; $5bbe: $00
	ld   a, [bc]                                     ; $5bbf: $0a
	ld   bc, $5703                                   ; $5bc0: $01 $03 $57
	inc  b                                           ; $5bc3: $04
	sub  l                                           ; $5bc4: $95
	sbc  [hl]                                        ; $5bc5: $9e
	rst  JumpTable                                         ; $5bc6: $df
	db   $ec                                         ; $5bc7: $ec
	and  e                                           ; $5bc8: $a3
	ld   h, e                                        ; $5bc9: $63
	and  c                                           ; $5bca: $a1
	ld   a, c                                        ; $5bcb: $79
	dec  c                                           ; $5bcc: $0d
	dec  b                                           ; $5bcd: $05
	db   $10                                         ; $5bce: $10
	ld   l, l                                        ; $5bcf: $6d
	sub  b                                           ; $5bd0: $90
	ld   a, h                                        ; $5bd1: $7c
	ld   a, b                                        ; $5bd2: $78
	and  c                                           ; $5bd3: $a1
	ld   [hl], l                                     ; $5bd4: $75
	ld   h, a                                        ; $5bd5: $67
	sub  [hl]                                        ; $5bd6: $96
	sbc  a                                           ; $5bd7: $9f
	dec  c                                           ; $5bd8: $0d
	nop                                              ; $5bd9: $00
	ld   a, [bc]                                     ; $5bda: $0a
	ld   bc, $ecdf                                   ; $5bdb: $01 $df $ec
	and  e                                           ; $5bde: $a3
	ld   h, e                                        ; $5bdf: $63
	and  c                                           ; $5be0: $a1
	ld   [hl], h                                     ; $5be1: $74
	inc  bc                                          ; $5be2: $03
	ld   l, [hl]                                     ; $5be3: $6e
	ld   [bc], a                                     ; $5be4: $02
	db   $fc                                         ; $5be5: $fc
	sub  $a2                                         ; $5be6: $d6 $a2
	push af                                          ; $5be8: $f5
	ld   a, c                                        ; $5be9: $79
	dec  c                                           ; $5bea: $0d
	ld   h, a                                        ; $5beb: $67
	ld   h, d                                        ; $5bec: $62
	ld   d, d                                        ; $5bed: $52
	inc  bc                                          ; $5bee: $03
	add  d                                           ; $5bef: $82
	ld   [bc], a                                     ; $5bf0: $02
	and  c                                           ; $5bf1: $a1
	ld   a, b                                        ; $5bf2: $78
	and  c                                           ; $5bf3: $a1
	ld   [hl], l                                     ; $5bf4: $75
	ld   h, a                                        ; $5bf5: $67
	sbc  a                                           ; $5bf6: $9f
	dec  c                                           ; $5bf7: $0d
	nop                                              ; $5bf8: $00
	ld   a, [bc]                                     ; $5bf9: $0a
	inc  e                                           ; $5bfa: $1c
	inc  c                                           ; $5bfb: $0c
	nop                                              ; $5bfc: $00
	nop                                              ; $5bfd: $00
	ld   bc, $0008                                   ; $5bfe: $01 $08 $00
	ld   h, e                                        ; $5c01: $63
	and  c                                           ; $5c02: $a1
	sbc  a                                           ; $5c03: $9f
	dec  c                                           ; $5c04: $0d
	ld   [bc], a                                     ; $5c05: $02
	jr   nz, @+$74                                   ; $5c06: $20 $72

	ld   e, b                                        ; $5c08: $58
	inc  bc                                          ; $5c09: $03
	dec  c                                           ; $5c0a: $0d
	ld   [bc], a                                     ; $5c0b: $02
	jp   Jump_04b_58a0                               ; $5c0c: $c3 $a0 $58


	ld   [bc], a                                     ; $5c0f: $02
	add  b                                           ; $5c10: $80
	ld   d, d                                        ; $5c11: $52
	ld   h, l                                        ; $5c12: $65
	ld   l, l                                        ; $5c13: $6d
	ld   d, d                                        ; $5c14: $52
	ld   a, h                                        ; $5c15: $7c
	dec  c                                           ; $5c16: $0d
	ld   [hl], l                                     ; $5c17: $75
	ld   h, a                                        ; $5c18: $67
	ld   e, a                                        ; $5c19: $5f
	ld   [hl], a                                     ; $5c1a: $77
	rst  $38                                         ; $5c1b: $ff
	rst  $38                                         ; $5c1c: $ff
	dec  c                                           ; $5c1d: $0d
	nop                                              ; $5c1e: $00
	ld   a, [bc]                                     ; $5c1f: $0a
	dec  b                                           ; $5c20: $05
	add  b                                           ; $5c21: $80
	ld   l, b                                        ; $5c22: $68
	ld   bc, $0001                                   ; $5c23: $01 $01 $00
	ld   bc, $a502                                   ; $5c26: $01 $02 $a5
	inc  b                                           ; $5c29: $04
	rst  $28                                         ; $5c2a: $ef
	ld   a, c                                        ; $5c2b: $79
	ld   [hl], l                                     ; $5c2c: $75
	sub  b                                           ; $5c2d: $90
	ld   h, c                                        ; $5c2e: $61
	sbc  d                                           ; $5c2f: $9a
	and  b                                           ; $5c30: $a0
	rst  JumpTable                                         ; $5c31: $df
	db   $ec                                         ; $5c32: $ec
	and  e                                           ; $5c33: $a3
	ld   h, e                                        ; $5c34: $63
	and  c                                           ; $5c35: $a1
	ld   a, c                                        ; $5c36: $79
	dec  c                                           ; $5c37: $0d
	nop                                              ; $5c38: $00
	dec  b                                           ; $5c39: $05
	ld   b, b                                        ; $5c3a: $40
	ld   h, a                                        ; $5c3b: $67
	ld   [bc], a                                     ; $5c3c: $02
	nop                                              ; $5c3d: $00
	nop                                              ; $5c3e: $00
	ld   bc, $0604                                   ; $5c3f: $01 $04 $06
	ld   e, a                                        ; $5c42: $5f
	ld   [hl], h                                     ; $5c43: $74
	adc  c                                           ; $5c44: $89
	ld   h, l                                        ; $5c45: $65
	ld   d, d                                        ; $5c46: $52
	and  c                                           ; $5c47: $a1
	ld   [hl], l                                     ; $5c48: $75
	ld   h, a                                        ; $5c49: $67
	sbc  a                                           ; $5c4a: $9f
	dec  c                                           ; $5c4b: $0d
	nop                                              ; $5c4c: $00
	inc  e                                           ; $5c4d: $1c
	inc  c                                           ; $5c4e: $0c
	ld   bc, $0101                                   ; $5c4f: $01 $01 $01
	ld   e, b                                        ; $5c52: $58
	ld   [bc], a                                     ; $5c53: $02
	add  b                                           ; $5c54: $80
	ld   d, d                                        ; $5c55: $52
	ld   h, l                                        ; $5c56: $65
	adc  h                                           ; $5c57: $8c
	ld   h, a                                        ; $5c58: $67
	ld   a, e                                        ; $5c59: $7b
	sbc  a                                           ; $5c5a: $9f
	dec  c                                           ; $5c5b: $0d
	nop                                              ; $5c5c: $00
	ld   a, [bc]                                     ; $5c5d: $0a
	nop                                              ; $5c5e: $00
	nop                                              ; $5c5f: $00
	rrca                                             ; $5c60: $0f
	nop                                              ; $5c61: $00
	ld   bc, $060d                                   ; $5c62: $01 $0d $06
	nop                                              ; $5c65: $00
	ld   [bc], a                                     ; $5c66: $02
	ld   bc, $7d58                                   ; $5c67: $01 $58 $7d
	sub  [hl]                                        ; $5c6a: $96
	ld   d, h                                        ; $5c6b: $54
	ld   h, d                                        ; $5c6c: $62
	ld   h, h                                        ; $5c6d: $64
	ld   d, d                                        ; $5c6e: $52
	adc  h                                           ; $5c6f: $8c
	ld   h, a                                        ; $5c70: $67
	sbc  a                                           ; $5c71: $9f
	dec  c                                           ; $5c72: $0d
	nop                                              ; $5c73: $00
	ld   a, [bc]                                     ; $5c74: $0a
	inc  e                                           ; $5c75: $1c
	ld   b, $01                                      ; $5c76: $06 $01
	ld   bc, $9601                                   ; $5c78: $01 $01 $96
	ld   e, b                                        ; $5c7b: $58
	sbc  [hl]                                        ; $5c7c: $9e
	ld   [$9f00], sp                                 ; $5c7d: $08 $00 $9f
	dec  c                                           ; $5c80: $0d
	nop                                              ; $5c81: $00
	ld   a, [bc]                                     ; $5c82: $0a
	rrca                                             ; $5c83: $0f
	nop                                              ; $5c84: $00
	ld   bc, $6b01                                   ; $5c85: $01 $01 $6b
	ld   a, h                                        ; $5c88: $7c
	inc  bc                                          ; $5c89: $03
	ld   l, e                                        ; $5c8a: $6b
	ld   a, c                                        ; $5c8b: $79
	inc  bc                                          ; $5c8c: $03
	and  b                                           ; $5c8d: $a0
	ld   [hl], c                                     ; $5c8e: $71
	ld   [hl], h                                     ; $5c8f: $74
	sbc  c                                           ; $5c90: $99
	sub  b                                           ; $5c91: $90
	ld   a, h                                        ; $5c92: $7c
	ld   a, l                                        ; $5c93: $7d
	dec  c                                           ; $5c94: $0d
	inc  b                                           ; $5c95: $04
	ld   c, c                                        ; $5c96: $49
	ld   [hl], l                                     ; $5c97: $75
	ld   h, a                                        ; $5c98: $67
	ld   e, c                                        ; $5c99: $59
	ld   sp, hl                                      ; $5c9a: $f9
	dec  c                                           ; $5c9b: $0d
	nop                                              ; $5c9c: $00
	ld   a, [bc]                                     ; $5c9d: $0a
	inc  e                                           ; $5c9e: $1c
	ld   b, $00                                      ; $5c9f: $06 $00
	nop                                              ; $5ca1: $00
	ld   bc, $5050                                   ; $5ca2: $01 $50 $50
	rst  $38                                         ; $5ca5: $ff
	rst  $38                                         ; $5ca6: $ff
	dec  c                                           ; $5ca7: $0d
	ld   [bc], a                                     ; $5ca8: $02
	and  l                                           ; $5ca9: $a5
	inc  b                                           ; $5caa: $04
	add  hl, hl                                      ; $5cab: $29
	ld   a, h                                        ; $5cac: $7c
	ld   [bc], a                                     ; $5cad: $02
	sbc  c                                           ; $5cae: $99
	ld   [bc], a                                     ; $5caf: $02
	rra                                              ; $5cb0: $1f
	ld   a, h                                        ; $5cb1: $7c
	inc  b                                           ; $5cb2: $04
	inc  c                                           ; $5cb3: $0c
	inc  b                                           ; $5cb4: $04
	adc  a                                           ; $5cb5: $8f
	ld   l, [hl]                                     ; $5cb6: $6e
	sub  [hl]                                        ; $5cb7: $96
	sbc  a                                           ; $5cb8: $9f
	dec  c                                           ; $5cb9: $0d
	nop                                              ; $5cba: $00
	ld   a, [bc]                                     ; $5cbb: $0a
	add  hl, de                                      ; $5cbc: $19
	dec  b                                           ; $5cbd: $05
	inc  bc                                          ; $5cbe: $03
	ld   [bc], a                                     ; $5cbf: $02
	rra                                              ; $5cc0: $1f
	inc  b                                           ; $5cc1: $04
	call nc, Call_04b_7279                           ; $5cc2: $d4 $79 $72
	ld   d, d                                        ; $5cc5: $52
	ld   [hl], h                                     ; $5cc6: $74
	ld   [bc], a                                     ; $5cc7: $02
	jp   nz, $005d                                   ; $5cc8: $c2 $5d $00

	nop                                              ; $5ccb: $00
	inc  b                                           ; $5ccc: $04
	db   $ec                                         ; $5ccd: $ec
	ld   a, c                                        ; $5cce: $79
	ld   [hl], d                                     ; $5ccf: $72
	ld   d, d                                        ; $5cd0: $52
	ld   [hl], h                                     ; $5cd1: $74
	ld   [bc], a                                     ; $5cd2: $02
	jp   nz, $005d                                   ; $5cd3: $c2 $5d $00

	ld   bc, $8e04                                   ; $5cd6: $01 $04 $8e
	inc  b                                           ; $5cd9: $04
	inc  c                                           ; $5cda: $0c
	ld   a, c                                        ; $5cdb: $79
	ld   [hl], d                                     ; $5cdc: $72
	ld   d, d                                        ; $5cdd: $52
	ld   [hl], h                                     ; $5cde: $74
	ld   [bc], a                                     ; $5cdf: $02
	jp   nz, $005d                                   ; $5ce0: $c2 $5d $00

	ld   [bc], a                                     ; $5ce3: $02
	rlca                                             ; $5ce4: $07
	jp   z, $0200                                    ; $5ce5: $ca $00 $02

	inc  bc                                          ; $5ce8: $03
	ld   bc, $2000                                   ; $5ce9: $01 $00 $20
	nop                                              ; $5cec: $00
	rlca                                             ; $5ced: $07
	sbc  h                                           ; $5cee: $9c
	ld   [bc], a                                     ; $5cef: $02
	ld   [bc], a                                     ; $5cf0: $02
	inc  bc                                          ; $5cf1: $03
	ld   bc, $2001                                   ; $5cf2: $01 $01 $20
	nop                                              ; $5cf5: $00
	rlca                                             ; $5cf6: $07
	add  hl, bc                                      ; $5cf7: $09
	inc  b                                           ; $5cf8: $04
	ld   [bc], a                                     ; $5cf9: $02
	inc  bc                                          ; $5cfa: $03
	ld   bc, $2002                                   ; $5cfb: $01 $02 $20
	nop                                              ; $5cfe: $00
	ld   b, $a2                                      ; $5cff: $06 $a2
	nop                                              ; $5d01: $00
	inc  e                                           ; $5d02: $1c
	ld   b, $01                                      ; $5d03: $06 $01
	ld   bc, $6301                                   ; $5d05: $01 $01 $63
	sbc  [hl]                                        ; $5d08: $9e
	ld   [bc], a                                     ; $5d09: $02
	and  l                                           ; $5d0a: $a5
	inc  b                                           ; $5d0b: $04
	xor  d                                           ; $5d0c: $aa
	sub  b                                           ; $5d0d: $90
	ld   [bc], a                                     ; $5d0e: $02
	jr   nz, jr_04b_5d15                             ; $5d0f: $20 $04

	xor  d                                           ; $5d11: $aa
	dec  c                                           ; $5d12: $0d
	db   $ec                                         ; $5d13: $ec
	xor  [hl]                                        ; $5d14: $ae

jr_04b_5d15:
	inc  b                                           ; $5d15: $04
	ld   b, l                                        ; $5d16: $45
	sbc  d                                           ; $5d17: $9a
	ld   [hl], h                                     ; $5d18: $74
	ld   d, d                                        ; $5d19: $52
	ld   h, c                                        ; $5d1a: $61
	ld   d, h                                        ; $5d1b: $54
	ld   l, d                                        ; $5d1c: $6a
	ld   a, [$000d]                                  ; $5d1d: $fa $0d $00
	ld   a, [bc]                                     ; $5d20: $0a
	dec  c                                           ; $5d21: $0d
	nop                                              ; $5d22: $00
	nop                                              ; $5d23: $00
	rrca                                             ; $5d24: $0f
	nop                                              ; $5d25: $00
	ld   bc, $1e09                                   ; $5d26: $01 $09 $1e
	nop                                              ; $5d29: $00
	rrca                                             ; $5d2a: $0f
	nop                                              ; $5d2b: $00
	ld   bc, $0201                                   ; $5d2c: $01 $01 $02
	rra                                              ; $5d2f: $1f
	inc  b                                           ; $5d30: $04
	call nc, $047d                                   ; $5d31: $d4 $7d $04
	ld   c, c                                        ; $5d34: $49
	ld   [hl], l                                     ; $5d35: $75
	ld   h, a                                        ; $5d36: $67
	ld   e, c                                        ; $5d37: $59
	ld   sp, hl                                      ; $5d38: $f9
	dec  c                                           ; $5d39: $0d
	nop                                              ; $5d3a: $00
	ld   a, [bc]                                     ; $5d3b: $0a
	inc  e                                           ; $5d3c: $1c
	ld   b, $01                                      ; $5d3d: $06 $01
	ld   bc, $0401                                   ; $5d3f: $01 $01 $04
	ld   c, e                                        ; $5d42: $4b
	inc  b                                           ; $5d43: $04
	ldh  a, [c]                                      ; $5d44: $f2
	ld   [bc], a                                     ; $5d45: $02
	sub  a                                           ; $5d46: $97
	ld   h, e                                        ; $5d47: $63
	sbc  a                                           ; $5d48: $9f
	dec  c                                           ; $5d49: $0d
	ld   d, b                                        ; $5d4a: $50
	ld   l, l                                        ; $5d4b: $6d
	ld   d, d                                        ; $5d4c: $52
	sbc  [hl]                                        ; $5d4d: $9e
	ld   h, c                                        ; $5d4e: $61
	ld   a, h                                        ; $5d4f: $7c
	dec  b                                           ; $5d50: $05
	jr   nz, jr_04b_5d60                             ; $5d51: $20 $0d

	ld   [bc], a                                     ; $5d53: $02
	sbc  d                                           ; $5d54: $9a
	ld   e, e                                        ; $5d55: $5b
	ld   a, b                                        ; $5d56: $78
	and  c                                           ; $5d57: $a1
	ld   l, [hl]                                     ; $5d58: $6e
	sub  [hl]                                        ; $5d59: $96
	ld   a, b                                        ; $5d5a: $78
	ld   c, a                                        ; $5d5b: $4f
	sbc  a                                           ; $5d5c: $9f
	dec  c                                           ; $5d5d: $0d
	nop                                              ; $5d5e: $00
	ld   a, [bc]                                     ; $5d5f: $0a

jr_04b_5d60:
	add  hl, de                                      ; $5d60: $19
	dec  b                                           ; $5d61: $05
	inc  bc                                          ; $5d62: $03
	ld   [bc], a                                     ; $5d63: $02
	or   a                                           ; $5d64: $b7
	ld   [bc], a                                     ; $5d65: $02
	sub  d                                           ; $5d66: $92
	ld   [hl], l                                     ; $5d67: $75
	ld   h, a                                        ; $5d68: $67
	ld   h, l                                        ; $5d69: $65
	ld   a, e                                        ; $5d6a: $7b
	nop                                              ; $5d6b: $00
	nop                                              ; $5d6c: $00
	or   [hl]                                        ; $5d6d: $b6
	db   $ed                                         ; $5d6e: $ed
	ld   l, [hl]                                     ; $5d6f: $6e
	ld   e, c                                        ; $5d70: $59
	sub  a                                           ; $5d71: $97
	ld   [hl], l                                     ; $5d72: $75
	ld   h, a                                        ; $5d73: $67
	ld   e, c                                        ; $5d74: $59
	ld   sp, hl                                      ; $5d75: $f9
	nop                                              ; $5d76: $00
	ld   bc, $0d02                                   ; $5d77: $01 $02 $0d
	inc  b                                           ; $5d7a: $04
	halt                                             ; $5d7b: $76
	inc  b                                           ; $5d7c: $04
	ld   [hl], a                                     ; $5d7d: $77
	ld   [hl], l                                     ; $5d7e: $75
	ld   h, a                                        ; $5d7f: $67
	ld   h, l                                        ; $5d80: $65
	ld   a, e                                        ; $5d81: $7b
	nop                                              ; $5d82: $00
	ld   [bc], a                                     ; $5d83: $02
	rlca                                             ; $5d84: $07
	ld   b, d                                        ; $5d85: $42
	ld   bc, $0302                                   ; $5d86: $01 $02 $03
	ld   bc, $2000                                   ; $5d89: $01 $00 $20
	nop                                              ; $5d8c: $00
	rlca                                             ; $5d8d: $07
	xor  e                                           ; $5d8e: $ab
	ld   bc, $0302                                   ; $5d8f: $01 $02 $03
	ld   bc, $2001                                   ; $5d92: $01 $01 $20
	nop                                              ; $5d95: $00
	rlca                                             ; $5d96: $07
	rrca                                             ; $5d97: $0f
	ld   [bc], a                                     ; $5d98: $02
	ld   [bc], a                                     ; $5d99: $02
	inc  bc                                          ; $5d9a: $03
	ld   bc, $2002                                   ; $5d9b: $01 $02 $20
	nop                                              ; $5d9e: $00
	ld   b, $74                                      ; $5d9f: $06 $74
	ld   [bc], a                                     ; $5da1: $02
	rrca                                             ; $5da2: $0f
	nop                                              ; $5da3: $00
	ld   bc, $0201                                   ; $5da4: $01 $01 $02
	or   a                                           ; $5da7: $b7
	ld   [bc], a                                     ; $5da8: $02
	sub  d                                           ; $5da9: $92
	ld   [hl], l                                     ; $5daa: $75
	ld   h, a                                        ; $5dab: $67
	ld   h, l                                        ; $5dac: $65
	ld   a, e                                        ; $5dad: $7b
	sbc  a                                           ; $5dae: $9f
	dec  c                                           ; $5daf: $0d
	nop                                              ; $5db0: $00
	ld   a, [bc]                                     ; $5db1: $0a
	inc  e                                           ; $5db2: $1c
	ld   b, $01                                      ; $5db3: $06 $01
	ld   bc, $401d                                   ; $5db5: $01 $1d $40
	ld   d, $03                                      ; $5db8: $16 $03
	ld   d, $01                                      ; $5dba: $16 $01
	ld   [bc], a                                     ; $5dbc: $02
	jr   z, jr_04b_5dbf                              ; $5dbd: $28 $00

jr_04b_5dbf:
	ld   bc, $546b                                   ; $5dbf: $01 $6b $54
	ld   l, e                                        ; $5dc2: $6b
	ld   d, h                                        ; $5dc3: $54
	sbc  a                                           ; $5dc4: $9f
	dec  c                                           ; $5dc5: $0d
	cp   d                                           ; $5dc6: $ba
	xor  h                                           ; $5dc7: $ac
	call nz, Call_04b_5076                           ; $5dc8: $c4 $76 $50
	ld   a, [hl]                                     ; $5dcb: $7e
	sbc  d                                           ; $5dcc: $9a
	sub  a                                           ; $5dcd: $97
	sbc  d                                           ; $5dce: $9a
	sbc  c                                           ; $5dcf: $99
	ld   e, c                                        ; $5dd0: $59
	sub  a                                           ; $5dd1: $97
	ld   a, b                                        ; $5dd2: $78
	sbc  a                                           ; $5dd3: $9f
	dec  c                                           ; $5dd4: $0d
	ld   d, b                                        ; $5dd5: $50
	ld   l, l                                        ; $5dd6: $6d
	ld   d, d                                        ; $5dd7: $52
	ld   [bc], a                                     ; $5dd8: $02
	jp   nc, Jump_04b_785b                           ; $5dd9: $d2 $5b $78

	and  c                                           ; $5ddc: $a1
	ld   l, [hl]                                     ; $5ddd: $6e
	sub  [hl]                                        ; $5dde: $96
	sbc  a                                           ; $5ddf: $9f
	dec  c                                           ; $5de0: $0d
	nop                                              ; $5de1: $00
	ld   a, [bc]                                     ; $5de2: $0a
	inc  e                                           ; $5de3: $1c
	ld   b, $00                                      ; $5de4: $06 $00
	nop                                              ; $5de6: $00
	ld   bc, $7463                                   ; $5de7: $01 $63 $74
	sbc  [hl]                                        ; $5dea: $9e
	inc  b                                           ; $5deb: $04
	inc  c                                           ; $5dec: $0c
	inc  b                                           ; $5ded: $04
	adc  a                                           ; $5dee: $8f
	ld   [hl], l                                     ; $5def: $75
	sub  b                                           ; $5df0: $90
	inc  b                                           ; $5df1: $04
	ld   de, $768e                                   ; $5df2: $11 $8e $76
	ld   h, a                                        ; $5df5: $67
	sbc  c                                           ; $5df6: $99
	ld   e, c                                        ; $5df7: $59
	sbc  a                                           ; $5df8: $9f
	dec  c                                           ; $5df9: $0d
	ld   h, [hl]                                     ; $5dfa: $66
	sub  c                                           ; $5dfb: $91
	ld   d, b                                        ; $5dfc: $50
	ld   a, b                                        ; $5dfd: $78
	sbc  a                                           ; $5dfe: $9f
	dec  c                                           ; $5dff: $0d
	nop                                              ; $5e00: $00
	ld   a, [bc]                                     ; $5e01: $0a
	dec  c                                           ; $5e02: $0d
	nop                                              ; $5e03: $00
	nop                                              ; $5e04: $00
	rrca                                             ; $5e05: $0f
	nop                                              ; $5e06: $00
	ld   bc, $1e09                                   ; $5e07: $01 $09 $1e
	nop                                              ; $5e0a: $00
	rrca                                             ; $5e0b: $0f
	nop                                              ; $5e0c: $00
	ld   bc, $b601                                   ; $5e0d: $01 $01 $b6
	db   $ed                                         ; $5e10: $ed
	ld   l, [hl]                                     ; $5e11: $6e
	ld   e, c                                        ; $5e12: $59
	sub  a                                           ; $5e13: $97
	ld   [hl], l                                     ; $5e14: $75
	ld   h, a                                        ; $5e15: $67
	ld   e, c                                        ; $5e16: $59
	ld   sp, hl                                      ; $5e17: $f9
	dec  c                                           ; $5e18: $0d
	nop                                              ; $5e19: $00
	ld   a, [bc]                                     ; $5e1a: $0a
	inc  e                                           ; $5e1b: $1c
	ld   b, $02                                      ; $5e1c: $06 $02
	ld   [bc], a                                     ; $5e1e: $02
	dec  e                                           ; $5e1f: $1d
	ld   b, b                                        ; $5e20: $40
	ld   d, $03                                      ; $5e21: $16 $03
	ld   d, $01                                      ; $5e23: $16 $01
	ld   [bc], a                                     ; $5e25: $02
	add  hl, hl                                      ; $5e26: $29
	nop                                              ; $5e27: $00
	ld   bc, $5477                                   ; $5e28: $01 $77 $54
	ld   d, d                                        ; $5e2b: $52
	ld   d, h                                        ; $5e2c: $54
	ld   [bc], a                                     ; $5e2d: $02
	ld   b, $04                                      ; $5e2e: $06 $04
	jp   nc, $966e                                   ; $5e30: $d2 $6e $96

	rst  $38                                         ; $5e33: $ff
	rst  $38                                         ; $5e34: $ff
	ld   sp, hl                                      ; $5e35: $f9
	dec  c                                           ; $5e36: $0d
	ld   d, b                                        ; $5e37: $50
	ld   l, l                                        ; $5e38: $6d
	ld   d, d                                        ; $5e39: $52
	ld   e, d                                        ; $5e3a: $5a
	or   [hl]                                        ; $5e3b: $b6
	db   $ed                                         ; $5e3c: $ed
	ld   l, [hl]                                     ; $5e3d: $6e
	halt                                             ; $5e3e: $76
	ld   [hl], l                                     ; $5e3f: $75
	sub  b                                           ; $5e40: $90
	dec  c                                           ; $5e41: $0d
	ld   [bc], a                                     ; $5e42: $02
	sbc  l                                           ; $5e43: $9d
	ld   d, d                                        ; $5e44: $52
	ld   l, l                                        ; $5e45: $6d
	ld   d, d                                        ; $5e46: $52
	ld   a, h                                        ; $5e47: $7c
	ld   e, c                                        ; $5e48: $59
	ld   sp, hl                                      ; $5e49: $f9
	dec  c                                           ; $5e4a: $0d
	nop                                              ; $5e4b: $00
	ld   a, [bc]                                     ; $5e4c: $0a
	ld   bc, $5490                                   ; $5e4d: $01 $90 $54
	ld   d, d                                        ; $5e50: $52
	ld   d, d                                        ; $5e51: $52
	sub  [hl]                                        ; $5e52: $96
	sbc  a                                           ; $5e53: $9f
	dec  c                                           ; $5e54: $0d
	ld   d, b                                        ; $5e55: $50
	ld   l, l                                        ; $5e56: $6d
	ld   d, d                                        ; $5e57: $52
	sbc  [hl]                                        ; $5e58: $9e
	inc  b                                           ; $5e59: $04
	inc  c                                           ; $5e5a: $0c
	inc  b                                           ; $5e5b: $04
	adc  a                                           ; $5e5c: $8f
	inc  b                                           ; $5e5d: $04
	ld   de, $598e                                   ; $5e5e: $11 $8e $59
	sub  a                                           ; $5e61: $97
	dec  c                                           ; $5e62: $0d
	ld   [hl], a                                     ; $5e63: $77
	ld   [hl], c                                     ; $5e64: $71
	ld   e, c                                        ; $5e65: $59
	ld   [bc], a                                     ; $5e66: $02
	ld   a, a                                        ; $5e67: $7f
	ld   e, a                                        ; $5e68: $5f
	sub  [hl]                                        ; $5e69: $96
	sbc  a                                           ; $5e6a: $9f
	dec  c                                           ; $5e6b: $0d
	nop                                              ; $5e6c: $00
	ld   a, [bc]                                     ; $5e6d: $0a
	nop                                              ; $5e6e: $00
	rrca                                             ; $5e6f: $0f
	nop                                              ; $5e70: $00
	ld   bc, $0201                                   ; $5e71: $01 $01 $02
	dec  c                                           ; $5e74: $0d
	inc  b                                           ; $5e75: $04
	halt                                             ; $5e76: $76
	inc  b                                           ; $5e77: $04
	ld   [hl], a                                     ; $5e78: $77
	ld   [hl], l                                     ; $5e79: $75
	ld   h, a                                        ; $5e7a: $67
	ld   h, l                                        ; $5e7b: $65
	ld   a, e                                        ; $5e7c: $7b
	sbc  a                                           ; $5e7d: $9f
	dec  c                                           ; $5e7e: $0d
	nop                                              ; $5e7f: $00
	ld   a, [bc]                                     ; $5e80: $0a
	inc  e                                           ; $5e81: $1c
	ld   b, $05                                      ; $5e82: $06 $05
	dec  b                                           ; $5e84: $05
	ld   bc, $7156                                   ; $5e85: $01 $56 $71
	ld   sp, hl                                      ; $5e88: $f9
	ld   sp, hl                                      ; $5e89: $f9
	ld   sp, hl                                      ; $5e8a: $f9
	dec  c                                           ; $5e8b: $0d
	inc  b                                           ; $5e8c: $04
	ld   c, e                                        ; $5e8d: $4b
	inc  b                                           ; $5e8e: $04
	ldh  a, [c]                                      ; $5e8f: $f2
	ld   [bc], a                                     ; $5e90: $02
	sub  a                                           ; $5e91: $97
	ld   a, l                                        ; $5e92: $7d
	inc  b                                           ; $5e93: $04
	dec  bc                                          ; $5e94: $0b
	ld   [bc], a                                     ; $5e95: $02
	adc  a                                           ; $5e96: $8f
	ld   a, h                                        ; $5e97: $7c
	dec  b                                           ; $5e98: $05
	jr   nz, jr_04b_5f09                             ; $5e99: $20 $6e

	ld   l, d                                        ; $5e9b: $6a
	sbc  a                                           ; $5e9c: $9f
	dec  c                                           ; $5e9d: $0d
	ld   [hl], a                                     ; $5e9e: $77
	ld   h, c                                        ; $5e9f: $61
	ld   e, d                                        ; $5ea0: $5a
	ld   [bc], a                                     ; $5ea1: $02
	dec  c                                           ; $5ea2: $0d
	inc  b                                           ; $5ea3: $04
	halt                                             ; $5ea4: $76
	inc  b                                           ; $5ea5: $04
	ld   [hl], a                                     ; $5ea6: $77
	ld   a, b                                        ; $5ea7: $78
	and  c                                           ; $5ea8: $a1
	ld   l, [hl]                                     ; $5ea9: $6e
	sub  [hl]                                        ; $5eaa: $96
	rst  $38                                         ; $5eab: $ff
	rst  $38                                         ; $5eac: $ff
	dec  c                                           ; $5ead: $0d
	nop                                              ; $5eae: $00
	ld   a, [bc]                                     ; $5eaf: $0a
	dec  e                                           ; $5eb0: $1d
	ld   b, b                                        ; $5eb1: $40
	ld   d, $03                                      ; $5eb2: $16 $03
	ld   d, $01                                      ; $5eb4: $16 $01
	ld   bc, $0029                                   ; $5eb6: $01 $29 $00
	ld   bc, $ae02                                   ; $5eb9: $01 $02 $ae
	ld   e, c                                        ; $5ebc: $59
	sub  a                                           ; $5ebd: $97
	inc  bc                                          ; $5ebe: $03
	add  b                                           ; $5ebf: $80
	adc  h                                           ; $5ec0: $8c
	ld   e, c                                        ; $5ec1: $59
	ld   l, c                                        ; $5ec2: $69
	ld   a, l                                        ; $5ec3: $7d
	sbc  [hl]                                        ; $5ec4: $9e
	pop  bc                                          ; $5ec5: $c1
	db   $e3                                         ; $5ec6: $e3
	ld   l, [hl]                                     ; $5ec7: $6e
	ld   l, d                                        ; $5ec8: $6a
	sbc  a                                           ; $5ec9: $9f
	dec  c                                           ; $5eca: $0d
	adc  h                                           ; $5ecb: $8c
	ld   [hl], c                                     ; $5ecc: $71
	ld   l, l                                        ; $5ecd: $6d
	ld   e, l                                        ; $5ece: $5d
	rst  $38                                         ; $5ecf: $ff
	rst  $38                                         ; $5ed0: $ff
	dec  c                                           ; $5ed1: $0d
	nop                                              ; $5ed2: $00
	ld   a, [bc]                                     ; $5ed3: $0a
	inc  e                                           ; $5ed4: $1c
	ld   b, $00                                      ; $5ed5: $06 $00
	nop                                              ; $5ed7: $00
	ld   bc, $7463                                   ; $5ed8: $01 $63 $74
	sbc  [hl]                                        ; $5edb: $9e
	inc  b                                           ; $5edc: $04
	inc  c                                           ; $5edd: $0c
	inc  b                                           ; $5ede: $04
	adc  a                                           ; $5edf: $8f
	ld   [hl], l                                     ; $5ee0: $75
	sub  b                                           ; $5ee1: $90
	inc  b                                           ; $5ee2: $04
	ld   de, $768e                                   ; $5ee3: $11 $8e $76
	ld   h, a                                        ; $5ee6: $67
	sbc  c                                           ; $5ee7: $99
	ld   e, c                                        ; $5ee8: $59
	sbc  a                                           ; $5ee9: $9f
	dec  c                                           ; $5eea: $0d
	ld   h, [hl]                                     ; $5eeb: $66
	sub  c                                           ; $5eec: $91
	ld   d, b                                        ; $5eed: $50
	ld   a, b                                        ; $5eee: $78
	sbc  a                                           ; $5eef: $9f
	dec  c                                           ; $5ef0: $0d
	nop                                              ; $5ef1: $00
	ld   a, [bc]                                     ; $5ef2: $0a
	dec  c                                           ; $5ef3: $0d
	nop                                              ; $5ef4: $00
	nop                                              ; $5ef5: $00
	rrca                                             ; $5ef6: $0f
	nop                                              ; $5ef7: $00
	ld   bc, $1e09                                   ; $5ef8: $01 $09 $1e
	nop                                              ; $5efb: $00
	rrca                                             ; $5efc: $0f
	nop                                              ; $5efd: $00
	ld   bc, $ac01                                   ; $5efe: $01 $01 $ac
	push af                                          ; $5f01: $f5
	bit  4, e                                        ; $5f02: $cb $63
	and  c                                           ; $5f04: $a1
	ld   a, l                                        ; $5f05: $7d
	dec  c                                           ; $5f06: $0d
	inc  b                                           ; $5f07: $04
	ld   c, c                                        ; $5f08: $49

jr_04b_5f09:
	ld   a, h                                        ; $5f09: $7c
	inc  b                                           ; $5f0a: $04
	db   $ec                                         ; $5f0b: $ec
	ld   a, b                                        ; $5f0c: $78
	and  c                                           ; $5f0d: $a1
	ld   [hl], l                                     ; $5f0e: $75
	ld   h, a                                        ; $5f0f: $67
	ld   e, c                                        ; $5f10: $59
	ld   sp, hl                                      ; $5f11: $f9
	dec  c                                           ; $5f12: $0d
	nop                                              ; $5f13: $00
	ld   a, [bc]                                     ; $5f14: $0a
	inc  e                                           ; $5f15: $1c
	ld   b, $00                                      ; $5f16: $06 $00
	nop                                              ; $5f18: $00
	ld   bc, $5003                                   ; $5f19: $01 $03 $50
	ld   [bc], a                                     ; $5f1c: $02
	ld   a, h                                        ; $5f1d: $7c
	ld   [bc], a                                     ; $5f1e: $02
	or   [hl]                                        ; $5f1f: $b6
	ld   h, e                                        ; $5f20: $63
	sbc  a                                           ; $5f21: $9f
	dec  c                                           ; $5f22: $0d
	nop                                              ; $5f23: $00
	ld   a, [bc]                                     ; $5f24: $0a
	add  hl, de                                      ; $5f25: $19
	dec  b                                           ; $5f26: $05
	inc  bc                                          ; $5f27: $03
	ld   h, a                                        ; $5f28: $67
	ld   h, d                                        ; $5f29: $62
	ld   d, d                                        ; $5f2a: $52
	ld   [hl], l                                     ; $5f2b: $75
	ld   h, a                                        ; $5f2c: $67
	ld   a, e                                        ; $5f2d: $7b
	nop                                              ; $5f2e: $00
	nop                                              ; $5f2f: $00
	ld   d, b                                        ; $5f30: $50
	ld   a, [hl]                                     ; $5f31: $7e
	sbc  d                                           ; $5f32: $9a
	ld   a, b                                        ; $5f33: $78
	ld   d, d                                        ; $5f34: $52
	ld   [hl], l                                     ; $5f35: $75
	ld   [bc], a                                     ; $5f36: $02
	inc  [hl]                                        ; $5f37: $34
	ld   h, e                                        ; $5f38: $63
	ld   d, d                                        ; $5f39: $52
	ld   a, e                                        ; $5f3a: $7b
	nop                                              ; $5f3b: $00
	ld   bc, $588c                                   ; $5f3c: $01 $8c $58
	ld   d, h                                        ; $5f3f: $54
	ld   h, [hl]                                     ; $5f40: $66
	sub  c                                           ; $5f41: $91
	ld   a, b                                        ; $5f42: $78
	ld   d, d                                        ; $5f43: $52
	and  c                                           ; $5f44: $a1
	ld   [hl], l                                     ; $5f45: $75
	ld   h, a                                        ; $5f46: $67
	ld   e, c                                        ; $5f47: $59
	ld   sp, hl                                      ; $5f48: $f9
	nop                                              ; $5f49: $00
	ld   [bc], a                                     ; $5f4a: $02
	rlca                                             ; $5f4b: $07
	add  hl, bc                                      ; $5f4c: $09
	inc  bc                                          ; $5f4d: $03
	ld   [bc], a                                     ; $5f4e: $02
	inc  bc                                          ; $5f4f: $03
	ld   bc, $2000                                   ; $5f50: $01 $00 $20
	nop                                              ; $5f53: $00
	rlca                                             ; $5f54: $07
	ld   e, b                                        ; $5f55: $58
	inc  bc                                          ; $5f56: $03
	ld   [bc], a                                     ; $5f57: $02
	inc  bc                                          ; $5f58: $03
	ld   bc, $2001                                   ; $5f59: $01 $01 $20
	nop                                              ; $5f5c: $00
	rlca                                             ; $5f5d: $07
	and  d                                           ; $5f5e: $a2
	inc  bc                                          ; $5f5f: $03
	ld   [bc], a                                     ; $5f60: $02
	inc  bc                                          ; $5f61: $03
	ld   bc, $2002                                   ; $5f62: $01 $02 $20
	nop                                              ; $5f65: $00
	ld   b, $e2                                      ; $5f66: $06 $e2
	inc  bc                                          ; $5f68: $03
	rrca                                             ; $5f69: $0f
	nop                                              ; $5f6a: $00
	ld   bc, $6701                                   ; $5f6b: $01 $01 $67
	ld   h, d                                        ; $5f6e: $62
	ld   d, d                                        ; $5f6f: $52
	ld   [hl], l                                     ; $5f70: $75
	ld   h, a                                        ; $5f71: $67
	ld   a, e                                        ; $5f72: $7b
	rst  $38                                         ; $5f73: $ff
	rst  $38                                         ; $5f74: $ff
	dec  c                                           ; $5f75: $0d
	inc  bc                                          ; $5f76: $03
	ld   b, h                                        ; $5f77: $44
	inc  b                                           ; $5f78: $04
	db   $ec                                         ; $5f79: $ec
	ld   h, [hl]                                     ; $5f7a: $66
	sub  c                                           ; $5f7b: $91
	ld   a, b                                        ; $5f7c: $78
	ld   d, d                                        ; $5f7d: $52
	ld   [hl], l                                     ; $5f7e: $75
	ld   h, a                                        ; $5f7f: $67
	ld   e, c                                        ; $5f80: $59
	sbc  a                                           ; $5f81: $9f
	dec  c                                           ; $5f82: $0d
	push de                                          ; $5f83: $d5
	call nz, $ecc0                                   ; $5f84: $c4 $c0 $ec
	ld   [hl], l                                     ; $5f87: $75
	ld   h, a                                        ; $5f88: $67
	sbc  a                                           ; $5f89: $9f
	dec  c                                           ; $5f8a: $0d
	nop                                              ; $5f8b: $00
	ld   a, [bc]                                     ; $5f8c: $0a
	inc  e                                           ; $5f8d: $1c
	ld   b, $04                                      ; $5f8e: $06 $04
	inc  b                                           ; $5f90: $04
	dec  e                                           ; $5f91: $1d
	ld   b, b                                        ; $5f92: $40
	ld   d, $03                                      ; $5f93: $16 $03
	ld   d, $01                                      ; $5f95: $16 $01
	ld   [bc], a                                     ; $5f97: $02
	jr   z, jr_04b_5f9a                              ; $5f98: $28 $00

jr_04b_5f9a:
	ld   bc, $9e8c                                   ; $5f9a: $01 $8c $9e
	adc  h                                           ; $5f9d: $8c
	ld   d, b                                        ; $5f9e: $50
	ld   a, b                                        ; $5f9f: $78
	sbc  a                                           ; $5fa0: $9f
	dec  c                                           ; $5fa1: $0d
	sub  [hl]                                        ; $5fa2: $96
	ld   e, c                                        ; $5fa3: $59
	ld   [hl], c                                     ; $5fa4: $71
	ld   l, l                                        ; $5fa5: $6d
	sub  a                                           ; $5fa6: $97
	ld   [bc], a                                     ; $5fa7: $02
	sub  l                                           ; $5fa8: $95
	ld   a, c                                        ; $5fa9: $79
	dec  b                                           ; $5faa: $05
	db   $10                                         ; $5fab: $10
	ld   [hl], h                                     ; $5fac: $74
	ld   e, l                                        ; $5fad: $5d
	sbc  d                                           ; $5fae: $9a
	sub  [hl]                                        ; $5faf: $96
	ld   a, b                                        ; $5fb0: $78
	sbc  a                                           ; $5fb1: $9f
	dec  c                                           ; $5fb2: $0d
	nop                                              ; $5fb3: $00
	ld   a, [bc]                                     ; $5fb4: $0a
	ld   b, $e5                                      ; $5fb5: $06 $e5
	inc  bc                                          ; $5fb7: $03
	rrca                                             ; $5fb8: $0f
	nop                                              ; $5fb9: $00
	ld   bc, $5001                                   ; $5fba: $01 $01 $50
	ld   a, [hl]                                     ; $5fbd: $7e
	sbc  d                                           ; $5fbe: $9a
	ld   a, b                                        ; $5fbf: $78
	ld   d, d                                        ; $5fc0: $52
	ld   [hl], l                                     ; $5fc1: $75
	ld   [bc], a                                     ; $5fc2: $02
	inc  [hl]                                        ; $5fc3: $34
	ld   h, e                                        ; $5fc4: $63
	ld   d, d                                        ; $5fc5: $52
	ld   a, e                                        ; $5fc6: $7b
	sbc  a                                           ; $5fc7: $9f
	dec  c                                           ; $5fc8: $0d
	inc  b                                           ; $5fc9: $04
	adc  [hl]                                        ; $5fca: $8e
	inc  b                                           ; $5fcb: $04
	inc  c                                           ; $5fcc: $0c
	ld   e, d                                        ; $5fcd: $5a
	ld   h, c                                        ; $5fce: $61
	sbc  l                                           ; $5fcf: $9d
	sbc  d                                           ; $5fd0: $9a
	adc  h                                           ; $5fd1: $8c
	ld   h, a                                        ; $5fd2: $67
	ld   e, c                                        ; $5fd3: $59
	sub  a                                           ; $5fd4: $97
	rst  $38                                         ; $5fd5: $ff
	rst  $38                                         ; $5fd6: $ff
	dec  c                                           ; $5fd7: $0d
	nop                                              ; $5fd8: $00
	ld   a, [bc]                                     ; $5fd9: $0a
	inc  e                                           ; $5fda: $1c
	ld   b, $02                                      ; $5fdb: $06 $02
	ld   [bc], a                                     ; $5fdd: $02
	dec  e                                           ; $5fde: $1d
	ld   b, b                                        ; $5fdf: $40
	ld   d, $03                                      ; $5fe0: $16 $03
	ld   d, $01                                      ; $5fe2: $16 $01
	ld   [bc], a                                     ; $5fe4: $02
	add  hl, hl                                      ; $5fe5: $29
	nop                                              ; $5fe6: $00
	ld   bc, $0358                                   ; $5fe7: $01 $58 $03
	ld   c, a                                        ; $5fea: $4f
	ld   a, c                                        ; $5feb: $79
	ld   [bc], a                                     ; $5fec: $02
	sbc  l                                           ; $5fed: $9d
	sbc  l                                           ; $5fee: $9d
	sbc  d                                           ; $5fef: $9a
	sbc  c                                           ; $5ff0: $99
	ld   h, a                                        ; $5ff1: $67
	ld   h, [hl]                                     ; $5ff2: $66
	ld   d, b                                        ; $5ff3: $50
	ld   d, d                                        ; $5ff4: $52
	ld   a, l                                        ; $5ff5: $7d
	dec  c                                           ; $5ff6: $0d
	ld   a, e                                        ; $5ff7: $7b
	ld   d, [hl]                                     ; $5ff8: $56
	sub  [hl]                                        ; $5ff9: $96
	rst  $38                                         ; $5ffa: $ff
	rst  $38                                         ; $5ffb: $ff
	dec  c                                           ; $5ffc: $0d
	nop                                              ; $5ffd: $00
	ld   a, [bc]                                     ; $5ffe: $0a
	ld   b, $e5                                      ; $5fff: $06 $e5
	inc  bc                                          ; $6001: $03
	rrca                                             ; $6002: $0f
	nop                                              ; $6003: $00
	ld   bc, $8c01                                   ; $6004: $01 $01 $8c
	ld   e, b                                        ; $6007: $58
	ld   d, h                                        ; $6008: $54
	ld   h, [hl]                                     ; $6009: $66
	sub  c                                           ; $600a: $91
	ld   a, b                                        ; $600b: $78
	ld   d, d                                        ; $600c: $52
	and  c                                           ; $600d: $a1
	ld   [hl], l                                     ; $600e: $75
	ld   h, a                                        ; $600f: $67
	ld   e, c                                        ; $6010: $59
	ld   sp, hl                                      ; $6011: $f9
	dec  c                                           ; $6012: $0d
	xor  h                                           ; $6013: $ac
	push af                                          ; $6014: $f5
	bit  4, e                                        ; $6015: $cb $63
	and  c                                           ; $6017: $a1
	ld   l, [hl]                                     ; $6018: $6e
	ld   [hl], c                                     ; $6019: $71
	ld   l, l                                        ; $601a: $6d
	sub  a                                           ; $601b: $97
	rst  $38                                         ; $601c: $ff
	rst  $38                                         ; $601d: $ff
	dec  c                                           ; $601e: $0d
	nop                                              ; $601f: $00
	ld   a, [bc]                                     ; $6020: $0a
	inc  e                                           ; $6021: $1c
	ld   b, $02                                      ; $6022: $06 $02
	ld   [bc], a                                     ; $6024: $02
	dec  e                                           ; $6025: $1d
	ld   b, b                                        ; $6026: $40
	ld   d, $03                                      ; $6027: $16 $03
	ld   d, $01                                      ; $6029: $16 $01
	ld   [bc], a                                     ; $602b: $02
	add  hl, hl                                      ; $602c: $29
	nop                                              ; $602d: $00
	ld   bc, $5477                                   ; $602e: $01 $77 $54
	ld   d, d                                        ; $6031: $52
	ld   d, h                                        ; $6032: $54
	ld   [bc], a                                     ; $6033: $02
	ld   b, $04                                      ; $6034: $06 $04
	jp   nc, $966e                                   ; $6036: $d2 $6e $96

	rst  $38                                         ; $6039: $ff
	rst  $38                                         ; $603a: $ff
	ld   sp, hl                                      ; $603b: $f9
	dec  c                                           ; $603c: $0d
	nop                                              ; $603d: $00
	ld   a, [bc]                                     ; $603e: $0a
	ld   b, $e5                                      ; $603f: $06 $e5
	inc  bc                                          ; $6041: $03
	rrca                                             ; $6042: $0f
	ld   b, $00                                      ; $6043: $06 $00
	ld   bc, $7463                                   ; $6045: $01 $63 $74
	sbc  [hl]                                        ; $6048: $9e
	inc  b                                           ; $6049: $04
	inc  c                                           ; $604a: $0c
	inc  b                                           ; $604b: $04
	adc  a                                           ; $604c: $8f
	ld   [hl], l                                     ; $604d: $75
	sub  b                                           ; $604e: $90
	inc  b                                           ; $604f: $04
	ld   de, $768e                                   ; $6050: $11 $8e $76
	ld   h, a                                        ; $6053: $67
	sbc  c                                           ; $6054: $99
	ld   e, c                                        ; $6055: $59
	sbc  a                                           ; $6056: $9f
	dec  c                                           ; $6057: $0d
	ld   h, [hl]                                     ; $6058: $66
	sub  c                                           ; $6059: $91
	ld   d, b                                        ; $605a: $50
	ld   a, b                                        ; $605b: $78
	sbc  a                                           ; $605c: $9f
	dec  c                                           ; $605d: $0d
	nop                                              ; $605e: $00
	ld   a, [bc]                                     ; $605f: $0a
	dec  c                                           ; $6060: $0d
	nop                                              ; $6061: $00
	nop                                              ; $6062: $00
	rrca                                             ; $6063: $0f
	nop                                              ; $6064: $00
	ld   bc, $1e09                                   ; $6065: $01 $09 $1e
	nop                                              ; $6068: $00
	rrca                                             ; $6069: $0f
	nop                                              ; $606a: $00
	ld   bc, $0401                                   ; $606b: $01 $01 $04
	adc  [hl]                                        ; $606e: $8e
	inc  b                                           ; $606f: $04
	inc  c                                           ; $6070: $0c
	ld   a, l                                        ; $6071: $7d
	ld   [bc], a                                     ; $6072: $02
	sbc  d                                           ; $6073: $9a
	ld   e, e                                        ; $6074: $5b
	ld   [hl], l                                     ; $6075: $75
	ld   h, a                                        ; $6076: $67
	ld   e, c                                        ; $6077: $59
	ld   sp, hl                                      ; $6078: $f9
	dec  c                                           ; $6079: $0d
	nop                                              ; $607a: $00
	ld   a, [bc]                                     ; $607b: $0a
	inc  e                                           ; $607c: $1c
	ld   b, $00                                      ; $607d: $06 $00
	nop                                              ; $607f: $00
	ld   bc, $546b                                   ; $6080: $01 $6b $54
	ld   l, [hl]                                     ; $6083: $6e
	ld   a, b                                        ; $6084: $78
	rst  $38                                         ; $6085: $ff
	rst  $38                                         ; $6086: $ff
	dec  c                                           ; $6087: $0d
	ld   [bc], a                                     ; $6088: $02
	or   a                                           ; $6089: $b7
	ld   [bc], a                                     ; $608a: $02
	sub  d                                           ; $608b: $92
	ld   a, l                                        ; $608c: $7d
	ld   [bc], a                                     ; $608d: $02
	sbc  d                                           ; $608e: $9a
	ld   e, e                                        ; $608f: $5b
	ld   l, [hl]                                     ; $6090: $6e
	ld   e, a                                        ; $6091: $5f
	ld   [hl], a                                     ; $6092: $77
	dec  c                                           ; $6093: $0d
	ld   h, l                                        ; $6094: $65
	and  c                                           ; $6095: $a1
	adc  l                                           ; $6096: $8d
	sbc  b                                           ; $6097: $98
	ld   h, l                                        ; $6098: $65
	ld   l, l                                        ; $6099: $6d
	dec  b                                           ; $609a: $05
	jr   nz, jr_04b_611a                             ; $609b: $20 $7d

	ld   [bc], a                                     ; $609d: $02
	sub  h                                           ; $609e: $94
	inc  bc                                          ; $609f: $03
	ld   l, e                                        ; $60a0: $6b
	ld   e, c                                        ; $60a1: $59
	ld   a, b                                        ; $60a2: $78
	sbc  a                                           ; $60a3: $9f
	dec  c                                           ; $60a4: $0d
	nop                                              ; $60a5: $00
	ld   a, [bc]                                     ; $60a6: $0a
	add  hl, de                                      ; $60a7: $19
	dec  b                                           ; $60a8: $05
	ld   [bc], a                                     ; $60a9: $02
	xor  h                                           ; $60aa: $ac
	push af                                          ; $60ab: $f5
	bit  4, e                                        ; $60ac: $cb $63
	and  c                                           ; $60ae: $a1
	sub  a                                           ; $60af: $97
	ld   h, l                                        ; $60b0: $65
	ld   d, d                                        ; $60b1: $52
	ld   [hl], l                                     ; $60b2: $75
	ld   h, a                                        ; $60b3: $67
	ld   a, e                                        ; $60b4: $7b
	nop                                              ; $60b5: $00
	nop                                              ; $60b6: $00
	dec  b                                           ; $60b7: $05
	pop  de                                          ; $60b8: $d1
	ld   [hl], c                                     ; $60b9: $71
	ld   l, l                                        ; $60ba: $6d
	inc  bc                                          ; $60bb: $03
	pop  hl                                          ; $60bc: $e1
	sbc  b                                           ; $60bd: $98
	ld   [hl], l                                     ; $60be: $75
	ld   h, a                                        ; $60bf: $67
	nop                                              ; $60c0: $00
	ld   bc, $7707                                   ; $60c1: $01 $07 $77
	inc  b                                           ; $60c4: $04
	ld   [bc], a                                     ; $60c5: $02
	inc  bc                                          ; $60c6: $03
	ld   bc, $2000                                   ; $60c7: $01 $00 $20
	nop                                              ; $60ca: $00
	rlca                                             ; $60cb: $07
	ret  nc                                          ; $60cc: $d0

	inc  b                                           ; $60cd: $04
	ld   [bc], a                                     ; $60ce: $02
	inc  bc                                          ; $60cf: $03
	ld   bc, $2001                                   ; $60d0: $01 $01 $20
	nop                                              ; $60d3: $00
	ld   b, $34                                      ; $60d4: $06 $34
	dec  b                                           ; $60d6: $05
	rrca                                             ; $60d7: $0f
	nop                                              ; $60d8: $00
	ld   bc, $5901                                   ; $60d9: $01 $01 $59
	sub  a                                           ; $60dc: $97
	ld   l, [hl]                                     ; $60dd: $6e
	and  b                                           ; $60de: $a0
	inc  b                                           ; $60df: $04
	dec  de                                          ; $60e0: $1b
	ld   e, c                                        ; $60e1: $59
	ld   h, a                                        ; $60e2: $67
	ld   a, h                                        ; $60e3: $7c
	ld   e, d                                        ; $60e4: $5a
	ld   [bc], a                                     ; $60e5: $02
	sbc  d                                           ; $60e6: $9a
	ld   e, e                                        ; $60e7: $5b
	ld   a, b                                        ; $60e8: $78
	dec  c                                           ; $60e9: $0d
	xor  h                                           ; $60ea: $ac
	push af                                          ; $60eb: $f5
	bit  4, e                                        ; $60ec: $cb $63
	and  c                                           ; $60ee: $a1
	sub  a                                           ; $60ef: $97
	ld   h, l                                        ; $60f0: $65
	ld   d, d                                        ; $60f1: $52
	inc  bc                                          ; $60f2: $03
	call c, Call_04b_7556                            ; $60f3: $dc $56 $75
	ld   h, a                                        ; $60f6: $67
	ld   a, e                                        ; $60f7: $7b
	sbc  a                                           ; $60f8: $9f
	dec  c                                           ; $60f9: $0d
	nop                                              ; $60fa: $00
	ld   a, [bc]                                     ; $60fb: $0a
	inc  e                                           ; $60fc: $1c
	ld   b, $01                                      ; $60fd: $06 $01
	ld   bc, $401d                                   ; $60ff: $01 $1d $40
	ld   d, $03                                      ; $6102: $16 $03
	ld   d, $01                                      ; $6104: $16 $01
	ld   [bc], a                                     ; $6106: $02
	jr   z, jr_04b_6109                              ; $6107: $28 $00

jr_04b_6109:
	ld   bc, $546b                                   ; $6109: $01 $6b $54
	ld   e, c                                        ; $610c: $59
	sub  b                                           ; $610d: $90
	ld   a, b                                        ; $610e: $78
	sbc  a                                           ; $610f: $9f
	dec  c                                           ; $6110: $0d
	ret  nc                                          ; $6111: $d0

	ret  nc                                          ; $6112: $d0

	rst  $38                                         ; $6113: $ff
	rst  $38                                         ; $6114: $ff
	ld   d, b                                        ; $6115: $50
	ld   l, l                                        ; $6116: $6d
	ld   d, d                                        ; $6117: $52
	ld   a, h                                        ; $6118: $7c
	ld   h, c                                        ; $6119: $61

jr_04b_611a:
	halt                                             ; $611a: $76
	dec  c                                           ; $611b: $0d
	sub  [hl]                                        ; $611c: $96
	ld   e, l                                        ; $611d: $5d
	inc  b                                           ; $611e: $04
	sbc  [hl]                                        ; $611f: $9e
	ld   e, c                                        ; $6120: $59
	ld   [hl], c                                     ; $6121: $71
	ld   [hl], h                                     ; $6122: $74
	sbc  c                                           ; $6123: $99
	ld   h, [hl]                                     ; $6124: $66
	sub  c                                           ; $6125: $91
	ld   a, b                                        ; $6126: $78
	ld   d, d                                        ; $6127: $52
	ld   e, c                                        ; $6128: $59
	sbc  a                                           ; $6129: $9f
	dec  c                                           ; $612a: $0d
	nop                                              ; $612b: $00
	ld   a, [bc]                                     ; $612c: $0a
	ld   b, $37                                      ; $612d: $06 $37
	dec  b                                           ; $612f: $05
	rrca                                             ; $6130: $0f
	nop                                              ; $6131: $00
	ld   bc, $0501                                   ; $6132: $01 $01 $05
	pop  de                                          ; $6135: $d1
	ld   [hl], c                                     ; $6136: $71
	ld   l, l                                        ; $6137: $6d
	inc  bc                                          ; $6138: $03
	pop  hl                                          ; $6139: $e1
	sbc  b                                           ; $613a: $98
	ld   [hl], l                                     ; $613b: $75
	ld   h, a                                        ; $613c: $67
	sbc  a                                           ; $613d: $9f
	dec  c                                           ; $613e: $0d
	xor  h                                           ; $613f: $ac
	push af                                          ; $6140: $f5
	bit  4, e                                        ; $6141: $cb $63
	and  c                                           ; $6143: $a1
	ld   a, c                                        ; $6144: $79
	sbc  [hl]                                        ; $6145: $9e
	inc  b                                           ; $6146: $04
	ld   l, h                                        ; $6147: $6c
	ld   [bc], a                                     ; $6148: $02
	sub  d                                           ; $6149: $92
	ld   a, h                                        ; $614a: $7c
	db   $d3                                         ; $614b: $d3
	rst  $28                                         ; $614c: $ef
	and  l                                           ; $614d: $a5
	push af                                          ; $614e: $f5
	dec  c                                           ; $614f: $0d
	ld   a, l                                        ; $6150: $7d
	inc  b                                           ; $6151: $04
	ld   c, l                                        ; $6152: $4d
	ld   [bc], a                                     ; $6153: $02
	ld   a, e                                        ; $6154: $7b
	sbc  l                                           ; $6155: $9d
	ld   a, b                                        ; $6156: $78
	ld   d, d                                        ; $6157: $52
	ld   [hl], l                                     ; $6158: $75
	ld   h, a                                        ; $6159: $67
	ld   e, c                                        ; $615a: $59
	sub  a                                           ; $615b: $97
	ld   a, e                                        ; $615c: $7b
	sbc  a                                           ; $615d: $9f
	dec  c                                           ; $615e: $0d
	nop                                              ; $615f: $00
	ld   a, [bc]                                     ; $6160: $0a
	inc  e                                           ; $6161: $1c
	ld   b, $02                                      ; $6162: $06 $02
	ld   [bc], a                                     ; $6164: $02
	dec  e                                           ; $6165: $1d
	ld   b, b                                        ; $6166: $40
	ld   d, $03                                      ; $6167: $16 $03
	ld   d, $01                                      ; $6169: $16 $01
	ld   [bc], a                                     ; $616b: $02
	add  hl, hl                                      ; $616c: $29
	nop                                              ; $616d: $00
	ld   bc, $a178                                   ; $616e: $01 $78 $a1
	ld   l, [hl]                                     ; $6171: $6e
	sub  [hl]                                        ; $6172: $96
	sbc  a                                           ; $6173: $9f
	dec  c                                           ; $6174: $0d
	ld   l, e                                        ; $6175: $6b
	ld   d, h                                        ; $6176: $54
	ld   d, d                                        ; $6177: $52
	ld   d, h                                        ; $6178: $54
	ld   [bc], a                                     ; $6179: $02
	sbc  l                                           ; $617a: $9d
	ld   d, d                                        ; $617b: $52
	inc  b                                           ; $617c: $04
	ld   a, b                                        ; $617d: $78
	ld   h, e                                        ; $617e: $63
	sbc  d                                           ; $617f: $9a
	sbc  c                                           ; $6180: $99
	halt                                             ; $6181: $76
	dec  c                                           ; $6182: $0d
	ld   a, b                                        ; $6183: $78
	and  c                                           ; $6184: $a1
	ld   e, c                                        ; $6185: $59
	inc  b                                           ; $6186: $04
	adc  c                                           ; $6187: $89
	dec  b                                           ; $6188: $05
	ld   d, $72                                      ; $6189: $16 $72
	sub  [hl]                                        ; $618b: $96
	ld   a, b                                        ; $618c: $78
	sbc  a                                           ; $618d: $9f
	dec  c                                           ; $618e: $0d
	nop                                              ; $618f: $00
	ld   a, [bc]                                     ; $6190: $0a
	ld   b, $37                                      ; $6191: $06 $37
	dec  b                                           ; $6193: $05
	rrca                                             ; $6194: $0f
	ld   b, $00                                      ; $6195: $06 $00
	ld   bc, $7463                                   ; $6197: $01 $63 $74
	sbc  [hl]                                        ; $619a: $9e
	inc  b                                           ; $619b: $04
	inc  c                                           ; $619c: $0c
	inc  b                                           ; $619d: $04
	adc  a                                           ; $619e: $8f
	ld   [hl], l                                     ; $619f: $75
	sub  b                                           ; $61a0: $90
	inc  b                                           ; $61a1: $04
	ld   de, $768e                                   ; $61a2: $11 $8e $76
	ld   h, a                                        ; $61a5: $67
	sbc  c                                           ; $61a6: $99
	ld   e, c                                        ; $61a7: $59
	sbc  a                                           ; $61a8: $9f
	dec  c                                           ; $61a9: $0d
	ld   h, [hl]                                     ; $61aa: $66
	sub  c                                           ; $61ab: $91
	ld   d, b                                        ; $61ac: $50
	ld   a, b                                        ; $61ad: $78
	sbc  a                                           ; $61ae: $9f
	dec  c                                           ; $61af: $0d
	nop                                              ; $61b0: $00
	ld   a, [bc]                                     ; $61b1: $0a
	dec  c                                           ; $61b2: $0d
	nop                                              ; $61b3: $00
	nop                                              ; $61b4: $00
	rrca                                             ; $61b5: $0f
	nop                                              ; $61b6: $00
	ld   bc, $1e09                                   ; $61b7: $01 $09 $1e
	nop                                              ; $61ba: $00
	nop                                              ; $61bb: $00
	inc  e                                           ; $61bc: $1c
	inc  bc                                          ; $61bd: $03
	nop                                              ; $61be: $00
	nop                                              ; $61bf: $00
	ld   [bc], a                                     ; $61c0: $02
	ld   bc, $9750                                   ; $61c1: $01 $50 $97
	sbc  [hl]                                        ; $61c4: $9e
	ld   [$5d00], sp                                 ; $61c5: $08 $00 $5d
	and  c                                           ; $61c8: $a1
	sbc  a                                           ; $61c9: $9f
	dec  c                                           ; $61ca: $0d
	ld   l, a                                        ; $61cb: $6f
	sub  l                                           ; $61cc: $95
	ld   d, h                                        ; $61cd: $54
	ld   [hl], a                                     ; $61ce: $77
	sub  [hl]                                        ; $61cf: $96
	ld   e, c                                        ; $61d0: $59
	ld   [hl], c                                     ; $61d1: $71
	ld   l, l                                        ; $61d2: $6d
	sbc  l                                           ; $61d3: $9d
	rst  $38                                         ; $61d4: $ff
	rst  $38                                         ; $61d5: $ff
	dec  c                                           ; $61d6: $0d
	nop                                              ; $61d7: $00
	ld   a, [bc]                                     ; $61d8: $0a
	ld   bc, $ebc7                                   ; $61d9: $01 $c7 $eb
	cp   d                                           ; $61dc: $ba
	ld   a, h                                        ; $61dd: $7c
	inc  bc                                          ; $61de: $03
	ld   [hl], a                                     ; $61df: $77
	add  e                                           ; $61e0: $83
	ld   e, e                                        ; $61e1: $5b
	and  b                                           ; $61e2: $a0
	dec  c                                           ; $61e3: $0d
	ld   e, b                                        ; $61e4: $58
	ld   [bc], a                                     ; $61e5: $02
	add  b                                           ; $61e6: $80
	ld   d, d                                        ; $61e7: $52
	ld   h, l                                        ; $61e8: $65
	ld   l, l                                        ; $61e9: $6d
	ld   d, d                                        ; $61ea: $52
	ld   a, h                                        ; $61eb: $7c
	ld   l, [hl]                                     ; $61ec: $6e
	ld   e, a                                        ; $61ed: $5f
	ld   [hl], a                                     ; $61ee: $77
	dec  c                                           ; $61ef: $0d
	ld   d, d                                        ; $61f0: $52
	ld   d, d                                        ; $61f1: $52
	ld   e, c                                        ; $61f2: $59
	ld   h, l                                        ; $61f3: $65
	sub  a                                           ; $61f4: $97
	ld   sp, hl                                      ; $61f5: $f9
	dec  c                                           ; $61f6: $0d
	nop                                              ; $61f7: $00
	ld   a, [bc]                                     ; $61f8: $0a
	add  hl, de                                      ; $61f9: $19
	dec  b                                           ; $61fa: $05
	ld   [bc], a                                     ; $61fb: $02
	ld   a, l                                        ; $61fc: $7d
	ld   d, d                                        ; $61fd: $52
	sbc  [hl]                                        ; $61fe: $9e
	sub  [hl]                                        ; $61ff: $96
	sbc  e                                           ; $6200: $9b
	ld   h, c                                        ; $6201: $61
	and  c                                           ; $6202: $a1
	ld   [hl], l                                     ; $6203: $75
	nop                                              ; $6204: $00
	nop                                              ; $6205: $00
	ld   [bc], a                                     ; $6206: $02
	and  l                                           ; $6207: $a5
	ld   d, d                                        ; $6208: $52
	ld   l, e                                        ; $6209: $6b
	ld   e, d                                        ; $620a: $5a
	ld   h, l                                        ; $620b: $65
	ld   d, d                                        ; $620c: $52
	and  c                                           ; $620d: $a1
	ld   [hl], l                                     ; $620e: $75
	ld   h, a                                        ; $620f: $67
	nop                                              ; $6210: $00
	ld   bc, $6b07                                   ; $6211: $01 $07 $6b
	nop                                              ; $6214: $00
	ld   [bc], a                                     ; $6215: $02
	inc  bc                                          ; $6216: $03
	ld   bc, $2000                                   ; $6217: $01 $00 $20
	nop                                              ; $621a: $00
	rlca                                             ; $621b: $07
	rlca                                             ; $621c: $07
	ld   bc, $0302                                   ; $621d: $01 $02 $03
	ld   bc, $2001                                   ; $6220: $01 $01 $20
	nop                                              ; $6223: $00
	ld   b, $38                                      ; $6224: $06 $38
	ld   bc, $000f                                   ; $6226: $01 $0f $00
	ld   bc, $7d01                                   ; $6229: $01 $01 $7d
	ld   d, d                                        ; $622c: $52
	sbc  [hl]                                        ; $622d: $9e
	sub  [hl]                                        ; $622e: $96
	sbc  e                                           ; $622f: $9b
	ld   h, c                                        ; $6230: $61
	and  c                                           ; $6231: $a1
	ld   [hl], l                                     ; $6232: $75
	sbc  a                                           ; $6233: $9f
	dec  c                                           ; $6234: $0d
	nop                                              ; $6235: $00
	ld   a, [bc]                                     ; $6236: $0a
	inc  e                                           ; $6237: $1c
	inc  bc                                          ; $6238: $03
	inc  bc                                          ; $6239: $03
	inc  bc                                          ; $623a: $03
	dec  e                                           ; $623b: $1d
	ld   b, b                                        ; $623c: $40
	inc  de                                          ; $623d: $13
	inc  bc                                          ; $623e: $03
	inc  de                                          ; $623f: $13
	ld   bc, $2802                                   ; $6240: $01 $02 $28
	nop                                              ; $6243: $00
	ld   bc, $5b03                                   ; $6244: $01 $03 $5b
	ld   e, c                                        ; $6247: $59
	sbc  c                                           ; $6248: $99
	sbc  l                                           ; $6249: $9d
	sbc  a                                           ; $624a: $9f
	dec  c                                           ; $624b: $0d
	ld   h, [hl]                                     ; $624c: $66
	sub  c                                           ; $624d: $91
	sbc  [hl]                                        ; $624e: $9e
	sub  [hl]                                        ; $624f: $96
	sbc  e                                           ; $6250: $9b
	ld   h, l                                        ; $6251: $65
	ld   e, l                                        ; $6252: $5d
	ld   a, e                                        ; $6253: $7b
	sbc  a                                           ; $6254: $9f
	dec  c                                           ; $6255: $0d
	nop                                              ; $6256: $00
	ld   a, [bc]                                     ; $6257: $0a
	dec  c                                           ; $6258: $0d
	nop                                              ; $6259: $00
	nop                                              ; $625a: $00
	rrca                                             ; $625b: $0f
	nop                                              ; $625c: $00
	ld   bc, $3123                                   ; $625d: $01 $23 $31
	rrca                                             ; $6260: $0f
	nop                                              ; $6261: $00
	ld   bc, $9601                                   ; $6262: $01 $01 $96
	ld   h, l                                        ; $6265: $65
	sbc  [hl]                                        ; $6266: $9e
	sub  d                                           ; $6267: $92
	sbc  c                                           ; $6268: $99
	ld   e, c                                        ; $6269: $59
	ld   a, [$000d]                                  ; $626a: $fa $0d $00
	ld   a, [bc]                                     ; $626d: $0a
	inc  c                                           ; $626e: $0c
	dec  bc                                          ; $626f: $0b
	rrca                                             ; $6270: $0f
	nop                                              ; $6271: $00
	ld   bc, $8301                                   ; $6272: $01 $01 $83
	ld   d, h                                        ; $6275: $54
	rst  $38                                         ; $6276: $ff
	rst  $38                                         ; $6277: $ff
	sbc  [hl]                                        ; $6278: $9e
	sub  d                                           ; $6279: $92
	ld   [hl], c                                     ; $627a: $71
	halt                                             ; $627b: $76
	inc  bc                                          ; $627c: $03
	ld   a, [hl]                                     ; $627d: $7e
	sbc  l                                           ; $627e: $9d
	ld   [hl], c                                     ; $627f: $71
	ld   l, l                                        ; $6280: $6d
	sbc  a                                           ; $6281: $9f
	dec  c                                           ; $6282: $0d
	nop                                              ; $6283: $00
	ld   a, [bc]                                     ; $6284: $0a
	dec  b                                           ; $6285: $05
	add  b                                           ; $6286: $80
	ld   h, [hl]                                     ; $6287: $66
	ld   bc, $0001                                   ; $6288: $01 $01 $00
	dec  b                                           ; $628b: $05
	ld   b, b                                        ; $628c: $40
	ld   [hl], l                                     ; $628d: $75
	ld   [bc], a                                     ; $628e: $02
	nop                                              ; $628f: $00
	nop                                              ; $6290: $00
	inc  e                                           ; $6291: $1c
	inc  bc                                          ; $6292: $03
	inc  bc                                          ; $6293: $03
	inc  bc                                          ; $6294: $03
	ld   bc, $9750                                   ; $6295: $01 $50 $97
	sbc  [hl]                                        ; $6298: $9e
	ld   [$5d00], sp                                 ; $6299: $08 $00 $5d
	and  c                                           ; $629c: $a1
	sbc  a                                           ; $629d: $9f
	dec  c                                           ; $629e: $0d
	ld   e, e                                        ; $629f: $5b
	sbc  d                                           ; $62a0: $9a
	ld   d, d                                        ; $62a1: $52
	ld   a, c                                        ; $62a2: $79
	ld   a, b                                        ; $62a3: $78
	ld   [hl], c                                     ; $62a4: $71
	ld   l, l                                        ; $62a5: $6d
	ld   h, [hl]                                     ; $62a6: $66
	sub  c                                           ; $62a7: $91
	ld   a, b                                        ; $62a8: $78
	ld   d, d                                        ; $62a9: $52
	sbc  a                                           ; $62aa: $9f
	dec  c                                           ; $62ab: $0d
	ld   h, d                                        ; $62ac: $62
	ld   [bc], a                                     ; $62ad: $02
	sub  h                                           ; $62ae: $94
	dec  b                                           ; $62af: $05
	rrca                                             ; $62b0: $0f
	ld   h, e                                        ; $62b1: $63
	adc  h                                           ; $62b2: $8c
	ld   [hl], l                                     ; $62b3: $75
	ld   h, l                                        ; $62b4: $65
	ld   l, l                                        ; $62b5: $6d
	sbc  a                                           ; $62b6: $9f
	dec  c                                           ; $62b7: $0d
	nop                                              ; $62b8: $00
	ld   a, [bc]                                     ; $62b9: $0a
	dec  c                                           ; $62ba: $0d
	nop                                              ; $62bb: $00
	nop                                              ; $62bc: $00
	rrca                                             ; $62bd: $0f
	nop                                              ; $62be: $00
	ld   bc, $1e09                                   ; $62bf: $01 $09 $1e
	nop                                              ; $62c2: $00
	rrca                                             ; $62c3: $0f
	nop                                              ; $62c4: $00
	ld   bc, $0201                                   ; $62c5: $01 $01 $02
	and  l                                           ; $62c8: $a5
	ld   d, d                                        ; $62c9: $52
	ld   l, e                                        ; $62ca: $6b
	ld   e, d                                        ; $62cb: $5a
	ld   h, l                                        ; $62cc: $65
	ld   d, d                                        ; $62cd: $52
	and  c                                           ; $62ce: $a1
	ld   [hl], l                                     ; $62cf: $75
	ld   h, a                                        ; $62d0: $67
	rst  $38                                         ; $62d1: $ff
	rst  $38                                         ; $62d2: $ff
	dec  c                                           ; $62d3: $0d
	nop                                              ; $62d4: $00
	ld   a, [bc]                                     ; $62d5: $0a
	inc  e                                           ; $62d6: $1c
	inc  bc                                          ; $62d7: $03
	inc  b                                           ; $62d8: $04
	inc  b                                           ; $62d9: $04
	ld   bc, $546b                                   ; $62da: $01 $6b $54
	rst  $38                                         ; $62dd: $ff
	rst  $38                                         ; $62de: $ff
	inc  bc                                          ; $62df: $03
	dec  c                                           ; $62e0: $0d
	inc  b                                           ; $62e1: $04
	ld   a, b                                        ; $62e2: $78
	ld   a, b                                        ; $62e3: $78
	ld   d, d                                        ; $62e4: $52
	sbc  l                                           ; $62e5: $9d
	ld   a, e                                        ; $62e6: $7b
	sbc  a                                           ; $62e7: $9f
	dec  c                                           ; $62e8: $0d
	nop                                              ; $62e9: $00
	ld   a, [bc]                                     ; $62ea: $0a
	dec  c                                           ; $62eb: $0d
	nop                                              ; $62ec: $00
	nop                                              ; $62ed: $00
	rrca                                             ; $62ee: $0f
	nop                                              ; $62ef: $00
	ld   bc, $1e09                                   ; $62f0: $01 $09 $1e
	nop                                              ; $62f3: $00
	inc  e                                           ; $62f4: $1c
	inc  bc                                          ; $62f5: $03
	ld   [bc], a                                     ; $62f6: $02
	ld   [bc], a                                     ; $62f7: $02
	dec  e                                           ; $62f8: $1d
	ld   b, b                                        ; $62f9: $40
	inc  de                                          ; $62fa: $13
	inc  bc                                          ; $62fb: $03
	inc  de                                          ; $62fc: $13
	ld   bc, $2902                                   ; $62fd: $01 $02 $29
	nop                                              ; $6300: $00
	ld   bc, $9892                                   ; $6301: $01 $92 $98
	ld   l, l                                        ; $6304: $6d
	ld   e, l                                        ; $6305: $5d
	ld   a, b                                        ; $6306: $78
	ld   h, e                                        ; $6307: $63
	ld   l, e                                        ; $6308: $6b
	ld   d, h                                        ; $6309: $54
	ld   a, e                                        ; $630a: $7b
	rst  $38                                         ; $630b: $ff
	rst  $38                                         ; $630c: $ff
	dec  c                                           ; $630d: $0d
	ld   a, b                                        ; $630e: $78
	sub  a                                           ; $630f: $97
	ld   d, d                                        ; $6310: $52
	ld   d, d                                        ; $6311: $52
	sbc  l                                           ; $6312: $9d
	sbc  a                                           ; $6313: $9f
	dec  c                                           ; $6314: $0d
	nop                                              ; $6315: $00
	ld   a, [bc]                                     ; $6316: $0a
	dec  c                                           ; $6317: $0d
	nop                                              ; $6318: $00
	nop                                              ; $6319: $00
	rrca                                             ; $631a: $0f
	nop                                              ; $631b: $00
	ld   bc, $1e09                                   ; $631c: $01 $09 $1e
	nop                                              ; $631f: $00
	nop                                              ; $6320: $00
	inc  e                                           ; $6321: $1c
	inc  b                                           ; $6322: $04
	nop                                              ; $6323: $00
	nop                                              ; $6324: $00
	ld   [bc], a                                     ; $6325: $02
	ld   bc, $9e50                                   ; $6326: $01 $50 $9e
	ld   l, a                                        ; $6329: $6f
	ld   d, d                                        ; $632a: $52
	ld   [bc], a                                     ; $632b: $02
	inc  de                                          ; $632c: $13
	ld   l, a                                        ; $632d: $6f
	sub  c                                           ; $632e: $91
	and  c                                           ; $632f: $a1
	sbc  a                                           ; $6330: $9f
	dec  c                                           ; $6331: $0d
	nop                                              ; $6332: $00
	ld   a, [bc]                                     ; $6333: $0a
	inc  e                                           ; $6334: $1c
	inc  b                                           ; $6335: $04
	ld   bc, $0101                                   ; $6336: $01 $01 $01
	adc  l                                           ; $6339: $8d
	ld   [hl], h                                     ; $633a: $74
	sbc  [hl]                                        ; $633b: $9e
	adc  l                                           ; $633c: $8d
	ld   [hl], h                                     ; $633d: $74
	ld   a, [$610d]                                  ; $633e: $fa $0d $61
	and  c                                           ; $6341: $a1
	ld   [hl], a                                     ; $6342: $77
	ld   a, h                                        ; $6343: $7c
	ld   e, b                                        ; $6344: $58
	ld   h, l                                        ; $6345: $65
	ld   a, [hl]                                     ; $6346: $7e
	ld   d, d                                        ; $6347: $52
	ld   a, h                                        ; $6348: $7c
	dec  c                                           ; $6349: $0d
	ld   l, [hl]                                     ; $634a: $6e
	ld   d, d                                        ; $634b: $52
	adc  c                                           ; $634c: $89
	and  c                                           ; $634d: $a1
	sub  b                                           ; $634e: $90
	sub  a                                           ; $634f: $97
	ld   [hl], c                                     ; $6350: $71
	ld   l, l                                        ; $6351: $6d
	and  c                                           ; $6352: $a1
	ld   l, [hl]                                     ; $6353: $6e
	sub  [hl]                                        ; $6354: $96
	ld   a, [$000d]                                  ; $6355: $fa $0d $00
	ld   a, [bc]                                     ; $6358: $0a
	rrca                                             ; $6359: $0f
	nop                                              ; $635a: $00
	ld   bc, $8601                                   ; $635b: $01 $01 $86
	ld   d, [hl]                                     ; $635e: $56
	sbc  [hl]                                        ; $635f: $9e
	ld   l, e                                        ; $6360: $6b
	ld   d, h                                        ; $6361: $54
	ld   a, b                                        ; $6362: $78
	and  c                                           ; $6363: $a1
	ld   l, [hl]                                     ; $6364: $6e
	rst  $38                                         ; $6365: $ff
	rst  $38                                         ; $6366: $ff
	dec  c                                           ; $6367: $0d
	nop                                              ; $6368: $00
	ld   a, [bc]                                     ; $6369: $0a
	add  hl, de                                      ; $636a: $19
	dec  b                                           ; $636b: $05
	inc  bc                                          ; $636c: $03
	ld   [bc], a                                     ; $636d: $02
	rra                                              ; $636e: $1f
	inc  b                                           ; $636f: $04
	call nc, Call_04b_7279                           ; $6370: $d4 $79 $72
	ld   d, d                                        ; $6373: $52
	ld   [hl], h                                     ; $6374: $74
	ld   [bc], a                                     ; $6375: $02
	jp   nz, $005d                                   ; $6376: $c2 $5d $00

	nop                                              ; $6379: $00
	inc  b                                           ; $637a: $04
	db   $ec                                         ; $637b: $ec
	ld   a, c                                        ; $637c: $79
	ld   [hl], d                                     ; $637d: $72
	ld   d, d                                        ; $637e: $52
	ld   [hl], h                                     ; $637f: $74
	ld   [bc], a                                     ; $6380: $02
	jp   nz, $005d                                   ; $6381: $c2 $5d $00

	ld   bc, $8e04                                   ; $6384: $01 $04 $8e
	inc  b                                           ; $6387: $04
	inc  c                                           ; $6388: $0c
	ld   a, c                                        ; $6389: $79
	ld   [hl], d                                     ; $638a: $72
	ld   d, d                                        ; $638b: $52
	ld   [hl], h                                     ; $638c: $74
	ld   [bc], a                                     ; $638d: $02
	jp   nz, $005d                                   ; $638e: $c2 $5d $00

	ld   [bc], a                                     ; $6391: $02
	rlca                                             ; $6392: $07
	add  $00                                         ; $6393: $c6 $00
	ld   [bc], a                                     ; $6395: $02
	inc  bc                                          ; $6396: $03
	ld   bc, $2000                                   ; $6397: $01 $00 $20
	nop                                              ; $639a: $00
	rlca                                             ; $639b: $07
	and  d                                           ; $639c: $a2
	ld   [bc], a                                     ; $639d: $02
	ld   [bc], a                                     ; $639e: $02
	inc  bc                                          ; $639f: $03
	ld   bc, $2001                                   ; $63a0: $01 $01 $20
	nop                                              ; $63a3: $00
	rlca                                             ; $63a4: $07
	cpl                                              ; $63a5: $2f
	inc  b                                           ; $63a6: $04
	ld   [bc], a                                     ; $63a7: $02
	inc  bc                                          ; $63a8: $03
	ld   bc, $2002                                   ; $63a9: $01 $02 $20
	nop                                              ; $63ac: $00
	ld   b, $8f                                      ; $63ad: $06 $8f
	nop                                              ; $63af: $00
	inc  e                                           ; $63b0: $1c
	inc  b                                           ; $63b1: $04
	nop                                              ; $63b2: $00
	nop                                              ; $63b3: $00
	ld   bc, $9166                                   ; $63b4: $01 $66 $91
	sbc  [hl]                                        ; $63b7: $9e
	ld   e, b                                        ; $63b8: $58
	add  [hl]                                        ; $63b9: $86
	sub  d                                           ; $63ba: $92
	ld   a, c                                        ; $63bb: $79
	sub  b                                           ; $63bc: $90
	ld   [hl], a                                     ; $63bd: $77
	ld   [hl], c                                     ; $63be: $71
	ld   [hl], h                                     ; $63bf: $74
	dec  c                                           ; $63c0: $0d
	ld   h, e                                        ; $63c1: $63
	ld   [hl], c                                     ; $63c2: $71
	ld   l, e                                        ; $63c3: $6b
	ld   e, l                                        ; $63c4: $5d
	sub  [hl]                                        ; $63c5: $96
	adc  h                                           ; $63c6: $8c
	ld   a, b                                        ; $63c7: $78
	ld   e, l                                        ; $63c8: $5d
	ld   l, a                                        ; $63c9: $6f
	sub  c                                           ; $63ca: $91
	rst  $38                                         ; $63cb: $ff
	rst  $38                                         ; $63cc: $ff
	dec  c                                           ; $63cd: $0d
	ld   h, [hl]                                     ; $63ce: $66
	sub  c                                           ; $63cf: $91
	ld   d, b                                        ; $63d0: $50
	ld   a, e                                        ; $63d1: $7b
	sbc  [hl]                                        ; $63d2: $9e
	ld   l, a                                        ; $63d3: $6f
	ld   d, d                                        ; $63d4: $52
	ld   [bc], a                                     ; $63d5: $02
	inc  de                                          ; $63d6: $13
	ld   l, a                                        ; $63d7: $6f
	sub  c                                           ; $63d8: $91
	and  c                                           ; $63d9: $a1
	sbc  a                                           ; $63da: $9f
	dec  c                                           ; $63db: $0d
	nop                                              ; $63dc: $00
	ld   a, [bc]                                     ; $63dd: $0a
	dec  c                                           ; $63de: $0d
	nop                                              ; $63df: $00
	nop                                              ; $63e0: $00
	rrca                                             ; $63e1: $0f
	nop                                              ; $63e2: $00
	ld   bc, $1e09                                   ; $63e3: $01 $09 $1e
	nop                                              ; $63e6: $00
	rrca                                             ; $63e7: $0f
	nop                                              ; $63e8: $00
	ld   bc, $0201                                   ; $63e9: $01 $01 $02
	and  l                                           ; $63ec: $a5
	inc  b                                           ; $63ed: $04
	add  hl, hl                                      ; $63ee: $29
	ld   a, h                                        ; $63ef: $7c
	inc  b                                           ; $63f0: $04
	adc  [hl]                                        ; $63f1: $8e
	inc  b                                           ; $63f2: $04
	inc  c                                           ; $63f3: $0c
	ld   a, l                                        ; $63f4: $7d
	dec  c                                           ; $63f5: $0d
	ld   [hl], a                                     ; $63f6: $77
	and  c                                           ; $63f7: $a1
	ld   a, b                                        ; $63f8: $78
	dec  b                                           ; $63f9: $05
	jr   nz, jr_04b_6474                             ; $63fa: $20 $78

	ld   a, h                                        ; $63fc: $7c
	ld   e, c                                        ; $63fd: $59
	ld   a, b                                        ; $63fe: $78
	ld   sp, hl                                      ; $63ff: $f9
	dec  c                                           ; $6400: $0d
	nop                                              ; $6401: $00
	ld   a, [bc]                                     ; $6402: $0a
	inc  e                                           ; $6403: $1c
	inc  b                                           ; $6404: $04
	nop                                              ; $6405: $00
	nop                                              ; $6406: $00
	ld   bc, $0701                                   ; $6407: $01 $01 $07
	ld   h, e                                        ; $640a: $63
	ld   d, d                                        ; $640b: $52
	sub  h                                           ; $640c: $94
	ld   d, h                                        ; $640d: $54
	ld   e, e                                        ; $640e: $5b
	ld   bc, $6e08                                   ; $640f: $01 $08 $6e
	sub  [hl]                                        ; $6412: $96
	sbc  a                                           ; $6413: $9f
	dec  c                                           ; $6414: $0d
	ld   l, a                                        ; $6415: $6f
	ld   d, d                                        ; $6416: $52
	ld   [bc], a                                     ; $6417: $02
	inc  de                                          ; $6418: $13
	ld   l, a                                        ; $6419: $6f
	sub  c                                           ; $641a: $91
	and  c                                           ; $641b: $a1
	sbc  [hl]                                        ; $641c: $9e
	ld   h, l                                        ; $641d: $65
	ld   [hl], c                                     ; $641e: $71
	ld   [hl], h                                     ; $641f: $74
	sbc  c                                           ; $6420: $99
	ld   sp, hl                                      ; $6421: $f9
	dec  c                                           ; $6422: $0d
	nop                                              ; $6423: $00
	ld   a, [bc]                                     ; $6424: $0a
	add  hl, de                                      ; $6425: $19
	dec  b                                           ; $6426: $05
	inc  bc                                          ; $6427: $03
	inc  bc                                          ; $6428: $03
	ld   d, b                                        ; $6429: $50
	ld   [bc], a                                     ; $642a: $02
	ld   a, h                                        ; $642b: $7c
	ld   [bc], a                                     ; $642c: $02
	or   [hl]                                        ; $642d: $b6
	ld   e, d                                        ; $642e: $5a
	inc  bc                                          ; $642f: $03
	add  b                                           ; $6430: $80
	sbc  c                                           ; $6431: $99
	dec  b                                           ; $6432: $05
	jr   nz, jr_04b_64a3                             ; $6433: $20 $6e

	sub  [hl]                                        ; $6435: $96
	ld   a, e                                        ; $6436: $7b
	ld   sp, hl                                      ; $6437: $f9
	nop                                              ; $6438: $00
	nop                                              ; $6439: $00
	or   [hl]                                        ; $643a: $b6
	db   $ed                                         ; $643b: $ed
	halt                                             ; $643c: $76
	xor  h                                           ; $643d: $ac
	call z, $037c                                    ; $643e: $cc $7c $03
	xor  b                                           ; $6441: $a8
	ld   d, d                                        ; $6442: $52
	ld   l, [hl]                                     ; $6443: $6e
	sub  [hl]                                        ; $6444: $96
	ld   a, e                                        ; $6445: $7b
	ld   sp, hl                                      ; $6446: $f9
	nop                                              ; $6447: $00
	ld   bc, $7105                                   ; $6448: $01 $05 $71
	inc  bc                                          ; $644b: $03
	jp   nc, $cf04                                   ; $644c: $d2 $04 $cf

	ld   e, c                                        ; $644f: $59
	rst  $38                                         ; $6450: $ff
	rst  $38                                         ; $6451: $ff
	cp   b                                           ; $6452: $b8
	rst  $10                                         ; $6453: $d7
	and  l                                           ; $6454: $a5
	ld   a, b                                        ; $6455: $78
	sbc  a                                           ; $6456: $9f
	nop                                              ; $6457: $00
	ld   [bc], a                                     ; $6458: $02
	rlca                                             ; $6459: $07
	ld   d, [hl]                                     ; $645a: $56
	ld   bc, $0302                                   ; $645b: $01 $02 $03
	ld   bc, $2000                                   ; $645e: $01 $00 $20
	nop                                              ; $6461: $00
	rlca                                             ; $6462: $07
	xor  e                                           ; $6463: $ab
	ld   bc, $0302                                   ; $6464: $01 $02 $03
	ld   bc, $2001                                   ; $6467: $01 $01 $20
	nop                                              ; $646a: $00
	rlca                                             ; $646b: $07
	db   $e4                                         ; $646c: $e4
	ld   bc, $0302                                   ; $646d: $01 $02 $03
	ld   bc, $2002                                   ; $6470: $01 $02 $20
	nop                                              ; $6473: $00

jr_04b_6474:
	ld   b, $45                                      ; $6474: $06 $45
	ld   [bc], a                                     ; $6476: $02
	rrca                                             ; $6477: $0f
	nop                                              ; $6478: $00
	ld   bc, $0301                                   ; $6479: $01 $01 $03
	ld   d, b                                        ; $647c: $50
	ld   [bc], a                                     ; $647d: $02
	ld   a, h                                        ; $647e: $7c
	ld   [bc], a                                     ; $647f: $02
	or   [hl]                                        ; $6480: $b6
	ld   e, d                                        ; $6481: $5a
	inc  bc                                          ; $6482: $03
	add  b                                           ; $6483: $80
	sbc  c                                           ; $6484: $99
	dec  b                                           ; $6485: $05
	jr   nz, @+$70                                   ; $6486: $20 $6e

	sub  [hl]                                        ; $6488: $96
	ld   a, e                                        ; $6489: $7b
	ld   sp, hl                                      ; $648a: $f9
	dec  c                                           ; $648b: $0d
	nop                                              ; $648c: $00
	ld   a, [bc]                                     ; $648d: $0a
	inc  e                                           ; $648e: $1c
	inc  b                                           ; $648f: $04
	ld   bc, $1d01                                   ; $6490: $01 $01 $1d
	ld   b, b                                        ; $6493: $40
	inc  d                                           ; $6494: $14
	inc  bc                                          ; $6495: $03
	inc  d                                           ; $6496: $14
	ld   bc, $2802                                   ; $6497: $01 $02 $28
	nop                                              ; $649a: $00
	ld   bc, $546b                                   ; $649b: $01 $6b $54
	ld   l, [hl]                                     ; $649e: $6e
	sub  [hl]                                        ; $649f: $96
	sbc  a                                           ; $64a0: $9f
	dec  c                                           ; $64a1: $0d
	ld   l, a                                        ; $64a2: $6f

jr_04b_64a3:
	ld   d, d                                        ; $64a3: $52
	ld   [bc], a                                     ; $64a4: $02
	inc  de                                          ; $64a5: $13
	ld   l, a                                        ; $64a6: $6f
	sub  c                                           ; $64a7: $91
	and  c                                           ; $64a8: $a1
	sub  [hl]                                        ; $64a9: $96
	ld   e, l                                        ; $64aa: $5d
	ld   h, l                                        ; $64ab: $65
	ld   [hl], c                                     ; $64ac: $71
	ld   [hl], h                                     ; $64ad: $74
	sbc  c                                           ; $64ae: $99
	ld   a, e                                        ; $64af: $7b
	sbc  a                                           ; $64b0: $9f
	dec  c                                           ; $64b1: $0d
	nop                                              ; $64b2: $00
	ld   a, [bc]                                     ; $64b3: $0a
	ld   bc, $f5ac                                   ; $64b4: $01 $ac $f5
	bit  3, d                                        ; $64b7: $cb $5a
	ld   l, e                                        ; $64b9: $6b
	and  c                                           ; $64ba: $a1
	ld   h, d                                        ; $64bb: $62
	ld   e, l                                        ; $64bc: $5d
	ld   d, h                                        ; $64bd: $54
	and  b                                           ; $64be: $a0
	dec  c                                           ; $64bf: $0d
	sub  d                                           ; $64c0: $92
	sbc  c                                           ; $64c1: $99
	and  c                                           ; $64c2: $a1
	ld   l, [hl]                                     ; $64c3: $6e
	sub  [hl]                                        ; $64c4: $96
	sbc  a                                           ; $64c5: $9f
	dec  c                                           ; $64c6: $0d
	nop                                              ; $64c7: $00
	ld   a, [bc]                                     ; $64c8: $0a
	ld   b, $6b                                      ; $64c9: $06 $6b
	ld   [bc], a                                     ; $64cb: $02
	rrca                                             ; $64cc: $0f
	nop                                              ; $64cd: $00
	ld   bc, $b601                                   ; $64ce: $01 $01 $b6
	db   $ed                                         ; $64d1: $ed
	halt                                             ; $64d2: $76
	xor  h                                           ; $64d3: $ac
	call z, $037c                                    ; $64d4: $cc $7c $03
	xor  b                                           ; $64d7: $a8
	ld   d, d                                        ; $64d8: $52
	ld   l, [hl]                                     ; $64d9: $6e
	sub  [hl]                                        ; $64da: $96
	ld   a, e                                        ; $64db: $7b
	ld   sp, hl                                      ; $64dc: $f9
	dec  c                                           ; $64dd: $0d
	nop                                              ; $64de: $00
	ld   a, [bc]                                     ; $64df: $0a
	inc  e                                           ; $64e0: $1c
	inc  b                                           ; $64e1: $04
	inc  bc                                          ; $64e2: $03
	inc  bc                                          ; $64e3: $03
	dec  e                                           ; $64e4: $1d
	ld   b, b                                        ; $64e5: $40
	inc  d                                           ; $64e6: $14
	inc  bc                                          ; $64e7: $03
	inc  d                                           ; $64e8: $14
	ld   bc, $2901                                   ; $64e9: $01 $01 $29
	nop                                              ; $64ec: $00
	ld   bc, $9a6b                                   ; $64ed: $01 $6b $9a
	ld   a, l                                        ; $64f0: $7d
	sbc  [hl]                                        ; $64f1: $9e
	or   [hl]                                        ; $64f2: $b6
	db   $ed                                         ; $64f3: $ed
	xor  h                                           ; $64f4: $ac
	call z, Call_04b_715a                            ; $64f5: $cc $5a $71
	ld   l, c                                        ; $64f8: $69
	and  c                                           ; $64f9: $a1
	dec  c                                           ; $64fa: $0d
	ld   l, [hl]                                     ; $64fb: $6e
	sub  [hl]                                        ; $64fc: $96
	rst  $38                                         ; $64fd: $ff
	rst  $38                                         ; $64fe: $ff
	dec  c                                           ; $64ff: $0d
	nop                                              ; $6500: $00
	ld   a, [bc]                                     ; $6501: $0a
	ld   b, $45                                      ; $6502: $06 $45
	ld   [bc], a                                     ; $6504: $02
	rrca                                             ; $6505: $0f
	nop                                              ; $6506: $00
	ld   bc, $0501                                   ; $6507: $01 $01 $05
	ld   [hl], c                                     ; $650a: $71
	inc  bc                                          ; $650b: $03
	jp   nc, $cf04                                   ; $650c: $d2 $04 $cf

	ld   e, c                                        ; $650f: $59
	rst  $38                                         ; $6510: $ff
	rst  $38                                         ; $6511: $ff
	cp   b                                           ; $6512: $b8
	rst  $10                                         ; $6513: $d7
	and  l                                           ; $6514: $a5
	ld   a, b                                        ; $6515: $78
	sbc  a                                           ; $6516: $9f
	dec  c                                           ; $6517: $0d
	nop                                              ; $6518: $00
	ld   a, [bc]                                     ; $6519: $0a
	inc  e                                           ; $651a: $1c
	inc  b                                           ; $651b: $04
	ld   b, $06                                      ; $651c: $06 $06
	ld   bc, $f956                                   ; $651e: $01 $56 $f9
	db   $10                                         ; $6521: $10
	ld   a, b                                        ; $6522: $78
	ld   a, c                                        ; $6523: $79
	ld   sp, hl                                      ; $6524: $f9
	db   $10                                         ; $6525: $10
	ld   a, b                                        ; $6526: $78
	ld   a, c                                        ; $6527: $79
	ld   sp, hl                                      ; $6528: $f9
	dec  c                                           ; $6529: $0d
	nop                                              ; $652a: $00
	ld   a, [bc]                                     ; $652b: $0a
	rrca                                             ; $652c: $0f
	nop                                              ; $652d: $00
	ld   bc, $0401                                   ; $652e: $01 $01 $04
	ld   a, b                                        ; $6531: $78
	inc  bc                                          ; $6532: $03
	sbc  l                                           ; $6533: $9d
	ld   [bc], a                                     ; $6534: $02
	sub  a                                           ; $6535: $97
	sbc  a                                           ; $6536: $9f
	dec  c                                           ; $6537: $0d
	nop                                              ; $6538: $00
	ld   a, [bc]                                     ; $6539: $0a
	inc  e                                           ; $653a: $1c
	inc  b                                           ; $653b: $04
	ld   [bc], a                                     ; $653c: $02
	ld   [bc], a                                     ; $653d: $02
	dec  e                                           ; $653e: $1d
	ld   b, b                                        ; $653f: $40
	inc  d                                           ; $6540: $14
	inc  bc                                          ; $6541: $03
	inc  d                                           ; $6542: $14
	ld   bc, $2902                                   ; $6543: $01 $02 $29
	nop                                              ; $6546: $00
	ld   bc, $a6d7                                   ; $6547: $01 $d7 $a6
	ei                                               ; $654a: $fb
	ei                                               ; $654b: $fb
	ei                                               ; $654c: $fb
	sbc  a                                           ; $654d: $9f
	dec  c                                           ; $654e: $0d
	ld   l, e                                        ; $654f: $6b
	and  c                                           ; $6550: $a1
	ld   a, b                                        ; $6551: $78
	ld   a, h                                        ; $6552: $7c
	and  e                                           ; $6553: $a3
	and  l                                           ; $6554: $a5
	db   $ec                                         ; $6555: $ec
	cp   d                                           ; $6556: $ba
	dec  c                                           ; $6557: $0d
	sbc  l                                           ; $6558: $9d
	ld   e, c                                        ; $6559: $59
	and  c                                           ; $655a: $a1

Jump_04b_655b:
	ld   a, b                                        ; $655b: $78
	ld   d, d                                        ; $655c: $52
	sub  [hl]                                        ; $655d: $96
	db   $fc                                         ; $655e: $fc
	sbc  a                                           ; $655f: $9f
	dec  c                                           ; $6560: $0d
	nop                                              ; $6561: $00
	ld   a, [bc]                                     ; $6562: $0a
	ld   b, $45                                      ; $6563: $06 $45
	ld   [bc], a                                     ; $6565: $02
	inc  e                                           ; $6566: $1c
	inc  b                                           ; $6567: $04
	nop                                              ; $6568: $00
	nop                                              ; $6569: $00
	ld   bc, $5263                                   ; $656a: $01 $63 $52
	sub  h                                           ; $656d: $94
	ld   d, h                                        ; $656e: $54
	ld   e, e                                        ; $656f: $5b
	ld   a, l                                        ; $6570: $7d
	sbc  [hl]                                        ; $6571: $9e
	ld   l, e                                        ; $6572: $6b
	and  c                                           ; $6573: $a1
	ld   h, d                                        ; $6574: $62
	ld   e, l                                        ; $6575: $5d
	ld   d, h                                        ; $6576: $54
	ld   e, d                                        ; $6577: $5a
	dec  c                                           ; $6578: $0d
	ld   e, c                                        ; $6579: $59
	ld   [hl], d                                     ; $657a: $72
	sub  d                                           ; $657b: $92
	ld   e, l                                        ; $657c: $5d
	ld   h, a                                        ; $657d: $67
	sbc  c                                           ; $657e: $99
	dec  c                                           ; $657f: $0d
	ld   e, b                                        ; $6580: $58
	ld   a, l                                        ; $6581: $7d
	ld   a, b                                        ; $6582: $78
	ld   h, l                                        ; $6583: $65
	ld   a, b                                        ; $6584: $78
	and  c                                           ; $6585: $a1
	ld   l, [hl]                                     ; $6586: $6e
	sub  [hl]                                        ; $6587: $96
	sbc  a                                           ; $6588: $9f
	dec  c                                           ; $6589: $0d
	nop                                              ; $658a: $00
	ld   a, [bc]                                     ; $658b: $0a
	inc  e                                           ; $658c: $1c
	inc  b                                           ; $658d: $04
	nop                                              ; $658e: $00
	nop                                              ; $658f: $00
	ld   bc, $9166                                   ; $6590: $01 $66 $91
	sbc  [hl]                                        ; $6593: $9e
	ld   e, b                                        ; $6594: $58
	add  [hl]                                        ; $6595: $86
	sub  d                                           ; $6596: $92
	ld   a, c                                        ; $6597: $79
	sub  b                                           ; $6598: $90
	ld   [hl], a                                     ; $6599: $77
	ld   [hl], c                                     ; $659a: $71
	ld   [hl], h                                     ; $659b: $74
	dec  c                                           ; $659c: $0d
	ld   h, e                                        ; $659d: $63
	ld   [hl], c                                     ; $659e: $71
	ld   l, e                                        ; $659f: $6b
	ld   e, l                                        ; $65a0: $5d
	sub  [hl]                                        ; $65a1: $96
	adc  h                                           ; $65a2: $8c
	ld   a, b                                        ; $65a3: $78
	ld   e, l                                        ; $65a4: $5d
	ld   l, a                                        ; $65a5: $6f
	sub  c                                           ; $65a6: $91
	rst  $38                                         ; $65a7: $ff
	rst  $38                                         ; $65a8: $ff
	dec  c                                           ; $65a9: $0d
	ld   h, [hl]                                     ; $65aa: $66
	sub  c                                           ; $65ab: $91
	ld   d, b                                        ; $65ac: $50
	ld   a, e                                        ; $65ad: $7b
	sbc  [hl]                                        ; $65ae: $9e
	ld   l, a                                        ; $65af: $6f
	ld   d, d                                        ; $65b0: $52
	ld   [bc], a                                     ; $65b1: $02
	inc  de                                          ; $65b2: $13
	ld   l, a                                        ; $65b3: $6f
	sub  c                                           ; $65b4: $91
	and  c                                           ; $65b5: $a1
	sbc  a                                           ; $65b6: $9f
	dec  c                                           ; $65b7: $0d
	nop                                              ; $65b8: $00
	ld   a, [bc]                                     ; $65b9: $0a
	dec  c                                           ; $65ba: $0d
	nop                                              ; $65bb: $00
	nop                                              ; $65bc: $00
	rrca                                             ; $65bd: $0f
	nop                                              ; $65be: $00
	ld   bc, $1e09                                   ; $65bf: $01 $09 $1e
	nop                                              ; $65c2: $00
	rrca                                             ; $65c3: $0f
	nop                                              ; $65c4: $00
	ld   bc, $a301                                   ; $65c5: $01 $01 $a3
	and  l                                           ; $65c8: $a5
	db   $ec                                         ; $65c9: $ec
	cp   d                                           ; $65ca: $ba
	ld   a, l                                        ; $65cb: $7d
	inc  b                                           ; $65cc: $04
	ld   c, c                                        ; $65cd: $49
	ld   a, h                                        ; $65ce: $7c
	inc  b                                           ; $65cf: $04
	db   $ec                                         ; $65d0: $ec
	ld   a, b                                        ; $65d1: $78
	ld   a, h                                        ; $65d2: $7c
	ld   e, c                                        ; $65d3: $59
	ld   a, b                                        ; $65d4: $78
	ld   sp, hl                                      ; $65d5: $f9
	dec  c                                           ; $65d6: $0d
	nop                                              ; $65d7: $00
	ld   a, [bc]                                     ; $65d8: $0a
	inc  e                                           ; $65d9: $1c
	inc  b                                           ; $65da: $04
	nop                                              ; $65db: $00
	nop                                              ; $65dc: $00
	ld   bc, $956f                                   ; $65dd: $01 $6f $95
	ld   a, l                                        ; $65e0: $7d
	ld   [hl], c                                     ; $65e1: $71
	ld   e, c                                        ; $65e2: $59
	ld   d, d                                        ; $65e3: $52
	ld   l, [hl]                                     ; $65e4: $6e
	sub  [hl]                                        ; $65e5: $96
	sbc  a                                           ; $65e6: $9f
	dec  c                                           ; $65e7: $0d
	nop                                              ; $65e8: $00
	ld   a, [bc]                                     ; $65e9: $0a
	add  hl, de                                      ; $65ea: $19
	dec  b                                           ; $65eb: $05
	inc  bc                                          ; $65ec: $03
	rst  $10                                         ; $65ed: $d7
	ret  nz                                          ; $65ee: $c0

	ld   a, h                                        ; $65ef: $7c
	inc  b                                           ; $65f0: $04
	db   $ec                                         ; $65f1: $ec
	ld   l, [hl]                                     ; $65f2: $6e
	ld   a, e                                        ; $65f3: $7b
	nop                                              ; $65f4: $00
	nop                                              ; $65f5: $00
	inc  b                                           ; $65f6: $04
	ld   c, l                                        ; $65f7: $4d
	ld   [bc], a                                     ; $65f8: $02
	ld   a, e                                        ; $65f9: $7b
	ld   [hl], c                                     ; $65fa: $71
	ld   [hl], h                                     ; $65fb: $74
	sbc  c                                           ; $65fc: $99
	sub  [hl]                                        ; $65fd: $96
	nop                                              ; $65fe: $00
	ld   bc, $1305                                   ; $65ff: $01 $05 $13
	ld   h, l                                        ; $6602: $65
	adc  l                                           ; $6603: $8d
	ld   l, [hl]                                     ; $6604: $6e
	ld   a, b                                        ; $6605: $78
	nop                                              ; $6606: $00
	ld   [bc], a                                     ; $6607: $02
	rlca                                             ; $6608: $07
	dec  b                                           ; $6609: $05
	inc  bc                                          ; $660a: $03
	ld   [bc], a                                     ; $660b: $02
	inc  bc                                          ; $660c: $03
	ld   bc, $2000                                   ; $660d: $01 $00 $20
	nop                                              ; $6610: $00
	rlca                                             ; $6611: $07
	ld   c, c                                        ; $6612: $49
	inc  bc                                          ; $6613: $03
	ld   [bc], a                                     ; $6614: $02
	inc  bc                                          ; $6615: $03
	ld   bc, $2001                                   ; $6616: $01 $01 $20
	nop                                              ; $6619: $00
	rlca                                             ; $661a: $07
	adc  e                                           ; $661b: $8b
	inc  bc                                          ; $661c: $03
	ld   [bc], a                                     ; $661d: $02
	inc  bc                                          ; $661e: $03
	ld   bc, $2002                                   ; $661f: $01 $02 $20
	nop                                              ; $6622: $00
	ld   b, $f8                                      ; $6623: $06 $f8
	inc  bc                                          ; $6625: $03
	rrca                                             ; $6626: $0f
	nop                                              ; $6627: $00
	ld   bc, $5001                                   ; $6628: $01 $01 $50
	ld   d, b                                        ; $662b: $50
	sbc  [hl]                                        ; $662c: $9e
	inc  bc                                          ; $662d: $03
	ei                                               ; $662e: $fb
	inc  b                                           ; $662f: $04
	ld   a, [hl]                                     ; $6630: $7e
	ld   [bc], a                                     ; $6631: $02
	ld   a, l                                        ; $6632: $7d
	ld   [hl], c                                     ; $6633: $71
	ld   [hl], h                                     ; $6634: $74
	ld   d, d                                        ; $6635: $52
	ld   d, h                                        ; $6636: $54
	halt                                             ; $6637: $76
	dec  c                                           ; $6638: $0d
	rst  $10                                         ; $6639: $d7
	ret  nz                                          ; $663a: $c0

	ld   a, h                                        ; $663b: $7c
	inc  b                                           ; $663c: $04
	db   $ec                                         ; $663d: $ec
	ld   l, [hl]                                     ; $663e: $6e
	ld   a, e                                        ; $663f: $7b
	sbc  a                                           ; $6640: $9f
	dec  c                                           ; $6641: $0d
	nop                                              ; $6642: $00
	ld   a, [bc]                                     ; $6643: $0a
	inc  e                                           ; $6644: $1c
	inc  b                                           ; $6645: $04
	rlca                                             ; $6646: $07
	rlca                                             ; $6647: $07
	dec  e                                           ; $6648: $1d
	ld   b, b                                        ; $6649: $40
	inc  d                                           ; $664a: $14
	inc  bc                                          ; $664b: $03
	inc  d                                           ; $664c: $14
	ld   bc, $2902                                   ; $664d: $01 $02 $29
	nop                                              ; $6650: $00
	ld   bc, $c0d7                                   ; $6651: $01 $d7 $c0
	ld   h, [hl]                                     ; $6654: $66
	sub  c                                           ; $6655: $91
	ld   a, b                                        ; $6656: $78
	ld   d, d                                        ; $6657: $52
	sub  b                                           ; $6658: $90
	and  c                                           ; $6659: $a1
	ld   a, [$a50d]                                  ; $665a: $fa $0d $a5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $665d: $cf
	cp   b                                           ; $665e: $b8
	cp   b                                           ; $665f: $b8
	ld   l, [hl]                                     ; $6660: $6e
	sub  b                                           ; $6661: $90
	and  c                                           ; $6662: $a1
	ld   a, [$000d]                                  ; $6663: $fa $0d $00
	ld   a, [bc]                                     ; $6666: $0a
	ld   b, $d1                                      ; $6667: $06 $d1
	inc  bc                                          ; $6669: $03
	rrca                                             ; $666a: $0f
	nop                                              ; $666b: $00
	ld   bc, $0401                                   ; $666c: $01 $01 $04
	ld   c, l                                        ; $666f: $4d
	ld   [bc], a                                     ; $6670: $02
	ld   a, e                                        ; $6671: $7b
	ld   [hl], c                                     ; $6672: $71
	ld   [hl], h                                     ; $6673: $74
	sbc  c                                           ; $6674: $99
	sub  [hl]                                        ; $6675: $96
	sbc  a                                           ; $6676: $9f
	dec  c                                           ; $6677: $0d
	nop                                              ; $6678: $00
	ld   a, [bc]                                     ; $6679: $0a
	inc  e                                           ; $667a: $1c
	inc  b                                           ; $667b: $04
	rlca                                             ; $667c: $07
	rlca                                             ; $667d: $07
	dec  e                                           ; $667e: $1d
	ld   b, b                                        ; $667f: $40
	inc  d                                           ; $6680: $14
	inc  bc                                          ; $6681: $03
	inc  d                                           ; $6682: $14
	ld   bc, $2902                                   ; $6683: $01 $02 $29
	nop                                              ; $6686: $00
	ld   bc, $a5a3                                   ; $6687: $01 $a3 $a5
	db   $ec                                         ; $668a: $ec
	cp   d                                           ; $668b: $ba
	sbc  [hl]                                        ; $668c: $9e
	dec  c                                           ; $668d: $0d
	and  l                                           ; $668e: $a5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $668f: $cf
	cp   b                                           ; $6690: $b8
	cp   b                                           ; $6691: $b8
	ld   h, [hl]                                     ; $6692: $66
	sub  c                                           ; $6693: $91
	ld   a, b                                        ; $6694: $78
	ld   d, d                                        ; $6695: $52
	sub  b                                           ; $6696: $90
	and  c                                           ; $6697: $a1
	ld   a, [$790d]                                  ; $6698: $fa $0d $79
	ld   d, b                                        ; $669b: $50
	ld   [hl], c                                     ; $669c: $71
	ld   [hl], h                                     ; $669d: $74
	ld   a, b                                        ; $669e: $78
	and  c                                           ; $669f: $a1
	ld   e, c                                        ; $66a0: $59
	ld   a, b                                        ; $66a1: $78
	ld   d, d                                        ; $66a2: $52
	sub  b                                           ; $66a3: $90
	and  c                                           ; $66a4: $a1
	ld   a, [$000d]                                  ; $66a5: $fa $0d $00
	ld   a, [bc]                                     ; $66a8: $0a
	ld   b, $d1                                      ; $66a9: $06 $d1
	inc  bc                                          ; $66ab: $03
	rrca                                             ; $66ac: $0f
	nop                                              ; $66ad: $00
	ld   bc, $0501                                   ; $66ae: $01 $01 $05
	inc  de                                          ; $66b1: $13
	ld   h, l                                        ; $66b2: $65
	adc  l                                           ; $66b3: $8d
	ld   l, [hl]                                     ; $66b4: $6e
	ld   a, b                                        ; $66b5: $78
	rst  $38                                         ; $66b6: $ff
	rst  $38                                         ; $66b7: $ff
	dec  c                                           ; $66b8: $0d
	ld   e, e                                        ; $66b9: $5b
	ld   [hl], c                                     ; $66ba: $71
	halt                                             ; $66bb: $76
	ld   e, c                                        ; $66bc: $59
	sbc  l                                           ; $66bd: $9d
	ld   d, d                                        ; $66be: $52
	ld   d, d                                        ; $66bf: $52
	inc  bc                                          ; $66c0: $03
	ei                                               ; $66c1: $fb
	inc  b                                           ; $66c2: $04
	ld   a, [hl]                                     ; $66c3: $7e
	ld   [bc], a                                     ; $66c4: $02
	ld   a, l                                        ; $66c5: $7d
	dec  c                                           ; $66c6: $0d
	ld   a, b                                        ; $66c7: $78
	and  c                                           ; $66c8: $a1
	ld   l, [hl]                                     ; $66c9: $6e
	sbc  e                                           ; $66ca: $9b
	ld   d, h                                        ; $66cb: $54
	ld   a, e                                        ; $66cc: $7b
	sbc  a                                           ; $66cd: $9f
	dec  c                                           ; $66ce: $0d
	nop                                              ; $66cf: $00
	ld   a, [bc]                                     ; $66d0: $0a
	inc  e                                           ; $66d1: $1c
	inc  b                                           ; $66d2: $04
	dec  b                                           ; $66d3: $05
	dec  b                                           ; $66d4: $05
	dec  e                                           ; $66d5: $1d
	ld   b, b                                        ; $66d6: $40
	inc  d                                           ; $66d7: $14
	inc  bc                                          ; $66d8: $03
	inc  d                                           ; $66d9: $14
	ld   bc, $2802                                   ; $66da: $01 $02 $28
	nop                                              ; $66dd: $00
	ld   bc, $a154                                   ; $66de: $01 $54 $a1
	sbc  [hl]                                        ; $66e1: $9e
	and  e                                           ; $66e2: $a3
	and  l                                           ; $66e3: $a5
	db   $ec                                         ; $66e4: $ec
	cp   d                                           ; $66e5: $ba
	ld   e, d                                        ; $66e6: $5a
	and  c                                           ; $66e7: $a1
	ld   a, [hl]                                     ; $66e8: $7e
	sbc  c                                           ; $66e9: $99
	sub  [hl]                                        ; $66ea: $96
	ld   a, [$000d]                                  ; $66eb: $fa $0d $00
	ld   a, [bc]                                     ; $66ee: $0a
	ld   b, $f8                                      ; $66ef: $06 $f8
	inc  bc                                          ; $66f1: $03
	inc  e                                           ; $66f2: $1c
	inc  b                                           ; $66f3: $04
	ld   [bc], a                                     ; $66f4: $02
	ld   [bc], a                                     ; $66f5: $02
	ld   bc, $5490                                   ; $66f6: $01 $90 $54
	ld   d, d                                        ; $66f9: $52
	ld   d, d                                        ; $66fa: $52
	ld   a, [$6f0d]                                  ; $66fb: $fa $0d $6f
	ld   d, d                                        ; $66fe: $52
	ld   [bc], a                                     ; $66ff: $02
	inc  de                                          ; $6700: $13
	ld   l, a                                        ; $6701: $6f
	sub  c                                           ; $6702: $91
	and  c                                           ; $6703: $a1
	ld   a, b                                        ; $6704: $78
	and  c                                           ; $6705: $a1
	ld   e, c                                        ; $6706: $59
	dec  c                                           ; $6707: $0d
	ld   h, l                                        ; $6708: $65
	sub  a                                           ; $6709: $97
	ld   a, b                                        ; $670a: $78
	ld   d, d                                        ; $670b: $52
	ld   a, [$000d]                                  ; $670c: $fa $0d $00
	ld   a, [bc]                                     ; $670f: $0a
	dec  c                                           ; $6710: $0d
	nop                                              ; $6711: $00
	nop                                              ; $6712: $00
	rrca                                             ; $6713: $0f
	nop                                              ; $6714: $00
	ld   bc, $1e09                                   ; $6715: $01 $09 $1e
	nop                                              ; $6718: $00
	inc  e                                           ; $6719: $1c
	inc  b                                           ; $671a: $04
	nop                                              ; $671b: $00
	nop                                              ; $671c: $00
	ld   bc, $9166                                   ; $671d: $01 $66 $91
	sbc  [hl]                                        ; $6720: $9e
	ld   e, b                                        ; $6721: $58
	add  [hl]                                        ; $6722: $86
	sub  d                                           ; $6723: $92
	ld   a, c                                        ; $6724: $79
	sub  b                                           ; $6725: $90
	ld   [hl], a                                     ; $6726: $77
	ld   [hl], c                                     ; $6727: $71
	ld   [hl], h                                     ; $6728: $74
	dec  c                                           ; $6729: $0d
	ld   h, e                                        ; $672a: $63
	ld   [hl], c                                     ; $672b: $71
	ld   l, e                                        ; $672c: $6b
	ld   e, l                                        ; $672d: $5d
	sub  [hl]                                        ; $672e: $96
	adc  h                                           ; $672f: $8c
	ld   a, b                                        ; $6730: $78
	ld   e, l                                        ; $6731: $5d
	ld   l, a                                        ; $6732: $6f
	sub  c                                           ; $6733: $91
	rst  $38                                         ; $6734: $ff
	rst  $38                                         ; $6735: $ff
	dec  c                                           ; $6736: $0d
	ld   h, [hl]                                     ; $6737: $66
	sub  c                                           ; $6738: $91
	ld   d, b                                        ; $6739: $50
	ld   a, e                                        ; $673a: $7b
	sbc  [hl]                                        ; $673b: $9e
	ld   l, a                                        ; $673c: $6f
	ld   d, d                                        ; $673d: $52
	ld   [bc], a                                     ; $673e: $02
	inc  de                                          ; $673f: $13
	ld   l, a                                        ; $6740: $6f
	sub  c                                           ; $6741: $91
	and  c                                           ; $6742: $a1
	sbc  a                                           ; $6743: $9f
	dec  c                                           ; $6744: $0d
	nop                                              ; $6745: $00
	ld   a, [bc]                                     ; $6746: $0a
	dec  c                                           ; $6747: $0d
	nop                                              ; $6748: $00
	nop                                              ; $6749: $00
	rrca                                             ; $674a: $0f
	nop                                              ; $674b: $00
	ld   bc, $1e09                                   ; $674c: $01 $09 $1e
	nop                                              ; $674f: $00
	rrca                                             ; $6750: $0f
	nop                                              ; $6751: $00
	ld   bc, $0401                                   ; $6752: $01 $01 $04
	adc  [hl]                                        ; $6755: $8e
	inc  b                                           ; $6756: $04
	inc  c                                           ; $6757: $0c
	ld   [hl], c                                     ; $6758: $71
	ld   [hl], h                                     ; $6759: $74
	dec  b                                           ; $675a: $05
	inc  de                                          ; $675b: $13
	ld   h, l                                        ; $675c: $65
	ld   d, d                                        ; $675d: $52
	ld   sp, hl                                      ; $675e: $f9
	dec  c                                           ; $675f: $0d
	nop                                              ; $6760: $00
	ld   a, [bc]                                     ; $6761: $0a
	inc  e                                           ; $6762: $1c
	inc  b                                           ; $6763: $04
	ld   bc, $0101                                   ; $6764: $01 $01 $01
	ld   d, h                                        ; $6767: $54
	and  c                                           ; $6768: $a1
	ld   a, [$670d]                                  ; $6769: $fa $0d $67
	ld   h, d                                        ; $676c: $62
	ld   e, l                                        ; $676d: $5d
	sbc  [hl]                                        ; $676e: $9e
	ld   h, a                                        ; $676f: $67
	ld   h, d                                        ; $6770: $62
	ld   e, l                                        ; $6771: $5d
	ld   l, [hl]                                     ; $6772: $6e
	ei                                               ; $6773: $fb
	ld   d, d                                        ; $6774: $52
	ld   h, a                                        ; $6775: $67
	ld   e, e                                        ; $6776: $5b
	ld   a, [$000d]                                  ; $6777: $fa $0d $00
	ld   a, [bc]                                     ; $677a: $0a
	add  hl, de                                      ; $677b: $19
	dec  b                                           ; $677c: $05
	inc  bc                                          ; $677d: $03
	inc  b                                           ; $677e: $04
	ld   l, l                                        ; $677f: $6d
	sub  b                                           ; $6780: $90
	inc  bc                                          ; $6781: $03
	add  b                                           ; $6782: $80
	ld   [hl], h                                     ; $6783: $74
	adc  l                                           ; $6784: $8d
	ld   l, l                                        ; $6785: $6d
	ld   d, d                                        ; $6786: $52
	ld   a, b                                        ; $6787: $78
	nop                                              ; $6788: $00
	nop                                              ; $6789: $00
	ld   h, [hl]                                     ; $678a: $66
	sub  c                                           ; $678b: $91
	ld   [bc], a                                     ; $678c: $02
	sub  l                                           ; $678d: $95
	ld   a, c                                        ; $678e: $79
	ld   [bc], a                                     ; $678f: $02
	ld   a, a                                        ; $6790: $7f
	ld   e, l                                        ; $6791: $5d
	ld   e, c                                        ; $6792: $59
	sub  a                                           ; $6793: $97
	ld   a, e                                        ; $6794: $7b
	nop                                              ; $6795: $00
	ld   bc, $6d04                                   ; $6796: $01 $04 $6d
	ld   a, l                                        ; $6799: $7d
	ld   e, e                                        ; $679a: $5b
	sub  l                                           ; $679b: $95
	ld   d, h                                        ; $679c: $54
	adc  l                                           ; $679d: $8d
	ld   a, b                                        ; $679e: $78
	ld   d, d                                        ; $679f: $52
	ld   e, a                                        ; $67a0: $5f
	ld   [hl], a                                     ; $67a1: $77
	ld   a, e                                        ; $67a2: $7b
	nop                                              ; $67a3: $00
	ld   [bc], a                                     ; $67a4: $02
	rlca                                             ; $67a5: $07
	and  d                                           ; $67a6: $a2
	inc  b                                           ; $67a7: $04
	ld   [bc], a                                     ; $67a8: $02
	inc  bc                                          ; $67a9: $03
	ld   bc, $2000                                   ; $67aa: $01 $00 $20
	nop                                              ; $67ad: $00
	rlca                                             ; $67ae: $07
	pop  af                                          ; $67af: $f1
	inc  b                                           ; $67b0: $04
	ld   [bc], a                                     ; $67b1: $02
	inc  bc                                          ; $67b2: $03
	ld   bc, $2001                                   ; $67b3: $01 $01 $20
	nop                                              ; $67b6: $00
	rlca                                             ; $67b7: $07
	cpl                                              ; $67b8: $2f
	dec  b                                           ; $67b9: $05
	ld   [bc], a                                     ; $67ba: $02
	inc  bc                                          ; $67bb: $03
	ld   bc, $2002                                   ; $67bc: $01 $02 $20
	nop                                              ; $67bf: $00
	ld   b, $76                                      ; $67c0: $06 $76
	dec  b                                           ; $67c2: $05
	rrca                                             ; $67c3: $0f
	nop                                              ; $67c4: $00
	ld   bc, $0401                                   ; $67c5: $01 $01 $04
	ld   l, l                                        ; $67c8: $6d
	sub  b                                           ; $67c9: $90
	inc  bc                                          ; $67ca: $03
	add  b                                           ; $67cb: $80
	ld   [hl], h                                     ; $67cc: $74
	adc  l                                           ; $67cd: $8d
	ld   l, l                                        ; $67ce: $6d
	ld   d, d                                        ; $67cf: $52
	ld   a, b                                        ; $67d0: $78
	sbc  a                                           ; $67d1: $9f
	dec  c                                           ; $67d2: $0d
	ld   e, b                                        ; $67d3: $58
	sub  b                                           ; $67d4: $90
	ld   h, l                                        ; $67d5: $65
	sbc  e                                           ; $67d6: $9b
	ld   l, e                                        ; $67d7: $6b
	ld   d, h                                        ; $67d8: $54
	ld   l, [hl]                                     ; $67d9: $6e
	ld   h, l                                        ; $67da: $65
	rst  $38                                         ; $67db: $ff
	rst  $38                                         ; $67dc: $ff
	dec  c                                           ; $67dd: $0d
	nop                                              ; $67de: $00
	ld   a, [bc]                                     ; $67df: $0a
	inc  e                                           ; $67e0: $1c
	inc  b                                           ; $67e1: $04
	ld   bc, $1d01                                   ; $67e2: $01 $01 $1d
	ld   b, b                                        ; $67e5: $40
	inc  d                                           ; $67e6: $14
	inc  bc                                          ; $67e7: $03
	inc  d                                           ; $67e8: $14
	ld   bc, $2802                                   ; $67e9: $01 $02 $28
	nop                                              ; $67ec: $00
	ld   bc, $526f                                   ; $67ed: $01 $6f $52
	ld   [bc], a                                     ; $67f0: $02
	inc  de                                          ; $67f1: $13
	ld   l, a                                        ; $67f2: $6f
	sub  c                                           ; $67f3: $91
	and  c                                           ; $67f4: $a1
	sub  b                                           ; $67f5: $90
	dec  c                                           ; $67f6: $0d
	sub  d                                           ; $67f7: $92
	ld   e, l                                        ; $67f8: $5d
	ld   h, l                                        ; $67f9: $65
	sub  c                                           ; $67fa: $91
	and  b                                           ; $67fb: $a0
	sub  d                                           ; $67fc: $92
	sbc  c                                           ; $67fd: $99
	ld   a, h                                        ; $67fe: $7c
	ld   sp, hl                                      ; $67ff: $f9
	dec  c                                           ; $6800: $0d
	sbc  l                                           ; $6801: $9d
	ld   c, a                                        ; $6802: $4f
	sbc  [hl]                                        ; $6803: $9e
	ld   l, l                                        ; $6804: $6d
	ld   a, h                                        ; $6805: $7c
	ld   h, l                                        ; $6806: $65
	adc  l                                           ; $6807: $8d
	ld   l, [hl]                                     ; $6808: $6e
	ld   a, b                                        ; $6809: $78
	db   $fc                                         ; $680a: $fc
	sbc  a                                           ; $680b: $9f
	dec  c                                           ; $680c: $0d
	nop                                              ; $680d: $00
	ld   a, [bc]                                     ; $680e: $0a
	ld   b, $76                                      ; $680f: $06 $76
	dec  b                                           ; $6811: $05
	rrca                                             ; $6812: $0f
	nop                                              ; $6813: $00
	ld   bc, $6601                                   ; $6814: $01 $01 $66
	sub  c                                           ; $6817: $91
	ld   [bc], a                                     ; $6818: $02
	sub  l                                           ; $6819: $95
	ld   a, c                                        ; $681a: $79
	ld   [bc], a                                     ; $681b: $02
	ld   a, a                                        ; $681c: $7f
	ld   e, l                                        ; $681d: $5d
	ld   e, c                                        ; $681e: $59
	sub  a                                           ; $681f: $97
	ld   a, e                                        ; $6820: $7b
	sbc  a                                           ; $6821: $9f
	dec  c                                           ; $6822: $0d
	ld   e, d                                        ; $6823: $5a
	and  c                                           ; $6824: $a1
	ld   a, [hl]                                     ; $6825: $7e
	sbc  c                                           ; $6826: $99
	and  c                                           ; $6827: $a1
	ld   l, [hl]                                     ; $6828: $6e
	sub  [hl]                                        ; $6829: $96
	sbc  a                                           ; $682a: $9f
	dec  c                                           ; $682b: $0d
	nop                                              ; $682c: $00
	ld   a, [bc]                                     ; $682d: $0a
	inc  e                                           ; $682e: $1c
	inc  b                                           ; $682f: $04
	ld   bc, $1d01                                   ; $6830: $01 $01 $1d
	ld   b, b                                        ; $6833: $40
	inc  d                                           ; $6834: $14
	inc  bc                                          ; $6835: $03
	inc  d                                           ; $6836: $14
	ld   bc, $2803                                   ; $6837: $01 $03 $28
	nop                                              ; $683a: $00
	ld   bc, $a154                                   ; $683b: $01 $54 $a1
	ld   a, [$6a0d]                                  ; $683e: $fa $0d $6a
	ld   [hl], c                                     ; $6841: $71
	ld   l, l                                        ; $6842: $6d
	ld   d, d                                        ; $6843: $52
	adc  l                                           ; $6844: $8d
	ld   a, c                                        ; $6845: $79
	ld   e, e                                        ; $6846: $5b
	ld   [hl], h                                     ; $6847: $74
	ld   a, e                                        ; $6848: $7b
	ld   a, [$000d]                                  ; $6849: $fa $0d $00
	ld   a, [bc]                                     ; $684c: $0a
	ld   b, $76                                      ; $684d: $06 $76
	dec  b                                           ; $684f: $05
	rrca                                             ; $6850: $0f
	nop                                              ; $6851: $00
	ld   bc, $0401                                   ; $6852: $01 $01 $04
	ld   l, l                                        ; $6855: $6d
	ld   a, l                                        ; $6856: $7d
	ld   e, e                                        ; $6857: $5b
	sub  l                                           ; $6858: $95
	ld   d, h                                        ; $6859: $54
	adc  l                                           ; $685a: $8d
	ld   a, b                                        ; $685b: $78
	ld   d, d                                        ; $685c: $52
	ld   e, a                                        ; $685d: $5f
	ld   [hl], a                                     ; $685e: $77
	ld   a, e                                        ; $685f: $7b
	sbc  a                                           ; $6860: $9f
	dec  c                                           ; $6861: $0d
	nop                                              ; $6862: $00
	ld   a, [bc]                                     ; $6863: $0a
	inc  e                                           ; $6864: $1c
	inc  b                                           ; $6865: $04
	inc  bc                                          ; $6866: $03
	inc  bc                                          ; $6867: $03
	dec  e                                           ; $6868: $1d
	ld   b, b                                        ; $6869: $40
	inc  d                                           ; $686a: $14
	inc  bc                                          ; $686b: $03
	inc  d                                           ; $686c: $14
	ld   bc, $2902                                   ; $686d: $01 $02 $29
	nop                                              ; $6870: $00
	ld   bc, $5484                                   ; $6871: $01 $84 $54
	rst  $38                                         ; $6874: $ff
	rst  $38                                         ; $6875: $ff
	ld   [hl], d                                     ; $6876: $72
	adc  h                                           ; $6877: $8c
	and  c                                           ; $6878: $a1
	ld   a, b                                        ; $6879: $78
	ld   d, d                                        ; $687a: $52
	ld   a, h                                        ; $687b: $7c
	sbc  a                                           ; $687c: $9f
	dec  c                                           ; $687d: $0d
	nop                                              ; $687e: $00
	ld   a, [bc]                                     ; $687f: $0a
	ld   bc, $5252                                   ; $6880: $01 $52 $52
	sub  b                                           ; $6883: $90
	and  c                                           ; $6884: $a1
	sbc  a                                           ; $6885: $9f
	dec  c                                           ; $6886: $0d
	and  e                                           ; $6887: $a3
	and  l                                           ; $6888: $a5
	db   $ec                                         ; $6889: $ec
	cp   d                                           ; $688a: $ba
	sbc  [hl]                                        ; $688b: $9e
	ld   l, [hl]                                     ; $688c: $6e
	ld   d, d                                        ; $688d: $52
	ld   h, a                                        ; $688e: $67
	ld   e, e                                        ; $688f: $5b
	ld   l, [hl]                                     ; $6890: $6e
	ld   e, c                                        ; $6891: $59
	sub  a                                           ; $6892: $97
	sbc  a                                           ; $6893: $9f
	dec  c                                           ; $6894: $0d
	nop                                              ; $6895: $00
	ld   a, [bc]                                     ; $6896: $0a
	inc  e                                           ; $6897: $1c
	inc  b                                           ; $6898: $04
	nop                                              ; $6899: $00
	nop                                              ; $689a: $00
	ld   bc, $9166                                   ; $689b: $01 $66 $91
	sbc  [hl]                                        ; $689e: $9e
	ld   e, b                                        ; $689f: $58
	add  [hl]                                        ; $68a0: $86
	sub  d                                           ; $68a1: $92
	ld   a, c                                        ; $68a2: $79
	sub  b                                           ; $68a3: $90
	ld   [hl], a                                     ; $68a4: $77
	ld   [hl], c                                     ; $68a5: $71
	ld   [hl], h                                     ; $68a6: $74
	dec  c                                           ; $68a7: $0d
	ld   h, e                                        ; $68a8: $63
	ld   [hl], c                                     ; $68a9: $71
	ld   l, e                                        ; $68aa: $6b
	ld   e, l                                        ; $68ab: $5d
	sub  [hl]                                        ; $68ac: $96
	adc  h                                           ; $68ad: $8c
	ld   a, b                                        ; $68ae: $78
	ld   e, l                                        ; $68af: $5d
	ld   l, a                                        ; $68b0: $6f
	sub  c                                           ; $68b1: $91
	rst  $38                                         ; $68b2: $ff
	rst  $38                                         ; $68b3: $ff
	dec  c                                           ; $68b4: $0d
	ld   h, [hl]                                     ; $68b5: $66
	sub  c                                           ; $68b6: $91
	ld   d, b                                        ; $68b7: $50
	ld   a, e                                        ; $68b8: $7b
	sbc  [hl]                                        ; $68b9: $9e
	ld   l, a                                        ; $68ba: $6f
	ld   d, d                                        ; $68bb: $52
	ld   [bc], a                                     ; $68bc: $02
	inc  de                                          ; $68bd: $13
	ld   l, a                                        ; $68be: $6f
	sub  c                                           ; $68bf: $91
	and  c                                           ; $68c0: $a1
	sbc  a                                           ; $68c1: $9f
	dec  c                                           ; $68c2: $0d
	nop                                              ; $68c3: $00
	ld   a, [bc]                                     ; $68c4: $0a
	dec  c                                           ; $68c5: $0d
	nop                                              ; $68c6: $00
	nop                                              ; $68c7: $00
	rrca                                             ; $68c8: $0f
	nop                                              ; $68c9: $00
	ld   bc, $1e09                                   ; $68ca: $01 $09 $1e
	nop                                              ; $68cd: $00
	nop                                              ; $68ce: $00
	inc  e                                           ; $68cf: $1c
	dec  b                                           ; $68d0: $05
	nop                                              ; $68d1: $00
	nop                                              ; $68d2: $00
	ld   [bc], a                                     ; $68d3: $02
	ld   bc, $7158                                   ; $68d4: $01 $58 $71
	sbc  [hl]                                        ; $68d7: $9e
	ld   [$7d00], sp                                 ; $68d8: $08 $00 $7d
	and  c                                           ; $68db: $a1
	sbc  a                                           ; $68dc: $9f
	dec  c                                           ; $68dd: $0d
	nop                                              ; $68de: $00
	ld   a, [bc]                                     ; $68df: $0a
	rrca                                             ; $68e0: $0f
	nop                                              ; $68e1: $00
	ld   bc, $5001                                   ; $68e2: $01 $01 $50
	sbc  [hl]                                        ; $68e5: $9e
	ld   [bc], a                                     ; $68e6: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68e7: $cf
	dec  b                                           ; $68e8: $05
	ld   a, [de]                                     ; $68e9: $1a
	ld   h, e                                        ; $68ea: $63
	and  c                                           ; $68eb: $a1
	sbc  a                                           ; $68ec: $9f
	dec  c                                           ; $68ed: $0d
	ld   e, b                                        ; $68ee: $58
	ld   a, l                                        ; $68ef: $7d
	sub  [hl]                                        ; $68f0: $96
	ld   d, h                                        ; $68f1: $54
	ld   h, d                                        ; $68f2: $62
	ld   h, h                                        ; $68f3: $64
	ld   d, d                                        ; $68f4: $52
	adc  h                                           ; $68f5: $8c
	ld   h, a                                        ; $68f6: $67
	sbc  a                                           ; $68f7: $9f
	dec  c                                           ; $68f8: $0d
	nop                                              ; $68f9: $00
	ld   a, [bc]                                     ; $68fa: $0a
	rrca                                             ; $68fb: $0f
	dec  b                                           ; $68fc: $05
	nop                                              ; $68fd: $00
	ld   bc, $a502                                   ; $68fe: $01 $02 $a5
	inc  b                                           ; $6901: $04
	add  hl, hl                                      ; $6902: $29
	ld   a, h                                        ; $6903: $7c
	ld   [bc], a                                     ; $6904: $02
	sbc  c                                           ; $6905: $99
	ld   [bc], a                                     ; $6906: $02
	rra                                              ; $6907: $1f
	ld   a, h                                        ; $6908: $7c
	inc  b                                           ; $6909: $04
	inc  c                                           ; $690a: $0c
	inc  b                                           ; $690b: $04
	adc  a                                           ; $690c: $8f
	ld   e, d                                        ; $690d: $5a
	dec  c                                           ; $690e: $0d
	inc  b                                           ; $690f: $04
	ld   b, $52                                      ; $6910: $06 $52
	ld   l, l                                        ; $6912: $6d
	and  c                                           ; $6913: $a1
	sub  d                                           ; $6914: $92
	sbc  a                                           ; $6915: $9f
	dec  c                                           ; $6916: $0d
	nop                                              ; $6917: $00
	ld   a, [bc]                                     ; $6918: $0a
	rrca                                             ; $6919: $0f
	nop                                              ; $691a: $00
	ld   bc, $8601                                   ; $691b: $01 $01 $86
	ld   d, [hl]                                     ; $691e: $56
	db   $fc                                         ; $691f: $fc
	sbc  [hl]                                        ; $6920: $9e
	ld   l, e                                        ; $6921: $6b
	ld   d, h                                        ; $6922: $54
	ld   a, b                                        ; $6923: $78
	and  c                                           ; $6924: $a1
	ld   [hl], l                                     ; $6925: $75
	ld   h, a                                        ; $6926: $67
	ld   e, c                                        ; $6927: $59
	sbc  a                                           ; $6928: $9f
	dec  c                                           ; $6929: $0d
	nop                                              ; $692a: $00
	ld   a, [bc]                                     ; $692b: $0a
	add  hl, de                                      ; $692c: $19
	dec  b                                           ; $692d: $05
	inc  bc                                          ; $692e: $03
	ld   [bc], a                                     ; $692f: $02
	rra                                              ; $6930: $1f
	inc  b                                           ; $6931: $04
	call nc, Call_04b_7279                           ; $6932: $d4 $79 $72
	ld   d, d                                        ; $6935: $52
	ld   [hl], h                                     ; $6936: $74
	ld   [bc], a                                     ; $6937: $02
	jp   nz, $005d                                   ; $6938: $c2 $5d $00

	nop                                              ; $693b: $00
	inc  b                                           ; $693c: $04
	db   $ec                                         ; $693d: $ec
	ld   a, c                                        ; $693e: $79
	ld   [hl], d                                     ; $693f: $72
	ld   d, d                                        ; $6940: $52
	ld   [hl], h                                     ; $6941: $74
	ld   [bc], a                                     ; $6942: $02
	jp   nz, $005d                                   ; $6943: $c2 $5d $00

	ld   bc, $8e04                                   ; $6946: $01 $04 $8e
	inc  b                                           ; $6949: $04
	inc  c                                           ; $694a: $0c
	ld   a, c                                        ; $694b: $79
	ld   [hl], d                                     ; $694c: $72
	ld   d, d                                        ; $694d: $52
	ld   [hl], h                                     ; $694e: $74
	ld   [bc], a                                     ; $694f: $02
	jp   nz, $005d                                   ; $6950: $c2 $5d $00

	ld   [bc], a                                     ; $6953: $02
	rlca                                             ; $6954: $07
	pop  de                                          ; $6955: $d1
	nop                                              ; $6956: $00
	ld   [bc], a                                     ; $6957: $02
	inc  bc                                          ; $6958: $03
	ld   bc, $2000                                   ; $6959: $01 $00 $20
	nop                                              ; $695c: $00
	rlca                                             ; $695d: $07
	ld   l, h                                        ; $695e: $6c
	ld   [bc], a                                     ; $695f: $02
	ld   [bc], a                                     ; $6960: $02
	inc  bc                                          ; $6961: $03
	ld   bc, $2001                                   ; $6962: $01 $01 $20
	nop                                              ; $6965: $00
	rlca                                             ; $6966: $07
	ld   [hl+], a                                    ; $6967: $22
	inc  b                                           ; $6968: $04
	ld   [bc], a                                     ; $6969: $02
	inc  bc                                          ; $696a: $03
	ld   bc, $2002                                   ; $696b: $01 $02 $20
	nop                                              ; $696e: $00
	ld   b, $a3                                      ; $696f: $06 $a3
	nop                                              ; $6971: $00
	rrca                                             ; $6972: $0f
	dec  b                                           ; $6973: $05
	nop                                              ; $6974: $00
	ld   bc, $7889                                   ; $6975: $01 $89 $78
	sbc  [hl]                                        ; $6978: $9e
	and  a                                           ; $6979: $a7
	jp   nz, $9504                                   ; $697a: $c2 $04 $95

	ld   [bc], a                                     ; $697d: $02
	ld   hl, $0479                                   ; $697e: $21 $79 $04
	jp   Jump_04b_7471                               ; $6981: $c3 $71 $74


	dec  c                                           ; $6984: $0d
	inc  b                                           ; $6985: $04
	inc  c                                           ; $6986: $0c
	inc  b                                           ; $6987: $04
	adc  a                                           ; $6988: $8f
	inc  b                                           ; $6989: $04
	ld   de, $598e                                   ; $698a: $11 $8e $59
	sub  a                                           ; $698d: $97
	sbc  a                                           ; $698e: $9f
	dec  c                                           ; $698f: $0d
	adc  h                                           ; $6990: $8c
	ld   l, l                                        ; $6991: $6d
	ld   a, b                                        ; $6992: $78
	sbc  a                                           ; $6993: $9f
	dec  c                                           ; $6994: $0d
	nop                                              ; $6995: $00
	ld   a, [bc]                                     ; $6996: $0a
	dec  c                                           ; $6997: $0d
	nop                                              ; $6998: $00
	nop                                              ; $6999: $00
	rrca                                             ; $699a: $0f
	nop                                              ; $699b: $00
	ld   bc, $1e09                                   ; $699c: $01 $09 $1e
	nop                                              ; $699f: $00
	rrca                                             ; $69a0: $0f
	nop                                              ; $69a1: $00
	ld   bc, $0201                                   ; $69a2: $01 $01 $02
	rra                                              ; $69a5: $1f
	inc  b                                           ; $69a6: $04
	call nc, $047d                                   ; $69a7: $d4 $7d $04
	ld   c, c                                        ; $69aa: $49
	ld   [hl], l                                     ; $69ab: $75
	ld   h, a                                        ; $69ac: $67
	ld   e, c                                        ; $69ad: $59
	ld   sp, hl                                      ; $69ae: $f9
	dec  c                                           ; $69af: $0d
	nop                                              ; $69b0: $00
	ld   a, [bc]                                     ; $69b1: $0a
	rrca                                             ; $69b2: $0f
	dec  b                                           ; $69b3: $05
	nop                                              ; $69b4: $00
	ld   bc, $4b04                                   ; $69b5: $01 $04 $4b
	inc  b                                           ; $69b8: $04
	ldh  a, [c]                                      ; $69b9: $f2
	ld   [bc], a                                     ; $69ba: $02
	sub  a                                           ; $69bb: $97
	sub  d                                           ; $69bc: $92
	sbc  a                                           ; $69bd: $9f
	dec  c                                           ; $69be: $0d
	inc  b                                           ; $69bf: $04
	dec  hl                                          ; $69c0: $2b
	ld   [hl], c                                     ; $69c1: $71
	ld   [hl], h                                     ; $69c2: $74
	sbc  c                                           ; $69c3: $99
	ld   e, c                                        ; $69c4: $59
	ld   sp, hl                                      ; $69c5: $f9
	dec  c                                           ; $69c6: $0d
	nop                                              ; $69c7: $00
	ld   a, [bc]                                     ; $69c8: $0a
	add  hl, de                                      ; $69c9: $19
	dec  b                                           ; $69ca: $05
	inc  bc                                          ; $69cb: $03
	inc  b                                           ; $69cc: $04
	dec  bc                                          ; $69cd: $0b
	ld   [bc], a                                     ; $69ce: $02
	adc  a                                           ; $69cf: $8f
	ld   a, h                                        ; $69d0: $7c
	dec  b                                           ; $69d1: $05
	jr   nz, jr_04b_6a49                             ; $69d2: $20 $75

	ld   h, a                                        ; $69d4: $67
	sub  [hl]                                        ; $69d5: $96
	ld   a, e                                        ; $69d6: $7b
	ld   sp, hl                                      ; $69d7: $f9
	nop                                              ; $69d8: $00
	nop                                              ; $69d9: $00
	ld   [bc], a                                     ; $69da: $02
	ei                                               ; $69db: $fb
	inc  b                                           ; $69dc: $04
	sub  e                                           ; $69dd: $93
	ld   a, h                                        ; $69de: $7c
	inc  b                                           ; $69df: $04
	dec  l                                           ; $69e0: $2d
	inc  b                                           ; $69e1: $04
	ldh  a, [c]                                      ; $69e2: $f2
	ld   [bc], a                                     ; $69e3: $02
	sub  a                                           ; $69e4: $97
	sub  b                                           ; $69e5: $90
	ld   e, b                                        ; $69e6: $58
	sub  b                                           ; $69e7: $90
	ld   h, l                                        ; $69e8: $65
	sbc  e                                           ; $69e9: $9b
	ld   d, d                                        ; $69ea: $52
	nop                                              ; $69eb: $00
	ld   bc, $4b04                                   ; $69ec: $01 $04 $4b
	inc  b                                           ; $69ef: $04
	ldh  a, [c]                                      ; $69f0: $f2
	ld   [bc], a                                     ; $69f1: $02
	sub  a                                           ; $69f2: $97
	ld   [hl], c                                     ; $69f3: $71
	ld   [hl], h                                     ; $69f4: $74
	ld   a, b                                        ; $69f5: $78
	and  c                                           ; $69f6: $a1
	ld   [hl], l                                     ; $69f7: $75
	ld   h, a                                        ; $69f8: $67
	ld   e, c                                        ; $69f9: $59
	nop                                              ; $69fa: $00
	ld   [bc], a                                     ; $69fb: $02
	rlca                                             ; $69fc: $07
	ld   c, e                                        ; $69fd: $4b
	ld   bc, $0302                                   ; $69fe: $01 $02 $03
	ld   bc, $2000                                   ; $6a01: $01 $00 $20
	nop                                              ; $6a04: $00
	rlca                                             ; $6a05: $07
	and  d                                           ; $6a06: $a2
	ld   bc, $0302                                   ; $6a07: $01 $02 $03
	ld   bc, $2001                                   ; $6a0a: $01 $01 $20
	nop                                              ; $6a0d: $00
	rlca                                             ; $6a0e: $07
	db   $fd                                         ; $6a0f: $fd
	ld   bc, $0302                                   ; $6a10: $01 $02 $03
	ld   bc, $2002                                   ; $6a13: $01 $02 $20
	nop                                              ; $6a16: $00
	ld   b, $12                                      ; $6a17: $06 $12
	ld   [bc], a                                     ; $6a19: $02
	rrca                                             ; $6a1a: $0f
	nop                                              ; $6a1b: $00
	ld   bc, $0401                                   ; $6a1c: $01 $01 $04
	dec  bc                                          ; $6a1f: $0b
	ld   [bc], a                                     ; $6a20: $02
	adc  a                                           ; $6a21: $8f
	ld   a, h                                        ; $6a22: $7c
	ld   e, b                                        ; $6a23: $58
	dec  b                                           ; $6a24: $05
	jr   nz, @+$77                                   ; $6a25: $20 $75

	ld   h, a                                        ; $6a27: $67
	sub  [hl]                                        ; $6a28: $96
	ld   a, e                                        ; $6a29: $7b
	sbc  a                                           ; $6a2a: $9f
	dec  c                                           ; $6a2b: $0d
	nop                                              ; $6a2c: $00
	ld   a, [bc]                                     ; $6a2d: $0a
	inc  e                                           ; $6a2e: $1c
	dec  b                                           ; $6a2f: $05
	ld   bc, $1d01                                   ; $6a30: $01 $01 $1d
	ld   b, b                                        ; $6a33: $40
	dec  d                                           ; $6a34: $15
	inc  bc                                          ; $6a35: $03
	dec  d                                           ; $6a36: $15
	ld   bc, $2802                                   ; $6a37: $01 $02 $28
	nop                                              ; $6a3a: $00
	ld   bc, $546b                                   ; $6a3b: $01 $6b $54
	sub  d                                           ; $6a3e: $92
	sbc  a                                           ; $6a3f: $9f
	sub  [hl]                                        ; $6a40: $96
	ei                                               ; $6a41: $fb
	inc  b                                           ; $6a42: $04
	dec  hl                                          ; $6a43: $2b
	ld   [hl], c                                     ; $6a44: $71
	ld   [hl], h                                     ; $6a45: $74
	sbc  c                                           ; $6a46: $99
	sub  d                                           ; $6a47: $92
	and  c                                           ; $6a48: $a1

jr_04b_6a49:
	sbc  a                                           ; $6a49: $9f
	dec  c                                           ; $6a4a: $0d
	xor  h                                           ; $6a4b: $ac
	push af                                          ; $6a4c: $f5
	bit  7, l                                        ; $6a4d: $cb $7d
	and  c                                           ; $6a4f: $a1
	ld   [bc], a                                     ; $6a50: $02
	rra                                              ; $6a51: $1f
	ld   h, [hl]                                     ; $6a52: $66
	sbc  c                                           ; $6a53: $99
	inc  bc                                          ; $6a54: $03
	ld   d, b                                        ; $6a55: $50
	ld   [bc], a                                     ; $6a56: $02
	ld   a, h                                        ; $6a57: $7c
	ld   [bc], a                                     ; $6a58: $02
	or   [hl]                                        ; $6a59: $b6
	ld   e, d                                        ; $6a5a: $5a
	dec  c                                           ; $6a5b: $0d
	inc  b                                           ; $6a5c: $04
	ld   c, $04                                      ; $6a5d: $0e $04
	and  h                                           ; $6a5f: $a4
	sbc  d                                           ; $6a60: $9a
	ld   h, a                                        ; $6a61: $67
	sbc  c                                           ; $6a62: $99
	ld   [bc], a                                     ; $6a63: $02
	or   a                                           ; $6a64: $b7
	ld   [bc], a                                     ; $6a65: $02
	sub  d                                           ; $6a66: $92
	ld   a, b                                        ; $6a67: $78
	and  c                                           ; $6a68: $a1
	sub  d                                           ; $6a69: $92
	sbc  a                                           ; $6a6a: $9f
	dec  c                                           ; $6a6b: $0d
	nop                                              ; $6a6c: $00
	ld   a, [bc]                                     ; $6a6d: $0a
	ld   b, $41                                      ; $6a6e: $06 $41
	ld   [bc], a                                     ; $6a70: $02
	rrca                                             ; $6a71: $0f
	nop                                              ; $6a72: $00
	ld   bc, $0201                                   ; $6a73: $01 $01 $02
	ei                                               ; $6a76: $fb
	inc  b                                           ; $6a77: $04
	sub  e                                           ; $6a78: $93
	ld   a, h                                        ; $6a79: $7c
	inc  b                                           ; $6a7a: $04
	dec  l                                           ; $6a7b: $2d
	inc  b                                           ; $6a7c: $04
	ldh  a, [c]                                      ; $6a7d: $f2
	ld   [bc], a                                     ; $6a7e: $02
	sub  a                                           ; $6a7f: $97
	ld   a, b                                        ; $6a80: $78
	and  c                                           ; $6a81: $a1
	ld   e, c                                        ; $6a82: $59
	sub  b                                           ; $6a83: $90
	dec  c                                           ; $6a84: $0d
	ld   e, b                                        ; $6a85: $58
	sub  b                                           ; $6a86: $90
	ld   h, l                                        ; $6a87: $65
	sbc  e                                           ; $6a88: $9b
	ld   d, d                                        ; $6a89: $52
	ld   [hl], l                                     ; $6a8a: $75
	ld   h, a                                        ; $6a8b: $67
	sub  [hl]                                        ; $6a8c: $96
	ld   a, e                                        ; $6a8d: $7b
	sbc  a                                           ; $6a8e: $9f
	dec  c                                           ; $6a8f: $0d
	nop                                              ; $6a90: $00
	ld   a, [bc]                                     ; $6a91: $0a
	inc  e                                           ; $6a92: $1c
	dec  b                                           ; $6a93: $05
	rlca                                             ; $6a94: $07
	rlca                                             ; $6a95: $07
	dec  e                                           ; $6a96: $1d
	ld   b, b                                        ; $6a97: $40
	dec  d                                           ; $6a98: $15
	inc  bc                                          ; $6a99: $03
	dec  d                                           ; $6a9a: $15
	ld   bc, $2902                                   ; $6a9b: $01 $02 $29
	nop                                              ; $6a9e: $00
	ld   bc, $2d04                                   ; $6a9f: $01 $04 $2d
	inc  b                                           ; $6aa2: $04
	ldh  a, [c]                                      ; $6aa3: $f2
	ld   [bc], a                                     ; $6aa4: $02
	sub  a                                           ; $6aa5: $97
	ld   sp, hl                                      ; $6aa6: $f9
	db   $10                                         ; $6aa7: $10
	ld   a, b                                        ; $6aa8: $78
	and  c                                           ; $6aa9: $a1
	sub  d                                           ; $6aaa: $92
	ld   l, e                                        ; $6aab: $6b
	sbc  d                                           ; $6aac: $9a
	ld   sp, hl                                      ; $6aad: $f9
	dec  c                                           ; $6aae: $0d
	ld   l, e                                        ; $6aaf: $6b
	and  c                                           ; $6ab0: $a1
	ld   a, b                                        ; $6ab1: $78
	sub  b                                           ; $6ab2: $90
	and  c                                           ; $6ab3: $a1
	sbc  [hl]                                        ; $6ab4: $9e
	ld   d, b                                        ; $6ab5: $50
	sbc  c                                           ; $6ab6: $99
	ld   e, c                                        ; $6ab7: $59
	ld   d, d                                        ; $6ab8: $52
	ld   a, b                                        ; $6ab9: $78
	sbc  a                                           ; $6aba: $9f
	dec  c                                           ; $6abb: $0d
	inc  b                                           ; $6abc: $04
	dec  hl                                          ; $6abd: $2b
	ld   [hl], c                                     ; $6abe: $71
	ld   l, l                                        ; $6abf: $6d
	ld   e, c                                        ; $6ac0: $59
	add  h                                           ; $6ac1: $84
	sbc  b                                           ; $6ac2: $98
	ld   a, l                                        ; $6ac3: $7d
	and  e                                           ; $6ac4: $a3
	xor  h                                           ; $6ac5: $ac
	push af                                          ; $6ac6: $f5
	ld   [hl], l                                     ; $6ac7: $75
	sbc  a                                           ; $6ac8: $9f
	dec  c                                           ; $6ac9: $0d
	nop                                              ; $6aca: $00
	ld   a, [bc]                                     ; $6acb: $0a
	rrca                                             ; $6acc: $0f
	nop                                              ; $6acd: $00
	ld   bc, $0401                                   ; $6ace: $01 $01 $04
	ld   c, e                                        ; $6ad1: $4b
	inc  b                                           ; $6ad2: $04
	ldh  a, [c]                                      ; $6ad3: $f2
	ld   [bc], a                                     ; $6ad4: $02
	sub  a                                           ; $6ad5: $97
	ld   [hl], c                                     ; $6ad6: $71
	ld   [hl], h                                     ; $6ad7: $74
	ld   a, b                                        ; $6ad8: $78
	and  c                                           ; $6ad9: $a1
	ld   [hl], l                                     ; $6ada: $75
	ld   h, a                                        ; $6adb: $67
	ld   e, c                                        ; $6adc: $59
	ld   sp, hl                                      ; $6add: $f9
	dec  c                                           ; $6ade: $0d
	nop                                              ; $6adf: $00
	ld   a, [bc]                                     ; $6ae0: $0a
	inc  e                                           ; $6ae1: $1c
	dec  b                                           ; $6ae2: $05
	nop                                              ; $6ae3: $00
	nop                                              ; $6ae4: $00
	ld   bc, $4b04                                   ; $6ae5: $01 $04 $4b
	inc  b                                           ; $6ae8: $04
	ldh  a, [c]                                      ; $6ae9: $f2
	ld   [bc], a                                     ; $6aea: $02
	sub  a                                           ; $6aeb: $97
	ld   [hl], c                                     ; $6aec: $71
	ld   l, a                                        ; $6aed: $6f
	sub  e                                           ; $6aee: $93
	ei                                               ; $6aef: $fb
	ld   a, h                                        ; $6af0: $7c
	ld   a, l                                        ; $6af1: $7d
	sbc  [hl]                                        ; $6af2: $9e
	dec  c                                           ; $6af3: $0d
	inc  bc                                          ; $6af4: $03
	ld   d, b                                        ; $6af5: $50
	ld   [bc], a                                     ; $6af6: $02
	ld   a, h                                        ; $6af7: $7c
	ld   [bc], a                                     ; $6af8: $02
	or   [hl]                                        ; $6af9: $b6
	ld   l, a                                        ; $6afa: $6f
	sub  e                                           ; $6afb: $93
	ei                                               ; $6afc: $fb
	ld   [bc], a                                     ; $6afd: $02
	daa                                              ; $6afe: $27
	ld   e, d                                        ; $6aff: $5a
	ld   [bc], a                                     ; $6b00: $02
	or   a                                           ; $6b01: $b7
	inc  b                                           ; $6b02: $04
	jp   hl                                          ; $6b03: $e9


	ld   h, a                                        ; $6b04: $67
	sbc  c                                           ; $6b05: $99
	dec  c                                           ; $6b06: $0d
	dec  b                                           ; $6b07: $05
	jr   nz, jr_04b_6b82                             ; $6b08: $20 $78

	and  c                                           ; $6b0a: $a1
	sub  d                                           ; $6b0b: $92
	sbc  a                                           ; $6b0c: $9f
	dec  c                                           ; $6b0d: $0d
	nop                                              ; $6b0e: $00
	ld   a, [bc]                                     ; $6b0f: $0a
	ld   bc, $7889                                   ; $6b10: $01 $89 $78
	sbc  [hl]                                        ; $6b13: $9e
	and  a                                           ; $6b14: $a7
	jp   nz, $9504                                   ; $6b15: $c2 $04 $95

	ld   [bc], a                                     ; $6b18: $02
	ld   hl, $0479                                   ; $6b19: $21 $79 $04
	jp   Jump_04b_7471                               ; $6b1c: $c3 $71 $74


	dec  c                                           ; $6b1f: $0d
	inc  b                                           ; $6b20: $04
	inc  c                                           ; $6b21: $0c
	inc  b                                           ; $6b22: $04
	adc  a                                           ; $6b23: $8f
	inc  b                                           ; $6b24: $04
	ld   de, $598e                                   ; $6b25: $11 $8e $59
	sub  a                                           ; $6b28: $97
	sbc  a                                           ; $6b29: $9f
	dec  c                                           ; $6b2a: $0d
	adc  h                                           ; $6b2b: $8c
	ld   l, l                                        ; $6b2c: $6d
	ld   a, b                                        ; $6b2d: $78
	sbc  a                                           ; $6b2e: $9f
	dec  c                                           ; $6b2f: $0d
	nop                                              ; $6b30: $00
	ld   a, [bc]                                     ; $6b31: $0a
	dec  c                                           ; $6b32: $0d
	nop                                              ; $6b33: $00
	nop                                              ; $6b34: $00
	rrca                                             ; $6b35: $0f
	nop                                              ; $6b36: $00
	ld   bc, $1e09                                   ; $6b37: $01 $09 $1e
	nop                                              ; $6b3a: $00
	rrca                                             ; $6b3b: $0f
	nop                                              ; $6b3c: $00
	ld   bc, $0201                                   ; $6b3d: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b40: $cf
	dec  b                                           ; $6b41: $05
	ld   a, [de]                                     ; $6b42: $1a
	ld   h, e                                        ; $6b43: $63
	and  c                                           ; $6b44: $a1
	ld   a, l                                        ; $6b45: $7d
	inc  b                                           ; $6b46: $04
	ld   c, c                                        ; $6b47: $49
	ld   a, h                                        ; $6b48: $7c
	inc  b                                           ; $6b49: $04
	db   $ec                                         ; $6b4a: $ec
	ld   [hl], l                                     ; $6b4b: $75
	ld   h, a                                        ; $6b4c: $67
	ld   e, c                                        ; $6b4d: $59
	ld   sp, hl                                      ; $6b4e: $f9
	dec  c                                           ; $6b4f: $0d
	nop                                              ; $6b50: $00
	ld   a, [bc]                                     ; $6b51: $0a
	rrca                                             ; $6b52: $0f
	dec  b                                           ; $6b53: $05
	nop                                              ; $6b54: $00
	ld   bc, $f402                                   ; $6b55: $01 $02 $f4
	ld   [bc], a                                     ; $6b58: $02
	ld   a, h                                        ; $6b59: $7c
	ld   [bc], a                                     ; $6b5a: $02
	ldh  a, [c]                                      ; $6b5b: $f2
	sub  d                                           ; $6b5c: $92
	dec  c                                           ; $6b5d: $0d
	nop                                              ; $6b5e: $00
	ld   a, [bc]                                     ; $6b5f: $0a
	add  hl, de                                      ; $6b60: $19
	dec  b                                           ; $6b61: $05
	inc  bc                                          ; $6b62: $03
	xor  h                                           ; $6b63: $ac
	call nz, Call_04b_7cd2                           ; $6b64: $c4 $d2 $7c
	ld   d, b                                        ; $6b67: $50
	sbc  d                                           ; $6b68: $9a
	ld   [hl], l                                     ; $6b69: $75
	ld   h, a                                        ; $6b6a: $67
	ld   a, e                                        ; $6b6b: $7b
	nop                                              ; $6b6c: $00
	nop                                              ; $6b6d: $00
	ld   [bc], a                                     ; $6b6e: $02
	ld   a, h                                        ; $6b6f: $7c
	ld   [bc], a                                     ; $6b70: $02
	or   [hl]                                        ; $6b71: $b6
	ld   a, h                                        ; $6b72: $7c
	ld   e, b                                        ; $6b73: $58
	sub  d                                           ; $6b74: $92
	ld   h, [hl]                                     ; $6b75: $66
	ld   [hl], l                                     ; $6b76: $75
	ld   h, a                                        ; $6b77: $67
	ld   e, c                                        ; $6b78: $59
	ld   sp, hl                                      ; $6b79: $f9
	nop                                              ; $6b7a: $00
	ld   bc, $c0d7                                   ; $6b7b: $01 $d7 $c0
	ld   [hl], l                                     ; $6b7e: $75
	ld   h, a                                        ; $6b7f: $67
	ld   a, e                                        ; $6b80: $7b
	nop                                              ; $6b81: $00

jr_04b_6b82:
	ld   [bc], a                                     ; $6b82: $02
	rlca                                             ; $6b83: $07
	jp   nc, $0202                                   ; $6b84: $d2 $02 $02

	inc  bc                                          ; $6b87: $03
	ld   bc, $2000                                   ; $6b88: $01 $00 $20
	nop                                              ; $6b8b: $00
	rlca                                             ; $6b8c: $07
	ld   [hl], $03                                   ; $6b8d: $36 $03
	ld   [bc], a                                     ; $6b8f: $02
	inc  bc                                          ; $6b90: $03
	ld   bc, $2001                                   ; $6b91: $01 $01 $20
	nop                                              ; $6b94: $00
	rlca                                             ; $6b95: $07
	adc  b                                           ; $6b96: $88
	inc  bc                                          ; $6b97: $03
	ld   [bc], a                                     ; $6b98: $02
	inc  bc                                          ; $6b99: $03
	ld   bc, $2002                                   ; $6b9a: $01 $02 $20
	nop                                              ; $6b9d: $00
	ld   b, $ce                                      ; $6b9e: $06 $ce
	inc  bc                                          ; $6ba0: $03
	rrca                                             ; $6ba1: $0f
	nop                                              ; $6ba2: $00
	ld   bc, $0201                                   ; $6ba3: $01 $01 $02
	db   $f4                                         ; $6ba6: $f4
	ld   [bc], a                                     ; $6ba7: $02
	ld   a, h                                        ; $6ba8: $7c
	ld   [bc], a                                     ; $6ba9: $02
	ldh  a, [c]                                      ; $6baa: $f2
	ld   [hl], c                                     ; $6bab: $71
	ld   [hl], h                                     ; $6bac: $74
	ld   d, d                                        ; $6bad: $52
	ld   d, h                                        ; $6bae: $54
	halt                                             ; $6baf: $76
	rst  $38                                         ; $6bb0: $ff
	dec  c                                           ; $6bb1: $0d
	xor  h                                           ; $6bb2: $ac
	call nz, Call_04b_7cd2                           ; $6bb3: $c4 $d2 $7c
	ld   d, b                                        ; $6bb6: $50
	sbc  d                                           ; $6bb7: $9a
	ld   [hl], l                                     ; $6bb8: $75
	ld   h, a                                        ; $6bb9: $67
	sub  [hl]                                        ; $6bba: $96
	ld   a, e                                        ; $6bbb: $7b
	sbc  a                                           ; $6bbc: $9f
	dec  c                                           ; $6bbd: $0d
	nop                                              ; $6bbe: $00
	ld   a, [bc]                                     ; $6bbf: $0a
	inc  e                                           ; $6bc0: $1c
	dec  b                                           ; $6bc1: $05
	ld   bc, $1d01                                   ; $6bc2: $01 $01 $1d
	ld   b, b                                        ; $6bc5: $40
	dec  d                                           ; $6bc6: $15
	inc  bc                                          ; $6bc7: $03
	dec  d                                           ; $6bc8: $15
	ld   bc, $2802                                   ; $6bc9: $01 $02 $28
	nop                                              ; $6bcc: $00
	ld   bc, $546b                                   ; $6bcd: $01 $6b $54
	sub  d                                           ; $6bd0: $92
	sbc  a                                           ; $6bd1: $9f
	sub  [hl]                                        ; $6bd2: $96
	ei                                               ; $6bd3: $fb
	inc  b                                           ; $6bd4: $04
	dec  hl                                          ; $6bd5: $2b
	ld   [hl], c                                     ; $6bd6: $71
	ld   [hl], h                                     ; $6bd7: $74
	sbc  c                                           ; $6bd8: $99
	sub  d                                           ; $6bd9: $92
	and  c                                           ; $6bda: $a1
	sbc  a                                           ; $6bdb: $9f
	dec  c                                           ; $6bdc: $0d
	inc  bc                                          ; $6bdd: $03
	ld   b, h                                        ; $6bde: $44
	inc  b                                           ; $6bdf: $04
	db   $ec                                         ; $6be0: $ec
	sub  d                                           ; $6be1: $92
	ld   a, b                                        ; $6be2: $78
	ld   d, d                                        ; $6be3: $52
	ld   e, a                                        ; $6be4: $5f
	ld   [hl], a                                     ; $6be5: $77
	sbc  [hl]                                        ; $6be6: $9e
	inc  bc                                          ; $6be7: $03
	add  b                                           ; $6be8: $80
	inc  b                                           ; $6be9: $04
	ld   a, c                                        ; $6bea: $79
	ld   a, l                                        ; $6beb: $7d
	inc  b                                           ; $6bec: $04
	rrca                                             ; $6bed: $0f
	ld   d, d                                        ; $6bee: $52
	dec  c                                           ; $6bef: $0d
	ld   e, c                                        ; $6bf0: $59
	sub  a                                           ; $6bf1: $97
	sbc  [hl]                                        ; $6bf2: $9e
	ld   [bc], a                                     ; $6bf3: $02
	and  c                                           ; $6bf4: $a1
	ld   [bc], a                                     ; $6bf5: $02
	ld   a, e                                        ; $6bf6: $7b
	ld   d, d                                        ; $6bf7: $52
	inc  b                                           ; $6bf8: $04
	ld   b, l                                        ; $6bf9: $45
	sbc  d                                           ; $6bfa: $9a
	and  c                                           ; $6bfb: $a1
	halt                                             ; $6bfc: $76
	ld   a, b                                        ; $6bfd: $78
	sbc  a                                           ; $6bfe: $9f
	dec  c                                           ; $6bff: $0d
	nop                                              ; $6c00: $00
	ld   a, [bc]                                     ; $6c01: $0a
	ld   b, $ce                                      ; $6c02: $06 $ce
	inc  bc                                          ; $6c04: $03
	rrca                                             ; $6c05: $0f
	nop                                              ; $6c06: $00
	ld   bc, $6b01                                   ; $6c07: $01 $01 $6b
	sbc  d                                           ; $6c0a: $9a
	ld   [hl], c                                     ; $6c0b: $71
	ld   [hl], h                                     ; $6c0c: $74
	sbc  [hl]                                        ; $6c0d: $9e
	ld   [bc], a                                     ; $6c0e: $02
	ld   a, h                                        ; $6c0f: $7c
	ld   [bc], a                                     ; $6c10: $02
	or   [hl]                                        ; $6c11: $b6
	ld   a, h                                        ; $6c12: $7c
	ld   e, b                                        ; $6c13: $58
	sub  d                                           ; $6c14: $92
	ld   h, [hl]                                     ; $6c15: $66
	ld   e, c                                        ; $6c16: $59
	dec  c                                           ; $6c17: $0d
	ld   a, b                                        ; $6c18: $78
	and  c                                           ; $6c19: $a1
	ld   e, c                                        ; $6c1a: $59
	ld   [hl], l                                     ; $6c1b: $75
	ld   h, a                                        ; $6c1c: $67
	ld   e, c                                        ; $6c1d: $59
	ld   sp, hl                                      ; $6c1e: $f9
	dec  c                                           ; $6c1f: $0d
	nop                                              ; $6c20: $00
	ld   a, [bc]                                     ; $6c21: $0a
	inc  e                                           ; $6c22: $1c
	dec  b                                           ; $6c23: $05
	inc  bc                                          ; $6c24: $03
	inc  bc                                          ; $6c25: $03
	ld   bc, $a178                                   ; $6c26: $01 $78 $a1
	ld   [hl], l                                     ; $6c29: $75
	sub  d                                           ; $6c2a: $92
	ld   a, e                                        ; $6c2b: $7b
	and  c                                           ; $6c2c: $a1
	ld   a, [$000d]                                  ; $6c2d: $fa $0d $00
	inc  e                                           ; $6c30: $1c
	dec  b                                           ; $6c31: $05
	nop                                              ; $6c32: $00
	nop                                              ; $6c33: $00
	ld   bc, $ffff                                   ; $6c34: $01 $ff $ff
	ld   l, e                                        ; $6c37: $6b
	sub  d                                           ; $6c38: $92
	ld   e, a                                        ; $6c39: $5f
	ld   [hl], a                                     ; $6c3a: $77
	sbc  [hl]                                        ; $6c3b: $9e
	ld   [bc], a                                     ; $6c3c: $02
	sbc  l                                           ; $6c3d: $9d
	sbc  l                                           ; $6c3e: $9d
	sbc  d                                           ; $6c3f: $9a
	ld   [hl], h                                     ; $6c40: $74
	adc  l                                           ; $6c41: $8d
	sbc  d                                           ; $6c42: $9a
	ld   a, [hl]                                     ; $6c43: $7e
	dec  c                                           ; $6c44: $0d
	inc  b                                           ; $6c45: $04
	ld   c, c                                        ; $6c46: $49
	halt                                             ; $6c47: $76
	ld   a, b                                        ; $6c48: $78
	ld   e, l                                        ; $6c49: $5d
	inc  b                                           ; $6c4a: $04
	ld   c, l                                        ; $6c4b: $4d
	ld   [hl], h                                     ; $6c4c: $74
	sbc  c                                           ; $6c4d: $99
	ld   a, b                                        ; $6c4e: $78
	db   $fc                                         ; $6c4f: $fc
	sbc  a                                           ; $6c50: $9f
	dec  c                                           ; $6c51: $0d
	nop                                              ; $6c52: $00
	ld   a, [bc]                                     ; $6c53: $0a
	ld   b, $ce                                      ; $6c54: $06 $ce
	inc  bc                                          ; $6c56: $03
	rrca                                             ; $6c57: $0f
	nop                                              ; $6c58: $00
	ld   bc, $6b01                                   ; $6c59: $01 $01 $6b
	sbc  d                                           ; $6c5c: $9a
	ld   [hl], c                                     ; $6c5d: $71
	ld   [hl], h                                     ; $6c5e: $74
	sbc  [hl]                                        ; $6c5f: $9e
	rst  $10                                         ; $6c60: $d7
	ret  nz                                          ; $6c61: $c0

	ld   a, h                                        ; $6c62: $7c
	inc  b                                           ; $6c63: $04
	db   $ec                                         ; $6c64: $ec
	dec  c                                           ; $6c65: $0d
	ld   [hl], l                                     ; $6c66: $75
	ld   h, a                                        ; $6c67: $67
	sub  [hl]                                        ; $6c68: $96
	ld   a, e                                        ; $6c69: $7b
	sbc  a                                           ; $6c6a: $9f
	dec  c                                           ; $6c6b: $0d
	nop                                              ; $6c6c: $00
	ld   a, [bc]                                     ; $6c6d: $0a
	inc  e                                           ; $6c6e: $1c
	dec  b                                           ; $6c6f: $05
	inc  bc                                          ; $6c70: $03
	inc  bc                                          ; $6c71: $03
	ld   bc, $9a6b                                   ; $6c72: $01 $6b $9a
	ld   a, l                                        ; $6c75: $7d
	sbc  [hl]                                        ; $6c76: $9e
	inc  bc                                          ; $6c77: $03
	ei                                               ; $6c78: $fb
	inc  b                                           ; $6c79: $04
	ld   a, [hl]                                     ; $6c7a: $7e
	ld   [bc], a                                     ; $6c7b: $02
	ld   a, l                                        ; $6c7c: $7d
	sub  d                                           ; $6c7d: $92
	ld   [hl], c                                     ; $6c7e: $71
	dec  c                                           ; $6c7f: $0d
	ld   l, a                                        ; $6c80: $6f
	sub  e                                           ; $6c81: $93
	ei                                               ; $6c82: $fb
	ld   a, e                                        ; $6c83: $7b
	and  c                                           ; $6c84: $a1
	sbc  a                                           ; $6c85: $9f
	dec  c                                           ; $6c86: $0d
	and  a                                           ; $6c87: $a7
	jp   nz, $9e7d                                   ; $6c88: $c2 $7d $9e

	xor  h                                           ; $6c8b: $ac
	call nz, Call_04b_7cd2                           ; $6c8c: $c4 $d2 $7c
	ld   [bc], a                                     ; $6c8f: $02
	db   $f4                                         ; $6c90: $f4
	ld   [bc], a                                     ; $6c91: $02
	ld   a, h                                        ; $6c92: $7c
	ld   [bc], a                                     ; $6c93: $02
	ldh  a, [c]                                      ; $6c94: $f2
	ld   [hl], c                                     ; $6c95: $71
	ld   a, [$000d]                                  ; $6c96: $fa $0d $00
	ld   a, [bc]                                     ; $6c99: $0a
	ld   b, $ce                                      ; $6c9a: $06 $ce
	inc  bc                                          ; $6c9c: $03
	inc  e                                           ; $6c9d: $1c
	dec  b                                           ; $6c9e: $05
	nop                                              ; $6c9f: $00
	nop                                              ; $6ca0: $00
	ld   bc, $a502                                   ; $6ca1: $01 $02 $a5
	inc  b                                           ; $6ca4: $04
	add  hl, hl                                      ; $6ca5: $29
	ld   a, h                                        ; $6ca6: $7c
	ld   [bc], a                                     ; $6ca7: $02
	sbc  c                                           ; $6ca8: $99
	ld   [bc], a                                     ; $6ca9: $02
	rra                                              ; $6caa: $1f
	ld   [hl], l                                     ; $6cab: $75
	ld   a, l                                        ; $6cac: $7d
	dec  c                                           ; $6cad: $0d
	ld   h, a                                        ; $6cae: $67
	adc  l                                           ; $6caf: $8d
	sbc  d                                           ; $6cb0: $9a
	ld   a, l                                        ; $6cb1: $7d
	and  c                                           ; $6cb2: $a1
	halt                                             ; $6cb3: $76
	xor  h                                           ; $6cb4: $ac
	push af                                          ; $6cb5: $f5
	bit  7, l                                        ; $6cb6: $cb $7d
	and  c                                           ; $6cb8: $a1
	ld   e, d                                        ; $6cb9: $5a
	dec  c                                           ; $6cba: $0d
	db   $e3                                         ; $6cbb: $e3
	and  l                                           ; $6cbc: $a5
	push af                                          ; $6cbd: $f5
	ld   a, b                                        ; $6cbe: $78
	and  c                                           ; $6cbf: $a1
	sub  d                                           ; $6cc0: $92
	ld   [hl], l                                     ; $6cc1: $75
	sbc  a                                           ; $6cc2: $9f
	dec  c                                           ; $6cc3: $0d
	nop                                              ; $6cc4: $00
	ld   a, [bc]                                     ; $6cc5: $0a
	ld   bc, $7889                                   ; $6cc6: $01 $89 $78
	sbc  [hl]                                        ; $6cc9: $9e
	and  a                                           ; $6cca: $a7
	jp   nz, $9504                                   ; $6ccb: $c2 $04 $95

	ld   [bc], a                                     ; $6cce: $02
	ld   hl, $0479                                   ; $6ccf: $21 $79 $04
	jp   Jump_04b_7471                               ; $6cd2: $c3 $71 $74


	dec  c                                           ; $6cd5: $0d
	inc  b                                           ; $6cd6: $04
	inc  c                                           ; $6cd7: $0c
	inc  b                                           ; $6cd8: $04
	adc  a                                           ; $6cd9: $8f
	inc  b                                           ; $6cda: $04
	ld   de, $598e                                   ; $6cdb: $11 $8e $59
	sub  a                                           ; $6cde: $97
	sbc  a                                           ; $6cdf: $9f
	dec  c                                           ; $6ce0: $0d
	adc  h                                           ; $6ce1: $8c
	ld   l, l                                        ; $6ce2: $6d
	ld   a, b                                        ; $6ce3: $78
	sbc  a                                           ; $6ce4: $9f
	dec  c                                           ; $6ce5: $0d
	nop                                              ; $6ce6: $00
	ld   a, [bc]                                     ; $6ce7: $0a
	dec  c                                           ; $6ce8: $0d
	nop                                              ; $6ce9: $00
	nop                                              ; $6cea: $00
	rrca                                             ; $6ceb: $0f
	nop                                              ; $6cec: $00
	ld   bc, $1e09                                   ; $6ced: $01 $09 $1e
	nop                                              ; $6cf0: $00
	rrca                                             ; $6cf1: $0f
	nop                                              ; $6cf2: $00
	ld   bc, $0401                                   ; $6cf3: $01 $01 $04
	adc  [hl]                                        ; $6cf6: $8e
	inc  b                                           ; $6cf7: $04
	inc  c                                           ; $6cf8: $0c
	ld   [hl], c                                     ; $6cf9: $71
	ld   [hl], h                                     ; $6cfa: $74
	dec  b                                           ; $6cfb: $05
	inc  de                                          ; $6cfc: $13
	ld   h, l                                        ; $6cfd: $65
	ld   d, d                                        ; $6cfe: $52
	ld   [hl], l                                     ; $6cff: $75
	ld   h, a                                        ; $6d00: $67
	ld   e, c                                        ; $6d01: $59
	ld   sp, hl                                      ; $6d02: $f9
	dec  c                                           ; $6d03: $0d
	nop                                              ; $6d04: $00
	ld   a, [bc]                                     ; $6d05: $0a
	inc  e                                           ; $6d06: $1c
	dec  b                                           ; $6d07: $05
	ld   [bc], a                                     ; $6d08: $02
	ld   [bc], a                                     ; $6d09: $02
	ld   bc, $4e02                                   ; $6d0a: $01 $02 $4e
	halt                                             ; $6d0d: $76
	ld   e, c                                        ; $6d0e: $59
	sbc  [hl]                                        ; $6d0f: $9e
	ld   e, b                                        ; $6d10: $58
	ld   [hl], a                                     ; $6d11: $77
	sbc  b                                           ; $6d12: $98
	ld   a, l                                        ; $6d13: $7d
	dec  c                                           ; $6d14: $0d
	inc  bc                                          ; $6d15: $03
	sub  h                                           ; $6d16: $94
	ld   [bc], a                                     ; $6d17: $02
	ld   hl, sp+$78                                  ; $6d18: $f8 $78
	ld   d, d                                        ; $6d1a: $52
	ld   e, a                                        ; $6d1b: $5f
	ld   [hl], a                                     ; $6d1c: $77
	rst  $38                                         ; $6d1d: $ff
	rst  $38                                         ; $6d1e: $ff
	dec  c                                           ; $6d1f: $0d
	nop                                              ; $6d20: $00
	ld   a, [bc]                                     ; $6d21: $0a
	inc  e                                           ; $6d22: $1c
	dec  b                                           ; $6d23: $05
	ld   bc, $0101                                   ; $6d24: $01 $01 $01
	ld   [bc], a                                     ; $6d27: $02
	rra                                              ; $6d28: $1f
	inc  bc                                          ; $6d29: $03
	add  b                                           ; $6d2a: $80
	ld   a, h                                        ; $6d2b: $7c
	ld   h, l                                        ; $6d2c: $65
	ld   e, c                                        ; $6d2d: $59
	ld   e, a                                        ; $6d2e: $5f
	ld   a, b                                        ; $6d2f: $78
	and  c                                           ; $6d30: $a1
	ld   e, c                                        ; $6d31: $59
	ld   [hl], l                                     ; $6d32: $75
	dec  c                                           ; $6d33: $0d
	ld   e, b                                        ; $6d34: $58
	ld   [bc], a                                     ; $6d35: $02
	add  c                                           ; $6d36: $81
	ld   h, e                                        ; $6d37: $63
	and  c                                           ; $6d38: $a1
	ld   e, d                                        ; $6d39: $5a
	sub  [hl]                                        ; $6d3a: $96
	sbc  e                                           ; $6d3b: $9b
	ld   h, c                                        ; $6d3c: $61
	and  c                                           ; $6d3d: $a1
	ld   [hl], l                                     ; $6d3e: $75
	dec  c                                           ; $6d3f: $0d
	ld   e, l                                        ; $6d40: $5d
	sbc  d                                           ; $6d41: $9a
	sbc  c                                           ; $6d42: $99
	ld   a, h                                        ; $6d43: $7c
	ld   e, d                                        ; $6d44: $5a
	ld   d, h                                        ; $6d45: $54
	sbc  d                                           ; $6d46: $9a
	ld   h, l                                        ; $6d47: $65
	ld   d, d                                        ; $6d48: $52
	ld   a, b                                        ; $6d49: $78
	sbc  a                                           ; $6d4a: $9f
	dec  c                                           ; $6d4b: $0d
	nop                                              ; $6d4c: $00
	ld   a, [bc]                                     ; $6d4d: $0a
	rrca                                             ; $6d4e: $0f
	nop                                              ; $6d4f: $00
	ld   bc, $6b01                                   ; $6d50: $01 $01 $6b
	ld   d, h                                        ; $6d53: $54
	ld   a, b                                        ; $6d54: $78
	and  c                                           ; $6d55: $a1
	ld   [hl], l                                     ; $6d56: $75
	ld   h, a                                        ; $6d57: $67
	ld   e, c                                        ; $6d58: $59
	sbc  a                                           ; $6d59: $9f
	dec  c                                           ; $6d5a: $0d

Jump_04b_6d5b:
	ld   [hl], l                                     ; $6d5b: $75
	sub  b                                           ; $6d5c: $90
	sbc  [hl]                                        ; $6d5d: $9e
	ld   l, e                                        ; $6d5e: $6b
	ld   d, h                                        ; $6d5f: $54
	ld   d, d                                        ; $6d60: $52
	ld   d, h                                        ; $6d61: $54
	ld   [bc], a                                     ; $6d62: $02
	rra                                              ; $6d63: $1f
	inc  bc                                          ; $6d64: $03
	add  b                                           ; $6d65: $80
	ld   a, h                                        ; $6d66: $7c
	inc  b                                           ; $6d67: $04
	dec  bc                                          ; $6d68: $0b
	ld   [hl], l                                     ; $6d69: $75
	sub  b                                           ; $6d6a: $90
	dec  c                                           ; $6d6b: $0d
	nop                                              ; $6d6c: $00
	ld   a, [bc]                                     ; $6d6d: $0a
	add  hl, de                                      ; $6d6e: $19
	dec  b                                           ; $6d6f: $05
	inc  bc                                          ; $6d70: $03
	ld   b, $0d                                      ; $6d71: $06 $0d
	inc  b                                           ; $6d73: $04
	ld   e, [hl]                                     ; $6d74: $5e
	inc  bc                                          ; $6d75: $03
	ld   l, c                                        ; $6d76: $69
	ld   [bc], a                                     ; $6d77: $02
	cp   [hl]                                        ; $6d78: $be
	nop                                              ; $6d79: $00
	nop                                              ; $6d7a: $00
	inc  b                                           ; $6d7b: $04
	ld   e, e                                        ; $6d7c: $5b
	inc  bc                                          ; $6d7d: $03
	inc  bc                                          ; $6d7e: $03
	inc  bc                                          ; $6d7f: $03
	ld   l, c                                        ; $6d80: $69
	ld   [bc], a                                     ; $6d81: $02
	cp   [hl]                                        ; $6d82: $be
	nop                                              ; $6d83: $00
	ld   bc, $7003                                   ; $6d84: $01 $03 $70
	inc  b                                           ; $6d87: $04
	adc  h                                           ; $6d88: $8c
	sbc  l                                           ; $6d89: $9d
	sbc  b                                           ; $6d8a: $98
	inc  bc                                          ; $6d8b: $03
	ld   l, c                                        ; $6d8c: $69
	ld   [bc], a                                     ; $6d8d: $02
	cp   [hl]                                        ; $6d8e: $be
	nop                                              ; $6d8f: $00
	ld   [bc], a                                     ; $6d90: $02
	rlca                                             ; $6d91: $07
	ldh  [rDIV], a                                   ; $6d92: $e0 $04
	ld   [bc], a                                     ; $6d94: $02
	inc  bc                                          ; $6d95: $03
	ld   bc, $2000                                   ; $6d96: $01 $00 $20
	nop                                              ; $6d99: $00
	rlca                                             ; $6d9a: $07
	ld   l, h                                        ; $6d9b: $6c
	dec  b                                           ; $6d9c: $05
	ld   [bc], a                                     ; $6d9d: $02
	inc  bc                                          ; $6d9e: $03
	ld   bc, $2001                                   ; $6d9f: $01 $01 $20
	nop                                              ; $6da2: $00
	rlca                                             ; $6da3: $07
	jp   $0205                                       ; $6da4: $c3 $05 $02


	inc  bc                                          ; $6da7: $03
	ld   bc, $2002                                   ; $6da8: $01 $02 $20
	nop                                              ; $6dab: $00
	ld   b, $1b                                      ; $6dac: $06 $1b
	ld   b, $0f                                      ; $6dae: $06 $0f
	nop                                              ; $6db0: $00
	ld   bc, $0601                                   ; $6db1: $01 $01 $06
	dec  c                                           ; $6db4: $0d
	inc  b                                           ; $6db5: $04
	ld   e, [hl]                                     ; $6db6: $5e
	ld   a, b                                        ; $6db7: $78
	and  c                                           ; $6db8: $a1
	ld   e, c                                        ; $6db9: $59
	inc  bc                                          ; $6dba: $03
	ld   l, c                                        ; $6dbb: $69
	ld   [bc], a                                     ; $6dbc: $02
	cp   [hl]                                        ; $6dbd: $be
	ld   a, h                                        ; $6dbe: $7c
	dec  c                                           ; $6dbf: $0d
	ld   [bc], a                                     ; $6dc0: $02
	rra                                              ; $6dc1: $1f
	inc  bc                                          ; $6dc2: $03
	add  b                                           ; $6dc3: $80
	ld   [hl], l                                     ; $6dc4: $75
	ld   h, a                                        ; $6dc5: $67
	sub  [hl]                                        ; $6dc6: $96
	ld   a, e                                        ; $6dc7: $7b
	sbc  a                                           ; $6dc8: $9f
	dec  c                                           ; $6dc9: $0d
	ld   b, $05                                      ; $6dca: $06 $05
	ld   d, [hl]                                     ; $6dcc: $56
	sbc  c                                           ; $6dcd: $99
	ld   a, b                                        ; $6dce: $78
	db   $fc                                         ; $6dcf: $fc
	sbc  a                                           ; $6dd0: $9f
	dec  c                                           ; $6dd1: $0d
	nop                                              ; $6dd2: $00
	ld   a, [bc]                                     ; $6dd3: $0a
	inc  e                                           ; $6dd4: $1c
	dec  b                                           ; $6dd5: $05
	dec  b                                           ; $6dd6: $05
	dec  b                                           ; $6dd7: $05
	dec  e                                           ; $6dd8: $1d
	ld   b, b                                        ; $6dd9: $40
	dec  d                                           ; $6dda: $15
	inc  bc                                          ; $6ddb: $03
	dec  d                                           ; $6ddc: $15
	ld   bc, $2803                                   ; $6ddd: $01 $03 $28
	nop                                              ; $6de0: $00
	ld   bc, $926b                                   ; $6de1: $01 $6b $92
	sbc  e                                           ; $6de4: $9b
	ld   a, [$750d]                                  ; $6de5: $fa $0d $75
	sub  b                                           ; $6de8: $90
	ld   a, b                                        ; $6de9: $78
	sbc  [hl]                                        ; $6dea: $9e
	inc  b                                           ; $6deb: $04
	adc  [hl]                                        ; $6dec: $8e
	inc  b                                           ; $6ded: $04
	inc  c                                           ; $6dee: $0c
	ld   [hl], l                                     ; $6def: $75
	ld   a, h                                        ; $6df0: $7c
	ld   b, $0d                                      ; $6df1: $06 $0d
	inc  b                                           ; $6df3: $04
	ld   e, [hl]                                     ; $6df4: $5e
	ld   a, l                                        ; $6df5: $7d
	dec  c                                           ; $6df6: $0d
	adc  [hl]                                        ; $6df7: $8e
	ld   l, b                                        ; $6df8: $68
	ld   e, c                                        ; $6df9: $59
	ld   h, l                                        ; $6dfa: $65
	ld   d, d                                        ; $6dfb: $52
	ld   a, e                                        ; $6dfc: $7b
	and  c                                           ; $6dfd: $a1
	ld   [hl], l                                     ; $6dfe: $75
	db   $fc                                         ; $6dff: $fc
	sbc  a                                           ; $6e00: $9f
	dec  c                                           ; $6e01: $0d
	nop                                              ; $6e02: $00
	ld   a, [bc]                                     ; $6e03: $0a
	ld   bc, $8105                                   ; $6e04: $01 $05 $81
	ld   b, $58                                      ; $6e07: $06 $58
	ld   a, h                                        ; $6e09: $7c
	dec  b                                           ; $6e0a: $05
	ld   h, [hl]                                     ; $6e0b: $66
	and  b                                           ; $6e0c: $a0
	ld   [bc], a                                     ; $6e0d: $02
	xor  c                                           ; $6e0e: $a9
	ld   [bc], a                                     ; $6e0f: $02
	inc  d                                           ; $6e10: $14
	ld   d, [hl]                                     ; $6e11: $56
	ld   l, l                                        ; $6e12: $6d
	sub  a                                           ; $6e13: $97
	and  e                                           ; $6e14: $a3
	and  a                                           ; $6e15: $a7
	ret                                              ; $6e16: $c9


	sbc  a                                           ; $6e17: $9f
	dec  c                                           ; $6e18: $0d
	jp   z, $acc4                                    ; $6e19: $ca $c4 $ac

	ei                                               ; $6e1c: $fb
	push af                                          ; $6e1d: $f5
	sbc  a                                           ; $6e1e: $9f
	ld   [hl], l                                     ; $6e1f: $75
	sub  b                                           ; $6e20: $90
	sbc  [hl]                                        ; $6e21: $9e
	ld   l, e                                        ; $6e22: $6b
	ld   a, h                                        ; $6e23: $7c
	inc  b                                           ; $6e24: $04
	sbc  [hl]                                        ; $6e25: $9e
	dec  c                                           ; $6e26: $0d
	inc  bc                                          ; $6e27: $03
	ld   [de], a                                     ; $6e28: $12
	ld   [bc], a                                     ; $6e29: $02
	ld   c, h                                        ; $6e2a: $4c
	ld   h, l                                        ; $6e2b: $65
	ld   l, l                                        ; $6e2c: $6d
	sub  a                                           ; $6e2d: $97
	inc  bc                                          ; $6e2e: $03
	ld   l, c                                        ; $6e2f: $69
	ld   [bc], a                                     ; $6e30: $02
	cp   [hl]                                        ; $6e31: $be
	sub  d                                           ; $6e32: $92
	ld   a, b                                        ; $6e33: $78
	sbc  a                                           ; $6e34: $9f
	dec  c                                           ; $6e35: $0d
	nop                                              ; $6e36: $00
	ld   a, [bc]                                     ; $6e37: $0a
	ld   b, $48                                      ; $6e38: $06 $48
	ld   b, $0f                                      ; $6e3a: $06 $0f
	nop                                              ; $6e3c: $00
	ld   bc, $0401                                   ; $6e3d: $01 $01 $04
	ld   e, e                                        ; $6e40: $5b
	inc  bc                                          ; $6e41: $03
	inc  bc                                          ; $6e42: $03
	ld   a, b                                        ; $6e43: $78
	and  c                                           ; $6e44: $a1
	ld   e, c                                        ; $6e45: $59
	inc  bc                                          ; $6e46: $03
	ld   l, c                                        ; $6e47: $69
	ld   [bc], a                                     ; $6e48: $02
	cp   [hl]                                        ; $6e49: $be
	ld   a, c                                        ; $6e4a: $79
	dec  c                                           ; $6e4b: $0d
	rst  $28                                         ; $6e4c: $ef
	rst  JumpTable                                         ; $6e4d: $df
	push af                                          ; $6e4e: $f5
	jp   nz, $b0c4                                   ; $6e4f: $c2 $c4 $b0

	ld   a, b                                        ; $6e52: $78
	ld   [bc], a                                     ; $6e53: $02
	rra                                              ; $6e54: $1f
	inc  bc                                          ; $6e55: $03
	add  b                                           ; $6e56: $80
	dec  c                                           ; $6e57: $0d
	ld   [hl], l                                     ; $6e58: $75
	ld   h, a                                        ; $6e59: $67
	sub  [hl]                                        ; $6e5a: $96
	ld   a, e                                        ; $6e5b: $7b
	sbc  a                                           ; $6e5c: $9f
	dec  c                                           ; $6e5d: $0d
	nop                                              ; $6e5e: $00
	ld   a, [bc]                                     ; $6e5f: $0a
	inc  e                                           ; $6e60: $1c
	dec  b                                           ; $6e61: $05
	ld   [bc], a                                     ; $6e62: $02
	ld   [bc], a                                     ; $6e63: $02
	dec  e                                           ; $6e64: $1d
	ld   b, b                                        ; $6e65: $40
	dec  d                                           ; $6e66: $15
	inc  bc                                          ; $6e67: $03
	dec  d                                           ; $6e68: $15
	ld   bc, $2901                                   ; $6e69: $01 $01 $29
	nop                                              ; $6e6c: $00
	ld   bc, $786b                                   ; $6e6d: $01 $6b $78
	sub  d                                           ; $6e70: $92
	db   $fc                                         ; $6e71: $fc
	sbc  a                                           ; $6e72: $9f
	dec  c                                           ; $6e73: $0d
	ld   [hl], l                                     ; $6e74: $75
	sub  b                                           ; $6e75: $90
	sbc  [hl]                                        ; $6e76: $9e
	ldh  [c], a                                      ; $6e77: $e2
	ei                                               ; $6e78: $fb
	jp   z, Jump_04b_507d                            ; $6e79: $ca $7d $50

	sbc  c                                           ; $6e7c: $99
	ld   e, a                                        ; $6e7d: $5f
	ld   [hl], a                                     ; $6e7e: $77
	dec  c                                           ; $6e7f: $0d
	inc  bc                                          ; $6e80: $03
	adc  $04                                         ; $6e81: $ce $04
	jp   nc, Jump_04b_5992                           ; $6e83: $d2 $92 $59

	sub  a                                           ; $6e86: $97
	ld   a, b                                        ; $6e87: $78
	db   $fc                                         ; $6e88: $fc
	rst  $38                                         ; $6e89: $ff
	rst  $38                                         ; $6e8a: $ff
	sbc  a                                           ; $6e8b: $9f
	dec  c                                           ; $6e8c: $0d
	nop                                              ; $6e8d: $00
	ld   a, [bc]                                     ; $6e8e: $0a
	ld   b, $48                                      ; $6e8f: $06 $48
	ld   b, $0f                                      ; $6e91: $06 $0f
	nop                                              ; $6e93: $00
	ld   bc, $0301                                   ; $6e94: $01 $01 $03
	ld   [hl], b                                     ; $6e97: $70
	inc  b                                           ; $6e98: $04
	adc  h                                           ; $6e99: $8c
	sbc  l                                           ; $6e9a: $9d
	sbc  b                                           ; $6e9b: $98
	ld   a, b                                        ; $6e9c: $78
	and  c                                           ; $6e9d: $a1
	ld   e, c                                        ; $6e9e: $59
	sbc  [hl]                                        ; $6e9f: $9e
	dec  c                                           ; $6ea0: $0d
	ld   e, c                                        ; $6ea1: $59
	sbc  d                                           ; $6ea2: $9a
	ld   d, d                                        ; $6ea3: $52
	ld   [hl], l                                     ; $6ea4: $75
	inc  bc                                          ; $6ea5: $03
	ld   l, c                                        ; $6ea6: $69
	ld   [bc], a                                     ; $6ea7: $02
	cp   [hl]                                        ; $6ea8: $be
	ld   a, c                                        ; $6ea9: $79
	xor  h                                           ; $6eaa: $ac
	call nz, $a5b4                                   ; $6eab: $c4 $b4 $a5
	and  l                                           ; $6eae: $a5
	dec  c                                           ; $6eaf: $0d
	ld   [hl], l                                     ; $6eb0: $75
	ld   h, a                                        ; $6eb1: $67
	sub  [hl]                                        ; $6eb2: $96
	ld   a, e                                        ; $6eb3: $7b
	sbc  a                                           ; $6eb4: $9f
	dec  c                                           ; $6eb5: $0d
	nop                                              ; $6eb6: $00
	ld   a, [bc]                                     ; $6eb7: $0a
	inc  e                                           ; $6eb8: $1c
	dec  b                                           ; $6eb9: $05
	ld   b, $06                                      ; $6eba: $06 $06
	dec  e                                           ; $6ebc: $1d
	ld   b, b                                        ; $6ebd: $40
	dec  d                                           ; $6ebe: $15
	inc  bc                                          ; $6ebf: $03
	dec  d                                           ; $6ec0: $15
	ld   bc, $2901                                   ; $6ec1: $01 $01 $29
	nop                                              ; $6ec4: $00
	ld   bc, $fc54                                   ; $6ec5: $01 $54 $fc
	and  c                                           ; $6ec8: $a1
	rst  $38                                         ; $6ec9: $ff
	rst  $38                                         ; $6eca: $ff
	sbc  a                                           ; $6ecb: $9f
	dec  c                                           ; $6ecc: $0d
	ld   l, e                                        ; $6ecd: $6b
	sbc  d                                           ; $6ece: $9a
	ld   a, l                                        ; $6ecf: $7d
	sbc  [hl]                                        ; $6ed0: $9e
	inc  b                                           ; $6ed1: $04
	ld   e, [hl]                                     ; $6ed2: $5e
	inc  b                                           ; $6ed3: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ed4: $cf
	halt                                             ; $6ed5: $76
	ld   [bc], a                                     ; $6ed6: $02
	ld   c, d                                        ; $6ed7: $4a
	ld   [bc], a                                     ; $6ed8: $02
	ld   c, e                                        ; $6ed9: $4b
	ld   a, b                                        ; $6eda: $78
	ld   d, d                                        ; $6edb: $52
	dec  c                                           ; $6edc: $0d
	ld   e, c                                        ; $6edd: $59
	sub  a                                           ; $6ede: $97
	ld   a, b                                        ; $6edf: $78
	db   $fc                                         ; $6ee0: $fc
	rst  $38                                         ; $6ee1: $ff
	rst  $38                                         ; $6ee2: $ff
	sbc  a                                           ; $6ee3: $9f
	dec  c                                           ; $6ee4: $0d
	nop                                              ; $6ee5: $00
	ld   a, [bc]                                     ; $6ee6: $0a
	ld   b, $48                                      ; $6ee7: $06 $48
	ld   b, $0f                                      ; $6ee9: $06 $0f
	nop                                              ; $6eeb: $00
	ld   bc, $ff01                                   ; $6eec: $01 $01 $ff
	rst  $38                                         ; $6eef: $ff
	ld   [hl], a                                     ; $6ef0: $77
	and  c                                           ; $6ef1: $a1
	ld   a, b                                        ; $6ef2: $78
	ld   [bc], a                                     ; $6ef3: $02
	rra                                              ; $6ef4: $1f
	inc  bc                                          ; $6ef5: $03
	add  b                                           ; $6ef6: $80
	ld   e, d                                        ; $6ef7: $5a
	dec  c                                           ; $6ef8: $0d
	ld   d, b                                        ; $6ef9: $50
	sbc  b                                           ; $6efa: $98
	adc  h                                           ; $6efb: $8c
	ld   h, l                                        ; $6efc: $65
	ld   l, l                                        ; $6efd: $6d
	ld   [hl], c                                     ; $6efe: $71
	ld   e, a                                        ; $6eff: $5f
	ld   sp, hl                                      ; $6f00: $f9
	dec  c                                           ; $6f01: $0d
	nop                                              ; $6f02: $00
	ld   a, [bc]                                     ; $6f03: $0a
	inc  e                                           ; $6f04: $1c
	dec  b                                           ; $6f05: $05
	inc  bc                                          ; $6f06: $03
	inc  bc                                          ; $6f07: $03
	ld   bc, $a178                                   ; $6f08: $01 $78 $a1
	ld   h, [hl]                                     ; $6f0b: $66

jr_04b_6f0c:
	sub  c                                           ; $6f0c: $91
	ld   l, e                                        ; $6f0d: $6b
	sbc  b                                           ; $6f0e: $98
	sub  c                                           ; $6f0f: $91
	sbc  a                                           ; $6f10: $9f
	dec  c                                           ; $6f11: $0d
	nop                                              ; $6f12: $00
	ld   a, [bc]                                     ; $6f13: $0a
	ld   b, $48                                      ; $6f14: $06 $48
	ld   b, $1c                                      ; $6f16: $06 $1c
	dec  b                                           ; $6f18: $05
	nop                                              ; $6f19: $00
	nop                                              ; $6f1a: $00
	ld   bc, $7889                                   ; $6f1b: $01 $89 $78
	sbc  [hl]                                        ; $6f1e: $9e
	and  a                                           ; $6f1f: $a7
	jp   nz, $9504                                   ; $6f20: $c2 $04 $95

	ld   [bc], a                                     ; $6f23: $02
	ld   hl, $0479                                   ; $6f24: $21 $79 $04
	jp   Jump_04b_7471                               ; $6f27: $c3 $71 $74


	dec  c                                           ; $6f2a: $0d
	inc  b                                           ; $6f2b: $04
	inc  c                                           ; $6f2c: $0c
	inc  b                                           ; $6f2d: $04
	adc  a                                           ; $6f2e: $8f
	inc  b                                           ; $6f2f: $04
	ld   de, $598e                                   ; $6f30: $11 $8e $59
	sub  a                                           ; $6f33: $97
	sbc  a                                           ; $6f34: $9f
	dec  c                                           ; $6f35: $0d
	adc  h                                           ; $6f36: $8c
	ld   l, l                                        ; $6f37: $6d
	ld   a, b                                        ; $6f38: $78
	sbc  a                                           ; $6f39: $9f
	dec  c                                           ; $6f3a: $0d
	nop                                              ; $6f3b: $00
	ld   a, [bc]                                     ; $6f3c: $0a
	dec  c                                           ; $6f3d: $0d
	nop                                              ; $6f3e: $00
	nop                                              ; $6f3f: $00
	rrca                                             ; $6f40: $0f
	nop                                              ; $6f41: $00
	ld   bc, $1e09                                   ; $6f42: $01 $09 $1e
	nop                                              ; $6f45: $00
	nop                                              ; $6f46: $00
	dec  c                                           ; $6f47: $0d
	ld   [bc], a                                     ; $6f48: $02
	nop                                              ; $6f49: $00
	rrca                                             ; $6f4a: $0f
	nop                                              ; $6f4b: $00
	ld   bc, $0102                                   ; $6f4c: $01 $02 $01
	ld   h, a                                        ; $6f4f: $67
	adc  l                                           ; $6f50: $8d
	sbc  d                                           ; $6f51: $9a
	ld   h, e                                        ; $6f52: $63
	and  c                                           ; $6f53: $a1
	sbc  a                                           ; $6f54: $9f
	dec  c                                           ; $6f55: $0d
	ld   e, b                                        ; $6f56: $58
	ld   a, l                                        ; $6f57: $7d
	sub  [hl]                                        ; $6f58: $96
	ld   d, h                                        ; $6f59: $54
	ld   h, d                                        ; $6f5a: $62
	ld   h, h                                        ; $6f5b: $64
	ld   d, d                                        ; $6f5c: $52
	adc  h                                           ; $6f5d: $8c
	ld   h, a                                        ; $6f5e: $67
	sbc  a                                           ; $6f5f: $9f
	dec  c                                           ; $6f60: $0d
	nop                                              ; $6f61: $00
	ld   a, [bc]                                     ; $6f62: $0a
	ld   bc, $0301                                   ; $6f63: $01 $01 $03
	inc  b                                           ; $6f66: $04
	ld   c, c                                        ; $6f67: $49
	ld   a, h                                        ; $6f68: $7c
	dec  b                                           ; $6f69: $05
	jr   nz, jr_04b_6f0c                             ; $6f6a: $20 $a0

	ld   h, l                                        ; $6f6c: $65
	sub  [hl]                                        ; $6f6d: $96
	ld   d, h                                        ; $6f6e: $54
	ld   e, c                                        ; $6f6f: $59
	ld   a, b                                        ; $6f70: $78
	rst  $38                                         ; $6f71: $ff
	rst  $38                                         ; $6f72: $ff
	ld   bc, $0d04                                   ; $6f73: $01 $04 $0d
	nop                                              ; $6f76: $00
	ld   a, [bc]                                     ; $6f77: $0a
	add  hl, de                                      ; $6f78: $19
	dec  b                                           ; $6f79: $05
	inc  bc                                          ; $6f7a: $03
	inc  bc                                          ; $6f7b: $03
	sub  h                                           ; $6f7c: $94
	inc  b                                           ; $6f7d: $04
	sbc  [hl]                                        ; $6f7e: $9e
	ld   a, h                                        ; $6f7f: $7c
	inc  b                                           ; $6f80: $04
	rst  ToBoot                                         ; $6f81: $c7
	inc  bc                                          ; $6f82: $03
	ld   c, a                                        ; $6f83: $4f
	ld   a, c                                        ; $6f84: $79
	ld   [hl], d                                     ; $6f85: $72
	ld   d, d                                        ; $6f86: $52
	ld   [hl], h                                     ; $6f87: $74
	nop                                              ; $6f88: $00
	nop                                              ; $6f89: $00
	ld   h, a                                        ; $6f8a: $67
	adc  l                                           ; $6f8b: $8d
	sbc  d                                           ; $6f8c: $9a
	and  b                                           ; $6f8d: $a0
	adc  c                                           ; $6f8e: $89
	adc  a                                           ; $6f8f: $8f
	sbc  c                                           ; $6f90: $99
	nop                                              ; $6f91: $00
	ld   bc, $ecdf                                   ; $6f92: $01 $df $ec
	and  e                                           ; $6f95: $a3
	ld   a, c                                        ; $6f96: $79
	ld   [hl], d                                     ; $6f97: $72
	ld   d, d                                        ; $6f98: $52
	ld   [hl], h                                     ; $6f99: $74
	ld   [bc], a                                     ; $6f9a: $02
	jp   nz, $005d                                   ; $6f9b: $c2 $5d $00

	ld   [bc], a                                     ; $6f9e: $02
	rlca                                             ; $6f9f: $07
	sbc  a                                           ; $6fa0: $9f
	nop                                              ; $6fa1: $00
	ld   [bc], a                                     ; $6fa2: $02
	inc  bc                                          ; $6fa3: $03
	ld   bc, $2000                                   ; $6fa4: $01 $00 $20
	nop                                              ; $6fa7: $00
	rlca                                             ; $6fa8: $07
	adc  d                                           ; $6fa9: $8a
	ld   bc, $0302                                   ; $6faa: $01 $02 $03
	ld   bc, $2001                                   ; $6fad: $01 $01 $20
	nop                                              ; $6fb0: $00
	rlca                                             ; $6fb1: $07
	rst  $20                                         ; $6fb2: $e7
	ld   bc, $0302                                   ; $6fb3: $01 $02 $03
	ld   bc, $2002                                   ; $6fb6: $01 $02 $20
	nop                                              ; $6fb9: $00
	ld   b, $76                                      ; $6fba: $06 $76
	nop                                              ; $6fbc: $00
	inc  e                                           ; $6fbd: $1c
	ld   [bc], a                                     ; $6fbe: $02
	nop                                              ; $6fbf: $00
	nop                                              ; $6fc0: $00
	ld   bc, $7d58                                   ; $6fc1: $01 $58 $7d
	sub  [hl]                                        ; $6fc4: $96
	ld   d, h                                        ; $6fc5: $54
	sbc  a                                           ; $6fc6: $9f
	dec  c                                           ; $6fc7: $0d
	ld   [bc], a                                     ; $6fc8: $02
	and  l                                           ; $6fc9: $a5
	inc  b                                           ; $6fca: $04
	xor  d                                           ; $6fcb: $aa
	sub  b                                           ; $6fcc: $90
	ld   [bc], a                                     ; $6fcd: $02
	jr   nz, jr_04b_6fd4                             ; $6fce: $20 $04

	xor  d                                           ; $6fd0: $aa
	sbc  [hl]                                        ; $6fd1: $9e
	ld   e, d                                        ; $6fd2: $5a
	and  c                                           ; $6fd3: $a1

jr_04b_6fd4:
	ld   a, [hl]                                     ; $6fd4: $7e
	sbc  b                                           ; $6fd5: $98
	ld   a, b                                        ; $6fd6: $78
	ld   h, e                                        ; $6fd7: $63
	ld   d, d                                        ; $6fd8: $52
	sbc  a                                           ; $6fd9: $9f
	dec  c                                           ; $6fda: $0d
	nop                                              ; $6fdb: $00
	ld   a, [bc]                                     ; $6fdc: $0a
	dec  c                                           ; $6fdd: $0d
	nop                                              ; $6fde: $00
	nop                                              ; $6fdf: $00
	rrca                                             ; $6fe0: $0f
	nop                                              ; $6fe1: $00
	ld   bc, $1e09                                   ; $6fe2: $01 $09 $1e
	nop                                              ; $6fe5: $00
	rrca                                             ; $6fe6: $0f
	nop                                              ; $6fe7: $00
	ld   bc, $5001                                   ; $6fe8: $01 $01 $50
	ld   a, h                                        ; $6feb: $7c
	rst  $38                                         ; $6fec: $ff
	rst  $38                                         ; $6fed: $ff
	dec  c                                           ; $6fee: $0d
	inc  b                                           ; $6fef: $04
	ld   l, l                                        ; $6ff0: $6d
	ld   a, h                                        ; $6ff1: $7c
	inc  b                                           ; $6ff2: $04
	rst  ToBoot                                         ; $6ff3: $c7
	inc  bc                                          ; $6ff4: $03
	ld   c, a                                        ; $6ff5: $4f
	ld   [bc], a                                     ; $6ff6: $02
	ld   a, d                                        ; $6ff7: $7a
	ld   d, [hl]                                     ; $6ff8: $56
	ld   [hl], h                                     ; $6ff9: $74
	ld   e, l                                        ; $6ffa: $5d
	sbc  d                                           ; $6ffb: $9a
	adc  h                                           ; $6ffc: $8c
	ld   h, l                                        ; $6ffd: $65
	ld   l, l                                        ; $6ffe: $6d
	ld   sp, hl                                      ; $6fff: $f9
	dec  c                                           ; $7000: $0d
	nop                                              ; $7001: $00
	ld   a, [bc]                                     ; $7002: $0a
	rlca                                             ; $7003: $07
	rrca                                             ; $7004: $0f
	ld   bc, $1203                                   ; $7005: $01 $03 $12
	ld   bc, $2278                                   ; $7008: $01 $78 $22
	nop                                              ; $700b: $00
	inc  e                                           ; $700c: $1c
	ld   [bc], a                                     ; $700d: $02
	ld   bc, $0101                                   ; $700e: $01 $01 $01
	ld   [$6300], sp                                 ; $7011: $08 $00 $63
	and  c                                           ; $7014: $a1
	ld   [hl], l                                     ; $7015: $75
	ld   h, l                                        ; $7016: $65
	sub  l                                           ; $7017: $95
	sbc  a                                           ; $7018: $9f
	dec  c                                           ; $7019: $0d
	ld   [bc], a                                     ; $701a: $02
	ld   a, d                                        ; $701b: $7a
	ld   d, [hl]                                     ; $701c: $56
	ld   [hl], h                                     ; $701d: $74
	adc  h                                           ; $701e: $8c
	ld   h, a                                        ; $701f: $67
	sbc  l                                           ; $7020: $9d
	sub  [hl]                                        ; $7021: $96
	sbc  a                                           ; $7022: $9f
	dec  c                                           ; $7023: $0d
	nop                                              ; $7024: $00
	ld   a, [bc]                                     ; $7025: $0a
	ld   bc, $5063                                   ; $7026: $01 $63 $50
	sbc  [hl]                                        ; $7029: $9e
	inc  bc                                          ; $702a: $03
	ld   l, l                                        ; $702b: $6d
	dec  b                                           ; $702c: $05
	add  hl, de                                      ; $702d: $19
	ld   a, h                                        ; $702e: $7c
	inc  bc                                          ; $702f: $03
	ld   l, a                                        ; $7030: $6f
	ld   [bc], a                                     ; $7031: $02
	xor  c                                           ; $7032: $a9
	ld   [hl], l                                     ; $7033: $75
	ld   h, a                                        ; $7034: $67
	sbc  l                                           ; $7035: $9d
	sbc  a                                           ; $7036: $9f
	dec  c                                           ; $7037: $0d
	ld   [bc], a                                     ; $7038: $02
	and  l                                           ; $7039: $a5
	inc  b                                           ; $703a: $04
	xor  d                                           ; $703b: $aa
	sub  b                                           ; $703c: $90
	ld   [bc], a                                     ; $703d: $02
	jr   nz, jr_04b_7044                             ; $703e: $20 $04

	xor  d                                           ; $7040: $aa
	sbc  [hl]                                        ; $7041: $9e
	ld   e, d                                        ; $7042: $5a
	and  c                                           ; $7043: $a1

jr_04b_7044:
	ld   a, [hl]                                     ; $7044: $7e
	sbc  b                                           ; $7045: $98
	ld   a, b                                        ; $7046: $78
	ld   h, e                                        ; $7047: $63
	ld   d, d                                        ; $7048: $52
	sbc  a                                           ; $7049: $9f
	dec  c                                           ; $704a: $0d
	nop                                              ; $704b: $00
	ld   a, [bc]                                     ; $704c: $0a
	dec  c                                           ; $704d: $0d
	nop                                              ; $704e: $00
	nop                                              ; $704f: $00
	rrca                                             ; $7050: $0f
	nop                                              ; $7051: $00
	ld   bc, $1e09                                   ; $7052: $01 $09 $1e
	nop                                              ; $7055: $00
	inc  e                                           ; $7056: $1c
	ld   [bc], a                                     ; $7057: $02
	rlca                                             ; $7058: $07
	rlca                                             ; $7059: $07
	ld   bc, $0808                                   ; $705a: $01 $08 $08
	ld   h, e                                        ; $705d: $63
	and  c                                           ; $705e: $a1
	ld   [hl], l                                     ; $705f: $75
	ld   h, l                                        ; $7060: $65
	sub  l                                           ; $7061: $95
	sbc  a                                           ; $7062: $9f
	dec  c                                           ; $7063: $0d
	ld   bc, $0207                                   ; $7064: $01 $07 $02
	ld   a, d                                        ; $7067: $7a
	ld   d, [hl]                                     ; $7068: $56
	ld   [hl], h                                     ; $7069: $74
	sbc  c                                           ; $706a: $99
	ld   sp, hl                                      ; $706b: $f9
	ld   bc, $6e08                                   ; $706c: $01 $08 $6e
	ld   a, b                                        ; $706f: $78
	and  c                                           ; $7070: $a1
	ld   [hl], h                                     ; $7071: $74
	dec  c                                           ; $7072: $0d
	inc  bc                                          ; $7073: $03
	add  d                                           ; $7074: $82
	and  b                                           ; $7075: $a0
	pop  de                                          ; $7076: $d1
	xor  h                                           ; $7077: $ac
	ld   a, c                                        ; $7078: $79
	ld   h, l                                        ; $7079: $65
	ld   [hl], h                                     ; $707a: $74
	sbc  a                                           ; $707b: $9f
	dec  c                                           ; $707c: $0d
	nop                                              ; $707d: $00
	ld   a, [bc]                                     ; $707e: $0a
	ld   bc, $8303                                   ; $707f: $01 $03 $83
	dec  b                                           ; $7082: $05
	dec  c                                           ; $7083: $0d
	ld   h, [hl]                                     ; $7084: $66
	sub  c                                           ; $7085: $91
	ld   d, b                                        ; $7086: $50
	sbc  b                                           ; $7087: $98
	adc  h                                           ; $7088: $8c
	ld   l, c                                        ; $7089: $69
	and  c                                           ; $708a: $a1
	ld   h, c                                        ; $708b: $61
	halt                                             ; $708c: $76
	ld   sp, hl                                      ; $708d: $f9
	dec  c                                           ; $708e: $0d
	nop                                              ; $708f: $00
	ld   a, [bc]                                     ; $7090: $0a
	inc  e                                           ; $7091: $1c
	ld   [bc], a                                     ; $7092: $02
	inc  bc                                          ; $7093: $03
	inc  bc                                          ; $7094: $03
	ld   bc, $ffff                                   ; $7095: $01 $ff $ff
	rst  $38                                         ; $7098: $ff
	rst  $38                                         ; $7099: $ff
	ld   d, [hl]                                     ; $709a: $56
	ld   [hl], c                                     ; $709b: $71
	ld   sp, hl                                      ; $709c: $f9
	dec  c                                           ; $709d: $0d
	adc  h                                           ; $709e: $8c
	ld   l, a                                        ; $709f: $6f
	ld   e, d                                        ; $70a0: $5a
	ld   [hl], c                                     ; $70a1: $71
	ld   [hl], h                                     ; $70a2: $74
	sbc  c                                           ; $70a3: $99
	ld   sp, hl                                      ; $70a4: $f9
	dec  c                                           ; $70a5: $0d
	ld   [$6300], sp                                 ; $70a6: $08 $00 $63
	and  c                                           ; $70a9: $a1
	ld   sp, hl                                      ; $70aa: $f9
	dec  c                                           ; $70ab: $0d
	nop                                              ; $70ac: $00
	ld   a, [bc]                                     ; $70ad: $0a
	inc  e                                           ; $70ae: $1c
	ld   [bc], a                                     ; $70af: $02
	ld   bc, $0101                                   ; $70b0: $01 $01 $01
	rst  $38                                         ; $70b3: $ff
	rst  $38                                         ; $70b4: $ff
	ld   e, b                                        ; $70b5: $58
	adc  c                                           ; $70b6: $89
	adc  c                                           ; $70b7: $89
	adc  c                                           ; $70b8: $89
	adc  c                                           ; $70b9: $89
	adc  c                                           ; $70ba: $89
	adc  c                                           ; $70bb: $89
	sbc  a                                           ; $70bc: $9f
	dec  c                                           ; $70bd: $0d
	ld   [hl], l                                     ; $70be: $75
	ld   a, l                                        ; $70bf: $7d
	inc  bc                                          ; $70c0: $03
	add  e                                           ; $70c1: $83
	dec  b                                           ; $70c2: $05
	dec  c                                           ; $70c3: $0d
	sbc  a                                           ; $70c4: $9f
	dec  c                                           ; $70c5: $0d
	nop                                              ; $70c6: $00
	ld   a, [bc]                                     ; $70c7: $0a
	dec  c                                           ; $70c8: $0d
	nop                                              ; $70c9: $00
	nop                                              ; $70ca: $00
	rrca                                             ; $70cb: $0f
	nop                                              ; $70cc: $00
	ld   bc, $1e09                                   ; $70cd: $01 $09 $1e
	nop                                              ; $70d0: $00
	rrca                                             ; $70d1: $0f
	nop                                              ; $70d2: $00
	ld   bc, $6701                                   ; $70d3: $01 $01 $67
	adc  l                                           ; $70d6: $8d
	sbc  d                                           ; $70d7: $9a
	ld   h, e                                        ; $70d8: $63
	and  c                                           ; $70d9: $a1
	sbc  [hl]                                        ; $70da: $9e
	ld   [bc], a                                     ; $70db: $02
	and  l                                           ; $70dc: $a5
	inc  b                                           ; $70dd: $04
	xor  d                                           ; $70de: $aa
	sub  b                                           ; $70df: $90
	dec  c                                           ; $70e0: $0d
	ld   [bc], a                                     ; $70e1: $02
	sub  l                                           ; $70e2: $95
	inc  b                                           ; $70e3: $04
	call nc, $9954                                   ; $70e4: $d4 $54 $99
	sbc  l                                           ; $70e7: $9d
	ld   h, l                                        ; $70e8: $65
	sub  e                                           ; $70e9: $93
	ld   d, h                                        ; $70ea: $54
	rst  $38                                         ; $70eb: $ff
	rst  $38                                         ; $70ec: $ff
	dec  c                                           ; $70ed: $0d
	nop                                              ; $70ee: $00
	ld   a, [bc]                                     ; $70ef: $0a
	inc  e                                           ; $70f0: $1c
	ld   [bc], a                                     ; $70f1: $02
	ld   bc, $1d01                                   ; $70f2: $01 $01 $1d
	ld   b, b                                        ; $70f5: $40
	ld   [de], a                                     ; $70f6: $12
	inc  bc                                          ; $70f7: $03
	ld   [de], a                                     ; $70f8: $12
	ld   bc, $2802                                   ; $70f9: $01 $02 $28
	nop                                              ; $70fc: $00
	ld   bc, $9750                                   ; $70fd: $01 $50 $97
	sbc  [hl]                                        ; $7100: $9e
	ld   [$6300], sp                                 ; $7101: $08 $00 $63
	and  c                                           ; $7104: $a1
	sbc  a                                           ; $7105: $9f
	dec  c                                           ; $7106: $0d
	ld   e, b                                        ; $7107: $58
	ld   a, l                                        ; $7108: $7d
	sub  [hl]                                        ; $7109: $96
	ld   d, h                                        ; $710a: $54
	sbc  a                                           ; $710b: $9f
	dec  c                                           ; $710c: $0d
	nop                                              ; $710d: $00
	ld   a, [bc]                                     ; $710e: $0a
	ld   bc, $a502                                   ; $710f: $01 $02 $a5
	inc  b                                           ; $7112: $04
	xor  d                                           ; $7113: $aa
	sub  b                                           ; $7114: $90
	ld   [bc], a                                     ; $7115: $02
	jr   nz, jr_04b_711c                             ; $7116: $20 $04

	xor  d                                           ; $7118: $aa
	sbc  [hl]                                        ; $7119: $9e
	ld   e, d                                        ; $711a: $5a
	and  c                                           ; $711b: $a1

jr_04b_711c:
	ld   a, [hl]                                     ; $711c: $7e
	sbc  b                                           ; $711d: $98
	ld   a, b                                        ; $711e: $78
	ld   h, e                                        ; $711f: $63
	ld   d, d                                        ; $7120: $52
	sbc  a                                           ; $7121: $9f
	dec  c                                           ; $7122: $0d
	nop                                              ; $7123: $00
	ld   a, [bc]                                     ; $7124: $0a
	dec  c                                           ; $7125: $0d
	nop                                              ; $7126: $00
	nop                                              ; $7127: $00
	rrca                                             ; $7128: $0f
	nop                                              ; $7129: $00
	ld   bc, $1e09                                   ; $712a: $01 $09 $1e
	nop                                              ; $712d: $00
	rrca                                             ; $712e: $0f
	nop                                              ; $712f: $00
	ld   bc, $df01                                   ; $7130: $01 $01 $df
	db   $ec                                         ; $7133: $ec
	and  e                                           ; $7134: $a3
	ld   h, e                                        ; $7135: $63
	and  c                                           ; $7136: $a1
	ld   [hl], h                                     ; $7137: $74
	sbc  [hl]                                        ; $7138: $9e
	ld   h, a                                        ; $7139: $67
	adc  l                                           ; $713a: $8d
	sbc  d                                           ; $713b: $9a
	ld   h, e                                        ; $713c: $63
	and  c                                           ; $713d: $a1
	ld   e, c                                        ; $713e: $59
	sub  a                                           ; $713f: $97
	dec  c                                           ; $7140: $0d
	ld   [bc], a                                     ; $7141: $02
	sub  l                                           ; $7142: $95
	ld   [hl], h                                     ; $7143: $74
	sbc  [hl]                                        ; $7144: $9e
	ld   [hl], a                                     ; $7145: $77
	and  c                                           ; $7146: $a1
	ld   a, b                                        ; $7147: $78
	inc  b                                           ; $7148: $04
	ld   a, b                                        ; $7149: $78
	ld   [hl], l                                     ; $714a: $75
	ld   h, a                                        ; $714b: $67
	ld   e, c                                        ; $714c: $59
	ld   sp, hl                                      ; $714d: $f9
	dec  c                                           ; $714e: $0d
	nop                                              ; $714f: $00
	ld   a, [bc]                                     ; $7150: $0a
	rrca                                             ; $7151: $0f
	ld   [bc], a                                     ; $7152: $02
	nop                                              ; $7153: $00
	ld   bc, $546b                                   ; $7154: $01 $6b $54
	ld   [hl], l                                     ; $7157: $75
	ld   h, a                                        ; $7158: $67
	sbc  l                                           ; $7159: $9d

Call_04b_715a:
	ld   a, e                                        ; $715a: $7b
	sbc  a                                           ; $715b: $9f
	dec  c                                           ; $715c: $0d
	inc  b                                           ; $715d: $04
	adc  h                                           ; $715e: $8c
	sbc  l                                           ; $715f: $9d
	sbc  b                                           ; $7160: $98
	inc  bc                                          ; $7161: $03
	or   b                                           ; $7162: $b0
	ld   a, h                                        ; $7163: $7c
	inc  b                                           ; $7164: $04
	rrca                                             ; $7165: $0f
	ld   d, d                                        ; $7166: $52
	ld   [bc], a                                     ; $7167: $02
	sbc  b                                           ; $7168: $98
	inc  bc                                          ; $7169: $03
	nop                                              ; $716a: $00
	ld   a, h                                        ; $716b: $7c
	inc  b                                           ; $716c: $04
	dec  bc                                          ; $716d: $0b
	ld   [hl], l                                     ; $716e: $75
	ld   a, l                                        ; $716f: $7d
	dec  c                                           ; $7170: $0d
	ld   l, b                                        ; $7171: $68
	ld   d, d                                        ; $7172: $52
	add  h                                           ; $7173: $84
	and  c                                           ; $7174: $a1
	adc  h                                           ; $7175: $8c
	halt                                             ; $7176: $76
	sub  b                                           ; $7177: $90
	ld   a, b                                        ; $7178: $78
	inc  b                                           ; $7179: $04
	ld   a, b                                        ; $717a: $78
	ld   [hl], l                                     ; $717b: $75
	ld   h, a                                        ; $717c: $67
	sbc  l                                           ; $717d: $9d
	ld   a, e                                        ; $717e: $7b
	sbc  a                                           ; $717f: $9f
	dec  c                                           ; $7180: $0d
	nop                                              ; $7181: $00
	ld   a, [bc]                                     ; $7182: $0a
	ld   bc, $9075                                   ; $7183: $01 $75 $90
	sbc  [hl]                                        ; $7186: $9e
	ld   l, a                                        ; $7187: $6f
	sub  l                                           ; $7188: $95
	ld   [hl], c                                     ; $7189: $71
	halt                                             ; $718a: $76
	dec  c                                           ; $718b: $0d
	ld   e, c                                        ; $718c: $59
	ld   l, l                                        ; $718d: $6d
	ld   e, l                                        ; $718e: $5d
	sbc  c                                           ; $718f: $99
	ld   h, l                                        ; $7190: $65
	ld   d, d                                        ; $7191: $52
	halt                                             ; $7192: $76
	ld   h, c                                        ; $7193: $61
	sbc  e                                           ; $7194: $9b
	ld   e, d                                        ; $7195: $5a
	dec  c                                           ; $7196: $0d
	inc  b                                           ; $7197: $04
	call nc, $1605                                   ; $7198: $d4 $05 $16
	ld   l, a                                        ; $719b: $6f
	adc  h                                           ; $719c: $8c
	ld   h, a                                        ; $719d: $67
	sbc  l                                           ; $719e: $9d
	ld   a, e                                        ; $719f: $7b
	sbc  a                                           ; $71a0: $9f
	dec  c                                           ; $71a1: $0d
	nop                                              ; $71a2: $00
	ld   a, [bc]                                     ; $71a3: $0a
	ld   bc, $5490                                   ; $71a4: $01 $90 $54
	inc  bc                                          ; $71a7: $03
	ld   l, h                                        ; $71a8: $6c
	ld   h, l                                        ; $71a9: $65
	sbc  [hl]                                        ; $71aa: $9e
	ld   [bc], a                                     ; $71ab: $02
	cp   a                                           ; $71ac: $bf
	ld   a, h                                        ; $71ad: $7c
	dec  b                                           ; $71ae: $05
	ld   a, [bc]                                     ; $71af: $0a
	and  b                                           ; $71b0: $a0
	dec  c                                           ; $71b1: $0d
	ld   a, d                                        ; $71b2: $7a
	ld   d, d                                        ; $71b3: $52
	ld   l, l                                        ; $71b4: $6d
	adc  c                                           ; $71b5: $89
	ld   d, h                                        ; $71b6: $54
	ld   e, d                                        ; $71b7: $5a
	ld   d, d                                        ; $71b8: $52
	ld   d, d                                        ; $71b9: $52
	halt                                             ; $71ba: $76
	dec  c                                           ; $71bb: $0d
	ld   e, b                                        ; $71bc: $58
	sub  b                                           ; $71bd: $90
	ld   d, d                                        ; $71be: $52
	adc  h                                           ; $71bf: $8c
	ld   h, a                                        ; $71c0: $67
	sbc  l                                           ; $71c1: $9d
	sbc  a                                           ; $71c2: $9f
	dec  c                                           ; $71c3: $0d
	nop                                              ; $71c4: $00
	ld   a, [bc]                                     ; $71c5: $0a
	ld   bc, $9166                                   ; $71c6: $01 $66 $91
	ld   d, b                                        ; $71c9: $50
	sbc  [hl]                                        ; $71ca: $9e
	ld   [bc], a                                     ; $71cb: $02
	and  l                                           ; $71cc: $a5
	inc  b                                           ; $71cd: $04
	xor  d                                           ; $71ce: $aa
	sub  b                                           ; $71cf: $90
	ld   [bc], a                                     ; $71d0: $02
	jr   nz, jr_04b_71d7                             ; $71d1: $20 $04

	xor  d                                           ; $71d3: $aa
	dec  c                                           ; $71d4: $0d
	ld   e, d                                        ; $71d5: $5a
	and  c                                           ; $71d6: $a1

jr_04b_71d7:
	ld   a, [hl]                                     ; $71d7: $7e
	sbc  b                                           ; $71d8: $98
	ld   a, b                                        ; $71d9: $78
	ld   h, e                                        ; $71da: $63
	ld   d, d                                        ; $71db: $52
	sbc  a                                           ; $71dc: $9f
	dec  c                                           ; $71dd: $0d
	nop                                              ; $71de: $00
	ld   a, [bc]                                     ; $71df: $0a
	dec  c                                           ; $71e0: $0d
	nop                                              ; $71e1: $00
	nop                                              ; $71e2: $00
	rrca                                             ; $71e3: $0f
	nop                                              ; $71e4: $00
	ld   bc, $1e09                                   ; $71e5: $01 $09 $1e
	nop                                              ; $71e8: $00
	nop                                              ; $71e9: $00
	inc  bc                                          ; $71ea: $03
	ld   c, [hl]                                     ; $71eb: $4e
	ld   [bc], a                                     ; $71ec: $02
	nop                                              ; $71ed: $00
	inc  bc                                          ; $71ee: $03
	ld   c, b                                        ; $71ef: $48
	add  hl, hl                                      ; $71f0: $29
	add  hl, hl                                      ; $71f1: $29
	ld   bc, $2201                                   ; $71f2: $01 $01 $22
	nop                                              ; $71f5: $00
	inc  e                                           ; $71f6: $1c
	ld   bc, $0101                                   ; $71f7: $01 $01 $01
	ld   [bc], a                                     ; $71fa: $02
	rlca                                             ; $71fb: $07
	inc  sp                                          ; $71fc: $33
	ld   b, $04                                      ; $71fd: $06 $04
	add  b                                           ; $71ff: $80
	call nc, $ff01                                   ; $7200: $d4 $01 $ff
	jr   nz, jr_04b_7205                             ; $7203: $20 $00

jr_04b_7205:
	ld   bc, $9e50                                   ; $7205: $01 $50 $9e
	ld   [$6300], sp                                 ; $7208: $08 $00 $63
	and  c                                           ; $720b: $a1
	sbc  a                                           ; $720c: $9f
	dec  c                                           ; $720d: $0d
	nop                                              ; $720e: $00
	ld   a, [bc]                                     ; $720f: $0a
	ld   bc, $9502                                   ; $7210: $01 $02 $95
	ld   [hl], h                                     ; $7213: $74
	ld   [bc], a                                     ; $7214: $02
	inc  [hl]                                        ; $7215: $34
	ld   h, e                                        ; $7216: $63
	ld   d, d                                        ; $7217: $52
	sbc  a                                           ; $7218: $9f
	dec  c                                           ; $7219: $0d
	ld   [bc], a                                     ; $721a: $02
	and  l                                           ; $721b: $a5
	inc  b                                           ; $721c: $04
	add  hl, hl                                      ; $721d: $29
	ld   a, h                                        ; $721e: $7c
	ld   [bc], a                                     ; $721f: $02
	sbc  c                                           ; $7220: $99
	ld   [bc], a                                     ; $7221: $02
	rra                                              ; $7222: $1f
	ld   a, h                                        ; $7223: $7c
	inc  b                                           ; $7224: $04
	inc  c                                           ; $7225: $0c
	inc  b                                           ; $7226: $04
	adc  a                                           ; $7227: $8f
	ld   e, d                                        ; $7228: $5a
	dec  c                                           ; $7229: $0d
	inc  b                                           ; $722a: $04
	ld   b, $52                                      ; $722b: $06 $52
	ld   l, l                                        ; $722d: $6d
	and  c                                           ; $722e: $a1
	ld   [hl], l                                     ; $722f: $75
	ld   h, a                                        ; $7230: $67
	sub  [hl]                                        ; $7231: $96
	sbc  a                                           ; $7232: $9f
	dec  c                                           ; $7233: $0d
	nop                                              ; $7234: $00
	ld   a, [bc]                                     ; $7235: $0a
	rrca                                             ; $7236: $0f
	nop                                              ; $7237: $00
	ld   bc, $6b01                                   ; $7238: $01 $01 $6b
	ld   d, h                                        ; $723b: $54
	ld   a, b                                        ; $723c: $78
	and  c                                           ; $723d: $a1
	ld   [hl], l                                     ; $723e: $75
	ld   h, a                                        ; $723f: $67
	ld   e, c                                        ; $7240: $59
	sbc  a                                           ; $7241: $9f
	dec  c                                           ; $7242: $0d
	nop                                              ; $7243: $00
	ld   a, [bc]                                     ; $7244: $0a
	add  hl, de                                      ; $7245: $19
	dec  b                                           ; $7246: $05
	inc  bc                                          ; $7247: $03
	ld   [bc], a                                     ; $7248: $02
	rra                                              ; $7249: $1f
	inc  b                                           ; $724a: $04
	call nc, Call_04b_7279                           ; $724b: $d4 $79 $72
	ld   d, d                                        ; $724e: $52
	ld   [hl], h                                     ; $724f: $74
	ld   [bc], a                                     ; $7250: $02
	jp   nz, $005d                                   ; $7251: $c2 $5d $00

	nop                                              ; $7254: $00
	inc  b                                           ; $7255: $04
	db   $ec                                         ; $7256: $ec
	ld   a, c                                        ; $7257: $79
	ld   [hl], d                                     ; $7258: $72
	ld   d, d                                        ; $7259: $52
	ld   [hl], h                                     ; $725a: $74
	ld   [bc], a                                     ; $725b: $02
	jp   nz, $005d                                   ; $725c: $c2 $5d $00

	ld   bc, $8e04                                   ; $725f: $01 $04 $8e
	inc  b                                           ; $7262: $04
	inc  c                                           ; $7263: $0c
	ld   a, c                                        ; $7264: $79
	ld   [hl], d                                     ; $7265: $72
	ld   d, d                                        ; $7266: $52
	ld   [hl], h                                     ; $7267: $74
	ld   [bc], a                                     ; $7268: $02
	jp   nz, $005d                                   ; $7269: $c2 $5d $00

	ld   [bc], a                                     ; $726c: $02
	rlca                                             ; $726d: $07
	push bc                                          ; $726e: $c5
	nop                                              ; $726f: $00
	ld   [bc], a                                     ; $7270: $02
	inc  bc                                          ; $7271: $03
	ld   bc, $2000                                   ; $7272: $01 $00 $20
	nop                                              ; $7275: $00
	rlca                                             ; $7276: $07
	sub  a                                           ; $7277: $97
	ld   [bc], a                                     ; $7278: $02

Call_04b_7279:
	ld   [bc], a                                     ; $7279: $02
	inc  bc                                          ; $727a: $03
	ld   bc, $2001                                   ; $727b: $01 $01 $20
	nop                                              ; $727e: $00
	rlca                                             ; $727f: $07
	add  b                                           ; $7280: $80
	inc  b                                           ; $7281: $04
	ld   [bc], a                                     ; $7282: $02
	inc  bc                                          ; $7283: $03
	ld   bc, $2002                                   ; $7284: $01 $02 $20
	nop                                              ; $7287: $00
	ld   b, $95                                      ; $7288: $06 $95
	nop                                              ; $728a: $00
	inc  e                                           ; $728b: $1c
	ld   bc, $0101                                   ; $728c: $01 $01 $01
	ld   bc, $9166                                   ; $728f: $01 $66 $91
	sbc  [hl]                                        ; $7292: $9e
	ld   d, b                                        ; $7293: $50
	ld   l, l                                        ; $7294: $6d
	ld   h, l                                        ; $7295: $65
	inc  b                                           ; $7296: $04
	sub  l                                           ; $7297: $95
	ld   [bc], a                                     ; $7298: $02
	ld   hl, $0479                                   ; $7299: $21 $79 $04
	jp   Jump_04b_7471                               ; $729c: $c3 $71 $74


	dec  c                                           ; $729f: $0d
	inc  b                                           ; $72a0: $04
	inc  c                                           ; $72a1: $0c
	inc  b                                           ; $72a2: $04
	adc  a                                           ; $72a3: $8f
	and  b                                           ; $72a4: $a0
	inc  b                                           ; $72a5: $04
	ld   de, $75a1                                   ; $72a6: $11 $a1 $75
	adc  h                                           ; $72a9: $8c
	ld   h, a                                        ; $72aa: $67
	ld   e, c                                        ; $72ab: $59
	sub  a                                           ; $72ac: $97
	rst  $38                                         ; $72ad: $ff
	rst  $38                                         ; $72ae: $ff

jr_04b_72af:
	dec  c                                           ; $72af: $0d
	nop                                              ; $72b0: $00
	ld   a, [bc]                                     ; $72b1: $0a
	dec  c                                           ; $72b2: $0d
	nop                                              ; $72b3: $00
	nop                                              ; $72b4: $00
	rrca                                             ; $72b5: $0f
	nop                                              ; $72b6: $00
	ld   bc, $1e09                                   ; $72b7: $01 $09 $1e
	nop                                              ; $72ba: $00
	rrca                                             ; $72bb: $0f
	nop                                              ; $72bc: $00
	ld   bc, $0201                                   ; $72bd: $01 $01 $02
	rra                                              ; $72c0: $1f
	inc  b                                           ; $72c1: $04
	call nc, $047d                                   ; $72c2: $d4 $7d $04
	ld   c, c                                        ; $72c5: $49
	ld   [hl], l                                     ; $72c6: $75
	ld   h, a                                        ; $72c7: $67
	ld   e, c                                        ; $72c8: $59
	ld   sp, hl                                      ; $72c9: $f9
	dec  c                                           ; $72ca: $0d
	nop                                              ; $72cb: $00
	ld   a, [bc]                                     ; $72cc: $0a
	inc  e                                           ; $72cd: $1c
	ld   bc, $0000                                   ; $72ce: $01 $00 $00
	ld   bc, $4b04                                   ; $72d1: $01 $04 $4b
	inc  b                                           ; $72d4: $04
	ldh  a, [c]                                      ; $72d5: $f2
	ld   [bc], a                                     ; $72d6: $02
	sub  a                                           ; $72d7: $97
	ld   [hl], l                                     ; $72d8: $75
	ld   h, a                                        ; $72d9: $67
	sub  [hl]                                        ; $72da: $96
	sbc  a                                           ; $72db: $9f
	dec  c                                           ; $72dc: $0d
	inc  b                                           ; $72dd: $04
	dec  hl                                          ; $72de: $2b
	ld   [hl], c                                     ; $72df: $71
	ld   [hl], h                                     ; $72e0: $74
	adc  h                                           ; $72e1: $8c
	ld   h, a                                        ; $72e2: $67
	ld   e, c                                        ; $72e3: $59
	ld   sp, hl                                      ; $72e4: $f9
	dec  c                                           ; $72e5: $0d
	nop                                              ; $72e6: $00
	ld   a, [bc]                                     ; $72e7: $0a
	add  hl, de                                      ; $72e8: $19
	dec  b                                           ; $72e9: $05
	inc  bc                                          ; $72ea: $03
	inc  bc                                          ; $72eb: $03
	ld   d, b                                        ; $72ec: $50
	ld   [bc], a                                     ; $72ed: $02
	ld   a, h                                        ; $72ee: $7c
	ld   [bc], a                                     ; $72ef: $02
	or   [hl]                                        ; $72f0: $b6
	ld   e, d                                        ; $72f1: $5a
	inc  bc                                          ; $72f2: $03
	add  b                                           ; $72f3: $80
	sbc  c                                           ; $72f4: $99
	dec  b                                           ; $72f5: $05
	jr   nz, jr_04b_736d                             ; $72f6: $20 $75

	ld   h, a                                        ; $72f8: $67
	sub  [hl]                                        ; $72f9: $96
	ld   a, e                                        ; $72fa: $7b
	ld   sp, hl                                      ; $72fb: $f9
	nop                                              ; $72fc: $00
	nop                                              ; $72fd: $00
	inc  bc                                          ; $72fe: $03
	inc  sp                                          ; $72ff: $33
	ld   [hl], d                                     ; $7300: $72
	ld   a, h                                        ; $7301: $7c
	ld   [bc], a                                     ; $7302: $02
	adc  a                                           ; $7303: $8f
	ld   e, d                                        ; $7304: $5a
	dec  b                                           ; $7305: $05
	jp   c, $0554                                    ; $7306: $da $54 $05

	jr   nz, jr_04b_7380                             ; $7309: $20 $75

	ld   h, a                                        ; $730b: $67
	sub  [hl]                                        ; $730c: $96
	ld   a, e                                        ; $730d: $7b
	ld   sp, hl                                      ; $730e: $f9
	nop                                              ; $730f: $00
	ld   bc, $3903                                   ; $7310: $01 $03 $39
	ld   [bc], a                                     ; $7313: $02
	add  d                                           ; $7314: $82
	dec  b                                           ; $7315: $05
	db   $eb                                         ; $7316: $eb
	ld   bc, $7c14                                   ; $7317: $01 $14 $7c
	dec  b                                           ; $731a: $05
	jr   nz, jr_04b_72af                             ; $731b: $20 $92

	inc  b                                           ; $731d: $04
	adc  h                                           ; $731e: $8c
	ld   [bc], a                                     ; $731f: $02
	ld   d, c                                        ; $7320: $51
	and  b                                           ; $7321: $a0
	rst  $38                                         ; $7322: $ff
	rst  $38                                         ; $7323: $ff
	nop                                              ; $7324: $00
	ld   [bc], a                                     ; $7325: $02
	rlca                                             ; $7326: $07
	ld   c, [hl]                                     ; $7327: $4e
	ld   bc, $0302                                   ; $7328: $01 $02 $03
	ld   bc, $2000                                   ; $732b: $01 $00 $20
	nop                                              ; $732e: $00
	rlca                                             ; $732f: $07
	sub  e                                           ; $7330: $93
	ld   bc, $0302                                   ; $7331: $01 $02 $03
	ld   bc, $2001                                   ; $7334: $01 $01 $20
	nop                                              ; $7337: $00
	rlca                                             ; $7338: $07
	rst  ToBoot                                         ; $7339: $c7
	ld   bc, $0302                                   ; $733a: $01 $02 $03
	ld   bc, $2002                                   ; $733d: $01 $02 $20
	nop                                              ; $7340: $00
	ld   b, $43                                      ; $7341: $06 $43
	ld   [bc], a                                     ; $7343: $02
	rrca                                             ; $7344: $0f
	nop                                              ; $7345: $00
	ld   bc, $0301                                   ; $7346: $01 $01 $03
	ld   d, b                                        ; $7349: $50
	ld   [bc], a                                     ; $734a: $02
	ld   a, h                                        ; $734b: $7c
	ld   [bc], a                                     ; $734c: $02
	or   [hl]                                        ; $734d: $b6
	ld   e, d                                        ; $734e: $5a
	inc  bc                                          ; $734f: $03
	add  b                                           ; $7350: $80
	sbc  c                                           ; $7351: $99
	dec  b                                           ; $7352: $05
	jr   nz, jr_04b_73ca                             ; $7353: $20 $75

	ld   h, a                                        ; $7355: $67
	sub  [hl]                                        ; $7356: $96
	ld   a, e                                        ; $7357: $7b
	ld   sp, hl                                      ; $7358: $f9
	dec  c                                           ; $7359: $0d
	nop                                              ; $735a: $00
	ld   a, [bc]                                     ; $735b: $0a
	inc  e                                           ; $735c: $1c
	ld   bc, $0101                                   ; $735d: $01 $01 $01
	dec  e                                           ; $7360: $1d
	ld   b, b                                        ; $7361: $40
	ld   de, $1103                                   ; $7362: $11 $03 $11
	ld   bc, $2802                                   ; $7365: $01 $02 $28
	nop                                              ; $7368: $00
	ld   bc, $527d                                   ; $7369: $01 $7d $52
	sbc  a                                           ; $736c: $9f

jr_04b_736d:
	dec  c                                           ; $736d: $0d
	xor  h                                           ; $736e: $ac
	push af                                          ; $736f: $f5
	bit  4, e                                        ; $7370: $cb $63
	and  c                                           ; $7372: $a1
	ld   e, d                                        ; $7373: $5a
	inc  bc                                          ; $7374: $03
	ld   d, b                                        ; $7375: $50
	ld   [bc], a                                     ; $7376: $02
	ld   a, h                                        ; $7377: $7c
	ld   [bc], a                                     ; $7378: $02
	or   [hl]                                        ; $7379: $b6
	and  b                                           ; $737a: $a0
	dec  c                                           ; $737b: $0d
	sub  d                                           ; $737c: $92
	sbc  c                                           ; $737d: $99
	and  c                                           ; $737e: $a1
	ld   [hl], l                                     ; $737f: $75

jr_04b_7380:
	ld   h, a                                        ; $7380: $67
	sub  [hl]                                        ; $7381: $96
	sbc  a                                           ; $7382: $9f
	dec  c                                           ; $7383: $0d
	nop                                              ; $7384: $00
	ld   a, [bc]                                     ; $7385: $0a
	ld   b, $6b                                      ; $7386: $06 $6b
	ld   [bc], a                                     ; $7388: $02
	rrca                                             ; $7389: $0f
	nop                                              ; $738a: $00
	ld   bc, $0301                                   ; $738b: $01 $01 $03
	inc  sp                                          ; $738e: $33
	ld   [hl], d                                     ; $738f: $72
	ld   a, h                                        ; $7390: $7c
	ld   [bc], a                                     ; $7391: $02
	adc  a                                           ; $7392: $8f
	ld   e, d                                        ; $7393: $5a
	dec  b                                           ; $7394: $05
	jp   c, $0554                                    ; $7395: $da $54 $05

	jr   nz, jr_04b_740f                             ; $7398: $20 $75

	ld   h, a                                        ; $739a: $67
	sub  [hl]                                        ; $739b: $96
	ld   a, e                                        ; $739c: $7b
	ld   sp, hl                                      ; $739d: $f9
	dec  c                                           ; $739e: $0d
	nop                                              ; $739f: $00
	ld   a, [bc]                                     ; $73a0: $0a
	inc  e                                           ; $73a1: $1c
	ld   bc, $0303                                   ; $73a2: $01 $03 $03
	ld   bc, $6e92                                   ; $73a5: $01 $92 $6e
	rst  $38                                         ; $73a8: $ff
	rst  $38                                         ; $73a9: $ff
	ld   l, e                                        ; $73aa: $6b
	sbc  d                                           ; $73ab: $9a
	ld   a, l                                        ; $73ac: $7d
	inc  bc                                          ; $73ad: $03
	inc  sp                                          ; $73ae: $33
	ld   [bc], a                                     ; $73af: $02
	adc  a                                           ; $73b0: $8f
	dec  b                                           ; $73b1: $05
	rst  $10                                         ; $73b2: $d7
	ld   [hl], l                                     ; $73b3: $75
	ld   h, a                                        ; $73b4: $67
	sub  [hl]                                        ; $73b5: $96
	sbc  a                                           ; $73b6: $9f
	dec  c                                           ; $73b7: $0d
	nop                                              ; $73b8: $00
	ld   a, [bc]                                     ; $73b9: $0a
	ld   b, $43                                      ; $73ba: $06 $43
	ld   [bc], a                                     ; $73bc: $02
	rrca                                             ; $73bd: $0f
	nop                                              ; $73be: $00
	ld   bc, $0301                                   ; $73bf: $01 $01 $03
	add  hl, sp                                      ; $73c2: $39
	ld   [bc], a                                     ; $73c3: $02
	add  d                                           ; $73c4: $82
	dec  b                                           ; $73c5: $05
	db   $eb                                         ; $73c6: $eb
	ld   bc, $7c14                                   ; $73c7: $01 $14 $7c

jr_04b_73ca:
	dec  b                                           ; $73ca: $05
	jr   nz, @-$6c                                   ; $73cb: $20 $92

	inc  b                                           ; $73cd: $04
	adc  h                                           ; $73ce: $8c
	ld   [bc], a                                     ; $73cf: $02
	ld   d, c                                        ; $73d0: $51
	and  b                                           ; $73d1: $a0
	inc  bc                                          ; $73d2: $03
	ld   d, l                                        ; $73d3: $55
	ld   d, d                                        ; $73d4: $52
	ld   l, l                                        ; $73d5: $6d
	dec  c                                           ; $73d6: $0d
	inc  bc                                          ; $73d7: $03
	ld   d, l                                        ; $73d8: $55
	inc  b                                           ; $73d9: $04
	sub  d                                           ; $73da: $92
	ld   [hl], l                                     ; $73db: $75
	ld   h, a                                        ; $73dc: $67
	sub  [hl]                                        ; $73dd: $96
	ld   a, e                                        ; $73de: $7b
	ld   sp, hl                                      ; $73df: $f9
	dec  c                                           ; $73e0: $0d
	nop                                              ; $73e1: $00
	ld   a, [bc]                                     ; $73e2: $0a
	inc  e                                           ; $73e3: $1c
	ld   bc, $0303                                   ; $73e4: $01 $03 $03
	ld   bc, $ff56                                   ; $73e7: $01 $56 $ff
	rst  $38                                         ; $73ea: $ff
	ld   l, a                                        ; $73eb: $6f
	ld   e, d                                        ; $73ec: $5a
	ld   d, d                                        ; $73ed: $52
	adc  h                                           ; $73ee: $8c
	ld   h, a                                        ; $73ef: $67
	ld   e, a                                        ; $73f0: $5f
	ld   [hl], a                                     ; $73f1: $77
	rst  $38                                         ; $73f2: $ff
	rst  $38                                         ; $73f3: $ff
	dec  c                                           ; $73f4: $0d
	ld   l, e                                        ; $73f5: $6b
	sbc  d                                           ; $73f6: $9a
	inc  b                                           ; $73f7: $04
	ld   c, c                                        ; $73f8: $49
	ld   [hl], l                                     ; $73f9: $75
	ld   h, a                                        ; $73fa: $67
	ld   e, c                                        ; $73fb: $59
	ld   sp, hl                                      ; $73fc: $f9
	dec  c                                           ; $73fd: $0d
	nop                                              ; $73fe: $00
	ld   a, [bc]                                     ; $73ff: $0a
	rrca                                             ; $7400: $0f
	nop                                              ; $7401: $00
	ld   bc, $0501                                   ; $7402: $01 $01 $05
	ret  c                                           ; $7405: $d8

	inc  bc                                          ; $7406: $03
	ld   l, a                                        ; $7407: $6f
	ld   [bc], a                                     ; $7408: $02
	sub  a                                           ; $7409: $97
	ld   [hl], l                                     ; $740a: $75
	ld   h, a                                        ; $740b: $67
	sbc  a                                           ; $740c: $9f
	dec  c                                           ; $740d: $0d
	nop                                              ; $740e: $00

jr_04b_740f:
	ld   a, [bc]                                     ; $740f: $0a
	inc  e                                           ; $7410: $1c
	ld   bc, $0303                                   ; $7411: $01 $03 $03
	dec  e                                           ; $7414: $1d
	ld   b, b                                        ; $7415: $40
	ld   de, $1103                                   ; $7416: $11 $03 $11
	ld   bc, $2801                                   ; $7419: $01 $01 $28
	nop                                              ; $741c: $00
	ld   bc, $0008                                   ; $741d: $01 $08 $00
	ld   h, e                                        ; $7420: $63
	and  c                                           ; $7421: $a1
	ld   [hl], h                                     ; $7422: $74
	sbc  [hl]                                        ; $7423: $9e
	ld   d, b                                        ; $7424: $50
	sbc  c                                           ; $7425: $99
	inc  b                                           ; $7426: $04
	ret  c                                           ; $7427: $d8

	ld   [hl], l                                     ; $7428: $75
	ld   a, l                                        ; $7429: $7d
	dec  c                                           ; $742a: $0d
	inc  b                                           ; $742b: $04
	sub  d                                           ; $742c: $92
	inc  b                                           ; $742d: $04
	dec  hl                                          ; $742e: $2b
	sbc  b                                           ; $742f: $98
	ld   a, b                                        ; $7430: $78
	and  c                                           ; $7431: $a1
	ld   [hl], l                                     ; $7432: $75
	ld   h, a                                        ; $7433: $67
	ld   a, e                                        ; $7434: $7b
	sbc  a                                           ; $7435: $9f
	dec  c                                           ; $7436: $0d
	nop                                              ; $7437: $00
	ld   a, [bc]                                     ; $7438: $0a
	inc  e                                           ; $7439: $1c
	ld   bc, $0000                                   ; $743a: $01 $00 $00
	ld   bc, $4b04                                   ; $743d: $01 $04 $4b
	inc  b                                           ; $7440: $04
	ldh  a, [c]                                      ; $7441: $f2
	ld   [bc], a                                     ; $7442: $02
	sub  a                                           ; $7443: $97
	ld   a, l                                        ; $7444: $7d
	inc  bc                                          ; $7445: $03
	ld   d, b                                        ; $7446: $50
	ld   [bc], a                                     ; $7447: $02
	ld   a, h                                        ; $7448: $7c
	ld   [bc], a                                     ; $7449: $02
	or   [hl]                                        ; $744a: $b6
	ld   e, d                                        ; $744b: $5a
	ld   e, c                                        ; $744c: $59
	ld   [hl], d                                     ; $744d: $72
	sub  d                                           ; $744e: $92
	ld   e, l                                        ; $744f: $5d
	dec  c                                           ; $7450: $0d
	ld   h, a                                        ; $7451: $67
	sbc  c                                           ; $7452: $99
	dec  b                                           ; $7453: $05
	jr   nz, jr_04b_74ce                             ; $7454: $20 $78

	and  c                                           ; $7456: $a1
	ld   [hl], l                                     ; $7457: $75
	ld   h, a                                        ; $7458: $67
	sub  [hl]                                        ; $7459: $96
	sbc  a                                           ; $745a: $9f
	dec  c                                           ; $745b: $0d
	nop                                              ; $745c: $00
	ld   a, [bc]                                     ; $745d: $0a
	ld   b, $6b                                      ; $745e: $06 $6b
	ld   [bc], a                                     ; $7460: $02
	ld   bc, $9166                                   ; $7461: $01 $66 $91
	sbc  [hl]                                        ; $7464: $9e
	ld   d, b                                        ; $7465: $50
	ld   l, l                                        ; $7466: $6d
	ld   h, l                                        ; $7467: $65
	inc  b                                           ; $7468: $04
	sub  l                                           ; $7469: $95
	ld   [bc], a                                     ; $746a: $02
	ld   hl, $0479                                   ; $746b: $21 $79 $04
	jp   Jump_04b_7471                               ; $746e: $c3 $71 $74


Jump_04b_7471:
	dec  c                                           ; $7471: $0d
	inc  b                                           ; $7472: $04
	inc  c                                           ; $7473: $0c
	inc  b                                           ; $7474: $04
	adc  a                                           ; $7475: $8f
	and  b                                           ; $7476: $a0
	inc  b                                           ; $7477: $04
	ld   de, $75a1                                   ; $7478: $11 $a1 $75
	adc  h                                           ; $747b: $8c
	ld   h, a                                        ; $747c: $67
	ld   e, c                                        ; $747d: $59
	sub  a                                           ; $747e: $97
	rst  $38                                         ; $747f: $ff
	rst  $38                                         ; $7480: $ff
	dec  c                                           ; $7481: $0d
	nop                                              ; $7482: $00
	ld   a, [bc]                                     ; $7483: $0a
	dec  c                                           ; $7484: $0d
	nop                                              ; $7485: $00
	nop                                              ; $7486: $00
	rrca                                             ; $7487: $0f
	nop                                              ; $7488: $00
	ld   bc, $1e09                                   ; $7489: $01 $09 $1e
	nop                                              ; $748c: $00
	rrca                                             ; $748d: $0f
	nop                                              ; $748e: $00
	ld   bc, $6301                                   ; $748f: $01 $01 $63
	ld   e, l                                        ; $7492: $5d
	sub  a                                           ; $7493: $97
	ld   h, e                                        ; $7494: $63
	and  c                                           ; $7495: $a1
	ld   a, l                                        ; $7496: $7d
	inc  b                                           ; $7497: $04
	ld   c, c                                        ; $7498: $49
	ld   a, h                                        ; $7499: $7c
	inc  b                                           ; $749a: $04
	db   $ec                                         ; $749b: $ec
	ld   [hl], l                                     ; $749c: $75
	ld   h, a                                        ; $749d: $67
	ld   e, c                                        ; $749e: $59
	ld   sp, hl                                      ; $749f: $f9
	dec  c                                           ; $74a0: $0d
	nop                                              ; $74a1: $00
	ld   a, [bc]                                     ; $74a2: $0a
	inc  e                                           ; $74a3: $1c
	ld   bc, $0000                                   ; $74a4: $01 $00 $00
	ld   bc, $9763                                   ; $74a7: $01 $63 $97
	sbc  l                                           ; $74aa: $9d
	sbc  d                                           ; $74ab: $9a
	sbc  c                                           ; $74ac: $99
	inc  b                                           ; $74ad: $04
	ld   a, [de]                                     ; $74ae: $1a
	ld   [bc], a                                     ; $74af: $02
	cp   b                                           ; $74b0: $b8
	ld   a, h                                        ; $74b1: $7c
	inc  b                                           ; $74b2: $04
	db   $ec                                         ; $74b3: $ec
	ld   [hl], l                                     ; $74b4: $75
	ld   h, a                                        ; $74b5: $67
	sbc  a                                           ; $74b6: $9f
	dec  c                                           ; $74b7: $0d
	nop                                              ; $74b8: $00
	ld   a, [bc]                                     ; $74b9: $0a
	add  hl, de                                      ; $74ba: $19
	dec  b                                           ; $74bb: $05
	inc  bc                                          ; $74bc: $03
	sbc  l                                           ; $74bd: $9d
	ld   e, e                                        ; $74be: $5b
	inc  b                                           ; $74bf: $04
	db   $ec                                         ; $74c0: $ec
	ld   [hl], l                                     ; $74c1: $75
	ld   h, a                                        ; $74c2: $67
	ld   a, e                                        ; $74c3: $7b
	nop                                              ; $74c4: $00
	nop                                              ; $74c5: $00
	ld   [bc], a                                     ; $74c6: $02
	sub  l                                           ; $74c7: $95
	ld   [hl], h                                     ; $74c8: $74
	adc  l                                           ; $74c9: $8d
	ld   l, l                                        ; $74ca: $6d
	ld   d, d                                        ; $74cb: $52
	ld   [hl], l                                     ; $74cc: $75
	ld   h, a                                        ; $74cd: $67

jr_04b_74ce:
	ld   a, e                                        ; $74ce: $7b
	nop                                              ; $74cf: $00
	ld   bc, $ecbc                                   ; $74d0: $01 $bc $ec
	sub  $50                                         ; $74d3: $d6 $50
	sbc  c                                           ; $74d5: $99
	and  c                                           ; $74d6: $a1
	ld   [hl], l                                     ; $74d7: $75
	ld   h, a                                        ; $74d8: $67
	ld   e, c                                        ; $74d9: $59
	ld   sp, hl                                      ; $74da: $f9
	nop                                              ; $74db: $00
	ld   [bc], a                                     ; $74dc: $02
	rlca                                             ; $74dd: $07
	dec  b                                           ; $74de: $05
	inc  bc                                          ; $74df: $03
	ld   [bc], a                                     ; $74e0: $02
	inc  bc                                          ; $74e1: $03
	ld   bc, $2000                                   ; $74e2: $01 $00 $20
	nop                                              ; $74e5: $00
	rlca                                             ; $74e6: $07
	ld   [hl], a                                     ; $74e7: $77
	inc  bc                                          ; $74e8: $03
	ld   [bc], a                                     ; $74e9: $02
	inc  bc                                          ; $74ea: $03
	ld   bc, $2001                                   ; $74eb: $01 $01 $20
	nop                                              ; $74ee: $00
	rlca                                             ; $74ef: $07
	ret  nz                                          ; $74f0: $c0

	inc  bc                                          ; $74f1: $03
	ld   [bc], a                                     ; $74f2: $02
	inc  bc                                          ; $74f3: $03
	ld   bc, $2002                                   ; $74f4: $01 $02 $20
	nop                                              ; $74f7: $00
	ld   b, $1e                                      ; $74f8: $06 $1e
	inc  b                                           ; $74fa: $04
	rrca                                             ; $74fb: $0f
	nop                                              ; $74fc: $00
	ld   bc, $9d01                                   ; $74fd: $01 $01 $9d
	ld   e, e                                        ; $7500: $5b
	inc  b                                           ; $7501: $04
	db   $ec                                         ; $7502: $ec
	ld   [hl], l                                     ; $7503: $75
	ld   h, a                                        ; $7504: $67
	ld   a, e                                        ; $7505: $7b
	sbc  a                                           ; $7506: $9f
	dec  c                                           ; $7507: $0d
	nop                                              ; $7508: $00
	ld   a, [bc]                                     ; $7509: $0a
	inc  e                                           ; $750a: $1c
	ld   bc, $0202                                   ; $750b: $01 $02 $02
	dec  e                                           ; $750e: $1d
	ld   b, b                                        ; $750f: $40
	ld   de, $1103                                   ; $7510: $11 $03 $11
	ld   bc, $2903                                   ; $7513: $01 $03 $29
	nop                                              ; $7516: $00
	ld   bc, $546b                                   ; $7517: $01 $6b $54
	ld   e, c                                        ; $751a: $59
	sub  b                                           ; $751b: $90
	inc  b                                           ; $751c: $04
	dec  hl                                          ; $751d: $2b
	sbc  d                                           ; $751e: $9a
	adc  h                                           ; $751f: $8c
	ld   l, c                                        ; $7520: $69
	and  c                                           ; $7521: $a1
	ld   e, a                                        ; $7522: $5f
	ld   [hl], a                                     ; $7523: $77
	sbc  [hl]                                        ; $7524: $9e
	dec  c                                           ; $7525: $0d
	ld   [hl], a                                     ; $7526: $77
	and  c                                           ; $7527: $a1
	ld   a, b                                        ; $7528: $78
	inc  b                                           ; $7529: $04
	db   $ec                                         ; $752a: $ec
	ld   [hl], l                                     ; $752b: $75
	sub  b                                           ; $752c: $90
	sub  d                                           ; $752d: $92
	sbc  b                                           ; $752e: $98
	ld   e, d                                        ; $752f: $5a
	ld   d, d                                        ; $7530: $52
	ld   a, l                                        ; $7531: $7d
	dec  c                                           ; $7532: $0d
	ld   d, b                                        ; $7533: $50
	sbc  c                                           ; $7534: $99
	and  c                                           ; $7535: $a1
	ld   [hl], l                                     ; $7536: $75
	ld   h, a                                        ; $7537: $67
	sub  [hl]                                        ; $7538: $96
	sbc  a                                           ; $7539: $9f
	dec  c                                           ; $753a: $0d
	nop                                              ; $753b: $00
	ld   a, [bc]                                     ; $753c: $0a
	inc  e                                           ; $753d: $1c
	ld   bc, $0707                                   ; $753e: $01 $07 $07
	ld   bc, $9166                                   ; $7541: $01 $66 $91
	sbc  [hl]                                        ; $7544: $9e
	ld   d, b                                        ; $7545: $50
	ld   l, l                                        ; $7546: $6d
	ld   h, l                                        ; $7547: $65
	inc  b                                           ; $7548: $04
	sub  l                                           ; $7549: $95
	ld   [bc], a                                     ; $754a: $02
	ld   hl, $0479                                   ; $754b: $21 $79 $04
	jp   Jump_04b_7471                               ; $754e: $c3 $71 $74


	dec  c                                           ; $7551: $0d
	inc  b                                           ; $7552: $04
	inc  c                                           ; $7553: $0c
	inc  b                                           ; $7554: $04
	adc  a                                           ; $7555: $8f

Call_04b_7556:
	and  b                                           ; $7556: $a0
	inc  b                                           ; $7557: $04
	ld   de, $75a1                                   ; $7558: $11 $a1 $75
	adc  h                                           ; $755b: $8c
	ld   h, a                                        ; $755c: $67
	ld   e, c                                        ; $755d: $59
	sub  a                                           ; $755e: $97
	rst  $38                                         ; $755f: $ff
	rst  $38                                         ; $7560: $ff
	dec  c                                           ; $7561: $0d
	nop                                              ; $7562: $00
	ld   a, [bc]                                     ; $7563: $0a
	dec  c                                           ; $7564: $0d
	nop                                              ; $7565: $00
	nop                                              ; $7566: $00
	rrca                                             ; $7567: $0f
	nop                                              ; $7568: $00
	ld   bc, $1e09                                   ; $7569: $01 $09 $1e
	nop                                              ; $756c: $00
	rrca                                             ; $756d: $0f
	nop                                              ; $756e: $00
	ld   bc, $0201                                   ; $756f: $01 $01 $02
	sub  l                                           ; $7572: $95
	ld   [hl], h                                     ; $7573: $74
	adc  l                                           ; $7574: $8d
	ld   l, l                                        ; $7575: $6d
	ld   d, d                                        ; $7576: $52
	ld   [hl], l                                     ; $7577: $75
	ld   h, a                                        ; $7578: $67
	ld   a, e                                        ; $7579: $7b
	sbc  a                                           ; $757a: $9f
	dec  c                                           ; $757b: $0d
	ld   h, e                                        ; $757c: $63
	ld   e, l                                        ; $757d: $5d
	sub  a                                           ; $757e: $97
	ld   h, e                                        ; $757f: $63
	and  c                                           ; $7580: $a1
	ld   a, h                                        ; $7581: $7c
	inc  b                                           ; $7582: $04
	ld   a, [de]                                     ; $7583: $1a
	ld   [bc], a                                     ; $7584: $02
	cp   b                                           ; $7585: $b8
	ld   [bc], a                                     ; $7586: $02
	di                                               ; $7587: $f3
	rst  $38                                         ; $7588: $ff
	rst  $38                                         ; $7589: $ff
	dec  c                                           ; $758a: $0d
	ld   e, c                                        ; $758b: $59
	sbc  l                                           ; $758c: $9d
	ld   d, d                                        ; $758d: $52
	ld   d, d                                        ; $758e: $52
	and  c                                           ; $758f: $a1
	ld   [hl], l                                     ; $7590: $75
	ld   h, l                                        ; $7591: $65
	sub  l                                           ; $7592: $95
	ld   d, h                                        ; $7593: $54
	ld   a, e                                        ; $7594: $7b
	db   $fc                                         ; $7595: $fc
	dec  c                                           ; $7596: $0d
	nop                                              ; $7597: $00
	ld   a, [bc]                                     ; $7598: $0a
	inc  e                                           ; $7599: $1c
	ld   bc, $0505                                   ; $759a: $01 $05 $05
	dec  e                                           ; $759d: $1d
	ld   b, b                                        ; $759e: $40
	ld   de, $1103                                   ; $759f: $11 $03 $11
	ld   bc, $2803                                   ; $75a2: $01 $03 $28
	nop                                              ; $75a5: $00
	ld   bc, $9e6b                                   ; $75a6: $01 $6b $9e
	ld   l, e                                        ; $75a9: $6b
	ld   d, h                                        ; $75aa: $54
	ld   [hl], l                                     ; $75ab: $75
	ld   h, a                                        ; $75ac: $67
	ld   e, c                                        ; $75ad: $59
	rst  $38                                         ; $75ae: $ff
	rst  $38                                         ; $75af: $ff

Call_04b_75b0:
	dec  c                                           ; $75b0: $0d
	nop                                              ; $75b1: $00
	ld   a, [bc]                                     ; $75b2: $0a
	ld   b, $1e                                      ; $75b3: $06 $1e
	inc  b                                           ; $75b5: $04
	rrca                                             ; $75b6: $0f
	nop                                              ; $75b7: $00
	ld   bc, $bc01                                   ; $75b8: $01 $01 $bc
	db   $ec                                         ; $75bb: $ec
	sub  $50                                         ; $75bc: $d6 $50
	sbc  c                                           ; $75be: $99
	and  c                                           ; $75bf: $a1
	ld   [hl], l                                     ; $75c0: $75
	ld   h, a                                        ; $75c1: $67
	ld   e, c                                        ; $75c2: $59
	ld   sp, hl                                      ; $75c3: $f9
	dec  c                                           ; $75c4: $0d
	nop                                              ; $75c5: $00
	ld   a, [bc]                                     ; $75c6: $0a
	inc  e                                           ; $75c7: $1c
	ld   bc, $0202                                   ; $75c8: $01 $02 $02
	dec  e                                           ; $75cb: $1d
	ld   b, b                                        ; $75cc: $40
	ld   de, $1103                                   ; $75cd: $11 $03 $11
	ld   bc, $2901                                   ; $75d0: $01 $01 $29
	nop                                              ; $75d3: $00
	ld   bc, $9850                                   ; $75d4: $01 $50 $98
	adc  h                                           ; $75d7: $8c
	ld   h, a                                        ; $75d8: $67
	sub  [hl]                                        ; $75d9: $96
	ld   a, [$000d]                                  ; $75da: $fa $0d $00
	ld   a, [bc]                                     ; $75dd: $0a
	inc  e                                           ; $75de: $1c
	ld   bc, $0000                                   ; $75df: $01 $00 $00
	ld   b, $1e                                      ; $75e2: $06 $1e
	inc  b                                           ; $75e4: $04
	inc  e                                           ; $75e5: $1c
	ld   bc, $0606                                   ; $75e6: $01 $06 $06
	dec  e                                           ; $75e9: $1d
	ld   b, b                                        ; $75ea: $40
	ld   de, $1103                                   ; $75eb: $11 $03 $11
	ld   bc, $2901                                   ; $75ee: $01 $01 $29
	nop                                              ; $75f1: $00
	ld   bc, $9a6b                                   ; $75f2: $01 $6b $9a
	ld   a, l                                        ; $75f5: $7d
	sbc  [hl]                                        ; $75f6: $9e
	inc  bc                                          ; $75f7: $03
	ld   b, h                                        ; $75f8: $44
	inc  b                                           ; $75f9: $04
	db   $ec                                         ; $75fa: $ec
	halt                                             ; $75fb: $76
	ld   e, c                                        ; $75fc: $59
	ld   a, c                                        ; $75fd: $79
	ld   e, l                                        ; $75fe: $5d
	sub  a                                           ; $75ff: $97
	add  a                                           ; $7600: $87
	sbc  c                                           ; $7601: $99
	halt                                             ; $7602: $76
	dec  c                                           ; $7603: $0d
	inc  bc                                          ; $7604: $03
	ld   l, h                                        ; $7605: $6c
	ld   a, b                                        ; $7606: $78
	ld   d, d                                        ; $7607: $52
	ld   [hl], l                                     ; $7608: $75
	ld   h, a                                        ; $7609: $67
	ld   e, a                                        ; $760a: $5f
	ld   [hl], a                                     ; $760b: $77
	rst  $38                                         ; $760c: $ff
	rst  $38                                         ; $760d: $ff
	dec  c                                           ; $760e: $0d
	nop                                              ; $760f: $00
	ld   a, [bc]                                     ; $7610: $0a
	ld   b, $1e                                      ; $7611: $06 $1e
	inc  b                                           ; $7613: $04
	inc  e                                           ; $7614: $1c
	ld   bc, $0000                                   ; $7615: $01 $00 $00
	ld   bc, $a502                                   ; $7618: $01 $02 $a5
	inc  b                                           ; $761b: $04
	add  hl, hl                                      ; $761c: $29
	ld   a, h                                        ; $761d: $7c
	ld   [bc], a                                     ; $761e: $02
	sbc  c                                           ; $761f: $99
	ld   [bc], a                                     ; $7620: $02
	rra                                              ; $7621: $1f
	ld   a, l                                        ; $7622: $7d
	inc  b                                           ; $7623: $04
	ld   c, e                                        ; $7624: $4b
	inc  b                                           ; $7625: $04
	ldh  a, [c]                                      ; $7626: $f2
	ld   [bc], a                                     ; $7627: $02
	sub  a                                           ; $7628: $97
	ld   a, b                                        ; $7629: $78
	ld   a, h                                        ; $762a: $7c
	ld   [hl], l                                     ; $762b: $75
	dec  c                                           ; $762c: $0d
	ld   h, a                                        ; $762d: $67
	adc  l                                           ; $762e: $8d
	sbc  d                                           ; $762f: $9a
	ld   h, e                                        ; $7630: $63
	and  c                                           ; $7631: $a1
	halt                                             ; $7632: $76
	xor  h                                           ; $7633: $ac
	push af                                          ; $7634: $f5
	bit  4, e                                        ; $7635: $cb $63
	and  c                                           ; $7637: $a1
	ld   e, d                                        ; $7638: $5a
	dec  c                                           ; $7639: $0d
	db   $e3                                         ; $763a: $e3
	and  l                                           ; $763b: $a5
	push af                                          ; $763c: $f5
	ld   a, b                                        ; $763d: $78
	and  c                                           ; $763e: $a1
	ld   [hl], l                                     ; $763f: $75
	ld   h, a                                        ; $7640: $67
	sub  [hl]                                        ; $7641: $96
	sbc  a                                           ; $7642: $9f
	dec  c                                           ; $7643: $0d
	nop                                              ; $7644: $00
	ld   a, [bc]                                     ; $7645: $0a
	inc  e                                           ; $7646: $1c
	ld   bc, $0000                                   ; $7647: $01 $00 $00
	ld   bc, $9166                                   ; $764a: $01 $66 $91
	sbc  [hl]                                        ; $764d: $9e
	ld   d, b                                        ; $764e: $50
	ld   l, l                                        ; $764f: $6d
	ld   h, l                                        ; $7650: $65
	inc  b                                           ; $7651: $04
	sub  l                                           ; $7652: $95
	ld   [bc], a                                     ; $7653: $02
	ld   hl, $0479                                   ; $7654: $21 $79 $04
	jp   Jump_04b_7471                               ; $7657: $c3 $71 $74


	dec  c                                           ; $765a: $0d
	inc  b                                           ; $765b: $04
	inc  c                                           ; $765c: $0c
	inc  b                                           ; $765d: $04
	adc  a                                           ; $765e: $8f
	and  b                                           ; $765f: $a0
	inc  b                                           ; $7660: $04
	ld   de, $75a1                                   ; $7661: $11 $a1 $75
	adc  h                                           ; $7664: $8c
	ld   h, a                                        ; $7665: $67
	ld   e, c                                        ; $7666: $59
	sub  a                                           ; $7667: $97
	rst  $38                                         ; $7668: $ff
	rst  $38                                         ; $7669: $ff
	dec  c                                           ; $766a: $0d
	nop                                              ; $766b: $00
	ld   a, [bc]                                     ; $766c: $0a
	dec  c                                           ; $766d: $0d
	nop                                              ; $766e: $00
	nop                                              ; $766f: $00
	rrca                                             ; $7670: $0f
	nop                                              ; $7671: $00
	ld   bc, $1e09                                   ; $7672: $01 $09 $1e
	nop                                              ; $7675: $00
	rrca                                             ; $7676: $0f
	nop                                              ; $7677: $00
	ld   bc, $0401                                   ; $7678: $01 $01 $04
	adc  [hl]                                        ; $767b: $8e
	inc  b                                           ; $767c: $04
	inc  c                                           ; $767d: $0c
	ld   [hl], c                                     ; $767e: $71
	ld   [hl], h                                     ; $767f: $74
	dec  b                                           ; $7680: $05
	inc  de                                          ; $7681: $13
	ld   h, l                                        ; $7682: $65
	ld   d, d                                        ; $7683: $52
	ld   [hl], l                                     ; $7684: $75
	ld   h, a                                        ; $7685: $67
	ld   e, c                                        ; $7686: $59
	ld   sp, hl                                      ; $7687: $f9
	dec  c                                           ; $7688: $0d
	nop                                              ; $7689: $00
	ld   a, [bc]                                     ; $768a: $0a
	inc  e                                           ; $768b: $1c
	ld   bc, $0101                                   ; $768c: $01 $01 $01
	ld   bc, $5656                                   ; $768f: $01 $56 $56
	sbc  a                                           ; $7692: $9f
	dec  c                                           ; $7693: $0d
	ld   d, b                                        ; $7694: $50
	ld   l, l                                        ; $7695: $6d
	ld   h, l                                        ; $7696: $65
	ld   a, l                                        ; $7697: $7d
	inc  b                                           ; $7698: $04
	ld   c, $02                                      ; $7699: $0e $02
	sbc  d                                           ; $769b: $9a
	ld   e, e                                        ; $769c: $5b
	ld   [hl], l                                     ; $769d: $75
	ld   h, a                                        ; $769e: $67
	ld   a, [$000d]                                  ; $769f: $fa $0d $00
	ld   a, [bc]                                     ; $76a2: $0a
	add  hl, de                                      ; $76a3: $19
	dec  b                                           ; $76a4: $05
	inc  bc                                          ; $76a5: $03
	inc  b                                           ; $76a6: $04
	ld   l, l                                        ; $76a7: $6d
	sub  b                                           ; $76a8: $90
	inc  bc                                          ; $76a9: $03
	add  b                                           ; $76aa: $80
	ld   [hl], h                                     ; $76ab: $74
	adc  l                                           ; $76ac: $8d
	ld   l, l                                        ; $76ad: $6d
	ld   d, d                                        ; $76ae: $52
	ld   a, b                                        ; $76af: $78
	nop                                              ; $76b0: $00
	nop                                              ; $76b1: $00
	ld   h, [hl]                                     ; $76b2: $66
	sub  c                                           ; $76b3: $91
	ld   [bc], a                                     ; $76b4: $02
	sub  l                                           ; $76b5: $95
	ld   a, c                                        ; $76b6: $79
	ld   [bc], a                                     ; $76b7: $02
	ld   a, a                                        ; $76b8: $7f
	ld   e, e                                        ; $76b9: $5b
	adc  h                                           ; $76ba: $8c
	ld   h, a                                        ; $76bb: $67
	nop                                              ; $76bc: $00
	ld   bc, $6d04                                   ; $76bd: $01 $04 $6d
	ld   a, l                                        ; $76c0: $7d
	ld   e, e                                        ; $76c1: $5b
	sub  l                                           ; $76c2: $95
	ld   d, h                                        ; $76c3: $54
	adc  l                                           ; $76c4: $8d
	ld   a, b                                        ; $76c5: $78
	ld   d, d                                        ; $76c6: $52
	ld   [hl], l                                     ; $76c7: $75
	ld   h, a                                        ; $76c8: $67
	ld   e, a                                        ; $76c9: $5f
	ld   [hl], a                                     ; $76ca: $77
	nop                                              ; $76cb: $00
	ld   [bc], a                                     ; $76cc: $02
	rlca                                             ; $76cd: $07
	push af                                          ; $76ce: $f5
	inc  b                                           ; $76cf: $04
	ld   [bc], a                                     ; $76d0: $02
	inc  bc                                          ; $76d1: $03
	ld   bc, $2000                                   ; $76d2: $01 $00 $20
	nop                                              ; $76d5: $00
	rlca                                             ; $76d6: $07
	ld   c, l                                        ; $76d7: $4d
	dec  b                                           ; $76d8: $05
	ld   [bc], a                                     ; $76d9: $02
	inc  bc                                          ; $76da: $03
	ld   bc, $2001                                   ; $76db: $01 $01 $20
	nop                                              ; $76de: $00
	rlca                                             ; $76df: $07
	sbc  b                                           ; $76e0: $98
	dec  b                                           ; $76e1: $05
	ld   [bc], a                                     ; $76e2: $02
	inc  bc                                          ; $76e3: $03
	ld   bc, $2002                                   ; $76e4: $01 $02 $20
	nop                                              ; $76e7: $00
	ld   b, $05                                      ; $76e8: $06 $05
	ld   b, $0f                                      ; $76ea: $06 $0f
	nop                                              ; $76ec: $00
	ld   bc, $0401                                   ; $76ed: $01 $01 $04
	ld   l, l                                        ; $76f0: $6d
	sub  b                                           ; $76f1: $90
	inc  bc                                          ; $76f2: $03
	add  b                                           ; $76f3: $80
	ld   [hl], h                                     ; $76f4: $74
	adc  l                                           ; $76f5: $8d
	ld   l, l                                        ; $76f6: $6d
	ld   d, d                                        ; $76f7: $52
	ld   a, b                                        ; $76f8: $78
	sbc  a                                           ; $76f9: $9f
	dec  c                                           ; $76fa: $0d
	ld   l, e                                        ; $76fb: $6b
	ld   d, h                                        ; $76fc: $54
	ld   d, d                                        ; $76fd: $52
	ld   d, h                                        ; $76fe: $54
	ld   a, h                                        ; $76ff: $7c
	inc  b                                           ; $7700: $04
	ret  c                                           ; $7701: $d8

	inc  b                                           ; $7702: $04
	xor  h                                           ; $7703: $ac
	ld   l, e                                        ; $7704: $6b
	ld   d, h                                        ; $7705: $54
	ld   [hl], l                                     ; $7706: $75
	ld   h, a                                        ; $7707: $67
	sbc  a                                           ; $7708: $9f
	dec  c                                           ; $7709: $0d
	nop                                              ; $770a: $00
	ld   a, [bc]                                     ; $770b: $0a
	inc  e                                           ; $770c: $1c
	ld   bc, $0101                                   ; $770d: $01 $01 $01
	dec  e                                           ; $7710: $1d
	ld   b, b                                        ; $7711: $40
	ld   de, $1103                                   ; $7712: $11 $03 $11
	ld   bc, $2802                                   ; $7715: $01 $02 $28
	nop                                              ; $7718: $00
	ld   bc, $9166                                   ; $7719: $01 $66 $91
	sbc  [hl]                                        ; $771c: $9e
	ld   [$6300], sp                                 ; $771d: $08 $00 $63
	and  c                                           ; $7720: $a1
	ld   e, d                                        ; $7721: $5a
	dec  c                                           ; $7722: $0d
	inc  bc                                          ; $7723: $03
	ld   h, h                                        ; $7724: $64
	dec  b                                           ; $7725: $05
	db   $10                                         ; $7726: $10
	inc  b                                           ; $7727: $04
	db   $ec                                         ; $7728: $ec
	inc  bc                                          ; $7729: $03
	or   b                                           ; $772a: $b0
	ld   a, c                                        ; $772b: $79
	ld   a, b                                        ; $772c: $78
	ld   [hl], c                                     ; $772d: $71
	ld   l, l                                        ; $772e: $6d
	sub  a                                           ; $772f: $97
	dec  c                                           ; $7730: $0d
	ld   l, d                                        ; $7731: $6a
	add  b                                           ; $7732: $80
	ld   [bc], a                                     ; $7733: $02
	jp   c, $1f02                                    ; $7734: $da $02 $1f

	ld   h, l                                        ; $7737: $65
	adc  h                                           ; $7738: $8c
	ld   h, l                                        ; $7739: $65
	sub  l                                           ; $773a: $95
	ld   d, h                                        ; $773b: $54
	sbc  a                                           ; $773c: $9f
	dec  c                                           ; $773d: $0d
	nop                                              ; $773e: $00
	ld   a, [bc]                                     ; $773f: $0a
	ld   b, $05                                      ; $7740: $06 $05
	ld   b, $0f                                      ; $7742: $06 $0f
	nop                                              ; $7744: $00
	ld   bc, $6601                                   ; $7745: $01 $01 $66
	sub  c                                           ; $7748: $91
	ld   [bc], a                                     ; $7749: $02
	sub  l                                           ; $774a: $95
	ld   a, c                                        ; $774b: $79
	ld   [bc], a                                     ; $774c: $02
	ld   a, a                                        ; $774d: $7f
	ld   e, e                                        ; $774e: $5b
	adc  h                                           ; $774f: $8c
	ld   h, a                                        ; $7750: $67
	ld   e, c                                        ; $7751: $59
	sub  a                                           ; $7752: $97
	sbc  [hl]                                        ; $7753: $9e
	dec  c                                           ; $7754: $0d
	ld   e, d                                        ; $7755: $5a
	and  c                                           ; $7756: $a1
	ld   a, [hl]                                     ; $7757: $7e
	ld   [hl], c                                     ; $7758: $71
	ld   [hl], h                                     ; $7759: $74
	ld   [bc], a                                     ; $775a: $02
	inc  [hl]                                        ; $775b: $34
	ld   h, e                                        ; $775c: $63
	ld   d, d                                        ; $775d: $52
	ld   a, e                                        ; $775e: $7b
	sbc  a                                           ; $775f: $9f
	dec  c                                           ; $7760: $0d
	nop                                              ; $7761: $00
	ld   a, [bc]                                     ; $7762: $0a
	inc  e                                           ; $7763: $1c
	ld   bc, $0101                                   ; $7764: $01 $01 $01
	dec  e                                           ; $7767: $1d
	ld   b, b                                        ; $7768: $40
	ld   de, $1103                                   ; $7769: $11 $03 $11
	ld   bc, $2803                                   ; $776c: $01 $03 $28
	nop                                              ; $776f: $00
	ld   bc, $9850                                   ; $7770: $01 $50 $98
	ld   e, d                                        ; $7773: $5a
	halt                                             ; $7774: $76
	ld   d, h                                        ; $7775: $54
	ld   h, d                                        ; $7776: $62
	ld   h, h                                        ; $7777: $64
	ld   d, d                                        ; $7778: $52
	adc  h                                           ; $7779: $8c
	ld   h, a                                        ; $777a: $67
	ld   a, [$6a0d]                                  ; $777b: $fa $0d $6a
	add  b                                           ; $777e: $80
	ld   d, d                                        ; $777f: $52
	sub  a                                           ; $7780: $97
	ld   h, l                                        ; $7781: $65
	ld   [hl], h                                     ; $7782: $74
	ld   [bc], a                                     ; $7783: $02
	inc  [hl]                                        ; $7784: $34
	ld   h, e                                        ; $7785: $63
	ld   d, d                                        ; $7786: $52
	ld   a, [$000d]                                  ; $7787: $fa $0d $00
	ld   a, [bc]                                     ; $778a: $0a
	ld   b, $05                                      ; $778b: $06 $05
	ld   b, $0f                                      ; $778d: $06 $0f
	nop                                              ; $778f: $00
	ld   bc, $0401                                   ; $7790: $01 $01 $04
	ld   l, l                                        ; $7793: $6d
	ld   a, l                                        ; $7794: $7d
	ld   e, e                                        ; $7795: $5b
	sub  l                                           ; $7796: $95
	ld   d, h                                        ; $7797: $54
	adc  l                                           ; $7798: $8d
	ld   a, b                                        ; $7799: $78
	ld   d, d                                        ; $779a: $52
	ld   [hl], l                                     ; $779b: $75
	ld   h, a                                        ; $779c: $67
	ld   e, a                                        ; $779d: $5f
	ld   [hl], a                                     ; $779e: $77
	rst  $38                                         ; $779f: $ff
	rst  $38                                         ; $77a0: $ff
	dec  c                                           ; $77a1: $0d
	nop                                              ; $77a2: $00
	ld   a, [bc]                                     ; $77a3: $0a
	inc  e                                           ; $77a4: $1c
	ld   bc, $0404                                   ; $77a5: $01 $04 $04
	dec  e                                           ; $77a8: $1d
	ld   b, b                                        ; $77a9: $40
	ld   de, $1103                                   ; $77aa: $11 $03 $11
	ld   bc, $2901                                   ; $77ad: $01 $01 $29
	nop                                              ; $77b0: $00
	ld   bc, $546b                                   ; $77b1: $01 $6b $54
	ld   a, b                                        ; $77b4: $78
	and  c                                           ; $77b5: $a1
	ld   [hl], l                                     ; $77b6: $75
	ld   h, a                                        ; $77b7: $67
	ld   e, c                                        ; $77b8: $59
	rst  $38                                         ; $77b9: $ff
	rst  $38                                         ; $77ba: $ff
	dec  c                                           ; $77bb: $0d
	inc  bc                                          ; $77bc: $03
	jr   z, jr_04b_77c3                              ; $77bd: $28 $04

	ld   c, b                                        ; $77bf: $48
	ld   [hl], l                                     ; $77c0: $75
	ld   h, a                                        ; $77c1: $67
	ld   a, e                                        ; $77c2: $7b

jr_04b_77c3:
	rst  $38                                         ; $77c3: $ff
	rst  $38                                         ; $77c4: $ff
	dec  c                                           ; $77c5: $0d
	nop                                              ; $77c6: $00
	ld   a, [bc]                                     ; $77c7: $0a
	inc  e                                           ; $77c8: $1c
	ld   bc, $0000                                   ; $77c9: $01 $00 $00
	ld   bc, $9075                                   ; $77cc: $01 $75 $90
	sbc  [hl]                                        ; $77cf: $9e
	ld   [bc], a                                     ; $77d0: $02
	jr   nz, jr_04b_77d7                             ; $77d1: $20 $04

	add  hl, hl                                      ; $77d3: $29
	ld   [bc], a                                     ; $77d4: $02
	sub  l                                           ; $77d5: $95
	ld   a, c                                        ; $77d6: $79

jr_04b_77d7:
	dec  b                                           ; $77d7: $05
	db   $10                                         ; $77d8: $10
	ld   [hl], h                                     ; $77d9: $74
	ld   [bc], a                                     ; $77da: $02
	inc  [hl]                                        ; $77db: $34
	ld   h, e                                        ; $77dc: $63
	ld   d, d                                        ; $77dd: $52
	sbc  a                                           ; $77de: $9f
	dec  c                                           ; $77df: $0d
	ld   e, e                                        ; $77e0: $5b
	ld   [hl], c                                     ; $77e1: $71
	halt                                             ; $77e2: $76
	ld   e, e                                        ; $77e3: $5b
	sub  l                                           ; $77e4: $95
	ld   d, h                                        ; $77e5: $54
	adc  l                                           ; $77e6: $8d
	ld   e, d                                        ; $77e7: $5a
	sbc  l                                           ; $77e8: $9d
	ld   e, l                                        ; $77e9: $5d
	halt                                             ; $77ea: $76
	dec  c                                           ; $77eb: $0d
	dec  b                                           ; $77ec: $05
	pop  de                                          ; $77ed: $d1
	ld   d, d                                        ; $77ee: $52
	adc  h                                           ; $77ef: $8c
	ld   h, a                                        ; $77f0: $67
	ld   e, c                                        ; $77f1: $59
	sub  a                                           ; $77f2: $97
	rst  $38                                         ; $77f3: $ff
	rst  $38                                         ; $77f4: $ff
	dec  c                                           ; $77f5: $0d
	nop                                              ; $77f6: $00
	ld   a, [bc]                                     ; $77f7: $0a
	ld   b, $05                                      ; $77f8: $06 $05
	ld   b, $1c                                      ; $77fa: $06 $1c
	ld   bc, $0000                                   ; $77fc: $01 $00 $00
	ld   bc, $9166                                   ; $77ff: $01 $66 $91
	sbc  [hl]                                        ; $7802: $9e
	ld   d, b                                        ; $7803: $50
	ld   l, l                                        ; $7804: $6d
	ld   h, l                                        ; $7805: $65
	inc  b                                           ; $7806: $04
	sub  l                                           ; $7807: $95
	ld   [bc], a                                     ; $7808: $02
	ld   hl, $0479                                   ; $7809: $21 $79 $04
	jp   Jump_04b_7471                               ; $780c: $c3 $71 $74


	dec  c                                           ; $780f: $0d
	inc  b                                           ; $7810: $04
	inc  c                                           ; $7811: $0c
	inc  b                                           ; $7812: $04
	adc  a                                           ; $7813: $8f
	and  b                                           ; $7814: $a0
	inc  b                                           ; $7815: $04
	ld   de, $8c8d                                   ; $7816: $11 $8d $8c
	ld   h, a                                        ; $7819: $67
	ld   a, h                                        ; $781a: $7c
	ld   [hl], l                                     ; $781b: $75
	sbc  a                                           ; $781c: $9f
	dec  c                                           ; $781d: $0d
	nop                                              ; $781e: $00
	ld   a, [bc]                                     ; $781f: $0a
	dec  c                                           ; $7820: $0d
	nop                                              ; $7821: $00
	nop                                              ; $7822: $00
	rrca                                             ; $7823: $0f
	nop                                              ; $7824: $00
	ld   bc, $1e09                                   ; $7825: $01 $09 $1e
	nop                                              ; $7828: $00
	ld   bc, $0008                                   ; $7829: $01 $08 $00
	ld   h, e                                        ; $782c: $63
	and  c                                           ; $782d: $a1
	sbc  a                                           ; $782e: $9f
	dec  c                                           ; $782f: $0d
	ld   e, b                                        ; $7830: $58
	ld   a, l                                        ; $7831: $7d
	sub  [hl]                                        ; $7832: $96
	ld   d, h                                        ; $7833: $54
	ld   h, d                                        ; $7834: $62
	ld   h, h                                        ; $7835: $64
	ld   d, d                                        ; $7836: $52
	adc  h                                           ; $7837: $8c
	ld   h, a                                        ; $7838: $67
	sbc  a                                           ; $7839: $9f
	dec  c                                           ; $783a: $0d
	nop                                              ; $783b: $00
	ld   a, [bc]                                     ; $783c: $0a
	rrca                                             ; $783d: $0f
	nop                                              ; $783e: $00
	ld   bc, $5801                                   ; $783f: $01 $01 $58
	ld   a, l                                        ; $7842: $7d
	sub  [hl]                                        ; $7843: $96
	ld   d, h                                        ; $7844: $54
	ld   h, d                                        ; $7845: $62
	ld   h, h                                        ; $7846: $64
	ld   d, d                                        ; $7847: $52
	adc  h                                           ; $7848: $8c
	ld   h, a                                        ; $7849: $67
	sbc  a                                           ; $784a: $9f
	dec  c                                           ; $784b: $0d
	ld   h, e                                        ; $784c: $63
	ld   e, l                                        ; $784d: $5d
	sub  a                                           ; $784e: $97
	ld   h, e                                        ; $784f: $63
	and  c                                           ; $7850: $a1
	sbc  a                                           ; $7851: $9f
	dec  c                                           ; $7852: $0d
	nop                                              ; $7853: $00
	ld   a, [bc]                                     ; $7854: $0a
	ld   bc, $9258                                   ; $7855: $01 $58 $92
	ld   sp, hl                                      ; $7858: $f9

Jump_04b_7859:
	dec  c                                           ; $7859: $0d
	inc  bc                                          ; $785a: $03

Jump_04b_785b:
	ld   l, e                                        ; $785b: $6b
	ld   a, c                                        ; $785c: $79
	inc  bc                                          ; $785d: $03
	and  b                                           ; $785e: $a0
	ld   [hl], c                                     ; $785f: $71
	ld   [hl], h                                     ; $7860: $74
	ld   d, d                                        ; $7861: $52
	sub  a                                           ; $7862: $97
	ld   [hl], c                                     ; $7863: $71
	ld   h, l                                        ; $7864: $65
	sub  c                                           ; $7865: $91
	sbc  c                                           ; $7866: $99
	dec  c                                           ; $7867: $0d
	sub  b                                           ; $7868: $90
	ld   a, h                                        ; $7869: $7c
	ld   a, l                                        ; $786a: $7d
	inc  b                                           ; $786b: $04
	inc  c                                           ; $786c: $0c
	inc  b                                           ; $786d: $04
	adc  a                                           ; $786e: $8f
	ld   [hl], l                                     ; $786f: $75
	ld   h, a                                        ; $7870: $67
	ld   a, e                                        ; $7871: $7b
	sbc  a                                           ; $7872: $9f
	dec  c                                           ; $7873: $0d
	nop                                              ; $7874: $00
	ld   a, [bc]                                     ; $7875: $0a
	inc  e                                           ; $7876: $1c
	ld   bc, $0000                                   ; $7877: $01 $00 $00
	ld   bc, $546b                                   ; $787a: $01 $6b $54
	ld   [hl], l                                     ; $787d: $75
	ld   h, a                                        ; $787e: $67
	sub  [hl]                                        ; $787f: $96
	sbc  a                                           ; $7880: $9f
	dec  c                                           ; $7881: $0d
	nop                                              ; $7882: $00
	ld   a, [bc]                                     ; $7883: $0a
	rrca                                             ; $7884: $0f
	nop                                              ; $7885: $00
	ld   bc, $0101                                   ; $7886: $01 $01 $01
	inc  bc                                          ; $7889: $03
	ld   a, b                                        ; $788a: $78
	ld   a, c                                        ; $788b: $79
	and  b                                           ; $788c: $a0
	ld   [bc], a                                     ; $788d: $02
	jp   nz, Jump_04b_5461                           ; $788e: $c2 $61 $54

	ld   e, c                                        ; $7891: $59
	ld   a, b                                        ; $7892: $78
	rst  $38                                         ; $7893: $ff
	rst  $38                                         ; $7894: $ff
	ld   bc, $0d04                                   ; $7895: $01 $04 $0d
	nop                                              ; $7898: $00
	ld   a, [bc]                                     ; $7899: $0a
	add  hl, de                                      ; $789a: $19
	dec  b                                           ; $789b: $05
	inc  bc                                          ; $789c: $03
	ld   [bc], a                                     ; $789d: $02
	rra                                              ; $789e: $1f
	inc  b                                           ; $789f: $04
	call nc, Call_04b_7279                           ; $78a0: $d4 $79 $72
	ld   d, d                                        ; $78a3: $52
	ld   [hl], h                                     ; $78a4: $74
	ld   [bc], a                                     ; $78a5: $02
	jp   nz, $005d                                   ; $78a6: $c2 $5d $00

	nop                                              ; $78a9: $00
	inc  b                                           ; $78aa: $04
	db   $ec                                         ; $78ab: $ec
	ld   a, c                                        ; $78ac: $79
	ld   [hl], d                                     ; $78ad: $72
	ld   d, d                                        ; $78ae: $52
	ld   [hl], h                                     ; $78af: $74
	ld   [bc], a                                     ; $78b0: $02
	jp   nz, $005d                                   ; $78b1: $c2 $5d $00

	ld   bc, $8e04                                   ; $78b4: $01 $04 $8e
	inc  b                                           ; $78b7: $04
	inc  c                                           ; $78b8: $0c
	ld   a, c                                        ; $78b9: $79
	ld   [hl], d                                     ; $78ba: $72
	ld   d, d                                        ; $78bb: $52
	ld   [hl], h                                     ; $78bc: $74
	ld   [bc], a                                     ; $78bd: $02
	jp   nz, $005d                                   ; $78be: $c2 $5d $00

	ld   [bc], a                                     ; $78c1: $02
	rlca                                             ; $78c2: $07
	ld   a, [de]                                     ; $78c3: $1a
	rlca                                             ; $78c4: $07
	ld   [bc], a                                     ; $78c5: $02
	inc  bc                                          ; $78c6: $03
	ld   bc, $2000                                   ; $78c7: $01 $00 $20
	nop                                              ; $78ca: $00
	rlca                                             ; $78cb: $07
	db   $fc                                         ; $78cc: $fc
	ld   [$0302], sp                                 ; $78cd: $08 $02 $03
	ld   bc, $2001                                   ; $78d0: $01 $01 $20
	nop                                              ; $78d3: $00
	rlca                                             ; $78d4: $07
	ld   a, l                                        ; $78d5: $7d
	ld   a, [bc]                                     ; $78d6: $0a
	ld   [bc], a                                     ; $78d7: $02
	inc  bc                                          ; $78d8: $03
	ld   bc, $2002                                   ; $78d9: $01 $02 $20
	nop                                              ; $78dc: $00
	ld   b, $ea                                      ; $78dd: $06 $ea
	ld   b, $1c                                      ; $78df: $06 $1c
	ld   bc, $0101                                   ; $78e1: $01 $01 $01
	ld   bc, $9166                                   ; $78e4: $01 $66 $91
	sbc  [hl]                                        ; $78e7: $9e
	ld   d, b                                        ; $78e8: $50
	ld   l, l                                        ; $78e9: $6d
	ld   h, l                                        ; $78ea: $65
	inc  b                                           ; $78eb: $04
	sub  l                                           ; $78ec: $95
	ld   [bc], a                                     ; $78ed: $02
	ld   hl, $0479                                   ; $78ee: $21 $79 $04
	jp   Jump_04b_7471                               ; $78f1: $c3 $71 $74


	dec  c                                           ; $78f4: $0d
	inc  b                                           ; $78f5: $04
	inc  c                                           ; $78f6: $0c
	inc  b                                           ; $78f7: $04
	adc  a                                           ; $78f8: $8f
	and  b                                           ; $78f9: $a0
	inc  b                                           ; $78fa: $04
	ld   de, $75a1                                   ; $78fb: $11 $a1 $75
	adc  h                                           ; $78fe: $8c
	ld   h, a                                        ; $78ff: $67
	ld   e, c                                        ; $7900: $59
	sub  a                                           ; $7901: $97
	rst  $38                                         ; $7902: $ff
	rst  $38                                         ; $7903: $ff
	dec  c                                           ; $7904: $0d
	nop                                              ; $7905: $00
	ld   a, [bc]                                     ; $7906: $0a
	dec  c                                           ; $7907: $0d
	nop                                              ; $7908: $00
	nop                                              ; $7909: $00
	rrca                                             ; $790a: $0f
	nop                                              ; $790b: $00
	ld   bc, $1e09                                   ; $790c: $01 $09 $1e
	nop                                              ; $790f: $00
	rrca                                             ; $7910: $0f
	nop                                              ; $7911: $00
	ld   bc, $0201                                   ; $7912: $01 $01 $02
	rra                                              ; $7915: $1f
	inc  b                                           ; $7916: $04
	call nc, $047d                                   ; $7917: $d4 $7d $04
	ld   c, e                                        ; $791a: $4b
	inc  b                                           ; $791b: $04
	ldh  a, [c]                                      ; $791c: $f2
	ld   [bc], a                                     ; $791d: $02
	sub  a                                           ; $791e: $97
	ld   a, b                                        ; $791f: $78
	and  c                                           ; $7920: $a1
	ld   [hl], l                                     ; $7921: $75
	ld   h, a                                        ; $7922: $67
	sub  [hl]                                        ; $7923: $96
	ld   a, e                                        ; $7924: $7b
	sbc  a                                           ; $7925: $9f
	dec  c                                           ; $7926: $0d
	nop                                              ; $7927: $00
	ld   a, [bc]                                     ; $7928: $0a
	inc  e                                           ; $7929: $1c
	ld   bc, $0000                                   ; $792a: $01 $00 $00
	ld   bc, $5656                                   ; $792d: $01 $56 $56
	sbc  [hl]                                        ; $7930: $9e
	ld   l, e                                        ; $7931: $6b
	ld   d, h                                        ; $7932: $54
	ld   [hl], l                                     ; $7933: $75
	ld   h, a                                        ; $7934: $67
	sub  [hl]                                        ; $7935: $96
	sbc  a                                           ; $7936: $9f
	dec  c                                           ; $7937: $0d
	ld   [hl], a                                     ; $7938: $77
	ld   d, h                                        ; $7939: $54
	ld   d, d                                        ; $793a: $52
	ld   d, h                                        ; $793b: $54
	ld   e, b                                        ; $793c: $58
	dec  b                                           ; $793d: $05
	jr   nz, jr_04b_7999                             ; $793e: $20 $59

	sbc  [hl]                                        ; $7940: $9e
	inc  b                                           ; $7941: $04
	dec  hl                                          ; $7942: $2b
	ld   [hl], c                                     ; $7943: $71
	ld   [hl], h                                     ; $7944: $74
	dec  c                                           ; $7945: $0d
	adc  h                                           ; $7946: $8c
	ld   h, a                                        ; $7947: $67
	ld   e, c                                        ; $7948: $59
	ld   sp, hl                                      ; $7949: $f9
	dec  c                                           ; $794a: $0d
	nop                                              ; $794b: $00
	ld   a, [bc]                                     ; $794c: $0a
	add  hl, de                                      ; $794d: $19
	dec  b                                           ; $794e: $05
	inc  bc                                          ; $794f: $03
	inc  bc                                          ; $7950: $03
	ld   d, b                                        ; $7951: $50
	ld   [bc], a                                     ; $7952: $02
	ld   a, h                                        ; $7953: $7c
	ld   [bc], a                                     ; $7954: $02
	or   [hl]                                        ; $7955: $b6
	ld   e, d                                        ; $7956: $5a
	inc  bc                                          ; $7957: $03
	add  b                                           ; $7958: $80
	sbc  c                                           ; $7959: $99
	dec  b                                           ; $795a: $05
	jr   nz, jr_04b_79d2                             ; $795b: $20 $75

	ld   h, a                                        ; $795d: $67
	sub  [hl]                                        ; $795e: $96
	ld   a, e                                        ; $795f: $7b
	ld   sp, hl                                      ; $7960: $f9
	nop                                              ; $7961: $00
	nop                                              ; $7962: $00
	inc  bc                                          ; $7963: $03
	inc  sp                                          ; $7964: $33
	ld   [hl], d                                     ; $7965: $72
	ld   a, h                                        ; $7966: $7c
	ld   [bc], a                                     ; $7967: $02
	adc  a                                           ; $7968: $8f
	ld   e, d                                        ; $7969: $5a
	dec  b                                           ; $796a: $05
	jp   c, $0554                                    ; $796b: $da $54 $05

	jr   nz, jr_04b_79e5                             ; $796e: $20 $75

	ld   h, a                                        ; $7970: $67
	sub  [hl]                                        ; $7971: $96
	ld   a, e                                        ; $7972: $7b
	ld   sp, hl                                      ; $7973: $f9
	nop                                              ; $7974: $00
	ld   bc, $3903                                   ; $7975: $01 $03 $39
	ld   [bc], a                                     ; $7978: $02
	add  d                                           ; $7979: $82
	dec  b                                           ; $797a: $05
	db   $eb                                         ; $797b: $eb
	ld   bc, $7c14                                   ; $797c: $01 $14 $7c
	dec  b                                           ; $797f: $05
	jr   nz, @-$6c                                   ; $7980: $20 $92

	inc  b                                           ; $7982: $04
	adc  h                                           ; $7983: $8c
	ld   [bc], a                                     ; $7984: $02
	ld   d, c                                        ; $7985: $51
	and  b                                           ; $7986: $a0
	rst  $38                                         ; $7987: $ff
	rst  $38                                         ; $7988: $ff
	nop                                              ; $7989: $00
	ld   [bc], a                                     ; $798a: $02
	rlca                                             ; $798b: $07
	or   e                                           ; $798c: $b3
	rlca                                             ; $798d: $07
	ld   [bc], a                                     ; $798e: $02
	inc  bc                                          ; $798f: $03
	ld   bc, $2000                                   ; $7990: $01 $00 $20
	nop                                              ; $7993: $00
	rlca                                             ; $7994: $07
	ld   hl, sp+$07                                  ; $7995: $f8 $07
	ld   [bc], a                                     ; $7997: $02
	inc  bc                                          ; $7998: $03

jr_04b_7999:
	ld   bc, $2001                                   ; $7999: $01 $01 $20
	nop                                              ; $799c: $00
	rlca                                             ; $799d: $07
	inc  l                                           ; $799e: $2c
	ld   [$0302], sp                                 ; $799f: $08 $02 $03
	ld   bc, $2002                                   ; $79a2: $01 $02 $20
	nop                                              ; $79a5: $00
	ld   b, $a8                                      ; $79a6: $06 $a8
	ld   [$000f], sp                                 ; $79a8: $08 $0f $00
	ld   bc, $0301                                   ; $79ab: $01 $01 $03
	ld   d, b                                        ; $79ae: $50
	ld   [bc], a                                     ; $79af: $02
	ld   a, h                                        ; $79b0: $7c
	ld   [bc], a                                     ; $79b1: $02
	or   [hl]                                        ; $79b2: $b6
	ld   e, d                                        ; $79b3: $5a
	inc  bc                                          ; $79b4: $03
	add  b                                           ; $79b5: $80
	sbc  c                                           ; $79b6: $99
	dec  b                                           ; $79b7: $05
	jr   nz, jr_04b_7a2f                             ; $79b8: $20 $75

	ld   h, a                                        ; $79ba: $67
	sub  [hl]                                        ; $79bb: $96
	ld   a, e                                        ; $79bc: $7b
	ld   sp, hl                                      ; $79bd: $f9
	dec  c                                           ; $79be: $0d
	nop                                              ; $79bf: $00
	ld   a, [bc]                                     ; $79c0: $0a
	inc  e                                           ; $79c1: $1c
	ld   bc, $0101                                   ; $79c2: $01 $01 $01
	dec  e                                           ; $79c5: $1d
	ld   b, b                                        ; $79c6: $40
	ld   de, $1103                                   ; $79c7: $11 $03 $11
	ld   bc, $2802                                   ; $79ca: $01 $02 $28
	nop                                              ; $79cd: $00
	ld   bc, $527d                                   ; $79ce: $01 $7d $52
	sbc  a                                           ; $79d1: $9f

jr_04b_79d2:
	dec  c                                           ; $79d2: $0d
	xor  h                                           ; $79d3: $ac
	push af                                          ; $79d4: $f5
	bit  4, e                                        ; $79d5: $cb $63
	and  c                                           ; $79d7: $a1

Call_04b_79d8:
	ld   e, d                                        ; $79d8: $5a
	inc  bc                                          ; $79d9: $03
	ld   d, b                                        ; $79da: $50
	ld   [bc], a                                     ; $79db: $02
	ld   a, h                                        ; $79dc: $7c
	ld   [bc], a                                     ; $79dd: $02
	or   [hl]                                        ; $79de: $b6
	and  b                                           ; $79df: $a0
	dec  c                                           ; $79e0: $0d
	sub  d                                           ; $79e1: $92
	sbc  c                                           ; $79e2: $99
	and  c                                           ; $79e3: $a1
	ld   [hl], l                                     ; $79e4: $75

jr_04b_79e5:
	ld   h, a                                        ; $79e5: $67
	sub  [hl]                                        ; $79e6: $96
	sbc  a                                           ; $79e7: $9f
	dec  c                                           ; $79e8: $0d
	nop                                              ; $79e9: $00
	ld   a, [bc]                                     ; $79ea: $0a
	ld   b, $d0                                      ; $79eb: $06 $d0
	ld   [$000f], sp                                 ; $79ed: $08 $0f $00
	ld   bc, $0301                                   ; $79f0: $01 $01 $03
	inc  sp                                          ; $79f3: $33
	ld   [hl], d                                     ; $79f4: $72
	ld   a, h                                        ; $79f5: $7c
	ld   [bc], a                                     ; $79f6: $02
	adc  a                                           ; $79f7: $8f
	ld   e, d                                        ; $79f8: $5a
	dec  b                                           ; $79f9: $05
	jp   c, $0554                                    ; $79fa: $da $54 $05

	jr   nz, jr_04b_7a74                             ; $79fd: $20 $75

	ld   h, a                                        ; $79ff: $67
	sub  [hl]                                        ; $7a00: $96
	ld   a, e                                        ; $7a01: $7b

Call_04b_7a02:
	ld   sp, hl                                      ; $7a02: $f9
	dec  c                                           ; $7a03: $0d
	nop                                              ; $7a04: $00
	ld   a, [bc]                                     ; $7a05: $0a
	inc  e                                           ; $7a06: $1c
	ld   bc, $0303                                   ; $7a07: $01 $03 $03
	ld   bc, $6e92                                   ; $7a0a: $01 $92 $6e
	rst  $38                                         ; $7a0d: $ff
	rst  $38                                         ; $7a0e: $ff
	ld   l, e                                        ; $7a0f: $6b
	sbc  d                                           ; $7a10: $9a
	ld   a, l                                        ; $7a11: $7d
	inc  bc                                          ; $7a12: $03
	inc  sp                                          ; $7a13: $33
	ld   [bc], a                                     ; $7a14: $02
	adc  a                                           ; $7a15: $8f
	dec  b                                           ; $7a16: $05
	rst  $10                                         ; $7a17: $d7
	ld   [hl], l                                     ; $7a18: $75
	ld   h, a                                        ; $7a19: $67
	sub  [hl]                                        ; $7a1a: $96
	sbc  a                                           ; $7a1b: $9f
	dec  c                                           ; $7a1c: $0d
	nop                                              ; $7a1d: $00
	ld   a, [bc]                                     ; $7a1e: $0a
	ld   b, $a8                                      ; $7a1f: $06 $a8
	ld   [$000f], sp                                 ; $7a21: $08 $0f $00
	ld   bc, $0301                                   ; $7a24: $01 $01 $03
	add  hl, sp                                      ; $7a27: $39
	ld   [bc], a                                     ; $7a28: $02
	add  d                                           ; $7a29: $82
	dec  b                                           ; $7a2a: $05
	db   $eb                                         ; $7a2b: $eb
	ld   bc, $7c14                                   ; $7a2c: $01 $14 $7c

jr_04b_7a2f:
	dec  b                                           ; $7a2f: $05
	jr   nz, @-$6c                                   ; $7a30: $20 $92

	inc  b                                           ; $7a32: $04
	adc  h                                           ; $7a33: $8c
	ld   [bc], a                                     ; $7a34: $02
	ld   d, c                                        ; $7a35: $51
	and  b                                           ; $7a36: $a0
	inc  bc                                          ; $7a37: $03
	ld   d, l                                        ; $7a38: $55
	ld   d, d                                        ; $7a39: $52
	ld   l, l                                        ; $7a3a: $6d
	dec  c                                           ; $7a3b: $0d
	inc  bc                                          ; $7a3c: $03
	ld   d, l                                        ; $7a3d: $55
	inc  b                                           ; $7a3e: $04
	sub  d                                           ; $7a3f: $92
	ld   [hl], l                                     ; $7a40: $75
	ld   h, a                                        ; $7a41: $67
	sub  [hl]                                        ; $7a42: $96
	ld   a, e                                        ; $7a43: $7b
	ld   sp, hl                                      ; $7a44: $f9
	dec  c                                           ; $7a45: $0d
	nop                                              ; $7a46: $00
	ld   a, [bc]                                     ; $7a47: $0a
	inc  e                                           ; $7a48: $1c
	ld   bc, $0303                                   ; $7a49: $01 $03 $03
	ld   bc, $ff56                                   ; $7a4c: $01 $56 $ff
	rst  $38                                         ; $7a4f: $ff
	ld   l, a                                        ; $7a50: $6f
	ld   e, d                                        ; $7a51: $5a
	ld   d, d                                        ; $7a52: $52
	adc  h                                           ; $7a53: $8c
	ld   h, a                                        ; $7a54: $67
	ld   e, a                                        ; $7a55: $5f
	ld   [hl], a                                     ; $7a56: $77
	rst  $38                                         ; $7a57: $ff
	rst  $38                                         ; $7a58: $ff
	dec  c                                           ; $7a59: $0d
	ld   l, e                                        ; $7a5a: $6b
	sbc  d                                           ; $7a5b: $9a
	inc  b                                           ; $7a5c: $04
	ld   c, c                                        ; $7a5d: $49
	ld   [hl], l                                     ; $7a5e: $75
	ld   h, a                                        ; $7a5f: $67
	ld   e, c                                        ; $7a60: $59
	ld   sp, hl                                      ; $7a61: $f9
	dec  c                                           ; $7a62: $0d
	nop                                              ; $7a63: $00
	ld   a, [bc]                                     ; $7a64: $0a
	rrca                                             ; $7a65: $0f
	nop                                              ; $7a66: $00
	ld   bc, $0501                                   ; $7a67: $01 $01 $05
	ret  c                                           ; $7a6a: $d8

	inc  bc                                          ; $7a6b: $03
	ld   l, a                                        ; $7a6c: $6f
	ld   [bc], a                                     ; $7a6d: $02
	sub  a                                           ; $7a6e: $97
	ld   [hl], l                                     ; $7a6f: $75
	ld   h, a                                        ; $7a70: $67
	sbc  a                                           ; $7a71: $9f
	dec  c                                           ; $7a72: $0d
	nop                                              ; $7a73: $00

jr_04b_7a74:
	ld   a, [bc]                                     ; $7a74: $0a
	inc  e                                           ; $7a75: $1c
	ld   bc, $0303                                   ; $7a76: $01 $03 $03
	dec  e                                           ; $7a79: $1d
	ld   b, b                                        ; $7a7a: $40
	ld   de, $1103                                   ; $7a7b: $11 $03 $11
	ld   bc, $2801                                   ; $7a7e: $01 $01 $28
	nop                                              ; $7a81: $00
	ld   bc, $0008                                   ; $7a82: $01 $08 $00
	ld   h, e                                        ; $7a85: $63
	and  c                                           ; $7a86: $a1
	ld   [hl], h                                     ; $7a87: $74
	sbc  [hl]                                        ; $7a88: $9e
	ld   d, b                                        ; $7a89: $50
	sbc  c                                           ; $7a8a: $99
	inc  b                                           ; $7a8b: $04
	ret  c                                           ; $7a8c: $d8

	ld   [hl], l                                     ; $7a8d: $75
	ld   a, l                                        ; $7a8e: $7d
	dec  c                                           ; $7a8f: $0d
	inc  b                                           ; $7a90: $04
	sub  d                                           ; $7a91: $92
	inc  b                                           ; $7a92: $04
	dec  hl                                          ; $7a93: $2b
	sbc  b                                           ; $7a94: $98
	ld   a, b                                        ; $7a95: $78
	and  c                                           ; $7a96: $a1
	ld   [hl], l                                     ; $7a97: $75
	ld   h, a                                        ; $7a98: $67
	ld   a, e                                        ; $7a99: $7b
	sbc  a                                           ; $7a9a: $9f
	dec  c                                           ; $7a9b: $0d
	nop                                              ; $7a9c: $00
	ld   a, [bc]                                     ; $7a9d: $0a
	inc  e                                           ; $7a9e: $1c
	ld   bc, $0000                                   ; $7a9f: $01 $00 $00
	ld   bc, $4b04                                   ; $7aa2: $01 $04 $4b
	inc  b                                           ; $7aa5: $04
	ldh  a, [c]                                      ; $7aa6: $f2
	ld   [bc], a                                     ; $7aa7: $02
	sub  a                                           ; $7aa8: $97
	ld   a, l                                        ; $7aa9: $7d
	inc  bc                                          ; $7aaa: $03
	ld   d, b                                        ; $7aab: $50
	ld   [bc], a                                     ; $7aac: $02
	ld   a, h                                        ; $7aad: $7c
	ld   [bc], a                                     ; $7aae: $02
	or   [hl]                                        ; $7aaf: $b6
	ld   e, d                                        ; $7ab0: $5a
	ld   e, c                                        ; $7ab1: $59
	ld   [hl], d                                     ; $7ab2: $72
	sub  d                                           ; $7ab3: $92
	ld   e, l                                        ; $7ab4: $5d
	dec  c                                           ; $7ab5: $0d
	ld   h, a                                        ; $7ab6: $67
	sbc  c                                           ; $7ab7: $99
	dec  b                                           ; $7ab8: $05
	jr   nz, jr_04b_7b33                             ; $7ab9: $20 $78

	and  c                                           ; $7abb: $a1
	ld   [hl], l                                     ; $7abc: $75
	ld   h, a                                        ; $7abd: $67
	sub  [hl]                                        ; $7abe: $96
	sbc  a                                           ; $7abf: $9f
	dec  c                                           ; $7ac0: $0d
	nop                                              ; $7ac1: $00
	ld   a, [bc]                                     ; $7ac2: $0a
	ld   b, $d0                                      ; $7ac3: $06 $d0
	ld   [$6601], sp                                 ; $7ac5: $08 $01 $66
	sub  c                                           ; $7ac8: $91
	sbc  [hl]                                        ; $7ac9: $9e
	ld   d, b                                        ; $7aca: $50
	ld   l, l                                        ; $7acb: $6d
	ld   h, l                                        ; $7acc: $65
	inc  b                                           ; $7acd: $04
	sub  l                                           ; $7ace: $95
	ld   [bc], a                                     ; $7acf: $02
	ld   hl, $0479                                   ; $7ad0: $21 $79 $04
	jp   Jump_04b_7471                               ; $7ad3: $c3 $71 $74


	dec  c                                           ; $7ad6: $0d
	inc  b                                           ; $7ad7: $04
	inc  c                                           ; $7ad8: $0c
	inc  b                                           ; $7ad9: $04
	adc  a                                           ; $7ada: $8f
	and  b                                           ; $7adb: $a0
	inc  b                                           ; $7adc: $04
	ld   de, $75a1                                   ; $7add: $11 $a1 $75
	adc  h                                           ; $7ae0: $8c
	ld   h, a                                        ; $7ae1: $67
	ld   e, c                                        ; $7ae2: $59
	sub  a                                           ; $7ae3: $97
	rst  $38                                         ; $7ae4: $ff
	rst  $38                                         ; $7ae5: $ff
	dec  c                                           ; $7ae6: $0d
	nop                                              ; $7ae7: $00
	ld   a, [bc]                                     ; $7ae8: $0a
	dec  c                                           ; $7ae9: $0d
	nop                                              ; $7aea: $00
	nop                                              ; $7aeb: $00
	rrca                                             ; $7aec: $0f
	nop                                              ; $7aed: $00
	ld   bc, $1e09                                   ; $7aee: $01 $09 $1e
	nop                                              ; $7af1: $00
	rrca                                             ; $7af2: $0f
	nop                                              ; $7af3: $00
	ld   bc, $6301                                   ; $7af4: $01 $01 $63
	ld   e, l                                        ; $7af7: $5d
	sub  a                                           ; $7af8: $97
	ld   h, e                                        ; $7af9: $63
	and  c                                           ; $7afa: $a1
	ld   a, h                                        ; $7afb: $7c
	inc  b                                           ; $7afc: $04
	db   $ec                                         ; $7afd: $ec
	ld   a, l                                        ; $7afe: $7d
	sbc  [hl]                                        ; $7aff: $9e
	inc  b                                           ; $7b00: $04
	ld   a, [de]                                     ; $7b01: $1a
	ld   [bc], a                                     ; $7b02: $02
	cp   b                                           ; $7b03: $b8
	dec  c                                           ; $7b04: $0d
	ld   a, b                                        ; $7b05: $78
	and  c                                           ; $7b06: $a1
	ld   [hl], l                                     ; $7b07: $75
	ld   h, a                                        ; $7b08: $67
	sub  [hl]                                        ; $7b09: $96
	ld   a, e                                        ; $7b0a: $7b
	sbc  a                                           ; $7b0b: $9f
	dec  c                                           ; $7b0c: $0d
	nop                                              ; $7b0d: $00
	ld   a, [bc]                                     ; $7b0e: $0a
	inc  e                                           ; $7b0f: $1c
	ld   bc, $0000                                   ; $7b10: $01 $00 $00
	ld   bc, $5656                                   ; $7b13: $01 $56 $56
	sbc  [hl]                                        ; $7b16: $9e
	ld   l, e                                        ; $7b17: $6b
	ld   d, h                                        ; $7b18: $54
	ld   [hl], l                                     ; $7b19: $75
	ld   h, a                                        ; $7b1a: $67
	sub  [hl]                                        ; $7b1b: $96
	sbc  a                                           ; $7b1c: $9f
	dec  c                                           ; $7b1d: $0d
	nop                                              ; $7b1e: $00
	ld   a, [bc]                                     ; $7b1f: $0a
	add  hl, de                                      ; $7b20: $19
	dec  b                                           ; $7b21: $05
	ld   [bc], a                                     ; $7b22: $02
	sbc  l                                           ; $7b23: $9d
	ld   e, e                                        ; $7b24: $5b
	inc  b                                           ; $7b25: $04
	db   $ec                                         ; $7b26: $ec
	ld   a, b                                        ; $7b27: $78
	and  c                                           ; $7b28: $a1
	ld   [hl], l                                     ; $7b29: $75
	ld   h, a                                        ; $7b2a: $67
	ld   a, e                                        ; $7b2b: $7b
	nop                                              ; $7b2c: $00
	nop                                              ; $7b2d: $00
	dec  b                                           ; $7b2e: $05
	inc  de                                          ; $7b2f: $13
	ld   h, l                                        ; $7b30: $65
	adc  l                                           ; $7b31: $8d
	ld   [hl], l                                     ; $7b32: $75

jr_04b_7b33:
	ld   h, a                                        ; $7b33: $67
	ld   a, e                                        ; $7b34: $7b
	nop                                              ; $7b35: $00
	ld   bc, $5607                                   ; $7b36: $01 $07 $56
	add  hl, bc                                      ; $7b39: $09
	ld   [bc], a                                     ; $7b3a: $02
	inc  bc                                          ; $7b3b: $03
	ld   bc, $2000                                   ; $7b3c: $01 $00 $20
	nop                                              ; $7b3f: $00
	rlca                                             ; $7b40: $07
	call nc, $0209                                   ; $7b41: $d4 $09 $02
	inc  bc                                          ; $7b44: $03
	ld   bc, $2001                                   ; $7b45: $01 $01 $20
	nop                                              ; $7b48: $00
	ld   b, $1b                                      ; $7b49: $06 $1b
	ld   a, [bc]                                     ; $7b4b: $0a
	rrca                                             ; $7b4c: $0f
	nop                                              ; $7b4d: $00
	ld   bc, $6301                                   ; $7b4e: $01 $01 $63
	ld   e, l                                        ; $7b51: $5d
	sub  a                                           ; $7b52: $97
	ld   h, e                                        ; $7b53: $63
	and  c                                           ; $7b54: $a1
	sbc  [hl]                                        ; $7b55: $9e
	ld   l, l                                        ; $7b56: $6d
	ld   l, [hl]                                     ; $7b57: $6e
	ld   a, h                                        ; $7b58: $7c
	sbc  l                                           ; $7b59: $9d
	ld   e, e                                        ; $7b5a: $5b
	inc  b                                           ; $7b5b: $04
	db   $ec                                         ; $7b5c: $ec
	dec  c                                           ; $7b5d: $0d
	ld   a, b                                        ; $7b5e: $78
	and  c                                           ; $7b5f: $a1
	ld   [hl], l                                     ; $7b60: $75
	ld   h, a                                        ; $7b61: $67
	ld   a, e                                        ; $7b62: $7b
	sbc  a                                           ; $7b63: $9f
	dec  c                                           ; $7b64: $0d
	nop                                              ; $7b65: $00
	ld   a, [bc]                                     ; $7b66: $0a
	inc  e                                           ; $7b67: $1c
	ld   bc, $0202                                   ; $7b68: $01 $02 $02
	dec  e                                           ; $7b6b: $1d
	ld   b, b                                        ; $7b6c: $40
	ld   de, $1103                                   ; $7b6d: $11 $03 $11
	ld   bc, $2903                                   ; $7b70: $01 $03 $29
	nop                                              ; $7b73: $00
	ld   bc, $546b                                   ; $7b74: $01 $6b $54
	ld   e, c                                        ; $7b77: $59
	sub  b                                           ; $7b78: $90
	inc  b                                           ; $7b79: $04
	dec  hl                                          ; $7b7a: $2b
	sbc  d                                           ; $7b7b: $9a
	adc  h                                           ; $7b7c: $8c
	ld   l, c                                        ; $7b7d: $69
	and  c                                           ; $7b7e: $a1
	ld   e, a                                        ; $7b7f: $5f
	ld   [hl], a                                     ; $7b80: $77
	sbc  [hl]                                        ; $7b81: $9e
	dec  c                                           ; $7b82: $0d
	ld   [hl], a                                     ; $7b83: $77
	and  c                                           ; $7b84: $a1
	ld   a, b                                        ; $7b85: $78
	inc  b                                           ; $7b86: $04
	db   $ec                                         ; $7b87: $ec
	ld   [hl], l                                     ; $7b88: $75
	sub  b                                           ; $7b89: $90
	sub  d                                           ; $7b8a: $92
	sbc  b                                           ; $7b8b: $98
	ld   e, d                                        ; $7b8c: $5a
	ld   d, d                                        ; $7b8d: $52
	ld   a, l                                        ; $7b8e: $7d
	dec  c                                           ; $7b8f: $0d
	ld   d, b                                        ; $7b90: $50
	sbc  c                                           ; $7b91: $99
	and  c                                           ; $7b92: $a1
	ld   [hl], l                                     ; $7b93: $75
	ld   h, a                                        ; $7b94: $67
	sub  [hl]                                        ; $7b95: $96
	sbc  a                                           ; $7b96: $9f
	dec  c                                           ; $7b97: $0d
	nop                                              ; $7b98: $00
	ld   a, [bc]                                     ; $7b99: $0a
	inc  e                                           ; $7b9a: $1c
	ld   bc, $0707                                   ; $7b9b: $01 $07 $07
	ld   bc, $9166                                   ; $7b9e: $01 $66 $91
	sbc  [hl]                                        ; $7ba1: $9e
	ld   d, b                                        ; $7ba2: $50
	ld   l, l                                        ; $7ba3: $6d
	ld   h, l                                        ; $7ba4: $65
	inc  b                                           ; $7ba5: $04
	sub  l                                           ; $7ba6: $95
	ld   [bc], a                                     ; $7ba7: $02
	ld   hl, $0479                                   ; $7ba8: $21 $79 $04
	jp   Jump_04b_7471                               ; $7bab: $c3 $71 $74


	dec  c                                           ; $7bae: $0d
	inc  b                                           ; $7baf: $04
	inc  c                                           ; $7bb0: $0c
	inc  b                                           ; $7bb1: $04
	adc  a                                           ; $7bb2: $8f
	and  b                                           ; $7bb3: $a0
	inc  b                                           ; $7bb4: $04
	ld   de, $75a1                                   ; $7bb5: $11 $a1 $75
	adc  h                                           ; $7bb8: $8c
	ld   h, a                                        ; $7bb9: $67
	ld   e, c                                        ; $7bba: $59
	sub  a                                           ; $7bbb: $97
	rst  $38                                         ; $7bbc: $ff
	rst  $38                                         ; $7bbd: $ff
	dec  c                                           ; $7bbe: $0d
	nop                                              ; $7bbf: $00
	ld   a, [bc]                                     ; $7bc0: $0a
	dec  c                                           ; $7bc1: $0d
	nop                                              ; $7bc2: $00
	nop                                              ; $7bc3: $00
	rrca                                             ; $7bc4: $0f
	nop                                              ; $7bc5: $00
	ld   bc, $1e09                                   ; $7bc6: $01 $09 $1e
	nop                                              ; $7bc9: $00
	rrca                                             ; $7bca: $0f
	nop                                              ; $7bcb: $00
	ld   bc, $0501                                   ; $7bcc: $01 $01 $05
	inc  de                                          ; $7bcf: $13
	ld   h, l                                        ; $7bd0: $65
	adc  l                                           ; $7bd1: $8d
	ld   [hl], l                                     ; $7bd2: $75
	ld   h, a                                        ; $7bd3: $67
	ld   a, e                                        ; $7bd4: $7b
	sbc  a                                           ; $7bd5: $9f
	dec  c                                           ; $7bd6: $0d
	ld   h, e                                        ; $7bd7: $63
	ld   e, l                                        ; $7bd8: $5d
	sub  a                                           ; $7bd9: $97
	ld   h, e                                        ; $7bda: $63
	and  c                                           ; $7bdb: $a1
	ld   a, h                                        ; $7bdc: $7c
	inc  b                                           ; $7bdd: $04
	ld   a, [de]                                     ; $7bde: $1a
	ld   [bc], a                                     ; $7bdf: $02
	cp   b                                           ; $7be0: $b8
	ld   [bc], a                                     ; $7be1: $02
	di                                               ; $7be2: $f3
	rst  $38                                         ; $7be3: $ff
	rst  $38                                         ; $7be4: $ff
	dec  c                                           ; $7be5: $0d
	ld   e, c                                        ; $7be6: $59
	sbc  l                                           ; $7be7: $9d
	ld   d, d                                        ; $7be8: $52
	ld   d, d                                        ; $7be9: $52
	and  c                                           ; $7bea: $a1
	ld   [hl], l                                     ; $7beb: $75
	ld   h, l                                        ; $7bec: $65
	sub  l                                           ; $7bed: $95
	ld   d, h                                        ; $7bee: $54
	ld   a, e                                        ; $7bef: $7b
	db   $fc                                         ; $7bf0: $fc
	dec  c                                           ; $7bf1: $0d
	nop                                              ; $7bf2: $00
	ld   a, [bc]                                     ; $7bf3: $0a
	inc  e                                           ; $7bf4: $1c
	ld   bc, $0505                                   ; $7bf5: $01 $05 $05
	dec  e                                           ; $7bf8: $1d
	ld   b, b                                        ; $7bf9: $40
	ld   de, $1103                                   ; $7bfa: $11 $03 $11
	ld   bc, $2803                                   ; $7bfd: $01 $03 $28
	nop                                              ; $7c00: $00
	ld   bc, $9e6b                                   ; $7c01: $01 $6b $9e
	ld   l, e                                        ; $7c04: $6b
	ld   d, h                                        ; $7c05: $54
	ld   [hl], l                                     ; $7c06: $75
	ld   h, a                                        ; $7c07: $67
	ld   e, c                                        ; $7c08: $59
	rst  $38                                         ; $7c09: $ff
	rst  $38                                         ; $7c0a: $ff
	dec  c                                           ; $7c0b: $0d
	nop                                              ; $7c0c: $00
	ld   a, [bc]                                     ; $7c0d: $0a
	ld   b, $1b                                      ; $7c0e: $06 $1b
	ld   a, [bc]                                     ; $7c10: $0a
	inc  e                                           ; $7c11: $1c
	ld   bc, $0000                                   ; $7c12: $01 $00 $00
	ld   bc, $a502                                   ; $7c15: $01 $02 $a5
	inc  b                                           ; $7c18: $04
	add  hl, hl                                      ; $7c19: $29
	ld   a, h                                        ; $7c1a: $7c
	ld   [bc], a                                     ; $7c1b: $02
	sbc  c                                           ; $7c1c: $99
	ld   [bc], a                                     ; $7c1d: $02
	rra                                              ; $7c1e: $1f
	ld   a, l                                        ; $7c1f: $7d
	inc  b                                           ; $7c20: $04
	ld   c, e                                        ; $7c21: $4b
	inc  b                                           ; $7c22: $04
	ldh  a, [c]                                      ; $7c23: $f2
	ld   [bc], a                                     ; $7c24: $02
	sub  a                                           ; $7c25: $97
	ld   a, b                                        ; $7c26: $78
	ld   a, h                                        ; $7c27: $7c
	ld   [hl], l                                     ; $7c28: $75
	dec  c                                           ; $7c29: $0d
	ld   h, a                                        ; $7c2a: $67
	adc  l                                           ; $7c2b: $8d
	sbc  d                                           ; $7c2c: $9a
	ld   h, e                                        ; $7c2d: $63
	and  c                                           ; $7c2e: $a1
	halt                                             ; $7c2f: $76
	xor  h                                           ; $7c30: $ac
	push af                                          ; $7c31: $f5
	bit  4, e                                        ; $7c32: $cb $63
	and  c                                           ; $7c34: $a1
	ld   e, d                                        ; $7c35: $5a
	dec  c                                           ; $7c36: $0d
	db   $e3                                         ; $7c37: $e3
	and  l                                           ; $7c38: $a5
	push af                                          ; $7c39: $f5
	ld   a, b                                        ; $7c3a: $78
	and  c                                           ; $7c3b: $a1
	ld   [hl], l                                     ; $7c3c: $75
	ld   h, a                                        ; $7c3d: $67
	sub  [hl]                                        ; $7c3e: $96
	sbc  a                                           ; $7c3f: $9f
	dec  c                                           ; $7c40: $0d
	nop                                              ; $7c41: $00
	ld   a, [bc]                                     ; $7c42: $0a
	inc  e                                           ; $7c43: $1c
	ld   bc, $0000                                   ; $7c44: $01 $00 $00
	ld   bc, $9166                                   ; $7c47: $01 $66 $91
	sbc  [hl]                                        ; $7c4a: $9e
	ld   d, b                                        ; $7c4b: $50
	ld   l, l                                        ; $7c4c: $6d
	ld   h, l                                        ; $7c4d: $65
	inc  b                                           ; $7c4e: $04
	sub  l                                           ; $7c4f: $95
	ld   [bc], a                                     ; $7c50: $02
	ld   hl, $0479                                   ; $7c51: $21 $79 $04
	jp   Jump_04b_7471                               ; $7c54: $c3 $71 $74


	dec  c                                           ; $7c57: $0d
	inc  b                                           ; $7c58: $04
	inc  c                                           ; $7c59: $0c
	inc  b                                           ; $7c5a: $04
	adc  a                                           ; $7c5b: $8f
	and  b                                           ; $7c5c: $a0
	inc  b                                           ; $7c5d: $04
	ld   de, $75a1                                   ; $7c5e: $11 $a1 $75
	adc  h                                           ; $7c61: $8c
	ld   h, a                                        ; $7c62: $67
	ld   e, c                                        ; $7c63: $59
	sub  a                                           ; $7c64: $97
	rst  $38                                         ; $7c65: $ff
	rst  $38                                         ; $7c66: $ff
	dec  c                                           ; $7c67: $0d
	nop                                              ; $7c68: $00
	ld   a, [bc]                                     ; $7c69: $0a
	dec  c                                           ; $7c6a: $0d
	nop                                              ; $7c6b: $00
	nop                                              ; $7c6c: $00
	rrca                                             ; $7c6d: $0f
	nop                                              ; $7c6e: $00
	ld   bc, $1e09                                   ; $7c6f: $01 $09 $1e
	nop                                              ; $7c72: $00
	rrca                                             ; $7c73: $0f
	nop                                              ; $7c74: $00
	ld   bc, $0401                                   ; $7c75: $01 $01 $04
	adc  [hl]                                        ; $7c78: $8e
	inc  b                                           ; $7c79: $04
	inc  c                                           ; $7c7a: $0c
	ld   [hl], c                                     ; $7c7b: $71
	ld   [hl], h                                     ; $7c7c: $74
	dec  b                                           ; $7c7d: $05
	inc  de                                          ; $7c7e: $13
	ld   h, l                                        ; $7c7f: $65
	ld   d, d                                        ; $7c80: $52
	ld   [hl], l                                     ; $7c81: $75
	ld   h, a                                        ; $7c82: $67
	ld   e, c                                        ; $7c83: $59
	ld   sp, hl                                      ; $7c84: $f9
	dec  c                                           ; $7c85: $0d
	nop                                              ; $7c86: $00
	ld   a, [bc]                                     ; $7c87: $0a
	inc  e                                           ; $7c88: $1c
	ld   bc, $0101                                   ; $7c89: $01 $01 $01
	ld   bc, $5656                                   ; $7c8c: $01 $56 $56
	sbc  a                                           ; $7c8f: $9f
	dec  c                                           ; $7c90: $0d
	ld   d, b                                        ; $7c91: $50
	ld   l, l                                        ; $7c92: $6d
	ld   h, l                                        ; $7c93: $65
	ld   a, l                                        ; $7c94: $7d
	inc  b                                           ; $7c95: $04
	ld   c, $02                                      ; $7c96: $0e $02
	sbc  d                                           ; $7c98: $9a
	ld   e, e                                        ; $7c99: $5b
	ld   [hl], l                                     ; $7c9a: $75
	ld   h, a                                        ; $7c9b: $67
	ld   a, [$000d]                                  ; $7c9c: $fa $0d $00
	ld   a, [bc]                                     ; $7c9f: $0a
	add  hl, de                                      ; $7ca0: $19
	dec  b                                           ; $7ca1: $05
	inc  bc                                          ; $7ca2: $03
	inc  b                                           ; $7ca3: $04
	ld   l, l                                        ; $7ca4: $6d
	sub  b                                           ; $7ca5: $90
	inc  bc                                          ; $7ca6: $03
	add  b                                           ; $7ca7: $80
	ld   [hl], h                                     ; $7ca8: $74
	adc  l                                           ; $7ca9: $8d
	ld   l, l                                        ; $7caa: $6d
	ld   d, d                                        ; $7cab: $52
	ld   a, b                                        ; $7cac: $78
	nop                                              ; $7cad: $00
	nop                                              ; $7cae: $00
	ld   h, [hl]                                     ; $7caf: $66
	sub  c                                           ; $7cb0: $91
	ld   [bc], a                                     ; $7cb1: $02
	sub  l                                           ; $7cb2: $95
	ld   a, c                                        ; $7cb3: $79
	ld   [bc], a                                     ; $7cb4: $02
	ld   a, a                                        ; $7cb5: $7f
	ld   e, e                                        ; $7cb6: $5b
	adc  h                                           ; $7cb7: $8c
	ld   h, a                                        ; $7cb8: $67
	nop                                              ; $7cb9: $00
	ld   bc, $6d04                                   ; $7cba: $01 $04 $6d
	ld   a, l                                        ; $7cbd: $7d
	ld   e, e                                        ; $7cbe: $5b
	sub  l                                           ; $7cbf: $95
	ld   d, h                                        ; $7cc0: $54
	adc  l                                           ; $7cc1: $8d
	ld   a, b                                        ; $7cc2: $78
	ld   d, d                                        ; $7cc3: $52
	ld   [hl], l                                     ; $7cc4: $75
	ld   h, a                                        ; $7cc5: $67
	ld   e, a                                        ; $7cc6: $5f
	ld   [hl], a                                     ; $7cc7: $77
	nop                                              ; $7cc8: $00
	ld   [bc], a                                     ; $7cc9: $02
	rlca                                             ; $7cca: $07
	ldh  a, [c]                                      ; $7ccb: $f2
	ld   a, [bc]                                     ; $7ccc: $0a
	ld   [bc], a                                     ; $7ccd: $02
	inc  bc                                          ; $7cce: $03
	ld   bc, $2000                                   ; $7ccf: $01 $00 $20

Call_04b_7cd2:
	nop                                              ; $7cd2: $00
	rlca                                             ; $7cd3: $07
	ld   c, d                                        ; $7cd4: $4a
	dec  bc                                          ; $7cd5: $0b
	ld   [bc], a                                     ; $7cd6: $02
	inc  bc                                          ; $7cd7: $03
	ld   bc, $2001                                   ; $7cd8: $01 $01 $20
	nop                                              ; $7cdb: $00
	rlca                                             ; $7cdc: $07
	sub  l                                           ; $7cdd: $95
	dec  bc                                          ; $7cde: $0b
	ld   [bc], a                                     ; $7cdf: $02
	inc  bc                                          ; $7ce0: $03
	ld   bc, $2002                                   ; $7ce1: $01 $02 $20
	nop                                              ; $7ce4: $00
	ld   b, $02                                      ; $7ce5: $06 $02
	inc  c                                           ; $7ce7: $0c
	rrca                                             ; $7ce8: $0f
	nop                                              ; $7ce9: $00
	ld   bc, $0401                                   ; $7cea: $01 $01 $04
	ld   l, l                                        ; $7ced: $6d
	sub  b                                           ; $7cee: $90
	inc  bc                                          ; $7cef: $03
	add  b                                           ; $7cf0: $80
	ld   [hl], h                                     ; $7cf1: $74
	adc  l                                           ; $7cf2: $8d
	ld   l, l                                        ; $7cf3: $6d
	ld   d, d                                        ; $7cf4: $52
	ld   a, b                                        ; $7cf5: $78
	sbc  a                                           ; $7cf6: $9f
	dec  c                                           ; $7cf7: $0d
	ld   l, e                                        ; $7cf8: $6b
	ld   d, h                                        ; $7cf9: $54
	ld   d, d                                        ; $7cfa: $52
	ld   d, h                                        ; $7cfb: $54
	ld   a, h                                        ; $7cfc: $7c
	inc  b                                           ; $7cfd: $04
	ret  c                                           ; $7cfe: $d8

	inc  b                                           ; $7cff: $04
	xor  h                                           ; $7d00: $ac
	ld   l, e                                        ; $7d01: $6b
	ld   d, h                                        ; $7d02: $54
	ld   [hl], l                                     ; $7d03: $75
	ld   h, a                                        ; $7d04: $67
	sbc  a                                           ; $7d05: $9f
	dec  c                                           ; $7d06: $0d
	nop                                              ; $7d07: $00
	ld   a, [bc]                                     ; $7d08: $0a
	inc  e                                           ; $7d09: $1c
	ld   bc, $0101                                   ; $7d0a: $01 $01 $01
	dec  e                                           ; $7d0d: $1d
	ld   b, b                                        ; $7d0e: $40
	ld   de, $1103                                   ; $7d0f: $11 $03 $11
	ld   bc, $2802                                   ; $7d12: $01 $02 $28
	nop                                              ; $7d15: $00
	ld   bc, $9166                                   ; $7d16: $01 $66 $91
	sbc  [hl]                                        ; $7d19: $9e
	ld   [$6300], sp                                 ; $7d1a: $08 $00 $63
	and  c                                           ; $7d1d: $a1
	ld   e, d                                        ; $7d1e: $5a
	dec  c                                           ; $7d1f: $0d
	inc  bc                                          ; $7d20: $03
	ld   h, h                                        ; $7d21: $64
	dec  b                                           ; $7d22: $05
	db   $10                                         ; $7d23: $10
	inc  b                                           ; $7d24: $04
	db   $ec                                         ; $7d25: $ec
	inc  bc                                          ; $7d26: $03
	or   b                                           ; $7d27: $b0
	ld   a, c                                        ; $7d28: $79
	ld   a, b                                        ; $7d29: $78
	ld   [hl], c                                     ; $7d2a: $71
	ld   l, l                                        ; $7d2b: $6d
	sub  a                                           ; $7d2c: $97
	dec  c                                           ; $7d2d: $0d
	ld   l, d                                        ; $7d2e: $6a
	add  b                                           ; $7d2f: $80
	ld   [bc], a                                     ; $7d30: $02
	jp   c, $1f02                                    ; $7d31: $da $02 $1f

	ld   h, l                                        ; $7d34: $65
	adc  h                                           ; $7d35: $8c
	ld   h, l                                        ; $7d36: $65
	sub  l                                           ; $7d37: $95
	ld   d, h                                        ; $7d38: $54
	sbc  a                                           ; $7d39: $9f
	dec  c                                           ; $7d3a: $0d
	nop                                              ; $7d3b: $00
	ld   a, [bc]                                     ; $7d3c: $0a
	ld   b, $02                                      ; $7d3d: $06 $02
	inc  c                                           ; $7d3f: $0c
	rrca                                             ; $7d40: $0f
	nop                                              ; $7d41: $00
	ld   bc, $6601                                   ; $7d42: $01 $01 $66
	sub  c                                           ; $7d45: $91
	ld   [bc], a                                     ; $7d46: $02
	sub  l                                           ; $7d47: $95
	ld   a, c                                        ; $7d48: $79
	ld   [bc], a                                     ; $7d49: $02
	ld   a, a                                        ; $7d4a: $7f
	ld   e, e                                        ; $7d4b: $5b
	adc  h                                           ; $7d4c: $8c
	ld   h, a                                        ; $7d4d: $67
	ld   e, c                                        ; $7d4e: $59
	sub  a                                           ; $7d4f: $97
	sbc  [hl]                                        ; $7d50: $9e
	dec  c                                           ; $7d51: $0d
	ld   e, d                                        ; $7d52: $5a
	and  c                                           ; $7d53: $a1
	ld   a, [hl]                                     ; $7d54: $7e
	ld   [hl], c                                     ; $7d55: $71
	ld   [hl], h                                     ; $7d56: $74
	ld   [bc], a                                     ; $7d57: $02
	inc  [hl]                                        ; $7d58: $34
	ld   h, e                                        ; $7d59: $63
	ld   d, d                                        ; $7d5a: $52
	ld   a, e                                        ; $7d5b: $7b
	sbc  a                                           ; $7d5c: $9f
	dec  c                                           ; $7d5d: $0d
	nop                                              ; $7d5e: $00
	ld   a, [bc]                                     ; $7d5f: $0a
	inc  e                                           ; $7d60: $1c
	ld   bc, $0101                                   ; $7d61: $01 $01 $01
	dec  e                                           ; $7d64: $1d
	ld   b, b                                        ; $7d65: $40
	ld   de, $1103                                   ; $7d66: $11 $03 $11
	ld   bc, $2803                                   ; $7d69: $01 $03 $28
	nop                                              ; $7d6c: $00
	ld   bc, $9850                                   ; $7d6d: $01 $50 $98
	ld   e, d                                        ; $7d70: $5a
	halt                                             ; $7d71: $76
	ld   d, h                                        ; $7d72: $54
	ld   h, d                                        ; $7d73: $62
	ld   h, h                                        ; $7d74: $64
	ld   d, d                                        ; $7d75: $52
	adc  h                                           ; $7d76: $8c
	ld   h, a                                        ; $7d77: $67
	ld   a, [$6a0d]                                  ; $7d78: $fa $0d $6a
	add  b                                           ; $7d7b: $80
	ld   d, d                                        ; $7d7c: $52
	sub  a                                           ; $7d7d: $97
	ld   h, l                                        ; $7d7e: $65
	ld   [hl], h                                     ; $7d7f: $74
	ld   [bc], a                                     ; $7d80: $02
	inc  [hl]                                        ; $7d81: $34
	ld   h, e                                        ; $7d82: $63
	ld   d, d                                        ; $7d83: $52
	ld   a, [$000d]                                  ; $7d84: $fa $0d $00
	ld   a, [bc]                                     ; $7d87: $0a
	ld   b, $02                                      ; $7d88: $06 $02
	inc  c                                           ; $7d8a: $0c
	rrca                                             ; $7d8b: $0f
	nop                                              ; $7d8c: $00
	ld   bc, $0401                                   ; $7d8d: $01 $01 $04
	ld   l, l                                        ; $7d90: $6d
	ld   a, l                                        ; $7d91: $7d
	ld   e, e                                        ; $7d92: $5b
	sub  l                                           ; $7d93: $95
	ld   d, h                                        ; $7d94: $54
	adc  l                                           ; $7d95: $8d
	ld   a, b                                        ; $7d96: $78
	ld   d, d                                        ; $7d97: $52
	ld   [hl], l                                     ; $7d98: $75
	ld   h, a                                        ; $7d99: $67
	ld   e, a                                        ; $7d9a: $5f
	ld   [hl], a                                     ; $7d9b: $77
	rst  $38                                         ; $7d9c: $ff
	rst  $38                                         ; $7d9d: $ff
	dec  c                                           ; $7d9e: $0d
	nop                                              ; $7d9f: $00
	ld   a, [bc]                                     ; $7da0: $0a
	inc  e                                           ; $7da1: $1c
	ld   bc, $0404                                   ; $7da2: $01 $04 $04
	dec  e                                           ; $7da5: $1d
	ld   b, b                                        ; $7da6: $40
	ld   de, $1103                                   ; $7da7: $11 $03 $11
	ld   bc, $2901                                   ; $7daa: $01 $01 $29
	nop                                              ; $7dad: $00
	ld   bc, $546b                                   ; $7dae: $01 $6b $54
	ld   a, b                                        ; $7db1: $78
	and  c                                           ; $7db2: $a1
	ld   [hl], l                                     ; $7db3: $75
	ld   h, a                                        ; $7db4: $67
	ld   e, c                                        ; $7db5: $59
	rst  $38                                         ; $7db6: $ff
	rst  $38                                         ; $7db7: $ff
	dec  c                                           ; $7db8: $0d
	inc  bc                                          ; $7db9: $03
	jr   z, jr_04b_7dc0                              ; $7dba: $28 $04

	ld   c, b                                        ; $7dbc: $48
	ld   [hl], l                                     ; $7dbd: $75
	ld   h, a                                        ; $7dbe: $67
	ld   a, e                                        ; $7dbf: $7b

jr_04b_7dc0:
	rst  $38                                         ; $7dc0: $ff
	rst  $38                                         ; $7dc1: $ff
	dec  c                                           ; $7dc2: $0d
	nop                                              ; $7dc3: $00
	ld   a, [bc]                                     ; $7dc4: $0a
	inc  e                                           ; $7dc5: $1c
	ld   bc, $0000                                   ; $7dc6: $01 $00 $00
	ld   bc, $9075                                   ; $7dc9: $01 $75 $90
	sbc  [hl]                                        ; $7dcc: $9e
	ld   [bc], a                                     ; $7dcd: $02
	jr   nz, jr_04b_7dd4                             ; $7dce: $20 $04

	add  hl, hl                                      ; $7dd0: $29
	ld   [bc], a                                     ; $7dd1: $02
	sub  l                                           ; $7dd2: $95
	ld   a, c                                        ; $7dd3: $79

jr_04b_7dd4:
	dec  b                                           ; $7dd4: $05
	db   $10                                         ; $7dd5: $10
	ld   [hl], h                                     ; $7dd6: $74
	ld   [bc], a                                     ; $7dd7: $02
	inc  [hl]                                        ; $7dd8: $34
	ld   h, e                                        ; $7dd9: $63
	ld   d, d                                        ; $7dda: $52
	sbc  a                                           ; $7ddb: $9f
	dec  c                                           ; $7ddc: $0d
	ld   e, e                                        ; $7ddd: $5b
	ld   [hl], c                                     ; $7dde: $71
	halt                                             ; $7ddf: $76
	ld   e, e                                        ; $7de0: $5b
	sub  l                                           ; $7de1: $95
	ld   d, h                                        ; $7de2: $54
	adc  l                                           ; $7de3: $8d
	ld   e, d                                        ; $7de4: $5a
	sbc  l                                           ; $7de5: $9d
	ld   e, l                                        ; $7de6: $5d
	halt                                             ; $7de7: $76
	dec  c                                           ; $7de8: $0d
	dec  b                                           ; $7de9: $05
	pop  de                                          ; $7dea: $d1
	ld   d, d                                        ; $7deb: $52
	adc  h                                           ; $7dec: $8c
	ld   h, a                                        ; $7ded: $67
	ld   e, c                                        ; $7dee: $59
	sub  a                                           ; $7def: $97
	rst  $38                                         ; $7df0: $ff
	rst  $38                                         ; $7df1: $ff
	dec  c                                           ; $7df2: $0d
	nop                                              ; $7df3: $00
	ld   a, [bc]                                     ; $7df4: $0a
	ld   b, $02                                      ; $7df5: $06 $02
	inc  c                                           ; $7df7: $0c
	inc  e                                           ; $7df8: $1c
	ld   bc, $0000                                   ; $7df9: $01 $00 $00
	ld   bc, $9166                                   ; $7dfc: $01 $66 $91
	sbc  [hl]                                        ; $7dff: $9e
	ld   d, b                                        ; $7e00: $50
	ld   l, l                                        ; $7e01: $6d
	ld   h, l                                        ; $7e02: $65
	inc  b                                           ; $7e03: $04
	sub  l                                           ; $7e04: $95
	ld   [bc], a                                     ; $7e05: $02
	ld   hl, $0479                                   ; $7e06: $21 $79 $04
	jp   Jump_04b_7471                               ; $7e09: $c3 $71 $74


	dec  c                                           ; $7e0c: $0d
	inc  b                                           ; $7e0d: $04
	inc  c                                           ; $7e0e: $0c
	inc  b                                           ; $7e0f: $04
	adc  a                                           ; $7e10: $8f
	and  b                                           ; $7e11: $a0
	inc  b                                           ; $7e12: $04
	ld   de, $8c8d                                   ; $7e13: $11 $8d $8c
	ld   h, a                                        ; $7e16: $67
	ld   a, h                                        ; $7e17: $7c
	ld   [hl], l                                     ; $7e18: $75
	sbc  a                                           ; $7e19: $9f
	dec  c                                           ; $7e1a: $0d
	nop                                              ; $7e1b: $00
	ld   a, [bc]                                     ; $7e1c: $0a
	dec  c                                           ; $7e1d: $0d
	nop                                              ; $7e1e: $00
	nop                                              ; $7e1f: $00
	rrca                                             ; $7e20: $0f
	nop                                              ; $7e21: $00
	ld   bc, $1e09                                   ; $7e22: $01 $09 $1e
	nop                                              ; $7e25: $00
	nop                                              ; $7e26: $00
	inc  b                                           ; $7e27: $04
	add  b                                           ; $7e28: $80
	xor  c                                           ; $7e29: $a9
	ld   bc, $2000                                   ; $7e2a: $01 $00 $20
	nop                                              ; $7e2d: $00
	ld   c, $2f                                      ; $7e2e: $0e $2f
	inc  e                                           ; $7e30: $1c
	inc  c                                           ; $7e31: $0c
	nop                                              ; $7e32: $00
	nop                                              ; $7e33: $00
	ld   [bc], a                                     ; $7e34: $02
	ld   bc, $9750                                   ; $7e35: $01 $50 $97
	sbc  [hl]                                        ; $7e38: $9e
	ld   [$6300], sp                                 ; $7e39: $08 $00 $63
	and  c                                           ; $7e3c: $a1
	sbc  a                                           ; $7e3d: $9f
	dec  c                                           ; $7e3e: $0d
	nop                                              ; $7e3f: $00
	ld   a, [bc]                                     ; $7e40: $0a
	ld   bc, $8d67                                   ; $7e41: $01 $67 $8d
	sbc  d                                           ; $7e44: $9a
	ld   h, e                                        ; $7e45: $63
	and  c                                           ; $7e46: $a1
	ld   e, d                                        ; $7e47: $5a
	sbc  [hl]                                        ; $7e48: $9e
	dec  c                                           ; $7e49: $0d
	ld   [bc], a                                     ; $7e4a: $02
	and  l                                           ; $7e4b: $a5
	inc  b                                           ; $7e4c: $04
	xor  d                                           ; $7e4d: $aa
	ld   a, h                                        ; $7e4e: $7c
	ld   e, b                                        ; $7e4f: $58
	inc  b                                           ; $7e50: $04
	xor  l                                           ; $7e51: $ad
	ld   a, c                                        ; $7e52: $79
	inc  b                                           ; $7e53: $04
	adc  l                                           ; $7e54: $8d
	ld   d, d                                        ; $7e55: $52
	inc  b                                           ; $7e56: $04
	sub  d                                           ; $7e57: $92
	ld   a, c                                        ; $7e58: $79
	dec  c                                           ; $7e59: $0d
	ld   [bc], a                                     ; $7e5a: $02
	ld   a, a                                        ; $7e5b: $7f
	ld   e, l                                        ; $7e5c: $5d
	ld   l, e                                        ; $7e5d: $6b
	ld   d, h                                        ; $7e5e: $54
	ld   [hl], l                                     ; $7e5f: $75
	ld   h, a                                        ; $7e60: $67
	sub  [hl]                                        ; $7e61: $96
	sbc  a                                           ; $7e62: $9f
	dec  c                                           ; $7e63: $0d
	nop                                              ; $7e64: $00
	ld   a, [bc]                                     ; $7e65: $0a
	ld   bc, $df02                                   ; $7e66: $01 $02 $df
	inc  b                                           ; $7e69: $04
	sub  d                                           ; $7e6a: $92
	and  b                                           ; $7e6b: $a0
	inc  bc                                          ; $7e6c: $03
	and  b                                           ; $7e6d: $a0
	ld   [hl], c                                     ; $7e6e: $71
	ld   [hl], h                                     ; $7e6f: $74
	ld   e, l                                        ; $7e70: $5d
	sbc  d                                           ; $7e71: $9a
	sbc  c                                           ; $7e72: $99
	inc  bc                                          ; $7e73: $03
	add  d                                           ; $7e74: $82
	and  b                                           ; $7e75: $a0
	dec  c                                           ; $7e76: $0d
	ld   h, e                                        ; $7e77: $63
	ld   e, d                                        ; $7e78: $5a
	ld   h, l                                        ; $7e79: $65
	ld   [hl], h                                     ; $7e7a: $74
	ld   d, d                                        ; $7e7b: $52
	adc  h                                           ; $7e7c: $8c
	ld   h, l                                        ; $7e7d: $65
	ld   l, l                                        ; $7e7e: $6d
	ld   e, c                                        ; $7e7f: $59
	sub  a                                           ; $7e80: $97
	rst  $38                                         ; $7e81: $ff
	rst  $38                                         ; $7e82: $ff
	dec  c                                           ; $7e83: $0d
	nop                                              ; $7e84: $00
	ld   a, [bc]                                     ; $7e85: $0a
	inc  e                                           ; $7e86: $1c
	inc  c                                           ; $7e87: $0c
	ld   bc, $0101                                   ; $7e88: $01 $01 $01
	sub  b                                           ; $7e8b: $90
	ld   h, l                                        ; $7e8c: $65
	sub  [hl]                                        ; $7e8d: $96
	ld   e, c                                        ; $7e8e: $59
	ld   [hl], c                                     ; $7e8f: $71
	ld   l, l                                        ; $7e90: $6d
	sub  a                                           ; $7e91: $97
	sbc  [hl]                                        ; $7e92: $9e
	ld   e, b                                        ; $7e93: $58
	inc  b                                           ; $7e94: $04
	xor  l                                           ; $7e95: $ad
	ld   a, c                                        ; $7e96: $79
	dec  c                                           ; $7e97: $0d
	rst  $28                                         ; $7e98: $ef
	call nc, $79fb                                   ; $7e99: $d4 $fb $79
	ld   [bc], a                                     ; $7e9c: $02
	ld   a, a                                        ; $7e9d: $7f
	ld   [hl], c                                     ; $7e9e: $71
	ld   [hl], h                                     ; $7e9f: $74
	adc  l                                           ; $7ea0: $8d
	ld   l, l                                        ; $7ea1: $6d
	sub  a                                           ; $7ea2: $97
	dec  c                                           ; $7ea3: $0d
	nop                                              ; $7ea4: $00
	dec  b                                           ; $7ea5: $05
	add  b                                           ; $7ea6: $80
	jr   @+$03                                       ; $7ea7: $18 $01

	ld   bc, $0100                                   ; $7ea9: $01 $00 $01
	ld   d, d                                        ; $7eac: $52
	ld   d, d                                        ; $7ead: $52
	ld   e, c                                        ; $7eae: $59
	sub  b                                           ; $7eaf: $90
	ld   h, l                                        ; $7eb0: $65
	sbc  d                                           ; $7eb1: $9a
	adc  h                                           ; $7eb2: $8c
	ld   l, c                                        ; $7eb3: $69
	and  c                                           ; $7eb4: $a1
	sub  [hl]                                        ; $7eb5: $96
	sbc  a                                           ; $7eb6: $9f
	dec  c                                           ; $7eb7: $0d
	nop                                              ; $7eb8: $00
	ld   a, [bc]                                     ; $7eb9: $0a
	dec  b                                           ; $7eba: $05
	ld   b, b                                        ; $7ebb: $40
	ld   e, [hl]                                     ; $7ebc: $5e
	ld   [bc], a                                     ; $7ebd: $02
	nop                                              ; $7ebe: $00
	nop                                              ; $7ebf: $00
	nop                                              ; $7ec0: $00
	nop                                              ; $7ec1: $00
	dec  c                                           ; $7ec2: $0d
	dec  b                                           ; $7ec3: $05
	jr   nz, jr_04b_7ed5                             ; $7ec4: $20 $0f

	nop                                              ; $7ec6: $00
	ld   bc, $0502                                   ; $7ec7: $01 $02 $05
	add  b                                           ; $7eca: $80
	sbc  d                                           ; $7ecb: $9a
	ld   bc, $0001                                   ; $7ecc: $01 $01 $00
	ld   bc, $cf02                                   ; $7ecf: $01 $02 $cf
	dec  b                                           ; $7ed2: $05
	ld   a, [de]                                     ; $7ed3: $1a
	ld   h, e                                        ; $7ed4: $63

jr_04b_7ed5:
	and  c                                           ; $7ed5: $a1
	rst  $38                                         ; $7ed6: $ff
	rst  $38                                         ; $7ed7: $ff
	dec  c                                           ; $7ed8: $0d
	ld   bc, $5003                                   ; $7ed9: $01 $03 $50
	sbc  b                                           ; $7edc: $98
	sub  c                                           ; $7edd: $91
	sbc  [hl]                                        ; $7ede: $9e
	ld   [bc], a                                     ; $7edf: $02
	dec  [hl]                                        ; $7ee0: $35
	ld   h, c                                        ; $7ee1: $61
	ld   h, b                                        ; $7ee2: $60
	ld   l, [hl]                                     ; $7ee3: $6e
	sub  [hl]                                        ; $7ee4: $96
	rst  $38                                         ; $7ee5: $ff
	rst  $38                                         ; $7ee6: $ff
	ld   bc, $0d04                                   ; $7ee7: $01 $04 $0d
	nop                                              ; $7eea: $00
	ld   a, [bc]                                     ; $7eeb: $0a
	rrca                                             ; $7eec: $0f
	dec  b                                           ; $7eed: $05
	ld   [$5001], sp                                 ; $7eee: $08 $01 $50
	sbc  [hl]                                        ; $7ef1: $9e
	ld   [$7d00], sp                                 ; $7ef2: $08 $00 $7d
	and  c                                           ; $7ef5: $a1
	sbc  a                                           ; $7ef6: $9f
	dec  c                                           ; $7ef7: $0d
	ld   l, a                                        ; $7ef8: $6f
	sub  l                                           ; $7ef9: $95
	ld   d, d                                        ; $7efa: $52
	halt                                             ; $7efb: $76
	inc  bc                                          ; $7efc: $03
	adc  e                                           ; $7efd: $8b
	ld   [bc], a                                     ; $7efe: $02
	sub  [hl]                                        ; $7eff: $96
	ld   a, c                                        ; $7f00: $79
	inc  bc                                          ; $7f01: $03
	add  e                                           ; $7f02: $83
	inc  b                                           ; $7f03: $04
	sbc  b                                           ; $7f04: $98
	ld   h, l                                        ; $7f05: $65
	ld   [hl], h                                     ; $7f06: $74
	ld   a, b                                        ; $7f07: $78
	rst  $38                                         ; $7f08: $ff
	rst  $38                                         ; $7f09: $ff
	dec  c                                           ; $7f0a: $0d
	nop                                              ; $7f0b: $00
	ld   a, [bc]                                     ; $7f0c: $0a
	rrca                                             ; $7f0d: $0f
	nop                                              ; $7f0e: $00
	ld   bc, $0101                                   ; $7f0f: $01 $01 $01
	inc  bc                                          ; $7f12: $03
	ld   d, h                                        ; $7f13: $54
	sbc  l                                           ; $7f14: $9d
	db   $fc                                         ; $7f15: $fc
	sbc  [hl]                                        ; $7f16: $9e
	dec  b                                           ; $7f17: $05
	ld   [de], a                                     ; $7f18: $12
	ld   l, a                                        ; $7f19: $6f
	ld   [bc], a                                     ; $7f1a: $02
	ld   b, b                                        ; $7f1b: $40
	and  c                                           ; $7f1c: $a1
	ld   [hl], l                                     ; $7f1d: $75
	sbc  c                                           ; $7f1e: $99
	ld   l, h                                        ; $7f1f: $6c
	sbc  a                                           ; $7f20: $9f
	dec  c                                           ; $7f21: $0d
	db   $10                                         ; $7f22: $10
	ld   [hl], a                                     ; $7f23: $77
	ld   d, h                                        ; $7f24: $54
	ld   h, l                                        ; $7f25: $65
	sub  [hl]                                        ; $7f26: $96
	ld   d, h                                        ; $7f27: $54
	ld   e, c                                        ; $7f28: $59
	ld   sp, hl                                      ; $7f29: $f9
	ld   bc, $0d04                                   ; $7f2a: $01 $04 $0d
	nop                                              ; $7f2d: $00
	ld   a, [bc]                                     ; $7f2e: $0a
	add  hl, de                                      ; $7f2f: $19
	dec  b                                           ; $7f30: $05
	inc  bc                                          ; $7f31: $03
	ld   a, b                                        ; $7f32: $78
	ld   e, [hl]                                     ; $7f33: $5e
	ld   h, e                                        ; $7f34: $63
	adc  a                                           ; $7f35: $8f
	sbc  c                                           ; $7f36: $99
	nop                                              ; $7f37: $00
	nop                                              ; $7f38: $00
	db   $dd                                         ; $7f39: $dd
	or   d                                           ; $7f3a: $b2
	ld   [hl], h                                     ; $7f3b: $74
	adc  l                                           ; $7f3c: $8d
	sbc  c                                           ; $7f3d: $99
	nop                                              ; $7f3e: $00
	ld   bc, $f302                                   ; $7f3f: $01 $02 $f3
	and  b                                           ; $7f42: $a0
	ld   [bc], a                                     ; $7f43: $02
	sub  l                                           ; $7f44: $95
	ld   [hl], h                                     ; $7f45: $74
	ld   [bc], a                                     ; $7f46: $02
	jr   nz, jr_04b_7f4b                             ; $7f47: $20 $02

	sbc  l                                           ; $7f49: $9d
	nop                                              ; $7f4a: $00

jr_04b_7f4b:
	ld   [bc], a                                     ; $7f4b: $02
	rlca                                             ; $7f4c: $07
	xor  b                                           ; $7f4d: $a8
	nop                                              ; $7f4e: $00
	ld   [bc], a                                     ; $7f4f: $02
	inc  bc                                          ; $7f50: $03
	ld   bc, $2000                                   ; $7f51: $01 $00 $20
	nop                                              ; $7f54: $00
	rlca                                             ; $7f55: $07
	ld   hl, sp+$00                                  ; $7f56: $f8 $00
	ld   [bc], a                                     ; $7f58: $02
	inc  bc                                          ; $7f59: $03
	ld   bc, $2001                                   ; $7f5a: $01 $01 $20
	nop                                              ; $7f5d: $00
	rlca                                             ; $7f5e: $07
	add  e                                           ; $7f5f: $83
	ld   bc, $0302                                   ; $7f60: $01 $02 $03
	ld   bc, $2002                                   ; $7f63: $01 $02 $20
	nop                                              ; $7f66: $00
	ld   b, $b2                                      ; $7f67: $06 $b2
	ld   bc, $000f                                   ; $7f69: $01 $0f $00
	ld   bc, $0201                                   ; $7f6c: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f6f: $cf
	dec  b                                           ; $7f70: $05
	ld   a, [de]                                     ; $7f71: $1a
	ld   h, e                                        ; $7f72: $63
	and  c                                           ; $7f73: $a1
	adc  c                                           ; $7f74: $89
	ld   [hl], a                                     ; $7f75: $77
	ld   a, h                                        ; $7f76: $7c
	inc  b                                           ; $7f77: $04
	inc  de                                          ; $7f78: $13
	inc  bc                                          ; $7f79: $03
	ld   b, $5a                                      ; $7f7a: $06 $5a
	dec  c                                           ; $7f7c: $0d
	dec  b                                           ; $7f7d: $05
	ld   [de], a                                     ; $7f7e: $12
	ld   l, a                                        ; $7f7f: $6f
	ld   [bc], a                                     ; $7f80: $02
	ld   b, b                                        ; $7f81: $40
	and  c                                           ; $7f82: $a1
	ld   [hl], l                                     ; $7f83: $75
	ld   l, a                                        ; $7f84: $6f
	sub  c                                           ; $7f85: $91
	ld   d, d                                        ; $7f86: $52
	ld   e, a                                        ; $7f87: $5f
	adc  h                                           ; $7f88: $8c
	ld   l, c                                        ; $7f89: $69
	and  c                                           ; $7f8a: $a1
	sub  [hl]                                        ; $7f8b: $96
	sbc  a                                           ; $7f8c: $9f
	dec  c                                           ; $7f8d: $0d
	nop                                              ; $7f8e: $00
	ld   a, [bc]                                     ; $7f8f: $0a
	rrca                                             ; $7f90: $0f
	dec  b                                           ; $7f91: $05
	ld   [$401d], sp                                 ; $7f92: $08 $1d $40
	dec  d                                           ; $7f95: $15
	inc  bc                                          ; $7f96: $03
	dec  d                                           ; $7f97: $15
	ld   bc, $2801                                   ; $7f98: $01 $01 $28
	nop                                              ; $7f9b: $00
	ld   bc, $8303                                   ; $7f9c: $01 $03 $83
	inc  b                                           ; $7f9f: $04
	sbc  b                                           ; $7fa0: $98
	ld   a, [hl]                                     ; $7fa1: $7e
	ld   [hl], c                                     ; $7fa2: $71
	ld   e, c                                        ; $7fa3: $59
	sbc  b                                           ; $7fa4: $98
	ld   h, l                                        ; $7fa5: $65
	ld   [hl], h                                     ; $7fa6: $74
	sbc  c                                           ; $7fa7: $99
	and  a                                           ; $7fa8: $a7
	jp   nz, $0d5a                                   ; $7fa9: $c2 $5a $0d

	inc  b                                           ; $7fac: $04
	inc  de                                          ; $7fad: $13
	inc  bc                                          ; $7fae: $03
	ld   b, $59                                      ; $7faf: $06 $59
	rst  $38                                         ; $7fb1: $ff
	rst  $38                                         ; $7fb2: $ff
	ld   sp, hl                                      ; $7fb3: $f9
	dec  c                                           ; $7fb4: $0d
	nop                                              ; $7fb5: $00
	ld   a, [bc]                                     ; $7fb6: $0a
	ld   b, $e0                                      ; $7fb7: $06 $e0
	ld   bc, $000f                                   ; $7fb9: $01 $0f $00
	ld   bc, $0301                                   ; $7fbc: $01 $01 $03
	sbc  [hl]                                        ; $7fbf: $9e
	ld   d, d                                        ; $7fc0: $52
	ld   [hl], l                                     ; $7fc1: $75
	ld   h, a                                        ; $7fc2: $67
	ld   a, e                                        ; $7fc3: $7b
	db   $fc                                         ; $7fc4: $fc
	sbc  a                                           ; $7fc5: $9f
	dec  c                                           ; $7fc6: $0d
	ld   d, d                                        ; $7fc7: $52
	ld   [hl], d                                     ; $7fc8: $72
	sub  b                                           ; $7fc9: $90
	ld   a, h                                        ; $7fca: $7c
	ld   [bc], a                                     ; $7fcb: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fcc: $cf
	dec  b                                           ; $7fcd: $05
	ld   a, [de]                                     ; $7fce: $1a
	ld   h, e                                        ; $7fcf: $63
	and  c                                           ; $7fd0: $a1
	sub  b                                           ; $7fd1: $90
	cp   d                                           ; $7fd2: $ba
	rst  ToBoot                                         ; $7fd3: $c7
	xor  [hl]                                        ; $7fd4: $ae
	dec  c                                           ; $7fd5: $0d
	ld   l, [hl]                                     ; $7fd6: $6e
	ld   e, a                                        ; $7fd7: $5f
	ld   [hl], a                                     ; $7fd8: $77
	sbc  [hl]                                        ; $7fd9: $9e
	dec  c                                           ; $7fda: $0d
	nop                                              ; $7fdb: $00
	ld   a, [bc]                                     ; $7fdc: $0a
	ld   bc, $3502                                   ; $7fdd: $01 $02 $35
	ld   d, d                                        ; $7fe0: $52
	ld   [bc], a                                     ; $7fe1: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fe2: $cf
	dec  b                                           ; $7fe3: $05
	ld   a, [de]                                     ; $7fe4: $1a
	ld   h, e                                        ; $7fe5: $63
	and  c                                           ; $7fe6: $a1
	sub  b                                           ; $7fe7: $90
	cp   b                                           ; $7fe8: $b8
	call nz, Call_04b_75b0                           ; $7fe9: $c4 $b0 $75
	dec  c                                           ; $7fec: $0d
	halt                                             ; $7fed: $76
	ld   [hl], h                                     ; $7fee: $74
	sub  b                                           ; $7fef: $90
	xor  h                                           ; $7ff0: $ac
	call nz, $a5b4                                   ; $7ff1: $c4 $b4 $a5
	and  l                                           ; $7ff4: $a5
	ld   [hl], l                                     ; $7ff5: $75
	ld   h, a                                        ; $7ff6: $67
	sub  [hl]                                        ; $7ff7: $96
	sbc  a                                           ; $7ff8: $9f
	dec  c                                           ; $7ff9: $0d
	nop                                              ; $7ffa: $00
	ld   a, [bc]                                     ; $7ffb: $0a
	rrca                                             ; $7ffc: $0f
	dec  b                                           ; $7ffd: $05
	db   $08                                         ; $7ffe: $08
	db   $01                                         ; $7fff: $01
