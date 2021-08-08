; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $064", ROMX[$4000], BANK[$64]

	ld   a, [bc]                                     ; $4000: $0a
	add  hl, de                                      ; $4001: $19
	dec  b                                           ; $4002: $05
	inc  bc                                          ; $4003: $03
	inc  b                                           ; $4004: $04
	ld   [$8f02], sp                                 ; $4005: $08 $02 $8f
	ld   [bc], a                                     ; $4008: $02
	sub  b                                           ; $4009: $90
	ld   [bc], a                                     ; $400a: $02
	sub  c                                           ; $400b: $91
	inc  b                                           ; $400c: $04
	add  hl, bc                                      ; $400d: $09
	ld   a, c                                        ; $400e: $79
	inc  b                                           ; $400f: $04
	ld   b, l                                        ; $4010: $45
	sbc  c                                           ; $4011: $99
	nop                                              ; $4012: $00
	nop                                              ; $4013: $00
	inc  bc                                          ; $4014: $03
	ld   l, $03                                      ; $4015: $2e $03
	pop  hl                                          ; $4017: $e1
	ld   a, h                                        ; $4018: $7c
	inc  bc                                          ; $4019: $03
	ld   d, d                                        ; $401a: $52
	ld   [bc], a                                     ; $401b: $02
	or   a                                           ; $401c: $b7
	ld   a, c                                        ; $401d: $79
	sub  b                                           ; $401e: $90
	ld   [hl], a                                     ; $401f: $77
	sbc  c                                           ; $4020: $99
	nop                                              ; $4021: $00
	ld   bc, $9403                                   ; $4022: $01 $03 $94
	inc  b                                           ; $4025: $04
	sbc  [hl]                                        ; $4026: $9e
	ld   [bc], a                                     ; $4027: $02
	jp   nc, Jump_064_7c5b                           ; $4028: $d2 $5b $7c

	inc  bc                                          ; $402b: $03
	dec  c                                           ; $402c: $0d
	ld   [bc], a                                     ; $402d: $02
	jp   $04a0                                       ; $402e: $c3 $a0 $04


	inc  d                                           ; $4031: $14
	ld   h, a                                        ; $4032: $67
	nop                                              ; $4033: $00
	ld   [bc], a                                     ; $4034: $02
	rlca                                             ; $4035: $07
	db   $e3                                         ; $4036: $e3
	dec  c                                           ; $4037: $0d
	ld   [bc], a                                     ; $4038: $02
	inc  bc                                          ; $4039: $03
	ld   bc, $2000                                   ; $403a: $01 $00 $20
	nop                                              ; $403d: $00
	rlca                                             ; $403e: $07
	jr   nc, jr_064_404f                             ; $403f: $30 $0e

	ld   [bc], a                                     ; $4041: $02
	inc  bc                                          ; $4042: $03
	ld   bc, $2001                                   ; $4043: $01 $01 $20
	nop                                              ; $4046: $00
	rlca                                             ; $4047: $07
	sub  a                                           ; $4048: $97
	ld   c, $02                                      ; $4049: $0e $02
	inc  bc                                          ; $404b: $03
	ld   bc, $2002                                   ; $404c: $01 $02 $20

jr_064_404f:
	nop                                              ; $404f: $00
	ld   b, $ed                                      ; $4050: $06 $ed
	ld   c, $0f                                      ; $4052: $0e $0f
	nop                                              ; $4054: $00
	ld   bc, $0401                                   ; $4055: $01 $01 $04
	ld   [$8f02], sp                                 ; $4058: $08 $02 $8f
	ld   [bc], a                                     ; $405b: $02
	sub  b                                           ; $405c: $90
	ld   [bc], a                                     ; $405d: $02
	sub  c                                           ; $405e: $91
	inc  b                                           ; $405f: $04
	add  hl, bc                                      ; $4060: $09
	ld   a, c                                        ; $4061: $79
	inc  b                                           ; $4062: $04
	ld   b, l                                        ; $4063: $45
	sbc  d                                           ; $4064: $9a
	sbc  c                                           ; $4065: $99
	sub  [hl]                                        ; $4066: $96
	ld   d, h                                        ; $4067: $54
	sbc  [hl]                                        ; $4068: $9e
	dec  c                                           ; $4069: $0d
	ld   e, d                                        ; $406a: $5a
	and  c                                           ; $406b: $a1
	ld   a, [hl]                                     ; $406c: $7e
	sbc  e                                           ; $406d: $9b
	ld   d, h                                        ; $406e: $54
	halt                                             ; $406f: $76
	dec  b                                           ; $4070: $05
	pop  de                                          ; $4071: $d1
	ld   [hl], c                                     ; $4072: $71
	ld   [hl], h                                     ; $4073: $74
	ld   d, d                                        ; $4074: $52
	adc  h                                           ; $4075: $8c
	ld   h, a                                        ; $4076: $67
	sbc  a                                           ; $4077: $9f
	dec  c                                           ; $4078: $0d
	nop                                              ; $4079: $00
	ld   a, [bc]                                     ; $407a: $0a
	inc  e                                           ; $407b: $1c
	ld   bc, $0101                                   ; $407c: $01 $01 $01
	ld   bc, $806a                                   ; $407f: $01 $6a $80
	sbc  [hl]                                        ; $4082: $9e
	ld   l, e                                        ; $4083: $6b
	ld   d, h                                        ; $4084: $54
	ld   h, l                                        ; $4085: $65
	ld   [hl], h                                     ; $4086: $74
	ld   [bc], a                                     ; $4087: $02
	inc  [hl]                                        ; $4088: $34
	ld   h, e                                        ; $4089: $63
	ld   d, d                                        ; $408a: $52
	ld   a, [$500d]                                  ; $408b: $fa $0d $50
	ld   l, l                                        ; $408e: $6d
	ld   h, l                                        ; $408f: $65
	sbc  [hl]                                        ; $4090: $9e
	ld   e, b                                        ; $4091: $58
	ld   d, h                                        ; $4092: $54
	ld   d, [hl]                                     ; $4093: $56
	and  c                                           ; $4094: $a1
	ld   h, l                                        ; $4095: $65
	adc  h                                           ; $4096: $8c
	ld   h, a                                        ; $4097: $67
	sub  [hl]                                        ; $4098: $96
	sbc  a                                           ; $4099: $9f
	dec  c                                           ; $409a: $0d
	nop                                              ; $409b: $00
	ld   a, [bc]                                     ; $409c: $0a
	ld   b, $23                                      ; $409d: $06 $23
	rrca                                             ; $409f: $0f
	rrca                                             ; $40a0: $0f
	nop                                              ; $40a1: $00
	ld   bc, $0201                                   ; $40a2: $01 $01 $02
	xor  h                                           ; $40a5: $ac
	ld   a, h                                        ; $40a6: $7c
	inc  bc                                          ; $40a7: $03
	ld   d, d                                        ; $40a8: $52
	ld   [bc], a                                     ; $40a9: $02
	or   a                                           ; $40aa: $b7
	ld   a, c                                        ; $40ab: $79
	inc  b                                           ; $40ac: $04
	jp   $8c98                                       ; $40ad: $c3 $98 $8c


	ld   h, a                                        ; $40b0: $67
	sbc  a                                           ; $40b1: $9f
	dec  c                                           ; $40b2: $0d
	inc  b                                           ; $40b3: $04
	ld   [$2f04], sp                                 ; $40b4: $08 $04 $2f
	ld   a, h                                        ; $40b7: $7c
	inc  b                                           ; $40b8: $04
	xor  b                                           ; $40b9: $a8
	dec  b                                           ; $40ba: $05
	ld   hl, $03a0                                   ; $40bb: $21 $a0 $03
	sub  e                                           ; $40be: $93
	sbc  c                                           ; $40bf: $99
	ld   a, h                                        ; $40c0: $7c
	ld   a, l                                        ; $40c1: $7d
	sbc  [hl]                                        ; $40c2: $9e
	ld   h, e                                        ; $40c3: $63
	ld   e, l                                        ; $40c4: $5d
	sub  a                                           ; $40c5: $97
	dec  c                                           ; $40c6: $0d
	ld   h, e                                        ; $40c7: $63
	and  c                                           ; $40c8: $a1
	ld   l, l                                        ; $40c9: $6d
	ld   l, a                                        ; $40ca: $6f
	ld   a, c                                        ; $40cb: $79
	ld   e, b                                        ; $40cc: $58
	adc  h                                           ; $40cd: $8c
	ld   e, c                                        ; $40ce: $59
	ld   l, c                                        ; $40cf: $69
	ld   h, l                                        ; $40d0: $65
	adc  h                                           ; $40d1: $8c
	ld   h, a                                        ; $40d2: $67
	sbc  a                                           ; $40d3: $9f
	dec  c                                           ; $40d4: $0d
	nop                                              ; $40d5: $00
	ld   a, [bc]                                     ; $40d6: $0a
	inc  e                                           ; $40d7: $1c
	ld   bc, $0000                                   ; $40d8: $01 $00 $00
	ld   bc, $a804                                   ; $40db: $01 $04 $a8
	dec  b                                           ; $40de: $05
	ld   hl, $ffff                                   ; $40df: $21 $ff $ff
	dec  c                                           ; $40e2: $0d
	ld   l, e                                        ; $40e3: $6b
	ld   d, h                                        ; $40e4: $54
	sbc  [hl]                                        ; $40e5: $9e
	ld   a, b                                        ; $40e6: $78
	ld   a, c                                        ; $40e7: $79
	sub  [hl]                                        ; $40e8: $96
	sbc  b                                           ; $40e9: $98
	sub  b                                           ; $40ea: $90
	inc  b                                           ; $40eb: $04
	xor  b                                           ; $40ec: $a8
	dec  b                                           ; $40ed: $05
	ld   hl, $025a                                   ; $40ee: $21 $5a $02
	jr   nz, jr_064_40f7                             ; $40f1: $20 $04

	ld   a, c                                        ; $40f3: $79
	sbc  a                                           ; $40f4: $9f
	dec  c                                           ; $40f5: $0d
	ld   d, b                                        ; $40f6: $50

jr_064_40f7:
	ld   l, l                                        ; $40f7: $6d
	ld   h, l                                        ; $40f8: $65
	sbc  [hl]                                        ; $40f9: $9e
	ld   e, d                                        ; $40fa: $5a
	and  c                                           ; $40fb: $a1
	ld   a, [hl]                                     ; $40fc: $7e
	sbc  b                                           ; $40fd: $98
	adc  h                                           ; $40fe: $8c
	ld   h, a                                        ; $40ff: $67
	sbc  a                                           ; $4100: $9f
	dec  c                                           ; $4101: $0d
	nop                                              ; $4102: $00
	ld   a, [bc]                                     ; $4103: $0a
	ld   b, $23                                      ; $4104: $06 $23
	rrca                                             ; $4106: $0f
	rrca                                             ; $4107: $0f
	nop                                              ; $4108: $00
	ld   bc, $0301                                   ; $4109: $01 $01 $03
	sub  h                                           ; $410c: $94
	inc  b                                           ; $410d: $04
	sbc  [hl]                                        ; $410e: $9e
	ld   a, c                                        ; $410f: $79
	ld   [bc], a                                     ; $4110: $02
	jp   nc, $6d52                                   ; $4111: $d2 $52 $6d

	inc  bc                                          ; $4114: $03
	dec  c                                           ; $4115: $0d
	ld   [bc], a                                     ; $4116: $02
	jp   $04a0                                       ; $4117: $c3 $a0 $04


	inc  d                                           ; $411a: $14
	ld   h, l                                        ; $411b: $65
	adc  h                                           ; $411c: $8c
	ld   h, a                                        ; $411d: $67
	sbc  a                                           ; $411e: $9f
	dec  c                                           ; $411f: $0d
	inc  b                                           ; $4120: $04
	ld   l, l                                        ; $4121: $6d
	ld   a, c                                        ; $4122: $79
	ld   a, l                                        ; $4123: $7d
	sbc  [hl]                                        ; $4124: $9e
	inc  b                                           ; $4125: $04
	ld   [$9202], sp                                 ; $4126: $08 $02 $92
	ld   a, l                                        ; $4129: $7d
	ld   d, b                                        ; $412a: $50
	adc  h                                           ; $412b: $8c
	sbc  b                                           ; $412c: $98
	dec  c                                           ; $412d: $0d
	ld   [bc], a                                     ; $412e: $02
	jp   nc, $7452                                   ; $412f: $d2 $52 $74

	ld   a, b                                        ; $4132: $78
	ld   d, d                                        ; $4133: $52
	sub  [hl]                                        ; $4134: $96
	ld   d, h                                        ; $4135: $54
	ld   [hl], l                                     ; $4136: $75
	ld   h, a                                        ; $4137: $67
	ld   h, l                                        ; $4138: $65
	rst  $38                                         ; $4139: $ff
	rst  $38                                         ; $413a: $ff
	dec  c                                           ; $413b: $0d
	nop                                              ; $413c: $00
	ld   a, [bc]                                     ; $413d: $0a
	inc  e                                           ; $413e: $1c
	ld   bc, $0404                                   ; $413f: $01 $04 $04
	ld   bc, $546b                                   ; $4142: $01 $6b $54
	ld   [hl], l                                     ; $4145: $75
	ld   h, a                                        ; $4146: $67
	ld   e, c                                        ; $4147: $59
	rst  $38                                         ; $4148: $ff
	rst  $38                                         ; $4149: $ff
	dec  c                                           ; $414a: $0d
	ld   a, b                                        ; $414b: $78
	and  c                                           ; $414c: $a1
	ld   e, c                                        ; $414d: $59
	sbc  [hl]                                        ; $414e: $9e
	ld   h, e                                        ; $414f: $63
	add  c                                           ; $4150: $81
	ld   h, l                                        ; $4151: $65
	ld   d, d                                        ; $4152: $52
	ld   [hl], l                                     ; $4153: $75
	ld   h, a                                        ; $4154: $67
	ld   a, e                                        ; $4155: $7b
	sbc  a                                           ; $4156: $9f
	dec  c                                           ; $4157: $0d
	nop                                              ; $4158: $00
	ld   a, [bc]                                     ; $4159: $0a
	ld   b, $23                                      ; $415a: $06 $23
	rrca                                             ; $415c: $0f
	inc  e                                           ; $415d: $1c
	ld   bc, $0101                                   ; $415e: $01 $01 $01
	ld   bc, $ff50                                   ; $4161: $01 $50 $ff
	rst  $38                                         ; $4164: $ff
	ld   l, e                                        ; $4165: $6b
	sbc  [hl]                                        ; $4166: $9e
	ld   l, e                                        ; $4167: $6b
	and  c                                           ; $4168: $a1
	ld   a, b                                        ; $4169: $78
	ld   a, c                                        ; $416a: $79
	ld   d, b                                        ; $416b: $50
	sbc  l                                           ; $416c: $9d
	ld   [hl], h                                     ; $416d: $74
	ld   [hl], h                                     ; $416e: $74
	dec  c                                           ; $416f: $0d
	ld   [bc], a                                     ; $4170: $02
	ld   h, l                                        ; $4171: $65
	ld   d, [hl]                                     ; $4172: $56
	ld   a, b                                        ; $4173: $78
	ld   e, l                                        ; $4174: $5d
	ld   [hl], h                                     ; $4175: $74
	ld   d, d                                        ; $4176: $52
	ld   d, d                                        ; $4177: $52
	halt                                             ; $4178: $76
	dec  b                                           ; $4179: $05
	pop  de                                          ; $417a: $d1
	ld   d, d                                        ; $417b: $52
	adc  h                                           ; $417c: $8c
	ld   h, a                                        ; $417d: $67
	sub  [hl]                                        ; $417e: $96
	sbc  a                                           ; $417f: $9f
	dec  c                                           ; $4180: $0d
	inc  bc                                          ; $4181: $03
	add  d                                           ; $4182: $82
	inc  bc                                          ; $4183: $03
	ld   d, d                                        ; $4184: $52
	ld   a, l                                        ; $4185: $7d
	inc  bc                                          ; $4186: $03
	jp   nc, $a152                                   ; $4187: $d2 $52 $a1

	ld   [hl], l                                     ; $418a: $75
	ld   h, a                                        ; $418b: $67
	ld   e, c                                        ; $418c: $59
	sub  a                                           ; $418d: $97
	rst  $38                                         ; $418e: $ff
	rst  $38                                         ; $418f: $ff
	dec  c                                           ; $4190: $0d
	nop                                              ; $4191: $00
	ld   a, [bc]                                     ; $4192: $0a
	rlca                                             ; $4193: $07
	add  d                                           ; $4194: $82
	rrca                                             ; $4195: $0f
	inc  bc                                          ; $4196: $03
	ld   de, $b401                                   ; $4197: $11 $01 $b4
	dec  h                                           ; $419a: $25
	nop                                              ; $419b: $00
	inc  e                                           ; $419c: $1c
	ld   bc, $0000                                   ; $419d: $01 $00 $00
	ld   bc, $9b6b                                   ; $41a0: $01 $6b $9b
	ld   l, e                                        ; $41a3: $6b
	sbc  e                                           ; $41a4: $9b
	sbc  [hl]                                        ; $41a5: $9e
	ld   [bc], a                                     ; $41a6: $02
	or   l                                           ; $41a7: $b5
	sbc  b                                           ; $41a8: $98
	adc  h                                           ; $41a9: $8c
	ld   h, l                                        ; $41aa: $65
	sub  l                                           ; $41ab: $95
	ld   d, h                                        ; $41ac: $54
	ld   e, c                                        ; $41ad: $59
	rst  $38                                         ; $41ae: $ff
	rst  $38                                         ; $41af: $ff
	dec  c                                           ; $41b0: $0d
	nop                                              ; $41b1: $00
	ld   a, [bc]                                     ; $41b2: $0a
	dec  c                                           ; $41b3: $0d
	nop                                              ; $41b4: $00
	nop                                              ; $41b5: $00
	rrca                                             ; $41b6: $0f
	nop                                              ; $41b7: $00
	ld   bc, $020c                                   ; $41b8: $01 $0c $02
	ld   c, $06                                      ; $41bb: $0e $06
	inc  e                                           ; $41bd: $1c
	ld   bc, $0101                                   ; $41be: $01 $01 $01
	ld   bc, $a502                                   ; $41c1: $01 $02 $a5
	inc  b                                           ; $41c4: $04
	xor  d                                           ; $41c5: $aa
	ld   a, l                                        ; $41c6: $7d
	sbc  [hl]                                        ; $41c7: $9e
	dec  b                                           ; $41c8: $05
	inc  de                                          ; $41c9: $13
	ld   h, l                                        ; $41ca: $65
	ld   e, c                                        ; $41cb: $59
	ld   [hl], c                                     ; $41cc: $71
	ld   l, l                                        ; $41cd: $6d
	ld   [hl], l                                     ; $41ce: $75
	ld   h, a                                        ; $41cf: $67
	sbc  a                                           ; $41d0: $9f
	dec  c                                           ; $41d1: $0d
	ld   d, b                                        ; $41d2: $50
	sbc  b                                           ; $41d3: $98
	ld   e, d                                        ; $41d4: $5a
	halt                                             ; $41d5: $76
	ld   d, h                                        ; $41d6: $54
	ld   h, d                                        ; $41d7: $62
	ld   h, h                                        ; $41d8: $64
	ld   d, d                                        ; $41d9: $52
	adc  h                                           ; $41da: $8c
	ld   h, l                                        ; $41db: $65
	ld   l, l                                        ; $41dc: $6d
	sbc  a                                           ; $41dd: $9f
	dec  c                                           ; $41de: $0d
	nop                                              ; $41df: $00
	ld   a, [bc]                                     ; $41e0: $0a
	dec  b                                           ; $41e1: $05
	add  b                                           ; $41e2: $80
	ld   [de], a                                     ; $41e3: $12
	ld   bc, $0001                                   ; $41e4: $01 $01 $00
	dec  c                                           ; $41e7: $0d
	nop                                              ; $41e8: $00
	nop                                              ; $41e9: $00
	rrca                                             ; $41ea: $0f
	nop                                              ; $41eb: $00
	ld   bc, $1e09                                   ; $41ec: $01 $09 $1e
	add  hl, hl                                      ; $41ef: $29
	nop                                              ; $41f0: $00
	nop                                              ; $41f1: $00
	inc  e                                           ; $41f2: $1c
	ld   bc, $0303                                   ; $41f3: $01 $03 $03
	ld   bc, $9e50                                   ; $41f6: $01 $50 $9e
	ld   l, e                                        ; $41f9: $6b
	ld   d, h                                        ; $41fa: $54
	ld   l, [hl]                                     ; $41fb: $6e
	sbc  a                                           ; $41fc: $9f
	dec  c                                           ; $41fd: $0d
	ld   e, b                                        ; $41fe: $58
	ld   d, d                                        ; $41ff: $52
	ld   h, l                                        ; $4200: $65
	ld   d, d                                        ; $4201: $52
	or   h                                           ; $4202: $b4
	ei                                               ; $4203: $fb
	db   $d3                                         ; $4204: $d3
	ei                                               ; $4205: $fb
	ld   e, d                                        ; $4206: $5a
	ld   a, h                                        ; $4207: $7c
	adc  a                                           ; $4208: $8f
	sbc  c                                           ; $4209: $99
	inc  bc                                          ; $420a: $03
	rst  $20                                         ; $420b: $e7
	and  b                                           ; $420c: $a0
	dec  c                                           ; $420d: $0d
	ld   e, b                                        ; $420e: $58
	ld   h, l                                        ; $420f: $65
	ld   d, [hl]                                     ; $4210: $56
	ld   [hl], h                                     ; $4211: $74
	sub  b                                           ; $4212: $90
	sub  a                                           ; $4213: $97
	ld   [hl], c                                     ; $4214: $71
	ld   l, l                                        ; $4215: $6d
	and  c                                           ; $4216: $a1
	ld   [hl], l                                     ; $4217: $75
	ld   h, a                                        ; $4218: $67
	sbc  a                                           ; $4219: $9f
	dec  c                                           ; $421a: $0d
	nop                                              ; $421b: $00
	ld   a, [bc]                                     ; $421c: $0a
	inc  e                                           ; $421d: $1c
	ld   bc, $0101                                   ; $421e: $01 $01 $01
	ld   bc, $616b                                   ; $4221: $01 $6b $61
	ld   [hl], l                                     ; $4224: $75
	sbc  [hl]                                        ; $4225: $9e
	ld   e, b                                        ; $4226: $58
	inc  bc                                          ; $4227: $03
	jp   $8c65                                       ; $4228: $c3 $65 $8c


	ld   h, l                                        ; $422b: $65
	sub  l                                           ; $422c: $95
	ld   d, h                                        ; $422d: $54
	sbc  a                                           ; $422e: $9f
	dec  c                                           ; $422f: $0d
	nop                                              ; $4230: $00
	ld   a, [bc]                                     ; $4231: $0a
	dec  c                                           ; $4232: $0d
	nop                                              ; $4233: $00
	nop                                              ; $4234: $00
	rrca                                             ; $4235: $0f
	nop                                              ; $4236: $00
	ld   bc, $9723                                   ; $4237: $01 $23 $97
	inc  e                                           ; $423a: $1c
	ld   bc, $0000                                   ; $423b: $01 $00 $00
	ld   bc, $7c61                                   ; $423e: $01 $61 $7c
	ld   e, b                                        ; $4241: $58
	inc  bc                                          ; $4242: $03
	rst  $20                                         ; $4243: $e7
	sbc  [hl]                                        ; $4244: $9e
	rst  JumpTable                                         ; $4245: $df
	db   $ec                                         ; $4246: $ec
	and  e                                           ; $4247: $a3
	ld   h, e                                        ; $4248: $63
	and  c                                           ; $4249: $a1
	ld   a, c                                        ; $424a: $79
	dec  c                                           ; $424b: $0d
	ld   e, b                                        ; $424c: $58
	ld   h, l                                        ; $424d: $65
	ld   d, [hl]                                     ; $424e: $56
	ld   [hl], h                                     ; $424f: $74
	sub  b                                           ; $4250: $90
	sub  a                                           ; $4251: $97
	ld   [hl], c                                     ; $4252: $71
	ld   l, l                                        ; $4253: $6d
	and  c                                           ; $4254: $a1
	ld   [hl], l                                     ; $4255: $75
	ld   h, a                                        ; $4256: $67
	sbc  a                                           ; $4257: $9f
	dec  c                                           ; $4258: $0d
	nop                                              ; $4259: $00
	ld   a, [bc]                                     ; $425a: $0a
	rrca                                             ; $425b: $0f
	nop                                              ; $425c: $00
	ld   bc, $5001                                   ; $425d: $01 $01 $50
	ld   a, h                                        ; $4260: $7c
	rst  $38                                         ; $4261: $ff
	rst  $38                                         ; $4262: $ff
	dec  c                                           ; $4263: $0d
	ld   [bc], a                                     ; $4264: $02
	jp   nz, $7452                                   ; $4265: $c2 $52 $74

	adc  l                                           ; $4268: $8d
	ld   l, l                                        ; $4269: $6d
	ld   d, d                                        ; $426a: $52
	ld   h, c                                        ; $426b: $61
	halt                                             ; $426c: $76
	ld   e, d                                        ; $426d: $5a
	ld   d, b                                        ; $426e: $50
	sbc  c                                           ; $426f: $99
	and  c                                           ; $4270: $a1
	ld   [hl], l                                     ; $4271: $75
	ld   h, a                                        ; $4272: $67
	dec  c                                           ; $4273: $0d
	ld   e, a                                        ; $4274: $5f
	ld   [hl], a                                     ; $4275: $77
	rst  $38                                         ; $4276: $ff
	rst  $38                                         ; $4277: $ff
	ld   d, d                                        ; $4278: $52
	ld   d, d                                        ; $4279: $52
	ld   [hl], l                                     ; $427a: $75
	ld   h, a                                        ; $427b: $67
	ld   e, c                                        ; $427c: $59
	ld   sp, hl                                      ; $427d: $f9
	dec  c                                           ; $427e: $0d
	nop                                              ; $427f: $00
	ld   a, [bc]                                     ; $4280: $0a
	inc  e                                           ; $4281: $1c
	ld   bc, $0000                                   ; $4282: $01 $00 $00
	ld   bc, $5656                                   ; $4285: $01 $56 $56
	sbc  [hl]                                        ; $4288: $9e
	ld   d, d                                        ; $4289: $52
	ld   d, d                                        ; $428a: $52
	ld   [hl], l                                     ; $428b: $75
	ld   h, a                                        ; $428c: $67
	sub  [hl]                                        ; $428d: $96
	sbc  a                                           ; $428e: $9f
	dec  c                                           ; $428f: $0d
	ld   h, e                                        ; $4290: $63
	ld   [hl], c                                     ; $4291: $71
	ld   e, e                                        ; $4292: $5b
	ld   a, l                                        ; $4293: $7d
	sbc  [hl]                                        ; $4294: $9e
	ld   d, b                                        ; $4295: $50
	ld   l, l                                        ; $4296: $6d
	ld   h, l                                        ; $4297: $65
	ld   e, d                                        ; $4298: $5a
	ld   [bc], a                                     ; $4299: $02
	jp   nz, $7452                                   ; $429a: $c2 $52 $74

	dec  c                                           ; $429d: $0d
	ld   a, [hl]                                     ; $429e: $7e
	ld   e, c                                        ; $429f: $59
	sbc  b                                           ; $42a0: $98
	ld   [hl], l                                     ; $42a1: $75
	ld   h, l                                        ; $42a2: $65
	ld   l, l                                        ; $42a3: $6d
	ld   e, c                                        ; $42a4: $59
	sub  a                                           ; $42a5: $97
	rst  $38                                         ; $42a6: $ff
	rst  $38                                         ; $42a7: $ff
	dec  c                                           ; $42a8: $0d
	nop                                              ; $42a9: $00
	ld   a, [bc]                                     ; $42aa: $0a
	rrca                                             ; $42ab: $0f
	nop                                              ; $42ac: $00
	ld   bc, $6301                                   ; $42ad: $01 $01 $63
	ld   e, l                                        ; $42b0: $5d
	sub  a                                           ; $42b1: $97
	ld   h, e                                        ; $42b2: $63
	and  c                                           ; $42b3: $a1
	ld   a, l                                        ; $42b4: $7d
	rst  $38                                         ; $42b5: $ff
	rst  $38                                         ; $42b6: $ff
	dec  c                                           ; $42b7: $0d
	nop                                              ; $42b8: $00
	ld   a, [bc]                                     ; $42b9: $0a
	add  hl, de                                      ; $42ba: $19
	dec  b                                           ; $42bb: $05
	ld   [bc], a                                     ; $42bc: $02
	ld   d, d                                        ; $42bd: $52
	ld   [hl], d                                     ; $42be: $72
	adc  h                                           ; $42bf: $8c
	ld   [hl], l                                     ; $42c0: $75
	inc  bc                                          ; $42c1: $03
	xor  b                                           ; $42c2: $a8
	ld   d, h                                        ; $42c3: $54
	and  c                                           ; $42c4: $a1
	ld   [hl], l                                     ; $42c5: $75
	ld   h, a                                        ; $42c6: $67
	ld   e, c                                        ; $42c7: $59
	ld   sp, hl                                      ; $42c8: $f9
	nop                                              ; $42c9: $00
	nop                                              ; $42ca: $00
	ld   e, b                                        ; $42cb: $58
	dec  b                                           ; $42cc: $05
	sub  l                                           ; $42cd: $95
	ld   a, c                                        ; $42ce: $79
	ld   [bc], a                                     ; $42cf: $02
	ld   a, a                                        ; $42d0: $7f
	ld   e, c                                        ; $42d1: $59
	ld   a, b                                        ; $42d2: $78
	ld   d, d                                        ; $42d3: $52
	and  c                                           ; $42d4: $a1
	ld   [hl], l                                     ; $42d5: $75
	ld   h, a                                        ; $42d6: $67
	ld   e, c                                        ; $42d7: $59
	ld   sp, hl                                      ; $42d8: $f9
	nop                                              ; $42d9: $00
	ld   bc, $8007                                   ; $42da: $01 $07 $80
	db   $10                                         ; $42dd: $10
	ld   [bc], a                                     ; $42de: $02
	inc  bc                                          ; $42df: $03
	ld   bc, $2000                                   ; $42e0: $01 $00 $20
	nop                                              ; $42e3: $00
	rlca                                             ; $42e4: $07
	dec  bc                                          ; $42e5: $0b
	ld   de, $0302                                   ; $42e6: $11 $02 $03
	ld   bc, $2001                                   ; $42e9: $01 $01 $20
	nop                                              ; $42ec: $00
	ld   b, $9e                                      ; $42ed: $06 $9e
	ld   de, $000f                                   ; $42ef: $11 $0f $00
	ld   bc, $5201                                   ; $42f2: $01 $01 $52
	ld   [hl], d                                     ; $42f5: $72
	adc  h                                           ; $42f6: $8c
	ld   [hl], l                                     ; $42f7: $75
	inc  bc                                          ; $42f8: $03
	xor  b                                           ; $42f9: $a8
	ld   d, h                                        ; $42fa: $54
	and  c                                           ; $42fb: $a1
	ld   [hl], l                                     ; $42fc: $75
	ld   h, a                                        ; $42fd: $67
	ld   e, c                                        ; $42fe: $59
	ld   sp, hl                                      ; $42ff: $f9
	dec  c                                           ; $4300: $0d
	ld   l, b                                        ; $4301: $68
	ld   [hl], c                                     ; $4302: $71
	halt                                             ; $4303: $76
	inc  b                                           ; $4304: $04
	ld   [$8f02], sp                                 ; $4305: $08 $02 $8f
	ld   [bc], a                                     ; $4308: $02
	sub  b                                           ; $4309: $90
	ld   [bc], a                                     ; $430a: $02
	sub  c                                           ; $430b: $91
	inc  b                                           ; $430c: $04
	add  hl, bc                                      ; $430d: $09
	ld   a, c                                        ; $430e: $79
	dec  c                                           ; $430f: $0d
	ld   d, d                                        ; $4310: $52
	sbc  c                                           ; $4311: $99
	ld   [hl], d                                     ; $4312: $72
	sub  b                                           ; $4313: $90
	sbc  b                                           ; $4314: $98
	ld   a, b                                        ; $4315: $78
	and  c                                           ; $4316: $a1
	ld   [hl], l                                     ; $4317: $75
	ld   h, a                                        ; $4318: $67
	ld   e, c                                        ; $4319: $59
	ld   sp, hl                                      ; $431a: $f9
	dec  c                                           ; $431b: $0d
	nop                                              ; $431c: $00
	ld   a, [bc]                                     ; $431d: $0a
	inc  e                                           ; $431e: $1c
	ld   bc, $0202                                   ; $431f: $01 $02 $02
	ld   bc, $546b                                   ; $4322: $01 $6b $54
	ld   [hl], l                                     ; $4325: $75
	ld   h, a                                        ; $4326: $67
	ld   a, e                                        ; $4327: $7b
	rst  $38                                         ; $4328: $ff
	rst  $38                                         ; $4329: $ff
	inc  b                                           ; $432a: $04
	ld   [$2f04], sp                                 ; $432b: $08 $04 $2f
	ld   a, c                                        ; $432e: $79
	inc  b                                           ; $432f: $04
	adc  a                                           ; $4330: $8f
	inc  b                                           ; $4331: $04
	jr   jr_064_43b0                                 ; $4332: $18 $7c

	dec  c                                           ; $4334: $0d
	inc  b                                           ; $4335: $04
	xor  b                                           ; $4336: $a8
	dec  b                                           ; $4337: $05
	ld   hl, $905a                                   ; $4338: $21 $5a $90
	ld   [hl], a                                     ; $433b: $77
	sbc  c                                           ; $433c: $99
	adc  h                                           ; $433d: $8c
	ld   [hl], l                                     ; $433e: $75
	rst  $38                                         ; $433f: $ff
	rst  $38                                         ; $4340: $ff
	dec  c                                           ; $4341: $0d
	ld   d, b                                        ; $4342: $50
	ld   l, l                                        ; $4343: $6d
	ld   h, l                                        ; $4344: $65
	ld   a, l                                        ; $4345: $7d
	inc  bc                                          ; $4346: $03
	xor  b                                           ; $4347: $a8
	ld   d, d                                        ; $4348: $52
	ld   [hl], d                                     ; $4349: $72
	ld   [hl], e                                     ; $434a: $73
	ld   e, a                                        ; $434b: $5f
	adc  h                                           ; $434c: $8c
	ld   h, a                                        ; $434d: $67
	sbc  a                                           ; $434e: $9f
	dec  c                                           ; $434f: $0d
	nop                                              ; $4350: $00
	ld   a, [bc]                                     ; $4351: $0a
	inc  e                                           ; $4352: $1c
	ld   bc, $0101                                   ; $4353: $01 $01 $01
	ld   bc, $9a6b                                   ; $4356: $01 $6b $9a
	ld   a, c                                        ; $4359: $79
	inc  b                                           ; $435a: $04
	ld   [$9202], sp                                 ; $435b: $08 $02 $92
	ld   a, l                                        ; $435e: $7d
	sbc  [hl]                                        ; $435f: $9e
	ld   d, b                                        ; $4360: $50
	ld   l, l                                        ; $4361: $6d
	ld   h, l                                        ; $4362: $65
	ld   a, h                                        ; $4363: $7c
	dec  c                                           ; $4364: $0d
	sub  b                                           ; $4365: $90
	ld   d, h                                        ; $4366: $54
	ld   [bc], a                                     ; $4367: $02
	jr   nz, @+$74                                   ; $4368: $20 $72

	ld   a, h                                        ; $436a: $7c
	dec  b                                           ; $436b: $05
	dec  hl                                          ; $436c: $2b
	ld   e, d                                        ; $436d: $5a
	ld   [bc], a                                     ; $436e: $02
	and  [hl]                                        ; $436f: $a6
	ld   a, b                                        ; $4370: $78
	and  c                                           ; $4371: $a1
	ld   [hl], l                                     ; $4372: $75
	ld   h, a                                        ; $4373: $67
	sbc  a                                           ; $4374: $9f
	dec  c                                           ; $4375: $0d
	nop                                              ; $4376: $00
	ld   a, [bc]                                     ; $4377: $0a
	ld   b, $9e                                      ; $4378: $06 $9e
	ld   de, $000f                                   ; $437a: $11 $0f $00
	ld   bc, $5801                                   ; $437d: $01 $01 $58
	dec  b                                           ; $4380: $05
	sub  l                                           ; $4381: $95
	ld   a, c                                        ; $4382: $79
	ld   a, l                                        ; $4383: $7d
	ld   [bc], a                                     ; $4384: $02
	ld   a, a                                        ; $4385: $7f
	ld   e, c                                        ; $4386: $59
	ld   a, b                                        ; $4387: $78
	ld   d, d                                        ; $4388: $52
	and  c                                           ; $4389: $a1
	ld   [hl], l                                     ; $438a: $75
	ld   h, a                                        ; $438b: $67
	ld   e, c                                        ; $438c: $59
	ld   sp, hl                                      ; $438d: $f9
	dec  c                                           ; $438e: $0d
	nop                                              ; $438f: $00
	ld   a, [bc]                                     ; $4390: $0a
	inc  e                                           ; $4391: $1c
	ld   bc, $0101                                   ; $4392: $01 $01 $01
	ld   bc, $9790                                   ; $4395: $01 $90 $97
	ld   [hl], c                                     ; $4398: $71
	ld   [hl], h                                     ; $4399: $74
	ld   e, l                                        ; $439a: $5d
	sbc  d                                           ; $439b: $9a
	sbc  c                                           ; $439c: $99
	inc  bc                                          ; $439d: $03
	add  d                                           ; $439e: $82
	ld   e, d                                        ; $439f: $5a
	dec  c                                           ; $43a0: $0d
	ld   d, d                                        ; $43a1: $52
	adc  h                                           ; $43a2: $8c
	ld   l, c                                        ; $43a3: $69
	and  c                                           ; $43a4: $a1
	ld   e, c                                        ; $43a5: $59
	sub  a                                           ; $43a6: $97
	ld   a, e                                        ; $43a7: $7b
	rst  $38                                         ; $43a8: $ff
	rst  $38                                         ; $43a9: $ff
	sub  $d6                                         ; $43aa: $d6 $d6
	sub  $9f                                         ; $43ac: $d6 $9f
	dec  c                                           ; $43ae: $0d
	nop                                              ; $43af: $00

jr_064_43b0:
	ld   a, [bc]                                     ; $43b0: $0a
	inc  e                                           ; $43b1: $1c
	ld   bc, $0000                                   ; $43b2: $01 $00 $00
	ld   bc, $9075                                   ; $43b5: $01 $75 $90
	sbc  [hl]                                        ; $43b8: $9e
	ld   d, b                                        ; $43b9: $50
	ld   l, l                                        ; $43ba: $6d
	ld   h, l                                        ; $43bb: $65
	ld   a, l                                        ; $43bc: $7d
	inc  b                                           ; $43bd: $04
	ld   [$8f02], sp                                 ; $43be: $08 $02 $8f
	ld   [bc], a                                     ; $43c1: $02
	sub  b                                           ; $43c2: $90
	ld   [bc], a                                     ; $43c3: $02
	sub  c                                           ; $43c4: $91
	inc  b                                           ; $43c5: $04
	add  hl, bc                                      ; $43c6: $09
	dec  c                                           ; $43c7: $0d
	ld   [bc], a                                     ; $43c8: $02
	sbc  b                                           ; $43c9: $98
	inc  bc                                          ; $43ca: $03
	nop                                              ; $43cb: $00
	ld   a, h                                        ; $43cc: $7c
	inc  b                                           ; $43cd: $04
	ld   a, [bc]                                     ; $43ce: $0a
	ld   [bc], a                                     ; $43cf: $02
	nop                                              ; $43d0: $00
	ld   [hl], l                                     ; $43d1: $75
	ld   h, a                                        ; $43d2: $67
	ld   e, c                                        ; $43d3: $59
	sub  a                                           ; $43d4: $97
	rst  $38                                         ; $43d5: $ff
	rst  $38                                         ; $43d6: $ff
	dec  c                                           ; $43d7: $0d
	nop                                              ; $43d8: $00
	ld   a, [bc]                                     ; $43d9: $0a
	ld   bc, $0804                                   ; $43da: $01 $04 $08
	inc  b                                           ; $43dd: $04
	cpl                                              ; $43de: $2f
	ld   a, c                                        ; $43df: $79
	inc  b                                           ; $43e0: $04
	adc  a                                           ; $43e1: $8f
	inc  b                                           ; $43e2: $04
	jr   @+$7e                                       ; $43e3: $18 $7c

	inc  b                                           ; $43e5: $04
	xor  b                                           ; $43e6: $a8
	dec  b                                           ; $43e7: $05
	ld   hl, $905a                                   ; $43e8: $21 $5a $90
	ld   [hl], a                                     ; $43eb: $77
	sbc  c                                           ; $43ec: $99
	adc  h                                           ; $43ed: $8c
	ld   [hl], l                                     ; $43ee: $75
	dec  c                                           ; $43ef: $0d
	ld   [bc], a                                     ; $43f0: $02
	reti                                             ; $43f1: $d9


	dec  b                                           ; $43f2: $05
	jr   nc, jr_064_446d                             ; $43f3: $30 $78

	and  c                                           ; $43f5: $a1
	ld   [hl], h                                     ; $43f6: $74
	sbc  [hl]                                        ; $43f7: $9e
	halt                                             ; $43f8: $76
	ld   [hl], h                                     ; $43f9: $74
	sub  b                                           ; $43fa: $90
	ld   [bc], a                                     ; $43fb: $02
	ld   h, l                                        ; $43fc: $65
	ld   d, [hl]                                     ; $43fd: $56
	dec  c                                           ; $43fe: $0d
	sub  a                                           ; $43ff: $97
	sbc  d                                           ; $4400: $9a
	adc  h                                           ; $4401: $8c
	ld   l, c                                        ; $4402: $69
	and  c                                           ; $4403: $a1
	ld   e, a                                        ; $4404: $5f
	ld   [hl], a                                     ; $4405: $77
	ld   a, e                                        ; $4406: $7b
	sbc  a                                           ; $4407: $9f
	dec  c                                           ; $4408: $0d
	nop                                              ; $4409: $00
	ld   a, [bc]                                     ; $440a: $0a
	ld   b, $9e                                      ; $440b: $06 $9e
	ld   de, $011c                                   ; $440d: $11 $1c $01
	inc  bc                                          ; $4410: $03
	inc  bc                                          ; $4411: $03
	ld   bc, $9e50                                   ; $4412: $01 $50 $9e
	or   h                                           ; $4415: $b4
	ei                                               ; $4416: $fb
	db   $d3                                         ; $4417: $d3
	ei                                               ; $4418: $fb
	ld   e, d                                        ; $4419: $5a
	dec  c                                           ; $441a: $0d
	ld   h, e                                        ; $441b: $63
	adc  a                                           ; $441c: $8f
	ld   l, a                                        ; $441d: $6f
	sub  c                                           ; $441e: $91
	ld   d, d                                        ; $441f: $52
	adc  h                                           ; $4420: $8c
	ld   h, a                                        ; $4421: $67
	sub  [hl]                                        ; $4422: $96
	sbc  a                                           ; $4423: $9f
	dec  c                                           ; $4424: $0d
	nop                                              ; $4425: $00
	ld   a, [bc]                                     ; $4426: $0a
	rrca                                             ; $4427: $0f
	nop                                              ; $4428: $00
	ld   bc, $010d                                   ; $4429: $01 $0d $01
	nop                                              ; $442c: $00
	ld   bc, $546b                                   ; $442d: $01 $6b $54
	ld   [hl], l                                     ; $4430: $75
	ld   h, a                                        ; $4431: $67
	ld   a, e                                        ; $4432: $7b
	sbc  a                                           ; $4433: $9f
	dec  c                                           ; $4434: $0d
	nop                                              ; $4435: $00
	ld   a, [bc]                                     ; $4436: $0a
	inc  e                                           ; $4437: $1c
	ld   bc, $0101                                   ; $4438: $01 $01 $01
	ld   bc, $ffff                                   ; $443b: $01 $ff $ff
	ld   e, b                                        ; $443e: $58
	ld   d, d                                        ; $443f: $52
	ld   h, l                                        ; $4440: $65
	ld   d, d                                        ; $4441: $52
	or   h                                           ; $4442: $b4
	ei                                               ; $4443: $fb
	db   $d3                                         ; $4444: $d3
	ei                                               ; $4445: $fb
	ld   [hl], l                                     ; $4446: $75
	ld   h, a                                        ; $4447: $67
	ld   a, e                                        ; $4448: $7b
	sbc  a                                           ; $4449: $9f
	dec  c                                           ; $444a: $0d
	nop                                              ; $444b: $00
	ld   a, [bc]                                     ; $444c: $0a
	add  hl, de                                      ; $444d: $19
	dec  b                                           ; $444e: $05
	inc  bc                                          ; $444f: $03
	inc  b                                           ; $4450: $04
	ld   l, d                                        ; $4451: $6a
	and  b                                           ; $4452: $a0
	ld   [bc], a                                     ; $4453: $02
	sub  l                                           ; $4454: $95
	sbc  c                                           ; $4455: $99
	nop                                              ; $4456: $00
	nop                                              ; $4457: $00
	inc  b                                           ; $4458: $04
	call nc, $02a0                                   ; $4459: $d4 $a0 $02
	sub  l                                           ; $445c: $95
	sbc  c                                           ; $445d: $99
	nop                                              ; $445e: $00
	ld   bc, $ae02                                   ; $445f: $01 $02 $ae
	and  b                                           ; $4462: $a0
	ld   [bc], a                                     ; $4463: $02
	sub  l                                           ; $4464: $95
	sbc  c                                           ; $4465: $99
	nop                                              ; $4466: $00
	ld   [bc], a                                     ; $4467: $02
	rlca                                             ; $4468: $07
	ld   d, $12                                      ; $4469: $16 $12
	ld   [bc], a                                     ; $446b: $02
	inc  bc                                          ; $446c: $03

jr_064_446d:
	ld   bc, $2000                                   ; $446d: $01 $00 $20
	nop                                              ; $4470: $00
	rlca                                             ; $4471: $07
	add  hl, sp                                      ; $4472: $39
	ld   [de], a                                     ; $4473: $12
	ld   [bc], a                                     ; $4474: $02
	inc  bc                                          ; $4475: $03
	ld   bc, $2001                                   ; $4476: $01 $01 $20
	nop                                              ; $4479: $00
	rlca                                             ; $447a: $07
	ld   h, l                                        ; $447b: $65
	ld   [de], a                                     ; $447c: $12
	ld   [bc], a                                     ; $447d: $02
	inc  bc                                          ; $447e: $03
	ld   bc, $2002                                   ; $447f: $01 $02 $20
	nop                                              ; $4482: $00
	ld   b, $bc                                      ; $4483: $06 $bc
	ld   [de], a                                     ; $4485: $12
	rrca                                             ; $4486: $0f
	nop                                              ; $4487: $00
	ld   bc, $6301                                   ; $4488: $01 $01 $63
	ld   e, l                                        ; $448b: $5d
	sub  a                                           ; $448c: $97
	ld   h, e                                        ; $448d: $63
	and  c                                           ; $448e: $a1
	ld   a, h                                        ; $448f: $7c
	inc  b                                           ; $4490: $04
	ld   l, d                                        ; $4491: $6a
	ld   [hl], c                                     ; $4492: $71
	ld   [hl], h                                     ; $4493: $74
	dec  c                                           ; $4494: $0d
	ld   [hl], d                                     ; $4495: $72
	sub  d                                           ; $4496: $92
	ld   e, d                                        ; $4497: $5a
	ld   d, b                                        ; $4498: $50
	ld   [hl], c                                     ; $4499: $71
	ld   [hl], h                                     ; $449a: $74
	ld   e, e                                        ; $449b: $5b
	sbc  d                                           ; $449c: $9a
	ld   d, d                                        ; $449d: $52
	ld   [hl], l                                     ; $449e: $75
	ld   h, a                                        ; $449f: $67
	sub  [hl]                                        ; $44a0: $96
	ld   a, e                                        ; $44a1: $7b
	sbc  a                                           ; $44a2: $9f
	dec  c                                           ; $44a3: $0d
	nop                                              ; $44a4: $00
	ld   a, [bc]                                     ; $44a5: $0a
	ld   b, $91                                      ; $44a6: $06 $91
	ld   [de], a                                     ; $44a8: $12
	rrca                                             ; $44a9: $0f
	nop                                              ; $44aa: $00
	ld   bc, $6301                                   ; $44ab: $01 $01 $63
	ld   e, l                                        ; $44ae: $5d
	sub  a                                           ; $44af: $97
	ld   h, e                                        ; $44b0: $63
	and  c                                           ; $44b1: $a1
	ld   a, h                                        ; $44b2: $7c
	inc  b                                           ; $44b3: $04
	call nc, Call_064_7471                           ; $44b4: $d4 $71 $74
	dec  c                                           ; $44b7: $0d
	ld   e, e                                        ; $44b8: $5b
	sbc  d                                           ; $44b9: $9a
	ld   d, d                                        ; $44ba: $52
	ld   [hl], l                                     ; $44bb: $75
	ld   h, a                                        ; $44bc: $67
	sub  [hl]                                        ; $44bd: $96
	ld   a, e                                        ; $44be: $7b
	rst  $38                                         ; $44bf: $ff
	rst  $38                                         ; $44c0: $ff
	dec  c                                           ; $44c1: $0d
	ld   d, h                                        ; $44c2: $54
	ld   h, a                                        ; $44c3: $67
	inc  bc                                          ; $44c4: $03
	jp   $0b03                                       ; $44c5: $c3 $03 $0b


	ld   a, h                                        ; $44c8: $7c
	add  b                                           ; $44c9: $80
	halt                                             ; $44ca: $76
	adc  l                                           ; $44cb: $8d
	ld   e, d                                        ; $44cc: $5a
	rst  $38                                         ; $44cd: $ff
	rst  $38                                         ; $44ce: $ff
	dec  c                                           ; $44cf: $0d
	nop                                              ; $44d0: $00
	ld   a, [bc]                                     ; $44d1: $0a
	ld   b, $91                                      ; $44d2: $06 $91
	ld   [de], a                                     ; $44d4: $12
	rrca                                             ; $44d5: $0f
	nop                                              ; $44d6: $00
	ld   bc, $6301                                   ; $44d7: $01 $01 $63
	ld   e, l                                        ; $44da: $5d
	sub  a                                           ; $44db: $97
	ld   h, e                                        ; $44dc: $63
	and  c                                           ; $44dd: $a1
	ld   a, h                                        ; $44de: $7c
	ld   e, l                                        ; $44df: $5d
	ld   l, a                                        ; $44e0: $6f
	add  c                                           ; $44e1: $81
	sbc  c                                           ; $44e2: $99
	ld   [hl], c                                     ; $44e3: $71
	ld   [hl], h                                     ; $44e4: $74
	dec  c                                           ; $44e5: $0d
	ld   d, h                                        ; $44e6: $54
	ld   h, a                                        ; $44e7: $67
	ld   d, d                                        ; $44e8: $52
	push de                                          ; $44e9: $d5
	push af                                          ; $44ea: $f5
	or   b                                           ; $44eb: $b0
	inc  bc                                          ; $44ec: $03
	dec  bc                                          ; $44ed: $0b
	ld   h, l                                        ; $44ee: $65
	ld   [hl], h                                     ; $44ef: $74
	ld   [hl], h                                     ; $44f0: $74
	dec  c                                           ; $44f1: $0d
	ld   e, e                                        ; $44f2: $5b
	sbc  d                                           ; $44f3: $9a
	ld   d, d                                        ; $44f4: $52
	ld   [hl], l                                     ; $44f5: $75
	ld   h, a                                        ; $44f6: $67
	sub  [hl]                                        ; $44f7: $96
	ld   a, e                                        ; $44f8: $7b
	rst  $38                                         ; $44f9: $ff
	rst  $38                                         ; $44fa: $ff
	dec  c                                           ; $44fb: $0d
	nop                                              ; $44fc: $00
	ld   a, [bc]                                     ; $44fd: $0a
	ld   b, $91                                      ; $44fe: $06 $91
	ld   [de], a                                     ; $4500: $12
	inc  e                                           ; $4501: $1c
	ld   bc, $0505                                   ; $4502: $01 $05 $05
	ld   bc, $a16b                                   ; $4505: $01 $6b $a1
	ld   a, b                                        ; $4508: $78
	rst  $38                                         ; $4509: $ff
	rst  $38                                         ; $450a: $ff
	dec  c                                           ; $450b: $0d
	ld   d, b                                        ; $450c: $50
	sub  a                                           ; $450d: $97
	ld   l, l                                        ; $450e: $6d
	adc  h                                           ; $450f: $8c
	ld   [hl], c                                     ; $4510: $71
	ld   [hl], h                                     ; $4511: $74
	ld   [bc], a                                     ; $4512: $02
	sbc  l                                           ; $4513: $9d
	sbc  l                                           ; $4514: $9d
	sbc  d                                           ; $4515: $9a
	sbc  c                                           ; $4516: $99
	halt                                             ; $4517: $76
	dec  c                                           ; $4518: $0d
	ld   [hl], h                                     ; $4519: $74
	sbc  d                                           ; $451a: $9a
	ld   l, a                                        ; $451b: $6f
	sub  c                                           ; $451c: $91
	ld   d, d                                        ; $451d: $52
	adc  h                                           ; $451e: $8c
	ld   h, a                                        ; $451f: $67
	sub  [hl]                                        ; $4520: $96
	rst  $38                                         ; $4521: $ff
	rst  $38                                         ; $4522: $ff
	sub  b                                           ; $4523: $90
	ld   d, h                                        ; $4524: $54
	sbc  a                                           ; $4525: $9f
	dec  c                                           ; $4526: $0d
	nop                                              ; $4527: $00
	ld   a, [bc]                                     ; $4528: $0a
	ld   b, $e0                                      ; $4529: $06 $e0
	ld   [de], a                                     ; $452b: $12
	inc  e                                           ; $452c: $1c
	ld   bc, $0505                                   ; $452d: $01 $05 $05
	ld   bc, $6e92                                   ; $4530: $01 $92 $6e
	rst  $38                                         ; $4533: $ff
	rst  $38                                         ; $4534: $ff
	ld   l, e                                        ; $4535: $6b
	and  c                                           ; $4536: $a1
	ld   a, b                                        ; $4537: $78
	cp   c                                           ; $4538: $b9
	call nz, $0d76                                   ; $4539: $c4 $76 $0d
	ld   [bc], a                                     ; $453c: $02
	sub  l                                           ; $453d: $95
	ld   [hl], d                                     ; $453e: $72
	adc  a                                           ; $453f: $8f
	ld   a, b                                        ; $4540: $78
	ld   d, d                                        ; $4541: $52
	ld   [hl], l                                     ; $4542: $75
	ld   [bc], a                                     ; $4543: $02
	inc  [hl]                                        ; $4544: $34
	ld   h, e                                        ; $4545: $63
	ld   d, d                                        ; $4546: $52
	sub  [hl]                                        ; $4547: $96
	rst  $38                                         ; $4548: $ff
	rst  $38                                         ; $4549: $ff
	dec  c                                           ; $454a: $0d
	nop                                              ; $454b: $00
	ld   a, [bc]                                     ; $454c: $0a
	ld   b, $e0                                      ; $454d: $06 $e0
	ld   [de], a                                     ; $454f: $12
	ld   bc, $9e6b                                   ; $4550: $01 $6b $9e
	ld   l, e                                        ; $4553: $6b
	sbc  e                                           ; $4554: $9b
	ld   l, e                                        ; $4555: $6b
	sbc  e                                           ; $4556: $9b
	inc  bc                                          ; $4557: $03
	add  b                                           ; $4558: $80
	adc  h                                           ; $4559: $8c
	ld   h, l                                        ; $455a: $65
	sub  l                                           ; $455b: $95
	ld   d, h                                        ; $455c: $54
	sbc  a                                           ; $455d: $9f
	dec  c                                           ; $455e: $0d
	nop                                              ; $455f: $00
	ld   a, [bc]                                     ; $4560: $0a
	dec  c                                           ; $4561: $0d
	nop                                              ; $4562: $00
	nop                                              ; $4563: $00
	rrca                                             ; $4564: $0f
	nop                                              ; $4565: $00
	ld   bc, $3907                                   ; $4566: $01 $07 $39
	inc  de                                          ; $4569: $13
	inc  bc                                          ; $456a: $03
	ld   de, $be01                                   ; $456b: $11 $01 $be
	dec  h                                           ; $456e: $25
	nop                                              ; $456f: $00
	inc  c                                           ; $4570: $0c
	ld   [bc], a                                     ; $4571: $02
	ld   c, $06                                      ; $4572: $0e $06
	inc  e                                           ; $4574: $1c
	ld   bc, $0101                                   ; $4575: $01 $01 $01
	ld   bc, $a502                                   ; $4578: $01 $02 $a5
	inc  b                                           ; $457b: $04
	xor  d                                           ; $457c: $aa
	ld   a, l                                        ; $457d: $7d
	sbc  [hl]                                        ; $457e: $9e
	dec  b                                           ; $457f: $05
	inc  de                                          ; $4580: $13
	ld   h, l                                        ; $4581: $65
	ld   e, c                                        ; $4582: $59
	ld   [hl], c                                     ; $4583: $71
	ld   l, l                                        ; $4584: $6d
	ld   [hl], l                                     ; $4585: $75
	ld   h, a                                        ; $4586: $67
	sbc  a                                           ; $4587: $9f
	dec  c                                           ; $4588: $0d
	ld   d, b                                        ; $4589: $50
	sbc  b                                           ; $458a: $98
	ld   e, d                                        ; $458b: $5a
	halt                                             ; $458c: $76
	ld   d, h                                        ; $458d: $54
	ld   h, d                                        ; $458e: $62
	ld   h, h                                        ; $458f: $64
	ld   d, d                                        ; $4590: $52
	adc  h                                           ; $4591: $8c
	ld   h, l                                        ; $4592: $65
	ld   l, l                                        ; $4593: $6d
	sbc  a                                           ; $4594: $9f
	dec  c                                           ; $4595: $0d
	nop                                              ; $4596: $00
	ld   a, [bc]                                     ; $4597: $0a
	dec  b                                           ; $4598: $05
	add  b                                           ; $4599: $80
	ld   [de], a                                     ; $459a: $12
	ld   bc, $0001                                   ; $459b: $01 $01 $00
	dec  c                                           ; $459e: $0d
	nop                                              ; $459f: $00
	nop                                              ; $45a0: $00
	rrca                                             ; $45a1: $0f
	nop                                              ; $45a2: $00
	ld   bc, $1e09                                   ; $45a3: $01 $09 $1e
	add  hl, hl                                      ; $45a6: $29
	nop                                              ; $45a7: $00
	nop                                              ; $45a8: $00
	inc  hl                                          ; $45a9: $23
	sub  c                                           ; $45aa: $91
	inc  e                                           ; $45ab: $1c
	ld   bc, $0000                                   ; $45ac: $01 $00 $00
	ld   bc, $0804                                   ; $45af: $01 $04 $08
	ld   [bc], a                                     ; $45b2: $02
	sub  d                                           ; $45b3: $92
	adc  h                                           ; $45b4: $8c
	ld   [hl], l                                     ; $45b5: $75
	inc  b                                           ; $45b6: $04
	sbc  a                                           ; $45b7: $9f
	ld   e, e                                        ; $45b8: $5b
	adc  h                                           ; $45b9: $8c
	ld   h, l                                        ; $45ba: $65
	sub  l                                           ; $45bb: $95
	ld   d, h                                        ; $45bc: $54
	ld   e, c                                        ; $45bd: $59
	sbc  a                                           ; $45be: $9f
	dec  c                                           ; $45bf: $0d
	nop                                              ; $45c0: $00
	ld   a, [bc]                                     ; $45c1: $0a
	inc  e                                           ; $45c2: $1c
	ld   bc, $0303                                   ; $45c3: $01 $03 $03
	ld   bc, $9e50                                   ; $45c6: $01 $50 $9e
	ld   h, d                                        ; $45c9: $62
	adc  a                                           ; $45ca: $8f
	and  c                                           ; $45cb: $a1
	ld   a, b                                        ; $45cc: $78
	ld   h, e                                        ; $45cd: $63
	ld   d, d                                        ; $45ce: $52
	ld   a, [$ac0d]                                  ; $45cf: $fa $0d $ac
	sub  $a8                                         ; $45d2: $d6 $a8
	ld   a, c                                        ; $45d4: $79
	sbc  l                                           ; $45d5: $9d
	ld   h, a                                        ; $45d6: $67
	sbc  d                                           ; $45d7: $9a
	sub  b                                           ; $45d8: $90
	ld   a, h                                        ; $45d9: $7c
	dec  c                                           ; $45da: $0d
	ld   h, l                                        ; $45db: $65
	ld   l, a                                        ; $45dc: $6f
	sub  c                                           ; $45dd: $91
	ld   d, d                                        ; $45de: $52
	adc  h                                           ; $45df: $8c
	ld   h, l                                        ; $45e0: $65
	ld   l, l                                        ; $45e1: $6d
	ld   a, [$000d]                                  ; $45e2: $fa $0d $00
	ld   a, [bc]                                     ; $45e5: $0a
	inc  e                                           ; $45e6: $1c
	ld   bc, $0404                                   ; $45e7: $01 $04 $04
	ld   bc, $8d67                                   ; $45ea: $01 $67 $8d
	adc  h                                           ; $45ed: $8c
	ld   l, c                                        ; $45ee: $69
	and  c                                           ; $45ef: $a1
	sbc  [hl]                                        ; $45f0: $9e
	dec  c                                           ; $45f1: $0d
	ld   h, a                                        ; $45f2: $67
	ld   e, [hl]                                     ; $45f3: $5e
	sub  b                                           ; $45f4: $90
	ld   [hl], a                                     ; $45f5: $77
	ld   [hl], c                                     ; $45f6: $71
	ld   [hl], h                                     ; $45f7: $74
	ld   e, e                                        ; $45f8: $5b
	adc  h                                           ; $45f9: $8c
	ld   h, a                                        ; $45fa: $67
	ld   e, c                                        ; $45fb: $59
	sub  a                                           ; $45fc: $97
	sbc  a                                           ; $45fd: $9f
	dec  c                                           ; $45fe: $0d
	nop                                              ; $45ff: $00
	ld   a, [bc]                                     ; $4600: $0a
	dec  c                                           ; $4601: $0d
	nop                                              ; $4602: $00
	nop                                              ; $4603: $00
	rrca                                             ; $4604: $0f
	nop                                              ; $4605: $00
	ld   bc, $ff01                                   ; $4606: $01 $01 $ff
	rst  $38                                         ; $4609: $ff
	rst  $38                                         ; $460a: $ff
	rst  $38                                         ; $460b: $ff
	dec  c                                           ; $460c: $0d
	nop                                              ; $460d: $00
	ld   a, [bc]                                     ; $460e: $0a
	dec  c                                           ; $460f: $0d
	rlca                                             ; $4610: $07
	nop                                              ; $4611: $00
	ld   bc, $0301                                   ; $4612: $01 $01 $03
	ld   d, b                                        ; $4615: $50
	rst  $38                                         ; $4616: $ff
	rst  $38                                         ; $4617: $ff
	ld   [bc], a                                     ; $4618: $02
	rlc  e                                           ; $4619: $cb $03
	add  d                                           ; $461b: $82
	ld   h, e                                        ; $461c: $63
	and  c                                           ; $461d: $a1
	ld   l, [hl]                                     ; $461e: $6e
	ld   bc, $0d04                                   ; $461f: $01 $04 $0d
	nop                                              ; $4622: $00
	ld   a, [bc]                                     ; $4623: $0a
	inc  e                                           ; $4624: $1c
	rlca                                             ; $4625: $07
	ld   bc, $0101                                   ; $4626: $01 $01 $01
	inc  b                                           ; $4629: $04
	xor  d                                           ; $462a: $aa
	inc  b                                           ; $462b: $04
	adc  a                                           ; $462c: $8f
	ld   a, h                                        ; $462d: $7c
	inc  bc                                          ; $462e: $03
	and  a                                           ; $462f: $a7
	inc  b                                           ; $4630: $04
	xor  d                                           ; $4631: $aa
	ld   a, l                                        ; $4632: $7d
	dec  c                                           ; $4633: $0d
	or   l                                           ; $4634: $b5
	ldh  [$b5], a                                    ; $4635: $e0 $b5
	ldh  [$65], a                                    ; $4637: $e0 $65
	ld   [hl], h                                     ; $4639: $74
	ld   [hl], h                                     ; $463a: $74
	dec  c                                           ; $463b: $0d
	ld   d, h                                        ; $463c: $54
	ld   h, h                                        ; $463d: $64
	ld   [hl], c                                     ; $463e: $71
	ld   l, l                                        ; $463f: $6d
	ld   d, d                                        ; $4640: $52
	ld   [hl], l                                     ; $4641: $75
	ei                                               ; $4642: $fb
	ld   h, a                                        ; $4643: $67
	ld   a, [$000d]                                  ; $4644: $fa $0d $00
	ld   a, [bc]                                     ; $4647: $0a
	dec  c                                           ; $4648: $0d
	nop                                              ; $4649: $00
	nop                                              ; $464a: $00
	rrca                                             ; $464b: $0f
	nop                                              ; $464c: $00
	ld   bc, $0101                                   ; $464d: $01 $01 $01
	inc  bc                                          ; $4650: $03
	ld   [bc], a                                     ; $4651: $02
	ld   a, a                                        ; $4652: $7f
	ld   [hl], c                                     ; $4653: $71
	ld   [hl], h                                     ; $4654: $74
	ld   h, l                                        ; $4655: $65
	adc  h                                           ; $4656: $8c
	ld   [hl], c                                     ; $4657: $71
	ld   l, l                                        ; $4658: $6d
	rst  $38                                         ; $4659: $ff
	rst  $38                                         ; $465a: $ff
	ld   bc, $0d04                                   ; $465b: $01 $04 $0d
	nop                                              ; $465e: $00
	ld   a, [bc]                                     ; $465f: $0a
	inc  e                                           ; $4660: $1c
	ld   bc, $0101                                   ; $4661: $01 $01 $01
	ld   bc, $8d67                                   ; $4664: $01 $67 $8d
	adc  h                                           ; $4667: $8c
	ld   l, c                                        ; $4668: $69
	and  c                                           ; $4669: $a1
	ld   a, [$580d]                                  ; $466a: $fa $0d $58
	adc  h                                           ; $466d: $8c
	ld   l, l                                        ; $466e: $6d
	ld   l, c                                        ; $466f: $69
	ld   h, l                                        ; $4670: $65
	adc  h                                           ; $4671: $8c
	ld   h, l                                        ; $4672: $65
	ld   l, l                                        ; $4673: $6d
	sbc  a                                           ; $4674: $9f
	dec  c                                           ; $4675: $0d
	nop                                              ; $4676: $00
	ld   a, [bc]                                     ; $4677: $0a
	ld   bc, $6763                                   ; $4678: $01 $63 $67
	ld   e, d                                        ; $467b: $5a
	ld   a, c                                        ; $467c: $79
	inc  bc                                          ; $467d: $03
	and  a                                           ; $467e: $a7
	adc  l                                           ; $467f: $8d
	ld   a, h                                        ; $4680: $7c
	inc  b                                           ; $4681: $04
	xor  d                                           ; $4682: $aa
	ld   l, [hl]                                     ; $4683: $6e
	ld   e, a                                        ; $4684: $5f
	ld   d, b                                        ; $4685: $50
	ld   [hl], c                                     ; $4686: $71
	ld   [hl], h                                     ; $4687: $74
	dec  c                                           ; $4688: $0d
	ld   a, c                                        ; $4689: $79
	ld   e, h                                        ; $468a: $5c
	sub  d                                           ; $468b: $92
	ld   e, c                                        ; $468c: $59
	ld   [hl], l                                     ; $468d: $75
	ld   h, a                                        ; $468e: $67
	ld   a, e                                        ; $468f: $7b
	rst  $38                                         ; $4690: $ff
	rst  $38                                         ; $4691: $ff
	dec  c                                           ; $4692: $0d
	nop                                              ; $4693: $00
	ld   a, [bc]                                     ; $4694: $0a
	add  hl, de                                      ; $4695: $19
	dec  b                                           ; $4696: $05
	ld   bc, $5d63                                   ; $4697: $01 $63 $5d
	sub  a                                           ; $469a: $97
	and  b                                           ; $469b: $a0
	ld   [bc], a                                     ; $469c: $02
	and  c                                           ; $469d: $a1
	ld   [hl], e                                     ; $469e: $73
	ld   e, c                                        ; $469f: $59
	ld   d, h                                        ; $46a0: $54
	nop                                              ; $46a1: $00
	nop                                              ; $46a2: $00
	rlca                                             ; $46a3: $07
	ccf                                              ; $46a4: $3f
	inc  d                                           ; $46a5: $14
	ld   [bc], a                                     ; $46a6: $02
	inc  bc                                          ; $46a7: $03
	ld   bc, $2000                                   ; $46a8: $01 $00 $20
	nop                                              ; $46ab: $00
	ld   b, $ab                                      ; $46ac: $06 $ab
	inc  d                                           ; $46ae: $14
	rrca                                             ; $46af: $0f
	nop                                              ; $46b0: $00
	ld   bc, $5001                                   ; $46b1: $01 $01 $50
	rst  $38                                         ; $46b4: $ff
	rst  $38                                         ; $46b5: $ff
	sub  b                                           ; $46b6: $90
	ld   h, l                                        ; $46b7: $65
	ld   e, c                                        ; $46b8: $59
	ld   h, l                                        ; $46b9: $65
	ld   [hl], h                                     ; $46ba: $74
	dec  c                                           ; $46bb: $0d
	inc  b                                           ; $46bc: $04
	ld   l, l                                        ; $46bd: $6d
	ld   [hl], c                                     ; $46be: $71
	ld   [hl], h                                     ; $46bf: $74
	inc  b                                           ; $46c0: $04
	sbc  a                                           ; $46c1: $9f
	ld   e, l                                        ; $46c2: $5d
	ld   a, h                                        ; $46c3: $7c
	inc  bc                                          ; $46c4: $03
	ld   [hl], b                                     ; $46c5: $70
	ld   d, d                                        ; $46c6: $52
	ld   [hl], l                                     ; $46c7: $75
	ld   h, a                                        ; $46c8: $67
	ld   e, c                                        ; $46c9: $59
	ld   sp, hl                                      ; $46ca: $f9
	dec  c                                           ; $46cb: $0d
	nop                                              ; $46cc: $00
	ld   a, [bc]                                     ; $46cd: $0a
	inc  e                                           ; $46ce: $1c
	ld   bc, $0101                                   ; $46cf: $01 $01 $01
	ld   bc, $526e                                   ; $46d2: $01 $6e $52
	ld   h, [hl]                                     ; $46d5: $66
	sub  l                                           ; $46d6: $95
	ld   d, h                                        ; $46d7: $54
	add  h                                           ; $46d8: $84
	ld   [hl], l                                     ; $46d9: $75
	ld   h, a                                        ; $46da: $67
	sub  [hl]                                        ; $46db: $96
	sbc  a                                           ; $46dc: $9f
	dec  c                                           ; $46dd: $0d
	sub  $d6                                         ; $46de: $d6 $d6
	rst  $38                                         ; $46e0: $ff
	rst  $38                                         ; $46e1: $ff
	dec  c                                           ; $46e2: $0d
	nop                                              ; $46e3: $00
	ld   a, [bc]                                     ; $46e4: $0a
	ld   bc, $a16b                                   ; $46e5: $01 $6b $a1
	ld   a, b                                        ; $46e8: $78
	cp   h                                           ; $46e9: $bc
	db   $ec                                         ; $46ea: $ec
	sub  $a0                                         ; $46eb: $d6 $a0
	ld   h, e                                        ; $46ed: $63
	sub  a                                           ; $46ee: $97
	ld   [hl], c                                     ; $46ef: $71
	halt                                             ; $46f0: $76
	dec  c                                           ; $46f1: $0d
	ld   [bc], a                                     ; $46f2: $02
	sbc  l                                           ; $46f3: $9d
	ld   d, [hl]                                     ; $46f4: $56
	sbc  c                                           ; $46f5: $99
	ld   a, b                                        ; $46f6: $78
	and  c                                           ; $46f7: $a1
	ld   [hl], h                                     ; $46f8: $74
	sbc  [hl]                                        ; $46f9: $9e
	ld   [$6300], sp                                 ; $46fa: $08 $00 $63
	and  c                                           ; $46fd: $a1
	dec  c                                           ; $46fe: $0d
	ld   [hl], h                                     ; $46ff: $74
	sbc  [hl]                                        ; $4700: $9e
	inc  bc                                          ; $4701: $03
	ld   l, [hl]                                     ; $4702: $6e
	ld   a, h                                        ; $4703: $7c
	inc  bc                                          ; $4704: $03
	add  d                                           ; $4705: $82
	ld   a, c                                        ; $4706: $79
	db   $e4                                         ; $4707: $e4
	rst  ToBoot                                         ; $4708: $c7
	ld   l, e                                        ; $4709: $6b
	ld   d, h                                        ; $470a: $54
	ld   [hl], l                                     ; $470b: $75
	ld   h, a                                        ; $470c: $67
	ld   a, e                                        ; $470d: $7b
	sbc  a                                           ; $470e: $9f
	dec  c                                           ; $470f: $0d
	nop                                              ; $4710: $00
	ld   a, [bc]                                     ; $4711: $0a
	dec  c                                           ; $4712: $0d
	nop                                              ; $4713: $00
	nop                                              ; $4714: $00
	rrca                                             ; $4715: $0f
	nop                                              ; $4716: $00
	ld   bc, $d306                                   ; $4717: $01 $06 $d3
	inc  d                                           ; $471a: $14
	inc  e                                           ; $471b: $1c
	ld   bc, $0000                                   ; $471c: $01 $00 $00
	ld   bc, $ffff                                   ; $471f: $01 $ff $ff
	ld   [hl], d                                     ; $4722: $72
	ld   e, c                                        ; $4723: $59
	sbc  d                                           ; $4724: $9a
	adc  h                                           ; $4725: $8c
	ld   h, l                                        ; $4726: $65
	ld   l, l                                        ; $4727: $6d
	ld   e, c                                        ; $4728: $59
	ld   sp, hl                                      ; $4729: $f9
	dec  c                                           ; $472a: $0d
	sub  b                                           ; $472b: $90
	ld   d, h                                        ; $472c: $54
	inc  bc                                          ; $472d: $03
	ld   l, h                                        ; $472e: $6c
	ld   h, l                                        ; $472f: $65
	ld   [hl], l                                     ; $4730: $75
	ld   [bc], a                                     ; $4731: $02
	ld   l, h                                        ; $4732: $6c
	inc  bc                                          ; $4733: $03
	ld   d, h                                        ; $4734: $54
	ld   [hl], l                                     ; $4735: $75
	ld   h, a                                        ; $4736: $67
	ld   e, c                                        ; $4737: $59
	sub  a                                           ; $4738: $97
	sbc  a                                           ; $4739: $9f
	dec  c                                           ; $473a: $0d
	nop                                              ; $473b: $00
	ld   a, [bc]                                     ; $473c: $0a
	dec  c                                           ; $473d: $0d
	nop                                              ; $473e: $00
	nop                                              ; $473f: $00
	rrca                                             ; $4740: $0f
	nop                                              ; $4741: $00
	ld   bc, $8623                                   ; $4742: $01 $23 $86
	inc  e                                           ; $4745: $1c
	ld   bc, $0000                                   ; $4746: $01 $00 $00
	ld   bc, $5490                                   ; $4749: $01 $90 $54
	ld   h, a                                        ; $474c: $67
	ld   e, [hl]                                     ; $474d: $5e
	inc  b                                           ; $474e: $04
	ld   [$9202], sp                                 ; $474f: $08 $02 $92
	ld   [hl], l                                     ; $4752: $75
	ld   h, a                                        ; $4753: $67
	ld   a, e                                        ; $4754: $7b
	sbc  a                                           ; $4755: $9f
	dec  c                                           ; $4756: $0d
	nop                                              ; $4757: $00
	ld   a, [bc]                                     ; $4758: $0a
	inc  e                                           ; $4759: $1c
	ld   bc, $0505                                   ; $475a: $01 $05 $05
	ld   bc, $ff50                                   ; $475d: $01 $50 $ff
	rst  $38                                         ; $4760: $ff
	ld   l, a                                        ; $4761: $6f
	sub  l                                           ; $4762: $95
	ld   [hl], c                                     ; $4763: $71
	halt                                             ; $4764: $76
	inc  b                                           ; $4765: $04
	adc  h                                           ; $4766: $8c
	ld   a, b                                        ; $4767: $78
	inc  bc                                          ; $4768: $03
	dec  d                                           ; $4769: $15
	inc  b                                           ; $476a: $04
	cp   a                                           ; $476b: $bf
	ld   h, l                                        ; $476c: $65
	ld   [hl], h                                     ; $476d: $74
	dec  c                                           ; $476e: $0d
	ld   d, d                                        ; $476f: $52
	ld   d, d                                        ; $4770: $52
	ld   [hl], l                                     ; $4771: $75
	ld   h, a                                        ; $4772: $67
	ld   e, c                                        ; $4773: $59
	ld   sp, hl                                      ; $4774: $f9
	dec  c                                           ; $4775: $0d
	nop                                              ; $4776: $00
	ld   a, [bc]                                     ; $4777: $0a
	ld   bc, $0008                                   ; $4778: $01 $08 $00
	ld   h, e                                        ; $477b: $63
	and  c                                           ; $477c: $a1
	ld   [hl], h                                     ; $477d: $74
	sbc  [hl]                                        ; $477e: $9e
	dec  c                                           ; $477f: $0d
	ld   [hl], a                                     ; $4780: $77
	and  c                                           ; $4781: $a1
	ld   a, b                                        ; $4782: $78
	inc  bc                                          ; $4783: $03
	ld   l, [hl]                                     ; $4784: $6e
	ld   a, h                                        ; $4785: $7c
	inc  bc                                          ; $4786: $03
	add  d                                           ; $4787: $82
	ld   e, d                                        ; $4788: $5a
	ld   [bc], a                                     ; $4789: $02
	sbc  d                                           ; $478a: $9a
	ld   e, e                                        ; $478b: $5b
	ld   [hl], l                                     ; $478c: $75
	ld   h, a                                        ; $478d: $67
	ld   e, c                                        ; $478e: $59
	ld   sp, hl                                      ; $478f: $f9
	dec  c                                           ; $4790: $0d
	nop                                              ; $4791: $00
	ld   a, [bc]                                     ; $4792: $0a
	add  hl, de                                      ; $4793: $19
	dec  b                                           ; $4794: $05
	inc  bc                                          ; $4795: $03
	ld   h, e                                        ; $4796: $63
	ld   e, l                                        ; $4797: $5d
	sub  a                                           ; $4798: $97
	ld   h, e                                        ; $4799: $63
	and  c                                           ; $479a: $a1
	adc  l                                           ; $479b: $8d
	ld   l, l                                        ; $479c: $6d
	ld   d, d                                        ; $479d: $52
	ld   a, b                                        ; $479e: $78
	inc  bc                                          ; $479f: $03
	add  d                                           ; $47a0: $82
	nop                                              ; $47a1: $00
	nop                                              ; $47a2: $00
	inc  bc                                          ; $47a3: $03
	sub  h                                           ; $47a4: $94
	inc  b                                           ; $47a5: $04
	sbc  [hl]                                        ; $47a6: $9e
	and  b                                           ; $47a7: $a0
	inc  b                                           ; $47a8: $04
	sbc  [hl]                                        ; $47a9: $9e
	ld   e, c                                        ; $47aa: $59
	ld   [hl], c                                     ; $47ab: $71
	ld   [hl], h                                     ; $47ac: $74
	ld   e, l                                        ; $47ad: $5d
	sbc  d                                           ; $47ae: $9a
	sbc  c                                           ; $47af: $99
	inc  bc                                          ; $47b0: $03
	add  d                                           ; $47b1: $82
	nop                                              ; $47b2: $00
	ld   bc, $6e03                                   ; $47b3: $01 $03 $6e
	ld   [bc], a                                     ; $47b6: $02
	db   $fc                                         ; $47b7: $fc
	ld   a, b                                        ; $47b8: $78
	sub  a                                           ; $47b9: $97
	ld   l, [hl]                                     ; $47ba: $6e
	sbc  d                                           ; $47bb: $9a
	ld   [hl], l                                     ; $47bc: $75
	sub  b                                           ; $47bd: $90
	nop                                              ; $47be: $00
	ld   [bc], a                                     ; $47bf: $02
	rlca                                             ; $47c0: $07
	ld   l, [hl]                                     ; $47c1: $6e
	dec  d                                           ; $47c2: $15
	ld   [bc], a                                     ; $47c3: $02
	inc  bc                                          ; $47c4: $03
	ld   bc, $2000                                   ; $47c5: $01 $00 $20
	nop                                              ; $47c8: $00
	rlca                                             ; $47c9: $07
	and  a                                           ; $47ca: $a7
	dec  d                                           ; $47cb: $15
	ld   [bc], a                                     ; $47cc: $02
	inc  bc                                          ; $47cd: $03
	ld   bc, $2001                                   ; $47ce: $01 $01 $20
	nop                                              ; $47d1: $00
	rlca                                             ; $47d2: $07
	di                                               ; $47d3: $f3
	dec  d                                           ; $47d4: $15
	ld   [bc], a                                     ; $47d5: $02
	inc  bc                                          ; $47d6: $03
	ld   bc, $2002                                   ; $47d7: $01 $02 $20
	nop                                              ; $47da: $00
	ld   b, $2c                                      ; $47db: $06 $2c
	ld   d, $0f                                      ; $47dd: $16 $0f
	nop                                              ; $47df: $00
	ld   bc, $6301                                   ; $47e0: $01 $01 $63
	ld   e, l                                        ; $47e3: $5d
	sub  a                                           ; $47e4: $97
	ld   h, e                                        ; $47e5: $63
	and  c                                           ; $47e6: $a1
	adc  l                                           ; $47e7: $8d
	ld   l, l                                        ; $47e8: $6d
	ld   d, d                                        ; $47e9: $52
	ld   a, b                                        ; $47ea: $78
	inc  bc                                          ; $47eb: $03
	add  d                                           ; $47ec: $82
	ld   [hl], l                                     ; $47ed: $75
	ld   h, a                                        ; $47ee: $67
	ld   a, e                                        ; $47ef: $7b
	sbc  a                                           ; $47f0: $9f
	dec  c                                           ; $47f1: $0d
	nop                                              ; $47f2: $00
	ld   a, [bc]                                     ; $47f3: $0a
	inc  e                                           ; $47f4: $1c
	ld   bc, $0505                                   ; $47f5: $01 $05 $05
	ld   bc, $a16b                                   ; $47f8: $01 $6b $a1
	ld   a, b                                        ; $47fb: $78
	inc  b                                           ; $47fc: $04
	ld   [hl], a                                     ; $47fd: $77
	ld   a, c                                        ; $47fe: $79
	ld   [bc], a                                     ; $47ff: $02
	sbc  l                                           ; $4800: $9d
	sbc  l                                           ; $4801: $9d
	sbc  d                                           ; $4802: $9a
	sbc  c                                           ; $4803: $99
	halt                                             ; $4804: $76
	dec  c                                           ; $4805: $0d
	ld   h, c                                        ; $4806: $61
	adc  h                                           ; $4807: $8c
	ld   [hl], c                                     ; $4808: $71
	ld   l, a                                        ; $4809: $6f
	sub  c                                           ; $480a: $91
	ld   d, d                                        ; $480b: $52
	adc  h                                           ; $480c: $8c
	ld   h, a                                        ; $480d: $67
	sub  [hl]                                        ; $480e: $96
	rst  $38                                         ; $480f: $ff
	rst  $38                                         ; $4810: $ff
	dec  c                                           ; $4811: $0d
	nop                                              ; $4812: $00
	ld   a, [bc]                                     ; $4813: $0a
	ld   b, $4d                                      ; $4814: $06 $4d
	ld   d, $0f                                      ; $4816: $16 $0f
	nop                                              ; $4818: $00
	ld   bc, $6b01                                   ; $4819: $01 $01 $6b
	ld   d, h                                        ; $481c: $54
	ld   [hl], l                                     ; $481d: $75
	ld   h, a                                        ; $481e: $67
	ld   a, e                                        ; $481f: $7b
	rst  $38                                         ; $4820: $ff
	rst  $38                                         ; $4821: $ff
	dec  c                                           ; $4822: $0d
	inc  bc                                          ; $4823: $03
	sub  h                                           ; $4824: $94
	inc  b                                           ; $4825: $04
	sbc  [hl]                                        ; $4826: $9e
	and  b                                           ; $4827: $a0
	inc  b                                           ; $4828: $04
	sbc  [hl]                                        ; $4829: $9e
	ld   e, c                                        ; $482a: $59
	ld   [hl], c                                     ; $482b: $71
	ld   [hl], h                                     ; $482c: $74
	ld   e, l                                        ; $482d: $5d
	sbc  d                                           ; $482e: $9a
	sbc  c                                           ; $482f: $99
	inc  bc                                          ; $4830: $03
	add  d                                           ; $4831: $82
	ld   e, c                                        ; $4832: $59
	sub  b                                           ; $4833: $90
	dec  c                                           ; $4834: $0d
	inc  b                                           ; $4835: $04
	dec  hl                                          ; $4836: $2b
	sbc  d                                           ; $4837: $9a
	adc  h                                           ; $4838: $8c
	ld   l, c                                        ; $4839: $69
	and  c                                           ; $483a: $a1
	sbc  a                                           ; $483b: $9f
	dec  c                                           ; $483c: $0d
	nop                                              ; $483d: $00
	ld   a, [bc]                                     ; $483e: $0a
	inc  e                                           ; $483f: $1c
	ld   bc, $0101                                   ; $4840: $01 $01 $01
	ld   bc, $9e50                                   ; $4843: $01 $50 $9e
	ld   l, e                                        ; $4846: $6b
	ld   a, h                                        ; $4847: $7c
	ld   [bc], a                                     ; $4848: $02
	and  c                                           ; $4849: $a1
	inc  bc                                          ; $484a: $03
	and  b                                           ; $484b: $a0
	ld   l, a                                        ; $484c: $6f
	inc  b                                           ; $484d: $04
	sbc  [hl]                                        ; $484e: $9e
	ld   e, c                                        ; $484f: $59
	sbc  b                                           ; $4850: $98
	adc  h                                           ; $4851: $8c
	ld   h, a                                        ; $4852: $67
	sbc  a                                           ; $4853: $9f
	dec  c                                           ; $4854: $0d
	ld   l, e                                        ; $4855: $6b
	ld   d, h                                        ; $4856: $54
	ld   [hl], l                                     ; $4857: $75
	ld   h, a                                        ; $4858: $67
	sub  [hl]                                        ; $4859: $96
	ld   a, e                                        ; $485a: $7b
	rst  $38                                         ; $485b: $ff
	rst  $38                                         ; $485c: $ff
	dec  c                                           ; $485d: $0d
	nop                                              ; $485e: $00
	ld   a, [bc]                                     ; $485f: $0a
	ld   b, $4d                                      ; $4860: $06 $4d
	ld   d, $0f                                      ; $4862: $16 $0f
	nop                                              ; $4864: $00
	ld   bc, $0301                                   ; $4865: $01 $01 $03
	ld   l, [hl]                                     ; $4868: $6e
	ld   [bc], a                                     ; $4869: $02
	db   $fc                                         ; $486a: $fc
	ld   a, b                                        ; $486b: $78
	sub  a                                           ; $486c: $97
	inc  bc                                          ; $486d: $03
	xor  c                                           ; $486e: $a9
	ld   [hl], l                                     ; $486f: $75
	sub  b                                           ; $4870: $90
	ld   d, d                                        ; $4871: $52
	ld   d, d                                        ; $4872: $52
	ld   [hl], l                                     ; $4873: $75
	ld   h, a                                        ; $4874: $67
	sbc  a                                           ; $4875: $9f
	dec  c                                           ; $4876: $0d
	nop                                              ; $4877: $00
	ld   a, [bc]                                     ; $4878: $0a
	inc  e                                           ; $4879: $1c
	ld   bc, $0404                                   ; $487a: $01 $04 $04
	ld   bc, $8c50                                   ; $487d: $01 $50 $8c
	sbc  b                                           ; $4880: $98
	ld   l, e                                        ; $4881: $6b
	ld   d, h                                        ; $4882: $54
	ld   d, d                                        ; $4883: $52
	ld   d, h                                        ; $4884: $54
	ld   a, h                                        ; $4885: $7c
	ld   [hl], c                                     ; $4886: $71
	ld   [hl], h                                     ; $4887: $74
	dec  c                                           ; $4888: $0d
	sub  [hl]                                        ; $4889: $96
	ld   e, l                                        ; $488a: $5d
	ld   a, b                                        ; $488b: $78
	ld   d, d                                        ; $488c: $52
	halt                                             ; $488d: $76
	dec  b                                           ; $488e: $05
	pop  de                                          ; $488f: $d1
	ld   d, d                                        ; $4890: $52
	adc  h                                           ; $4891: $8c
	ld   h, a                                        ; $4892: $67
	sub  [hl]                                        ; $4893: $96
	rst  $38                                         ; $4894: $ff
	rst  $38                                         ; $4895: $ff
	dec  c                                           ; $4896: $0d
	nop                                              ; $4897: $00
	ld   a, [bc]                                     ; $4898: $0a
	ld   b, $4d                                      ; $4899: $06 $4d
	ld   d, $1c                                      ; $489b: $16 $1c
	ld   bc, $0303                                   ; $489d: $01 $03 $03
	ld   bc, $9e50                                   ; $48a0: $01 $50 $9e
	ld   h, a                                        ; $48a3: $67
	adc  l                                           ; $48a4: $8d
	adc  h                                           ; $48a5: $8c
	ld   l, c                                        ; $48a6: $69
	and  c                                           ; $48a7: $a1
	rst  $38                                         ; $48a8: $ff
	rst  $38                                         ; $48a9: $ff
	dec  c                                           ; $48aa: $0d
	inc  bc                                          ; $48ab: $03
	call c, Call_064_7956                            ; $48ac: $dc $56 $79
	ld   e, l                                        ; $48af: $5d
	ld   d, d                                        ; $48b0: $52
	inc  bc                                          ; $48b1: $03
	dec  d                                           ; $48b2: $15
	inc  b                                           ; $48b3: $04
	cp   a                                           ; $48b4: $bf
	ld   [hl], l                                     ; $48b5: $75
	ld   h, l                                        ; $48b6: $65
	ld   l, l                                        ; $48b7: $6d
	rst  $38                                         ; $48b8: $ff
	rst  $38                                         ; $48b9: $ff
	dec  c                                           ; $48ba: $0d
	nop                                              ; $48bb: $00
	ld   a, [bc]                                     ; $48bc: $0a
	rrca                                             ; $48bd: $0f
	nop                                              ; $48be: $00
	ld   bc, $6301                                   ; $48bf: $01 $01 $63
	ld   e, l                                        ; $48c2: $5d
	sub  a                                           ; $48c3: $97
	ld   h, e                                        ; $48c4: $63
	and  c                                           ; $48c5: $a1
	rst  $38                                         ; $48c6: $ff
	rst  $38                                         ; $48c7: $ff
	dec  c                                           ; $48c8: $0d
	inc  b                                           ; $48c9: $04
	ld   l, l                                        ; $48ca: $6d
	ld   e, c                                        ; $48cb: $59
	sub  a                                           ; $48cc: $97
	sub  b                                           ; $48cd: $90
	ld   [bc], a                                     ; $48ce: $02
	jp   nz, $7452                                   ; $48cf: $c2 $52 $74

	ld   d, d                                        ; $48d2: $52
	ld   d, d                                        ; $48d3: $52
	ld   [hl], l                                     ; $48d4: $75
	ld   h, a                                        ; $48d5: $67
	ld   e, c                                        ; $48d6: $59
	ld   sp, hl                                      ; $48d7: $f9
	dec  c                                           ; $48d8: $0d
	nop                                              ; $48d9: $00
	ld   a, [bc]                                     ; $48da: $0a
	inc  e                                           ; $48db: $1c
	ld   bc, $0101                                   ; $48dc: $01 $01 $01
	ld   bc, $5656                                   ; $48df: $01 $56 $56
	sbc  [hl]                                        ; $48e2: $9e
	ld   d, d                                        ; $48e3: $52
	ld   d, d                                        ; $48e4: $52
	ld   [hl], l                                     ; $48e5: $75
	ld   h, a                                        ; $48e6: $67
	sub  [hl]                                        ; $48e7: $96
	sbc  a                                           ; $48e8: $9f
	dec  c                                           ; $48e9: $0d
	nop                                              ; $48ea: $00
	ld   a, [bc]                                     ; $48eb: $0a
	rrca                                             ; $48ec: $0f
	nop                                              ; $48ed: $00
	ld   bc, $0201                                   ; $48ee: $01 $01 $02
	dec  bc                                          ; $48f1: $0b
	inc  bc                                          ; $48f2: $03
	ld   c, a                                        ; $48f3: $4f
	ld   a, c                                        ; $48f4: $79
	sub  b                                           ; $48f5: $90
	ld   [bc], a                                     ; $48f6: $02
	jp   nz, $6d52                                   ; $48f7: $c2 $52 $6d

	ld   e, c                                        ; $48fa: $59
	sub  b                                           ; $48fb: $90
	dec  c                                           ; $48fc: $0d
	inc  b                                           ; $48fd: $04
	dec  hl                                          ; $48fe: $2b
	sbc  d                                           ; $48ff: $9a
	adc  h                                           ; $4900: $8c
	ld   l, c                                        ; $4901: $69
	and  c                                           ; $4902: $a1
	ld   e, d                                        ; $4903: $5a
	sbc  [hl]                                        ; $4904: $9e
	ld   h, e                                        ; $4905: $63
	ld   e, l                                        ; $4906: $5d
	sub  a                                           ; $4907: $97
	ld   h, e                                        ; $4908: $63
	and  c                                           ; $4909: $a1
	ld   a, l                                        ; $490a: $7d
	rst  $38                                         ; $490b: $ff
	dec  c                                           ; $490c: $0d
	nop                                              ; $490d: $00
	ld   a, [bc]                                     ; $490e: $0a
	add  hl, de                                      ; $490f: $19
	dec  b                                           ; $4910: $05
	inc  bc                                          ; $4911: $03
	inc  b                                           ; $4912: $04
	ld   l, l                                        ; $4913: $6d
	ld   a, h                                        ; $4914: $7c
	ld   h, c                                        ; $4915: $61
	halt                                             ; $4916: $76
	ld   [hl], a                                     ; $4917: $77
	ld   d, h                                        ; $4918: $54
	dec  b                                           ; $4919: $05
	pop  de                                          ; $491a: $d1
	ld   d, d                                        ; $491b: $52
	adc  h                                           ; $491c: $8c
	ld   h, a                                        ; $491d: $67
	ld   e, c                                        ; $491e: $59
	ld   sp, hl                                      ; $491f: $f9
	nop                                              ; $4920: $00
	nop                                              ; $4921: $00
	inc  b                                           ; $4922: $04
	ld   c, $03                                      ; $4923: $0e $03
	sub  b                                           ; $4925: $90
	ld   h, e                                        ; $4926: $63
	and  c                                           ; $4927: $a1
	ld   e, d                                        ; $4928: $5a
	ld   [bc], a                                     ; $4929: $02
	sbc  d                                           ; $492a: $9a
	ld   e, e                                        ; $492b: $5b
	ld   a, b                                        ; $492c: $78
	and  c                                           ; $492d: $a1
	ld   [hl], l                                     ; $492e: $75
	ld   h, a                                        ; $492f: $67
	ld   e, c                                        ; $4930: $59
	ld   sp, hl                                      ; $4931: $f9
	nop                                              ; $4932: $00
	ld   bc, $a177                                   ; $4933: $01 $77 $a1
	ld   a, b                                        ; $4936: $78
	inc  bc                                          ; $4937: $03
	add  d                                           ; $4938: $82
	ld   e, d                                        ; $4939: $5a
	ld   [bc], a                                     ; $493a: $02
	sbc  d                                           ; $493b: $9a
	ld   e, e                                        ; $493c: $5b
	ld   [hl], l                                     ; $493d: $75
	ld   h, a                                        ; $493e: $67
	ld   e, c                                        ; $493f: $59
	ld   sp, hl                                      ; $4940: $f9
	nop                                              ; $4941: $00
	ld   [bc], a                                     ; $4942: $02
	rlca                                             ; $4943: $07
	pop  af                                          ; $4944: $f1
	ld   d, $02                                      ; $4945: $16 $02
	inc  bc                                          ; $4947: $03
	ld   bc, $2000                                   ; $4948: $01 $00 $20
	nop                                              ; $494b: $00
	rlca                                             ; $494c: $07
	ld   [hl], e                                     ; $494d: $73
	rla                                              ; $494e: $17
	ld   [bc], a                                     ; $494f: $02
	inc  bc                                          ; $4950: $03
	ld   bc, $2001                                   ; $4951: $01 $01 $20
	nop                                              ; $4954: $00
	rlca                                             ; $4955: $07
	cp   d                                           ; $4956: $ba
	rla                                              ; $4957: $17
	ld   [bc], a                                     ; $4958: $02
	inc  bc                                          ; $4959: $03
	ld   bc, $2002                                   ; $495a: $01 $02 $20
	nop                                              ; $495d: $00
	ld   b, $40                                      ; $495e: $06 $40
	jr   jr_064_4971                                 ; $4960: $18 $0f

	nop                                              ; $4962: $00
	ld   bc, $0401                                   ; $4963: $01 $01 $04
	ld   l, l                                        ; $4966: $6d
	ld   a, h                                        ; $4967: $7c
	ld   h, c                                        ; $4968: $61
	halt                                             ; $4969: $76
	ld   [hl], a                                     ; $496a: $77
	ld   d, h                                        ; $496b: $54
	dec  b                                           ; $496c: $05
	pop  de                                          ; $496d: $d1
	ld   d, d                                        ; $496e: $52
	adc  h                                           ; $496f: $8c
	ld   h, a                                        ; $4970: $67

jr_064_4971:
	ld   e, c                                        ; $4971: $59
	ld   sp, hl                                      ; $4972: $f9
	dec  c                                           ; $4973: $0d
	nop                                              ; $4974: $00
	ld   a, [bc]                                     ; $4975: $0a
	inc  e                                           ; $4976: $1c
	ld   bc, $0303                                   ; $4977: $01 $03 $03
	ld   bc, $ff56                                   ; $497a: $01 $56 $ff
	rst  $38                                         ; $497d: $ff
	dec  c                                           ; $497e: $0d
	nop                                              ; $497f: $00
	ld   a, [bc]                                     ; $4980: $0a
	rrca                                             ; $4981: $0f
	nop                                              ; $4982: $00
	ld   bc, $0401                                   ; $4983: $01 $01 $04
	ld   l, l                                        ; $4986: $6d
	ld   [hl], c                                     ; $4987: $71
	ld   [hl], h                                     ; $4988: $74
	rst  $38                                         ; $4989: $ff
	rst  $38                                         ; $498a: $ff
	ld   h, e                                        ; $498b: $63
	ld   e, l                                        ; $498c: $5d
	sub  a                                           ; $498d: $97
	ld   h, e                                        ; $498e: $63
	and  c                                           ; $498f: $a1
	ld   e, c                                        ; $4990: $59
	sub  a                                           ; $4991: $97
	ld   [bc], a                                     ; $4992: $02
	sub  l                                           ; $4993: $95
	ld   [hl], h                                     ; $4994: $74
	dec  c                                           ; $4995: $0d
	ld   [hl], a                                     ; $4996: $77
	ld   d, h                                        ; $4997: $54
	ld   [hl], l                                     ; $4998: $75
	ld   h, a                                        ; $4999: $67
	ld   e, c                                        ; $499a: $59
	ld   sp, hl                                      ; $499b: $f9
	dec  c                                           ; $499c: $0d
	nop                                              ; $499d: $00
	ld   a, [bc]                                     ; $499e: $0a
	inc  e                                           ; $499f: $1c
	ld   bc, $0505                                   ; $49a0: $01 $05 $05
	ld   bc, $ffff                                   ; $49a3: $01 $ff $ff
	cp   d                                           ; $49a6: $ba
	rst  ToBoot                                         ; $49a7: $c7
	xor  [hl]                                        ; $49a8: $ae
	ld   [hl], l                                     ; $49a9: $75
	ld   h, a                                        ; $49aa: $67
	sub  [hl]                                        ; $49ab: $96
	sbc  a                                           ; $49ac: $9f
	dec  c                                           ; $49ad: $0d
	nop                                              ; $49ae: $00
	ld   a, [bc]                                     ; $49af: $0a
	inc  e                                           ; $49b0: $1c
	ld   bc, $0606                                   ; $49b1: $01 $06 $06
	ld   bc, $6590                                   ; $49b4: $01 $90 $65
	inc  b                                           ; $49b7: $04
	ld   c, $03                                      ; $49b8: $0e $03
	sub  b                                           ; $49ba: $90
	ld   h, e                                        ; $49bb: $63
	and  c                                           ; $49bc: $a1
	ld   e, d                                        ; $49bd: $5a
	dec  c                                           ; $49be: $0d
	ld   d, d                                        ; $49bf: $52
	ld   a, b                                        ; $49c0: $78
	ld   e, c                                        ; $49c1: $59
	ld   [hl], c                                     ; $49c2: $71
	ld   l, l                                        ; $49c3: $6d
	sub  a                                           ; $49c4: $97
	rst  $38                                         ; $49c5: $ff
	rst  $38                                         ; $49c6: $ff
	dec  c                                           ; $49c7: $0d
	nop                                              ; $49c8: $00
	ld   a, [bc]                                     ; $49c9: $0a
	rrca                                             ; $49ca: $0f
	nop                                              ; $49cb: $00
	ld   bc, $9201                                   ; $49cc: $01 $01 $92
	ld   [hl], c                                     ; $49cf: $71
	ld   a, a                                        ; $49d0: $7f
	sbc  b                                           ; $49d1: $98
	inc  b                                           ; $49d2: $04
	ld   c, $03                                      ; $49d3: $0e $03
	sub  b                                           ; $49d5: $90
	ld   h, e                                        ; $49d6: $63
	and  c                                           ; $49d7: $a1
	ld   [hl], l                                     ; $49d8: $75
	ld   h, a                                        ; $49d9: $67
	ld   e, c                                        ; $49da: $59
	rst  $38                                         ; $49db: $ff
	rst  $38                                         ; $49dc: $ff
	dec  c                                           ; $49dd: $0d
	nop                                              ; $49de: $00
	ld   a, [bc]                                     ; $49df: $0a
	ld   b, $00                                      ; $49e0: $06 $00
	jr   jr_064_49f3                                 ; $49e2: $18 $0f

	nop                                              ; $49e4: $00
	ld   bc, $0401                                   ; $49e5: $01 $01 $04
	ld   c, $03                                      ; $49e8: $0e $03
	sub  b                                           ; $49ea: $90
	ld   h, e                                        ; $49eb: $63
	and  c                                           ; $49ec: $a1
	ld   e, d                                        ; $49ed: $5a
	ld   [bc], a                                     ; $49ee: $02
	sbc  d                                           ; $49ef: $9a
	ld   e, e                                        ; $49f0: $5b
	ld   a, b                                        ; $49f1: $78
	and  c                                           ; $49f2: $a1

jr_064_49f3:
	ld   [hl], l                                     ; $49f3: $75
	ld   h, a                                        ; $49f4: $67
	ld   e, c                                        ; $49f5: $59
	ld   sp, hl                                      ; $49f6: $f9
	dec  c                                           ; $49f7: $0d
	nop                                              ; $49f8: $00
	ld   a, [bc]                                     ; $49f9: $0a
	inc  e                                           ; $49fa: $1c
	ld   bc, $0606                                   ; $49fb: $01 $06 $06
	ld   bc, $9e6b                                   ; $49fe: $01 $6b $9e
	ld   l, e                                        ; $4a01: $6b
	sbc  d                                           ; $4a02: $9a
	ld   a, l                                        ; $4a03: $7d
	rst  $38                                         ; $4a04: $ff
	rst  $38                                         ; $4a05: $ff
	dec  c                                           ; $4a06: $0d
	ld   l, e                                        ; $4a07: $6b
	ld   a, h                                        ; $4a08: $7c
	rst  $38                                         ; $4a09: $ff
	rst  $38                                         ; $4a0a: $ff
	ld   [hl], l                                     ; $4a0b: $75
	ld   h, a                                        ; $4a0c: $67
	ld   e, c                                        ; $4a0d: $59
	sub  a                                           ; $4a0e: $97
	rst  $38                                         ; $4a0f: $ff
	rst  $38                                         ; $4a10: $ff
	dec  c                                           ; $4a11: $0d
	ld   d, [hl]                                     ; $4a12: $56
	rst  $38                                         ; $4a13: $ff
	rst  $38                                         ; $4a14: $ff
	halt                                             ; $4a15: $76
	rst  $38                                         ; $4a16: $ff
	rst  $38                                         ; $4a17: $ff
	dec  c                                           ; $4a18: $0d
	nop                                              ; $4a19: $00
	ld   a, [bc]                                     ; $4a1a: $0a
	inc  e                                           ; $4a1b: $1c
	ld   bc, $0505                                   ; $4a1c: $01 $05 $05
	ld   bc, $527d                                   ; $4a1f: $01 $7d $52
	rst  $38                                         ; $4a22: $ff
	rst  $38                                         ; $4a23: $ff
	dec  c                                           ; $4a24: $0d

jr_064_4a25:
	nop                                              ; $4a25: $00
	ld   a, [bc]                                     ; $4a26: $0a
	ld   b, $00                                      ; $4a27: $06 $00
	jr   jr_064_4a3a                                 ; $4a29: $18 $0f

	nop                                              ; $4a2b: $00
	ld   bc, $7701                                   ; $4a2c: $01 $01 $77
	and  c                                           ; $4a2f: $a1
	ld   a, b                                        ; $4a30: $78
	inc  bc                                          ; $4a31: $03
	add  d                                           ; $4a32: $82
	ld   e, d                                        ; $4a33: $5a
	ld   [bc], a                                     ; $4a34: $02
	sbc  d                                           ; $4a35: $9a
	ld   e, e                                        ; $4a36: $5b
	ld   [hl], l                                     ; $4a37: $75
	ld   h, a                                        ; $4a38: $67
	ld   e, c                                        ; $4a39: $59

jr_064_4a3a:
	ld   sp, hl                                      ; $4a3a: $f9
	dec  c                                           ; $4a3b: $0d
	nop                                              ; $4a3c: $00
	ld   a, [bc]                                     ; $4a3d: $0a
	inc  e                                           ; $4a3e: $1c
	ld   bc, $0505                                   ; $4a3f: $01 $05 $05
	ld   bc, $546b                                   ; $4a42: $01 $6b $54
	ld   [hl], l                                     ; $4a45: $75
	ld   h, a                                        ; $4a46: $67
	ld   a, e                                        ; $4a47: $7b
	rst  $38                                         ; $4a48: $ff
	rst  $38                                         ; $4a49: $ff
	dec  c                                           ; $4a4a: $0d
	inc  b                                           ; $4a4b: $04
	ld   c, $03                                      ; $4a4c: $0e $03
	sub  b                                           ; $4a4e: $90
	ld   h, e                                        ; $4a4f: $63
	and  c                                           ; $4a50: $a1
	adc  l                                           ; $4a51: $8d
	ld   l, l                                        ; $4a52: $6d
	ld   d, d                                        ; $4a53: $52
	ld   a, b                                        ; $4a54: $78
	inc  bc                                          ; $4a55: $03
	add  d                                           ; $4a56: $82
	ld   e, d                                        ; $4a57: $5a
	rst  $38                                         ; $4a58: $ff
	rst  $38                                         ; $4a59: $ff
	dec  c                                           ; $4a5a: $0d
	nop                                              ; $4a5b: $00
	ld   a, [bc]                                     ; $4a5c: $0a
	ld   bc, $9e92                                   ; $4a5d: $01 $92 $9e
	sub  d                                           ; $4a60: $92
	ld   l, [hl]                                     ; $4a61: $6e
	rst  $38                                         ; $4a62: $ff
	rst  $38                                         ; $4a63: $ff
	dec  c                                           ; $4a64: $0d
	ld   d, b                                        ; $4a65: $50
	ld   l, l                                        ; $4a66: $6d
	ld   h, l                                        ; $4a67: $65
	ld   [hl], c                                     ; $4a68: $71
	ld   l, l                                        ; $4a69: $6d
	sub  a                                           ; $4a6a: $97
	rst  $38                                         ; $4a6b: $ff
	rst  $38                                         ; $4a6c: $ff
	dec  c                                           ; $4a6d: $0d
	nop                                              ; $4a6e: $00
	ld   a, [bc]                                     ; $4a6f: $0a
	inc  e                                           ; $4a70: $1c
	ld   bc, $0303                                   ; $4a71: $01 $03 $03
	ld   bc, $0008                                   ; $4a74: $01 $08 $00
	ld   h, e                                        ; $4a77: $63
	and  c                                           ; $4a78: $a1
	ld   a, [$000d]                                  ; $4a79: $fa $0d $00
	inc  e                                           ; $4a7c: $1c
	ld   bc, $0404                                   ; $4a7d: $01 $04 $04
	ld   bc, $a502                                   ; $4a80: $01 $02 $a5
	ld   a, h                                        ; $4a83: $7c
	dec  b                                           ; $4a84: $05
	jr   nz, jr_064_4a25                             ; $4a85: $20 $9e

	ld   l, d                                        ; $4a87: $6a
	ld   [hl], c                                     ; $4a88: $71
	ld   l, l                                        ; $4a89: $6d
	ld   d, d                                        ; $4a8a: $52
	inc  b                                           ; $4a8b: $04
	ld   c, $03                                      ; $4a8c: $0e $03
	sub  b                                           ; $4a8e: $90
	ld   h, e                                        ; $4a8f: $63
	and  c                                           ; $4a90: $a1
	ld   a, c                                        ; $4a91: $79
	ld   a, l                                        ; $4a92: $7d
	dec  c                                           ; $4a93: $0d
	ld   a, b                                        ; $4a94: $78
	ld   d, d                                        ; $4a95: $52
	ld   h, l                                        ; $4a96: $65
	sub  l                                           ; $4a97: $95
	ld   a, c                                        ; $4a98: $79
	ld   h, l                                        ; $4a99: $65
	ld   [hl], h                                     ; $4a9a: $74
	ld   [bc], a                                     ; $4a9b: $02
	inc  [hl]                                        ; $4a9c: $34
	ld   h, e                                        ; $4a9d: $63
	ld   d, d                                        ; $4a9e: $52
	ld   a, e                                        ; $4a9f: $7b
	rst  $38                                         ; $4aa0: $ff
	rst  $38                                         ; $4aa1: $ff
	dec  c                                           ; $4aa2: $0d
	nop                                              ; $4aa3: $00
	ld   a, [bc]                                     ; $4aa4: $0a
	dec  c                                           ; $4aa5: $0d
	nop                                              ; $4aa6: $00
	nop                                              ; $4aa7: $00
	rrca                                             ; $4aa8: $0f
	nop                                              ; $4aa9: $00
	ld   bc, $020c                                   ; $4aaa: $01 $0c $02
	ld   b, $71                                      ; $4aad: $06 $71
	jr   jr_064_4ac0                                 ; $4aaf: $18 $0f

	nop                                              ; $4ab1: $00
	ld   bc, $ff01                                   ; $4ab2: $01 $01 $ff
	rst  $38                                         ; $4ab5: $ff
	ld   a, b                                        ; $4ab6: $78
	and  c                                           ; $4ab7: $a1
	ld   [hl], l                                     ; $4ab8: $75
	sub  b                                           ; $4ab9: $90
	ld   d, b                                        ; $4aba: $50
	sbc  b                                           ; $4abb: $98
	adc  h                                           ; $4abc: $8c
	ld   l, c                                        ; $4abd: $69
	and  c                                           ; $4abe: $a1
	sbc  a                                           ; $4abf: $9f

jr_064_4ac0:
	dec  c                                           ; $4ac0: $0d
	nop                                              ; $4ac1: $00
	ld   a, [bc]                                     ; $4ac2: $0a
	inc  e                                           ; $4ac3: $1c
	ld   bc, $0101                                   ; $4ac4: $01 $01 $01
	ld   bc, $d6d6                                   ; $4ac7: $01 $d6 $d6
	rst  $38                                         ; $4aca: $ff
	rst  $38                                         ; $4acb: $ff
	dec  c                                           ; $4acc: $0d
	ld   e, b                                        ; $4acd: $58
	ld   e, c                                        ; $4ace: $59
	ld   h, l                                        ; $4acf: $65
	ld   a, b                                        ; $4ad0: $78
	ld   [$6300], sp                                 ; $4ad1: $08 $00 $63
	and  c                                           ; $4ad4: $a1
	sbc  a                                           ; $4ad5: $9f
	dec  c                                           ; $4ad6: $0d
	nop                                              ; $4ad7: $00
	ld   a, [bc]                                     ; $4ad8: $0a
	dec  c                                           ; $4ad9: $0d
	nop                                              ; $4ada: $00
	nop                                              ; $4adb: $00
	rrca                                             ; $4adc: $0f
	nop                                              ; $4add: $00
	ld   bc, $020c                                   ; $4ade: $01 $0c $02
	ld   c, $06                                      ; $4ae1: $0e $06
	inc  e                                           ; $4ae3: $1c
	ld   bc, $0101                                   ; $4ae4: $01 $01 $01
	ld   bc, $0008                                   ; $4ae7: $01 $08 $00
	ld   h, e                                        ; $4aea: $63
	and  c                                           ; $4aeb: $a1
	rst  $38                                         ; $4aec: $ff
	rst  $38                                         ; $4aed: $ff
	dec  c                                           ; $4aee: $0d
	ld   [bc], a                                     ; $4aef: $02
	and  l                                           ; $4af0: $a5
	inc  b                                           ; $4af1: $04
	xor  d                                           ; $4af2: $aa
	ld   a, l                                        ; $4af3: $7d
	ld   h, a                                        ; $4af4: $67
	ld   h, d                                        ; $4af5: $62
	ld   e, l                                        ; $4af6: $5d
	dec  b                                           ; $4af7: $05
	inc  de                                          ; $4af8: $13
	ld   h, l                                        ; $4af9: $65
	ld   e, c                                        ; $4afa: $59
	ld   [hl], c                                     ; $4afb: $71
	ld   l, l                                        ; $4afc: $6d
	ld   [hl], l                                     ; $4afd: $75
	ld   h, a                                        ; $4afe: $67
	sbc  a                                           ; $4aff: $9f
	dec  c                                           ; $4b00: $0d
	nop                                              ; $4b01: $00
	ld   a, [bc]                                     ; $4b02: $0a
	inc  e                                           ; $4b03: $1c
	ld   bc, $0000                                   ; $4b04: $01 $00 $00
	ld   bc, $546b                                   ; $4b07: $01 $6b $54
	ld   l, [hl]                                     ; $4b0a: $6e
	sbc  a                                           ; $4b0b: $9f
	inc  b                                           ; $4b0c: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b0d: $cf
	inc  b                                           ; $4b0e: $04
	xor  d                                           ; $4b0f: $aa
	ld   a, l                                        ; $4b10: $7d
	inc  bc                                          ; $4b11: $03
	ld   l, c                                        ; $4b12: $69
	inc  bc                                          ; $4b13: $03
	ld   a, [hl]                                     ; $4b14: $7e
	rst  ToBoot                                         ; $4b15: $c7
	cp   d                                           ; $4b16: $ba
	ret                                              ; $4b17: $c9


	dec  c                                           ; $4b18: $0d
	ld   a, b                                        ; $4b19: $78
	and  c                                           ; $4b1a: $a1
	ld   [hl], l                                     ; $4b1b: $75
	ld   h, a                                        ; $4b1c: $67
	sub  [hl]                                        ; $4b1d: $96
	ld   a, e                                        ; $4b1e: $7b
	sbc  a                                           ; $4b1f: $9f
	dec  c                                           ; $4b20: $0d
	nop                                              ; $4b21: $00
	ld   a, [bc]                                     ; $4b22: $0a
	ld   d, $18                                      ; $4b23: $16 $18
	rrca                                             ; $4b25: $0f
	ld   bc, $0105                                   ; $4b26: $01 $05 $01
	ld   d, b                                        ; $4b29: $50
	ld   a, h                                        ; $4b2a: $7c
	rst  $38                                         ; $4b2b: $ff
	rst  $38                                         ; $4b2c: $ff
	ld   h, c                                        ; $4b2d: $61
	sbc  d                                           ; $4b2e: $9a
	and  b                                           ; $4b2f: $a0
	ld   [hl], a                                     ; $4b30: $77
	ld   d, h                                        ; $4b31: $54
	ld   l, h                                        ; $4b32: $6c
	sbc  a                                           ; $4b33: $9f
	dec  c                                           ; $4b34: $0d
	inc  b                                           ; $4b35: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b36: $cf
	inc  b                                           ; $4b37: $04
	xor  d                                           ; $4b38: $aa
	ld   a, h                                        ; $4b39: $7c
	inc  bc                                          ; $4b3a: $03
	ld   l, c                                        ; $4b3b: $69
	inc  bc                                          ; $4b3c: $03
	ld   a, [hl]                                     ; $4b3d: $7e
	rst  ToBoot                                         ; $4b3e: $c7
	cp   d                                           ; $4b3f: $ba
	ret                                              ; $4b40: $c9


	dec  c                                           ; $4b41: $0d
	ld   e, d                                        ; $4b42: $5a
	and  c                                           ; $4b43: $a1
	ld   a, [hl]                                     ; $4b44: $7e
	ld   [hl], c                                     ; $4b45: $71
	ld   [hl], h                                     ; $4b46: $74
	ld   e, l                                        ; $4b47: $5d
	ld   l, [hl]                                     ; $4b48: $6e
	ld   h, e                                        ; $4b49: $63
	ld   d, d                                        ; $4b4a: $52
	sbc  a                                           ; $4b4b: $9f
	dec  c                                           ; $4b4c: $0d
	nop                                              ; $4b4d: $00
	ld   a, [bc]                                     ; $4b4e: $0a
	rrca                                             ; $4b4f: $0f
	nop                                              ; $4b50: $00
	ld   bc, $5801                                   ; $4b51: $01 $01 $58
	inc  bc                                          ; $4b54: $03
	sub  e                                           ; $4b55: $93
	sbc  b                                           ; $4b56: $98
	rst  $38                                         ; $4b57: $ff
	rst  $38                                         ; $4b58: $ff
	dec  c                                           ; $4b59: $0d
	ld   d, b                                        ; $4b5a: $50
	sbc  b                                           ; $4b5b: $98
	ld   e, d                                        ; $4b5c: $5a
	halt                                             ; $4b5d: $76
	ld   d, h                                        ; $4b5e: $54
	ld   h, d                                        ; $4b5f: $62
	ld   h, h                                        ; $4b60: $64
	ld   d, d                                        ; $4b61: $52
	adc  h                                           ; $4b62: $8c
	ld   h, a                                        ; $4b63: $67
	sbc  a                                           ; $4b64: $9f
	dec  c                                           ; $4b65: $0d
	nop                                              ; $4b66: $00
	dec  b                                           ; $4b67: $05
	add  b                                           ; $4b68: $80
	ld   [de], a                                     ; $4b69: $12
	ld   bc, $0001                                   ; $4b6a: $01 $01 $00
	ld   bc, $a15a                                   ; $4b6d: $01 $5a $a1
	ld   a, [hl]                                     ; $4b70: $7e
	sbc  b                                           ; $4b71: $98
	adc  h                                           ; $4b72: $8c
	ld   h, a                                        ; $4b73: $67
	sbc  a                                           ; $4b74: $9f
	ld   h, e                                        ; $4b75: $63
	ld   e, l                                        ; $4b76: $5d
	sub  a                                           ; $4b77: $97
	ld   h, e                                        ; $4b78: $63
	and  c                                           ; $4b79: $a1
	sbc  a                                           ; $4b7a: $9f
	dec  c                                           ; $4b7b: $0d
	nop                                              ; $4b7c: $00
	ld   a, [bc]                                     ; $4b7d: $0a
	add  hl, hl                                      ; $4b7e: $29
	nop                                              ; $4b7f: $00
	nop                                              ; $4b80: $00
	nop                                              ; $4b81: $00
	inc  b                                           ; $4b82: $04
	add  b                                           ; $4b83: $80
	adc  e                                           ; $4b84: $8b
	ld   bc, $20ff                                   ; $4b85: $01 $ff $20
	nop                                              ; $4b88: $00
	ld   c, $01                                      ; $4b89: $0e $01
	rrca                                             ; $4b8b: $0f
	nop                                              ; $4b8c: $00
	ld   bc, $0102                                   ; $4b8d: $01 $02 $01
	ld   [bc], a                                     ; $4b90: $02
	and  l                                           ; $4b91: $a5
	inc  b                                           ; $4b92: $04
	xor  d                                           ; $4b93: $aa
	ld   a, l                                        ; $4b94: $7d
	sbc  [hl]                                        ; $4b95: $9e
	xor  h                                           ; $4b96: $ac
	push af                                          ; $4b97: $f5
	bit  4, e                                        ; $4b98: $cb $63
	and  c                                           ; $4b9a: $a1
	ld   a, c                                        ; $4b9b: $79
	dec  c                                           ; $4b9c: $0d
	inc  b                                           ; $4b9d: $04
	ldh  a, [c]                                      ; $4b9e: $f2
	add  c                                           ; $4b9f: $81
	ld   a, c                                        ; $4ba0: $79
	ld   [hl], d                                     ; $4ba1: $72
	sbc  d                                           ; $4ba2: $9a
	ld   [hl], h                                     ; $4ba3: $74
	ld   [hl], c                                     ; $4ba4: $71
	ld   [hl], h                                     ; $4ba5: $74
	sub  b                                           ; $4ba6: $90
	sub  a                                           ; $4ba7: $97
	ld   d, [hl]                                     ; $4ba8: $56
	sbc  c                                           ; $4ba9: $99
	ld   a, [$050d]                                  ; $4baa: $fa $0d $05
	jr   z, @+$54                                    ; $4bad: $28 $52

	ld   [hl], l                                     ; $4baf: $75
	inc  b                                           ; $4bb0: $04
	rlca                                             ; $4bb1: $07
	dec  b                                           ; $4bb2: $05
	scf                                              ; $4bb3: $37
	ld   d, [hl]                                     ; $4bb4: $56
	ld   a, b                                        ; $4bb5: $78
	ld   e, l                                        ; $4bb6: $5d
	ld   l, a                                        ; $4bb7: $6f
	sub  c                                           ; $4bb8: $91
	sbc  a                                           ; $4bb9: $9f
	dec  c                                           ; $4bba: $0d
	nop                                              ; $4bbb: $00
	ld   a, [bc]                                     ; $4bbc: $0a
	add  hl, de                                      ; $4bbd: $19
	inc  b                                           ; $4bbe: $04
	inc  bc                                          ; $4bbf: $03
	ld   b, $4c                                      ; $4bc0: $06 $4c
	and  b                                           ; $4bc2: $a0
	adc  l                                           ; $4bc3: $8d
	ld   e, d                                        ; $4bc4: $5a
	ld   e, l                                        ; $4bc5: $5d
	nop                                              ; $4bc6: $00
	nop                                              ; $4bc7: $00
	dec  b                                           ; $4bc8: $05
	ld   e, $a0                                      ; $4bc9: $1e $a0
	adc  l                                           ; $4bcb: $8d
	ld   e, d                                        ; $4bcc: $5a
	ld   e, l                                        ; $4bcd: $5d
	nop                                              ; $4bce: $00
	ld   bc, $b9eb                                   ; $4bcf: $01 $eb $b9
	xor  e                                           ; $4bd2: $ab
	inc  b                                           ; $4bd3: $04
	dec  c                                           ; $4bd4: $0d
	ld   b, $5a                                      ; $4bd5: $06 $5a
	and  b                                           ; $4bd7: $a0
	ld   h, a                                        ; $4bd8: $67
	sbc  c                                           ; $4bd9: $99
	nop                                              ; $4bda: $00
	ld   [bc], a                                     ; $4bdb: $02
	rlca                                             ; $4bdc: $07
	ld   [hl], c                                     ; $4bdd: $71
	nop                                              ; $4bde: $00
	ld   [bc], a                                     ; $4bdf: $02
	inc  bc                                          ; $4be0: $03
	ld   bc, $2000                                   ; $4be1: $01 $00 $20
	nop                                              ; $4be4: $00
	rlca                                             ; $4be5: $07
	and  c                                           ; $4be6: $a1
	nop                                              ; $4be7: $00
	ld   [bc], a                                     ; $4be8: $02
	inc  bc                                          ; $4be9: $03
	ld   bc, $2001                                   ; $4bea: $01 $01 $20
	nop                                              ; $4bed: $00
	rlca                                             ; $4bee: $07
	ldh  [c], a                                      ; $4bef: $e2
	nop                                              ; $4bf0: $00
	ld   [bc], a                                     ; $4bf1: $02
	inc  bc                                          ; $4bf2: $03
	ld   bc, $2002                                   ; $4bf3: $01 $02 $20
	nop                                              ; $4bf6: $00
	ld   b, $1c                                      ; $4bf7: $06 $1c
	ld   bc, $000f                                   ; $4bf9: $01 $0f $00
	ld   bc, $9601                                   ; $4bfc: $01 $01 $96
	ld   h, l                                        ; $4bff: $65
	ld   a, [$0610]                                  ; $4c00: $fa $10 $06
	ld   c, h                                        ; $4c03: $4c
	and  b                                           ; $4c04: $a0
	adc  l                                           ; $4c05: $8d
	ld   e, d                                        ; $4c06: $5a
	ld   e, l                                        ; $4c07: $5d
	ld   l, h                                        ; $4c08: $6c
	ei                                               ; $4c09: $fb
	ld   a, [$060d]                                  ; $4c0a: $fa $0d $06
	ld   c, h                                        ; $4c0d: $4c
	ld   a, l                                        ; $4c0e: $7d
	xor  [hl]                                        ; $4c0f: $ae
	xor  $a5                                         ; $4c10: $ee $a5
	ld   a, c                                        ; $4c12: $79
	ld   h, l                                        ; $4c13: $65
	halt                                             ; $4c14: $76
	ld   e, c                                        ; $4c15: $59
	ld   a, b                                        ; $4c16: $78
	ld   d, d                                        ; $4c17: $52
	halt                                             ; $4c18: $76
	ld   a, e                                        ; $4c19: $7b
	sbc  a                                           ; $4c1a: $9f
	dec  c                                           ; $4c1b: $0d
	nop                                              ; $4c1c: $00
	ld   a, [bc]                                     ; $4c1d: $0a
	dec  b                                           ; $4c1e: $05
	ld   b, b                                        ; $4c1f: $40
	rst  $38                                         ; $4c20: $ff
	inc  bc                                          ; $4c21: $03
	rst  $38                                         ; $4c22: $ff
	ld   bc, $2801                                   ; $4c23: $01 $01 $28
	nop                                              ; $4c26: $00
	ld   b, $3f                                      ; $4c27: $06 $3f
	ld   bc, $000f                                   ; $4c29: $01 $0f $00
	ld   bc, $9601                                   ; $4c2c: $01 $01 $96
	ld   h, l                                        ; $4c2f: $65
	ld   a, [$0510]                                  ; $4c30: $fa $10 $05
	ld   e, $a0                                      ; $4c33: $1e $a0
	adc  l                                           ; $4c35: $8d
	ld   e, d                                        ; $4c36: $5a
	ld   e, l                                        ; $4c37: $5d
	ld   l, h                                        ; $4c38: $6c
	ei                                               ; $4c39: $fb
	ld   a, [$0dfa]                                  ; $4c3a: $fa $fa $0d
	rst  $38                                         ; $4c3d: $ff
	rst  $38                                         ; $4c3e: $ff
	and  c                                           ; $4c3f: $a1
	ld   sp, hl                                      ; $4c40: $f9
	db   $10                                         ; $4c41: $10
	ld   [bc], a                                     ; $4c42: $02
	and  l                                           ; $4c43: $a5
	ld   e, c                                        ; $4c44: $59
	sub  a                                           ; $4c45: $97
	inc  bc                                          ; $4c46: $03
	ld   l, l                                        ; $4c47: $6d
	dec  b                                           ; $4c48: $05
	add  hl, de                                      ; $4c49: $19
	ld   a, c                                        ; $4c4a: $79
	ld   [bc], a                                     ; $4c4b: $02
	ld   a, a                                        ; $4c4c: $7f
	ld   e, l                                        ; $4c4d: $5d
	dec  c                                           ; $4c4e: $0d
	nop                                              ; $4c4f: $00
	dec  b                                           ; $4c50: $05
	ld   b, b                                        ; $4c51: $40
	rst  $38                                         ; $4c52: $ff
	inc  bc                                          ; $4c53: $03
	rst  $38                                         ; $4c54: $ff
	ld   bc, $2801                                   ; $4c55: $01 $01 $28
	nop                                              ; $4c58: $00
	ld   bc, $66a1                                   ; $4c59: $01 $a1 $66
	sub  c                                           ; $4c5c: $91
	ld   a, b                                        ; $4c5d: $78
	ld   d, d                                        ; $4c5e: $52
	and  c                                           ; $4c5f: $a1
	ld   l, [hl]                                     ; $4c60: $6e
	sub  [hl]                                        ; $4c61: $96
	ld   a, b                                        ; $4c62: $78
	rst  $38                                         ; $4c63: $ff
	rst  $38                                         ; $4c64: $ff
	dec  c                                           ; $4c65: $0d
	nop                                              ; $4c66: $00
	ld   a, [bc]                                     ; $4c67: $0a
	ld   b, $34                                      ; $4c68: $06 $34
	nop                                              ; $4c6a: $00
	rrca                                             ; $4c6b: $0f
	nop                                              ; $4c6c: $00
	ld   bc, $9601                                   ; $4c6d: $01 $01 $96
	ld   h, l                                        ; $4c70: $65
	ld   a, [$eb10]                                  ; $4c71: $fa $10 $eb
	cp   c                                           ; $4c74: $b9
	xor  e                                           ; $4c75: $ab
	inc  b                                           ; $4c76: $04
	dec  c                                           ; $4c77: $0d
	ld   b, $5a                                      ; $4c78: $06 $5a
	ld   h, a                                        ; $4c7a: $67
	sbc  c                                           ; $4c7b: $99
	ld   l, h                                        ; $4c7c: $6c
	ld   a, [$ff0d]                                  ; $4c7d: $fa $0d $ff
	rst  $38                                         ; $4c80: $ff
	ld   [hl], h                                     ; $4c81: $74
	sbc  [hl]                                        ; $4c82: $9e
	ld   l, e                                        ; $4c83: $6b
	and  c                                           ; $4c84: $a1
	ld   a, b                                        ; $4c85: $78
	ld   h, c                                        ; $4c86: $61
	halt                                             ; $4c87: $76
	ld   h, l                                        ; $4c88: $65
	ld   [hl], h                                     ; $4c89: $74
	sbc  c                                           ; $4c8a: $99
	inc  bc                                          ; $4c8b: $03
	ld   l, a                                        ; $4c8c: $6f
	ld   [bc], a                                     ; $4c8d: $02
	xor  c                                           ; $4c8e: $a9
	dec  c                                           ; $4c8f: $0d
	nop                                              ; $4c90: $00
	dec  b                                           ; $4c91: $05
	ld   b, b                                        ; $4c92: $40
	rst  $38                                         ; $4c93: $ff
	inc  bc                                          ; $4c94: $03
	rst  $38                                         ; $4c95: $ff
	ld   bc, $2801                                   ; $4c96: $01 $01 $28
	nop                                              ; $4c99: $00
	ld   bc, $5278                                   ; $4c9a: $01 $78 $52
	sub  [hl]                                        ; $4c9d: $96
	sbc  a                                           ; $4c9e: $9f
	dec  c                                           ; $4c9f: $0d
	nop                                              ; $4ca0: $00
	ld   a, [bc]                                     ; $4ca1: $0a
	ld   b, $34                                      ; $4ca2: $06 $34
	nop                                              ; $4ca4: $00
	rrca                                             ; $4ca5: $0f
	nop                                              ; $4ca6: $00
	ld   bc, $8c01                                   ; $4ca7: $01 $01 $8c
	ld   l, b                                        ; $4caa: $68
	ld   a, l                                        ; $4cab: $7d
	rst  $38                                         ; $4cac: $ff
	rst  $38                                         ; $4cad: $ff
	dec  c                                           ; $4cae: $0d
	ld   [hl], a                                     ; $4caf: $77
	ld   d, h                                        ; $4cb0: $54
	ld   h, l                                        ; $4cb1: $65
	sub  [hl]                                        ; $4cb2: $96
	ld   d, h                                        ; $4cb3: $54
	ld   e, c                                        ; $4cb4: $59
	rst  $38                                         ; $4cb5: $ff
	rst  $38                                         ; $4cb6: $ff
	rst  $38                                         ; $4cb7: $ff
	rst  $38                                         ; $4cb8: $ff
	dec  c                                           ; $4cb9: $0d
	nop                                              ; $4cba: $00
	ld   a, [bc]                                     ; $4cbb: $0a
	dec  b                                           ; $4cbc: $05
	ld   b, b                                        ; $4cbd: $40
	rst  $38                                         ; $4cbe: $ff
	inc  bc                                          ; $4cbf: $03
	rst  $38                                         ; $4cc0: $ff
	ld   bc, $2801                                   ; $4cc1: $01 $01 $28
	nop                                              ; $4cc4: $00
	ld   b, $34                                      ; $4cc5: $06 $34
	nop                                              ; $4cc7: $00
	add  hl, de                                      ; $4cc8: $19
	inc  b                                           ; $4cc9: $04
	inc  bc                                          ; $4cca: $03
	inc  b                                           ; $4ccb: $04
	and  l                                           ; $4ccc: $a5
	and  b                                           ; $4ccd: $a0
	inc  b                                           ; $4cce: $04
	rlca                                             ; $4ccf: $07
	sbc  c                                           ; $4cd0: $99
	nop                                              ; $4cd1: $00
	nop                                              ; $4cd2: $00
	inc  b                                           ; $4cd3: $04
	and  l                                           ; $4cd4: $a5
	and  b                                           ; $4cd5: $a0
	ld   a, d                                        ; $4cd6: $7a
	ld   e, [hl]                                     ; $4cd7: $5e
	nop                                              ; $4cd8: $00
	ld   bc, $b1d6                                   ; $4cd9: $01 $d6 $b1
	and  b                                           ; $4cdc: $a0
	inc  bc                                          ; $4cdd: $03
	dec  de                                          ; $4cde: $1b
	sbc  c                                           ; $4cdf: $99
	nop                                              ; $4ce0: $00
	ld   [bc], a                                     ; $4ce1: $02
	rlca                                             ; $4ce2: $07
	ld   [hl], a                                     ; $4ce3: $77
	ld   bc, $0302                                   ; $4ce4: $01 $02 $03
	ld   bc, $2000                                   ; $4ce7: $01 $00 $20
	nop                                              ; $4cea: $00
	rlca                                             ; $4ceb: $07
	sbc  e                                           ; $4cec: $9b
	ld   bc, $0302                                   ; $4ced: $01 $02 $03
	ld   bc, $2001                                   ; $4cf0: $01 $01 $20
	nop                                              ; $4cf3: $00
	rlca                                             ; $4cf4: $07
	db   $d3                                         ; $4cf5: $d3
	ld   bc, $0302                                   ; $4cf6: $01 $02 $03
	ld   bc, $2002                                   ; $4cf9: $01 $02 $20
	nop                                              ; $4cfc: $00
	ld   b, $15                                      ; $4cfd: $06 $15
	ld   [bc], a                                     ; $4cff: $02
	rrca                                             ; $4d00: $0f
	nop                                              ; $4d01: $00
	ld   bc, $0601                                   ; $4d02: $01 $01 $06
	ld   c, h                                        ; $4d05: $4c
	and  b                                           ; $4d06: $a0
	adc  l                                           ; $4d07: $8d
	ld   e, d                                        ; $4d08: $5a
	ld   d, d                                        ; $4d09: $52
	ld   l, l                                        ; $4d0a: $6d
	sub  a                                           ; $4d0b: $97
	sbc  [hl]                                        ; $4d0c: $9e
	inc  b                                           ; $4d0d: $04
	and  l                                           ; $4d0e: $a5
	and  b                                           ; $4d0f: $a0
	inc  b                                           ; $4d10: $04
	rlca                                             ; $4d11: $07
	ld   [hl], h                                     ; $4d12: $74
	halt                                             ; $4d13: $76
	rst  $38                                         ; $4d14: $ff
	dec  c                                           ; $4d15: $0d
	nop                                              ; $4d16: $00
	ld   a, [bc]                                     ; $4d17: $0a
	dec  b                                           ; $4d18: $05
	ld   b, b                                        ; $4d19: $40
	rst  $38                                         ; $4d1a: $ff
	inc  bc                                          ; $4d1b: $03
	rst  $38                                         ; $4d1c: $ff
	ld   bc, $2801                                   ; $4d1d: $01 $01 $28
	nop                                              ; $4d20: $00
	ld   b, $38                                      ; $4d21: $06 $38
	ld   [bc], a                                     ; $4d23: $02
	rrca                                             ; $4d24: $0f
	nop                                              ; $4d25: $00
	ld   bc, $0601                                   ; $4d26: $01 $01 $06
	ld   c, h                                        ; $4d29: $4c
	and  b                                           ; $4d2a: $a0
	adc  l                                           ; $4d2b: $8d
	ld   e, d                                        ; $4d2c: $5a
	ld   d, d                                        ; $4d2d: $52
	ld   l, l                                        ; $4d2e: $6d
	sub  a                                           ; $4d2f: $97
	sbc  [hl]                                        ; $4d30: $9e
	inc  b                                           ; $4d31: $04
	and  l                                           ; $4d32: $a5
	and  b                                           ; $4d33: $a0
	ld   a, d                                        ; $4d34: $7a
	ld   d, d                                        ; $4d35: $52
	ld   [hl], l                                     ; $4d36: $75
	dec  c                                           ; $4d37: $0d
	rst  $38                                         ; $4d38: $ff
	rst  $38                                         ; $4d39: $ff
	ld   a, d                                        ; $4d3a: $7a
	ld   d, d                                        ; $4d3b: $52
	ld   h, [hl]                                     ; $4d3c: $66
	sub  c                                           ; $4d3d: $91
	pop  bc                                          ; $4d3e: $c1
	db   $e3                                         ; $4d3f: $e3
	ld   [hl], l                                     ; $4d40: $75
	ld   h, l                                        ; $4d41: $65
	sub  l                                           ; $4d42: $95
	sbc  a                                           ; $4d43: $9f
	dec  c                                           ; $4d44: $0d
	nop                                              ; $4d45: $00
	dec  b                                           ; $4d46: $05
	ld   b, b                                        ; $4d47: $40
	rst  $38                                         ; $4d48: $ff
	inc  bc                                          ; $4d49: $03
	rst  $38                                         ; $4d4a: $ff
	ld   bc, $2801                                   ; $4d4b: $01 $01 $28
	nop                                              ; $4d4e: $00
	ld   bc, $0704                                   ; $4d4f: $01 $04 $07
	ld   a, b                                        ; $4d52: $78
	ld   e, e                                        ; $4d53: $5b
	sub  c                                           ; $4d54: $91
	sbc  a                                           ; $4d55: $9f
	dec  c                                           ; $4d56: $0d
	nop                                              ; $4d57: $00
	ld   a, [bc]                                     ; $4d58: $0a
	ld   b, $3f                                      ; $4d59: $06 $3f
	ld   bc, $000f                                   ; $4d5b: $01 $0f $00
	ld   bc, $0601                                   ; $4d5e: $01 $01 $06
	ld   c, h                                        ; $4d61: $4c
	and  b                                           ; $4d62: $a0
	adc  l                                           ; $4d63: $8d
	ld   e, d                                        ; $4d64: $5a
	ld   d, d                                        ; $4d65: $52
	ld   l, l                                        ; $4d66: $6d
	sub  a                                           ; $4d67: $97
	sbc  [hl]                                        ; $4d68: $9e
	sub  $b1                                         ; $4d69: $d6 $b1
	and  b                                           ; $4d6b: $a0
	inc  bc                                          ; $4d6c: $03
	dec  de                                          ; $4d6d: $1b
	ld   [hl], c                                     ; $4d6e: $71
	ld   [hl], h                                     ; $4d6f: $74
	dec  c                                           ; $4d70: $0d
	rst  $38                                         ; $4d71: $ff
	rst  $38                                         ; $4d72: $ff
	ld   [hl], h                                     ; $4d73: $74
	sbc  [hl]                                        ; $4d74: $9e
	cp   b                                           ; $4d75: $b8
	rst  $28                                         ; $4d76: $ef
	and  a                                           ; $4d77: $a7
	ret                                              ; $4d78: $c9


	ld   e, d                                        ; $4d79: $5a
	inc  bc                                          ; $4d7a: $03
	ld   c, [hl]                                     ; $4d7b: $4e
	inc  bc                                          ; $4d7c: $03
	ld   l, e                                        ; $4d7d: $6b
	ld   a, c                                        ; $4d7e: $79
	dec  c                                           ; $4d7f: $0d
	nop                                              ; $4d80: $00
	dec  b                                           ; $4d81: $05
	ld   b, b                                        ; $4d82: $40
	rst  $38                                         ; $4d83: $ff
	inc  bc                                          ; $4d84: $03
	rst  $38                                         ; $4d85: $ff
	ld   bc, $2801                                   ; $4d86: $01 $01 $28
	nop                                              ; $4d89: $00
	ld   bc, $b1d6                                   ; $4d8a: $01 $d6 $b1
	and  b                                           ; $4d8d: $a0
	ld   h, e                                        ; $4d8e: $63
	ld   a, [hl]                                     ; $4d8f: $7e
	ld   d, d                                        ; $4d90: $52
	ld   l, a                                        ; $4d91: $6f
	sub  c                                           ; $4d92: $91
	pop  bc                                          ; $4d93: $c1
	db   $e3                                         ; $4d94: $e3
	ld   l, [hl]                                     ; $4d95: $6e
	sub  [hl]                                        ; $4d96: $96
	sbc  a                                           ; $4d97: $9f
	dec  c                                           ; $4d98: $0d
	nop                                              ; $4d99: $00
	ld   a, [bc]                                     ; $4d9a: $0a
	ld   b, $3f                                      ; $4d9b: $06 $3f
	ld   bc, $000f                                   ; $4d9d: $01 $0f $00
	ld   bc, $0301                                   ; $4da0: $01 $01 $03
	ld   l, b                                        ; $4da3: $68
	ld   a, c                                        ; $4da4: $79
	rst  $38                                         ; $4da5: $ff
	rst  $38                                         ; $4da6: $ff
	dec  c                                           ; $4da7: $0d
	ld   [hl], a                                     ; $4da8: $77
	ld   d, h                                        ; $4da9: $54
	ld   h, l                                        ; $4daa: $65
	sub  [hl]                                        ; $4dab: $96
	ld   d, h                                        ; $4dac: $54
	ld   e, c                                        ; $4dad: $59
	rst  $38                                         ; $4dae: $ff
	rst  $38                                         ; $4daf: $ff
	rst  $38                                         ; $4db0: $ff
	rst  $38                                         ; $4db1: $ff
	dec  c                                           ; $4db2: $0d
	nop                                              ; $4db3: $00
	ld   a, [bc]                                     ; $4db4: $0a
	dec  b                                           ; $4db5: $05
	ld   b, b                                        ; $4db6: $40
	rst  $38                                         ; $4db7: $ff
	inc  bc                                          ; $4db8: $03
	rst  $38                                         ; $4db9: $ff
	ld   bc, $2801                                   ; $4dba: $01 $01 $28
	nop                                              ; $4dbd: $00
	ld   b, $3f                                      ; $4dbe: $06 $3f
	ld   bc, $0419                                   ; $4dc0: $01 $19 $04
	inc  bc                                          ; $4dc3: $03
	inc  b                                           ; $4dc4: $04
	ld   l, d                                        ; $4dc5: $6a
	and  b                                           ; $4dc6: $a0
	halt                                             ; $4dc7: $76
	halt                                             ; $4dc8: $76
	ld   a, h                                        ; $4dc9: $7c
	ld   d, [hl]                                     ; $4dca: $56
	sbc  c                                           ; $4dcb: $99
	nop                                              ; $4dcc: $00
	nop                                              ; $4dcd: $00
	ld   e, c                                        ; $4dce: $59
	ld   e, d                                        ; $4dcf: $5a
	adc  l                                           ; $4dd0: $8d
	ld   a, c                                        ; $4dd1: $79
	adc  l                                           ; $4dd2: $8d
	halt                                             ; $4dd3: $76
	sbc  d                                           ; $4dd4: $9a
	sbc  c                                           ; $4dd5: $99
	nop                                              ; $4dd6: $00
	ld   bc, $6a04                                   ; $4dd7: $01 $04 $6a
	and  b                                           ; $4dda: $a0
	ld   d, b                                        ; $4ddb: $50
	adc  [hl]                                        ; $4ddc: $8e
	nop                                              ; $4ddd: $00
	ld   [bc], a                                     ; $4dde: $02
	rlca                                             ; $4ddf: $07
	ld   [hl], h                                     ; $4de0: $74
	ld   [bc], a                                     ; $4de1: $02
	ld   [bc], a                                     ; $4de2: $02
	inc  bc                                          ; $4de3: $03
	ld   bc, $2000                                   ; $4de4: $01 $00 $20
	nop                                              ; $4de7: $00
	rlca                                             ; $4de8: $07
	sub  h                                           ; $4de9: $94
	ld   [bc], a                                     ; $4dea: $02
	ld   [bc], a                                     ; $4deb: $02
	inc  bc                                          ; $4dec: $03
	ld   bc, $2001                                   ; $4ded: $01 $01 $20
	nop                                              ; $4df0: $00
	rlca                                             ; $4df1: $07
	sub  $02                                         ; $4df2: $d6 $02
	ld   [bc], a                                     ; $4df4: $02
	inc  bc                                          ; $4df5: $03
	ld   bc, $2002                                   ; $4df6: $01 $02 $20
	nop                                              ; $4df9: $00
	ld   b, $07                                      ; $4dfa: $06 $07
	inc  bc                                          ; $4dfc: $03
	rrca                                             ; $4dfd: $0f
	nop                                              ; $4dfe: $00
	ld   bc, $6b01                                   ; $4dff: $01 $01 $6b
	ld   h, l                                        ; $4e02: $65
	ld   [hl], h                                     ; $4e03: $74
	sbc  [hl]                                        ; $4e04: $9e
	inc  b                                           ; $4e05: $04
	ld   l, d                                        ; $4e06: $6a
	and  b                                           ; $4e07: $a0
	halt                                             ; $4e08: $76
	halt                                             ; $4e09: $76
	ld   a, h                                        ; $4e0a: $7c
	ld   d, [hl]                                     ; $4e0b: $56
	ld   [hl], h                                     ; $4e0c: $74
	sbc  a                                           ; $4e0d: $9f
	dec  c                                           ; $4e0e: $0d
	nop                                              ; $4e0f: $00
	ld   a, [bc]                                     ; $4e10: $0a
	dec  b                                           ; $4e11: $05
	ld   b, b                                        ; $4e12: $40
	rst  $38                                         ; $4e13: $ff
	inc  bc                                          ; $4e14: $03
	rst  $38                                         ; $4e15: $ff
	ld   bc, $2801                                   ; $4e16: $01 $01 $28
	nop                                              ; $4e19: $00
	ld   b, $2a                                      ; $4e1a: $06 $2a
	inc  bc                                          ; $4e1c: $03
	rrca                                             ; $4e1d: $0f
	nop                                              ; $4e1e: $00
	ld   bc, $6b01                                   ; $4e1f: $01 $01 $6b
	ld   h, l                                        ; $4e22: $65
	ld   [hl], h                                     ; $4e23: $74
	sbc  [hl]                                        ; $4e24: $9e
	ld   e, c                                        ; $4e25: $59
	ld   e, d                                        ; $4e26: $5a
	adc  l                                           ; $4e27: $8d
	ld   a, c                                        ; $4e28: $79
	adc  l                                           ; $4e29: $8d
	halt                                             ; $4e2a: $76
	sbc  d                                           ; $4e2b: $9a
	ld   [hl], h                                     ; $4e2c: $74
	rst  $38                                         ; $4e2d: $ff
	rst  $38                                         ; $4e2e: $ff
	dec  c                                           ; $4e2f: $0d
	and  c                                           ; $4e30: $a1
	ld   sp, hl                                      ; $4e31: $f9
	db   $10                                         ; $4e32: $10
	ld   d, d                                        ; $4e33: $52
	ld   e, a                                        ; $4e34: $5f
	ld   a, b                                        ; $4e35: $78
	ld   d, d                                        ; $4e36: $52
	sbc  [hl]                                        ; $4e37: $9e
	ld   d, d                                        ; $4e38: $52
	ld   e, a                                        ; $4e39: $5f
	ld   a, b                                        ; $4e3a: $78
	ld   d, d                                        ; $4e3b: $52
	sbc  a                                           ; $4e3c: $9f
	dec  c                                           ; $4e3d: $0d
	nop                                              ; $4e3e: $00
	dec  b                                           ; $4e3f: $05
	ld   b, b                                        ; $4e40: $40
	rst  $38                                         ; $4e41: $ff
	inc  bc                                          ; $4e42: $03
	rst  $38                                         ; $4e43: $ff
	ld   bc, $2801                                   ; $4e44: $01 $01 $28
	nop                                              ; $4e47: $00
	ld   bc, $5272                                   ; $4e48: $01 $72 $52
	inc  bc                                          ; $4e4b: $03
	sub  h                                           ; $4e4c: $94
	inc  b                                           ; $4e4d: $04
	sbc  [hl]                                        ; $4e4e: $9e
	ld   a, c                                        ; $4e4f: $79
	adc  l                                           ; $4e50: $8d
	halt                                             ; $4e51: $76
	sbc  d                                           ; $4e52: $9a
	ld   [hl], h                                     ; $4e53: $74
	ld   h, l                                        ; $4e54: $65
	adc  h                                           ; $4e55: $8c
	ld   [hl], c                                     ; $4e56: $71
	ld   l, l                                        ; $4e57: $6d
	rst  $38                                         ; $4e58: $ff
	dec  c                                           ; $4e59: $0d
	nop                                              ; $4e5a: $00
	ld   a, [bc]                                     ; $4e5b: $0a
	ld   b, $38                                      ; $4e5c: $06 $38
	ld   [bc], a                                     ; $4e5e: $02
	rrca                                             ; $4e5f: $0f
	nop                                              ; $4e60: $00
	ld   bc, $6b01                                   ; $4e61: $01 $01 $6b
	ld   h, l                                        ; $4e64: $65
	ld   [hl], h                                     ; $4e65: $74
	sbc  [hl]                                        ; $4e66: $9e
	inc  b                                           ; $4e67: $04
	ld   l, d                                        ; $4e68: $6a
	and  b                                           ; $4e69: $a0
	ld   d, b                                        ; $4e6a: $50
	adc  [hl]                                        ; $4e6b: $8e
	sbc  a                                           ; $4e6c: $9f
	dec  c                                           ; $4e6d: $0d
	rst  $38                                         ; $4e6e: $ff
	rst  $38                                         ; $4e6f: $ff
	rst  $38                                         ; $4e70: $ff
	rst  $38                                         ; $4e71: $ff
	and  c                                           ; $4e72: $a1
	ld   sp, hl                                      ; $4e73: $f9
	dec  c                                           ; $4e74: $0d
	nop                                              ; $4e75: $00
	dec  b                                           ; $4e76: $05
	ld   b, b                                        ; $4e77: $40
	rst  $38                                         ; $4e78: $ff
	inc  bc                                          ; $4e79: $03
	rst  $38                                         ; $4e7a: $ff
	ld   bc, $2801                                   ; $4e7b: $01 $01 $28
	nop                                              ; $4e7e: $00
	ld   bc, $a150                                   ; $4e7f: $01 $50 $a1
	ld   h, [hl]                                     ; $4e82: $66
	sub  c                                           ; $4e83: $91
	pop  bc                                          ; $4e84: $c1
	db   $e3                                         ; $4e85: $e3
	ld   [hl], l                                     ; $4e86: $75
	ld   h, l                                        ; $4e87: $65
	sub  l                                           ; $4e88: $95
	ld   sp, hl                                      ; $4e89: $f9
	dec  c                                           ; $4e8a: $0d
	nop                                              ; $4e8b: $00
	ld   a, [bc]                                     ; $4e8c: $0a
	ld   b, $38                                      ; $4e8d: $06 $38
	ld   [bc], a                                     ; $4e8f: $02
	rrca                                             ; $4e90: $0f
	nop                                              ; $4e91: $00
	ld   bc, $6b01                                   ; $4e92: $01 $01 $6b
	ld   h, l                                        ; $4e95: $65
	ld   [hl], h                                     ; $4e96: $74
	rst  $38                                         ; $4e97: $ff
	rst  $38                                         ; $4e98: $ff
	dec  c                                           ; $4e99: $0d
	ld   [hl], a                                     ; $4e9a: $77
	ld   d, h                                        ; $4e9b: $54
	ld   h, l                                        ; $4e9c: $65
	sub  [hl]                                        ; $4e9d: $96
	ld   d, h                                        ; $4e9e: $54
	ld   e, c                                        ; $4e9f: $59
	rst  $38                                         ; $4ea0: $ff
	rst  $38                                         ; $4ea1: $ff
	rst  $38                                         ; $4ea2: $ff
	rst  $38                                         ; $4ea3: $ff
	dec  c                                           ; $4ea4: $0d
	nop                                              ; $4ea5: $00
	ld   a, [bc]                                     ; $4ea6: $0a
	dec  b                                           ; $4ea7: $05
	ld   b, b                                        ; $4ea8: $40
	rst  $38                                         ; $4ea9: $ff
	inc  bc                                          ; $4eaa: $03
	rst  $38                                         ; $4eab: $ff
	ld   bc, $2801                                   ; $4eac: $01 $01 $28
	nop                                              ; $4eaf: $00
	ld   b, $38                                      ; $4eb0: $06 $38
	ld   [bc], a                                     ; $4eb2: $02
	add  hl, de                                      ; $4eb3: $19
	inc  b                                           ; $4eb4: $04
	inc  bc                                          ; $4eb5: $03
	ret  nc                                          ; $4eb6: $d0

	push af                                          ; $4eb7: $f5
	xor  h                                           ; $4eb8: $ac
	jp   nz, $03a0                                   ; $4eb9: $c2 $a0 $03

	and  b                                           ; $4ebc: $a0
	ld   [hl], d                                     ; $4ebd: $72
	nop                                              ; $4ebe: $00
	nop                                              ; $4ebf: $00
	ret                                              ; $4ec0: $c9


	push af                                          ; $4ec1: $f5
	xor  h                                           ; $4ec2: $ac
	jp   nz, $03a0                                   ; $4ec3: $c2 $a0 $03

	and  b                                           ; $4ec6: $a0
	ld   [hl], d                                     ; $4ec7: $72
	nop                                              ; $4ec8: $00
	ld   bc, $f5c9                                   ; $4ec9: $01 $c9 $f5
	xor  h                                           ; $4ecc: $ac
	push bc                                          ; $4ecd: $c5
	and  b                                           ; $4ece: $a0
	inc  bc                                          ; $4ecf: $03
	ld   l, d                                        ; $4ed0: $6a
	add  a                                           ; $4ed1: $87
	sbc  c                                           ; $4ed2: $99
	nop                                              ; $4ed3: $00
	ld   [bc], a                                     ; $4ed4: $02
	rlca                                             ; $4ed5: $07
	ld   l, d                                        ; $4ed6: $6a
	inc  bc                                          ; $4ed7: $03
	ld   [bc], a                                     ; $4ed8: $02
	inc  bc                                          ; $4ed9: $03
	ld   bc, $2000                                   ; $4eda: $01 $00 $20
	nop                                              ; $4edd: $00
	rlca                                             ; $4ede: $07
	sub  d                                           ; $4edf: $92
	inc  bc                                          ; $4ee0: $03
	ld   [bc], a                                     ; $4ee1: $02
	inc  bc                                          ; $4ee2: $03
	ld   bc, $2001                                   ; $4ee3: $01 $01 $20
	nop                                              ; $4ee6: $00
	rlca                                             ; $4ee7: $07
	rlc  e                                           ; $4ee8: $cb $03
	ld   [bc], a                                     ; $4eea: $02
	inc  bc                                          ; $4eeb: $03
	ld   bc, $2002                                   ; $4eec: $01 $02 $20
	nop                                              ; $4eef: $00
	ld   b, $20                                      ; $4ef0: $06 $20
	inc  b                                           ; $4ef2: $04
	rrca                                             ; $4ef3: $0f
	nop                                              ; $4ef4: $00
	ld   bc, $d001                                   ; $4ef5: $01 $01 $d0
	push af                                          ; $4ef8: $f5
	xor  h                                           ; $4ef9: $ac
	jp   nz, $ff7d                                   ; $4efa: $c2 $7d $ff

	rst  $38                                         ; $4efd: $ff
	sub  [hl]                                        ; $4efe: $96
	ld   h, l                                        ; $4eff: $65
	ld   a, [$6f0d]                                  ; $4f00: $fa $0d $6f
	sub  c                                           ; $4f03: $91
	and  c                                           ; $4f04: $a1
	halt                                             ; $4f05: $76
	inc  bc                                          ; $4f06: $03
	and  b                                           ; $4f07: $a0
	ld   [hl], c                                     ; $4f08: $71
	ld   l, l                                        ; $4f09: $6d
	ld   l, h                                        ; $4f0a: $6c
	sbc  a                                           ; $4f0b: $9f
	dec  c                                           ; $4f0c: $0d
	nop                                              ; $4f0d: $00
	ld   a, [bc]                                     ; $4f0e: $0a
	dec  b                                           ; $4f0f: $05
	ld   b, b                                        ; $4f10: $40
	rst  $38                                         ; $4f11: $ff
	inc  bc                                          ; $4f12: $03
	rst  $38                                         ; $4f13: $ff
	ld   bc, $2801                                   ; $4f14: $01 $01 $28
	nop                                              ; $4f17: $00
	ld   b, $3f                                      ; $4f18: $06 $3f
	inc  b                                           ; $4f1a: $04
	rrca                                             ; $4f1b: $0f
	nop                                              ; $4f1c: $00
	ld   bc, $c901                                   ; $4f1d: $01 $01 $c9
	push af                                          ; $4f20: $f5
	xor  h                                           ; $4f21: $ac
	jp   nz, Jump_064_6fa0                           ; $4f22: $c2 $a0 $6f

	sub  c                                           ; $4f25: $91
	and  c                                           ; $4f26: $a1
	halt                                             ; $4f27: $76
	inc  bc                                          ; $4f28: $03
	and  b                                           ; $4f29: $a0
	ld   [hl], c                                     ; $4f2a: $71
	ld   [hl], h                                     ; $4f2b: $74
	dec  c                                           ; $4f2c: $0d
	rst  $38                                         ; $4f2d: $ff
	rst  $38                                         ; $4f2e: $ff
	ld   [hl], a                                     ; $4f2f: $77
	ld   h, c                                        ; $4f30: $61
	add  [hl]                                        ; $4f31: $86
	ld   [bc], a                                     ; $4f32: $02
	ld   a, a                                        ; $4f33: $7f
	ld   e, l                                        ; $4f34: $5d
	and  c                                           ; $4f35: $a1
	ld   l, [hl]                                     ; $4f36: $6e
	inc  b                                           ; $4f37: $04
	ld   l, l                                        ; $4f38: $6d
	ld   a, l                                        ; $4f39: $7d
	ld   sp, hl                                      ; $4f3a: $f9
	dec  c                                           ; $4f3b: $0d
	nop                                              ; $4f3c: $00
	dec  b                                           ; $4f3d: $05
	ld   b, b                                        ; $4f3e: $40
	rst  $38                                         ; $4f3f: $ff
	inc  bc                                          ; $4f40: $03
	rst  $38                                         ; $4f41: $ff
	ld   bc, $2801                                   ; $4f42: $01 $01 $28
	nop                                              ; $4f45: $00
	ld   bc, $5a6f                                   ; $4f46: $01 $6f $5a
	ld   d, h                                        ; $4f49: $54
	ld   [hl], l                                     ; $4f4a: $75
	ld   h, l                                        ; $4f4b: $65
	sub  l                                           ; $4f4c: $95
	sbc  a                                           ; $4f4d: $9f
	dec  c                                           ; $4f4e: $0d
	nop                                              ; $4f4f: $00
	ld   a, [bc]                                     ; $4f50: $0a
	ld   b, $2a                                      ; $4f51: $06 $2a
	inc  bc                                          ; $4f53: $03
	rrca                                             ; $4f54: $0f
	nop                                              ; $4f55: $00
	ld   bc, $c901                                   ; $4f56: $01 $01 $c9
	push af                                          ; $4f59: $f5
	xor  h                                           ; $4f5a: $ac
	push bc                                          ; $4f5b: $c5
	and  b                                           ; $4f5c: $a0
	inc  bc                                          ; $4f5d: $03
	ld   l, d                                        ; $4f5e: $6a
	add  a                                           ; $4f5f: $87
	ld   [hl], h                                     ; $4f60: $74
	sbc  [hl]                                        ; $4f61: $9e
	inc  bc                                          ; $4f62: $03
	db   $dd                                         ; $4f63: $dd
	ld   a, c                                        ; $4f64: $79
	inc  bc                                          ; $4f65: $03
	ld   c, [hl]                                     ; $4f66: $4e
	ld   [hl], d                                     ; $4f67: $72
	sbc  a                                           ; $4f68: $9f
	dec  c                                           ; $4f69: $0d
	ld   a, b                                        ; $4f6a: $78
	db   $fc                                         ; $4f6b: $fc
	and  c                                           ; $4f6c: $a1
	ld   l, a                                        ; $4f6d: $6f
	sub  c                                           ; $4f6e: $91
	ld   [hl], c                                     ; $4f6f: $71
	ld   [hl], h                                     ; $4f70: $74
	rst  $38                                         ; $4f71: $ff
	rst  $38                                         ; $4f72: $ff
	dec  c                                           ; $4f73: $0d
	nop                                              ; $4f74: $00
	ld   a, [bc]                                     ; $4f75: $0a
	ld   bc, $a16b                                   ; $4f76: $01 $6b $a1
	ld   a, b                                        ; $4f79: $78
	ld   h, c                                        ; $4f7a: $61
	halt                                             ; $4f7b: $76
	ld   [bc], a                                     ; $4f7c: $02
	sbc  l                                           ; $4f7d: $9d
	ld   [hl], c                                     ; $4f7e: $71
	ld   [hl], h                                     ; $4f7f: $74
	sbc  c                                           ; $4f80: $99
	inc  b                                           ; $4f81: $04
	ld   a, d                                        ; $4f82: $7a
	ld   [bc], a                                     ; $4f83: $02
	ld   a, e                                        ; $4f84: $7b
	ld   h, [hl]                                     ; $4f85: $66
	sub  c                                           ; $4f86: $91
	dec  c                                           ; $4f87: $0d
	ld   a, b                                        ; $4f88: $78
	ld   d, d                                        ; $4f89: $52
	sub  [hl]                                        ; $4f8a: $96
	sbc  a                                           ; $4f8b: $9f
	dec  c                                           ; $4f8c: $0d
	nop                                              ; $4f8d: $00
	dec  b                                           ; $4f8e: $05
	ld   b, b                                        ; $4f8f: $40
	rst  $38                                         ; $4f90: $ff
	inc  bc                                          ; $4f91: $03
	rst  $38                                         ; $4f92: $ff
	ld   bc, $2801                                   ; $4f93: $01 $01 $28
	nop                                              ; $4f96: $00
	ld   bc, $7003                                   ; $4f97: $01 $03 $70
	ld   e, l                                        ; $4f9a: $5d
	ld   h, l                                        ; $4f9b: $65
	ld   l, l                                        ; $4f9c: $6d
	ld   e, l                                        ; $4f9d: $5d
	ld   h, l                                        ; $4f9e: $65
	ld   a, b                                        ; $4f9f: $78
	ld   e, e                                        ; $4fa0: $5b
	sub  c                                           ; $4fa1: $91
	sbc  a                                           ; $4fa2: $9f
	dec  c                                           ; $4fa3: $0d
	nop                                              ; $4fa4: $00
	ld   a, [bc]                                     ; $4fa5: $0a
	ld   b, $2a                                      ; $4fa6: $06 $2a
	inc  bc                                          ; $4fa8: $03
	rrca                                             ; $4fa9: $0f
	nop                                              ; $4faa: $00
	ld   bc, $ff01                                   ; $4fab: $01 $01 $ff
	rst  $38                                         ; $4fae: $ff
	ld   [hl], a                                     ; $4faf: $77
	ld   d, h                                        ; $4fb0: $54
	ld   h, l                                        ; $4fb1: $65
	sub  [hl]                                        ; $4fb2: $96
	ld   d, h                                        ; $4fb3: $54
	ld   e, c                                        ; $4fb4: $59
	rst  $38                                         ; $4fb5: $ff
	rst  $38                                         ; $4fb6: $ff
	rst  $38                                         ; $4fb7: $ff
	rst  $38                                         ; $4fb8: $ff
	dec  c                                           ; $4fb9: $0d
	nop                                              ; $4fba: $00
	ld   a, [bc]                                     ; $4fbb: $0a
	dec  b                                           ; $4fbc: $05
	ld   b, b                                        ; $4fbd: $40
	rst  $38                                         ; $4fbe: $ff
	inc  bc                                          ; $4fbf: $03
	rst  $38                                         ; $4fc0: $ff
	ld   bc, $2801                                   ; $4fc1: $01 $01 $28
	nop                                              ; $4fc4: $00
	ld   b, $2a                                      ; $4fc5: $06 $2a
	inc  bc                                          ; $4fc7: $03
	add  hl, de                                      ; $4fc8: $19
	inc  b                                           ; $4fc9: $04
	inc  bc                                          ; $4fca: $03
	ld   h, l                                        ; $4fcb: $65
	and  c                                           ; $4fcc: $a1
	ld   h, c                                        ; $4fcd: $61
	ld   e, e                                        ; $4fce: $5b
	sub  e                                           ; $4fcf: $93
	ld   d, h                                        ; $4fd0: $54
	ld   h, a                                        ; $4fd1: $67
	sbc  c                                           ; $4fd2: $99
	nop                                              ; $4fd3: $00
	nop                                              ; $4fd4: $00
	ld   h, [hl]                                     ; $4fd5: $66
	and  c                                           ; $4fd6: $a1
	ld   h, c                                        ; $4fd7: $61
	ld   d, h                                        ; $4fd8: $54
	ld   h, c                                        ; $4fd9: $61
	ld   e, e                                        ; $4fda: $5b
	sub  e                                           ; $4fdb: $93
	ld   d, h                                        ; $4fdc: $54
	and  b                                           ; $4fdd: $a0
	ld   h, a                                        ; $4fde: $67
	sbc  c                                           ; $4fdf: $99
	nop                                              ; $4fe0: $00
	ld   bc, $9756                                   ; $4fe1: $01 $56 $97
	ld   h, c                                        ; $4fe4: $61
	ld   e, e                                        ; $4fe5: $5b
	sub  e                                           ; $4fe6: $93
	ld   d, h                                        ; $4fe7: $54
	and  b                                           ; $4fe8: $a0
	ld   h, a                                        ; $4fe9: $67
	sbc  c                                           ; $4fea: $99
	nop                                              ; $4feb: $00
	ld   [bc], a                                     ; $4fec: $02
	rlca                                             ; $4fed: $07
	add  d                                           ; $4fee: $82
	inc  b                                           ; $4fef: $04
	ld   [bc], a                                     ; $4ff0: $02
	inc  bc                                          ; $4ff1: $03
	ld   bc, $2000                                   ; $4ff2: $01 $00 $20
	nop                                              ; $4ff5: $00
	rlca                                             ; $4ff6: $07
	or   b                                           ; $4ff7: $b0
	inc  b                                           ; $4ff8: $04
	ld   [bc], a                                     ; $4ff9: $02
	inc  bc                                          ; $4ffa: $03
	ld   bc, $2001                                   ; $4ffb: $01 $01 $20
	nop                                              ; $4ffe: $00
	rlca                                             ; $4fff: $07
	ldh  a, [rDIV]                                   ; $5000: $f0 $04
	ld   [bc], a                                     ; $5002: $02
	inc  bc                                          ; $5003: $03
	ld   bc, $2002                                   ; $5004: $01 $02 $20
	nop                                              ; $5007: $00
	ld   b, $4f                                      ; $5008: $06 $4f
	dec  b                                           ; $500a: $05
	rrca                                             ; $500b: $0f
	nop                                              ; $500c: $00
	ld   bc, $0301                                   ; $500d: $01 $01 $03
	ld   l, c                                        ; $5010: $69
	ld   [bc], a                                     ; $5011: $02
	xor  d                                           ; $5012: $aa
	ld   a, c                                        ; $5013: $79
	ld   h, l                                        ; $5014: $65
	and  c                                           ; $5015: $a1
	ld   h, c                                        ; $5016: $61
	ld   e, e                                        ; $5017: $5b
	sub  e                                           ; $5018: $93
	ld   d, h                                        ; $5019: $54
	and  b                                           ; $501a: $a0
	ld   h, l                                        ; $501b: $65
	ld   [hl], h                                     ; $501c: $74
	rst  $38                                         ; $501d: $ff
	rst  $38                                         ; $501e: $ff
	dec  c                                           ; $501f: $0d
	sub  [hl]                                        ; $5020: $96
	ld   h, l                                        ; $5021: $65
	ld   a, [$ab10]                                  ; $5022: $fa $10 $ab
	call nz, $fbb2                                   ; $5025: $c4 $b2 $fb
	ld   l, [hl]                                     ; $5028: $6e
	ld   a, [$000d]                                  ; $5029: $fa $0d $00
	ld   a, [bc]                                     ; $502c: $0a
	dec  b                                           ; $502d: $05
	ld   b, b                                        ; $502e: $40
	rst  $38                                         ; $502f: $ff
	inc  bc                                          ; $5030: $03
	rst  $38                                         ; $5031: $ff
	ld   bc, $2801                                   ; $5032: $01 $01 $28
	nop                                              ; $5035: $00
	ld   b, $77                                      ; $5036: $06 $77
	dec  b                                           ; $5038: $05
	rrca                                             ; $5039: $0f
	nop                                              ; $503a: $00
	ld   bc, $0301                                   ; $503b: $01 $01 $03
	ld   l, c                                        ; $503e: $69
	ld   [bc], a                                     ; $503f: $02
	xor  d                                           ; $5040: $aa
	ld   a, c                                        ; $5041: $79
	sbc  [hl]                                        ; $5042: $9e
	ld   h, [hl]                                     ; $5043: $66
	and  c                                           ; $5044: $a1
	ld   h, c                                        ; $5045: $61
	ld   d, h                                        ; $5046: $54
	ld   h, c                                        ; $5047: $61
	ld   e, e                                        ; $5048: $5b
	sub  e                                           ; $5049: $93
	ld   d, h                                        ; $504a: $54
	and  b                                           ; $504b: $a0
	dec  c                                           ; $504c: $0d
	ld   h, l                                        ; $504d: $65
	ld   [hl], h                                     ; $504e: $74
	rst  $38                                         ; $504f: $ff
	rst  $38                                         ; $5050: $ff
	and  c                                           ; $5051: $a1
	ld   sp, hl                                      ; $5052: $f9
	db   $10                                         ; $5053: $10
	ld   a, b                                        ; $5054: $78
	and  c                                           ; $5055: $a1
	ld   [hl], l                                     ; $5056: $75
	ld   l, e                                        ; $5057: $6b
	and  c                                           ; $5058: $a1
	ld   a, b                                        ; $5059: $78
	ld   [bc], a                                     ; $505a: $02
	jp   $000d                                       ; $505b: $c3 $0d $00


	dec  b                                           ; $505e: $05
	ld   b, b                                        ; $505f: $40
	rst  $38                                         ; $5060: $ff
	inc  bc                                          ; $5061: $03
	rst  $38                                         ; $5062: $ff
	ld   bc, $2801                                   ; $5063: $01 $01 $28
	nop                                              ; $5066: $00
	ld   bc, $7865                                   ; $5067: $01 $65 $78
	ld   e, e                                        ; $506a: $5b
	sub  c                                           ; $506b: $91
	ld   a, b                                        ; $506c: $78
	sub  a                                           ; $506d: $97
	ld   a, b                                        ; $506e: $78
	ld   d, d                                        ; $506f: $52
	and  c                                           ; $5070: $a1
	ld   l, [hl]                                     ; $5071: $6e
	ld   sp, hl                                      ; $5072: $f9
	dec  c                                           ; $5073: $0d
	nop                                              ; $5074: $00
	ld   a, [bc]                                     ; $5075: $0a
	ld   b, $3f                                      ; $5076: $06 $3f
	inc  b                                           ; $5078: $04
	rrca                                             ; $5079: $0f
	nop                                              ; $507a: $00
	ld   bc, $9601                                   ; $507b: $01 $01 $96
	ld   h, l                                        ; $507e: $65
	sbc  [hl]                                        ; $507f: $9e
	inc  bc                                          ; $5080: $03
	ld   l, c                                        ; $5081: $69
	ld   [bc], a                                     ; $5082: $02
	xor  d                                           ; $5083: $aa
	ld   a, c                                        ; $5084: $79
	ld   d, [hl]                                     ; $5085: $56
	sub  a                                           ; $5086: $97
	ld   h, c                                        ; $5087: $61
	ld   e, e                                        ; $5088: $5b
	sub  e                                           ; $5089: $93
	ld   d, h                                        ; $508a: $54
	and  b                                           ; $508b: $a0
	dec  c                                           ; $508c: $0d
	ld   h, l                                        ; $508d: $65
	ld   [hl], h                                     ; $508e: $74
	rst  $38                                         ; $508f: $ff
	rst  $38                                         ; $5090: $ff
	and  c                                           ; $5091: $a1
	ld   sp, hl                                      ; $5092: $f9
	db   $10                                         ; $5093: $10
	inc  b                                           ; $5094: $04
	ld   l, l                                        ; $5095: $6d
	ld   a, c                                        ; $5096: $79
	ld   d, [hl]                                     ; $5097: $56
	sub  a                                           ; $5098: $97
	ld   a, b                                        ; $5099: $78
	and  c                                           ; $509a: $a1
	ld   [hl], h                                     ; $509b: $74
	dec  c                                           ; $509c: $0d
	ld   a, b                                        ; $509d: $78
	ld   d, d                                        ; $509e: $52
	sub  [hl]                                        ; $509f: $96
	ld   a, b                                        ; $50a0: $78
	rst  $38                                         ; $50a1: $ff
	rst  $38                                         ; $50a2: $ff
	dec  c                                           ; $50a3: $0d
	nop                                              ; $50a4: $00
	ld   a, [bc]                                     ; $50a5: $0a
	ld   bc, $fc78                                   ; $50a6: $01 $78 $fc
	and  c                                           ; $50a9: $a1
	ld   [hl], h                                     ; $50aa: $74
	ld   [bc], a                                     ; $50ab: $02
	sbc  l                                           ; $50ac: $9d
	ld   [hl], c                                     ; $50ad: $71
	ld   [hl], h                                     ; $50ae: $74
	sbc  c                                           ; $50af: $99
	inc  b                                           ; $50b0: $04
	ld   a, d                                        ; $50b1: $7a
	ld   [bc], a                                     ; $50b2: $02
	ld   a, e                                        ; $50b3: $7b
	ld   h, [hl]                                     ; $50b4: $66
	sub  c                                           ; $50b5: $91
	dec  c                                           ; $50b6: $0d
	ld   a, b                                        ; $50b7: $78
	ld   d, d                                        ; $50b8: $52
	ld   l, h                                        ; $50b9: $6c
	sbc  a                                           ; $50ba: $9f
	dec  c                                           ; $50bb: $0d
	nop                                              ; $50bc: $00
	dec  b                                           ; $50bd: $05
	ld   b, b                                        ; $50be: $40
	rst  $38                                         ; $50bf: $ff
	inc  bc                                          ; $50c0: $03
	rst  $38                                         ; $50c1: $ff
	ld   bc, $2801                                   ; $50c2: $01 $01 $28
	nop                                              ; $50c5: $00
	ld   bc, $2805                                   ; $50c6: $01 $05 $28
	ld   e, d                                        ; $50c9: $5a
	ld   a, b                                        ; $50ca: $78
	ld   e, e                                        ; $50cb: $5b
	sub  c                                           ; $50cc: $91
	ld   e, b                                        ; $50cd: $58
	ld   e, l                                        ; $50ce: $5d
	sbc  d                                           ; $50cf: $9a
	sbc  c                                           ; $50d0: $99
	ld   a, [$000d]                                  ; $50d1: $fa $0d $00
	ld   a, [bc]                                     ; $50d4: $0a
	ld   b, $3f                                      ; $50d5: $06 $3f
	inc  b                                           ; $50d7: $04
	rrca                                             ; $50d8: $0f
	nop                                              ; $50d9: $00
	ld   bc, $0301                                   ; $50da: $01 $01 $03
	dec  c                                           ; $50dd: $0d
	inc  bc                                          ; $50de: $03
	ld   h, l                                        ; $50df: $65
	ld   h, b                                        ; $50e0: $60
	ld   a, c                                        ; $50e1: $79
	rst  $38                                         ; $50e2: $ff
	rst  $38                                         ; $50e3: $ff
	dec  c                                           ; $50e4: $0d
	rst  $38                                         ; $50e5: $ff
	rst  $38                                         ; $50e6: $ff
	rst  $38                                         ; $50e7: $ff
	rst  $38                                         ; $50e8: $ff
	ld   [hl], a                                     ; $50e9: $77
	ld   d, h                                        ; $50ea: $54
	ld   h, l                                        ; $50eb: $65
	sub  [hl]                                        ; $50ec: $96
	ld   d, h                                        ; $50ed: $54
	ld   e, c                                        ; $50ee: $59
	rst  $38                                         ; $50ef: $ff
	rst  $38                                         ; $50f0: $ff
	dec  c                                           ; $50f1: $0d
	nop                                              ; $50f2: $00
	ld   a, [bc]                                     ; $50f3: $0a
	dec  b                                           ; $50f4: $05
	ld   b, b                                        ; $50f5: $40
	rst  $38                                         ; $50f6: $ff
	inc  bc                                          ; $50f7: $03
	rst  $38                                         ; $50f8: $ff
	ld   bc, $2801                                   ; $50f9: $01 $01 $28
	nop                                              ; $50fc: $00
	ld   b, $3f                                      ; $50fd: $06 $3f
	inc  b                                           ; $50ff: $04
	rlca                                             ; $5100: $07
	sub  d                                           ; $5101: $92
	dec  b                                           ; $5102: $05
	inc  bc                                          ; $5103: $03
	rst  $38                                         ; $5104: $ff
	ld   bc, $2005                                   ; $5105: $01 $05 $20
	nop                                              ; $5108: $00
	rlca                                             ; $5109: $07
	db   $f4                                         ; $510a: $f4
	dec  b                                           ; $510b: $05
	inc  bc                                          ; $510c: $03
	rst  $38                                         ; $510d: $ff
	ld   bc, $2006                                   ; $510e: $01 $06 $20
	nop                                              ; $5111: $00
	rlca                                             ; $5112: $07
	ld   l, d                                        ; $5113: $6a
	ld   b, $03                                      ; $5114: $06 $03
	rst  $38                                         ; $5116: $ff
	ld   bc, $2507                                   ; $5117: $01 $07 $25
	nop                                              ; $511a: $00
	inc  c                                           ; $511b: $0c
	ld   [bc], a                                     ; $511c: $02
	ld   c, $04                                      ; $511d: $0e $04
	rrca                                             ; $511f: $0f
	nop                                              ; $5120: $00
	ld   bc, $060d                                   ; $5121: $01 $0d $06
	nop                                              ; $5124: $00
	ld   bc, $f5ac                                   ; $5125: $01 $ac $f5
	bit  4, e                                        ; $5128: $cb $63
	and  c                                           ; $512a: $a1
	sbc  a                                           ; $512b: $9f
	dec  c                                           ; $512c: $0d
	ld   e, b                                        ; $512d: $58
	ld   a, l                                        ; $512e: $7d
	sub  [hl]                                        ; $512f: $96
	ld   d, h                                        ; $5130: $54
	ld   h, d                                        ; $5131: $62
	ld   h, h                                        ; $5132: $64
	ld   d, d                                        ; $5133: $52
	adc  h                                           ; $5134: $8c
	ld   h, a                                        ; $5135: $67
	sbc  a                                           ; $5136: $9f
	dec  c                                           ; $5137: $0d
	nop                                              ; $5138: $00
	ld   a, [bc]                                     ; $5139: $0a
	inc  e                                           ; $513a: $1c
	ld   b, $01                                      ; $513b: $06 $01
	ld   bc, $401d                                   ; $513d: $01 $1d $40
	ld   d, $03                                      ; $5140: $16 $03
	ld   d, $01                                      ; $5142: $16 $01
	ld   [bc], a                                     ; $5144: $02
	jr   z, jr_064_5147                              ; $5145: $28 $00

jr_064_5147:
	ld   bc, $5896                                   ; $5147: $01 $96 $58
	sbc  [hl]                                        ; $514a: $9e
	ld   [$9f00], sp                                 ; $514b: $08 $00 $9f
	dec  c                                           ; $514e: $0d
	ld   e, b                                        ; $514f: $58
	ld   a, l                                        ; $5150: $7d
	sub  [hl]                                        ; $5151: $96
	ld   d, h                                        ; $5152: $54
	ld   a, [$000d]                                  ; $5153: $fa $0d $00
	ld   a, [bc]                                     ; $5156: $0a
	ld   bc, $6596                                   ; $5157: $01 $96 $65
	sbc  a                                           ; $515a: $9f
	dec  c                                           ; $515b: $0d
	ld   l, e                                        ; $515c: $6b
	sbc  d                                           ; $515d: $9a
	ld   h, [hl]                                     ; $515e: $66
	sub  c                                           ; $515f: $91
	sbc  [hl]                                        ; $5160: $9e
	ld   [bc], a                                     ; $5161: $02
	ld   a, a                                        ; $5162: $7f
	ld   e, l                                        ; $5163: $5d
	ld   e, c                                        ; $5164: $59
	ld   a, [$800d]                                  ; $5165: $fa $0d $80
	halt                                             ; $5168: $76
	ld   [hl], c                                     ; $5169: $71
	dec  b                                           ; $516a: $05
	cp   c                                           ; $516b: $b9
	sbc  b                                           ; $516c: $98
	ld   a, [$0dfa]                                  ; $516d: $fa $fa $0d
	nop                                              ; $5170: $00
	ld   a, [bc]                                     ; $5171: $0a
	dec  c                                           ; $5172: $0d
	nop                                              ; $5173: $00
	nop                                              ; $5174: $00
	rrca                                             ; $5175: $0f
	nop                                              ; $5176: $00
	ld   bc, $020c                                   ; $5177: $01 $0c $02
	ld   b, $b7                                      ; $517a: $06 $b7
	ld   b, $0c                                      ; $517c: $06 $0c
	ld   [bc], a                                     ; $517e: $02
	ld   c, $04                                      ; $517f: $0e $04
	rrca                                             ; $5181: $0f
	nop                                              ; $5182: $00
	ld   bc, $060d                                   ; $5183: $01 $0d $06
	nop                                              ; $5186: $00
	ld   bc, $7d58                                   ; $5187: $01 $58 $7d
	sub  [hl]                                        ; $518a: $96
	ld   d, h                                        ; $518b: $54
	ld   h, d                                        ; $518c: $62
	ld   h, h                                        ; $518d: $64
	ld   d, d                                        ; $518e: $52
	adc  h                                           ; $518f: $8c
	ld   h, a                                        ; $5190: $67
	sbc  a                                           ; $5191: $9f
	dec  c                                           ; $5192: $0d
	xor  h                                           ; $5193: $ac
	push af                                          ; $5194: $f5
	bit  4, e                                        ; $5195: $cb $63
	and  c                                           ; $5197: $a1
	sbc  a                                           ; $5198: $9f
	dec  c                                           ; $5199: $0d
	ld   e, b                                        ; $519a: $58
	inc  b                                           ; $519b: $04
	rla                                              ; $519c: $17
	ld   l, l                                        ; $519d: $6d
	ld   l, c                                        ; $519e: $69
	ld   h, l                                        ; $519f: $65
	ld   [hl], h                                     ; $51a0: $74
	ld   h, a                                        ; $51a1: $67
	adc  l                                           ; $51a2: $8d
	adc  h                                           ; $51a3: $8c
	ld   l, c                                        ; $51a4: $69
	and  c                                           ; $51a5: $a1
	sbc  a                                           ; $51a6: $9f
	dec  c                                           ; $51a7: $0d
	nop                                              ; $51a8: $00
	ld   a, [bc]                                     ; $51a9: $0a
	inc  e                                           ; $51aa: $1c
	ld   b, $00                                      ; $51ab: $06 $00
	nop                                              ; $51ad: $00
	ld   bc, $5896                                   ; $51ae: $01 $96 $58
	sbc  [hl]                                        ; $51b1: $9e
	ld   [$9f00], sp                                 ; $51b2: $08 $00 $9f
	dec  c                                           ; $51b5: $0d
	ld   e, b                                        ; $51b6: $58
	ld   a, l                                        ; $51b7: $7d
	sub  [hl]                                        ; $51b8: $96
	ld   d, h                                        ; $51b9: $54
	ld   a, [$500d]                                  ; $51ba: $fa $0d $50
	ld   l, l                                        ; $51bd: $6d
	ld   d, d                                        ; $51be: $52
	sub  b                                           ; $51bf: $90
	sbc  [hl]                                        ; $51c0: $9e
	ld   [bc], a                                     ; $51c1: $02
	and  l                                           ; $51c2: $a5
	dec  b                                           ; $51c3: $05
	db   $10                                         ; $51c4: $10
	ld   l, l                                        ; $51c5: $6d
	halt                                             ; $51c6: $76
	ld   h, c                                        ; $51c7: $61
	ld   l, [hl]                                     ; $51c8: $6e
	sbc  a                                           ; $51c9: $9f
	dec  c                                           ; $51ca: $0d
	nop                                              ; $51cb: $00
	ld   a, [bc]                                     ; $51cc: $0a
	ld   bc, $6596                                   ; $51cd: $01 $96 $65
	sbc  a                                           ; $51d0: $9f
	dec  c                                           ; $51d1: $0d
	ld   l, e                                        ; $51d2: $6b
	sbc  d                                           ; $51d3: $9a
	ld   h, [hl]                                     ; $51d4: $66
	sub  c                                           ; $51d5: $91
	sbc  [hl]                                        ; $51d6: $9e
	ld   [bc], a                                     ; $51d7: $02
	ld   a, a                                        ; $51d8: $7f
	ld   e, l                                        ; $51d9: $5d
	ld   e, c                                        ; $51da: $59
	ld   a, [$800d]                                  ; $51db: $fa $0d $80
	halt                                             ; $51de: $76
	ld   [hl], c                                     ; $51df: $71
	dec  b                                           ; $51e0: $05
	cp   c                                           ; $51e1: $b9
	sbc  b                                           ; $51e2: $98
	ld   a, [$0dfa]                                  ; $51e3: $fa $fa $0d
	nop                                              ; $51e6: $00
	ld   a, [bc]                                     ; $51e7: $0a
	dec  c                                           ; $51e8: $0d
	nop                                              ; $51e9: $00
	nop                                              ; $51ea: $00
	rrca                                             ; $51eb: $0f
	nop                                              ; $51ec: $00
	ld   bc, $020c                                   ; $51ed: $01 $0c $02
	ld   b, $b7                                      ; $51f0: $06 $b7
	ld   b, $0c                                      ; $51f2: $06 $0c
	ld   [bc], a                                     ; $51f4: $02
	ld   c, $04                                      ; $51f5: $0e $04
	inc  e                                           ; $51f7: $1c
	ld   b, $05                                      ; $51f8: $06 $05
	dec  b                                           ; $51fa: $05
	dec  e                                           ; $51fb: $1d
	ld   b, b                                        ; $51fc: $40
	ld   d, $03                                      ; $51fd: $16 $03
	ld   d, $01                                      ; $51ff: $16 $01
	inc  bc                                          ; $5201: $03
	add  hl, hl                                      ; $5202: $29
	nop                                              ; $5203: $00
	ld   bc, $6b58                                   ; $5204: $01 $58 $6b
	ld   d, d                                        ; $5207: $52
	ld   l, d                                        ; $5208: $6a
	ld   a, [$0810]                                  ; $5209: $fa $10 $08
	nop                                              ; $520c: $00
	sbc  a                                           ; $520d: $9f
	dec  c                                           ; $520e: $0d
	ld   a, b                                        ; $520f: $78
	ld   a, c                                        ; $5210: $79
	or   c                                           ; $5211: $b1
	cp   e                                           ; $5212: $bb
	or   c                                           ; $5213: $b1
	cp   e                                           ; $5214: $bb
	ld   h, l                                        ; $5215: $65
	ld   [hl], h                                     ; $5216: $74
	and  c                                           ; $5217: $a1
	ld   l, [hl]                                     ; $5218: $6e
	sub  [hl]                                        ; $5219: $96
	db   $fc                                         ; $521a: $fc
	sbc  a                                           ; $521b: $9f
	dec  c                                           ; $521c: $0d
	nop                                              ; $521d: $00
	ld   a, [bc]                                     ; $521e: $0a
	inc  e                                           ; $521f: $1c
	ld   b, $00                                      ; $5220: $06 $00
	nop                                              ; $5222: $00
	ld   bc, $508c                                   ; $5223: $01 $8c $50
	sbc  [hl]                                        ; $5226: $9e
	ld   d, d                                        ; $5227: $52
	ld   d, d                                        ; $5228: $52
	sub  d                                           ; $5229: $92
	sbc  a                                           ; $522a: $9f
	dec  c                                           ; $522b: $0d
	ld   [bc], a                                     ; $522c: $02
	ld   a, a                                        ; $522d: $7f
	ld   h, c                                        ; $522e: $61
	ld   d, h                                        ; $522f: $54
	ld   e, c                                        ; $5230: $59
	sbc  a                                           ; $5231: $9f
	dec  c                                           ; $5232: $0d
	nop                                              ; $5233: $00
	ld   a, [bc]                                     ; $5234: $0a
	dec  c                                           ; $5235: $0d
	nop                                              ; $5236: $00
	nop                                              ; $5237: $00
	rrca                                             ; $5238: $0f
	nop                                              ; $5239: $00
	ld   bc, $020c                                   ; $523a: $01 $0c $02
	ld   b, $b7                                      ; $523d: $06 $b7
	ld   b, $0e                                      ; $523f: $06 $0e
	ld   a, a                                        ; $5241: $7f
	inc  e                                           ; $5242: $1c
	ld   b, $07                                      ; $5243: $06 $07
	rlca                                             ; $5245: $07
	ld   bc, $5483                                   ; $5246: $01 $83 $54
	rst  $38                                         ; $5249: $ff
	rst  $38                                         ; $524a: $ff
	dec  c                                           ; $524b: $0d
	ld   d, d                                        ; $524c: $52
	sub  d                                           ; $524d: $92
	ld   c, a                                        ; $524e: $4f
	sbc  [hl]                                        ; $524f: $9e
	dec  b                                           ; $5250: $05
	cp   c                                           ; $5251: $b9
	ld   [hl], c                                     ; $5252: $71
	ld   [hl], h                                     ; $5253: $74
	ld   e, l                                        ; $5254: $5d
	sbc  c                                           ; $5255: $99
	halt                                             ; $5256: $76
	dec  c                                           ; $5257: $0d
	nop                                              ; $5258: $00
	ld   sp, $2040                                   ; $5259: $31 $40 $20
	inc  bc                                          ; $525c: $03
	jr   nz, jr_064_5260                             ; $525d: $20 $01

	inc  d                                           ; $525f: $14

jr_064_5260:
	add  hl, hl                                      ; $5260: $29
	nop                                              ; $5261: $00
	ld   bc, $a102                                   ; $5262: $01 $02 $a1
	inc  bc                                          ; $5265: $03
	and  b                                           ; $5266: $a0
	ld   l, a                                        ; $5267: $6f
	ld   d, d                                        ; $5268: $52
	ld   d, d                                        ; $5269: $52
	sub  [hl]                                        ; $526a: $96
	ld   a, b                                        ; $526b: $78
	ld   c, a                                        ; $526c: $4f
	rst  $38                                         ; $526d: $ff
	rst  $38                                         ; $526e: $ff
	dec  c                                           ; $526f: $0d
	nop                                              ; $5270: $00
	ld   a, [bc]                                     ; $5271: $0a
	ld   b, $ec                                      ; $5272: $06 $ec
	ld   b, $1c                                      ; $5274: $06 $1c
	ld   b, $00                                      ; $5276: $06 $00
	nop                                              ; $5278: $00
	ld   bc, $9a6b                                   ; $5279: $01 $6b $9a
	ld   a, c                                        ; $527c: $79
	ld   h, l                                        ; $527d: $65
	ld   [hl], h                                     ; $527e: $74
	sub  b                                           ; $527f: $90
	sbc  [hl]                                        ; $5280: $9e
	ld   a, c                                        ; $5281: $79
	ld   e, h                                        ; $5282: $5c
	sub  d                                           ; $5283: $92
	ld   e, c                                        ; $5284: $59
	ld   l, [hl]                                     ; $5285: $6e
	ld   a, b                                        ; $5286: $78
	sbc  a                                           ; $5287: $9f
	dec  c                                           ; $5288: $0d
	nop                                              ; $5289: $00
	ld   a, [bc]                                     ; $528a: $0a
	add  hl, de                                      ; $528b: $19
	dec  b                                           ; $528c: $05
	ld   [bc], a                                     ; $528d: $02
	inc  b                                           ; $528e: $04
	xor  d                                           ; $528f: $aa
	inc  b                                           ; $5290: $04
	db   $f4                                         ; $5291: $f4
	ld   [hl], l                                     ; $5292: $75
	ld   h, a                                        ; $5293: $67
	ld   e, c                                        ; $5294: $59
	sub  a                                           ; $5295: $97
	nop                                              ; $5296: $00
	nop                                              ; $5297: $00
	inc  b                                           ; $5298: $04
	adc  c                                           ; $5299: $89
	add  [hl]                                        ; $529a: $86
	ld   [hl], c                                     ; $529b: $71
	ld   l, l                                        ; $529c: $6d
	rst  $38                                         ; $529d: $ff
	rst  $38                                         ; $529e: $ff
	nop                                              ; $529f: $00
	ld   bc, $2d07                                   ; $52a0: $01 $07 $2d
	rlca                                             ; $52a3: $07
	ld   [bc], a                                     ; $52a4: $02
	inc  bc                                          ; $52a5: $03
	ld   bc, $2000                                   ; $52a6: $01 $00 $20
	nop                                              ; $52a9: $00
	rlca                                             ; $52aa: $07
	ld   a, c                                        ; $52ab: $79
	rlca                                             ; $52ac: $07
	ld   [bc], a                                     ; $52ad: $02
	inc  bc                                          ; $52ae: $03
	ld   bc, $2001                                   ; $52af: $01 $01 $20
	nop                                              ; $52b2: $00
	ld   b, $0a                                      ; $52b3: $06 $0a
	ld   [$000f], sp                                 ; $52b5: $08 $0f $00
	ld   bc, $0401                                   ; $52b8: $01 $01 $04
	xor  d                                           ; $52bb: $aa
	inc  b                                           ; $52bc: $04
	db   $f4                                         ; $52bd: $f4
	ld   [hl], l                                     ; $52be: $75
	ld   h, a                                        ; $52bf: $67
	ld   e, c                                        ; $52c0: $59
	sub  a                                           ; $52c1: $97
	dec  c                                           ; $52c2: $0d
	ld   h, l                                        ; $52c3: $65
	ld   e, c                                        ; $52c4: $59
	ld   l, l                                        ; $52c5: $6d
	ld   d, b                                        ; $52c6: $50
	sbc  b                                           ; $52c7: $98
	adc  h                                           ; $52c8: $8c
	ld   l, c                                        ; $52c9: $69
	and  c                                           ; $52ca: $a1
	sub  [hl]                                        ; $52cb: $96
	sbc  a                                           ; $52cc: $9f
	dec  c                                           ; $52cd: $0d
	nop                                              ; $52ce: $00
	ld   a, [bc]                                     ; $52cf: $0a
	inc  e                                           ; $52d0: $1c
	ld   b, $01                                      ; $52d1: $06 $01
	ld   bc, $6b01                                   ; $52d3: $01 $01 $6b
	sbc  b                                           ; $52d6: $98
	sub  c                                           ; $52d7: $91
	ld   l, e                                        ; $52d8: $6b
	ld   d, h                                        ; $52d9: $54
	ld   l, [hl]                                     ; $52da: $6e
	sbc  a                                           ; $52db: $9f
	dec  c                                           ; $52dc: $0d
	and  c                                           ; $52dd: $a1
	sbc  [hl]                                        ; $52de: $9e
	ld   h, [hl]                                     ; $52df: $66
	sub  c                                           ; $52e0: $91
	adc  h                                           ; $52e1: $8c
	sbc  [hl]                                        ; $52e2: $9e
	ld   [bc], a                                     ; $52e3: $02
	or   a                                           ; $52e4: $b7
	inc  b                                           ; $52e5: $04
	dec  de                                          ; $52e6: $1b
	dec  b                                           ; $52e7: $05
	call c, $ad03                                    ; $52e8: $dc $03 $ad
	ld   [hl], l                                     ; $52eb: $75
	sub  b                                           ; $52ec: $90
	dec  c                                           ; $52ed: $0d
	ld   [bc], a                                     ; $52ee: $02
	sub  l                                           ; $52ef: $95
	ld   a, c                                        ; $52f0: $79
	ld   [bc], a                                     ; $52f1: $02
	ld   a, a                                        ; $52f2: $7f
	ld   e, l                                        ; $52f3: $5d
	ld   e, c                                        ; $52f4: $59
	sbc  a                                           ; $52f5: $9f
	dec  c                                           ; $52f6: $0d
	nop                                              ; $52f7: $00
	ld   a, [bc]                                     ; $52f8: $0a
	dec  c                                           ; $52f9: $0d
	nop                                              ; $52fa: $00
	nop                                              ; $52fb: $00
	rrca                                             ; $52fc: $0f
	nop                                              ; $52fd: $00
	ld   bc, $6206                                   ; $52fe: $01 $06 $62
	ld   [$000f], sp                                 ; $5301: $08 $0f $00
	ld   bc, $0401                                   ; $5304: $01 $01 $04
	adc  c                                           ; $5307: $89
	add  [hl]                                        ; $5308: $86
	sbc  b                                           ; $5309: $98
	adc  h                                           ; $530a: $8c
	ld   h, l                                        ; $530b: $65
	ld   l, l                                        ; $530c: $6d
	rst  $38                                         ; $530d: $ff
	rst  $38                                         ; $530e: $ff
	dec  c                                           ; $530f: $0d
	ld   e, b                                        ; $5310: $58
	inc  b                                           ; $5311: $04
	adc  c                                           ; $5312: $89
	ld   e, d                                        ; $5313: $5a
	adc  b                                           ; $5314: $88
	ld   h, c                                        ; $5315: $61
	adc  b                                           ; $5316: $88
	ld   h, c                                        ; $5317: $61
	ld   [hl], l                                     ; $5318: $75
	ld   h, a                                        ; $5319: $67
	rst  $38                                         ; $531a: $ff
	rst  $38                                         ; $531b: $ff
	dec  c                                           ; $531c: $0d
	nop                                              ; $531d: $00
	ld   a, [bc]                                     ; $531e: $0a
	inc  e                                           ; $531f: $1c
	ld   b, $01                                      ; $5320: $06 $01
	ld   bc, $6b01                                   ; $5322: $01 $01 $6b
	ld   d, h                                        ; $5325: $54
	ld   l, [hl]                                     ; $5326: $6e
	ld   a, b                                        ; $5327: $78
	sbc  a                                           ; $5328: $9f
	dec  c                                           ; $5329: $0d
	ld   h, [hl]                                     ; $532a: $66
	sub  c                                           ; $532b: $91
	sbc  [hl]                                        ; $532c: $9e
	ld   [bc], a                                     ; $532d: $02
	ld   hl, $0c04                                   ; $532e: $21 $04 $0c
	ld   [hl], l                                     ; $5331: $75
	ld   [bc], a                                     ; $5332: $02
	ld   [hl], $5d                                   ; $5333: $36 $5d
	inc  bc                                          ; $5335: $03
	ld   l, d                                        ; $5336: $6a
	ld   [hl], c                                     ; $5337: $71
	ld   [hl], h                                     ; $5338: $74
	dec  c                                           ; $5339: $0d
	ld   [bc], a                                     ; $533a: $02
	or   a                                           ; $533b: $b7
	inc  b                                           ; $533c: $04
	dec  de                                          ; $533d: $1b
	dec  b                                           ; $533e: $05
	call c, $ad03                                    ; $533f: $dc $03 $ad
	ld   [hl], l                                     ; $5342: $75
	sub  b                                           ; $5343: $90
	ld   [bc], a                                     ; $5344: $02
	sub  l                                           ; $5345: $95
	ld   a, c                                        ; $5346: $79
	ld   [bc], a                                     ; $5347: $02
	ld   a, a                                        ; $5348: $7f
	ld   h, c                                        ; $5349: $61
	ld   d, h                                        ; $534a: $54
	ld   l, d                                        ; $534b: $6a
	sbc  a                                           ; $534c: $9f
	dec  c                                           ; $534d: $0d
	nop                                              ; $534e: $00
	ld   a, [bc]                                     ; $534f: $0a
	dec  c                                           ; $5350: $0d
	nop                                              ; $5351: $00
	nop                                              ; $5352: $00
	rrca                                             ; $5353: $0f
	nop                                              ; $5354: $00
	ld   bc, $020c                                   ; $5355: $01 $0c $02
	ld   c, $7f                                      ; $5358: $0e $7f
	inc  e                                           ; $535a: $1c
	ld   b, $01                                      ; $535b: $06 $01
	ld   bc, $8301                                   ; $535d: $01 $01 $83
	ei                                               ; $5360: $fb
	rst  $38                                         ; $5361: $ff
	sbc  [hl]                                        ; $5362: $9e
	ld   a, b                                        ; $5363: $78
	ld   e, c                                        ; $5364: $59
	ld   a, b                                        ; $5365: $78
	ld   e, c                                        ; $5366: $59
	ld   d, h                                        ; $5367: $54
	adc  h                                           ; $5368: $8c
	ld   d, d                                        ; $5369: $52
	dec  c                                           ; $536a: $0d
	sub  d                                           ; $536b: $92
	ld   e, e                                        ; $536c: $5b
	ld   l, e                                        ; $536d: $6b
	ld   a, [hl]                                     ; $536e: $7e
	ld   l, [hl]                                     ; $536f: $6e
	ld   [hl], c                                     ; $5370: $71
	ld   l, l                                        ; $5371: $6d
	ld   a, b                                        ; $5372: $78
	sbc  a                                           ; $5373: $9f
	dec  c                                           ; $5374: $0d
	ld   h, [hl]                                     ; $5375: $66
	sub  c                                           ; $5376: $91
	sbc  [hl]                                        ; $5377: $9e
	ld   [bc], a                                     ; $5378: $02
	or   a                                           ; $5379: $b7
	inc  b                                           ; $537a: $04
	dec  de                                          ; $537b: $1b
	dec  b                                           ; $537c: $05
	call c, $ad03                                    ; $537d: $dc $03 $ad
	ld   a, c                                        ; $5380: $79
	ld   [bc], a                                     ; $5381: $02
	ld   a, a                                        ; $5382: $7f
	ld   h, c                                        ; $5383: $61
	ld   d, h                                        ; $5384: $54
	ld   e, c                                        ; $5385: $59
	sbc  a                                           ; $5386: $9f
	dec  c                                           ; $5387: $0d
	nop                                              ; $5388: $00
	ld   a, [bc]                                     ; $5389: $0a
	dec  c                                           ; $538a: $0d
	nop                                              ; $538b: $00
	nop                                              ; $538c: $00
	rrca                                             ; $538d: $0f
	nop                                              ; $538e: $00
	ld   bc, $6206                                   ; $538f: $01 $06 $62
	ld   [$061c], sp                                 ; $5392: $08 $1c $06
	dec  b                                           ; $5395: $05
	dec  b                                           ; $5396: $05
	ld   bc, $5258                                   ; $5397: $01 $58 $52
	ld   e, b                                        ; $539a: $58
	ld   d, d                                        ; $539b: $52
	rst  $38                                         ; $539c: $ff
	rst  $38                                         ; $539d: $ff
	dec  c                                           ; $539e: $0d
	ld   l, l                                        ; $539f: $6d
	ld   e, c                                        ; $53a0: $59
	ld   e, d                                        ; $53a1: $5a
	ld   [bc], a                                     ; $53a2: $02
	ld   l, h                                        ; $53a3: $6c
	inc  bc                                          ; $53a4: $03
	ld   d, h                                        ; $53a5: $54
	ld   e, c                                        ; $53a6: $59
	sub  a                                           ; $53a7: $97
	inc  bc                                          ; $53a8: $03
	inc  d                                           ; $53a9: $14
	inc  bc                                          ; $53aa: $03
	and  d                                           ; $53ab: $a2
	adc  h                                           ; $53ac: $8c
	ld   [hl], l                                     ; $53ad: $75
	dec  c                                           ; $53ae: $0d
	dec  b                                           ; $53af: $05
	cp   c                                           ; $53b0: $b9
	ld   [hl], c                                     ; $53b1: $71
	ld   l, l                                        ; $53b2: $6d
	ld   e, [hl]                                     ; $53b3: $5e
	sub  a                                           ; $53b4: $97
	ld   d, d                                        ; $53b5: $52
	ld   [hl], l                                     ; $53b6: $75
	inc  bc                                          ; $53b7: $03
	or   d                                           ; $53b8: $b2
	ld   e, a                                        ; $53b9: $5f
	ld   a, b                                        ; $53ba: $78
	ld   d, d                                        ; $53bb: $52
	ld   l, h                                        ; $53bc: $6c
	sbc  a                                           ; $53bd: $9f
	dec  c                                           ; $53be: $0d
	nop                                              ; $53bf: $00
	ld   a, [bc]                                     ; $53c0: $0a
	ld   bc, $9e8c                                   ; $53c1: $01 $8c $9e
	add  b                                           ; $53c4: $80
	halt                                             ; $53c5: $76
	sub  d                                           ; $53c6: $92
	ld   h, a                                        ; $53c7: $67
	adc  l                                           ; $53c8: $8d
	ld   e, d                                        ; $53c9: $5a
	ld   [hl], h                                     ; $53ca: $74
	sub  a                                           ; $53cb: $97
	dec  c                                           ; $53cc: $0d
	ld   [bc], a                                     ; $53cd: $02
	or   a                                           ; $53ce: $b7
	inc  b                                           ; $53cf: $04
	dec  de                                          ; $53d0: $1b
	dec  b                                           ; $53d1: $05
	call c, $ad03                                    ; $53d2: $dc $03 $ad
	and  b                                           ; $53d5: $a0
	ld   [bc], a                                     ; $53d6: $02
	sub  l                                           ; $53d7: $95
	ld   [hl], h                                     ; $53d8: $74
	ld   [bc], a                                     ; $53d9: $02
	ld   a, a                                        ; $53da: $7f
	ld   h, c                                        ; $53db: $61
	ld   d, h                                        ; $53dc: $54
	ld   l, d                                        ; $53dd: $6a
	sbc  a                                           ; $53de: $9f
	dec  c                                           ; $53df: $0d
	nop                                              ; $53e0: $00
	ld   a, [bc]                                     ; $53e1: $0a
	dec  c                                           ; $53e2: $0d
	nop                                              ; $53e3: $00
	nop                                              ; $53e4: $00
	rrca                                             ; $53e5: $0f
	nop                                              ; $53e6: $00
	ld   bc, $6206                                   ; $53e7: $01 $06 $62
	ld   [$8123], sp                                 ; $53ea: $08 $23 $81
	inc  e                                           ; $53ed: $1c
	ld   b, $00                                      ; $53ee: $06 $00
	nop                                              ; $53f0: $00
	ld   bc, $a178                                   ; $53f1: $01 $78 $a1
	ld   e, c                                        ; $53f4: $59
	db   $eb                                         ; $53f5: $eb
	rst  $10                                         ; $53f6: $d7
	cp   d                                           ; $53f7: $ba
	ret                                              ; $53f8: $c9


	ei                                               ; $53f9: $fb
	db   $ec                                         ; $53fa: $ec
	ei                                               ; $53fb: $fb
	sub  b                                           ; $53fc: $90
	ld   a, h                                        ; $53fd: $7c
	dec  c                                           ; $53fe: $0d
	sub  a                                           ; $53ff: $97
	ld   h, l                                        ; $5400: $65
	ld   d, d                                        ; $5401: $52
	and  c                                           ; $5402: $a1
	ld   l, [hl]                                     ; $5403: $6e
	ld   e, a                                        ; $5404: $5f
	ld   [hl], a                                     ; $5405: $77
	sbc  [hl]                                        ; $5406: $9e
	dec  c                                           ; $5407: $0d
	ld   e, b                                        ; $5408: $58
	inc  bc                                          ; $5409: $03
	ld   c, a                                        ; $540a: $4f
	sbc  [hl]                                        ; $540b: $9e
	ld   h, c                                        ; $540c: $61
	ld   d, h                                        ; $540d: $54
	ld   d, d                                        ; $540e: $52
	ld   d, h                                        ; $540f: $54
	ld   a, h                                        ; $5410: $7c
	ld   [bc], a                                     ; $5411: $02
	sbc  d                                           ; $5412: $9a
	ld   e, e                                        ; $5413: $5b
	ld   e, c                                        ; $5414: $59
	ld   sp, hl                                      ; $5415: $f9
	dec  c                                           ; $5416: $0d
	nop                                              ; $5417: $00
	ld   a, [bc]                                     ; $5418: $0a
	add  hl, de                                      ; $5419: $19
	dec  b                                           ; $541a: $05
	inc  bc                                          ; $541b: $03
	dec  b                                           ; $541c: $05
	dec  bc                                          ; $541d: $0b
	ld   [bc], a                                     ; $541e: $02
	dec  hl                                          ; $541f: $2b
	sub  b                                           ; $5420: $90
	ld   a, h                                        ; $5421: $7c
	ld   a, l                                        ; $5422: $7d
	ld   [bc], a                                     ; $5423: $02
	sbc  d                                           ; $5424: $9a
	ld   e, e                                        ; $5425: $5b
	nop                                              ; $5426: $00
	nop                                              ; $5427: $00
	ld   [bc], a                                     ; $5428: $02
	or   a                                           ; $5429: $b7
	ld   [bc], a                                     ; $542a: $02
	sub  d                                           ; $542b: $92
	sub  b                                           ; $542c: $90
	ld   a, h                                        ; $542d: $7c
	ld   e, d                                        ; $542e: $5a
	ld   [bc], a                                     ; $542f: $02
	sbc  d                                           ; $5430: $9a
	ld   e, e                                        ; $5431: $5b
	nop                                              ; $5432: $00
	ld   bc, $a178                                   ; $5433: $01 $78 $a1
	ld   [hl], l                                     ; $5436: $75
	sub  b                                           ; $5437: $90
	ld   [bc], a                                     ; $5438: $02
	sbc  d                                           ; $5439: $9a
	ld   e, e                                        ; $543a: $5b
	nop                                              ; $543b: $00
	ld   [bc], a                                     ; $543c: $02
	rlca                                             ; $543d: $07
	jp   nc, $0208                                   ; $543e: $d2 $08 $02

	inc  bc                                          ; $5441: $03
	ld   bc, $2000                                   ; $5442: $01 $00 $20
	nop                                              ; $5445: $00
	rlca                                             ; $5446: $07
	jr   nc, jr_064_5452                             ; $5447: $30 $09

	ld   [bc], a                                     ; $5449: $02
	inc  bc                                          ; $544a: $03
	ld   bc, $2001                                   ; $544b: $01 $01 $20
	nop                                              ; $544e: $00
	rlca                                             ; $544f: $07
	ld   a, l                                        ; $5450: $7d
	add  hl, bc                                      ; $5451: $09

jr_064_5452:
	ld   [bc], a                                     ; $5452: $02
	inc  bc                                          ; $5453: $03
	ld   bc, $2002                                   ; $5454: $01 $02 $20
	nop                                              ; $5457: $00
	ld   b, $d2                                      ; $5458: $06 $d2
	add  hl, bc                                      ; $545a: $09
	rrca                                             ; $545b: $0f
	nop                                              ; $545c: $00
	ld   bc, $0501                                   ; $545d: $01 $01 $05
	dec  bc                                          ; $5460: $0b
	ld   [bc], a                                     ; $5461: $02
	dec  hl                                          ; $5462: $2b
	sub  b                                           ; $5463: $90
	ld   a, h                                        ; $5464: $7c
	ld   a, l                                        ; $5465: $7d
	ld   [bc], a                                     ; $5466: $02
	sbc  d                                           ; $5467: $9a
	ld   e, e                                        ; $5468: $5b
	ld   [hl], l                                     ; $5469: $75
	ld   h, a                                        ; $546a: $67
	sub  [hl]                                        ; $546b: $96
	sbc  a                                           ; $546c: $9f
	dec  c                                           ; $546d: $0d
	xor  h                                           ; $546e: $ac
	push af                                          ; $546f: $f5
	bit  4, e                                        ; $5470: $cb $63
	and  c                                           ; $5472: $a1
	ld   a, l                                        ; $5473: $7d
	sbc  [hl]                                        ; $5474: $9e
	ld   [bc], a                                     ; $5475: $02
	sbc  d                                           ; $5476: $9a
	ld   e, e                                        ; $5477: $5b
	ld   h, [hl]                                     ; $5478: $66
	sub  c                                           ; $5479: $91
	ld   a, b                                        ; $547a: $78
	ld   d, d                                        ; $547b: $52
	dec  c                                           ; $547c: $0d
	and  c                                           ; $547d: $a1
	ld   [hl], l                                     ; $547e: $75
	ld   h, a                                        ; $547f: $67
	ld   e, c                                        ; $5480: $59
	ld   sp, hl                                      ; $5481: $f9
	dec  c                                           ; $5482: $0d
	nop                                              ; $5483: $00
	ld   a, [bc]                                     ; $5484: $0a
	inc  e                                           ; $5485: $1c
	ld   b, $04                                      ; $5486: $06 $04
	inc  b                                           ; $5488: $04
	ld   bc, $ebae                                   ; $5489: $01 $ae $eb
	and  l                                           ; $548c: $a5
	ld   [hl], c                                     ; $548d: $71
	ld   [hl], h                                     ; $548e: $74
	sbc  l                                           ; $548f: $9d
	ld   e, a                                        ; $5490: $5f
	ld   h, [hl]                                     ; $5491: $66
	sub  c                                           ; $5492: $91
	dec  c                                           ; $5493: $0d
	ld   a, b                                        ; $5494: $78
	ld   d, d                                        ; $5495: $52
	ld   e, a                                        ; $5496: $5f
	ld   [hl], a                                     ; $5497: $77
	ld   h, e                                        ; $5498: $63
	sbc  [hl]                                        ; $5499: $9e
	ld   a, b                                        ; $549a: $78
	and  c                                           ; $549b: $a1
	ld   e, c                                        ; $549c: $59
	dec  c                                           ; $549d: $0d
	ld   h, c                                        ; $549e: $61
	ld   [hl], c                                     ; $549f: $71
	ld   a, a                                        ; $54a0: $7f
	ld   l, b                                        ; $54a1: $68
	ld   e, c                                        ; $54a2: $59
	ld   h, l                                        ; $54a3: $65
	ld   d, d                                        ; $54a4: $52
	ld   h, [hl]                                     ; $54a5: $66
	sub  c                                           ; $54a6: $91
	and  c                                           ; $54a7: $a1
	sbc  a                                           ; $54a8: $9f
	dec  c                                           ; $54a9: $0d
	nop                                              ; $54aa: $00
	ld   a, [bc]                                     ; $54ab: $0a
	dec  c                                           ; $54ac: $0d
	nop                                              ; $54ad: $00
	nop                                              ; $54ae: $00
	rrca                                             ; $54af: $0f
	nop                                              ; $54b0: $00
	ld   bc, $020c                                   ; $54b1: $01 $0c $02
	add  hl, bc                                      ; $54b4: $09
	ld   d, b                                        ; $54b5: $50
	ld   b, $f9                                      ; $54b6: $06 $f9
	add  hl, bc                                      ; $54b8: $09
	rrca                                             ; $54b9: $0f
	nop                                              ; $54ba: $00
	ld   bc, $0501                                   ; $54bb: $01 $01 $05
	dec  bc                                          ; $54be: $0b
	ld   [bc], a                                     ; $54bf: $02
	dec  hl                                          ; $54c0: $2b
	sub  b                                           ; $54c1: $90
	ld   a, h                                        ; $54c2: $7c
	sub  [hl]                                        ; $54c3: $96
	sbc  b                                           ; $54c4: $98
	ld   [bc], a                                     ; $54c5: $02
	or   a                                           ; $54c6: $b7
	ld   [bc], a                                     ; $54c7: $02
	sub  d                                           ; $54c8: $92
	sub  b                                           ; $54c9: $90
	ld   a, h                                        ; $54ca: $7c
	ld   e, d                                        ; $54cb: $5a
	dec  c                                           ; $54cc: $0d
	ld   [bc], a                                     ; $54cd: $02
	sbc  d                                           ; $54ce: $9a
	ld   e, e                                        ; $54cf: $5b
	ld   [hl], l                                     ; $54d0: $75
	ld   h, a                                        ; $54d1: $67
	ld   a, e                                        ; $54d2: $7b
	sbc  a                                           ; $54d3: $9f
	dec  c                                           ; $54d4: $0d
	nop                                              ; $54d5: $00
	ld   a, [bc]                                     ; $54d6: $0a
	inc  e                                           ; $54d7: $1c
	ld   b, $01                                      ; $54d8: $06 $01
	ld   bc, $7801                                   ; $54da: $01 $01 $78
	and  c                                           ; $54dd: $a1
	ld   l, [hl]                                     ; $54de: $6e
	sbc  [hl]                                        ; $54df: $9e
	ld   e, b                                        ; $54e0: $58
	inc  bc                                          ; $54e1: $03
	ld   c, a                                        ; $54e2: $4f
	sub  b                                           ; $54e3: $90
	ld   e, c                                        ; $54e4: $59
	sbc  a                                           ; $54e5: $9f
	dec  c                                           ; $54e6: $0d
	inc  bc                                          ; $54e7: $03
	adc  e                                           ; $54e8: $8b
	ld   a, l                                        ; $54e9: $7d
	sbc  [hl]                                        ; $54ea: $9e
	ld   d, b                                        ; $54eb: $50
	ld   l, l                                        ; $54ec: $6d
	ld   d, d                                        ; $54ed: $52
	sub  b                                           ; $54ee: $90
	ld   l, e                                        ; $54ef: $6b
	ld   d, h                                        ; $54f0: $54
	ld   a, b                                        ; $54f1: $78
	and  c                                           ; $54f2: $a1
	ld   l, [hl]                                     ; $54f3: $6e
	sub  [hl]                                        ; $54f4: $96
	sbc  a                                           ; $54f5: $9f
	dec  c                                           ; $54f6: $0d
	nop                                              ; $54f7: $00
	ld   a, [bc]                                     ; $54f8: $0a
	dec  c                                           ; $54f9: $0d
	nop                                              ; $54fa: $00
	nop                                              ; $54fb: $00
	rrca                                             ; $54fc: $0f
	nop                                              ; $54fd: $00
	ld   bc, $020c                                   ; $54fe: $01 $0c $02
	add  hl, bc                                      ; $5501: $09
	ld   d, b                                        ; $5502: $50
	ld   b, $f9                                      ; $5503: $06 $f9
	add  hl, bc                                      ; $5505: $09
	rrca                                             ; $5506: $0f
	nop                                              ; $5507: $00
	ld   bc, $0201                                   ; $5508: $01 $01 $02
	or   a                                           ; $550b: $b7
	inc  b                                           ; $550c: $04
	dec  de                                          ; $550d: $1b
	dec  b                                           ; $550e: $05
	call c, $ad03                                    ; $550f: $dc $03 $ad
	ld   a, b                                        ; $5512: $78
	sub  a                                           ; $5513: $97
	inc  b                                           ; $5514: $04
	ld   c, c                                        ; $5515: $49
	ld   [hl], l                                     ; $5516: $75
	sub  b                                           ; $5517: $90
	ld   [bc], a                                     ; $5518: $02
	sbc  d                                           ; $5519: $9a
	ld   e, e                                        ; $551a: $5b
	ld   [hl], l                                     ; $551b: $75
	ld   h, a                                        ; $551c: $67
	sbc  a                                           ; $551d: $9f
	dec  c                                           ; $551e: $0d
	nop                                              ; $551f: $00
	ld   a, [bc]                                     ; $5520: $0a
	inc  e                                           ; $5521: $1c
	ld   b, $00                                      ; $5522: $06 $00
	nop                                              ; $5524: $00
	ld   bc, $5483                                   ; $5525: $01 $83 $54
	and  c                                           ; $5528: $a1
	rst  $38                                         ; $5529: $ff
	rst  $38                                         ; $552a: $ff
	ld   d, b                                        ; $552b: $50
	ld   l, l                                        ; $552c: $6d
	ld   d, d                                        ; $552d: $52
	ld   a, l                                        ; $552e: $7d
	dec  c                                           ; $552f: $0d
	ld   [hl], a                                     ; $5530: $77
	ld   [hl], c                                     ; $5531: $71
	ld   l, a                                        ; $5532: $6f
	ld   e, c                                        ; $5533: $59
	ld   [hl], c                                     ; $5534: $71
	ld   [hl], d                                     ; $5535: $72
	ei                                               ; $5536: $fb
	halt                                             ; $5537: $76
	sbc  [hl]                                        ; $5538: $9e
	dec  c                                           ; $5539: $0d
	ld   [bc], a                                     ; $553a: $02
	or   a                                           ; $553b: $b7
	ld   [bc], a                                     ; $553c: $02
	sub  d                                           ; $553d: $92
	ld   a, h                                        ; $553e: $7c
	adc  c                                           ; $553f: $89
	ld   d, h                                        ; $5540: $54
	ld   e, d                                        ; $5541: $5a
	ld   [bc], a                                     ; $5542: $02
	sbc  d                                           ; $5543: $9a
	ld   e, e                                        ; $5544: $5b
	ld   a, b                                        ; $5545: $78
	and  c                                           ; $5546: $a1
	ld   l, [hl]                                     ; $5547: $6e
	sub  [hl]                                        ; $5548: $96
	ld   a, b                                        ; $5549: $78
	sbc  a                                           ; $554a: $9f
	dec  c                                           ; $554b: $0d
	nop                                              ; $554c: $00
	ld   a, [bc]                                     ; $554d: $0a
	dec  c                                           ; $554e: $0d
	nop                                              ; $554f: $00
	nop                                              ; $5550: $00
	rrca                                             ; $5551: $0f
	nop                                              ; $5552: $00
	ld   bc, $020c                                   ; $5553: $01 $0c $02
	add  hl, bc                                      ; $5556: $09
	ld   d, b                                        ; $5557: $50
	ld   b, $f9                                      ; $5558: $06 $f9
	add  hl, bc                                      ; $555a: $09
	rrca                                             ; $555b: $0f
	ld   b, $00                                      ; $555c: $06 $00
	ld   bc, $f9a1                                   ; $555e: $01 $a1 $f9
	db   $10                                         ; $5561: $10
	dec  c                                           ; $5562: $0d
	cp   d                                           ; $5563: $ba
	or   b                                           ; $5564: $b0
	db   $ec                                         ; $5565: $ec
	ei                                               ; $5566: $fb
	push af                                          ; $5567: $f5
	ld   a, c                                        ; $5568: $79
	ld   [bc], a                                     ; $5569: $02
	sub  l                                           ; $556a: $95
	halt                                             ; $556b: $76
	sbc  d                                           ; $556c: $9a
	ld   [hl], h                                     ; $556d: $74
	dec  c                                           ; $556e: $0d
	sub  d                                           ; $556f: $92
	ld   e, d                                        ; $5570: $5a
	sbc  c                                           ; $5571: $99
	ld   a, b                                        ; $5572: $78
	rst  $38                                         ; $5573: $ff
	rst  $38                                         ; $5574: $ff
	dec  c                                           ; $5575: $0d
	nop                                              ; $5576: $00
	ld   a, [bc]                                     ; $5577: $0a
	dec  c                                           ; $5578: $0d
	nop                                              ; $5579: $00
	nop                                              ; $557a: $00
	rrca                                             ; $557b: $0f
	nop                                              ; $557c: $00
	ld   bc, $020c                                   ; $557d: $01 $0c $02
	add  hl, bc                                      ; $5580: $09
	ld   d, b                                        ; $5581: $50
	ld   c, $81                                      ; $5582: $0e $81
	inc  e                                           ; $5584: $1c
	ld   b, $05                                      ; $5585: $06 $05
	dec  b                                           ; $5587: $05
	ld   bc, $a178                                   ; $5588: $01 $78 $a1
	ld   l, [hl]                                     ; $558b: $6e
	ld   e, c                                        ; $558c: $59
	sbc  [hl]                                        ; $558d: $9e
	ld   a, e                                        ; $558e: $7b
	adc  [hl]                                        ; $558f: $8e
	ld   e, l                                        ; $5590: $5d
	ld   a, b                                        ; $5591: $78
	sbc  b                                           ; $5592: $98
	ld   l, e                                        ; $5593: $6b
	ld   d, h                                        ; $5594: $54
	ld   a, b                                        ; $5595: $78
	dec  c                                           ; $5596: $0d
	dec  b                                           ; $5597: $05
	jr   nz, jr_064_5608                             ; $5598: $20 $6e

	ld   a, b                                        ; $559a: $78
	rst  $38                                         ; $559b: $ff
	rst  $38                                         ; $559c: $ff
	dec  c                                           ; $559d: $0d
	nop                                              ; $559e: $00
	ld   a, [bc]                                     ; $559f: $0a
	add  hl, de                                      ; $55a0: $19
	dec  b                                           ; $55a1: $05
	inc  bc                                          ; $55a2: $03
	inc  bc                                          ; $55a3: $03
	ld   a, [hl]                                     ; $55a4: $7e
	sbc  l                                           ; $55a5: $9d
	ld   [hl], c                                     ; $55a6: $71
	ld   l, l                                        ; $55a7: $6d
	sub  a                                           ; $55a8: $97
	ld   [bc], a                                     ; $55a9: $02
	ld   e, d                                        ; $55aa: $5a
	ld   h, c                                        ; $55ab: $61
	ld   h, l                                        ; $55ac: $65
	adc  h                                           ; $55ad: $8c
	ld   h, a                                        ; $55ae: $67
	sub  [hl]                                        ; $55af: $96
	nop                                              ; $55b0: $00
	nop                                              ; $55b1: $00
	inc  b                                           ; $55b2: $04
	ld   b, d                                        ; $55b3: $42
	ld   a, b                                        ; $55b4: $78
	ld   d, d                                        ; $55b5: $52
	ld   [hl], l                                     ; $55b6: $75
	ld   [bc], a                                     ; $55b7: $02
	inc  [hl]                                        ; $55b8: $34
	ld   h, e                                        ; $55b9: $63
	ld   d, d                                        ; $55ba: $52
	sub  [hl]                                        ; $55bb: $96
	nop                                              ; $55bc: $00
	ld   bc, $6d04                                   ; $55bd: $01 $04 $6d
	sub  b                                           ; $55c0: $90
	ld   a, e                                        ; $55c1: $7b
	adc  [hl]                                        ; $55c2: $8e
	ld   l, l                                        ; $55c3: $6d
	ld   d, d                                        ; $55c4: $52
	ld   [hl], l                                     ; $55c5: $75
	ld   h, a                                        ; $55c6: $67
	rst  $38                                         ; $55c7: $ff
	rst  $38                                         ; $55c8: $ff
	nop                                              ; $55c9: $00
	ld   [bc], a                                     ; $55ca: $02
	rlca                                             ; $55cb: $07
	ld   h, b                                        ; $55cc: $60
	ld   a, [bc]                                     ; $55cd: $0a
	ld   [bc], a                                     ; $55ce: $02
	inc  bc                                          ; $55cf: $03
	ld   bc, $2000                                   ; $55d0: $01 $00 $20
	nop                                              ; $55d3: $00
	rlca                                             ; $55d4: $07
	and  e                                           ; $55d5: $a3
	ld   a, [bc]                                     ; $55d6: $0a
	ld   [bc], a                                     ; $55d7: $02
	inc  bc                                          ; $55d8: $03
	ld   bc, $2001                                   ; $55d9: $01 $01 $20
	nop                                              ; $55dc: $00
	rlca                                             ; $55dd: $07
	ldh  a, [c]                                      ; $55de: $f2
	ld   a, [bc]                                     ; $55df: $0a
	ld   [bc], a                                     ; $55e0: $02
	inc  bc                                          ; $55e1: $03
	ld   bc, $2002                                   ; $55e2: $01 $02 $20
	nop                                              ; $55e5: $00
	ld   b, $39                                      ; $55e6: $06 $39
	dec  bc                                          ; $55e8: $0b
	rrca                                             ; $55e9: $0f
	nop                                              ; $55ea: $00
	ld   bc, $0301                                   ; $55eb: $01 $01 $03
	ld   a, [hl]                                     ; $55ee: $7e
	sbc  l                                           ; $55ef: $9d
	ld   [hl], c                                     ; $55f0: $71
	ld   l, l                                        ; $55f1: $6d
	sub  a                                           ; $55f2: $97
	ld   [bc], a                                     ; $55f3: $02
	ld   e, d                                        ; $55f4: $5a
	ld   h, c                                        ; $55f5: $61
	ld   h, l                                        ; $55f6: $65
	adc  h                                           ; $55f7: $8c
	ld   h, a                                        ; $55f8: $67
	sub  [hl]                                        ; $55f9: $96
	sbc  a                                           ; $55fa: $9f
	dec  c                                           ; $55fb: $0d
	nop                                              ; $55fc: $00
	ld   a, [bc]                                     ; $55fd: $0a
	inc  e                                           ; $55fe: $1c
	ld   b, $01                                      ; $55ff: $06 $01
	ld   bc, $6b01                                   ; $5601: $01 $01 $6b
	ld   d, h                                        ; $5604: $54
	ld   e, c                                        ; $5605: $59
	ld   sp, hl                                      ; $5606: $f9
	dec  c                                           ; $5607: $0d

jr_064_5608:
	ld   h, [hl]                                     ; $5608: $66
	sub  c                                           ; $5609: $91
	sbc  [hl]                                        ; $560a: $9e
	ld   e, b                                        ; $560b: $58
	ld   [bc], a                                     ; $560c: $02
	sbc  l                                           ; $560d: $9d
	inc  b                                           ; $560e: $04
	sub  c                                           ; $560f: $91
	ld   a, c                                        ; $5610: $79
	dec  b                                           ; $5611: $05
	and  c                                           ; $5612: $a1
	ld   d, [hl]                                     ; $5613: $56
	ld   [hl], h                                     ; $5614: $74
	dec  c                                           ; $5615: $0d
	ld   e, b                                        ; $5616: $58
	sub  d                                           ; $5617: $92
	ld   h, a                                        ; $5618: $67
	adc  l                                           ; $5619: $8d
	rst  $38                                         ; $561a: $ff
	rst  $38                                         ; $561b: $ff
	dec  c                                           ; $561c: $0d
	nop                                              ; $561d: $00
	ld   a, [bc]                                     ; $561e: $0a
	dec  c                                           ; $561f: $0d
	nop                                              ; $5620: $00
	nop                                              ; $5621: $00
	rrca                                             ; $5622: $0f
	nop                                              ; $5623: $00
	ld   bc, $020c                                   ; $5624: $01 $0c $02
	add  hl, bc                                      ; $5627: $09
	ld   d, b                                        ; $5628: $50
	ld   b, $6f                                      ; $5629: $06 $6f
	dec  bc                                          ; $562b: $0b
	rrca                                             ; $562c: $0f
	nop                                              ; $562d: $00
	ld   bc, $0401                                   ; $562e: $01 $01 $04
	ld   b, d                                        ; $5631: $42
	ld   a, b                                        ; $5632: $78
	ld   d, d                                        ; $5633: $52
	ld   [hl], l                                     ; $5634: $75
	ld   [bc], a                                     ; $5635: $02
	inc  [hl]                                        ; $5636: $34
	ld   h, e                                        ; $5637: $63
	ld   d, d                                        ; $5638: $52
	sub  [hl]                                        ; $5639: $96
	rst  $38                                         ; $563a: $ff
	rst  $38                                         ; $563b: $ff
	dec  c                                           ; $563c: $0d
	nop                                              ; $563d: $00
	ld   a, [bc]                                     ; $563e: $0a
	inc  e                                           ; $563f: $1c
	ld   b, $05                                      ; $5640: $06 $05
	dec  b                                           ; $5642: $05
	ld   bc, $a16b                                   ; $5643: $01 $6b $a1
	ld   a, b                                        ; $5646: $78
	ld   h, c                                        ; $5647: $61
	halt                                             ; $5648: $76
	ld   [bc], a                                     ; $5649: $02
	sbc  l                                           ; $564a: $9d
	ld   [hl], c                                     ; $564b: $71
	ld   l, l                                        ; $564c: $6d
	ld   [hl], c                                     ; $564d: $71
	ld   [hl], h                                     ; $564e: $74
	sub  [hl]                                        ; $564f: $96
	rst  $38                                         ; $5650: $ff
	rst  $38                                         ; $5651: $ff
	dec  c                                           ; $5652: $0d
	ld   h, c                                        ; $5653: $61
	ld   d, h                                        ; $5654: $54
	ld   l, l                                        ; $5655: $6d
	and  c                                           ; $5656: $a1
	ld   l, l                                        ; $5657: $6d
	and  c                                           ; $5658: $a1
	halt                                             ; $5659: $76
	dec  b                                           ; $565a: $05
	jr   nz, jr_064_56b7                             ; $565b: $20 $5a

	ld   [bc], a                                     ; $565d: $02
	ei                                               ; $565e: $fb
	ld   d, d                                        ; $565f: $52
	ld   l, l                                        ; $5660: $6d
	sub  a                                           ; $5661: $97
	dec  c                                           ; $5662: $0d
	ld   a, e                                        ; $5663: $7b
	adc  [hl]                                        ; $5664: $8e
	ld   e, l                                        ; $5665: $5d
	sub  b                                           ; $5666: $90
	ld   a, b                                        ; $5667: $78
	sbc  c                                           ; $5668: $99
	ld   h, e                                        ; $5669: $63
	sbc  a                                           ; $566a: $9f
	dec  c                                           ; $566b: $0d
	nop                                              ; $566c: $00
	ld   a, [bc]                                     ; $566d: $0a
	dec  c                                           ; $566e: $0d
	nop                                              ; $566f: $00
	nop                                              ; $5670: $00
	rrca                                             ; $5671: $0f
	nop                                              ; $5672: $00
	ld   bc, $020c                                   ; $5673: $01 $0c $02
	add  hl, bc                                      ; $5676: $09
	ld   d, b                                        ; $5677: $50
	ld   b, $6f                                      ; $5678: $06 $6f
	dec  bc                                          ; $567a: $0b
	rrca                                             ; $567b: $0f
	nop                                              ; $567c: $00
	ld   bc, $0401                                   ; $567d: $01 $01 $04
	ld   l, l                                        ; $5680: $6d
	sub  b                                           ; $5681: $90
	ld   a, e                                        ; $5682: $7b
	adc  [hl]                                        ; $5683: $8e
	ld   l, l                                        ; $5684: $6d
	ld   d, d                                        ; $5685: $52
	ld   [hl], l                                     ; $5686: $75
	ld   h, a                                        ; $5687: $67
	rst  $38                                         ; $5688: $ff
	rst  $38                                         ; $5689: $ff
	dec  c                                           ; $568a: $0d
	nop                                              ; $568b: $00
	ld   a, [bc]                                     ; $568c: $0a
	inc  e                                           ; $568d: $1c
	ld   b, $01                                      ; $568e: $06 $01
	ld   bc, $6e01                                   ; $5690: $01 $01 $6e
	ld   [hl], c                                     ; $5693: $71
	ld   l, l                                        ; $5694: $6d
	sub  a                                           ; $5695: $97
	ld   b, $09                                      ; $5696: $06 $09
	inc  bc                                          ; $5698: $03
	add  d                                           ; $5699: $82
	ld   [hl], l                                     ; $569a: $75
	inc  b                                           ; $569b: $04
	ld   b, d                                        ; $569c: $42
	sub  [hl]                                        ; $569d: $96
	ld   d, h                                        ; $569e: $54
	ld   l, d                                        ; $569f: $6a
	sbc  a                                           ; $56a0: $9f
	dec  c                                           ; $56a1: $0d
	inc  bc                                          ; $56a2: $03
	ld   a, [hl]                                     ; $56a3: $7e
	sbc  l                                           ; $56a4: $9d
	sbc  c                                           ; $56a5: $99
	ld   h, c                                        ; $56a6: $61
	sbc  e                                           ; $56a7: $9b
	ld   a, c                                        ; $56a8: $79
	ld   a, l                                        ; $56a9: $7d
	ld   [bc], a                                     ; $56aa: $02
	ld   e, d                                        ; $56ab: $5a
	ld   e, e                                        ; $56ac: $5b
	sbc  c                                           ; $56ad: $99
	ld   l, [hl]                                     ; $56ae: $6e
	sbc  e                                           ; $56af: $9b
	rst  $38                                         ; $56b0: $ff
	rst  $38                                         ; $56b1: $ff
	dec  c                                           ; $56b2: $0d
	nop                                              ; $56b3: $00
	ld   a, [bc]                                     ; $56b4: $0a
	dec  c                                           ; $56b5: $0d
	nop                                              ; $56b6: $00

jr_064_56b7:
	nop                                              ; $56b7: $00
	rrca                                             ; $56b8: $0f
	nop                                              ; $56b9: $00
	ld   bc, $020c                                   ; $56ba: $01 $0c $02
	add  hl, bc                                      ; $56bd: $09
	ld   d, b                                        ; $56be: $50
	ld   b, $6f                                      ; $56bf: $06 $6f
	dec  bc                                          ; $56c1: $0b
	inc  e                                           ; $56c2: $1c
	ld   b, $02                                      ; $56c3: $06 $02
	ld   [bc], a                                     ; $56c5: $02
	ld   bc, $7150                                   ; $56c6: $01 $50 $71
	rst  $38                                         ; $56c9: $ff
	rst  $38                                         ; $56ca: $ff
	ld   h, c                                        ; $56cb: $61
	ld   d, d                                        ; $56cc: $52
	ld   [hl], d                                     ; $56cd: $72
	inc  b                                           ; $56ce: $04
	ld   b, d                                        ; $56cf: $42
	ld   [hl], h                                     ; $56d0: $74
	sub  d                                           ; $56d1: $92
	ld   e, d                                        ; $56d2: $5a
	sbc  c                                           ; $56d3: $99
	sbc  a                                           ; $56d4: $9f
	dec  c                                           ; $56d5: $0d
	ld   l, [hl]                                     ; $56d6: $6e
	ld   [hl], c                                     ; $56d7: $71
	ld   l, l                                        ; $56d8: $6d
	sub  a                                           ; $56d9: $97
	sbc  [hl]                                        ; $56da: $9e
	ld   d, b                                        ; $56db: $50
	ld   l, l                                        ; $56dc: $6d
	ld   d, d                                        ; $56dd: $52
	sub  b                                           ; $56de: $90
	dec  c                                           ; $56df: $0d
	inc  b                                           ; $56e0: $04
	ld   b, d                                        ; $56e1: $42
	sub  [hl]                                        ; $56e2: $96
	ld   d, h                                        ; $56e3: $54
	ld   [hl], c                                     ; $56e4: $71
	halt                                             ; $56e5: $76
	rst  $38                                         ; $56e6: $ff
	rst  $38                                         ; $56e7: $ff
	dec  c                                           ; $56e8: $0d
	nop                                              ; $56e9: $00
	ld   a, [bc]                                     ; $56ea: $0a
	dec  c                                           ; $56eb: $0d
	nop                                              ; $56ec: $00
	nop                                              ; $56ed: $00
	rrca                                             ; $56ee: $0f
	nop                                              ; $56ef: $00
	ld   bc, $020c                                   ; $56f0: $01 $0c $02
	add  hl, bc                                      ; $56f3: $09
	ld   d, b                                        ; $56f4: $50
	ld   b, $6f                                      ; $56f5: $06 $6f
	dec  bc                                          ; $56f7: $0b
	ld   c, $80                                      ; $56f8: $0e $80
	inc  e                                           ; $56fa: $1c
	ld   b, $01                                      ; $56fb: $06 $01
	ld   bc, $5001                                   ; $56fd: $01 $01 $50
	db   $fc                                         ; $5700: $fc
	sub  [hl]                                        ; $5701: $96
	ld   e, l                                        ; $5702: $5d
	inc  b                                           ; $5703: $04
	ld   b, d                                        ; $5704: $42
	ld   l, l                                        ; $5705: $6d
	sbc  a                                           ; $5706: $9f
	dec  c                                           ; $5707: $0d
	and  c                                           ; $5708: $a1
	db   $fc                                         ; $5709: $fc
	inc  b                                           ; $570a: $04
	dec  c                                           ; $570b: $0d
	ld   e, d                                        ; $570c: $5a
	ld   a, b                                        ; $570d: $78
	adc  h                                           ; $570e: $8c
	ld   [hl], c                                     ; $570f: $71
	ld   l, a                                        ; $5710: $6f
	adc  h                                           ; $5711: $8c
	ld   d, h                                        ; $5712: $54
	ld   l, d                                        ; $5713: $6a
	rst  $38                                         ; $5714: $ff
	rst  $38                                         ; $5715: $ff
	dec  c                                           ; $5716: $0d
	nop                                              ; $5717: $00
	ld   a, [bc]                                     ; $5718: $0a
	inc  e                                           ; $5719: $1c
	ld   b, $03                                      ; $571a: $06 $03
	inc  bc                                          ; $571c: $03
	ld   bc, $ffff                                   ; $571d: $01 $ff $ff
	ld   e, b                                        ; $5720: $58
	ld   [hl], c                                     ; $5721: $71
	ld   sp, hl                                      ; $5722: $f9
	dec  c                                           ; $5723: $0d
	ld   h, c                                        ; $5724: $61
	and  c                                           ; $5725: $a1
	ld   a, b                                        ; $5726: $78
	halt                                             ; $5727: $76
	ld   h, c                                        ; $5728: $61
	sbc  e                                           ; $5729: $9b
	ld   a, c                                        ; $572a: $79
	dec  c                                           ; $572b: $0d
	ld   e, c                                        ; $572c: $59
	sbc  l                                           ; $572d: $9d
	sub  a                                           ; $572e: $97
	ld   e, d                                        ; $572f: $5a
	ld   d, b                                        ; $5730: $50
	sbc  c                                           ; $5731: $99
	ld   h, [hl]                                     ; $5732: $66
	sub  c                                           ; $5733: $91
	ld   a, e                                        ; $5734: $7b
	ld   d, [hl]                                     ; $5735: $56
	ld   e, c                                        ; $5736: $59
	sbc  a                                           ; $5737: $9f
	dec  c                                           ; $5738: $0d
	nop                                              ; $5739: $00
	ld   a, [bc]                                     ; $573a: $0a
	inc  e                                           ; $573b: $1c
	ld   b, $01                                      ; $573c: $06 $01
	ld   bc, $5801                                   ; $573e: $01 $01 $58
	ld   d, h                                        ; $5741: $54
	sbc  [hl]                                        ; $5742: $9e
	ld   [$ff00], sp                                 ; $5743: $08 $00 $ff
	rst  $38                                         ; $5746: $ff
	dec  c                                           ; $5747: $0d
	ld   l, a                                        ; $5748: $6f
	sub  l                                           ; $5749: $95
	ld   [hl], c                                     ; $574a: $71
	halt                                             ; $574b: $76
	inc  b                                           ; $574c: $04
	dec  c                                           ; $574d: $0d
	ld   [bc], a                                     ; $574e: $02
	sub  [hl]                                        ; $574f: $96
	inc  b                                           ; $5750: $04
	ld   b, l                                        ; $5751: $45
	inc  b                                           ; $5752: $04
	ld   a, [bc]                                     ; $5753: $0a
	ld   a, h                                        ; $5754: $7c
	inc  bc                                          ; $5755: $03
	ld   [de], a                                     ; $5756: $12
	ld   [bc], a                                     ; $5757: $02
	ld   h, e                                        ; $5758: $63
	and  b                                           ; $5759: $a0
	dec  c                                           ; $575a: $0d
	ld   [bc], a                                     ; $575b: $02
	sub  l                                           ; $575c: $95
	ld   l, c                                        ; $575d: $69
	ld   [hl], h                                     ; $575e: $74
	ld   e, l                                        ; $575f: $5d
	sbc  d                                           ; $5760: $9a
	sub  [hl]                                        ; $5761: $96
	sbc  a                                           ; $5762: $9f
	dec  c                                           ; $5763: $0d
	nop                                              ; $5764: $00
	ld   a, [bc]                                     ; $5765: $0a
	rrca                                             ; $5766: $0f
	nop                                              ; $5767: $00
	ld   bc, $6601                                   ; $5768: $01 $01 $66
	sub  c                                           ; $576b: $91
	sbc  [hl]                                        ; $576c: $9e
	ld   d, d                                        ; $576d: $52
	ld   e, e                                        ; $576e: $5b
	adc  h                                           ; $576f: $8c
	ld   h, a                                        ; $5770: $67
	sub  [hl]                                        ; $5771: $96
	sbc  a                                           ; $5772: $9f
	dec  c                                           ; $5773: $0d
	xor  c                                           ; $5774: $a9
	and  l                                           ; $5775: $a5
	call nz, $0dfa                                   ; $5776: $c4 $fa $0d
	nop                                              ; $5779: $00
	ld   a, [bc]                                     ; $577a: $0a
	add  hl, de                                      ; $577b: $19
	inc  bc                                          ; $577c: $03
	inc  bc                                          ; $577d: $03
	ld   d, $04                                      ; $577e: $16 $04
	push bc                                          ; $5780: $c5
	ld   [bc], a                                     ; $5781: $02
	halt                                             ; $5782: $76
	sbc  d                                           ; $5783: $9a
	ld   l, l                                        ; $5784: $6d
	nop                                              ; $5785: $00
	nop                                              ; $5786: $00
	inc  de                                          ; $5787: $13
	ld   de, $c504                                   ; $5788: $11 $04 $c5
	ld   [bc], a                                     ; $578b: $02
	halt                                             ; $578c: $76
	sbc  b                                           ; $578d: $98
	ld   l, l                                        ; $578e: $6d
	ld   e, c                                        ; $578f: $59
	ld   [hl], c                                     ; $5790: $71
	ld   l, l                                        ; $5791: $6d
	nop                                              ; $5792: $00
	ld   bc, $0419                                   ; $5793: $01 $19 $04
	push bc                                          ; $5796: $c5
	ld   [bc], a                                     ; $5797: $02
	halt                                             ; $5798: $76
	sbc  d                                           ; $5799: $9a
	ld   [hl], h                                     ; $579a: $74
	sub  [hl]                                        ; $579b: $96
	ld   e, c                                        ; $579c: $59
	ld   [hl], c                                     ; $579d: $71
	ld   l, l                                        ; $579e: $6d
	nop                                              ; $579f: $00
	ld   [bc], a                                     ; $57a0: $02
	rlca                                             ; $57a1: $07
	ld   [hl], $0c                                   ; $57a2: $36 $0c
	ld   [bc], a                                     ; $57a4: $02
	inc  bc                                          ; $57a5: $03
	ld   bc, $2000                                   ; $57a6: $01 $00 $20
	nop                                              ; $57a9: $00
	rlca                                             ; $57aa: $07
	ld   h, d                                        ; $57ab: $62
	inc  c                                           ; $57ac: $0c
	ld   [bc], a                                     ; $57ad: $02
	inc  bc                                          ; $57ae: $03
	ld   bc, $2001                                   ; $57af: $01 $01 $20
	nop                                              ; $57b2: $00
	rlca                                             ; $57b3: $07
	xor  h                                           ; $57b4: $ac
	inc  c                                           ; $57b5: $0c
	ld   [bc], a                                     ; $57b6: $02
	inc  bc                                          ; $57b7: $03
	ld   bc, $2002                                   ; $57b8: $01 $02 $20
	nop                                              ; $57bb: $00
	ld   b, $de                                      ; $57bc: $06 $de
	inc  c                                           ; $57be: $0c
	inc  e                                           ; $57bf: $1c
	ld   b, $01                                      ; $57c0: $06 $01
	ld   bc, $5801                                   ; $57c2: $01 $01 $58
	ld   [hl], c                                     ; $57c5: $71
	ld   a, [$1610]                                  ; $57c6: $fa $10 $16
	inc  b                                           ; $57c9: $04
	push bc                                          ; $57ca: $c5
	ld   e, c                                        ; $57cb: $59
	sbc  a                                           ; $57cc: $9f
	dec  c                                           ; $57cd: $0d
	adc  h                                           ; $57ce: $8c
	ld   d, b                                        ; $57cf: $50
	sbc  [hl]                                        ; $57d0: $9e
	adc  h                                           ; $57d1: $8c
	ld   d, b                                        ; $57d2: $50
	ld   [hl], c                                     ; $57d3: $71
	ld   [hl], h                                     ; $57d4: $74
	halt                                             ; $57d5: $76
	ld   h, c                                        ; $57d6: $61
	ld   e, c                                        ; $57d7: $59
	sbc  a                                           ; $57d8: $9f
	dec  c                                           ; $57d9: $0d
	ld   h, [hl]                                     ; $57da: $66
	sub  c                                           ; $57db: $91
	ld   d, b                                        ; $57dc: $50
	sbc  [hl]                                        ; $57dd: $9e
	sub  b                                           ; $57de: $90
	ld   d, h                                        ; $57df: $54
	ld   [bc], a                                     ; $57e0: $02
	jr   nz, jr_064_57e5                             ; $57e1: $20 $02

	sub  e                                           ; $57e3: $93
	sbc  a                                           ; $57e4: $9f

jr_064_57e5:
	dec  c                                           ; $57e5: $0d
	nop                                              ; $57e6: $00
	ld   a, [bc]                                     ; $57e7: $0a
	ld   b, $07                                      ; $57e8: $06 $07
	dec  c                                           ; $57ea: $0d
	inc  e                                           ; $57eb: $1c
	ld   b, $03                                      ; $57ec: $06 $03
	inc  bc                                          ; $57ee: $03
	ld   bc, $9850                                   ; $57ef: $01 $50 $98
	sub  c                                           ; $57f2: $91
	ei                                               ; $57f3: $fb
	sbc  [hl]                                        ; $57f4: $9e
	inc  de                                          ; $57f5: $13
	ld   de, $c504                                   ; $57f6: $11 $04 $c5
	ld   e, l                                        ; $57f9: $5d
	sub  a                                           ; $57fa: $97
	ld   d, d                                        ; $57fb: $52
	dec  c                                           ; $57fc: $0d
	ld   [bc], a                                     ; $57fd: $02
	halt                                             ; $57fe: $76
	sbc  b                                           ; $57ff: $98
	ld   l, e                                        ; $5800: $6b
	ld   d, h                                        ; $5801: $54
	ld   a, b                                        ; $5802: $78
	sbc  [hl]                                        ; $5803: $9e
	ld   d, d                                        ; $5804: $52
	ld   e, e                                        ; $5805: $5b
	ld   e, b                                        ; $5806: $58
	ld   d, d                                        ; $5807: $52
	ld   l, [hl]                                     ; $5808: $6e
	ld   [hl], c                                     ; $5809: $71
	ld   l, l                                        ; $580a: $6d
	dec  c                                           ; $580b: $0d
	ld   a, h                                        ; $580c: $7c
	ld   a, c                                        ; $580d: $79
	inc  de                                          ; $580e: $13
	inc  b                                           ; $580f: $04
	push bc                                          ; $5810: $c5
	ld   h, l                                        ; $5811: $65
	ld   e, c                                        ; $5812: $59
	ld   [bc], a                                     ; $5813: $02
	halt                                             ; $5814: $76
	sbc  d                                           ; $5815: $9a
	ld   [hl], h                                     ; $5816: $74
	ld   a, b                                        ; $5817: $78
	ld   d, d                                        ; $5818: $52
	ld   l, d                                        ; $5819: $6a
	sbc  a                                           ; $581a: $9f
	dec  c                                           ; $581b: $0d
	nop                                              ; $581c: $00
	ld   a, [bc]                                     ; $581d: $0a
	inc  e                                           ; $581e: $1c
	ld   b, $00                                      ; $581f: $06 $00
	nop                                              ; $5821: $00
	ld   bc, $9166                                   ; $5822: $01 $66 $91
	ld   d, b                                        ; $5825: $50
	sbc  [hl]                                        ; $5826: $9e
	sub  b                                           ; $5827: $90
	ld   d, h                                        ; $5828: $54
	ld   [bc], a                                     ; $5829: $02
	jr   nz, jr_064_582e                             ; $582a: $20 $02

	sub  e                                           ; $582c: $93
	ld   l, [hl]                                     ; $582d: $6e

jr_064_582e:
	sbc  a                                           ; $582e: $9f
	dec  c                                           ; $582f: $0d
	nop                                              ; $5830: $00
	ld   a, [bc]                                     ; $5831: $0a
	ld   b, $07                                      ; $5832: $06 $07
	dec  c                                           ; $5834: $0d
	inc  e                                           ; $5835: $1c
	ld   b, $01                                      ; $5836: $06 $01
	ld   bc, $5801                                   ; $5838: $01 $01 $58
	ld   [hl], c                                     ; $583b: $71
	ld   a, [$1910]                                  ; $583c: $fa $10 $19
	inc  b                                           ; $583f: $04
	push bc                                          ; $5840: $c5
	sub  b                                           ; $5841: $90
	ld   [bc], a                                     ; $5842: $02
	halt                                             ; $5843: $76
	sbc  c                                           ; $5844: $99
	halt                                             ; $5845: $76
	ld   a, l                                        ; $5846: $7d
	dec  c                                           ; $5847: $0d
	ld   a, b                                        ; $5848: $78
	ld   e, c                                        ; $5849: $59
	ld   a, b                                        ; $584a: $78
	ld   e, c                                        ; $584b: $59
	sub  d                                           ; $584c: $92
	sbc  c                                           ; $584d: $99
	ld   h, [hl]                                     ; $584e: $66
	sub  c                                           ; $584f: $91
	and  c                                           ; $5850: $a1
	sbc  a                                           ; $5851: $9f
	dec  c                                           ; $5852: $0d
	sub  [hl]                                        ; $5853: $96
	ld   h, l                                        ; $5854: $65
	sbc  [hl]                                        ; $5855: $9e
	sub  b                                           ; $5856: $90
	ld   d, h                                        ; $5857: $54
	ld   [bc], a                                     ; $5858: $02
	jr   nz, jr_064_585d                             ; $5859: $20 $02

	sub  e                                           ; $585b: $93
	sub  d                                           ; $585c: $92

jr_064_585d:
	ld   [hl], c                                     ; $585d: $71
	ld   [hl], h                                     ; $585e: $74
	adc  l                                           ; $585f: $8d
	sbc  a                                           ; $5860: $9f
	dec  c                                           ; $5861: $0d
	nop                                              ; $5862: $00
	ld   a, [bc]                                     ; $5863: $0a
	ld   b, $07                                      ; $5864: $06 $07
	dec  c                                           ; $5866: $0d
	inc  e                                           ; $5867: $1c
	ld   b, $02                                      ; $5868: $06 $02
	ld   [bc], a                                     ; $586a: $02
	ld   bc, $a178                                   ; $586b: $01 $78 $a1
	ld   l, [hl]                                     ; $586e: $6e
	sub  [hl]                                        ; $586f: $96
	sbc  [hl]                                        ; $5870: $9e
	call nc, Call_064_71d4                           ; $5871: $d4 $d4 $71
	ld   [hl], h                                     ; $5874: $74
	and  c                                           ; $5875: $a1
	ld   a, h                                        ; $5876: $7c
	ld   e, c                                        ; $5877: $59
	ld   sp, hl                                      ; $5878: $f9
	dec  c                                           ; $5879: $0d
	pop  bc                                          ; $587a: $c1
	db   $e3                                         ; $587b: $e3
	ld   l, [hl]                                     ; $587c: $6e
	ld   l, h                                        ; $587d: $6c
	sbc  [hl]                                        ; $587e: $9e
	call nc, $c4b8                                   ; $587f: $d4 $b8 $c4
	halt                                             ; $5882: $76
	ld   d, d                                        ; $5883: $52
	ld   e, c                                        ; $5884: $59
	ld   a, b                                        ; $5885: $78
	dec  c                                           ; $5886: $0d
	ld   e, e                                        ; $5887: $5b
	sub  c                                           ; $5888: $91
	sbc  a                                           ; $5889: $9f
	dec  c                                           ; $588a: $0d
	nop                                              ; $588b: $00
	ld   a, [bc]                                     ; $588c: $0a
	ld   b, $ad                                      ; $588d: $06 $ad
	ld   c, $19                                      ; $588f: $0e $19
	inc  bc                                          ; $5891: $03
	inc  bc                                          ; $5892: $03
	add  hl, de                                      ; $5893: $19
	inc  b                                           ; $5894: $04
	push bc                                          ; $5895: $c5
	ld   [bc], a                                     ; $5896: $02
	halt                                             ; $5897: $76
	ld   [hl], c                                     ; $5898: $71
	ld   [hl], h                                     ; $5899: $74
	or   h                                           ; $589a: $b4
	rst  $10                                         ; $589b: $d7
	cp   b                                           ; $589c: $b8
	ld   d, d                                        ; $589d: $52
	ld   l, l                                        ; $589e: $6d
	adc  a                                           ; $589f: $8f
	ld   l, l                                        ; $58a0: $6d
	nop                                              ; $58a1: $00
	nop                                              ; $58a2: $00
	ld   [de], a                                     ; $58a3: $12
	ld   de, $c504                                   ; $58a4: $11 $04 $c5
	ld   [bc], a                                     ; $58a7: $02
	halt                                             ; $58a8: $76
	sbc  d                                           ; $58a9: $9a
	ld   [hl], h                                     ; $58aa: $74
	sub  [hl]                                        ; $58ab: $96
	ld   e, c                                        ; $58ac: $59
	ld   [hl], c                                     ; $58ad: $71
	ld   l, l                                        ; $58ae: $6d
	nop                                              ; $58af: $00
	ld   bc, $0415                                   ; $58b0: $01 $15 $04
	push bc                                          ; $58b3: $c5
	ld   [bc], a                                     ; $58b4: $02
	halt                                             ; $58b5: $76
	sbc  d                                           ; $58b6: $9a
	ld   l, l                                        ; $58b7: $6d
	nop                                              ; $58b8: $00
	ld   [bc], a                                     ; $58b9: $02
	rlca                                             ; $58ba: $07
	ld   c, a                                        ; $58bb: $4f
	dec  c                                           ; $58bc: $0d
	ld   [bc], a                                     ; $58bd: $02
	inc  bc                                          ; $58be: $03
	ld   bc, $2000                                   ; $58bf: $01 $00 $20
	nop                                              ; $58c2: $00
	rlca                                             ; $58c3: $07
	xor  d                                           ; $58c4: $aa
	dec  c                                           ; $58c5: $0d
	ld   [bc], a                                     ; $58c6: $02
	inc  bc                                          ; $58c7: $03
	ld   bc, $2001                                   ; $58c8: $01 $01 $20
	nop                                              ; $58cb: $00
	rlca                                             ; $58cc: $07
	jp   c, $020d                                    ; $58cd: $da $0d $02

	inc  bc                                          ; $58d0: $03
	ld   bc, $2002                                   ; $58d1: $01 $02 $20
	nop                                              ; $58d4: $00
	ld   b, $de                                      ; $58d5: $06 $de
	inc  c                                           ; $58d7: $0c
	inc  e                                           ; $58d8: $1c
	ld   b, $03                                      ; $58d9: $06 $03
	inc  bc                                          ; $58db: $03
	ld   bc, $9850                                   ; $58dc: $01 $50 $98
	sub  c                                           ; $58df: $91
	sbc  b                                           ; $58e0: $98
	sub  c                                           ; $58e1: $91
	rst  $38                                         ; $58e2: $ff
	rst  $38                                         ; $58e3: $ff
	dec  c                                           ; $58e4: $0d
	ld   [$9e00], sp                                 ; $58e5: $08 $00 $9e
	ld   e, b                                        ; $58e8: $58
	inc  bc                                          ; $58e9: $03
	ld   c, a                                        ; $58ea: $4f
	or   h                                           ; $58eb: $b4
	rst  $10                                         ; $58ec: $d7
	cp   b                                           ; $58ed: $b8
	dec  c                                           ; $58ee: $0d
	ld   d, d                                        ; $58ef: $52
	ld   l, l                                        ; $58f0: $6d
	adc  a                                           ; $58f1: $8f
	ld   [hl], h                                     ; $58f2: $74
	sbc  c                                           ; $58f3: $99
	ld   h, [hl]                                     ; $58f4: $66
	sub  c                                           ; $58f5: $91
	ld   a, b                                        ; $58f6: $78
	ld   d, d                                        ; $58f7: $52
	ld   e, c                                        ; $58f8: $59
	sbc  a                                           ; $58f9: $9f
	dec  c                                           ; $58fa: $0d
	nop                                              ; $58fb: $00
	ld   a, [bc]                                     ; $58fc: $0a
	inc  e                                           ; $58fd: $1c
	ld   b, $05                                      ; $58fe: $06 $05
	dec  b                                           ; $5900: $05
	ld   bc, $9861                                   ; $5901: $01 $61 $98
	sub  c                                           ; $5904: $91
	sbc  [hl]                                        ; $5905: $9e
	sub  d                                           ; $5906: $92
	adc  a                                           ; $5907: $8f
	ld   l, l                                        ; $5908: $6d
	inc  b                                           ; $5909: $04
	ld   a, b                                        ; $590a: $78
	ld   e, d                                        ; $590b: $5a
	ld   d, d                                        ; $590c: $52
	ld   d, d                                        ; $590d: $52
	ld   a, b                                        ; $590e: $78
	sbc  a                                           ; $590f: $9f
	dec  c                                           ; $5910: $0d
	rst  $38                                         ; $5911: $ff
	rst  $38                                         ; $5912: $ff
	ld   d, b                                        ; $5913: $50
	sbc  [hl]                                        ; $5914: $9e
	ld   [hl], l                                     ; $5915: $75
	sub  b                                           ; $5916: $90
	ld   h, c                                        ; $5917: $61
	sbc  d                                           ; $5918: $9a
	ld   e, l                                        ; $5919: $5d
	sub  a                                           ; $591a: $97
	ld   l, [hl]                                     ; $591b: $6e
	ld   [hl], c                                     ; $591c: $71
	ld   l, l                                        ; $591d: $6d
	sub  a                                           ; $591e: $97
	dec  c                                           ; $591f: $0d
	inc  b                                           ; $5920: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5921: $cf
	inc  b                                           ; $5922: $04
	xor  d                                           ; $5923: $aa
	ld   a, c                                        ; $5924: $79
	sub  c                                           ; $5925: $91
	inc  bc                                          ; $5926: $03
	ld   sp, hl                                      ; $5927: $f9
	ld   [hl], c                                     ; $5928: $71
	ld   [hl], h                                     ; $5929: $74
	sbc  c                                           ; $592a: $99
	sub  [hl]                                        ; $592b: $96
	sbc  a                                           ; $592c: $9f
	dec  c                                           ; $592d: $0d
	nop                                              ; $592e: $00
	ld   a, [bc]                                     ; $592f: $0a
	ld   b, $ad                                      ; $5930: $06 $ad
	ld   c, $1c                                      ; $5932: $0e $1c
	ld   b, $01                                      ; $5934: $06 $01
	ld   bc, $5801                                   ; $5936: $01 $01 $58
	ld   e, b                                        ; $5939: $58
	sbc  [hl]                                        ; $593a: $9e
	ld   [de], a                                     ; $593b: $12
	ld   de, $c504                                   ; $593c: $11 $04 $c5
	sub  b                                           ; $593f: $90
	ld   [bc], a                                     ; $5940: $02
	halt                                             ; $5941: $76
	sbc  b                                           ; $5942: $98
	sub  d                                           ; $5943: $92
	ld   e, d                                        ; $5944: $5a
	ld   [hl], c                                     ; $5945: $71
	ld   l, l                                        ; $5946: $6d
	sbc  a                                           ; $5947: $9f
	dec  c                                           ; $5948: $0d
	ld   h, a                                        ; $5949: $67
	ld   h, d                                        ; $594a: $62
	ld   d, d                                        ; $594b: $52
	ld   a, b                                        ; $594c: $78
	sbc  [hl]                                        ; $594d: $9e
	ld   [$9f00], sp                                 ; $594e: $08 $00 $9f
	dec  c                                           ; $5951: $0d
	sub  [hl]                                        ; $5952: $96
	ld   h, l                                        ; $5953: $65
	sbc  [hl]                                        ; $5954: $9e
	db   $eb                                         ; $5955: $eb
	cp   d                                           ; $5956: $ba
	ret                                              ; $5957: $c9


	ld   [bc], a                                     ; $5958: $02
	jr   nz, jr_064_595d                             ; $5959: $20 $02

	sub  e                                           ; $595b: $93
	sbc  a                                           ; $595c: $9f

jr_064_595d:
	dec  c                                           ; $595d: $0d
	nop                                              ; $595e: $00
	ld   a, [bc]                                     ; $595f: $0a
	ld   b, $02                                      ; $5960: $06 $02
	ld   c, $1c                                      ; $5962: $0e $1c
	ld   b, $05                                      ; $5964: $06 $05
	dec  b                                           ; $5966: $05
	ld   bc, $a178                                   ; $5967: $01 $78 $a1
	ld   l, [hl]                                     ; $596a: $6e
	sbc  [hl]                                        ; $596b: $9e
	dec  d                                           ; $596c: $15
	inc  b                                           ; $596d: $04
	push bc                                          ; $596e: $c5
	ld   e, c                                        ; $596f: $59
	sub  [hl]                                        ; $5970: $96
	sbc  a                                           ; $5971: $9f
	dec  c                                           ; $5972: $0d
	and  c                                           ; $5973: $a1
	ld   h, [hl]                                     ; $5974: $66
	sub  c                                           ; $5975: $91
	sbc  [hl]                                        ; $5976: $9e
	db   $eb                                         ; $5977: $eb
	cp   d                                           ; $5978: $ba
	ret                                              ; $5979: $c9


	ld   [bc], a                                     ; $597a: $02
	jr   nz, jr_064_597f                             ; $597b: $20 $02

	sub  e                                           ; $597d: $93
	dec  c                                           ; $597e: $0d

jr_064_597f:
	ld   e, d                                        ; $597f: $5a
	and  c                                           ; $5980: $a1
	ld   a, [hl]                                     ; $5981: $7e
	sbc  d                                           ; $5982: $9a
	sub  [hl]                                        ; $5983: $96
	sbc  a                                           ; $5984: $9f
	dec  c                                           ; $5985: $0d
	nop                                              ; $5986: $00
	ld   a, [bc]                                     ; $5987: $0a
	ld   b, $02                                      ; $5988: $06 $02
	ld   c, $19                                      ; $598a: $0e $19
	inc  bc                                          ; $598c: $03
	inc  bc                                          ; $598d: $03
	ld   [de], a                                     ; $598e: $12
	ld   d, $04                                      ; $598f: $16 $04
	push bc                                          ; $5991: $c5
	ld   [bc], a                                     ; $5992: $02
	halt                                             ; $5993: $76
	ld   [hl], c                                     ; $5994: $71
	ld   [hl], h                                     ; $5995: $74
	or   h                                           ; $5996: $b4
	rst  $10                                         ; $5997: $d7
	cp   b                                           ; $5998: $b8
	ld   d, d                                        ; $5999: $52
	ld   l, l                                        ; $599a: $6d
	adc  a                                           ; $599b: $8f
	ld   l, l                                        ; $599c: $6d
	nop                                              ; $599d: $00
	nop                                              ; $599e: $00
	ld   a, [de]                                     ; $599f: $1a
	inc  b                                           ; $59a0: $04
	push bc                                          ; $59a1: $c5
	ld   [bc], a                                     ; $59a2: $02
	halt                                             ; $59a3: $76
	sbc  b                                           ; $59a4: $98
	ld   l, l                                        ; $59a5: $6d
	ld   e, c                                        ; $59a6: $59
	ld   [hl], c                                     ; $59a7: $71
	ld   l, l                                        ; $59a8: $6d
	nop                                              ; $59a9: $00
	ld   bc, $1612                                   ; $59aa: $01 $12 $16
	inc  b                                           ; $59ad: $04
	push bc                                          ; $59ae: $c5
	ld   [bc], a                                     ; $59af: $02
	halt                                             ; $59b0: $76
	sbc  d                                           ; $59b1: $9a
	ld   l, l                                        ; $59b2: $6d
	nop                                              ; $59b3: $00
	ld   [bc], a                                     ; $59b4: $02
	rlca                                             ; $59b5: $07
	ld   c, a                                        ; $59b6: $4f
	dec  c                                           ; $59b7: $0d
	ld   [bc], a                                     ; $59b8: $02
	inc  bc                                          ; $59b9: $03
	ld   bc, $2000                                   ; $59ba: $01 $00 $20
	nop                                              ; $59bd: $00
	rlca                                             ; $59be: $07
	ld   c, d                                        ; $59bf: $4a
	ld   c, $02                                      ; $59c0: $0e $02
	inc  bc                                          ; $59c2: $03
	ld   bc, $2001                                   ; $59c3: $01 $01 $20
	nop                                              ; $59c6: $00
	rlca                                             ; $59c7: $07
	ld   [hl], c                                     ; $59c8: $71
	ld   c, $02                                      ; $59c9: $0e $02
	inc  bc                                          ; $59cb: $03
	ld   bc, $2002                                   ; $59cc: $01 $02 $20
	nop                                              ; $59cf: $00
	ld   b, $de                                      ; $59d0: $06 $de
	inc  c                                           ; $59d2: $0c
	inc  e                                           ; $59d3: $1c
	ld   b, $03                                      ; $59d4: $06 $03
	inc  bc                                          ; $59d6: $03
	ld   bc, $7158                                   ; $59d7: $01 $58 $71
	sbc  [hl]                                        ; $59da: $9e
	ld   a, [de]                                     ; $59db: $1a
	inc  b                                           ; $59dc: $04
	push bc                                          ; $59dd: $c5
	ld   sp, hl                                      ; $59de: $f9
	dec  c                                           ; $59df: $0d
	rst  $38                                         ; $59e0: $ff
	rst  $38                                         ; $59e1: $ff
	ld   e, b                                        ; $59e2: $58
	ld   h, l                                        ; $59e3: $65
	ld   d, d                                        ; $59e4: $52
	ld   a, b                                        ; $59e5: $78
	sbc  [hl]                                        ; $59e6: $9e
	jr   jr_064_59ed                                 ; $59e7: $18 $04

	push bc                                          ; $59e9: $c5
	ld   l, [hl]                                     ; $59ea: $6e
	sbc  a                                           ; $59eb: $9f
	dec  c                                           ; $59ec: $0d

jr_064_59ed:
	adc  h                                           ; $59ed: $8c
	ld   l, b                                        ; $59ee: $68
	adc  h                                           ; $59ef: $8c
	ld   l, b                                        ; $59f0: $68
	ld   e, c                                        ; $59f1: $59
	ld   a, b                                        ; $59f2: $78
	sbc  a                                           ; $59f3: $9f
	dec  c                                           ; $59f4: $0d
	nop                                              ; $59f5: $00
	ld   a, [bc]                                     ; $59f6: $0a
	ld   b, $95                                      ; $59f7: $06 $95
	ld   c, $1c                                      ; $59f9: $0e $1c
	ld   b, $01                                      ; $59fb: $06 $01
	ld   bc, $6701                                   ; $59fd: $01 $01 $67
	ld   h, d                                        ; $5a00: $62
	ld   d, d                                        ; $5a01: $52
	ld   l, d                                        ; $5a02: $6a
	sbc  a                                           ; $5a03: $9f
	ld   [de], a                                     ; $5a04: $12
	ld   d, $04                                      ; $5a05: $16 $04
	push bc                                          ; $5a07: $c5
	sub  b                                           ; $5a08: $90
	ld   [bc], a                                     ; $5a09: $02
	halt                                             ; $5a0a: $76
	sbc  d                                           ; $5a0b: $9a
	ld   [hl], h                                     ; $5a0c: $74
	sbc  c                                           ; $5a0d: $99
	sbc  a                                           ; $5a0e: $9f
	dec  c                                           ; $5a0f: $0d
	sub  d                                           ; $5a10: $92
	sbc  c                                           ; $5a11: $99
	ld   a, b                                        ; $5a12: $78
	ei                                               ; $5a13: $fb
	sbc  a                                           ; $5a14: $9f
	ld   [$9f00], sp                                 ; $5a15: $08 $00 $9f
	dec  c                                           ; $5a18: $0d
	nop                                              ; $5a19: $00
	ld   a, [bc]                                     ; $5a1a: $0a
	ld   b, $95                                      ; $5a1b: $06 $95
	ld   c, $01                                      ; $5a1d: $0e $01
	sub  d                                           ; $5a1f: $92
	sbc  c                                           ; $5a20: $99
	ld   h, [hl]                                     ; $5a21: $66
	sub  c                                           ; $5a22: $91
	ld   a, e                                        ; $5a23: $7b
	ld   d, [hl]                                     ; $5a24: $56
	ld   e, c                                        ; $5a25: $59
	sbc  a                                           ; $5a26: $9f
	dec  c                                           ; $5a27: $0d
	ld   [bc], a                                     ; $5a28: $02
	sub  l                                           ; $5a29: $95
	inc  bc                                          ; $5a2a: $03
	jp   c, Jump_064_6d65                            ; $5a2b: $da $65 $6d

	ld   l, d                                        ; $5a2e: $6a
	sbc  [hl]                                        ; $5a2f: $9e
	ld   [$9f00], sp                                 ; $5a30: $08 $00 $9f
	dec  c                                           ; $5a33: $0d
	nop                                              ; $5a34: $00
	ld   a, [bc]                                     ; $5a35: $0a
	rlca                                             ; $5a36: $07
	dec  de                                          ; $5a37: $1b
	rrca                                             ; $5a38: $0f
	inc  bc                                          ; $5a39: $03
	ld   d, $01                                      ; $5a3a: $16 $01
	or   h                                           ; $5a3c: $b4
	dec  h                                           ; $5a3d: $25
	nop                                              ; $5a3e: $00
	inc  e                                           ; $5a3f: $1c
	ld   b, $00                                      ; $5a40: $06 $00
	nop                                              ; $5a42: $00
	ld   bc, $9166                                   ; $5a43: $01 $66 $91
	ld   d, b                                        ; $5a46: $50
	sbc  [hl]                                        ; $5a47: $9e
	ld   l, e                                        ; $5a48: $6b
	sbc  e                                           ; $5a49: $9b
	ld   l, e                                        ; $5a4a: $6b
	sbc  e                                           ; $5a4b: $9b
	ld   [bc], a                                     ; $5a4c: $02
	or   l                                           ; $5a4d: $b5
	sbc  c                                           ; $5a4e: $99
	ld   e, c                                        ; $5a4f: $59
	sbc  a                                           ; $5a50: $9f
	dec  c                                           ; $5a51: $0d
	nop                                              ; $5a52: $00
	ld   a, [bc]                                     ; $5a53: $0a
	dec  c                                           ; $5a54: $0d
	nop                                              ; $5a55: $00
	nop                                              ; $5a56: $00
	rrca                                             ; $5a57: $0f
	nop                                              ; $5a58: $00
	ld   bc, $020c                                   ; $5a59: $01 $0c $02
	add  hl, bc                                      ; $5a5c: $09
	ld   e, $0e                                      ; $5a5d: $1e $0e
	ld   b, $1c                                      ; $5a5f: $06 $1c
	ld   b, $01                                      ; $5a61: $06 $01
	ld   bc, $0201                                   ; $5a63: $01 $01 $02
	and  l                                           ; $5a66: $a5
	inc  b                                           ; $5a67: $04
	xor  d                                           ; $5a68: $aa
	ld   a, l                                        ; $5a69: $7d
	dec  b                                           ; $5a6a: $05
	inc  de                                          ; $5a6b: $13
	ld   h, l                                        ; $5a6c: $65
	ld   e, c                                        ; $5a6d: $59
	ld   [hl], c                                     ; $5a6e: $71
	ld   l, l                                        ; $5a6f: $6d
	ld   e, c                                        ; $5a70: $59
	ld   sp, hl                                      ; $5a71: $f9
	dec  c                                           ; $5a72: $0d
	nop                                              ; $5a73: $00
	dec  b                                           ; $5a74: $05
	add  b                                           ; $5a75: $80
	adc  h                                           ; $5a76: $8c
	ld   bc, $0001                                   ; $5a77: $01 $01 $00
	ld   bc, $9e8c                                   ; $5a7a: $01 $8c $9e
	inc  b                                           ; $5a7d: $04
	dec  c                                           ; $5a7e: $0d
	ld   [bc], a                                     ; $5a7f: $02
	sub  [hl]                                        ; $5a80: $96
	inc  b                                           ; $5a81: $04
	ld   b, l                                        ; $5a82: $45
	inc  b                                           ; $5a83: $04
	ld   a, [bc]                                     ; $5a84: $0a
	ld   a, h                                        ; $5a85: $7c
	dec  b                                           ; $5a86: $05
	pop  de                                          ; $5a87: $d1
	ld   d, d                                        ; $5a88: $52
	inc  bc                                          ; $5a89: $03
	add  b                                           ; $5a8a: $80
	ld   a, c                                        ; $5a8b: $79
	ld   [hl], l                                     ; $5a8c: $75
	sub  b                                           ; $5a8d: $90
	dec  c                                           ; $5a8e: $0d
	ld   h, l                                        ; $5a8f: $65
	ld   [hl], h                                     ; $5a90: $74
	ld   e, l                                        ; $5a91: $5d
	sbc  d                                           ; $5a92: $9a
	sub  [hl]                                        ; $5a93: $96
	ld   a, b                                        ; $5a94: $78
	sbc  a                                           ; $5a95: $9f
	dec  c                                           ; $5a96: $0d
	nop                                              ; $5a97: $00
	ld   a, [bc]                                     ; $5a98: $0a
	dec  c                                           ; $5a99: $0d
	nop                                              ; $5a9a: $00
	nop                                              ; $5a9b: $00
	rrca                                             ; $5a9c: $0f
	nop                                              ; $5a9d: $00
	ld   bc, $1e09                                   ; $5a9e: $01 $09 $1e
	add  hl, hl                                      ; $5aa1: $29
	nop                                              ; $5aa2: $00
	nop                                              ; $5aa3: $00
	inc  e                                           ; $5aa4: $1c
	ld   b, $00                                      ; $5aa5: $06 $00
	nop                                              ; $5aa7: $00
	dec  b                                           ; $5aa8: $05
	ld   b, b                                        ; $5aa9: $40
	rst  $38                                         ; $5aaa: $ff
	ld   bc, $0000                                   ; $5aab: $01 $00 $00
	ld   bc, $7463                                   ; $5aae: $01 $63 $74
	halt                                             ; $5ab1: $76
	rst  $38                                         ; $5ab2: $ff
	rst  $38                                         ; $5ab3: $ff
	dec  c                                           ; $5ab4: $0d
	ld   h, [hl]                                     ; $5ab5: $66
	sub  c                                           ; $5ab6: $91
	ld   d, b                                        ; $5ab7: $50
	db   $e3                                         ; $5ab8: $e3
	cp   b                                           ; $5ab9: $b8
	ld   [hl], l                                     ; $5aba: $75
	sub  b                                           ; $5abb: $90
	inc  bc                                          ; $5abc: $03
	ld   l, d                                        ; $5abd: $6a
	ld   d, d                                        ; $5abe: $52
	ld   a, c                                        ; $5abf: $79
	ld   [bc], a                                     ; $5ac0: $02
	ld   a, a                                        ; $5ac1: $7f
	ld   e, l                                        ; $5ac2: $5d
	ld   e, c                                        ; $5ac3: $59
	sbc  a                                           ; $5ac4: $9f
	dec  c                                           ; $5ac5: $0d
	nop                                              ; $5ac6: $00
	ld   a, [bc]                                     ; $5ac7: $0a
	dec  c                                           ; $5ac8: $0d
	nop                                              ; $5ac9: $00
	nop                                              ; $5aca: $00
	rrca                                             ; $5acb: $0f
	nop                                              ; $5acc: $00
	ld   bc, $9023                                   ; $5acd: $01 $23 $90
	inc  e                                           ; $5ad0: $1c
	ld   b, $01                                      ; $5ad1: $06 $01
	ld   bc, $9601                                   ; $5ad3: $01 $01 $96
	ld   h, l                                        ; $5ad6: $65
	sbc  [hl]                                        ; $5ad7: $9e
	ld   [bc], a                                     ; $5ad8: $02
	and  l                                           ; $5ad9: $a5
	inc  b                                           ; $5ada: $04
	xor  d                                           ; $5adb: $aa
	ld   a, l                                        ; $5adc: $7d
	ld   d, b                                        ; $5add: $50
	ld   l, l                                        ; $5ade: $6d
	ld   d, d                                        ; $5adf: $52
	ld   a, h                                        ; $5ae0: $7c
	dec  c                                           ; $5ae1: $0d
	ld   e, b                                        ; $5ae2: $58
	ld   h, d                                        ; $5ae3: $62
	sbc  b                                           ; $5ae4: $98
	ld   l, [hl]                                     ; $5ae5: $6e
	rst  $38                                         ; $5ae6: $ff
	rst  $38                                         ; $5ae7: $ff
	ld   [hl], h                                     ; $5ae8: $74
	ld   [bc], a                                     ; $5ae9: $02
	sbc  l                                           ; $5aea: $9d
	ld   d, h                                        ; $5aeb: $54
	ld   e, c                                        ; $5aec: $59
	sbc  [hl]                                        ; $5aed: $9e
	dec  c                                           ; $5aee: $0d
	inc  b                                           ; $5aef: $04
	ld   c, $03                                      ; $5af0: $0e $03
	ld   l, d                                        ; $5af2: $6a
	sub  a                                           ; $5af3: $97
	ld   d, d                                        ; $5af4: $52
	dec  b                                           ; $5af5: $05
	add  h                                           ; $5af6: $84
	dec  b                                           ; $5af7: $05
	jp   c, $fa6e                                    ; $5af8: $da $6e $fa

	dec  c                                           ; $5afb: $0d
	nop                                              ; $5afc: $00
	ld   a, [bc]                                     ; $5afd: $0a
	ld   bc, $fbc7                                   ; $5afe: $01 $c7 $fb
	rst  $10                                         ; $5b01: $d7
	db   $ed                                         ; $5b02: $ed
	ld   a, c                                        ; $5b03: $79
	ld   a, b                                        ; $5b04: $78
	sub  a                                           ; $5b05: $97
	and  c                                           ; $5b06: $a1
	ld   [hl], l                                     ; $5b07: $75
	sbc  c                                           ; $5b08: $99
	dec  b                                           ; $5b09: $05
	ld   [bc], a                                     ; $5b0a: $02
	dec  b                                           ; $5b0b: $05
	ld   de, $0d7c                                   ; $5b0c: $11 $7c $0d
	dec  b                                           ; $5b0f: $05
	ld   h, [hl]                                     ; $5b10: $66
	ld   e, d                                        ; $5b11: $5a
	inc  b                                           ; $5b12: $04
	rrca                                             ; $5b13: $0f
	ld   l, e                                        ; $5b14: $6b
	ld   d, h                                        ; $5b15: $54
	ld   a, b                                        ; $5b16: $78
	sub  b                                           ; $5b17: $90
	ld   a, h                                        ; $5b18: $7c
	and  b                                           ; $5b19: $a0
	dec  c                                           ; $5b1a: $0d
	ld   d, [hl]                                     ; $5b1b: $56
	sub  a                                           ; $5b1c: $97
	and  c                                           ; $5b1d: $a1
	ld   [hl], l                                     ; $5b1e: $75
	inc  bc                                          ; $5b1f: $03
	ld   l, d                                        ; $5b20: $6a
	add  a                                           ; $5b21: $87
	sbc  c                                           ; $5b22: $99
	and  c                                           ; $5b23: $a1
	ld   l, [hl]                                     ; $5b24: $6e
	sbc  a                                           ; $5b25: $9f
	dec  c                                           ; $5b26: $0d
	nop                                              ; $5b27: $00
	ld   a, [bc]                                     ; $5b28: $0a
	ld   bc, $9166                                   ; $5b29: $01 $66 $91
	sbc  [hl]                                        ; $5b2c: $9e
	dec  b                                           ; $5b2d: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b2e: $cf
	adc  a                                           ; $5b2f: $8f
	sbc  c                                           ; $5b30: $99
	ld   l, d                                        ; $5b31: $6a
	sbc  a                                           ; $5b32: $9f
	dec  c                                           ; $5b33: $0d
	ld   d, b                                        ; $5b34: $50
	ld   l, l                                        ; $5b35: $6d
	ld   d, d                                        ; $5b36: $52
	ld   a, l                                        ; $5b37: $7d
	sbc  [hl]                                        ; $5b38: $9e
	xor  e                                           ; $5b39: $ab
	ldh  [c], a                                      ; $5b3a: $e2
	db   $eb                                         ; $5b3b: $eb
	and  l                                           ; $5b3c: $a5
	cp   d                                           ; $5b3d: $ba
	ld   l, [hl]                                     ; $5b3e: $6e
	ld   a, [$000d]                                  ; $5b3f: $fa $0d $00
	ld   a, [bc]                                     ; $5b42: $0a
	add  hl, de                                      ; $5b43: $19
	dec  b                                           ; $5b44: $05
	inc  bc                                          ; $5b45: $03
	jp   nz, $fbe5                                   ; $5b46: $c2 $e5 $fb

	ret  nc                                          ; $5b49: $d0

	push af                                          ; $5b4a: $f5
	nop                                              ; $5b4b: $00
	nop                                              ; $5b4c: $00
	ld   e, b                                        ; $5b4d: $58
	ld   h, l                                        ; $5b4e: $65
	and  c                                           ; $5b4f: $a1
	ld   h, c                                        ; $5b50: $61
	nop                                              ; $5b51: $00
	ld   bc, $c4b0                                   ; $5b52: $01 $b0 $c4
	xor  [hl]                                        ; $5b55: $ae
	ei                                               ; $5b56: $fb
	nop                                              ; $5b57: $00
	ld   [bc], a                                     ; $5b58: $02
	rlca                                             ; $5b59: $07
	ld   [$0210], sp                                 ; $5b5a: $08 $10 $02
	inc  bc                                          ; $5b5d: $03
	ld   bc, $2000                                   ; $5b5e: $01 $00 $20
	nop                                              ; $5b61: $00
	rlca                                             ; $5b62: $07
	ld   sp, $0210                                   ; $5b63: $31 $10 $02
	inc  bc                                          ; $5b66: $03
	ld   bc, $2001                                   ; $5b67: $01 $01 $20
	nop                                              ; $5b6a: $00
	rlca                                             ; $5b6b: $07
	ld   c, [hl]                                     ; $5b6c: $4e
	db   $10                                         ; $5b6d: $10
	ld   [bc], a                                     ; $5b6e: $02
	inc  bc                                          ; $5b6f: $03
	ld   bc, $2002                                   ; $5b70: $01 $02 $20
	nop                                              ; $5b73: $00
	ld   b, $ee                                      ; $5b74: $06 $ee
	rrca                                             ; $5b76: $0f
	inc  e                                           ; $5b77: $1c
	ld   b, $03                                      ; $5b78: $06 $03
	inc  bc                                          ; $5b7a: $03
	ld   bc, $f9a1                                   ; $5b7b: $01 $a1 $f9
	dec  c                                           ; $5b7e: $0d
	ld   d, [hl]                                     ; $5b7f: $56
	and  c                                           ; $5b80: $a1
	sbc  b                                           ; $5b81: $98
	sub  l                                           ; $5b82: $95
	ld   l, c                                        ; $5b83: $69
	ld   l, b                                        ; $5b84: $68
	ld   a, c                                        ; $5b85: $79
	inc  bc                                          ; $5b86: $03
	ld   l, d                                        ; $5b87: $6a
	ld   d, [hl]                                     ; $5b88: $56
	sub  [hl]                                        ; $5b89: $96
	sbc  a                                           ; $5b8a: $9f
	dec  c                                           ; $5b8b: $0d
	nop                                              ; $5b8c: $00
	ld   a, [bc]                                     ; $5b8d: $0a
	ld   b, $ba                                      ; $5b8e: $06 $ba
	rrca                                             ; $5b90: $0f
	inc  e                                           ; $5b91: $1c
	ld   b, $00                                      ; $5b92: $06 $00
	nop                                              ; $5b94: $00
	ld   bc, $e5c2                                   ; $5b95: $01 $c2 $e5
	ei                                               ; $5b98: $fb
	ret  nc                                          ; $5b99: $d0

	push af                                          ; $5b9a: $f5
	ld   e, c                                        ; $5b9b: $59
	sub  [hl]                                        ; $5b9c: $96
	rst  $38                                         ; $5b9d: $ff
	rst  $38                                         ; $5b9e: $ff
	dec  c                                           ; $5b9f: $0d
	ld   d, b                                        ; $5ba0: $50
	ld   l, l                                        ; $5ba1: $6d
	ld   d, d                                        ; $5ba2: $52
	halt                                             ; $5ba3: $76
	inc  b                                           ; $5ba4: $04
	dec  e                                           ; $5ba5: $1d
	ld   h, [hl]                                     ; $5ba6: $66
	dec  b                                           ; $5ba7: $05
	ld   h, [hl]                                     ; $5ba8: $66
	ld   l, [hl]                                     ; $5ba9: $6e
	sbc  a                                           ; $5baa: $9f
	dec  c                                           ; $5bab: $0d
	nop                                              ; $5bac: $00
	ld   a, [bc]                                     ; $5bad: $0a
	dec  b                                           ; $5bae: $05
	ld   b, b                                        ; $5baf: $40
	rst  $38                                         ; $5bb0: $ff
	inc  bc                                          ; $5bb1: $03
	rst  $38                                         ; $5bb2: $ff
	ld   bc, $2801                                   ; $5bb3: $01 $01 $28
	nop                                              ; $5bb6: $00
	ld   b, $6f                                      ; $5bb7: $06 $6f
	db   $10                                         ; $5bb9: $10
	inc  e                                           ; $5bba: $1c
	ld   b, $01                                      ; $5bbb: $06 $01
	ld   bc, $6b01                                   ; $5bbd: $01 $01 $6b
	and  c                                           ; $5bc0: $a1
	ld   a, b                                        ; $5bc1: $78
	and  c                                           ; $5bc2: $a1
	ld   h, [hl]                                     ; $5bc3: $66
	sub  c                                           ; $5bc4: $91
	dec  c                                           ; $5bc5: $0d
	dec  b                                           ; $5bc6: $05
	ld   h, [hl]                                     ; $5bc7: $66
	ld   e, d                                        ; $5bc8: $5a
	inc  bc                                          ; $5bc9: $03
	ld   l, h                                        ; $5bca: $6c
	ld   a, b                                        ; $5bcb: $78
	ld   h, a                                        ; $5bcc: $67
	ld   e, h                                        ; $5bcd: $5c
	sbc  c                                           ; $5bce: $99
	ld   l, d                                        ; $5bcf: $6a
	sbc  a                                           ; $5bd0: $9f
	dec  c                                           ; $5bd1: $0d
	nop                                              ; $5bd2: $00
	ld   a, [bc]                                     ; $5bd3: $0a
	ld   b, $6f                                      ; $5bd4: $06 $6f
	db   $10                                         ; $5bd6: $10
	inc  e                                           ; $5bd7: $1c
	ld   b, $02                                      ; $5bd8: $06 $02
	ld   [bc], a                                     ; $5bda: $02
	ld   bc, $c4b0                                   ; $5bdb: $01 $b0 $c4
	xor  [hl]                                        ; $5bde: $ae
	ei                                               ; $5bdf: $fb
	inc  bc                                          ; $5be0: $03
	ld   l, d                                        ; $5be1: $6a
	ld   [hl], c                                     ; $5be2: $71
	ld   [hl], h                                     ; $5be3: $74
	ld   [hl], a                                     ; $5be4: $77
	ld   d, h                                        ; $5be5: $54
	ld   h, a                                        ; $5be6: $67
	and  c                                           ; $5be7: $a1
	ld   l, [hl]                                     ; $5be8: $6e
	sbc  a                                           ; $5be9: $9f
	dec  c                                           ; $5bea: $0d
	db   $e3                                         ; $5beb: $e3
	cp   b                                           ; $5bec: $b8
	inc  bc                                          ; $5bed: $03
	ld   l, d                                        ; $5bee: $6a
	ld   d, [hl]                                     ; $5bef: $56
	sub  [hl]                                        ; $5bf0: $96
	sbc  a                                           ; $5bf1: $9f
	db   $e3                                         ; $5bf2: $e3
	cp   b                                           ; $5bf3: $b8
	sbc  a                                           ; $5bf4: $9f
	dec  c                                           ; $5bf5: $0d
	nop                                              ; $5bf6: $00
	ld   a, [bc]                                     ; $5bf7: $0a
	inc  e                                           ; $5bf8: $1c
	ld   b, $01                                      ; $5bf9: $06 $01
	ld   bc, $6601                                   ; $5bfb: $01 $01 $66
	sub  c                                           ; $5bfe: $91
	sbc  [hl]                                        ; $5bff: $9e
	inc  bc                                          ; $5c00: $03
	ld   l, b                                        ; $5c01: $68
	ld   a, l                                        ; $5c02: $7d
	cp   [hl]                                        ; $5c03: $be
	ei                                               ; $5c04: $fb
	xor  [hl]                                        ; $5c05: $ae
	cp   [hl]                                        ; $5c06: $be
	pop  de                                          ; $5c07: $d1
	ld   l, [hl]                                     ; $5c08: $6e
	ld   a, [$000d]                                  ; $5c09: $fa $0d $00
	ld   a, [bc]                                     ; $5c0c: $0a
	add  hl, de                                      ; $5c0d: $19
	dec  b                                           ; $5c0e: $05
	inc  bc                                          ; $5c0f: $03
	jp   nz, $fbe5                                   ; $5c10: $c2 $e5 $fb

	cp   b                                           ; $5c13: $b8
	rst  $20                                         ; $5c14: $e7
	ei                                               ; $5c15: $fb
	db   $e3                                         ; $5c16: $e3
	push af                                          ; $5c17: $f5
	nop                                              ; $5c18: $00
	nop                                              ; $5c19: $00
	cp   [hl]                                        ; $5c1a: $be
	ei                                               ; $5c1b: $fb
	db   $e3                                         ; $5c1c: $e3
	push af                                          ; $5c1d: $f5
	nop                                              ; $5c1e: $00
	ld   bc, $9964                                   ; $5c1f: $01 $64 $99
	ld   [hl], a                                     ; $5c22: $77
	ld   d, h                                        ; $5c23: $54
	add  e                                           ; $5c24: $83
	ld   d, $05                                      ; $5c25: $16 $05
	ld   d, [hl]                                     ; $5c27: $56
	nop                                              ; $5c28: $00
	ld   [bc], a                                     ; $5c29: $02
	rlca                                             ; $5c2a: $07
	and  $10                                         ; $5c2b: $e6 $10
	ld   [bc], a                                     ; $5c2d: $02
	inc  bc                                          ; $5c2e: $03
	ld   bc, $2000                                   ; $5c2f: $01 $00 $20
	nop                                              ; $5c32: $00
	rlca                                             ; $5c33: $07
	inc  de                                          ; $5c34: $13
	ld   de, $0302                                   ; $5c35: $11 $02 $03
	ld   bc, $2001                                   ; $5c38: $01 $01 $20
	nop                                              ; $5c3b: $00
	rlca                                             ; $5c3c: $07
	jr   nc, jr_064_5c50                             ; $5c3d: $30 $11

	ld   [bc], a                                     ; $5c3f: $02
	inc  bc                                          ; $5c40: $03
	ld   bc, $2002                                   ; $5c41: $01 $02 $20
	nop                                              ; $5c44: $00
	ld   b, $bf                                      ; $5c45: $06 $bf
	db   $10                                         ; $5c47: $10
	inc  e                                           ; $5c48: $1c
	ld   b, $05                                      ; $5c49: $06 $05
	dec  b                                           ; $5c4b: $05
	ld   bc, $a178                                   ; $5c4c: $01 $78 $a1
	ld   l, [hl]                                     ; $5c4f: $6e

jr_064_5c50:
	sbc  [hl]                                        ; $5c50: $9e
	sub  b                                           ; $5c51: $90
	ld   d, h                                        ; $5c52: $54
	inc  bc                                          ; $5c53: $03
	ld   a, [hl]                                     ; $5c54: $7e
	sbc  l                                           ; $5c55: $9d
	sbc  b                                           ; $5c56: $98
	ld   e, c                                        ; $5c57: $59
	sub  [hl]                                        ; $5c58: $96
	rst  $38                                         ; $5c59: $ff
	rst  $38                                         ; $5c5a: $ff
	dec  c                                           ; $5c5b: $0d
	ld   [hl], d                                     ; $5c5c: $72
	adc  h                                           ; $5c5d: $8c
	and  c                                           ; $5c5e: $a1
	ld   a, e                                        ; $5c5f: $7b
	ei                                               ; $5c60: $fb
	ld   a, h                                        ; $5c61: $7c
	sbc  a                                           ; $5c62: $9f
	dec  c                                           ; $5c63: $0d
	nop                                              ; $5c64: $00
	ld   a, [bc]                                     ; $5c65: $0a
	dec  c                                           ; $5c66: $0d
	nop                                              ; $5c67: $00
	nop                                              ; $5c68: $00
	rrca                                             ; $5c69: $0f
	nop                                              ; $5c6a: $00
	ld   bc, $d306                                   ; $5c6b: $01 $06 $d3
	ld   [de], a                                     ; $5c6e: $12
	inc  e                                           ; $5c6f: $1c
	ld   b, $00                                      ; $5c70: $06 $00
	nop                                              ; $5c72: $00
	ld   bc, $e5c2                                   ; $5c73: $01 $c2 $e5
	ei                                               ; $5c76: $fb
	cp   b                                           ; $5c77: $b8
	rst  $20                                         ; $5c78: $e7
	ei                                               ; $5c79: $fb
	db   $e3                                         ; $5c7a: $e3
	push af                                          ; $5c7b: $f5
	ld   e, c                                        ; $5c7c: $59
	rst  $38                                         ; $5c7d: $ff
	rst  $38                                         ; $5c7e: $ff
	dec  c                                           ; $5c7f: $0d
	ld   d, b                                        ; $5c80: $50
	ld   l, l                                        ; $5c81: $6d
	ld   d, d                                        ; $5c82: $52
	halt                                             ; $5c83: $76
	inc  b                                           ; $5c84: $04
	dec  e                                           ; $5c85: $1d
	ld   h, [hl]                                     ; $5c86: $66
	ld   e, l                                        ; $5c87: $5d
	sub  a                                           ; $5c88: $97
	ld   d, d                                        ; $5c89: $52
	ld   l, [hl]                                     ; $5c8a: $6e
	ld   a, b                                        ; $5c8b: $78
	sbc  a                                           ; $5c8c: $9f
	dec  c                                           ; $5c8d: $0d
	nop                                              ; $5c8e: $00
	ld   a, [bc]                                     ; $5c8f: $0a
	dec  b                                           ; $5c90: $05
	ld   b, b                                        ; $5c91: $40
	rst  $38                                         ; $5c92: $ff
	inc  bc                                          ; $5c93: $03
	rst  $38                                         ; $5c94: $ff
	ld   bc, $2801                                   ; $5c95: $01 $01 $28
	nop                                              ; $5c98: $00
	ld   b, $63                                      ; $5c99: $06 $63
	ld   de, $061c                                   ; $5c9b: $11 $1c $06
	ld   bc, $0101                                   ; $5c9e: $01 $01 $01
	ld   l, e                                        ; $5ca1: $6b
	and  c                                           ; $5ca2: $a1
	ld   a, b                                        ; $5ca3: $78
	and  c                                           ; $5ca4: $a1
	ld   h, [hl]                                     ; $5ca5: $66
	sub  c                                           ; $5ca6: $91
	dec  c                                           ; $5ca7: $0d
	dec  b                                           ; $5ca8: $05
	ld   h, [hl]                                     ; $5ca9: $66
	ld   e, d                                        ; $5caa: $5a
	inc  bc                                          ; $5cab: $03
	ld   l, h                                        ; $5cac: $6c
	ld   a, b                                        ; $5cad: $78
	ld   h, a                                        ; $5cae: $67
	ld   e, h                                        ; $5caf: $5c
	sbc  c                                           ; $5cb0: $99
	ld   l, d                                        ; $5cb1: $6a
	sbc  a                                           ; $5cb2: $9f
	dec  c                                           ; $5cb3: $0d
	nop                                              ; $5cb4: $00
	ld   a, [bc]                                     ; $5cb5: $0a
	ld   b, $63                                      ; $5cb6: $06 $63
	ld   de, $061c                                   ; $5cb8: $11 $1c $06
	inc  bc                                          ; $5cbb: $03
	inc  bc                                          ; $5cbc: $03
	ld   bc, $9964                                   ; $5cbd: $01 $64 $99
	ld   [hl], a                                     ; $5cc0: $77
	ld   d, h                                        ; $5cc1: $54
	add  e                                           ; $5cc2: $83
	ld   e, c                                        ; $5cc3: $59
	sub  [hl]                                        ; $5cc4: $96
	rst  $38                                         ; $5cc5: $ff
	rst  $38                                         ; $5cc6: $ff
	dec  c                                           ; $5cc7: $0d
	ld   d, [hl]                                     ; $5cc8: $56
	ld   sp, hl                                      ; $5cc9: $f9
	db   $10                                         ; $5cca: $10
	ld   d, $05                                      ; $5ccb: $16 $05
	ld   d, [hl]                                     ; $5ccd: $56
	inc  bc                                          ; $5cce: $03
	ld   l, d                                        ; $5ccf: $6a
	add  a                                           ; $5cd0: $87
	sbc  c                                           ; $5cd1: $99
	ld   a, h                                        ; $5cd2: $7c
	ld   sp, hl                                      ; $5cd3: $f9
	dec  c                                           ; $5cd4: $0d
	ld   l, e                                        ; $5cd5: $6b
	sbc  b                                           ; $5cd6: $98
	sub  c                                           ; $5cd7: $91
	ld   h, a                                        ; $5cd8: $67
	ld   h, d                                        ; $5cd9: $62
	ld   d, d                                        ; $5cda: $52
	sub  d                                           ; $5cdb: $92
	sbc  a                                           ; $5cdc: $9f
	dec  c                                           ; $5cdd: $0d
	nop                                              ; $5cde: $00
	ld   a, [bc]                                     ; $5cdf: $0a
	dec  b                                           ; $5ce0: $05
	ld   b, b                                        ; $5ce1: $40
	rst  $38                                         ; $5ce2: $ff
	inc  bc                                          ; $5ce3: $03
	rst  $38                                         ; $5ce4: $ff
	ld   bc, $2801                                   ; $5ce5: $01 $01 $28
	nop                                              ; $5ce8: $00
	ld   b, $63                                      ; $5ce9: $06 $63
	ld   de, $061c                                   ; $5ceb: $11 $1c $06
	ld   bc, $0101                                   ; $5cee: $01 $01 $01
	inc  bc                                          ; $5cf1: $03
	ld   l, b                                        ; $5cf2: $68
	ld   a, l                                        ; $5cf3: $7d
	sbc  [hl]                                        ; $5cf4: $9e
	call nc, $c7d6                                   ; $5cf5: $d4 $d6 $c7
	xor  [hl]                                        ; $5cf8: $ae
	ld   l, [hl]                                     ; $5cf9: $6e
	ld   a, [$000d]                                  ; $5cfa: $fa $0d $00
	ld   a, [bc]                                     ; $5cfd: $0a
	add  hl, de                                      ; $5cfe: $19
	dec  b                                           ; $5cff: $05
	inc  bc                                          ; $5d00: $03
	jp   nz, $f5ae                                   ; $5d01: $c2 $ae $f5

	xor  h                                           ; $5d04: $ac
	push bc                                          ; $5d05: $c5
	nop                                              ; $5d06: $00
	nop                                              ; $5d07: $00
	rst  $10                                         ; $5d08: $d7
	ret  nz                                          ; $5d09: $c0

	ld   a, h                                        ; $5d0a: $7c
	inc  b                                           ; $5d0b: $04
	ret  z                                           ; $5d0c: $c8

	sub  d                                           ; $5d0d: $92
	ld   e, e                                        ; $5d0e: $5b
	nop                                              ; $5d0f: $00
	ld   bc, $ebd6                                   ; $5d10: $01 $d6 $eb
	and  l                                           ; $5d13: $a5
	jp   z, $c7de                                    ; $5d14: $ca $de $c7

	ret                                              ; $5d17: $c9


	nop                                              ; $5d18: $00
	ld   [bc], a                                     ; $5d19: $02
	rlca                                             ; $5d1a: $07
	push de                                          ; $5d1b: $d5
	ld   de, $0302                                   ; $5d1c: $11 $02 $03
	ld   bc, $2000                                   ; $5d1f: $01 $00 $20
	nop                                              ; $5d22: $00
	rlca                                             ; $5d23: $07
	db   $fc                                         ; $5d24: $fc
	ld   de, $0302                                   ; $5d25: $11 $02 $03
	ld   bc, $2001                                   ; $5d28: $01 $01 $20
	nop                                              ; $5d2b: $00
	rlca                                             ; $5d2c: $07
	ld   [hl+], a                                    ; $5d2d: $22
	ld   [de], a                                     ; $5d2e: $12
	ld   [bc], a                                     ; $5d2f: $02
	inc  bc                                          ; $5d30: $03
	ld   bc, $2002                                   ; $5d31: $01 $02 $20
	nop                                              ; $5d34: $00
	ld   b, $af                                      ; $5d35: $06 $af
	ld   de, $061c                                   ; $5d37: $11 $1c $06
	nop                                              ; $5d3a: $00
	nop                                              ; $5d3b: $00
	ld   bc, $5490                                   ; $5d3c: $01 $90 $54
	inc  bc                                          ; $5d3f: $03
	ld   a, [hl]                                     ; $5d40: $7e
	sbc  l                                           ; $5d41: $9d
	sbc  b                                           ; $5d42: $98
	ld   e, c                                        ; $5d43: $59
	ld   sp, hl                                      ; $5d44: $f9
	dec  c                                           ; $5d45: $0d
	adc  h                                           ; $5d46: $8c
	sbc  [hl]                                        ; $5d47: $9e
	ld   l, e                                        ; $5d48: $6b
	and  c                                           ; $5d49: $a1
	ld   a, b                                        ; $5d4a: $78
	halt                                             ; $5d4b: $76
	ld   h, c                                        ; $5d4c: $61
	ld   l, [hl]                                     ; $5d4d: $6e
	sbc  e                                           ; $5d4e: $9b
	ld   d, h                                        ; $5d4f: $54
	ld   a, b                                        ; $5d50: $78
	sbc  a                                           ; $5d51: $9f
	dec  c                                           ; $5d52: $0d
	nop                                              ; $5d53: $00
	ld   a, [bc]                                     ; $5d54: $0a
	dec  c                                           ; $5d55: $0d
	nop                                              ; $5d56: $00
	nop                                              ; $5d57: $00
	rrca                                             ; $5d58: $0f
	nop                                              ; $5d59: $00
	ld   bc, $d306                                   ; $5d5a: $01 $06 $d3
	ld   [de], a                                     ; $5d5d: $12
	inc  e                                           ; $5d5e: $1c
	ld   b, $00                                      ; $5d5f: $06 $00
	nop                                              ; $5d61: $00
	ld   bc, $aec2                                   ; $5d62: $01 $c2 $ae
	push af                                          ; $5d65: $f5
	xor  h                                           ; $5d66: $ac
	push bc                                          ; $5d67: $c5
	ld   e, c                                        ; $5d68: $59
	sub  [hl]                                        ; $5d69: $96
	rst  $38                                         ; $5d6a: $ff
	rst  $38                                         ; $5d6b: $ff
	dec  c                                           ; $5d6c: $0d
	nop                                              ; $5d6d: $00
	dec  b                                           ; $5d6e: $05
	ld   b, b                                        ; $5d6f: $40
	rst  $38                                         ; $5d70: $ff
	inc  bc                                          ; $5d71: $03
	rst  $38                                         ; $5d72: $ff
	ld   bc, $2801                                   ; $5d73: $01 $01 $28
	nop                                              ; $5d76: $00
	ld   bc, $c902                                   ; $5d77: $01 $02 $c9
	dec  b                                           ; $5d7a: $05
	sbc  a                                           ; $5d7b: $9f
	ld   l, [hl]                                     ; $5d7c: $6e
	ld   a, b                                        ; $5d7d: $78
	sbc  a                                           ; $5d7e: $9f
	dec  c                                           ; $5d7f: $0d
	nop                                              ; $5d80: $00
	ld   a, [bc]                                     ; $5d81: $0a
	ld   b, $3f                                      ; $5d82: $06 $3f
	ld   [de], a                                     ; $5d84: $12
	inc  e                                           ; $5d85: $1c
	ld   b, $03                                      ; $5d86: $06 $03
	inc  bc                                          ; $5d88: $03
	ld   bc, $b3b3                                   ; $5d89: $01 $b3 $b3
	call nz, $ffff                                   ; $5d8c: $c4 $ff $ff
	dec  c                                           ; $5d8f: $0d
	nop                                              ; $5d90: $00
	dec  b                                           ; $5d91: $05
	ld   b, b                                        ; $5d92: $40
	rst  $38                                         ; $5d93: $ff
	inc  bc                                          ; $5d94: $03
	rst  $38                                         ; $5d95: $ff
	ld   bc, $2803                                   ; $5d96: $01 $03 $28
	nop                                              ; $5d99: $00
	ld   bc, $c0d7                                   ; $5d9a: $01 $d7 $c0
	ld   a, h                                        ; $5d9d: $7c
	inc  b                                           ; $5d9e: $04
	ret  z                                           ; $5d9f: $c8

	sub  d                                           ; $5da0: $92
	ld   e, e                                        ; $5da1: $5b
	ld   l, [hl]                                     ; $5da2: $6e
	halt                                             ; $5da3: $76
	ld   sp, hl                                      ; $5da4: $f9
	dec  c                                           ; $5da5: $0d
	nop                                              ; $5da6: $00
	ld   a, [bc]                                     ; $5da7: $0a
	ld   b, $3f                                      ; $5da8: $06 $3f
	ld   [de], a                                     ; $5daa: $12
	inc  e                                           ; $5dab: $1c
	ld   b, $01                                      ; $5dac: $06 $01
	ld   bc, $6b01                                   ; $5dae: $01 $01 $6b
	and  c                                           ; $5db1: $a1
	ld   a, b                                        ; $5db2: $78
	and  c                                           ; $5db3: $a1
	ld   h, [hl]                                     ; $5db4: $66
	sub  c                                           ; $5db5: $91
	dec  c                                           ; $5db6: $0d
	dec  b                                           ; $5db7: $05
	ld   h, [hl]                                     ; $5db8: $66
	ld   e, d                                        ; $5db9: $5a
	inc  bc                                          ; $5dba: $03
	ld   l, h                                        ; $5dbb: $6c
	ld   a, b                                        ; $5dbc: $78
	ld   h, a                                        ; $5dbd: $67
	ld   e, h                                        ; $5dbe: $5c
	sbc  c                                           ; $5dbf: $99
	ld   l, d                                        ; $5dc0: $6a
	sbc  a                                           ; $5dc1: $9f
	dec  c                                           ; $5dc2: $0d
	nop                                              ; $5dc3: $00
	ld   a, [bc]                                     ; $5dc4: $0a
	ld   b, $3f                                      ; $5dc5: $06 $3f
	ld   [de], a                                     ; $5dc7: $12
	rlca                                             ; $5dc8: $07
	add  c                                           ; $5dc9: $81
	ld   [de], a                                     ; $5dca: $12
	inc  bc                                          ; $5dcb: $03
	rst  $38                                         ; $5dcc: $ff
	ld   bc, $2003                                   ; $5dcd: $01 $03 $20
	nop                                              ; $5dd0: $00
	rlca                                             ; $5dd1: $07
	xor  e                                           ; $5dd2: $ab
	ld   [de], a                                     ; $5dd3: $12
	inc  bc                                          ; $5dd4: $03
	rst  $38                                         ; $5dd5: $ff
	ld   bc, $2302                                   ; $5dd6: $01 $02 $23
	nop                                              ; $5dd9: $00
	inc  e                                           ; $5dda: $1c
	ld   b, $05                                      ; $5ddb: $06 $05
	dec  b                                           ; $5ddd: $05
	ld   bc, $9e8c                                   ; $5dde: $01 $8c $9e
	adc  h                                           ; $5de1: $8c
	ld   d, d                                        ; $5de2: $52
	ld   [hl], c                                     ; $5de3: $71
	ld   l, l                                        ; $5de4: $6d
	rst  $38                                         ; $5de5: $ff
	rst  $38                                         ; $5de6: $ff
	dec  c                                           ; $5de7: $0d
	ld   d, b                                        ; $5de8: $50
	ld   l, l                                        ; $5de9: $6d
	ld   d, d                                        ; $5dea: $52
	ld   a, h                                        ; $5deb: $7c
	inc  b                                           ; $5dec: $04
	ld   a, l                                        ; $5ded: $7d
	ld   e, a                                        ; $5dee: $5f
	ld   l, [hl]                                     ; $5def: $6e
	rst  $38                                         ; $5df0: $ff
	rst  $38                                         ; $5df1: $ff
	dec  c                                           ; $5df2: $0d
	ld   h, a                                        ; $5df3: $67
	ld   h, b                                        ; $5df4: $60
	ld   d, [hl]                                     ; $5df5: $56
	sub  [hl]                                        ; $5df6: $96
	sbc  [hl]                                        ; $5df7: $9e
	ld   e, b                                        ; $5df8: $58
	inc  bc                                          ; $5df9: $03
	ld   c, a                                        ; $5dfa: $4f
	ld   a, l                                        ; $5dfb: $7d
	rst  $38                                         ; $5dfc: $ff
	rst  $38                                         ; $5dfd: $ff
	dec  c                                           ; $5dfe: $0d
	nop                                              ; $5dff: $00
	ld   a, [bc]                                     ; $5e00: $0a
	dec  c                                           ; $5e01: $0d
	nop                                              ; $5e02: $00
	nop                                              ; $5e03: $00
	rrca                                             ; $5e04: $0f
	nop                                              ; $5e05: $00
	ld   bc, $d306                                   ; $5e06: $01 $06 $d3
	ld   [de], a                                     ; $5e09: $12
	inc  e                                           ; $5e0a: $1c
	ld   b, $01                                      ; $5e0b: $06 $01
	ld   bc, $7701                                   ; $5e0d: $01 $01 $77
	ld   d, h                                        ; $5e10: $54
	sub  d                                           ; $5e11: $92
	sub  a                                           ; $5e12: $97
	ld   [bc], a                                     ; $5e13: $02
	inc  l                                           ; $5e14: $2c
	ld   e, e                                        ; $5e15: $5b
	inc  b                                           ; $5e16: $04
	sbc  [hl]                                        ; $5e17: $9e
	ld   e, a                                        ; $5e18: $5f
	ld   l, [hl]                                     ; $5e19: $6e
	ld   a, b                                        ; $5e1a: $78
	sbc  a                                           ; $5e1b: $9f
	dec  c                                           ; $5e1c: $0d
	ld   [hl], l                                     ; $5e1d: $75
	sub  b                                           ; $5e1e: $90
	sbc  [hl]                                        ; $5e1f: $9e
	ld   [bc], a                                     ; $5e20: $02
	sub  l                                           ; $5e21: $95
	inc  bc                                          ; $5e22: $03
	jp   c, Jump_064_6d65                            ; $5e23: $da $65 $6d

	ld   l, d                                        ; $5e26: $6a
	sbc  a                                           ; $5e27: $9f
	dec  c                                           ; $5e28: $0d
	nop                                              ; $5e29: $00
	ld   a, [bc]                                     ; $5e2a: $0a
	dec  c                                           ; $5e2b: $0d
	nop                                              ; $5e2c: $00
	nop                                              ; $5e2d: $00
	rrca                                             ; $5e2e: $0f
	nop                                              ; $5e2f: $00
	ld   bc, $d306                                   ; $5e30: $01 $06 $d3
	ld   [de], a                                     ; $5e33: $12
	inc  e                                           ; $5e34: $1c
	ld   b, $01                                      ; $5e35: $06 $01
	ld   bc, $8c01                                   ; $5e37: $01 $01 $8c
	ld   l, [hl]                                     ; $5e3a: $6e
	adc  h                                           ; $5e3b: $8c
	ld   l, [hl]                                     ; $5e3c: $6e
	sbc  [hl]                                        ; $5e3d: $9e
	ld   d, b                                        ; $5e3e: $50
	ld   l, l                                        ; $5e3f: $6d
	ld   d, d                                        ; $5e40: $52
	ld   a, c                                        ; $5e41: $79
	inc  bc                                          ; $5e42: $03
	ld   c, [hl]                                     ; $5e43: $4e
	ld   [hl], d                                     ; $5e44: $72
	ld   a, c                                        ; $5e45: $79
	ld   a, l                                        ; $5e46: $7d
	dec  c                                           ; $5e47: $0d
	dec  b                                           ; $5e48: $05
	cp   h                                           ; $5e49: $bc
	inc  b                                           ; $5e4a: $04
	ld   d, b                                        ; $5e4b: $50
	inc  bc                                          ; $5e4c: $03
	ld   [hl], b                                     ; $5e4d: $70
	ld   e, c                                        ; $5e4e: $59
	ld   [hl], c                                     ; $5e4f: $71
	ld   l, l                                        ; $5e50: $6d
	ld   a, b                                        ; $5e51: $78
	sbc  a                                           ; $5e52: $9f
	dec  c                                           ; $5e53: $0d
	nop                                              ; $5e54: $00
	ld   a, [bc]                                     ; $5e55: $0a
	dec  c                                           ; $5e56: $0d
	nop                                              ; $5e57: $00
	nop                                              ; $5e58: $00
	rrca                                             ; $5e59: $0f
	nop                                              ; $5e5a: $00
	ld   bc, $8623                                   ; $5e5b: $01 $23 $86
	inc  e                                           ; $5e5e: $1c
	ld   b, $01                                      ; $5e5f: $06 $01
	ld   bc, $5001                                   ; $5e61: $01 $01 $50
	ei                                               ; $5e64: $fb
	inc  bc                                          ; $5e65: $03
	ld   l, d                                        ; $5e66: $6a
	ld   [hl], c                                     ; $5e67: $71
	ld   l, l                                        ; $5e68: $6d
	sbc  [hl]                                        ; $5e69: $9e
	inc  bc                                          ; $5e6a: $03
	ld   l, d                                        ; $5e6b: $6a
	ld   [hl], c                                     ; $5e6c: $71
	ld   l, l                                        ; $5e6d: $6d
	rst  $38                                         ; $5e6e: $ff
	rst  $38                                         ; $5e6f: $ff
	dec  c                                           ; $5e70: $0d
	nop                                              ; $5e71: $00
	ld   a, [bc]                                     ; $5e72: $0a
	add  hl, de                                      ; $5e73: $19
	dec  b                                           ; $5e74: $05
	ld   [bc], a                                     ; $5e75: $02
	xor  h                                           ; $5e76: $ac
	push af                                          ; $5e77: $f5
	res  4, b                                        ; $5e78: $cb $a0
	ld   [bc], a                                     ; $5e7a: $02
	sub  l                                           ; $5e7b: $95
	ld   [hl], d                                     ; $5e7c: $72
	adc  a                                           ; $5e7d: $8f
	sbc  c                                           ; $5e7e: $99
	nop                                              ; $5e7f: $00
	nop                                              ; $5e80: $00
	ld   [bc], a                                     ; $5e81: $02
	sbc  d                                           ; $5e82: $9a
	ld   e, e                                        ; $5e83: $5b
	ld   e, e                                        ; $5e84: $5b
	sub  a                                           ; $5e85: $97
	ld   d, d                                        ; $5e86: $52
	and  b                                           ; $5e87: $a0
	ld   [bc], a                                     ; $5e88: $02
	jp   nz, $005d                                   ; $5e89: $c2 $5d $00

	ld   bc, $1907                                   ; $5e8c: $01 $07 $19
	inc  de                                          ; $5e8f: $13
	ld   [bc], a                                     ; $5e90: $02
	inc  bc                                          ; $5e91: $03
	ld   bc, $2000                                   ; $5e92: $01 $00 $20
	nop                                              ; $5e95: $00
	rlca                                             ; $5e96: $07
	ld   e, h                                        ; $5e97: $5c
	inc  d                                           ; $5e98: $14
	ld   [bc], a                                     ; $5e99: $02
	inc  bc                                          ; $5e9a: $03
	ld   bc, $2001                                   ; $5e9b: $01 $01 $20
	nop                                              ; $5e9e: $00
	ld   b, $a1                                      ; $5e9f: $06 $a1
	inc  d                                           ; $5ea1: $14
	inc  e                                           ; $5ea2: $1c
	ld   b, $03                                      ; $5ea3: $06 $03
	inc  bc                                          ; $5ea5: $03
	ld   bc, $f9a1                                   ; $5ea6: $01 $a1 $f9
	db   $10                                         ; $5ea9: $10
	ld   [hl], a                                     ; $5eaa: $77
	ld   d, h                                        ; $5eab: $54
	ld   h, l                                        ; $5eac: $65
	ld   l, l                                        ; $5ead: $6d
	ld   sp, hl                                      ; $5eae: $f9
	dec  c                                           ; $5eaf: $0d
	nop                                              ; $5eb0: $00
	ld   a, [bc]                                     ; $5eb1: $0a
	add  hl, de                                      ; $5eb2: $19
	dec  b                                           ; $5eb3: $05
	inc  bc                                          ; $5eb4: $03
	inc  b                                           ; $5eb5: $04
	ld   l, d                                        ; $5eb6: $6a
	and  b                                           ; $5eb7: $a0
	ld   [bc], a                                     ; $5eb8: $02
	sub  l                                           ; $5eb9: $95
	sbc  c                                           ; $5eba: $99
	nop                                              ; $5ebb: $00
	nop                                              ; $5ebc: $00
	inc  b                                           ; $5ebd: $04
	call nc, $02a0                                   ; $5ebe: $d4 $a0 $02
	sub  l                                           ; $5ec1: $95
	sbc  c                                           ; $5ec2: $99
	nop                                              ; $5ec3: $00
	ld   bc, $ae02                                   ; $5ec4: $01 $02 $ae
	and  b                                           ; $5ec7: $a0
	ld   [bc], a                                     ; $5ec8: $02
	sub  l                                           ; $5ec9: $95
	sbc  c                                           ; $5eca: $99
	nop                                              ; $5ecb: $00
	ld   [bc], a                                     ; $5ecc: $02
	rlca                                             ; $5ecd: $07
	ld   h, d                                        ; $5ece: $62
	inc  de                                          ; $5ecf: $13
	ld   [bc], a                                     ; $5ed0: $02
	inc  bc                                          ; $5ed1: $03
	ld   bc, $2000                                   ; $5ed2: $01 $00 $20
	nop                                              ; $5ed5: $00
	rlca                                             ; $5ed6: $07
	xor  l                                           ; $5ed7: $ad
	inc  de                                          ; $5ed8: $13
	ld   [bc], a                                     ; $5ed9: $02
	inc  bc                                          ; $5eda: $03
	ld   bc, $2001                                   ; $5edb: $01 $01 $20
	nop                                              ; $5ede: $00
	rlca                                             ; $5edf: $07
	or   $13                                         ; $5ee0: $f6 $13
	ld   [bc], a                                     ; $5ee2: $02
	inc  bc                                          ; $5ee3: $03
	ld   bc, $2002                                   ; $5ee4: $01 $02 $20
	nop                                              ; $5ee7: $00
	ld   b, $3b                                      ; $5ee8: $06 $3b
	inc  d                                           ; $5eea: $14
	rrca                                             ; $5eeb: $0f
	nop                                              ; $5eec: $00
	ld   bc, $060d                                   ; $5eed: $01 $0d $06
	nop                                              ; $5ef0: $00
	ld   bc, $f5ac                                   ; $5ef1: $01 $ac $f5
	bit  4, e                                        ; $5ef4: $cb $63
	and  c                                           ; $5ef6: $a1
	ld   a, h                                        ; $5ef7: $7c
	inc  b                                           ; $5ef8: $04
	ld   l, d                                        ; $5ef9: $6a
	ld   [hl], c                                     ; $5efa: $71
	ld   [hl], h                                     ; $5efb: $74
	dec  c                                           ; $5efc: $0d
	ld   d, d                                        ; $5efd: $52
	ld   d, d                                        ; $5efe: $52
	ld   e, c                                        ; $5eff: $59
	and  c                                           ; $5f00: $a1
	ld   h, [hl]                                     ; $5f01: $66
	ld   [hl], l                                     ; $5f02: $75
	inc  bc                                          ; $5f03: $03
	ld   bc, $7552                                   ; $5f04: $01 $52 $75
	ld   h, a                                        ; $5f07: $67
	sub  [hl]                                        ; $5f08: $96
	ld   a, e                                        ; $5f09: $7b
	sbc  a                                           ; $5f0a: $9f
	dec  c                                           ; $5f0b: $0d
	nop                                              ; $5f0c: $00
	ld   a, [bc]                                     ; $5f0d: $0a
	inc  e                                           ; $5f0e: $1c
	ld   b, $01                                      ; $5f0f: $06 $01
	ld   bc, $5801                                   ; $5f11: $01 $01 $58
	ld   [hl], c                                     ; $5f14: $71
	sbc  [hl]                                        ; $5f15: $9e
	ld   l, e                                        ; $5f16: $6b
	ld   d, h                                        ; $5f17: $54
	ld   e, c                                        ; $5f18: $59
	ld   sp, hl                                      ; $5f19: $f9
	dec  c                                           ; $5f1a: $0d
	ld   [bc], a                                     ; $5f1b: $02
	dec  c                                           ; $5f1c: $0d
	inc  b                                           ; $5f1d: $04
	halt                                             ; $5f1e: $76
	ld   a, h                                        ; $5f1f: $7c
	inc  b                                           ; $5f20: $04
	xor  d                                           ; $5f21: $aa
	dec  b                                           ; $5f22: $05
	inc  a                                           ; $5f23: $3c
	ld   h, l                                        ; $5f24: $65
	ld   [hl], l                                     ; $5f25: $75
	dec  c                                           ; $5f26: $0d
	inc  bc                                          ; $5f27: $03
	ld   c, $5f                                      ; $5f28: $0e $5f
	ld   l, l                                        ; $5f2a: $6d
	ld   e, c                                        ; $5f2b: $59
	sub  a                                           ; $5f2c: $97
	ld   e, c                                        ; $5f2d: $59
	ld   a, b                                        ; $5f2e: $78
	ld   sp, hl                                      ; $5f2f: $f9
	dec  c                                           ; $5f30: $0d
	nop                                              ; $5f31: $00
	ld   a, [bc]                                     ; $5f32: $0a
	ld   b, $c5                                      ; $5f33: $06 $c5
	inc  d                                           ; $5f35: $14
	rrca                                             ; $5f36: $0f
	nop                                              ; $5f37: $00
	ld   bc, $060d                                   ; $5f38: $01 $0d $06
	nop                                              ; $5f3b: $00
	ld   bc, $f5ac                                   ; $5f3c: $01 $ac $f5
	bit  4, e                                        ; $5f3f: $cb $63
	and  c                                           ; $5f41: $a1
	ld   a, h                                        ; $5f42: $7c
	inc  b                                           ; $5f43: $04
	call nc, Call_064_7471                           ; $5f44: $d4 $71 $74
	dec  c                                           ; $5f47: $0d
	ld   h, a                                        ; $5f48: $67
	ld   h, d                                        ; $5f49: $62
	ld   e, l                                        ; $5f4a: $5d
	ld   e, e                                        ; $5f4b: $5b
	sbc  d                                           ; $5f4c: $9a
	ld   d, d                                        ; $5f4d: $52
	ld   [hl], l                                     ; $5f4e: $75
	ld   h, a                                        ; $5f4f: $67
	sub  [hl]                                        ; $5f50: $96
	ld   a, e                                        ; $5f51: $7b
	sbc  a                                           ; $5f52: $9f
	dec  c                                           ; $5f53: $0d
	nop                                              ; $5f54: $00
	ld   a, [bc]                                     ; $5f55: $0a
	inc  e                                           ; $5f56: $1c
	ld   b, $05                                      ; $5f57: $06 $05
	dec  b                                           ; $5f59: $05
	ld   bc, $a178                                   ; $5f5a: $01 $78 $a1
	ld   l, [hl]                                     ; $5f5d: $6e
	sub  [hl]                                        ; $5f5e: $96
	inc  bc                                          ; $5f5f: $03
	di                                               ; $5f60: $f3
	inc  bc                                          ; $5f61: $03
	sbc  c                                           ; $5f62: $99
	sbc  a                                           ; $5f63: $9f
	dec  c                                           ; $5f64: $0d
	ld   l, e                                        ; $5f65: $6b
	and  c                                           ; $5f66: $a1
	ld   a, b                                        ; $5f67: $78
	ld   h, c                                        ; $5f68: $61
	halt                                             ; $5f69: $76
	ld   [bc], a                                     ; $5f6a: $02
	sbc  l                                           ; $5f6b: $9d
	sbc  l                                           ; $5f6c: $9d
	sbc  d                                           ; $5f6d: $9a
	ld   l, l                                        ; $5f6e: $6d
	ld   a, h                                        ; $5f6f: $7c
	dec  c                                           ; $5f70: $0d
	ld   a, l                                        ; $5f71: $7d
	ld   h, [hl]                                     ; $5f72: $66
	adc  a                                           ; $5f73: $8f
	ld   [hl], h                                     ; $5f74: $74
	ld   l, [hl]                                     ; $5f75: $6e
	sub  [hl]                                        ; $5f76: $96
	rst  $38                                         ; $5f77: $ff
	rst  $38                                         ; $5f78: $ff
	dec  c                                           ; $5f79: $0d
	nop                                              ; $5f7a: $00
	ld   a, [bc]                                     ; $5f7b: $0a
	ld   b, $c5                                      ; $5f7c: $06 $c5
	inc  d                                           ; $5f7e: $14
	rrca                                             ; $5f7f: $0f
	nop                                              ; $5f80: $00
	ld   bc, $060d                                   ; $5f81: $01 $0d $06
	nop                                              ; $5f84: $00
	ld   bc, $f5ac                                   ; $5f85: $01 $ac $f5
	bit  4, e                                        ; $5f88: $cb $63
	and  c                                           ; $5f8a: $a1
	ld   a, h                                        ; $5f8b: $7c
	ld   [bc], a                                     ; $5f8c: $02
	xor  [hl]                                        ; $5f8d: $ae
	ld   [hl], c                                     ; $5f8e: $71
	ld   [hl], h                                     ; $5f8f: $74
	dec  c                                           ; $5f90: $0d
	sbc  b                                           ; $5f91: $98
	sbc  b                                           ; $5f92: $98
	ld   h, l                                        ; $5f93: $65
	ld   d, d                                        ; $5f94: $52
	ld   [hl], l                                     ; $5f95: $75
	ld   h, a                                        ; $5f96: $67
	sub  [hl]                                        ; $5f97: $96
	ld   a, e                                        ; $5f98: $7b
	sbc  a                                           ; $5f99: $9f
	dec  c                                           ; $5f9a: $0d
	nop                                              ; $5f9b: $00
	ld   a, [bc]                                     ; $5f9c: $0a
	inc  e                                           ; $5f9d: $1c
	ld   b, $01                                      ; $5f9e: $06 $01
	ld   bc, $a301                                   ; $5fa0: $01 $01 $a3
	ret  nc                                          ; $5fa3: $d0

	ret  nc                                          ; $5fa4: $d0

	ret  nc                                          ; $5fa5: $d0

	ret  nc                                          ; $5fa6: $d0

	rst  $38                                         ; $5fa7: $ff
	rst  $38                                         ; $5fa8: $ff
	dec  c                                           ; $5fa9: $0d
	ld   l, a                                        ; $5faa: $6f
	sub  c                                           ; $5fab: $91
	and  c                                           ; $5fac: $a1
	halt                                             ; $5fad: $76
	db   $e3                                         ; $5fae: $e3
	cp   b                                           ; $5faf: $b8
	inc  bc                                          ; $5fb0: $03
	ld   l, d                                        ; $5fb1: $6a
	ld   [hl], c                                     ; $5fb2: $71
	ld   [hl], h                                     ; $5fb3: $74
	sbc  c                                           ; $5fb4: $99
	ld   e, c                                        ; $5fb5: $59
	sub  a                                           ; $5fb6: $97
	ld   h, [hl]                                     ; $5fb7: $66
	sub  c                                           ; $5fb8: $91
	dec  c                                           ; $5fb9: $0d
	ld   a, e                                        ; $5fba: $7b
	ld   d, [hl]                                     ; $5fbb: $56
	ld   e, c                                        ; $5fbc: $59
	ld   sp, hl                                      ; $5fbd: $f9
	dec  c                                           ; $5fbe: $0d
	nop                                              ; $5fbf: $00
	ld   a, [bc]                                     ; $5fc0: $0a
	ld   b, $c5                                      ; $5fc1: $06 $c5
	inc  d                                           ; $5fc3: $14
	inc  e                                           ; $5fc4: $1c
	ld   b, $04                                      ; $5fc5: $06 $04
	inc  b                                           ; $5fc7: $04
	ld   bc, $a178                                   ; $5fc8: $01 $78 $a1
	ld   l, [hl]                                     ; $5fcb: $6e
	sub  [hl]                                        ; $5fcc: $96
	rst  $38                                         ; $5fcd: $ff
	rst  $38                                         ; $5fce: $ff
	dec  c                                           ; $5fcf: $0d
	ld   d, b                                        ; $5fd0: $50
	and  c                                           ; $5fd1: $a1
	adc  h                                           ; $5fd2: $8c
	sbc  b                                           ; $5fd3: $98
	cp   c                                           ; $5fd4: $b9
	rst  $28                                         ; $5fd5: $ef
	cp   c                                           ; $5fd6: $b9
	rst  $28                                         ; $5fd7: $ef
	ld   [bc], a                                     ; $5fd8: $02
	sub  l                                           ; $5fd9: $95
	sbc  c                                           ; $5fda: $99
	ld   a, b                                        ; $5fdb: $78
	sub  [hl]                                        ; $5fdc: $96
	rst  $38                                         ; $5fdd: $ff
	rst  $38                                         ; $5fde: $ff
	dec  c                                           ; $5fdf: $0d
	nop                                              ; $5fe0: $00
	ld   a, [bc]                                     ; $5fe1: $0a
	ld   b, $c5                                      ; $5fe2: $06 $c5
	inc  d                                           ; $5fe4: $14
	rrca                                             ; $5fe5: $0f
	nop                                              ; $5fe6: $00
	ld   bc, $0201                                   ; $5fe7: $01 $01 $02
	sbc  d                                           ; $5fea: $9a
	ld   e, e                                        ; $5feb: $5b
	ld   e, e                                        ; $5fec: $5b
	sub  a                                           ; $5fed: $97
	ld   d, d                                        ; $5fee: $52
	ld   a, l                                        ; $5fef: $7d
	ld   a, b                                        ; $5ff0: $78
	ld   d, d                                        ; $5ff1: $52
	and  c                                           ; $5ff2: $a1
	ld   [hl], l                                     ; $5ff3: $75
	ld   h, a                                        ; $5ff4: $67
	ld   e, c                                        ; $5ff5: $59
	ld   sp, hl                                      ; $5ff6: $f9
	dec  c                                           ; $5ff7: $0d
	nop                                              ; $5ff8: $00
	ld   a, [bc]                                     ; $5ff9: $0a
	inc  e                                           ; $5ffa: $1c
	ld   b, $01                                      ; $5ffb: $06 $01
	ld   bc, $0301                                   ; $5ffd: $01 $01 $03
	ld   l, d                                        ; $6000: $6a
	ld   d, d                                        ; $6001: $52
	sub  b                                           ; $6002: $90
	and  c                                           ; $6003: $a1
	ld   l, [hl]                                     ; $6004: $6e
	ld   [hl], c                                     ; $6005: $71
	ld   l, l                                        ; $6006: $6d
	sub  a                                           ; $6007: $97
	dec  c                                           ; $6008: $0d
	inc  b                                           ; $6009: $04
	ld   c, c                                        ; $600a: $49
	ld   l, [hl]                                     ; $600b: $6e
	ld   [hl], c                                     ; $600c: $71
	ld   [hl], h                                     ; $600d: $74
	add  hl, hl                                      ; $600e: $29
	dec  h                                           ; $600f: $25
	ld   l, [hl]                                     ; $6010: $6e
	ld   l, d                                        ; $6011: $6a
	sbc  a                                           ; $6012: $9f
	dec  c                                           ; $6013: $0d
	ld   [bc], a                                     ; $6014: $02
	sbc  d                                           ; $6015: $9a
	ld   e, e                                        ; $6016: $5b
	ld   e, e                                        ; $6017: $5b
	sub  a                                           ; $6018: $97
	ld   d, d                                        ; $6019: $52
	ld   a, l                                        ; $601a: $7d
	sbc  [hl]                                        ; $601b: $9e
	inc  b                                           ; $601c: $04
	dec  c                                           ; $601d: $0d
	ld   a, c                                        ; $601e: $79
	ld   [bc], a                                     ; $601f: $02
	jr   z, jr_064_6074                              ; $6020: $28 $52

	ld   l, h                                        ; $6022: $6c
	sbc  a                                           ; $6023: $9f
	dec  c                                           ; $6024: $0d
	nop                                              ; $6025: $00
	ld   a, [bc]                                     ; $6026: $0a
	ld   b, $c5                                      ; $6027: $06 $c5
	inc  d                                           ; $6029: $14
	inc  e                                           ; $602a: $1c
	ld   b, $01                                      ; $602b: $06 $01
	ld   bc, $7801                                   ; $602d: $01 $01 $78
	and  c                                           ; $6030: $a1
	ld   l, [hl]                                     ; $6031: $6e
	ld   sp, hl                                      ; $6032: $f9
	dec  c                                           ; $6033: $0d
	inc  bc                                          ; $6034: $03
	ld   l, d                                        ; $6035: $6a
	add  a                                           ; $6036: $87
	ld   h, a                                        ; $6037: $67
	ld   e, h                                        ; $6038: $5c
	ld   [hl], l                                     ; $6039: $75
	inc  bc                                          ; $603a: $03
	and  l                                           ; $603b: $a5
	sub  b                                           ; $603c: $90
	inc  bc                                          ; $603d: $03
	add  b                                           ; $603e: $80
	ld   a, b                                        ; $603f: $78
	ld   d, d                                        ; $6040: $52
	ld   e, c                                        ; $6041: $59
	ld   sp, hl                                      ; $6042: $f9
	dec  c                                           ; $6043: $0d
	ret  nc                                          ; $6044: $d0

	ret  nc                                          ; $6045: $d0

	ret  nc                                          ; $6046: $d0

	ret  nc                                          ; $6047: $d0

	ret  nc                                          ; $6048: $d0

	rst  $38                                         ; $6049: $ff
	rst  $38                                         ; $604a: $ff
	dec  c                                           ; $604b: $0d
	nop                                              ; $604c: $00
	ld   a, [bc]                                     ; $604d: $0a
	rlca                                             ; $604e: $07
	ld   sp, $0315                                   ; $604f: $31 $15 $03
	ld   d, $01                                      ; $6052: $16 $01
	cp   [hl]                                        ; $6054: $be
	dec  h                                           ; $6055: $25
	nop                                              ; $6056: $00
	inc  e                                           ; $6057: $1c
	ld   b, $00                                      ; $6058: $06 $00
	nop                                              ; $605a: $00
	ld   bc, $9166                                   ; $605b: $01 $66 $91
	ld   d, b                                        ; $605e: $50
	sbc  [hl]                                        ; $605f: $9e
	ld   l, e                                        ; $6060: $6b
	sbc  e                                           ; $6061: $9b
	ld   l, e                                        ; $6062: $6b
	sbc  e                                           ; $6063: $9b
	ld   [bc], a                                     ; $6064: $02
	or   l                                           ; $6065: $b5
	sbc  c                                           ; $6066: $99
	ld   e, c                                        ; $6067: $59
	sbc  a                                           ; $6068: $9f
	dec  c                                           ; $6069: $0d
	nop                                              ; $606a: $00
	ld   a, [bc]                                     ; $606b: $0a
	dec  c                                           ; $606c: $0d
	nop                                              ; $606d: $00
	nop                                              ; $606e: $00
	rrca                                             ; $606f: $0f
	nop                                              ; $6070: $00
	ld   bc, $020c                                   ; $6071: $01 $0c $02

jr_064_6074:
	ld   c, $06                                      ; $6074: $0e $06
	inc  e                                           ; $6076: $1c
	ld   b, $01                                      ; $6077: $06 $01
	ld   bc, $0201                                   ; $6079: $01 $01 $02
	and  l                                           ; $607c: $a5
	inc  b                                           ; $607d: $04
	xor  d                                           ; $607e: $aa
	ld   a, l                                        ; $607f: $7d
	dec  b                                           ; $6080: $05
	inc  de                                          ; $6081: $13
	ld   h, l                                        ; $6082: $65
	ld   e, c                                        ; $6083: $59
	ld   [hl], c                                     ; $6084: $71
	ld   l, l                                        ; $6085: $6d
	ld   e, c                                        ; $6086: $59
	ld   sp, hl                                      ; $6087: $f9
	dec  c                                           ; $6088: $0d
	nop                                              ; $6089: $00
	dec  b                                           ; $608a: $05
	add  b                                           ; $608b: $80
	adc  h                                           ; $608c: $8c
	ld   bc, $0001                                   ; $608d: $01 $01 $00
	ld   bc, $9e8c                                   ; $6090: $01 $8c $9e
	inc  b                                           ; $6093: $04
	dec  c                                           ; $6094: $0d
	ld   [bc], a                                     ; $6095: $02
	sub  [hl]                                        ; $6096: $96
	inc  b                                           ; $6097: $04
	ld   b, l                                        ; $6098: $45
	inc  b                                           ; $6099: $04
	ld   a, [bc]                                     ; $609a: $0a
	ld   a, h                                        ; $609b: $7c
	dec  b                                           ; $609c: $05
	pop  de                                          ; $609d: $d1
	ld   d, d                                        ; $609e: $52
	inc  bc                                          ; $609f: $03
	add  b                                           ; $60a0: $80
	ld   a, c                                        ; $60a1: $79
	ld   [hl], l                                     ; $60a2: $75
	sub  b                                           ; $60a3: $90
	dec  c                                           ; $60a4: $0d
	ld   h, l                                        ; $60a5: $65
	ld   [hl], h                                     ; $60a6: $74
	ld   e, l                                        ; $60a7: $5d
	sbc  d                                           ; $60a8: $9a
	sub  [hl]                                        ; $60a9: $96
	ld   a, b                                        ; $60aa: $78
	sbc  a                                           ; $60ab: $9f
	dec  c                                           ; $60ac: $0d
	nop                                              ; $60ad: $00
	ld   a, [bc]                                     ; $60ae: $0a
	dec  c                                           ; $60af: $0d
	nop                                              ; $60b0: $00
	nop                                              ; $60b1: $00
	rrca                                             ; $60b2: $0f
	nop                                              ; $60b3: $00
	ld   bc, $1e09                                   ; $60b4: $01 $09 $1e
	add  hl, hl                                      ; $60b7: $29
	nop                                              ; $60b8: $00
	nop                                              ; $60b9: $00
	inc  e                                           ; $60ba: $1c
	ld   b, $01                                      ; $60bb: $06 $01
	ld   bc, $6601                                   ; $60bd: $01 $01 $66
	sub  c                                           ; $60c0: $91
	sbc  [hl]                                        ; $60c1: $9e
	inc  b                                           ; $60c2: $04
	adc  c                                           ; $60c3: $89
	ld   h, d                                        ; $60c4: $62
	ld   a, b                                        ; $60c5: $78
	ld   h, l                                        ; $60c6: $65
	ld   e, d                                        ; $60c7: $5a
	ld   [hl], h                                     ; $60c8: $74
	sub  a                                           ; $60c9: $97
	dec  c                                           ; $60ca: $0d
	add  b                                           ; $60cb: $80
	halt                                             ; $60cc: $76
	ld   [hl], c                                     ; $60cd: $71
	dec  b                                           ; $60ce: $05
	cp   c                                           ; $60cf: $b9
	sbc  b                                           ; $60d0: $98
	ld   h, a                                        ; $60d1: $67
	sbc  c                                           ; $60d2: $99
	ld   e, c                                        ; $60d3: $59
	sbc  a                                           ; $60d4: $9f
	dec  c                                           ; $60d5: $0d
	nop                                              ; $60d6: $00
	ld   a, [bc]                                     ; $60d7: $0a
	dec  c                                           ; $60d8: $0d
	nop                                              ; $60d9: $00
	nop                                              ; $60da: $00
	rrca                                             ; $60db: $0f
	nop                                              ; $60dc: $00
	ld   bc, $9b23                                   ; $60dd: $01 $23 $9b
	inc  e                                           ; $60e0: $1c
	ld   b, $01                                      ; $60e1: $06 $01
	ld   bc, $8301                                   ; $60e3: $01 $01 $83
	ld   d, h                                        ; $60e6: $54
	rst  $38                                         ; $60e7: $ff
	rst  $38                                         ; $60e8: $ff
	dec  c                                           ; $60e9: $0d
	sub  d                                           ; $60ea: $92
	ld   [hl], c                                     ; $60eb: $71
	ld   a, a                                        ; $60ec: $7f
	sbc  [hl]                                        ; $60ed: $9e
	inc  b                                           ; $60ee: $04
	dec  c                                           ; $60ef: $0d
	inc  b                                           ; $60f0: $04
	dec  de                                          ; $60f1: $1b
	ld   e, c                                        ; $60f2: $59
	ld   h, a                                        ; $60f3: $67
	halt                                             ; $60f4: $76
	dec  c                                           ; $60f5: $0d
	nop                                              ; $60f6: $00
	ld   sp, $2040                                   ; $60f7: $31 $40 $20
	inc  bc                                          ; $60fa: $03
	jr   nz, jr_064_60fe                             ; $60fb: $20 $01

	inc  d                                           ; $60fd: $14

jr_064_60fe:
	add  hl, hl                                      ; $60fe: $29
	nop                                              ; $60ff: $00
	ld   bc, $a102                                   ; $6100: $01 $02 $a1
	inc  bc                                          ; $6103: $03
	and  b                                           ; $6104: $a0
	ld   l, a                                        ; $6105: $6f
	ld   e, d                                        ; $6106: $5a
	ld   d, d                                        ; $6107: $52
	ld   d, d                                        ; $6108: $52
	ld   l, d                                        ; $6109: $6a
	sbc  a                                           ; $610a: $9f
	dec  c                                           ; $610b: $0d
	nop                                              ; $610c: $00
	ld   a, [bc]                                     ; $610d: $0a
	ld   b, $88                                      ; $610e: $06 $88
	dec  d                                           ; $6110: $15
	inc  e                                           ; $6111: $1c
	ld   b, $04                                      ; $6112: $06 $04
	inc  b                                           ; $6114: $04
	ld   bc, $5078                                   ; $6115: $01 $78 $50
	sbc  [hl]                                        ; $6118: $9e
	ld   [$ff00], sp                                 ; $6119: $08 $00 $ff
	rst  $38                                         ; $611c: $ff
	dec  c                                           ; $611d: $0d
	ld   l, a                                        ; $611e: $6f
	sub  l                                           ; $611f: $95
	ld   [hl], c                                     ; $6120: $71
	halt                                             ; $6121: $76
	ld   [bc], a                                     ; $6122: $02
	jp   nz, $7452                                   ; $6123: $c2 $52 $74

	ld   d, d                                        ; $6126: $52
	ld   d, d                                        ; $6127: $52
	ld   e, c                                        ; $6128: $59
	ld   sp, hl                                      ; $6129: $f9
	dec  c                                           ; $612a: $0d
	nop                                              ; $612b: $00
	ld   a, [bc]                                     ; $612c: $0a
	ld   bc, $0358                                   ; $612d: $01 $58 $03
	ld   c, a                                        ; $6130: $4f
	ld   [hl], c                                     ; $6131: $71
	ld   [hl], h                                     ; $6132: $74
	sub  [hl]                                        ; $6133: $96
	ld   d, a                                        ; $6134: $57
	rst  $38                                         ; $6135: $ff
	rst  $38                                         ; $6136: $ff
	dec  c                                           ; $6137: $0d
	ld   [hl], a                                     ; $6138: $77
	and  c                                           ; $6139: $a1
	ld   a, b                                        ; $613a: $78
	inc  bc                                          ; $613b: $03
	ld   l, [hl]                                     ; $613c: $6e
	ld   e, d                                        ; $613d: $5a
	sbc  [hl]                                        ; $613e: $9e
	ld   [bc], a                                     ; $613f: $02
	sbc  d                                           ; $6140: $9a
	ld   e, e                                        ; $6141: $5b
	ld   a, b                                        ; $6142: $78
	and  c                                           ; $6143: $a1
	ld   l, [hl]                                     ; $6144: $6e
	ld   sp, hl                                      ; $6145: $f9
	dec  c                                           ; $6146: $0d
	nop                                              ; $6147: $00
	ld   a, [bc]                                     ; $6148: $0a
	add  hl, de                                      ; $6149: $19
	dec  b                                           ; $614a: $05
	inc  bc                                          ; $614b: $03
	xor  h                                           ; $614c: $ac
	push af                                          ; $614d: $f5
	bit  4, e                                        ; $614e: $cb $63
	and  c                                           ; $6150: $a1
	adc  l                                           ; $6151: $8d
	ld   l, l                                        ; $6152: $6d
	ld   d, d                                        ; $6153: $52
	ld   a, b                                        ; $6154: $78
	inc  bc                                          ; $6155: $03
	add  d                                           ; $6156: $82
	nop                                              ; $6157: $00
	nop                                              ; $6158: $00
	inc  bc                                          ; $6159: $03
	sub  h                                           ; $615a: $94
	inc  b                                           ; $615b: $04
	sbc  [hl]                                        ; $615c: $9e
	and  b                                           ; $615d: $a0
	inc  b                                           ; $615e: $04
	sbc  [hl]                                        ; $615f: $9e
	ld   e, c                                        ; $6160: $59
	ld   [hl], c                                     ; $6161: $71
	ld   [hl], h                                     ; $6162: $74
	ld   e, l                                        ; $6163: $5d
	sbc  d                                           ; $6164: $9a
	sbc  c                                           ; $6165: $99
	inc  bc                                          ; $6166: $03
	add  d                                           ; $6167: $82
	nop                                              ; $6168: $00
	ld   bc, $6e03                                   ; $6169: $01 $03 $6e
	ld   [bc], a                                     ; $616c: $02
	db   $fc                                         ; $616d: $fc
	ld   a, b                                        ; $616e: $78
	sub  a                                           ; $616f: $97
	inc  bc                                          ; $6170: $03
	xor  c                                           ; $6171: $a9
	ld   [hl], l                                     ; $6172: $75
	sub  b                                           ; $6173: $90
	nop                                              ; $6174: $00
	ld   [bc], a                                     ; $6175: $02
	rlca                                             ; $6176: $07
	dec  bc                                          ; $6177: $0b
	ld   d, $02                                      ; $6178: $16 $02
	inc  bc                                          ; $617a: $03
	ld   bc, $2000                                   ; $617b: $01 $00 $20
	nop                                              ; $617e: $00
	rlca                                             ; $617f: $07
	ld   c, l                                        ; $6180: $4d
	ld   d, $02                                      ; $6181: $16 $02
	inc  bc                                          ; $6183: $03
	ld   bc, $2001                                   ; $6184: $01 $01 $20
	nop                                              ; $6187: $00
	rlca                                             ; $6188: $07
	adc  [hl]                                        ; $6189: $8e
	ld   d, $02                                      ; $618a: $16 $02
	inc  bc                                          ; $618c: $03
	ld   bc, $2002                                   ; $618d: $01 $02 $20
	nop                                              ; $6190: $00
	ld   b, $cd                                      ; $6191: $06 $cd
	ld   d, $0f                                      ; $6193: $16 $0f
	nop                                              ; $6195: $00
	ld   bc, $ac01                                   ; $6196: $01 $01 $ac
	push af                                          ; $6199: $f5
	bit  4, e                                        ; $619a: $cb $63
	and  c                                           ; $619c: $a1
	adc  l                                           ; $619d: $8d
	ld   l, l                                        ; $619e: $6d
	ld   d, d                                        ; $619f: $52
	ld   a, b                                        ; $61a0: $78
	inc  bc                                          ; $61a1: $03
	add  d                                           ; $61a2: $82
	ld   [hl], l                                     ; $61a3: $75
	ld   h, a                                        ; $61a4: $67
	ld   a, e                                        ; $61a5: $7b
	sbc  a                                           ; $61a6: $9f
	dec  c                                           ; $61a7: $0d
	nop                                              ; $61a8: $00
	ld   a, [bc]                                     ; $61a9: $0a
	inc  e                                           ; $61aa: $1c
	ld   b, $04                                      ; $61ab: $06 $04
	inc  b                                           ; $61ad: $04
	ld   bc, $8686                                   ; $61ae: $01 $86 $86
	rst  $38                                         ; $61b1: $ff
	rst  $38                                         ; $61b2: $ff
	ld   d, h                                        ; $61b3: $54
	sbc  d                                           ; $61b4: $9a
	ld   h, l                                        ; $61b5: $65
	ld   d, d                                        ; $61b6: $52
	ld   h, c                                        ; $61b7: $61
	halt                                             ; $61b8: $76
	dec  c                                           ; $61b9: $0d
	ld   [bc], a                                     ; $61ba: $02
	sbc  l                                           ; $61bb: $9d
	ld   [hl], c                                     ; $61bc: $71
	ld   [hl], h                                     ; $61bd: $74
	ld   e, l                                        ; $61be: $5d
	sbc  d                                           ; $61bf: $9a
	sbc  c                                           ; $61c0: $99
	ld   h, [hl]                                     ; $61c1: $66
	sub  c                                           ; $61c2: $91
	ld   a, e                                        ; $61c3: $7b
	ld   d, [hl]                                     ; $61c4: $56
	ld   e, c                                        ; $61c5: $59
	rst  $38                                         ; $61c6: $ff
	rst  $38                                         ; $61c7: $ff
	dec  c                                           ; $61c8: $0d
	or   [hl]                                        ; $61c9: $b6
	push af                                          ; $61ca: $f5
	xor  [hl]                                        ; $61cb: $ae
	rst  $20                                         ; $61cc: $e7
	ei                                               ; $61cd: $fb
	ld   a, b                                        ; $61ce: $78
	sbc  a                                           ; $61cf: $9f
	dec  c                                           ; $61d0: $0d
	nop                                              ; $61d1: $00
	ld   a, [bc]                                     ; $61d2: $0a
	ld   b, $f1                                      ; $61d3: $06 $f1
	ld   d, $0f                                      ; $61d5: $16 $0f
	nop                                              ; $61d7: $00
	ld   bc, $6b01                                   ; $61d8: $01 $01 $6b
	ld   d, h                                        ; $61db: $54
	ld   [hl], l                                     ; $61dc: $75
	ld   h, a                                        ; $61dd: $67
	ld   a, e                                        ; $61de: $7b
	rst  $38                                         ; $61df: $ff
	rst  $38                                         ; $61e0: $ff
	dec  c                                           ; $61e1: $0d
	inc  bc                                          ; $61e2: $03
	sub  h                                           ; $61e3: $94
	inc  b                                           ; $61e4: $04
	sbc  [hl]                                        ; $61e5: $9e
	and  b                                           ; $61e6: $a0
	inc  b                                           ; $61e7: $04
	sbc  [hl]                                        ; $61e8: $9e
	ld   e, c                                        ; $61e9: $59
	ld   [hl], c                                     ; $61ea: $71
	ld   [hl], h                                     ; $61eb: $74
	ld   e, l                                        ; $61ec: $5d
	sbc  d                                           ; $61ed: $9a
	sbc  c                                           ; $61ee: $99
	inc  bc                                          ; $61ef: $03
	add  d                                           ; $61f0: $82
	ld   e, c                                        ; $61f1: $59
	sub  b                                           ; $61f2: $90
	dec  c                                           ; $61f3: $0d
	inc  b                                           ; $61f4: $04
	dec  hl                                          ; $61f5: $2b
	sbc  d                                           ; $61f6: $9a
	adc  h                                           ; $61f7: $8c
	ld   l, c                                        ; $61f8: $69
	and  c                                           ; $61f9: $a1
	sbc  a                                           ; $61fa: $9f
	dec  c                                           ; $61fb: $0d
	nop                                              ; $61fc: $00
	ld   a, [bc]                                     ; $61fd: $0a
	inc  e                                           ; $61fe: $1c
	ld   b, $00                                      ; $61ff: $06 $00
	nop                                              ; $6201: $00
	ld   bc, $5483                                   ; $6202: $01 $83 $54
	and  c                                           ; $6205: $a1
	rst  $38                                         ; $6206: $ff
	rst  $38                                         ; $6207: $ff
	ld   l, e                                        ; $6208: $6b
	and  c                                           ; $6209: $a1
	ld   a, b                                        ; $620a: $78
	sub  b                                           ; $620b: $90
	and  c                                           ; $620c: $a1
	ld   e, c                                        ; $620d: $59
	ld   a, e                                        ; $620e: $7b
	rst  $38                                         ; $620f: $ff
	rst  $38                                         ; $6210: $ff
	dec  c                                           ; $6211: $0d
	nop                                              ; $6212: $00
	ld   a, [bc]                                     ; $6213: $0a
	ld   b, $f1                                      ; $6214: $06 $f1
	ld   d, $0f                                      ; $6216: $16 $0f
	nop                                              ; $6218: $00
	ld   bc, $0301                                   ; $6219: $01 $01 $03
	ld   l, [hl]                                     ; $621c: $6e
	ld   [bc], a                                     ; $621d: $02
	db   $fc                                         ; $621e: $fc
	ld   a, b                                        ; $621f: $78
	sub  a                                           ; $6220: $97
	inc  bc                                          ; $6221: $03
	xor  c                                           ; $6222: $a9
	ld   [hl], l                                     ; $6223: $75
	sub  b                                           ; $6224: $90
	ld   d, d                                        ; $6225: $52
	ld   d, d                                        ; $6226: $52
	ld   [hl], l                                     ; $6227: $75
	ld   h, a                                        ; $6228: $67
	sbc  a                                           ; $6229: $9f
	dec  c                                           ; $622a: $0d
	nop                                              ; $622b: $00
	ld   a, [bc]                                     ; $622c: $0a
	inc  e                                           ; $622d: $1c
	ld   b, $05                                      ; $622e: $06 $05
	dec  b                                           ; $6230: $05
	ld   bc, $5258                                   ; $6231: $01 $58 $52
	ld   e, b                                        ; $6234: $58
	ld   d, d                                        ; $6235: $52
	rst  $38                                         ; $6236: $ff
	rst  $38                                         ; $6237: $ff
	dec  c                                           ; $6238: $0d
	ld   l, e                                        ; $6239: $6b
	ld   d, h                                        ; $623a: $54
	ld   d, d                                        ; $623b: $52
	ld   d, h                                        ; $623c: $54
	ld   a, h                                        ; $623d: $7c
	ld   [hl], c                                     ; $623e: $71
	ld   [hl], h                                     ; $623f: $74
	inc  bc                                          ; $6240: $03
	ld   l, [hl]                                     ; $6241: $6e
	ld   a, c                                        ; $6242: $79
	dec  c                                           ; $6243: $0d
	ld   e, e                                        ; $6244: $5b
	sub  a                                           ; $6245: $97
	sbc  l                                           ; $6246: $9d
	sbc  d                                           ; $6247: $9a
	sbc  c                                           ; $6248: $99
	and  c                                           ; $6249: $a1
	ld   h, [hl]                                     ; $624a: $66
	sub  c                                           ; $624b: $91
	ld   a, b                                        ; $624c: $78
	ld   d, d                                        ; $624d: $52
	ld   e, c                                        ; $624e: $59
	ld   sp, hl                                      ; $624f: $f9
	dec  c                                           ; $6250: $0d
	nop                                              ; $6251: $00
	ld   a, [bc]                                     ; $6252: $0a
	ld   b, $f1                                      ; $6253: $06 $f1
	ld   d, $1c                                      ; $6255: $16 $1c
	ld   b, $07                                      ; $6257: $06 $07
	rlca                                             ; $6259: $07
	ld   bc, $d0d0                                   ; $625a: $01 $d0 $d0
	ret  nc                                          ; $625d: $d0

	rst  $38                                         ; $625e: $ff
	rst  $38                                         ; $625f: $ff
	ld   d, d                                        ; $6260: $52
	ld   e, e                                        ; $6261: $5b
	ld   a, b                                        ; $6262: $78
	sbc  b                                           ; $6263: $98
	ld   l, [hl]                                     ; $6264: $6e
	ld   [hl], c                                     ; $6265: $71
	ld   l, l                                        ; $6266: $6d
	ld   a, b                                        ; $6267: $78
	sbc  a                                           ; $6268: $9f
	dec  c                                           ; $6269: $0d
	sub  d                                           ; $626a: $92
	ld   [hl], c                                     ; $626b: $71
	ld   a, a                                        ; $626c: $7f
	ld   [bc], a                                     ; $626d: $02
	and  l                                           ; $626e: $a5
	ld   a, h                                        ; $626f: $7c
	dec  b                                           ; $6270: $05
	jr   nz, @+$7f                                   ; $6271: $20 $7d

	res  7, b                                        ; $6273: $cb $b8
	ld   a, b                                        ; $6275: $78
	sbc  a                                           ; $6276: $9f
	dec  c                                           ; $6277: $0d
	nop                                              ; $6278: $00
	ld   a, [bc]                                     ; $6279: $0a
	rrca                                             ; $627a: $0f
	nop                                              ; $627b: $00
	ld   bc, $ac01                                   ; $627c: $01 $01 $ac
	push af                                          ; $627f: $f5
	bit  4, e                                        ; $6280: $cb $63
	and  c                                           ; $6282: $a1
	rst  $38                                         ; $6283: $ff
	rst  $38                                         ; $6284: $ff
	dec  c                                           ; $6285: $0d
	inc  b                                           ; $6286: $04
	ld   l, l                                        ; $6287: $6d
	ld   e, c                                        ; $6288: $59
	sub  a                                           ; $6289: $97
	sub  b                                           ; $628a: $90
	ld   [bc], a                                     ; $628b: $02
	jp   nz, $7452                                   ; $628c: $c2 $52 $74

	ld   d, d                                        ; $628f: $52
	ld   d, d                                        ; $6290: $52
	ld   [hl], l                                     ; $6291: $75
	ld   h, a                                        ; $6292: $67
	ld   e, c                                        ; $6293: $59
	ld   sp, hl                                      ; $6294: $f9
	dec  c                                           ; $6295: $0d
	nop                                              ; $6296: $00
	ld   a, [bc]                                     ; $6297: $0a
	inc  e                                           ; $6298: $1c
	ld   b, $00                                      ; $6299: $06 $00
	nop                                              ; $629b: $00
	ld   bc, $f9a1                                   ; $629c: $01 $a1 $f9
	dec  c                                           ; $629f: $0d
	ld   a, b                                        ; $62a0: $78
	and  c                                           ; $62a1: $a1
	ld   l, [hl]                                     ; $62a2: $6e
	ld   sp, hl                                      ; $62a3: $f9
	dec  c                                           ; $62a4: $0d
	nop                                              ; $62a5: $00
	ld   a, [bc]                                     ; $62a6: $0a
	rrca                                             ; $62a7: $0f
	nop                                              ; $62a8: $00
	ld   bc, $0201                                   ; $62a9: $01 $01 $02
	dec  bc                                          ; $62ac: $0b
	inc  bc                                          ; $62ad: $03
	ld   c, a                                        ; $62ae: $4f
	ld   a, c                                        ; $62af: $79
	sub  b                                           ; $62b0: $90
	ld   [bc], a                                     ; $62b1: $02
	jp   nz, $6d52                                   ; $62b2: $c2 $52 $6d

	ld   e, c                                        ; $62b5: $59
	sub  b                                           ; $62b6: $90
	dec  c                                           ; $62b7: $0d
	inc  b                                           ; $62b8: $04
	dec  hl                                          ; $62b9: $2b
	sbc  d                                           ; $62ba: $9a
	adc  h                                           ; $62bb: $8c
	ld   l, c                                        ; $62bc: $69
	and  c                                           ; $62bd: $a1
	ld   e, d                                        ; $62be: $5a
	xor  h                                           ; $62bf: $ac
	push af                                          ; $62c0: $f5
	bit  4, e                                        ; $62c1: $cb $63
	and  c                                           ; $62c3: $a1
	ld   a, l                                        ; $62c4: $7d
	rst  $38                                         ; $62c5: $ff
	rst  $38                                         ; $62c6: $ff
	dec  c                                           ; $62c7: $0d
	nop                                              ; $62c8: $00
	ld   a, [bc]                                     ; $62c9: $0a
	add  hl, de                                      ; $62ca: $19
	dec  b                                           ; $62cb: $05
	inc  bc                                          ; $62cc: $03
	inc  b                                           ; $62cd: $04
	ld   l, l                                        ; $62ce: $6d
	ld   a, h                                        ; $62cf: $7c
	ld   h, c                                        ; $62d0: $61
	halt                                             ; $62d1: $76
	ld   [hl], a                                     ; $62d2: $77
	ld   d, h                                        ; $62d3: $54
	dec  b                                           ; $62d4: $05
	pop  de                                          ; $62d5: $d1
	ld   d, d                                        ; $62d6: $52
	adc  h                                           ; $62d7: $8c
	ld   h, a                                        ; $62d8: $67
	ld   e, c                                        ; $62d9: $59
	ld   sp, hl                                      ; $62da: $f9
	nop                                              ; $62db: $00
	nop                                              ; $62dc: $00
	inc  b                                           ; $62dd: $04
	ld   c, $03                                      ; $62de: $0e $03
	sub  b                                           ; $62e0: $90
	ld   h, e                                        ; $62e1: $63
	and  c                                           ; $62e2: $a1
	ld   e, d                                        ; $62e3: $5a
	ld   [bc], a                                     ; $62e4: $02
	sbc  d                                           ; $62e5: $9a
	ld   e, e                                        ; $62e6: $5b
	ld   a, b                                        ; $62e7: $78
	and  c                                           ; $62e8: $a1
	ld   [hl], l                                     ; $62e9: $75
	ld   h, a                                        ; $62ea: $67
	ld   e, c                                        ; $62eb: $59
	ld   sp, hl                                      ; $62ec: $f9
	nop                                              ; $62ed: $00
	ld   bc, $a177                                   ; $62ee: $01 $77 $a1
	ld   a, b                                        ; $62f1: $78
	inc  bc                                          ; $62f2: $03
	add  d                                           ; $62f3: $82
	ld   e, d                                        ; $62f4: $5a
	ld   [bc], a                                     ; $62f5: $02
	sbc  d                                           ; $62f6: $9a
	ld   e, e                                        ; $62f7: $5b
	ld   [hl], l                                     ; $62f8: $75
	ld   h, a                                        ; $62f9: $67
	ld   e, c                                        ; $62fa: $59
	ld   sp, hl                                      ; $62fb: $f9
	nop                                              ; $62fc: $00
	ld   [bc], a                                     ; $62fd: $02
	rlca                                             ; $62fe: $07
	sub  e                                           ; $62ff: $93
	rla                                              ; $6300: $17
	ld   [bc], a                                     ; $6301: $02
	inc  bc                                          ; $6302: $03
	ld   bc, $2000                                   ; $6303: $01 $00 $20
	nop                                              ; $6306: $00
	rlca                                             ; $6307: $07
	ld   d, $18                                      ; $6308: $16 $18
	ld   [bc], a                                     ; $630a: $02
	inc  bc                                          ; $630b: $03
	ld   bc, $2001                                   ; $630c: $01 $01 $20
	nop                                              ; $630f: $00
	rlca                                             ; $6310: $07
	ld   [hl], c                                     ; $6311: $71
	jr   @+$04                                       ; $6312: $18 $02

	inc  bc                                          ; $6314: $03
	ld   bc, $2002                                   ; $6315: $01 $02 $20
	nop                                              ; $6318: $00
	ld   b, $18                                      ; $6319: $06 $18
	add  hl, de                                      ; $631b: $19
	rrca                                             ; $631c: $0f
	nop                                              ; $631d: $00
	ld   bc, $0401                                   ; $631e: $01 $01 $04
	ld   l, l                                        ; $6321: $6d
	ld   a, h                                        ; $6322: $7c
	ld   h, c                                        ; $6323: $61
	halt                                             ; $6324: $76
	ld   [hl], a                                     ; $6325: $77
	ld   d, h                                        ; $6326: $54
	dec  b                                           ; $6327: $05
	pop  de                                          ; $6328: $d1
	ld   d, d                                        ; $6329: $52
	adc  h                                           ; $632a: $8c
	ld   h, a                                        ; $632b: $67
	ld   e, c                                        ; $632c: $59
	ld   sp, hl                                      ; $632d: $f9
	dec  c                                           ; $632e: $0d
	nop                                              ; $632f: $00
	ld   a, [bc]                                     ; $6330: $0a
	inc  e                                           ; $6331: $1c
	ld   b, $05                                      ; $6332: $06 $05
	dec  b                                           ; $6334: $05
	ld   bc, $fb54                                   ; $6335: $01 $54 $fb
	and  c                                           ; $6338: $a1
	rst  $38                                         ; $6339: $ff
	rst  $38                                         ; $633a: $ff
	ld   l, e                                        ; $633b: $6b
	ld   d, h                                        ; $633c: $54
	ld   l, [hl]                                     ; $633d: $6e
	ld   a, b                                        ; $633e: $78
	rst  $38                                         ; $633f: $ff
	rst  $38                                         ; $6340: $ff
	dec  c                                           ; $6341: $0d
	nop                                              ; $6342: $00
	ld   a, [bc]                                     ; $6343: $0a
	rrca                                             ; $6344: $0f
	nop                                              ; $6345: $00
	ld   bc, $0401                                   ; $6346: $01 $01 $04
	ld   l, l                                        ; $6349: $6d
	ld   [hl], c                                     ; $634a: $71
	ld   [hl], h                                     ; $634b: $74
	rst  $38                                         ; $634c: $ff
	rst  $38                                         ; $634d: $ff
	xor  h                                           ; $634e: $ac
	push af                                          ; $634f: $f5
	bit  4, e                                        ; $6350: $cb $63
	and  c                                           ; $6352: $a1
	ld   e, c                                        ; $6353: $59
	sub  a                                           ; $6354: $97
	ld   [bc], a                                     ; $6355: $02
	sub  l                                           ; $6356: $95
	ld   [hl], h                                     ; $6357: $74
	dec  c                                           ; $6358: $0d
	ld   [hl], a                                     ; $6359: $77
	ld   d, h                                        ; $635a: $54
	ld   [hl], l                                     ; $635b: $75
	ld   h, a                                        ; $635c: $67
	ld   e, c                                        ; $635d: $59
	ld   sp, hl                                      ; $635e: $f9
	dec  c                                           ; $635f: $0d
	nop                                              ; $6360: $00
	ld   a, [bc]                                     ; $6361: $0a
	inc  e                                           ; $6362: $1c
	ld   b, $01                                      ; $6363: $06 $01
	ld   bc, $a501                                   ; $6365: $01 $01 $a5
	xor  h                                           ; $6368: $ac
	ld   h, l                                        ; $6369: $65
	ld   [hl], h                                     ; $636a: $74
	sbc  c                                           ; $636b: $99
	halt                                             ; $636c: $76
	dec  b                                           ; $636d: $05
	pop  de                                          ; $636e: $d1
	ld   d, h                                        ; $636f: $54
	ld   l, d                                        ; $6370: $6a
	sbc  a                                           ; $6371: $9f
	dec  c                                           ; $6372: $0d
	adc  h                                           ; $6373: $8c
	sbc  [hl]                                        ; $6374: $9e
	inc  b                                           ; $6375: $04
	ld   a, [bc]                                     ; $6376: $0a
	inc  bc                                          ; $6377: $03
	jp   nc, Jump_064_7d79                           ; $6378: $d2 $79 $7d

	inc  b                                           ; $637b: $04
	ld   a, l                                        ; $637c: $7d
	ld   e, a                                        ; $637d: $5f
	sbc  c                                           ; $637e: $99
	ld   e, a                                        ; $637f: $5f
	ld   [hl], a                                     ; $6380: $77
	ld   a, b                                        ; $6381: $78
	sbc  a                                           ; $6382: $9f
	dec  c                                           ; $6383: $0d
	nop                                              ; $6384: $00
	ld   a, [bc]                                     ; $6385: $0a
	rrca                                             ; $6386: $0f
	nop                                              ; $6387: $00
	ld   bc, $9201                                   ; $6388: $01 $01 $92
	ld   [hl], c                                     ; $638b: $71
	ld   a, a                                        ; $638c: $7f
	sbc  b                                           ; $638d: $98
	inc  b                                           ; $638e: $04
	ld   c, $03                                      ; $638f: $0e $03
	sub  b                                           ; $6391: $90
	ld   h, e                                        ; $6392: $63
	and  c                                           ; $6393: $a1
	ld   [hl], l                                     ; $6394: $75
	ld   h, a                                        ; $6395: $67
	ld   e, c                                        ; $6396: $59
	rst  $38                                         ; $6397: $ff
	rst  $38                                         ; $6398: $ff
	dec  c                                           ; $6399: $0d
	nop                                              ; $639a: $00
	ld   a, [bc]                                     ; $639b: $0a
	ld   b, $a9                                      ; $639c: $06 $a9
	jr   jr_064_63af                                 ; $639e: $18 $0f

	nop                                              ; $63a0: $00
	ld   bc, $0401                                   ; $63a1: $01 $01 $04
	ld   c, $03                                      ; $63a4: $0e $03
	sub  b                                           ; $63a6: $90
	ld   h, e                                        ; $63a7: $63
	and  c                                           ; $63a8: $a1
	ld   e, d                                        ; $63a9: $5a
	ld   [bc], a                                     ; $63aa: $02
	sbc  d                                           ; $63ab: $9a
	ld   e, e                                        ; $63ac: $5b
	ld   a, b                                        ; $63ad: $78
	and  c                                           ; $63ae: $a1

jr_064_63af:
	ld   [hl], l                                     ; $63af: $75
	ld   h, a                                        ; $63b0: $67
	ld   e, c                                        ; $63b1: $59
	ld   sp, hl                                      ; $63b2: $f9
	dec  c                                           ; $63b3: $0d
	nop                                              ; $63b4: $00
	ld   a, [bc]                                     ; $63b5: $0a
	inc  e                                           ; $63b6: $1c
	ld   b, $03                                      ; $63b7: $06 $03
	inc  bc                                          ; $63b9: $03
	ld   bc, $9e58                                   ; $63ba: $01 $58 $9e
	ld   e, b                                        ; $63bd: $58
	ld   d, d                                        ; $63be: $52
	rst  $38                                         ; $63bf: $ff
	rst  $38                                         ; $63c0: $ff
	dec  c                                           ; $63c1: $0d

Call_064_63c2:
	ld   d, d                                        ; $63c2: $52
	ld   e, e                                        ; $63c3: $5b
	ld   a, b                                        ; $63c4: $78
	sbc  b                                           ; $63c5: $98
	ld   a, b                                        ; $63c6: $78
	and  c                                           ; $63c7: $a1
	ld   l, [hl]                                     ; $63c8: $6e
	sub  [hl]                                        ; $63c9: $96
	ld   a, [$6b0d]                                  ; $63ca: $fa $0d $6b
	sbc  b                                           ; $63cd: $98
	sub  c                                           ; $63ce: $91
	ld   d, b                                        ; $63cf: $50
	rst  $38                                         ; $63d0: $ff
	rst  $38                                         ; $63d1: $ff
	dec  c                                           ; $63d2: $0d
	nop                                              ; $63d3: $00
	ld   a, [bc]                                     ; $63d4: $0a
	inc  e                                           ; $63d5: $1c
	ld   b, $04                                      ; $63d6: $06 $04
	inc  b                                           ; $63d8: $04
	ld   bc, $975b                                   ; $63d9: $01 $5b $97
	ld   d, d                                        ; $63dc: $52
	ld   h, [hl]                                     ; $63dd: $66
	sub  c                                           ; $63de: $91
	ld   a, e                                        ; $63df: $7b
	ld   d, [hl]                                     ; $63e0: $56
	ld   h, l                                        ; $63e1: $65
	rst  $38                                         ; $63e2: $ff
	rst  $38                                         ; $63e3: $ff
	dec  c                                           ; $63e4: $0d
	adc  h                                           ; $63e5: $8c
	ld   c, a                                        ; $63e6: $4f
	rst  $38                                         ; $63e7: $ff
	rst  $38                                         ; $63e8: $ff
	dec  c                                           ; $63e9: $0d
	ld   [hl], a                                     ; $63ea: $77
	ld   d, h                                        ; $63eb: $54
	ld   l, [hl]                                     ; $63ec: $6e
	ld   [hl], c                                     ; $63ed: $71
	ld   [hl], h                                     ; $63ee: $74
	ld   d, d                                        ; $63ef: $52
	ld   d, d                                        ; $63f0: $52
	ld   l, [hl]                                     ; $63f1: $6e
	sbc  e                                           ; $63f2: $9b
	ld   a, [$000d]                                  ; $63f3: $fa $0d $00
	ld   a, [bc]                                     ; $63f6: $0a
	ld   b, $a9                                      ; $63f7: $06 $a9
	jr   jr_064_640a                                 ; $63f9: $18 $0f

	nop                                              ; $63fb: $00
	ld   bc, $7701                                   ; $63fc: $01 $01 $77
	and  c                                           ; $63ff: $a1
	ld   a, b                                        ; $6400: $78
	inc  bc                                          ; $6401: $03
	add  d                                           ; $6402: $82
	ld   e, d                                        ; $6403: $5a
	ld   [bc], a                                     ; $6404: $02
	sbc  d                                           ; $6405: $9a
	ld   e, e                                        ; $6406: $5b
	ld   [hl], l                                     ; $6407: $75
	ld   h, a                                        ; $6408: $67
	ld   e, c                                        ; $6409: $59

jr_064_640a:
	ld   sp, hl                                      ; $640a: $f9
	dec  c                                           ; $640b: $0d
	nop                                              ; $640c: $00
	ld   a, [bc]                                     ; $640d: $0a
	inc  e                                           ; $640e: $1c
	ld   b, $05                                      ; $640f: $06 $05
	dec  b                                           ; $6411: $05
	ld   bc, $fb54                                   ; $6412: $01 $54 $fb
	and  c                                           ; $6415: $a1
	rst  $38                                         ; $6416: $ff
	rst  $38                                         ; $6417: $ff
	ld   l, e                                        ; $6418: $6b
	ld   d, h                                        ; $6419: $54
	ld   l, [hl]                                     ; $641a: $6e
	ld   a, b                                        ; $641b: $78
	rst  $38                                         ; $641c: $ff
	rst  $38                                         ; $641d: $ff
	dec  c                                           ; $641e: $0d
	sub  d                                           ; $641f: $92
	ld   [hl], c                                     ; $6420: $71
	ld   a, a                                        ; $6421: $7f
	inc  b                                           ; $6422: $04
	ld   a, [bc]                                     ; $6423: $0a
	inc  bc                                          ; $6424: $03
	jp   nc, Jump_064_6d8d                           ; $6425: $d2 $8d $6d

	ld   d, d                                        ; $6428: $52
	ld   a, b                                        ; $6429: $78
	ld   [bc], a                                     ; $642a: $02
	dec  d                                           ; $642b: $15
	ld   e, c                                        ; $642c: $59
	ld   a, b                                        ; $642d: $78
	ld   sp, hl                                      ; $642e: $f9
	dec  c                                           ; $642f: $0d
	nop                                              ; $6430: $00
	ld   a, [bc]                                     ; $6431: $0a
	inc  e                                           ; $6432: $1c
	ld   b, $05                                      ; $6433: $06 $05
	dec  b                                           ; $6435: $05
	ld   bc, $9e50                                   ; $6436: $01 $50 $9e
	ld   [$ff00], sp                                 ; $6439: $08 $00 $ff
	rst  $38                                         ; $643c: $ff
	dec  c                                           ; $643d: $0d
	ld   [bc], a                                     ; $643e: $02
	and  l                                           ; $643f: $a5
	ld   a, h                                        ; $6440: $7c
	dec  b                                           ; $6441: $05
	jr   nz, @+$01                                   ; $6442: $20 $ff

	rst  $38                                         ; $6444: $ff
	inc  b                                           ; $6445: $04
	ld   a, [bc]                                     ; $6446: $0a
	inc  bc                                          ; $6447: $03
	jp   nc, Jump_064_7d79                           ; $6448: $d2 $79 $7d

	dec  c                                           ; $644b: $0d
	ld   l, [hl]                                     ; $644c: $6e
	adc  h                                           ; $644d: $8c
	ld   [hl], c                                     ; $644e: $71
	ld   [hl], h                                     ; $644f: $74
	ld   [hl], h                                     ; $6450: $74
	ld   e, l                                        ; $6451: $5d
	sbc  d                                           ; $6452: $9a
	sub  [hl]                                        ; $6453: $96
	ld   a, b                                        ; $6454: $78
	sbc  a                                           ; $6455: $9f
	dec  c                                           ; $6456: $0d
	nop                                              ; $6457: $00
	ld   a, [bc]                                     ; $6458: $0a
	inc  e                                           ; $6459: $1c
	ld   b, $04                                      ; $645a: $06 $04
	inc  b                                           ; $645c: $04
	ld   bc, $6d50                                   ; $645d: $01 $50 $6d
	ld   d, d                                        ; $6460: $52
	ld   e, d                                        ; $6461: $5a
	dec  c                                           ; $6462: $0d
	ld   h, c                                        ; $6463: $61
	and  c                                           ; $6464: $a1
	ld   a, b                                        ; $6465: $78
	dec  b                                           ; $6466: $05
	jr   nz, jr_064_64ce                             ; $6467: $20 $65

	ld   [hl], h                                     ; $6469: $74
	ld   l, l                                        ; $646a: $6d
	ld   a, b                                        ; $646b: $78
	and  c                                           ; $646c: $a1
	ld   [hl], h                                     ; $646d: $74
	rst  $38                                         ; $646e: $ff
	rst  $38                                         ; $646f: $ff
	dec  c                                           ; $6470: $0d
	sub  d                                           ; $6471: $92
	ld   [hl], c                                     ; $6472: $71
	ld   a, a                                        ; $6473: $7f
	dec  b                                           ; $6474: $05
	ld   c, h                                        ; $6475: $4c
	ld   l, b                                        ; $6476: $68
	ld   e, c                                        ; $6477: $59
	ld   h, l                                        ; $6478: $65
	ld   d, d                                        ; $6479: $52
	ld   e, c                                        ; $647a: $59
	sub  a                                           ; $647b: $97
	sub  [hl]                                        ; $647c: $96
	sbc  a                                           ; $647d: $9f
	dec  c                                           ; $647e: $0d
	nop                                              ; $647f: $00
	ld   a, [bc]                                     ; $6480: $0a
	inc  e                                           ; $6481: $1c
	ld   b, $07                                      ; $6482: $06 $07
	rlca                                             ; $6484: $07
	ld   bc, $9166                                   ; $6485: $01 $66 $91
	sbc  [hl]                                        ; $6488: $9e
	ld   l, e                                        ; $6489: $6b
	sbc  e                                           ; $648a: $9b
	ld   l, e                                        ; $648b: $6b
	sbc  e                                           ; $648c: $9b
	ld   [bc], a                                     ; $648d: $02
	or   l                                           ; $648e: $b5
	sbc  e                                           ; $648f: $9b
	ld   d, h                                        ; $6490: $54
	ld   l, d                                        ; $6491: $6a
	sbc  a                                           ; $6492: $9f
	dec  c                                           ; $6493: $0d
	nop                                              ; $6494: $00
	ld   a, [bc]                                     ; $6495: $0a
	dec  c                                           ; $6496: $0d
	nop                                              ; $6497: $00
	nop                                              ; $6498: $00
	rrca                                             ; $6499: $0f
	nop                                              ; $649a: $00
	ld   bc, $020c                                   ; $649b: $01 $0c $02
	ld   b, $66                                      ; $649e: $06 $66
	add  hl, de                                      ; $64a0: $19
	rrca                                             ; $64a1: $0f
	nop                                              ; $64a2: $00
	ld   bc, $ff01                                   ; $64a3: $01 $01 $ff
	rst  $38                                         ; $64a6: $ff
	ld   a, b                                        ; $64a7: $78
	and  c                                           ; $64a8: $a1
	ld   [hl], l                                     ; $64a9: $75
	sub  b                                           ; $64aa: $90
	ld   d, b                                        ; $64ab: $50
	sbc  b                                           ; $64ac: $98
	adc  h                                           ; $64ad: $8c
	ld   l, c                                        ; $64ae: $69
	and  c                                           ; $64af: $a1
	sbc  a                                           ; $64b0: $9f
	dec  c                                           ; $64b1: $0d
	nop                                              ; $64b2: $00
	ld   a, [bc]                                     ; $64b3: $0a
	inc  e                                           ; $64b4: $1c
	ld   b, $03                                      ; $64b5: $06 $03
	inc  bc                                          ; $64b7: $03
	ld   bc, $a150                                   ; $64b8: $01 $50 $a1
	ld   sp, hl                                      ; $64bb: $f9
	db   $10                                         ; $64bc: $10
	reti                                             ; $64bd: $d9


	push af                                          ; $64be: $f5
	ld   a, b                                        ; $64bf: $78
	and  $c5                                         ; $64c0: $e6 $c5
	rst  $38                                         ; $64c2: $ff
	rst  $38                                         ; $64c3: $ff
	dec  c                                           ; $64c4: $0d
	nop                                              ; $64c5: $00
	ld   a, [bc]                                     ; $64c6: $0a
	inc  e                                           ; $64c7: $1c
	ld   b, $00                                      ; $64c8: $06 $00
	nop                                              ; $64ca: $00
	ld   bc, $508c                                   ; $64cb: $01 $8c $50

jr_064_64ce:
	sbc  [hl]                                        ; $64ce: $9e
	ld   d, d                                        ; $64cf: $52
	ld   d, d                                        ; $64d0: $52
	sub  d                                           ; $64d1: $92
	sbc  a                                           ; $64d2: $9f
	dec  c                                           ; $64d3: $0d
	ld   h, [hl]                                     ; $64d4: $66
	sub  c                                           ; $64d5: $91
	sbc  [hl]                                        ; $64d6: $9e
	ld   l, e                                        ; $64d7: $6b
	sbc  e                                           ; $64d8: $9b
	ld   l, e                                        ; $64d9: $6b
	sbc  e                                           ; $64da: $9b
	ld   [bc], a                                     ; $64db: $02
	or   l                                           ; $64dc: $b5
	sbc  e                                           ; $64dd: $9b
	ld   d, h                                        ; $64de: $54
	ld   e, c                                        ; $64df: $59
	sbc  a                                           ; $64e0: $9f
	dec  c                                           ; $64e1: $0d
	nop                                              ; $64e2: $00
	ld   a, [bc]                                     ; $64e3: $0a
	dec  c                                           ; $64e4: $0d
	nop                                              ; $64e5: $00
	nop                                              ; $64e6: $00
	rrca                                             ; $64e7: $0f
	nop                                              ; $64e8: $00
	ld   bc, $020c                                   ; $64e9: $01 $0c $02
	ld   b, $66                                      ; $64ec: $06 $66
	add  hl, de                                      ; $64ee: $19
	ld   c, $06                                      ; $64ef: $0e $06
	inc  e                                           ; $64f1: $1c
	ld   b, $01                                      ; $64f2: $06 $01
	ld   bc, $0201                                   ; $64f4: $01 $01 $02
	and  l                                           ; $64f7: $a5
	inc  b                                           ; $64f8: $04
	xor  d                                           ; $64f9: $aa
	ld   a, l                                        ; $64fa: $7d
	dec  b                                           ; $64fb: $05
	inc  de                                          ; $64fc: $13
	ld   h, l                                        ; $64fd: $65
	ld   e, c                                        ; $64fe: $59
	ld   [hl], c                                     ; $64ff: $71
	ld   l, l                                        ; $6500: $6d
	ld   e, c                                        ; $6501: $59
	ld   sp, hl                                      ; $6502: $f9
	dec  c                                           ; $6503: $0d
	nop                                              ; $6504: $00
	ld   a, [bc]                                     ; $6505: $0a
	ld   bc, $546b                                   ; $6506: $01 $6b $54
	ld   l, [hl]                                     ; $6509: $6e
	sbc  [hl]                                        ; $650a: $9e
	inc  b                                           ; $650b: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $650c: $cf
	inc  b                                           ; $650d: $04
	xor  d                                           ; $650e: $aa
	sbc  [hl]                                        ; $650f: $9e
	inc  bc                                          ; $6510: $03
	ld   l, c                                        ; $6511: $69
	inc  bc                                          ; $6512: $03
	ld   a, [hl]                                     ; $6513: $7e
	rst  ToBoot                                         ; $6514: $c7
	cp   d                                           ; $6515: $ba
	ret                                              ; $6516: $c9


	dec  c                                           ; $6517: $0d
	ld   a, b                                        ; $6518: $78
	and  c                                           ; $6519: $a1
	ld   l, [hl]                                     ; $651a: $6e
	ld   [hl], c                                     ; $651b: $71
	ld   [hl], h                                     ; $651c: $74
	ld   a, b                                        ; $651d: $78
	sbc  a                                           ; $651e: $9f
	dec  c                                           ; $651f: $0d
	nop                                              ; $6520: $00
	ld   a, [bc]                                     ; $6521: $0a
	ld   d, $24                                      ; $6522: $16 $24
	ld   bc, $527d                                   ; $6524: $01 $7d $52
	ld   h, c                                        ; $6527: $61
	sbc  d                                           ; $6528: $9a
	rst  $38                                         ; $6529: $ff
	rst  $38                                         ; $652a: $ff
	dec  c                                           ; $652b: $0d
	ld   e, b                                        ; $652c: $58
	inc  bc                                          ; $652d: $03
	ld   c, a                                        ; $652e: $4f
	ld   a, c                                        ; $652f: $79
	sub  d                                           ; $6530: $92
	sbc  c                                           ; $6531: $99
	sub  [hl]                                        ; $6532: $96
	sbc  a                                           ; $6533: $9f
	dec  c                                           ; $6534: $0d
	ld   h, c                                        ; $6535: $61
	sbc  d                                           ; $6536: $9a
	adc  h                                           ; $6537: $8c
	ld   d, d                                        ; $6538: $52
	ld   [hl], h                                     ; $6539: $74
	sbc  [hl]                                        ; $653a: $9e
	ld   [bc], a                                     ; $653b: $02
	and  c                                           ; $653c: $a1
	ld   [bc], a                                     ; $653d: $02
	ld   a, e                                        ; $653e: $7b
	ld   d, d                                        ; $653f: $52
	and  b                                           ; $6540: $a0
	ld   d, d                                        ; $6541: $52
	sbc  d                                           ; $6542: $9a
	ld   a, b                                        ; $6543: $78
	sbc  a                                           ; $6544: $9f
	dec  c                                           ; $6545: $0d
	nop                                              ; $6546: $00
	ld   a, [bc]                                     ; $6547: $0a
	rrca                                             ; $6548: $0f
	nop                                              ; $6549: $00
	ld   bc, $d001                                   ; $654a: $01 $01 $d0
	jp   nz, $aedf                                   ; $654d: $c2 $df $ae

	rst  $38                                         ; $6550: $ff
	rst  $38                                         ; $6551: $ff
	dec  c                                           ; $6552: $0d
	ld   d, b                                        ; $6553: $50
	sbc  b                                           ; $6554: $98
	ld   e, d                                        ; $6555: $5a
	halt                                             ; $6556: $76
	ld   d, h                                        ; $6557: $54
	ld   h, d                                        ; $6558: $62
	ld   h, h                                        ; $6559: $64
	ld   d, d                                        ; $655a: $52
	adc  h                                           ; $655b: $8c
	ld   h, a                                        ; $655c: $67
	sbc  a                                           ; $655d: $9f
	dec  c                                           ; $655e: $0d
	ld   e, d                                        ; $655f: $5a
	and  c                                           ; $6560: $a1
	ld   a, [hl]                                     ; $6561: $7e
	sbc  b                                           ; $6562: $98
	adc  h                                           ; $6563: $8c
	ld   h, a                                        ; $6564: $67
	sbc  [hl]                                        ; $6565: $9e
	xor  h                                           ; $6566: $ac
	push af                                          ; $6567: $f5
	bit  4, e                                        ; $6568: $cb $63
	and  c                                           ; $656a: $a1
	sbc  a                                           ; $656b: $9f
	dec  c                                           ; $656c: $0d
	nop                                              ; $656d: $00
	ld   a, [bc]                                     ; $656e: $0a
	dec  b                                           ; $656f: $05
	add  b                                           ; $6570: $80
	adc  h                                           ; $6571: $8c
	ld   bc, $0001                                   ; $6572: $01 $01 $00
	add  hl, hl                                      ; $6575: $29
	nop                                              ; $6576: $00
	nop                                              ; $6577: $00
	nop                                              ; $6578: $00
	inc  b                                           ; $6579: $04
	add  b                                           ; $657a: $80
	ld   c, l                                        ; $657b: $4d
	ld   bc, $20ff                                   ; $657c: $01 $ff $20
	nop                                              ; $657f: $00
	ld   c, $01                                      ; $6580: $0e $01
	rrca                                             ; $6582: $0f
	nop                                              ; $6583: $00
	ld   bc, $0102                                   ; $6584: $01 $02 $01
	ld   [bc], a                                     ; $6587: $02
	and  l                                           ; $6588: $a5
	inc  b                                           ; $6589: $04
	xor  d                                           ; $658a: $aa
	ld   a, l                                        ; $658b: $7d
	sbc  [hl]                                        ; $658c: $9e
	and  e                                           ; $658d: $a3
	and  l                                           ; $658e: $a5
	db   $ec                                         ; $658f: $ec
	cp   d                                           ; $6590: $ba
	halt                                             ; $6591: $76
	dec  c                                           ; $6592: $0d
	ret  z                                           ; $6593: $c8

	ei                                               ; $6594: $fb
	ret                                              ; $6595: $c9


	ld   l, [hl]                                     ; $6596: $6e
	sbc  a                                           ; $6597: $9f
	dec  c                                           ; $6598: $0d
	dec  b                                           ; $6599: $05
	jr   z, @+$54                                    ; $659a: $28 $52

	ld   [hl], l                                     ; $659c: $75
	inc  b                                           ; $659d: $04
	rlca                                             ; $659e: $07
	dec  b                                           ; $659f: $05
	scf                                              ; $65a0: $37
	ld   d, [hl]                                     ; $65a1: $56
	ld   a, b                                        ; $65a2: $78
	ld   e, l                                        ; $65a3: $5d
	ld   l, a                                        ; $65a4: $6f
	sub  c                                           ; $65a5: $91
	sbc  a                                           ; $65a6: $9f
	dec  c                                           ; $65a7: $0d
	nop                                              ; $65a8: $00
	ld   a, [bc]                                     ; $65a9: $0a
	add  hl, de                                      ; $65aa: $19
	inc  b                                           ; $65ab: $04
	inc  bc                                          ; $65ac: $03
	ld   b, $4c                                      ; $65ad: $06 $4c
	and  b                                           ; $65af: $a0
	adc  l                                           ; $65b0: $8d
	ld   e, d                                        ; $65b1: $5a
	ld   e, l                                        ; $65b2: $5d
	nop                                              ; $65b3: $00
	nop                                              ; $65b4: $00
	dec  b                                           ; $65b5: $05
	ld   e, $a0                                      ; $65b6: $1e $a0
	adc  l                                           ; $65b8: $8d
	ld   e, d                                        ; $65b9: $5a
	ld   e, l                                        ; $65ba: $5d
	nop                                              ; $65bb: $00
	ld   bc, $b9eb                                   ; $65bc: $01 $eb $b9
	xor  e                                           ; $65bf: $ab
	inc  b                                           ; $65c0: $04
	dec  c                                           ; $65c1: $0d
	ld   b, $5a                                      ; $65c2: $06 $5a
	and  b                                           ; $65c4: $a0
	ld   h, a                                        ; $65c5: $67
	sbc  c                                           ; $65c6: $99
	nop                                              ; $65c7: $00
	ld   [bc], a                                     ; $65c8: $02
	rlca                                             ; $65c9: $07
	ld   h, a                                        ; $65ca: $67
	nop                                              ; $65cb: $00
	ld   [bc], a                                     ; $65cc: $02
	inc  bc                                          ; $65cd: $03
	ld   bc, $2000                                   ; $65ce: $01 $00 $20
	nop                                              ; $65d1: $00
	rlca                                             ; $65d2: $07
	sub  a                                           ; $65d3: $97
	nop                                              ; $65d4: $00
	ld   [bc], a                                     ; $65d5: $02
	inc  bc                                          ; $65d6: $03
	ld   bc, $2001                                   ; $65d7: $01 $01 $20
	nop                                              ; $65da: $00
	rlca                                             ; $65db: $07
	ret  c                                           ; $65dc: $d8

	nop                                              ; $65dd: $00
	ld   [bc], a                                     ; $65de: $02
	inc  bc                                          ; $65df: $03
	ld   bc, $2002                                   ; $65e0: $01 $02 $20
	nop                                              ; $65e3: $00
	ld   b, $12                                      ; $65e4: $06 $12
	ld   bc, $000f                                   ; $65e6: $01 $0f $00
	ld   bc, $9601                                   ; $65e9: $01 $01 $96
	ld   h, l                                        ; $65ec: $65
	ld   a, [$0610]                                  ; $65ed: $fa $10 $06
	ld   c, h                                        ; $65f0: $4c
	and  b                                           ; $65f1: $a0
	adc  l                                           ; $65f2: $8d
	ld   e, d                                        ; $65f3: $5a
	ld   e, l                                        ; $65f4: $5d
	ld   l, h                                        ; $65f5: $6c
	ei                                               ; $65f6: $fb
	ld   a, [$060d]                                  ; $65f7: $fa $0d $06
	ld   c, h                                        ; $65fa: $4c
	ld   a, l                                        ; $65fb: $7d
	xor  [hl]                                        ; $65fc: $ae
	xor  $a5                                         ; $65fd: $ee $a5
	ld   a, c                                        ; $65ff: $79
	ld   h, l                                        ; $6600: $65
	halt                                             ; $6601: $76
	ld   e, c                                        ; $6602: $59
	ld   a, b                                        ; $6603: $78
	ld   d, d                                        ; $6604: $52
	halt                                             ; $6605: $76
	ld   a, e                                        ; $6606: $7b
	sbc  a                                           ; $6607: $9f
	dec  c                                           ; $6608: $0d
	nop                                              ; $6609: $00
	ld   a, [bc]                                     ; $660a: $0a
	dec  b                                           ; $660b: $05
	ld   b, b                                        ; $660c: $40
	rst  $38                                         ; $660d: $ff
	inc  bc                                          ; $660e: $03
	rst  $38                                         ; $660f: $ff
	ld   bc, $2801                                   ; $6610: $01 $01 $28
	nop                                              ; $6613: $00
	ld   b, $35                                      ; $6614: $06 $35
	ld   bc, $000f                                   ; $6616: $01 $0f $00
	ld   bc, $9601                                   ; $6619: $01 $01 $96
	ld   h, l                                        ; $661c: $65
	ld   a, [$0510]                                  ; $661d: $fa $10 $05
	ld   e, $a0                                      ; $6620: $1e $a0
	adc  l                                           ; $6622: $8d
	ld   e, d                                        ; $6623: $5a
	ld   e, l                                        ; $6624: $5d
	ld   l, h                                        ; $6625: $6c
	ei                                               ; $6626: $fb
	ld   a, [$0dfa]                                  ; $6627: $fa $fa $0d
	rst  $38                                         ; $662a: $ff
	rst  $38                                         ; $662b: $ff
	and  c                                           ; $662c: $a1
	ld   sp, hl                                      ; $662d: $f9
	db   $10                                         ; $662e: $10
	ld   [bc], a                                     ; $662f: $02
	and  l                                           ; $6630: $a5
	ld   e, c                                        ; $6631: $59
	sub  a                                           ; $6632: $97
	inc  bc                                          ; $6633: $03
	ld   l, l                                        ; $6634: $6d
	dec  b                                           ; $6635: $05
	add  hl, de                                      ; $6636: $19
	ld   a, c                                        ; $6637: $79
	ld   [bc], a                                     ; $6638: $02
	ld   a, a                                        ; $6639: $7f
	ld   e, l                                        ; $663a: $5d
	dec  c                                           ; $663b: $0d
	nop                                              ; $663c: $00
	dec  b                                           ; $663d: $05
	ld   b, b                                        ; $663e: $40
	rst  $38                                         ; $663f: $ff
	inc  bc                                          ; $6640: $03
	rst  $38                                         ; $6641: $ff
	ld   bc, $2801                                   ; $6642: $01 $01 $28
	nop                                              ; $6645: $00
	ld   bc, $66a1                                   ; $6646: $01 $a1 $66
	sub  c                                           ; $6649: $91
	ld   a, b                                        ; $664a: $78
	ld   d, d                                        ; $664b: $52
	and  c                                           ; $664c: $a1
	ld   l, [hl]                                     ; $664d: $6e
	sub  [hl]                                        ; $664e: $96
	ld   a, b                                        ; $664f: $78
	rst  $38                                         ; $6650: $ff
	rst  $38                                         ; $6651: $ff
	dec  c                                           ; $6652: $0d
	nop                                              ; $6653: $00
	ld   a, [bc]                                     ; $6654: $0a
	ld   b, $2a                                      ; $6655: $06 $2a
	nop                                              ; $6657: $00
	rrca                                             ; $6658: $0f
	nop                                              ; $6659: $00
	ld   bc, $9601                                   ; $665a: $01 $01 $96
	ld   h, l                                        ; $665d: $65
	ld   a, [$eb10]                                  ; $665e: $fa $10 $eb
	cp   c                                           ; $6661: $b9
	xor  e                                           ; $6662: $ab
	inc  b                                           ; $6663: $04
	dec  c                                           ; $6664: $0d
	ld   b, $5a                                      ; $6665: $06 $5a
	ld   h, a                                        ; $6667: $67
	sbc  c                                           ; $6668: $99
	ld   l, h                                        ; $6669: $6c
	ld   a, [$ff0d]                                  ; $666a: $fa $0d $ff
	rst  $38                                         ; $666d: $ff
	ld   [hl], h                                     ; $666e: $74
	sbc  [hl]                                        ; $666f: $9e
	ld   l, e                                        ; $6670: $6b
	and  c                                           ; $6671: $a1
	ld   a, b                                        ; $6672: $78
	ld   h, c                                        ; $6673: $61
	halt                                             ; $6674: $76
	ld   h, l                                        ; $6675: $65
	ld   [hl], h                                     ; $6676: $74
	sbc  c                                           ; $6677: $99
	inc  bc                                          ; $6678: $03
	ld   l, a                                        ; $6679: $6f
	ld   [bc], a                                     ; $667a: $02
	xor  c                                           ; $667b: $a9
	dec  c                                           ; $667c: $0d
	nop                                              ; $667d: $00
	dec  b                                           ; $667e: $05
	ld   b, b                                        ; $667f: $40
	rst  $38                                         ; $6680: $ff
	inc  bc                                          ; $6681: $03
	rst  $38                                         ; $6682: $ff
	ld   bc, $2801                                   ; $6683: $01 $01 $28
	nop                                              ; $6686: $00
	ld   bc, $5278                                   ; $6687: $01 $78 $52
	sub  [hl]                                        ; $668a: $96
	sbc  a                                           ; $668b: $9f
	dec  c                                           ; $668c: $0d
	nop                                              ; $668d: $00
	ld   a, [bc]                                     ; $668e: $0a
	ld   b, $2a                                      ; $668f: $06 $2a
	nop                                              ; $6691: $00
	rrca                                             ; $6692: $0f
	nop                                              ; $6693: $00
	ld   bc, $8c01                                   ; $6694: $01 $01 $8c
	ld   l, b                                        ; $6697: $68
	ld   a, l                                        ; $6698: $7d
	rst  $38                                         ; $6699: $ff
	rst  $38                                         ; $669a: $ff
	dec  c                                           ; $669b: $0d
	ld   [hl], a                                     ; $669c: $77
	ld   d, h                                        ; $669d: $54
	ld   h, l                                        ; $669e: $65
	sub  [hl]                                        ; $669f: $96
	ld   d, h                                        ; $66a0: $54
	ld   e, c                                        ; $66a1: $59
	rst  $38                                         ; $66a2: $ff
	rst  $38                                         ; $66a3: $ff
	rst  $38                                         ; $66a4: $ff
	rst  $38                                         ; $66a5: $ff
	dec  c                                           ; $66a6: $0d
	nop                                              ; $66a7: $00
	ld   a, [bc]                                     ; $66a8: $0a
	dec  b                                           ; $66a9: $05
	ld   b, b                                        ; $66aa: $40
	rst  $38                                         ; $66ab: $ff
	inc  bc                                          ; $66ac: $03
	rst  $38                                         ; $66ad: $ff
	ld   bc, $2801                                   ; $66ae: $01 $01 $28
	nop                                              ; $66b1: $00
	ld   b, $2a                                      ; $66b2: $06 $2a
	nop                                              ; $66b4: $00
	add  hl, de                                      ; $66b5: $19
	inc  b                                           ; $66b6: $04
	inc  bc                                          ; $66b7: $03
	inc  b                                           ; $66b8: $04
	and  l                                           ; $66b9: $a5
	and  b                                           ; $66ba: $a0
	inc  b                                           ; $66bb: $04
	rlca                                             ; $66bc: $07
	sbc  c                                           ; $66bd: $99
	nop                                              ; $66be: $00
	nop                                              ; $66bf: $00
	inc  b                                           ; $66c0: $04
	and  l                                           ; $66c1: $a5
	and  b                                           ; $66c2: $a0
	ld   a, d                                        ; $66c3: $7a
	ld   e, [hl]                                     ; $66c4: $5e
	nop                                              ; $66c5: $00
	ld   bc, $b1d6                                   ; $66c6: $01 $d6 $b1
	and  b                                           ; $66c9: $a0
	inc  bc                                          ; $66ca: $03
	dec  de                                          ; $66cb: $1b
	sbc  c                                           ; $66cc: $99
	nop                                              ; $66cd: $00
	ld   [bc], a                                     ; $66ce: $02
	rlca                                             ; $66cf: $07
	ld   l, l                                        ; $66d0: $6d
	ld   bc, $0302                                   ; $66d1: $01 $02 $03
	ld   bc, $2000                                   ; $66d4: $01 $00 $20
	nop                                              ; $66d7: $00
	rlca                                             ; $66d8: $07
	sub  c                                           ; $66d9: $91
	ld   bc, $0302                                   ; $66da: $01 $02 $03
	ld   bc, $2001                                   ; $66dd: $01 $01 $20
	nop                                              ; $66e0: $00
	rlca                                             ; $66e1: $07
	ret                                              ; $66e2: $c9


	ld   bc, $0302                                   ; $66e3: $01 $02 $03
	ld   bc, $2002                                   ; $66e6: $01 $02 $20
	nop                                              ; $66e9: $00
	ld   b, $0b                                      ; $66ea: $06 $0b
	ld   [bc], a                                     ; $66ec: $02
	rrca                                             ; $66ed: $0f
	nop                                              ; $66ee: $00
	ld   bc, $0601                                   ; $66ef: $01 $01 $06
	ld   c, h                                        ; $66f2: $4c
	and  b                                           ; $66f3: $a0
	adc  l                                           ; $66f4: $8d
	ld   e, d                                        ; $66f5: $5a
	ld   d, d                                        ; $66f6: $52
	ld   l, l                                        ; $66f7: $6d
	sub  a                                           ; $66f8: $97
	sbc  [hl]                                        ; $66f9: $9e
	inc  b                                           ; $66fa: $04
	and  l                                           ; $66fb: $a5
	and  b                                           ; $66fc: $a0
	inc  b                                           ; $66fd: $04
	rlca                                             ; $66fe: $07
	ld   [hl], h                                     ; $66ff: $74
	halt                                             ; $6700: $76
	rst  $38                                         ; $6701: $ff
	dec  c                                           ; $6702: $0d
	nop                                              ; $6703: $00
	ld   a, [bc]                                     ; $6704: $0a
	dec  b                                           ; $6705: $05
	ld   b, b                                        ; $6706: $40
	rst  $38                                         ; $6707: $ff
	inc  bc                                          ; $6708: $03
	rst  $38                                         ; $6709: $ff
	ld   bc, $2801                                   ; $670a: $01 $01 $28
	nop                                              ; $670d: $00
	ld   b, $2e                                      ; $670e: $06 $2e
	ld   [bc], a                                     ; $6710: $02
	rrca                                             ; $6711: $0f
	nop                                              ; $6712: $00
	ld   bc, $0601                                   ; $6713: $01 $01 $06
	ld   c, h                                        ; $6716: $4c
	and  b                                           ; $6717: $a0
	adc  l                                           ; $6718: $8d
	ld   e, d                                        ; $6719: $5a
	ld   d, d                                        ; $671a: $52
	ld   l, l                                        ; $671b: $6d
	sub  a                                           ; $671c: $97
	sbc  [hl]                                        ; $671d: $9e
	inc  b                                           ; $671e: $04
	and  l                                           ; $671f: $a5
	and  b                                           ; $6720: $a0
	ld   a, d                                        ; $6721: $7a
	ld   d, d                                        ; $6722: $52
	ld   [hl], l                                     ; $6723: $75
	dec  c                                           ; $6724: $0d
	rst  $38                                         ; $6725: $ff
	rst  $38                                         ; $6726: $ff
	ld   a, d                                        ; $6727: $7a
	ld   d, d                                        ; $6728: $52
	ld   h, [hl]                                     ; $6729: $66
	sub  c                                           ; $672a: $91
	pop  bc                                          ; $672b: $c1
	db   $e3                                         ; $672c: $e3
	ld   [hl], l                                     ; $672d: $75
	ld   h, l                                        ; $672e: $65
	sub  l                                           ; $672f: $95
	sbc  a                                           ; $6730: $9f
	dec  c                                           ; $6731: $0d
	nop                                              ; $6732: $00
	dec  b                                           ; $6733: $05
	ld   b, b                                        ; $6734: $40
	rst  $38                                         ; $6735: $ff
	inc  bc                                          ; $6736: $03
	rst  $38                                         ; $6737: $ff
	ld   bc, $2801                                   ; $6738: $01 $01 $28
	nop                                              ; $673b: $00
	ld   bc, $0704                                   ; $673c: $01 $04 $07
	ld   a, b                                        ; $673f: $78
	ld   e, e                                        ; $6740: $5b
	sub  c                                           ; $6741: $91
	sbc  a                                           ; $6742: $9f
	dec  c                                           ; $6743: $0d
	nop                                              ; $6744: $00
	ld   a, [bc]                                     ; $6745: $0a
	ld   b, $35                                      ; $6746: $06 $35
	ld   bc, $000f                                   ; $6748: $01 $0f $00
	ld   bc, $0601                                   ; $674b: $01 $01 $06
	ld   c, h                                        ; $674e: $4c
	and  b                                           ; $674f: $a0
	adc  l                                           ; $6750: $8d
	ld   e, d                                        ; $6751: $5a
	ld   d, d                                        ; $6752: $52
	ld   l, l                                        ; $6753: $6d
	sub  a                                           ; $6754: $97
	sbc  [hl]                                        ; $6755: $9e
	sub  $b1                                         ; $6756: $d6 $b1
	and  b                                           ; $6758: $a0
	inc  bc                                          ; $6759: $03
	dec  de                                          ; $675a: $1b
	ld   [hl], c                                     ; $675b: $71
	ld   [hl], h                                     ; $675c: $74
	dec  c                                           ; $675d: $0d
	rst  $38                                         ; $675e: $ff
	rst  $38                                         ; $675f: $ff
	ld   [hl], h                                     ; $6760: $74
	sbc  [hl]                                        ; $6761: $9e
	cp   b                                           ; $6762: $b8
	rst  $28                                         ; $6763: $ef
	and  a                                           ; $6764: $a7
	ret                                              ; $6765: $c9


	ld   e, d                                        ; $6766: $5a
	inc  bc                                          ; $6767: $03
	ld   c, [hl]                                     ; $6768: $4e
	inc  bc                                          ; $6769: $03
	ld   l, e                                        ; $676a: $6b
	ld   a, c                                        ; $676b: $79
	dec  c                                           ; $676c: $0d
	nop                                              ; $676d: $00
	dec  b                                           ; $676e: $05
	ld   b, b                                        ; $676f: $40
	rst  $38                                         ; $6770: $ff
	inc  bc                                          ; $6771: $03
	rst  $38                                         ; $6772: $ff
	ld   bc, $2801                                   ; $6773: $01 $01 $28
	nop                                              ; $6776: $00
	ld   bc, $b1d6                                   ; $6777: $01 $d6 $b1
	and  b                                           ; $677a: $a0
	ld   h, e                                        ; $677b: $63
	ld   a, [hl]                                     ; $677c: $7e
	ld   d, d                                        ; $677d: $52
	ld   l, a                                        ; $677e: $6f
	sub  c                                           ; $677f: $91
	pop  bc                                          ; $6780: $c1
	db   $e3                                         ; $6781: $e3
	ld   l, [hl]                                     ; $6782: $6e
	sub  [hl]                                        ; $6783: $96
	sbc  a                                           ; $6784: $9f
	dec  c                                           ; $6785: $0d
	nop                                              ; $6786: $00
	ld   a, [bc]                                     ; $6787: $0a
	ld   b, $35                                      ; $6788: $06 $35
	ld   bc, $000f                                   ; $678a: $01 $0f $00
	ld   bc, $0301                                   ; $678d: $01 $01 $03
	ld   l, b                                        ; $6790: $68
	ld   a, c                                        ; $6791: $79
	rst  $38                                         ; $6792: $ff
	rst  $38                                         ; $6793: $ff
	dec  c                                           ; $6794: $0d
	ld   [hl], a                                     ; $6795: $77
	ld   d, h                                        ; $6796: $54
	ld   h, l                                        ; $6797: $65
	sub  [hl]                                        ; $6798: $96
	ld   d, h                                        ; $6799: $54
	ld   e, c                                        ; $679a: $59
	rst  $38                                         ; $679b: $ff
	rst  $38                                         ; $679c: $ff
	rst  $38                                         ; $679d: $ff
	rst  $38                                         ; $679e: $ff
	dec  c                                           ; $679f: $0d
	nop                                              ; $67a0: $00
	ld   a, [bc]                                     ; $67a1: $0a
	dec  b                                           ; $67a2: $05
	ld   b, b                                        ; $67a3: $40
	rst  $38                                         ; $67a4: $ff
	inc  bc                                          ; $67a5: $03
	rst  $38                                         ; $67a6: $ff
	ld   bc, $2801                                   ; $67a7: $01 $01 $28
	nop                                              ; $67aa: $00
	ld   b, $35                                      ; $67ab: $06 $35
	ld   bc, $0419                                   ; $67ad: $01 $19 $04
	inc  bc                                          ; $67b0: $03
	inc  b                                           ; $67b1: $04
	ld   l, d                                        ; $67b2: $6a
	and  b                                           ; $67b3: $a0
	halt                                             ; $67b4: $76
	halt                                             ; $67b5: $76
	ld   a, h                                        ; $67b6: $7c
	ld   d, [hl]                                     ; $67b7: $56
	sbc  c                                           ; $67b8: $99
	nop                                              ; $67b9: $00
	nop                                              ; $67ba: $00
	ld   e, c                                        ; $67bb: $59
	ld   e, d                                        ; $67bc: $5a
	adc  l                                           ; $67bd: $8d
	ld   a, c                                        ; $67be: $79
	adc  l                                           ; $67bf: $8d
	halt                                             ; $67c0: $76
	sbc  d                                           ; $67c1: $9a
	sbc  c                                           ; $67c2: $99
	nop                                              ; $67c3: $00
	ld   bc, $6a04                                   ; $67c4: $01 $04 $6a
	and  b                                           ; $67c7: $a0
	ld   d, b                                        ; $67c8: $50
	adc  [hl]                                        ; $67c9: $8e
	nop                                              ; $67ca: $00
	ld   [bc], a                                     ; $67cb: $02
	rlca                                             ; $67cc: $07
	ld   l, d                                        ; $67cd: $6a
	ld   [bc], a                                     ; $67ce: $02
	ld   [bc], a                                     ; $67cf: $02
	inc  bc                                          ; $67d0: $03
	ld   bc, $2000                                   ; $67d1: $01 $00 $20
	nop                                              ; $67d4: $00
	rlca                                             ; $67d5: $07
	adc  d                                           ; $67d6: $8a
	ld   [bc], a                                     ; $67d7: $02
	ld   [bc], a                                     ; $67d8: $02
	inc  bc                                          ; $67d9: $03
	ld   bc, $2001                                   ; $67da: $01 $01 $20
	nop                                              ; $67dd: $00
	rlca                                             ; $67de: $07
	call z, $0202                                    ; $67df: $cc $02 $02
	inc  bc                                          ; $67e2: $03
	ld   bc, $2002                                   ; $67e3: $01 $02 $20
	nop                                              ; $67e6: $00
	ld   b, $fd                                      ; $67e7: $06 $fd
	ld   [bc], a                                     ; $67e9: $02
	rrca                                             ; $67ea: $0f
	nop                                              ; $67eb: $00
	ld   bc, $6b01                                   ; $67ec: $01 $01 $6b
	ld   h, l                                        ; $67ef: $65
	ld   [hl], h                                     ; $67f0: $74
	sbc  [hl]                                        ; $67f1: $9e
	inc  b                                           ; $67f2: $04
	ld   l, d                                        ; $67f3: $6a
	and  b                                           ; $67f4: $a0
	halt                                             ; $67f5: $76
	halt                                             ; $67f6: $76
	ld   a, h                                        ; $67f7: $7c
	ld   d, [hl]                                     ; $67f8: $56
	ld   [hl], h                                     ; $67f9: $74
	sbc  a                                           ; $67fa: $9f
	dec  c                                           ; $67fb: $0d
	nop                                              ; $67fc: $00
	ld   a, [bc]                                     ; $67fd: $0a
	dec  b                                           ; $67fe: $05
	ld   b, b                                        ; $67ff: $40
	rst  $38                                         ; $6800: $ff
	inc  bc                                          ; $6801: $03
	rst  $38                                         ; $6802: $ff
	ld   bc, $2801                                   ; $6803: $01 $01 $28
	nop                                              ; $6806: $00
	ld   b, $20                                      ; $6807: $06 $20
	inc  bc                                          ; $6809: $03
	rrca                                             ; $680a: $0f
	nop                                              ; $680b: $00
	ld   bc, $6b01                                   ; $680c: $01 $01 $6b
	ld   h, l                                        ; $680f: $65
	ld   [hl], h                                     ; $6810: $74
	sbc  [hl]                                        ; $6811: $9e
	ld   e, c                                        ; $6812: $59
	ld   e, d                                        ; $6813: $5a
	adc  l                                           ; $6814: $8d
	ld   a, c                                        ; $6815: $79
	adc  l                                           ; $6816: $8d
	halt                                             ; $6817: $76
	sbc  d                                           ; $6818: $9a
	ld   [hl], h                                     ; $6819: $74
	rst  $38                                         ; $681a: $ff
	rst  $38                                         ; $681b: $ff
	dec  c                                           ; $681c: $0d
	and  c                                           ; $681d: $a1
	ld   sp, hl                                      ; $681e: $f9
	db   $10                                         ; $681f: $10
	ld   d, d                                        ; $6820: $52
	ld   e, a                                        ; $6821: $5f
	ld   a, b                                        ; $6822: $78
	ld   d, d                                        ; $6823: $52
	sbc  [hl]                                        ; $6824: $9e
	ld   d, d                                        ; $6825: $52
	ld   e, a                                        ; $6826: $5f
	ld   a, b                                        ; $6827: $78
	ld   d, d                                        ; $6828: $52
	sbc  a                                           ; $6829: $9f
	dec  c                                           ; $682a: $0d
	nop                                              ; $682b: $00
	dec  b                                           ; $682c: $05
	ld   b, b                                        ; $682d: $40
	rst  $38                                         ; $682e: $ff
	inc  bc                                          ; $682f: $03
	rst  $38                                         ; $6830: $ff
	ld   bc, $2801                                   ; $6831: $01 $01 $28
	nop                                              ; $6834: $00
	ld   bc, $5272                                   ; $6835: $01 $72 $52
	inc  bc                                          ; $6838: $03
	sub  h                                           ; $6839: $94
	inc  b                                           ; $683a: $04
	sbc  [hl]                                        ; $683b: $9e
	ld   a, c                                        ; $683c: $79
	adc  l                                           ; $683d: $8d
	halt                                             ; $683e: $76
	sbc  d                                           ; $683f: $9a
	ld   [hl], h                                     ; $6840: $74
	ld   h, l                                        ; $6841: $65
	adc  h                                           ; $6842: $8c
	ld   [hl], c                                     ; $6843: $71
	ld   l, l                                        ; $6844: $6d
	rst  $38                                         ; $6845: $ff
	dec  c                                           ; $6846: $0d
	nop                                              ; $6847: $00
	ld   a, [bc]                                     ; $6848: $0a
	ld   b, $2e                                      ; $6849: $06 $2e
	ld   [bc], a                                     ; $684b: $02
	rrca                                             ; $684c: $0f
	nop                                              ; $684d: $00
	ld   bc, $6b01                                   ; $684e: $01 $01 $6b
	ld   h, l                                        ; $6851: $65
	ld   [hl], h                                     ; $6852: $74
	sbc  [hl]                                        ; $6853: $9e
	inc  b                                           ; $6854: $04
	ld   l, d                                        ; $6855: $6a
	and  b                                           ; $6856: $a0
	ld   d, b                                        ; $6857: $50
	adc  [hl]                                        ; $6858: $8e
	sbc  a                                           ; $6859: $9f
	dec  c                                           ; $685a: $0d
	rst  $38                                         ; $685b: $ff
	rst  $38                                         ; $685c: $ff
	rst  $38                                         ; $685d: $ff
	rst  $38                                         ; $685e: $ff
	and  c                                           ; $685f: $a1
	ld   sp, hl                                      ; $6860: $f9
	dec  c                                           ; $6861: $0d
	nop                                              ; $6862: $00
	dec  b                                           ; $6863: $05
	ld   b, b                                        ; $6864: $40
	rst  $38                                         ; $6865: $ff
	inc  bc                                          ; $6866: $03
	rst  $38                                         ; $6867: $ff
	ld   bc, $2801                                   ; $6868: $01 $01 $28
	nop                                              ; $686b: $00
	ld   bc, $a150                                   ; $686c: $01 $50 $a1
	ld   h, [hl]                                     ; $686f: $66
	sub  c                                           ; $6870: $91
	pop  bc                                          ; $6871: $c1
	db   $e3                                         ; $6872: $e3
	ld   [hl], l                                     ; $6873: $75
	ld   h, l                                        ; $6874: $65
	sub  l                                           ; $6875: $95
	ld   sp, hl                                      ; $6876: $f9
	dec  c                                           ; $6877: $0d
	nop                                              ; $6878: $00
	ld   a, [bc]                                     ; $6879: $0a
	ld   b, $2e                                      ; $687a: $06 $2e
	ld   [bc], a                                     ; $687c: $02
	rrca                                             ; $687d: $0f
	nop                                              ; $687e: $00
	ld   bc, $6b01                                   ; $687f: $01 $01 $6b
	ld   h, l                                        ; $6882: $65
	ld   [hl], h                                     ; $6883: $74
	rst  $38                                         ; $6884: $ff
	rst  $38                                         ; $6885: $ff
	dec  c                                           ; $6886: $0d
	ld   [hl], a                                     ; $6887: $77
	ld   d, h                                        ; $6888: $54
	ld   h, l                                        ; $6889: $65
	sub  [hl]                                        ; $688a: $96
	ld   d, h                                        ; $688b: $54
	ld   e, c                                        ; $688c: $59
	rst  $38                                         ; $688d: $ff
	rst  $38                                         ; $688e: $ff
	rst  $38                                         ; $688f: $ff
	rst  $38                                         ; $6890: $ff
	dec  c                                           ; $6891: $0d
	nop                                              ; $6892: $00
	ld   a, [bc]                                     ; $6893: $0a
	dec  b                                           ; $6894: $05
	ld   b, b                                        ; $6895: $40
	rst  $38                                         ; $6896: $ff
	inc  bc                                          ; $6897: $03
	rst  $38                                         ; $6898: $ff
	ld   bc, $2801                                   ; $6899: $01 $01 $28
	nop                                              ; $689c: $00
	ld   b, $2e                                      ; $689d: $06 $2e
	ld   [bc], a                                     ; $689f: $02
	add  hl, de                                      ; $68a0: $19
	inc  b                                           ; $68a1: $04
	inc  bc                                          ; $68a2: $03
	ret  nc                                          ; $68a3: $d0

	push af                                          ; $68a4: $f5
	xor  h                                           ; $68a5: $ac
	jp   nz, $03a0                                   ; $68a6: $c2 $a0 $03

	and  b                                           ; $68a9: $a0
	ld   [hl], d                                     ; $68aa: $72
	nop                                              ; $68ab: $00
	nop                                              ; $68ac: $00
	ret                                              ; $68ad: $c9


	push af                                          ; $68ae: $f5
	xor  h                                           ; $68af: $ac
	jp   nz, $03a0                                   ; $68b0: $c2 $a0 $03

	and  b                                           ; $68b3: $a0
	ld   [hl], d                                     ; $68b4: $72
	nop                                              ; $68b5: $00
	ld   bc, $f5c9                                   ; $68b6: $01 $c9 $f5
	xor  h                                           ; $68b9: $ac
	push bc                                          ; $68ba: $c5
	and  b                                           ; $68bb: $a0
	inc  bc                                          ; $68bc: $03
	ld   l, d                                        ; $68bd: $6a
	add  a                                           ; $68be: $87
	sbc  c                                           ; $68bf: $99
	nop                                              ; $68c0: $00
	ld   [bc], a                                     ; $68c1: $02
	rlca                                             ; $68c2: $07
	ld   h, b                                        ; $68c3: $60
	inc  bc                                          ; $68c4: $03
	ld   [bc], a                                     ; $68c5: $02
	inc  bc                                          ; $68c6: $03
	ld   bc, $2000                                   ; $68c7: $01 $00 $20
	nop                                              ; $68ca: $00
	rlca                                             ; $68cb: $07
	adc  b                                           ; $68cc: $88
	inc  bc                                          ; $68cd: $03
	ld   [bc], a                                     ; $68ce: $02
	inc  bc                                          ; $68cf: $03
	ld   bc, $2001                                   ; $68d0: $01 $01 $20
	nop                                              ; $68d3: $00
	rlca                                             ; $68d4: $07
	pop  bc                                          ; $68d5: $c1
	inc  bc                                          ; $68d6: $03
	ld   [bc], a                                     ; $68d7: $02
	inc  bc                                          ; $68d8: $03
	ld   bc, $2002                                   ; $68d9: $01 $02 $20
	nop                                              ; $68dc: $00
	ld   b, $16                                      ; $68dd: $06 $16
	inc  b                                           ; $68df: $04
	rrca                                             ; $68e0: $0f
	nop                                              ; $68e1: $00
	ld   bc, $d001                                   ; $68e2: $01 $01 $d0
	push af                                          ; $68e5: $f5
	xor  h                                           ; $68e6: $ac
	jp   nz, $ff7d                                   ; $68e7: $c2 $7d $ff

	rst  $38                                         ; $68ea: $ff
	sub  [hl]                                        ; $68eb: $96
	ld   h, l                                        ; $68ec: $65
	ld   a, [$6f0d]                                  ; $68ed: $fa $0d $6f
	sub  c                                           ; $68f0: $91
	and  c                                           ; $68f1: $a1
	halt                                             ; $68f2: $76
	inc  bc                                          ; $68f3: $03
	and  b                                           ; $68f4: $a0
	ld   [hl], c                                     ; $68f5: $71
	ld   l, l                                        ; $68f6: $6d
	ld   l, h                                        ; $68f7: $6c
	sbc  a                                           ; $68f8: $9f
	dec  c                                           ; $68f9: $0d
	nop                                              ; $68fa: $00
	ld   a, [bc]                                     ; $68fb: $0a
	dec  b                                           ; $68fc: $05
	ld   b, b                                        ; $68fd: $40
	rst  $38                                         ; $68fe: $ff
	inc  bc                                          ; $68ff: $03
	rst  $38                                         ; $6900: $ff
	ld   bc, $2801                                   ; $6901: $01 $01 $28
	nop                                              ; $6904: $00
	ld   b, $35                                      ; $6905: $06 $35
	inc  b                                           ; $6907: $04
	rrca                                             ; $6908: $0f
	nop                                              ; $6909: $00
	ld   bc, $c901                                   ; $690a: $01 $01 $c9
	push af                                          ; $690d: $f5
	xor  h                                           ; $690e: $ac
	jp   nz, Jump_064_6fa0                           ; $690f: $c2 $a0 $6f

	sub  c                                           ; $6912: $91
	and  c                                           ; $6913: $a1
	halt                                             ; $6914: $76
	inc  bc                                          ; $6915: $03
	and  b                                           ; $6916: $a0
	ld   [hl], c                                     ; $6917: $71
	ld   [hl], h                                     ; $6918: $74
	dec  c                                           ; $6919: $0d
	rst  $38                                         ; $691a: $ff
	rst  $38                                         ; $691b: $ff
	ld   [hl], a                                     ; $691c: $77
	ld   h, c                                        ; $691d: $61
	add  [hl]                                        ; $691e: $86
	ld   [bc], a                                     ; $691f: $02
	ld   a, a                                        ; $6920: $7f
	ld   e, l                                        ; $6921: $5d
	and  c                                           ; $6922: $a1
	ld   l, [hl]                                     ; $6923: $6e
	inc  b                                           ; $6924: $04
	ld   l, l                                        ; $6925: $6d
	ld   a, l                                        ; $6926: $7d
	ld   sp, hl                                      ; $6927: $f9
	dec  c                                           ; $6928: $0d
	nop                                              ; $6929: $00
	dec  b                                           ; $692a: $05
	ld   b, b                                        ; $692b: $40
	rst  $38                                         ; $692c: $ff
	inc  bc                                          ; $692d: $03
	rst  $38                                         ; $692e: $ff
	ld   bc, $2801                                   ; $692f: $01 $01 $28
	nop                                              ; $6932: $00
	ld   bc, $5a6f                                   ; $6933: $01 $6f $5a
	ld   d, h                                        ; $6936: $54
	ld   [hl], l                                     ; $6937: $75
	ld   h, l                                        ; $6938: $65
	sub  l                                           ; $6939: $95
	sbc  a                                           ; $693a: $9f
	dec  c                                           ; $693b: $0d
	nop                                              ; $693c: $00
	ld   a, [bc]                                     ; $693d: $0a
	ld   b, $20                                      ; $693e: $06 $20
	inc  bc                                          ; $6940: $03
	rrca                                             ; $6941: $0f
	nop                                              ; $6942: $00
	ld   bc, $c901                                   ; $6943: $01 $01 $c9
	push af                                          ; $6946: $f5
	xor  h                                           ; $6947: $ac
	push bc                                          ; $6948: $c5
	and  b                                           ; $6949: $a0
	inc  bc                                          ; $694a: $03
	ld   l, d                                        ; $694b: $6a
	add  a                                           ; $694c: $87
	ld   [hl], h                                     ; $694d: $74
	sbc  [hl]                                        ; $694e: $9e
	inc  bc                                          ; $694f: $03
	db   $dd                                         ; $6950: $dd
	ld   a, c                                        ; $6951: $79
	inc  bc                                          ; $6952: $03
	ld   c, [hl]                                     ; $6953: $4e
	ld   [hl], d                                     ; $6954: $72
	sbc  a                                           ; $6955: $9f
	dec  c                                           ; $6956: $0d
	ld   a, b                                        ; $6957: $78
	db   $fc                                         ; $6958: $fc
	and  c                                           ; $6959: $a1
	ld   l, a                                        ; $695a: $6f
	sub  c                                           ; $695b: $91
	ld   [hl], c                                     ; $695c: $71
	ld   [hl], h                                     ; $695d: $74
	rst  $38                                         ; $695e: $ff
	rst  $38                                         ; $695f: $ff
	dec  c                                           ; $6960: $0d
	nop                                              ; $6961: $00
	ld   a, [bc]                                     ; $6962: $0a
	ld   bc, $a16b                                   ; $6963: $01 $6b $a1
	ld   a, b                                        ; $6966: $78
	ld   h, c                                        ; $6967: $61
	halt                                             ; $6968: $76
	ld   [bc], a                                     ; $6969: $02
	sbc  l                                           ; $696a: $9d
	ld   [hl], c                                     ; $696b: $71
	ld   [hl], h                                     ; $696c: $74
	sbc  c                                           ; $696d: $99
	inc  b                                           ; $696e: $04
	ld   a, d                                        ; $696f: $7a
	ld   [bc], a                                     ; $6970: $02
	ld   a, e                                        ; $6971: $7b
	ld   h, [hl]                                     ; $6972: $66
	sub  c                                           ; $6973: $91
	dec  c                                           ; $6974: $0d
	ld   a, b                                        ; $6975: $78
	ld   d, d                                        ; $6976: $52
	sub  [hl]                                        ; $6977: $96
	sbc  a                                           ; $6978: $9f
	dec  c                                           ; $6979: $0d
	nop                                              ; $697a: $00
	dec  b                                           ; $697b: $05
	ld   b, b                                        ; $697c: $40
	rst  $38                                         ; $697d: $ff
	inc  bc                                          ; $697e: $03
	rst  $38                                         ; $697f: $ff
	ld   bc, $2801                                   ; $6980: $01 $01 $28
	nop                                              ; $6983: $00
	ld   bc, $7003                                   ; $6984: $01 $03 $70
	ld   e, l                                        ; $6987: $5d
	ld   h, l                                        ; $6988: $65
	ld   l, l                                        ; $6989: $6d
	ld   e, l                                        ; $698a: $5d
	ld   h, l                                        ; $698b: $65
	ld   a, b                                        ; $698c: $78
	ld   e, e                                        ; $698d: $5b
	sub  c                                           ; $698e: $91
	sbc  a                                           ; $698f: $9f
	dec  c                                           ; $6990: $0d
	nop                                              ; $6991: $00
	ld   a, [bc]                                     ; $6992: $0a
	ld   b, $20                                      ; $6993: $06 $20
	inc  bc                                          ; $6995: $03
	rrca                                             ; $6996: $0f
	nop                                              ; $6997: $00
	ld   bc, $ff01                                   ; $6998: $01 $01 $ff
	rst  $38                                         ; $699b: $ff
	ld   [hl], a                                     ; $699c: $77
	ld   d, h                                        ; $699d: $54
	ld   h, l                                        ; $699e: $65
	sub  [hl]                                        ; $699f: $96
	ld   d, h                                        ; $69a0: $54
	ld   e, c                                        ; $69a1: $59
	rst  $38                                         ; $69a2: $ff
	rst  $38                                         ; $69a3: $ff
	rst  $38                                         ; $69a4: $ff
	rst  $38                                         ; $69a5: $ff
	dec  c                                           ; $69a6: $0d
	nop                                              ; $69a7: $00
	ld   a, [bc]                                     ; $69a8: $0a
	dec  b                                           ; $69a9: $05
	ld   b, b                                        ; $69aa: $40
	rst  $38                                         ; $69ab: $ff
	inc  bc                                          ; $69ac: $03
	rst  $38                                         ; $69ad: $ff
	ld   bc, $2801                                   ; $69ae: $01 $01 $28
	nop                                              ; $69b1: $00
	ld   b, $20                                      ; $69b2: $06 $20
	inc  bc                                          ; $69b4: $03
	add  hl, de                                      ; $69b5: $19
	inc  b                                           ; $69b6: $04
	inc  bc                                          ; $69b7: $03
	ld   h, l                                        ; $69b8: $65
	and  c                                           ; $69b9: $a1
	ld   h, c                                        ; $69ba: $61
	ld   e, e                                        ; $69bb: $5b
	sub  e                                           ; $69bc: $93
	ld   d, h                                        ; $69bd: $54
	ld   h, a                                        ; $69be: $67
	sbc  c                                           ; $69bf: $99
	nop                                              ; $69c0: $00
	nop                                              ; $69c1: $00
	ld   h, [hl]                                     ; $69c2: $66
	and  c                                           ; $69c3: $a1
	ld   h, c                                        ; $69c4: $61
	ld   d, h                                        ; $69c5: $54
	ld   h, c                                        ; $69c6: $61
	ld   e, e                                        ; $69c7: $5b
	sub  e                                           ; $69c8: $93
	ld   d, h                                        ; $69c9: $54
	and  b                                           ; $69ca: $a0
	ld   h, a                                        ; $69cb: $67
	sbc  c                                           ; $69cc: $99
	nop                                              ; $69cd: $00
	ld   bc, $9756                                   ; $69ce: $01 $56 $97
	ld   h, c                                        ; $69d1: $61
	ld   e, e                                        ; $69d2: $5b
	sub  e                                           ; $69d3: $93
	ld   d, h                                        ; $69d4: $54
	and  b                                           ; $69d5: $a0
	ld   h, a                                        ; $69d6: $67
	sbc  c                                           ; $69d7: $99
	nop                                              ; $69d8: $00
	ld   [bc], a                                     ; $69d9: $02
	rlca                                             ; $69da: $07
	ld   a, b                                        ; $69db: $78
	inc  b                                           ; $69dc: $04
	ld   [bc], a                                     ; $69dd: $02
	inc  bc                                          ; $69de: $03
	ld   bc, $2000                                   ; $69df: $01 $00 $20
	nop                                              ; $69e2: $00
	rlca                                             ; $69e3: $07
	and  [hl]                                        ; $69e4: $a6
	inc  b                                           ; $69e5: $04
	ld   [bc], a                                     ; $69e6: $02
	inc  bc                                          ; $69e7: $03
	ld   bc, $2001                                   ; $69e8: $01 $01 $20
	nop                                              ; $69eb: $00
	rlca                                             ; $69ec: $07
	and  $04                                         ; $69ed: $e6 $04
	ld   [bc], a                                     ; $69ef: $02
	inc  bc                                          ; $69f0: $03
	ld   bc, $2002                                   ; $69f1: $01 $02 $20
	nop                                              ; $69f4: $00
	ld   b, $45                                      ; $69f5: $06 $45
	dec  b                                           ; $69f7: $05
	rrca                                             ; $69f8: $0f
	nop                                              ; $69f9: $00
	ld   bc, $0301                                   ; $69fa: $01 $01 $03
	ld   l, c                                        ; $69fd: $69
	ld   [bc], a                                     ; $69fe: $02
	xor  d                                           ; $69ff: $aa
	ld   a, c                                        ; $6a00: $79
	ld   h, l                                        ; $6a01: $65
	and  c                                           ; $6a02: $a1
	ld   h, c                                        ; $6a03: $61
	ld   e, e                                        ; $6a04: $5b
	sub  e                                           ; $6a05: $93
	ld   d, h                                        ; $6a06: $54
	and  b                                           ; $6a07: $a0
	ld   h, l                                        ; $6a08: $65
	ld   [hl], h                                     ; $6a09: $74
	rst  $38                                         ; $6a0a: $ff
	rst  $38                                         ; $6a0b: $ff
	dec  c                                           ; $6a0c: $0d
	sub  [hl]                                        ; $6a0d: $96
	ld   h, l                                        ; $6a0e: $65
	ld   a, [$ab10]                                  ; $6a0f: $fa $10 $ab
	call nz, $fbb2                                   ; $6a12: $c4 $b2 $fb
	ld   l, [hl]                                     ; $6a15: $6e
	ld   a, [$000d]                                  ; $6a16: $fa $0d $00
	ld   a, [bc]                                     ; $6a19: $0a
	dec  b                                           ; $6a1a: $05
	ld   b, b                                        ; $6a1b: $40
	rst  $38                                         ; $6a1c: $ff
	inc  bc                                          ; $6a1d: $03
	rst  $38                                         ; $6a1e: $ff
	ld   bc, $2801                                   ; $6a1f: $01 $01 $28
	nop                                              ; $6a22: $00
	ld   b, $6d                                      ; $6a23: $06 $6d
	dec  b                                           ; $6a25: $05
	rrca                                             ; $6a26: $0f
	nop                                              ; $6a27: $00
	ld   bc, $0301                                   ; $6a28: $01 $01 $03
	ld   l, c                                        ; $6a2b: $69
	ld   [bc], a                                     ; $6a2c: $02
	xor  d                                           ; $6a2d: $aa
	ld   a, c                                        ; $6a2e: $79
	sbc  [hl]                                        ; $6a2f: $9e
	ld   h, [hl]                                     ; $6a30: $66
	and  c                                           ; $6a31: $a1
	ld   h, c                                        ; $6a32: $61
	ld   d, h                                        ; $6a33: $54
	ld   h, c                                        ; $6a34: $61
	ld   e, e                                        ; $6a35: $5b
	sub  e                                           ; $6a36: $93
	ld   d, h                                        ; $6a37: $54
	and  b                                           ; $6a38: $a0
	dec  c                                           ; $6a39: $0d
	ld   h, l                                        ; $6a3a: $65
	ld   [hl], h                                     ; $6a3b: $74
	rst  $38                                         ; $6a3c: $ff
	rst  $38                                         ; $6a3d: $ff
	and  c                                           ; $6a3e: $a1
	ld   sp, hl                                      ; $6a3f: $f9
	db   $10                                         ; $6a40: $10
	ld   a, b                                        ; $6a41: $78
	and  c                                           ; $6a42: $a1
	ld   [hl], l                                     ; $6a43: $75
	ld   l, e                                        ; $6a44: $6b
	and  c                                           ; $6a45: $a1
	ld   a, b                                        ; $6a46: $78
	ld   [bc], a                                     ; $6a47: $02
	jp   $000d                                       ; $6a48: $c3 $0d $00


	dec  b                                           ; $6a4b: $05
	ld   b, b                                        ; $6a4c: $40
	rst  $38                                         ; $6a4d: $ff
	inc  bc                                          ; $6a4e: $03
	rst  $38                                         ; $6a4f: $ff
	ld   bc, $2801                                   ; $6a50: $01 $01 $28
	nop                                              ; $6a53: $00
	ld   bc, $7865                                   ; $6a54: $01 $65 $78
	ld   e, e                                        ; $6a57: $5b
	sub  c                                           ; $6a58: $91
	ld   a, b                                        ; $6a59: $78
	sub  a                                           ; $6a5a: $97
	ld   a, b                                        ; $6a5b: $78
	ld   d, d                                        ; $6a5c: $52
	and  c                                           ; $6a5d: $a1
	ld   l, [hl]                                     ; $6a5e: $6e
	ld   sp, hl                                      ; $6a5f: $f9
	dec  c                                           ; $6a60: $0d
	nop                                              ; $6a61: $00
	ld   a, [bc]                                     ; $6a62: $0a
	ld   b, $35                                      ; $6a63: $06 $35
	inc  b                                           ; $6a65: $04
	rrca                                             ; $6a66: $0f
	nop                                              ; $6a67: $00
	ld   bc, $9601                                   ; $6a68: $01 $01 $96
	ld   h, l                                        ; $6a6b: $65
	sbc  [hl]                                        ; $6a6c: $9e
	inc  bc                                          ; $6a6d: $03
	ld   l, c                                        ; $6a6e: $69
	ld   [bc], a                                     ; $6a6f: $02
	xor  d                                           ; $6a70: $aa
	ld   a, c                                        ; $6a71: $79
	ld   d, [hl]                                     ; $6a72: $56
	sub  a                                           ; $6a73: $97
	ld   h, c                                        ; $6a74: $61
	ld   e, e                                        ; $6a75: $5b
	sub  e                                           ; $6a76: $93
	ld   d, h                                        ; $6a77: $54
	and  b                                           ; $6a78: $a0
	dec  c                                           ; $6a79: $0d
	ld   h, l                                        ; $6a7a: $65
	ld   [hl], h                                     ; $6a7b: $74
	rst  $38                                         ; $6a7c: $ff
	rst  $38                                         ; $6a7d: $ff
	and  c                                           ; $6a7e: $a1
	ld   sp, hl                                      ; $6a7f: $f9
	db   $10                                         ; $6a80: $10
	inc  b                                           ; $6a81: $04
	ld   l, l                                        ; $6a82: $6d
	ld   a, c                                        ; $6a83: $79
	ld   d, [hl]                                     ; $6a84: $56
	sub  a                                           ; $6a85: $97
	ld   a, b                                        ; $6a86: $78
	and  c                                           ; $6a87: $a1
	ld   [hl], h                                     ; $6a88: $74
	dec  c                                           ; $6a89: $0d
	ld   a, b                                        ; $6a8a: $78
	ld   d, d                                        ; $6a8b: $52
	sub  [hl]                                        ; $6a8c: $96
	ld   a, b                                        ; $6a8d: $78
	rst  $38                                         ; $6a8e: $ff
	rst  $38                                         ; $6a8f: $ff
	dec  c                                           ; $6a90: $0d
	nop                                              ; $6a91: $00
	ld   a, [bc]                                     ; $6a92: $0a
	ld   bc, $fc78                                   ; $6a93: $01 $78 $fc
	and  c                                           ; $6a96: $a1
	ld   [hl], h                                     ; $6a97: $74
	ld   [bc], a                                     ; $6a98: $02
	sbc  l                                           ; $6a99: $9d
	ld   [hl], c                                     ; $6a9a: $71
	ld   [hl], h                                     ; $6a9b: $74
	sbc  c                                           ; $6a9c: $99
	inc  b                                           ; $6a9d: $04
	ld   a, d                                        ; $6a9e: $7a
	ld   [bc], a                                     ; $6a9f: $02
	ld   a, e                                        ; $6aa0: $7b
	ld   h, [hl]                                     ; $6aa1: $66
	sub  c                                           ; $6aa2: $91
	dec  c                                           ; $6aa3: $0d
	ld   a, b                                        ; $6aa4: $78
	ld   d, d                                        ; $6aa5: $52
	ld   l, h                                        ; $6aa6: $6c
	sbc  a                                           ; $6aa7: $9f
	dec  c                                           ; $6aa8: $0d
	nop                                              ; $6aa9: $00
	dec  b                                           ; $6aaa: $05
	ld   b, b                                        ; $6aab: $40
	rst  $38                                         ; $6aac: $ff
	inc  bc                                          ; $6aad: $03
	rst  $38                                         ; $6aae: $ff
	ld   bc, $2801                                   ; $6aaf: $01 $01 $28
	nop                                              ; $6ab2: $00
	ld   bc, $2805                                   ; $6ab3: $01 $05 $28
	ld   e, d                                        ; $6ab6: $5a
	ld   a, b                                        ; $6ab7: $78
	ld   e, e                                        ; $6ab8: $5b
	sub  c                                           ; $6ab9: $91
	ld   e, b                                        ; $6aba: $58
	ld   e, l                                        ; $6abb: $5d
	sbc  d                                           ; $6abc: $9a
	sbc  c                                           ; $6abd: $99
	ld   a, [$000d]                                  ; $6abe: $fa $0d $00
	ld   a, [bc]                                     ; $6ac1: $0a
	ld   b, $35                                      ; $6ac2: $06 $35
	inc  b                                           ; $6ac4: $04
	rrca                                             ; $6ac5: $0f
	nop                                              ; $6ac6: $00
	ld   bc, $0301                                   ; $6ac7: $01 $01 $03
	dec  c                                           ; $6aca: $0d
	inc  bc                                          ; $6acb: $03
	ld   h, l                                        ; $6acc: $65
	ld   h, b                                        ; $6acd: $60
	ld   a, c                                        ; $6ace: $79
	rst  $38                                         ; $6acf: $ff
	rst  $38                                         ; $6ad0: $ff
	dec  c                                           ; $6ad1: $0d
	rst  $38                                         ; $6ad2: $ff
	rst  $38                                         ; $6ad3: $ff
	rst  $38                                         ; $6ad4: $ff
	rst  $38                                         ; $6ad5: $ff
	ld   [hl], a                                     ; $6ad6: $77
	ld   d, h                                        ; $6ad7: $54
	ld   h, l                                        ; $6ad8: $65
	sub  [hl]                                        ; $6ad9: $96
	ld   d, h                                        ; $6ada: $54
	ld   e, c                                        ; $6adb: $59
	rst  $38                                         ; $6adc: $ff
	rst  $38                                         ; $6add: $ff
	dec  c                                           ; $6ade: $0d
	nop                                              ; $6adf: $00
	ld   a, [bc]                                     ; $6ae0: $0a
	dec  b                                           ; $6ae1: $05
	ld   b, b                                        ; $6ae2: $40
	rst  $38                                         ; $6ae3: $ff
	inc  bc                                          ; $6ae4: $03
	rst  $38                                         ; $6ae5: $ff
	ld   bc, $2801                                   ; $6ae6: $01 $01 $28
	nop                                              ; $6ae9: $00
	ld   b, $35                                      ; $6aea: $06 $35
	inc  b                                           ; $6aec: $04
	rlca                                             ; $6aed: $07
	adc  b                                           ; $6aee: $88
	dec  b                                           ; $6aef: $05
	inc  bc                                          ; $6af0: $03
	rst  $38                                         ; $6af1: $ff
	ld   bc, $2005                                   ; $6af2: $01 $05 $20
	nop                                              ; $6af5: $00
	rlca                                             ; $6af6: $07
	ret  z                                           ; $6af7: $c8

	dec  b                                           ; $6af8: $05
	inc  bc                                          ; $6af9: $03
	rst  $38                                         ; $6afa: $ff
	ld   bc, $2006                                   ; $6afb: $01 $06 $20
	nop                                              ; $6afe: $00
	rlca                                             ; $6aff: $07
	inc  hl                                          ; $6b00: $23
	ld   b, $03                                      ; $6b01: $06 $03
	rst  $38                                         ; $6b03: $ff
	ld   bc, $2507                                   ; $6b04: $01 $07 $25
	nop                                              ; $6b07: $00
	inc  c                                           ; $6b08: $0c
	ld   [bc], a                                     ; $6b09: $02
	ld   c, $04                                      ; $6b0a: $0e $04
	rrca                                             ; $6b0c: $0f
	nop                                              ; $6b0d: $00
	ld   bc, $a301                                   ; $6b0e: $01 $01 $a3
	and  l                                           ; $6b11: $a5
	db   $ec                                         ; $6b12: $ec
	cp   d                                           ; $6b13: $ba
	sbc  a                                           ; $6b14: $9f
	dec  c                                           ; $6b15: $0d
	ld   e, b                                        ; $6b16: $58
	ld   a, l                                        ; $6b17: $7d
	sub  [hl]                                        ; $6b18: $96
	ld   d, h                                        ; $6b19: $54
	ld   a, [$000d]                                  ; $6b1a: $fa $0d $00
	ld   a, [bc]                                     ; $6b1d: $0a
	inc  e                                           ; $6b1e: $1c
	inc  b                                           ; $6b1f: $04
	ld   bc, $1d01                                   ; $6b20: $01 $01 $1d
	ld   b, b                                        ; $6b23: $40
	inc  d                                           ; $6b24: $14
	inc  bc                                          ; $6b25: $03
	inc  d                                           ; $6b26: $14
	ld   bc, $2802                                   ; $6b27: $01 $02 $28
	nop                                              ; $6b2a: $00
	ld   bc, $7d58                                   ; $6b2b: $01 $58 $7d
	sub  [hl]                                        ; $6b2e: $96
	ld   d, h                                        ; $6b2f: $54
	sbc  [hl]                                        ; $6b30: $9e
	ld   l, a                                        ; $6b31: $6f
	ld   d, d                                        ; $6b32: $52
	ld   [bc], a                                     ; $6b33: $02
	inc  de                                          ; $6b34: $13
	ld   l, a                                        ; $6b35: $6f
	sub  c                                           ; $6b36: $91
	and  c                                           ; $6b37: $a1
	dec  c                                           ; $6b38: $0d
	ld   h, [hl]                                     ; $6b39: $66
	sub  c                                           ; $6b3a: $91
	sbc  [hl]                                        ; $6b3b: $9e
	xor  $c4                                         ; $6b3c: $ee $c4
	push bc                                          ; $6b3e: $c5
	or   l                                           ; $6b3f: $b5
	ei                                               ; $6b40: $fb
	ld   a, [$000d]                                  ; $6b41: $fa $0d $00
	ld   a, [bc]                                     ; $6b44: $0a
	ld   b, $6f                                      ; $6b45: $06 $6f
	ld   b, $0c                                      ; $6b47: $06 $0c
	ld   [bc], a                                     ; $6b49: $02
	ld   c, $04                                      ; $6b4a: $0e $04
	rrca                                             ; $6b4c: $0f
	nop                                              ; $6b4d: $00
	ld   bc, $040d                                   ; $6b4e: $01 $0d $04
	nop                                              ; $6b51: $00
	ld   bc, $7d58                                   ; $6b52: $01 $58 $7d
	sub  [hl]                                        ; $6b55: $96
	ld   d, h                                        ; $6b56: $54
	sbc  [hl]                                        ; $6b57: $9e
	and  e                                           ; $6b58: $a3
	and  l                                           ; $6b59: $a5
	db   $ec                                         ; $6b5a: $ec
	cp   d                                           ; $6b5b: $ba
	sbc  a                                           ; $6b5c: $9f
	dec  c                                           ; $6b5d: $0d
	ld   h, d                                        ; $6b5e: $62
	adc  a                                           ; $6b5f: $8f
	and  c                                           ; $6b60: $a1
	ld   a, e                                        ; $6b61: $7b
	sbc  [hl]                                        ; $6b62: $9e
	inc  b                                           ; $6b63: $04
	rla                                              ; $6b64: $17
	ld   l, l                                        ; $6b65: $6d
	ld   l, c                                        ; $6b66: $69
	ld   l, a                                        ; $6b67: $6f
	sub  c                                           ; $6b68: $91
	ld   [hl], c                                     ; $6b69: $71
	ld   [hl], h                                     ; $6b6a: $74
	sbc  a                                           ; $6b6b: $9f
	dec  c                                           ; $6b6c: $0d
	nop                                              ; $6b6d: $00
	ld   a, [bc]                                     ; $6b6e: $0a
	inc  e                                           ; $6b6f: $1c
	inc  b                                           ; $6b70: $04
	nop                                              ; $6b71: $00
	nop                                              ; $6b72: $00
	ld   bc, $526e                                   ; $6b73: $01 $6e $52
	ld   h, [hl]                                     ; $6b76: $66
	sub  l                                           ; $6b77: $95
	ld   d, h                                        ; $6b78: $54
	add  h                                           ; $6b79: $84
	ld   l, [hl]                                     ; $6b7a: $6e
	sub  [hl]                                        ; $6b7b: $96
	sbc  a                                           ; $6b7c: $9f
	dec  c                                           ; $6b7d: $0d
	and  e                                           ; $6b7e: $a3
	and  l                                           ; $6b7f: $a5
	db   $ec                                         ; $6b80: $ec
	cp   d                                           ; $6b81: $ba
	sub  b                                           ; $6b82: $90
	sbc  [hl]                                        ; $6b83: $9e
	dec  c                                           ; $6b84: $0d
	ld   d, d                                        ; $6b85: $52
	adc  h                                           ; $6b86: $8c
	sbc  [hl]                                        ; $6b87: $9e
	ld   e, e                                        ; $6b88: $5b
	ld   l, l                                        ; $6b89: $6d
	halt                                             ; $6b8a: $76
	ld   h, c                                        ; $6b8b: $61
	ld   l, [hl]                                     ; $6b8c: $6e
	ld   e, c                                        ; $6b8d: $59
	sub  a                                           ; $6b8e: $97
	sbc  a                                           ; $6b8f: $9f
	dec  c                                           ; $6b90: $0d
	nop                                              ; $6b91: $00
	ld   a, [bc]                                     ; $6b92: $0a
	ld   bc, $9166                                   ; $6b93: $01 $66 $91
	sbc  [hl]                                        ; $6b96: $9e
	xor  $c4                                         ; $6b97: $ee $c4
	push bc                                          ; $6b99: $c5
	or   l                                           ; $6b9a: $b5
	ei                                               ; $6b9b: $fb
	ld   a, [$000d]                                  ; $6b9c: $fa $0d $00
	ld   a, [bc]                                     ; $6b9f: $0a
	ld   b, $6f                                      ; $6ba0: $06 $6f
	ld   b, $0c                                      ; $6ba2: $06 $0c
	ld   [bc], a                                     ; $6ba4: $02
	ld   c, $04                                      ; $6ba5: $0e $04
	inc  e                                           ; $6ba7: $1c
	inc  b                                           ; $6ba8: $04
	rlca                                             ; $6ba9: $07
	rlca                                             ; $6baa: $07
	dec  e                                           ; $6bab: $1d
	ld   b, b                                        ; $6bac: $40
	inc  d                                           ; $6bad: $14
	inc  bc                                          ; $6bae: $03
	inc  d                                           ; $6baf: $14
	ld   bc, $2903                                   ; $6bb0: $01 $03 $29
	nop                                              ; $6bb3: $00
	ld   bc, $526f                                   ; $6bb4: $01 $6f $52
	ld   [bc], a                                     ; $6bb7: $02
	inc  de                                          ; $6bb8: $13
	ld   l, a                                        ; $6bb9: $6f
	sub  c                                           ; $6bba: $91
	and  c                                           ; $6bbb: $a1
	sbc  a                                           ; $6bbc: $9f
	dec  c                                           ; $6bbd: $0d
	ld   e, b                                        ; $6bbe: $58
	ld   l, e                                        ; $6bbf: $6b
	ld   d, d                                        ; $6bc0: $52
	rst  $38                                         ; $6bc1: $ff
	rst  $38                                         ; $6bc2: $ff
	dec  c                                           ; $6bc3: $0d
	nop                                              ; $6bc4: $00
	ld   a, [bc]                                     ; $6bc5: $0a
	ld   bc, $a5a3                                   ; $6bc6: $01 $a3 $a5
	db   $ec                                         ; $6bc9: $ec
	cp   d                                           ; $6bca: $ba
	sbc  [hl]                                        ; $6bcb: $9e
	ld   l, b                                        ; $6bcc: $68
	ld   [hl], c                                     ; $6bcd: $71
	halt                                             ; $6bce: $76
	adc  h                                           ; $6bcf: $8c
	ld   [hl], c                                     ; $6bd0: $71
	ld   [hl], h                                     ; $6bd1: $74
	ld   l, l                                        ; $6bd2: $6d
	and  c                                           ; $6bd3: $a1
	dec  c                                           ; $6bd4: $0d
	ld   l, [hl]                                     ; $6bd5: $6e
	ld   e, c                                        ; $6bd6: $59
	sub  a                                           ; $6bd7: $97
	ld   a, e                                        ; $6bd8: $7b
	sbc  a                                           ; $6bd9: $9f
	sub  b                                           ; $6bda: $90
	ld   d, h                                        ; $6bdb: $54
	ld   e, b                                        ; $6bdc: $58
	ld   e, l                                        ; $6bdd: $5d
	sbc  d                                           ; $6bde: $9a
	ld   a, b                                        ; $6bdf: $78
	ld   d, d                                        ; $6be0: $52
	dec  c                                           ; $6be1: $0d
	sub  [hl]                                        ; $6be2: $96
	ld   d, h                                        ; $6be3: $54
	ld   a, c                                        ; $6be4: $79
	ld   h, l                                        ; $6be5: $65
	ld   [hl], h                                     ; $6be6: $74
	sub  [hl]                                        ; $6be7: $96
	sbc  a                                           ; $6be8: $9f
	dec  c                                           ; $6be9: $0d
	nop                                              ; $6bea: $00
	ld   a, [bc]                                     ; $6beb: $0a
	ld   b, $6f                                      ; $6bec: $06 $6f
	ld   b, $1c                                      ; $6bee: $06 $1c
	inc  b                                           ; $6bf0: $04
	ld   bc, $0101                                   ; $6bf1: $01 $01 $01
	adc  h                                           ; $6bf4: $8c
	ld   l, b                                        ; $6bf5: $68
	sbc  [hl]                                        ; $6bf6: $9e
	ld   h, e                                        ; $6bf7: $63
	ld   d, d                                        ; $6bf8: $52
	ld   h, l                                        ; $6bf9: $65
	sub  l                                           ; $6bfa: $95
	ld   a, l                                        ; $6bfb: $7d
	rst  $38                                         ; $6bfc: $ff
	rst  $38                                         ; $6bfd: $ff
	dec  c                                           ; $6bfe: $0d
	ld   e, b                                        ; $6bff: $58
	adc  h                                           ; $6c00: $8c
	ld   d, d                                        ; $6c01: $52
	sbc  b                                           ; $6c02: $98
	ld   l, [hl]                                     ; $6c03: $6e
	sub  [hl]                                        ; $6c04: $96
	ld   a, [$000d]                                  ; $6c05: $fa $0d $00
	ld   a, [bc]                                     ; $6c08: $0a
	dec  c                                           ; $6c09: $0d
	nop                                              ; $6c0a: $00
	nop                                              ; $6c0b: $00
	rrca                                             ; $6c0c: $0f
	nop                                              ; $6c0d: $00
	ld   bc, $020c                                   ; $6c0e: $01 $0c $02
	ld   c, $82                                      ; $6c11: $0e $82
	inc  e                                           ; $6c13: $1c
	inc  b                                           ; $6c14: $04
	ld   bc, $0101                                   ; $6c15: $01 $01 $01
	ld   l, a                                        ; $6c18: $6f
	ld   d, d                                        ; $6c19: $52
	ld   [bc], a                                     ; $6c1a: $02
	inc  de                                          ; $6c1b: $13
	ld   l, a                                        ; $6c1c: $6f
	sub  c                                           ; $6c1d: $91
	and  c                                           ; $6c1e: $a1
	sbc  [hl]                                        ; $6c1f: $9e
	dec  c                                           ; $6c20: $0d
	ld   h, c                                        ; $6c21: $61
	ld   [hl], c                                     ; $6c22: $71
	ld   l, a                                        ; $6c23: $6f
	sbc  [hl]                                        ; $6c24: $9e
	ld   h, c                                        ; $6c25: $61
	ld   [hl], c                                     ; $6c26: $71
	ld   l, a                                        ; $6c27: $6f
	ld   a, [$000d]                                  ; $6c28: $fa $0d $00
	ld   a, [bc]                                     ; $6c2b: $0a
	dec  c                                           ; $6c2c: $0d
	nop                                              ; $6c2d: $00
	nop                                              ; $6c2e: $00
	rrca                                             ; $6c2f: $0f
	nop                                              ; $6c30: $00
	ld   bc, $8523                                   ; $6c31: $01 $23 $85
	rrca                                             ; $6c34: $0f
	inc  b                                           ; $6c35: $04
	ld   bc, $5801                                   ; $6c36: $01 $01 $58
	adc  h                                           ; $6c39: $8c
	ld   d, d                                        ; $6c3a: $52
	sbc  b                                           ; $6c3b: $98
	sbc  [hl]                                        ; $6c3c: $9e
	ld   e, b                                        ; $6c3d: $58
	adc  h                                           ; $6c3e: $8c
	ld   d, d                                        ; $6c3f: $52
	sbc  b                                           ; $6c40: $98
	dec  c                                           ; $6c41: $0d
	ld   l, l                                        ; $6c42: $6d
	ld   a, h                                        ; $6c43: $7c
	ld   h, l                                        ; $6c44: $65
	ld   d, d                                        ; $6c45: $52
	ld   a, b                                        ; $6c46: $78
	ei                                               ; $6c47: $fb
	ld   a, [$000d]                                  ; $6c48: $fa $0d $00
	ld   a, [bc]                                     ; $6c4b: $0a
	ld   bc, $526f                                   ; $6c4c: $01 $6f $52
	ld   [bc], a                                     ; $6c4f: $02
	inc  de                                          ; $6c50: $13
	ld   l, a                                        ; $6c51: $6f
	sub  c                                           ; $6c52: $91
	and  c                                           ; $6c53: $a1
	sbc  a                                           ; $6c54: $9f
	dec  c                                           ; $6c55: $0d
	ld   a, b                                        ; $6c56: $78
	ld   a, c                                        ; $6c57: $79
	and  b                                           ; $6c58: $a0
	sbc  [hl]                                        ; $6c59: $9e
	ld   e, b                                        ; $6c5a: $58
	ld   a, e                                        ; $6c5b: $7b
	ld   e, d                                        ; $6c5c: $5a
	ld   d, d                                        ; $6c5d: $52
	ld   h, a                                        ; $6c5e: $67
	sbc  c                                           ; $6c5f: $99
	ld   a, h                                        ; $6c60: $7c
	ld   sp, hl                                      ; $6c61: $f9
	dec  c                                           ; $6c62: $0d
	nop                                              ; $6c63: $00
	ld   a, [bc]                                     ; $6c64: $0a
	add  hl, de                                      ; $6c65: $19
	dec  b                                           ; $6c66: $05
	inc  bc                                          ; $6c67: $03
	dec  b                                           ; $6c68: $05
	dec  bc                                          ; $6c69: $0b
	ld   e, d                                        ; $6c6a: $5a
	ld   e, c                                        ; $6c6b: $59
	ld   a, b                                        ; $6c6c: $78
	ld   d, d                                        ; $6c6d: $52
	adc  h                                           ; $6c6e: $8c
	ld   h, a                                        ; $6c6f: $67
	sub  [hl]                                        ; $6c70: $96
	ld   d, h                                        ; $6c71: $54
	ld   a, c                                        ; $6c72: $79
	nop                                              ; $6c73: $00
	nop                                              ; $6c74: $00
	ld   e, a                                        ; $6c75: $5f
	and  c                                           ; $6c76: $a1
	ld   h, c                                        ; $6c77: $61
	ld   d, h                                        ; $6c78: $54
	ld   [hl], l                                     ; $6c79: $75
	ld   d, b                                        ; $6c7a: $50
	sbc  b                                           ; $6c7b: $98
	adc  h                                           ; $6c7c: $8c
	ld   h, a                                        ; $6c7d: $67
	sub  [hl]                                        ; $6c7e: $96
	ld   d, h                                        ; $6c7f: $54
	ld   a, c                                        ; $6c80: $79
	nop                                              ; $6c81: $00
	ld   bc, $1903                                   ; $6c82: $01 $03 $19
	ld   [bc], a                                     ; $6c85: $02
	ld   b, d                                        ; $6c86: $42
	ld   e, d                                        ; $6c87: $5a
	inc  b                                           ; $6c88: $04
	xor  b                                           ; $6c89: $a8
	dec  b                                           ; $6c8a: $05
	ld   hl, $5075                                   ; $6c8b: $21 $75 $50
	sbc  b                                           ; $6c8e: $98
	adc  h                                           ; $6c8f: $8c
	ld   h, a                                        ; $6c90: $67
	sub  [hl]                                        ; $6c91: $96
	ld   d, h                                        ; $6c92: $54
	ld   a, c                                        ; $6c93: $79
	nop                                              ; $6c94: $00
	ld   [bc], a                                     ; $6c95: $02
	rlca                                             ; $6c96: $07
	inc  [hl]                                        ; $6c97: $34
	rlca                                             ; $6c98: $07
	ld   [bc], a                                     ; $6c99: $02
	inc  bc                                          ; $6c9a: $03
	ld   bc, $2000                                   ; $6c9b: $01 $00 $20
	nop                                              ; $6c9e: $00
	rlca                                             ; $6c9f: $07
	ld   [hl], e                                     ; $6ca0: $73
	rlca                                             ; $6ca1: $07
	ld   [bc], a                                     ; $6ca2: $02
	inc  bc                                          ; $6ca3: $03
	ld   bc, $2001                                   ; $6ca4: $01 $01 $20
	nop                                              ; $6ca7: $00
	rlca                                             ; $6ca8: $07
	push bc                                          ; $6ca9: $c5
	rlca                                             ; $6caa: $07
	ld   [bc], a                                     ; $6cab: $02
	inc  bc                                          ; $6cac: $03
	ld   bc, $2002                                   ; $6cad: $01 $02 $20
	nop                                              ; $6cb0: $00
	ld   b, $10                                      ; $6cb1: $06 $10
	ld   [$000f], sp                                 ; $6cb3: $08 $0f $00
	ld   bc, $0501                                   ; $6cb6: $01 $01 $05
	dec  bc                                          ; $6cb9: $0b
	ld   e, d                                        ; $6cba: $5a
	ld   e, c                                        ; $6cbb: $59
	ld   a, b                                        ; $6cbc: $78
	ld   d, d                                        ; $6cbd: $52
	adc  h                                           ; $6cbe: $8c
	ld   h, a                                        ; $6cbf: $67
	sub  [hl]                                        ; $6cc0: $96
	ld   d, h                                        ; $6cc1: $54
	ld   a, c                                        ; $6cc2: $79
	rst  $38                                         ; $6cc3: $ff
	rst  $38                                         ; $6cc4: $ff
	dec  c                                           ; $6cc5: $0d
	nop                                              ; $6cc6: $00
	ld   a, [bc]                                     ; $6cc7: $0a
	rrca                                             ; $6cc8: $0f
	inc  b                                           ; $6cc9: $04
	dec  b                                           ; $6cca: $05
	ld   bc, $a5a3                                   ; $6ccb: $01 $a3 $a5
	db   $ec                                         ; $6cce: $ec
	cp   d                                           ; $6ccf: $ba
	sub  b                                           ; $6cd0: $90
	ld   l, [hl]                                     ; $6cd1: $6e
	sub  [hl]                                        ; $6cd2: $96
	ld   a, [$900d]                                  ; $6cd3: $fa $0d $90
	ld   l, a                                        ; $6cd6: $6f
	sbc  e                                           ; $6cd7: $9b
	and  c                                           ; $6cd8: $a1
	sbc  [hl]                                        ; $6cd9: $9e
	ld   e, b                                        ; $6cda: $58
	ld   [bc], a                                     ; $6cdb: $02
	inc  de                                          ; $6cdc: $13
	ld   l, a                                        ; $6cdd: $6f
	sub  c                                           ; $6cde: $91
	and  c                                           ; $6cdf: $a1
	halt                                             ; $6ce0: $76
	ld   a, h                                        ; $6ce1: $7c
	sbc  a                                           ; $6ce2: $9f
	dec  c                                           ; $6ce3: $0d
	nop                                              ; $6ce4: $00
	ld   a, [bc]                                     ; $6ce5: $0a
	dec  c                                           ; $6ce6: $0d
	nop                                              ; $6ce7: $00
	nop                                              ; $6ce8: $00
	rrca                                             ; $6ce9: $0f
	nop                                              ; $6cea: $00
	ld   bc, $020c                                   ; $6ceb: $01 $0c $02
	add  hl, bc                                      ; $6cee: $09
	ld   d, b                                        ; $6cef: $50
	ld   b, $3f                                      ; $6cf0: $06 $3f
	ld   [$000f], sp                                 ; $6cf2: $08 $0f $00
	ld   bc, $5f01                                   ; $6cf5: $01 $01 $5f
	and  c                                           ; $6cf8: $a1
	ld   h, c                                        ; $6cf9: $61
	ld   d, h                                        ; $6cfa: $54
	ld   [hl], l                                     ; $6cfb: $75
	ld   d, b                                        ; $6cfc: $50
	sbc  b                                           ; $6cfd: $98
	adc  h                                           ; $6cfe: $8c
	ld   h, a                                        ; $6cff: $67
	sub  [hl]                                        ; $6d00: $96
	ld   d, h                                        ; $6d01: $54
	ld   a, c                                        ; $6d02: $79
	rst  $38                                         ; $6d03: $ff
	rst  $38                                         ; $6d04: $ff
	dec  c                                           ; $6d05: $0d
	nop                                              ; $6d06: $00
	ld   a, [bc]                                     ; $6d07: $0a
	rrca                                             ; $6d08: $0f
	inc  b                                           ; $6d09: $04
	ld   b, $01                                      ; $6d0a: $06 $01
	add  [hl]                                        ; $6d0c: $86
	ei                                               ; $6d0d: $fb
	rst  $38                                         ; $6d0e: $ff
	rst  $38                                         ; $6d0f: $ff
	ld   l, a                                        ; $6d10: $6f
	ld   d, d                                        ; $6d11: $52
	ld   [bc], a                                     ; $6d12: $02
	inc  de                                          ; $6d13: $13
	ld   l, a                                        ; $6d14: $6f
	sub  c                                           ; $6d15: $91
	and  c                                           ; $6d16: $a1
	sbc  [hl]                                        ; $6d17: $9e
	dec  c                                           ; $6d18: $0d
	ld   [hl], a                                     ; $6d19: $77
	ld   [hl], c                                     ; $6d1a: $71
	ld   e, c                                        ; $6d1b: $59
	sbc  l                                           ; $6d1c: $9d
	sbc  c                                           ; $6d1d: $99
	ld   d, d                                        ; $6d1e: $52
	and  c                                           ; $6d1f: $a1
	ld   l, [hl]                                     ; $6d20: $6e
	ld   c, a                                        ; $6d21: $4f
	rst  $38                                         ; $6d22: $ff
	rst  $38                                         ; $6d23: $ff
	ld   sp, hl                                      ; $6d24: $f9
	dec  c                                           ; $6d25: $0d
	nop                                              ; $6d26: $00
	ld   a, [bc]                                     ; $6d27: $0a
	rrca                                             ; $6d28: $0f
	inc  b                                           ; $6d29: $04
	ld   bc, $9601                                   ; $6d2a: $01 $01 $96
	ld   e, l                                        ; $6d2d: $5d
	ld   a, b                                        ; $6d2e: $78
	sbc  c                                           ; $6d2f: $99
	halt                                             ; $6d30: $76
	ld   d, d                                        ; $6d31: $52
	ld   d, d                                        ; $6d32: $52
	ld   a, e                                        ; $6d33: $7b
	ld   a, [$000d]                                  ; $6d34: $fa $0d $00
	ld   a, [bc]                                     ; $6d37: $0a
	dec  c                                           ; $6d38: $0d
	nop                                              ; $6d39: $00
	nop                                              ; $6d3a: $00
	rrca                                             ; $6d3b: $0f
	nop                                              ; $6d3c: $00
	ld   bc, $020c                                   ; $6d3d: $01 $0c $02
	add  hl, bc                                      ; $6d40: $09
	ld   d, b                                        ; $6d41: $50
	ld   b, $3f                                      ; $6d42: $06 $3f
	ld   [$000f], sp                                 ; $6d44: $08 $0f $00
	ld   bc, $0301                                   ; $6d47: $01 $01 $03
	add  hl, de                                      ; $6d4a: $19
	ld   [bc], a                                     ; $6d4b: $02
	ld   b, d                                        ; $6d4c: $42
	ld   e, d                                        ; $6d4d: $5a
	inc  b                                           ; $6d4e: $04
	xor  b                                           ; $6d4f: $a8
	dec  b                                           ; $6d50: $05
	ld   hl, $5075                                   ; $6d51: $21 $75 $50
	sbc  b                                           ; $6d54: $98
	adc  h                                           ; $6d55: $8c
	ld   h, a                                        ; $6d56: $67
	sub  [hl]                                        ; $6d57: $96
	ld   d, h                                        ; $6d58: $54
	ld   a, c                                        ; $6d59: $79
	rst  $38                                         ; $6d5a: $ff
	dec  c                                           ; $6d5b: $0d
	nop                                              ; $6d5c: $00
	ld   a, [bc]                                     ; $6d5d: $0a
	rrca                                             ; $6d5e: $0f
	inc  b                                           ; $6d5f: $04
	ld   bc, $6b01                                   ; $6d60: $01 $01 $6b
	ld   d, h                                        ; $6d63: $54
	ld   l, [hl]                                     ; $6d64: $6e

Jump_064_6d65:
	sub  [hl]                                        ; $6d65: $96
	ld   a, e                                        ; $6d66: $7b
	sbc  a                                           ; $6d67: $9f
	dec  c                                           ; $6d68: $0d
	add  [hl]                                        ; $6d69: $86
	ld   d, d                                        ; $6d6a: $52
	sbc  l                                           ; $6d6b: $9d
	ld   e, d                                        ; $6d6c: $5a
	ld   d, d                                        ; $6d6d: $52
	ld   l, a                                        ; $6d6e: $6f
	ld   a, [hl]                                     ; $6d6f: $7e
	and  c                                           ; $6d70: $a1
	ld   l, [hl]                                     ; $6d71: $6e
	sub  b                                           ; $6d72: $90
	and  c                                           ; $6d73: $a1
	ld   a, e                                        ; $6d74: $7b
	sbc  a                                           ; $6d75: $9f
	dec  c                                           ; $6d76: $0d
	ld   h, [hl]                                     ; $6d77: $66
	sub  c                                           ; $6d78: $91
	sbc  [hl]                                        ; $6d79: $9e
	and  e                                           ; $6d7a: $a3
	and  l                                           ; $6d7b: $a5
	db   $ec                                         ; $6d7c: $ec
	cp   d                                           ; $6d7d: $ba
	sub  b                                           ; $6d7e: $90
	ld   a, [$000d]                                  ; $6d7f: $fa $0d $00
	ld   a, [bc]                                     ; $6d82: $0a
	dec  c                                           ; $6d83: $0d
	nop                                              ; $6d84: $00
	nop                                              ; $6d85: $00
	rrca                                             ; $6d86: $0f
	nop                                              ; $6d87: $00
	ld   bc, $020c                                   ; $6d88: $01 $0c $02
	add  hl, bc                                      ; $6d8b: $09
	ld   d, b                                        ; $6d8c: $50

Jump_064_6d8d:
	ld   b, $3f                                      ; $6d8d: $06 $3f
	ld   [$040f], sp                                 ; $6d8f: $08 $0f $04
	rlca                                             ; $6d92: $07
	ld   bc, $9e50                                   ; $6d93: $01 $50 $9e
	add  b                                           ; $6d96: $80
	adc  l                                           ; $6d97: $8d
	ld   [hl], d                                     ; $6d98: $72
	ld   a, c                                        ; $6d99: $79
	ld   h, l                                        ; $6d9a: $65
	ld   [hl], h                                     ; $6d9b: $74
	sbc  c                                           ; $6d9c: $99
	rst  $38                                         ; $6d9d: $ff
	rst  $38                                         ; $6d9e: $ff
	dec  c                                           ; $6d9f: $0d
	ld   d, d                                        ; $6da0: $52
	ld   d, d                                        ; $6da1: $52
	sub  b                                           ; $6da2: $90
	and  c                                           ; $6da3: $a1
	sbc  [hl]                                        ; $6da4: $9e
	and  e                                           ; $6da5: $a3
	and  l                                           ; $6da6: $a5
	db   $ec                                         ; $6da7: $ec
	cp   d                                           ; $6da8: $ba
	sub  b                                           ; $6da9: $90
	dec  c                                           ; $6daa: $0d
	add  b                                           ; $6dab: $80
	adc  l                                           ; $6dac: $8d
	ld   [hl], d                                     ; $6dad: $72
	ld   l, [hl]                                     ; $6dae: $6e
	sub  b                                           ; $6daf: $90
	and  c                                           ; $6db0: $a1
	sbc  a                                           ; $6db1: $9f
	dec  c                                           ; $6db2: $0d
	nop                                              ; $6db3: $00
	ld   a, [bc]                                     ; $6db4: $0a
	dec  c                                           ; $6db5: $0d
	nop                                              ; $6db6: $00
	nop                                              ; $6db7: $00
	rrca                                             ; $6db8: $0f
	nop                                              ; $6db9: $00
	ld   bc, $020c                                   ; $6dba: $01 $0c $02
	add  hl, bc                                      ; $6dbd: $09
	ld   d, b                                        ; $6dbe: $50
	ld   c, $82                                      ; $6dbf: $0e $82
	inc  e                                           ; $6dc1: $1c
	inc  b                                           ; $6dc2: $04
	ld   bc, $0101                                   ; $6dc3: $01 $01 $01
	ld   a, e                                        ; $6dc6: $7b
	ld   d, [hl]                                     ; $6dc7: $56
	ld   a, e                                        ; $6dc8: $7b

Call_064_6dc9:
	ld   d, [hl]                                     ; $6dc9: $56
	sbc  [hl]                                        ; $6dca: $9e
	ld   l, a                                        ; $6dcb: $6f
	ld   d, d                                        ; $6dcc: $52
	ld   [bc], a                                     ; $6dcd: $02
	inc  de                                          ; $6dce: $13
	ld   l, a                                        ; $6dcf: $6f
	sub  c                                           ; $6dd0: $91
	and  c                                           ; $6dd1: $a1
	sbc  a                                           ; $6dd2: $9f
	dec  c                                           ; $6dd3: $0d
	ld   d, b                                        ; $6dd4: $50
	sbc  d                                           ; $6dd5: $9a
	ld   a, b                                        ; $6dd6: $78
	ld   a, c                                        ; $6dd7: $79
	ld   sp, hl                                      ; $6dd8: $f9
	dec  c                                           ; $6dd9: $0d
	nop                                              ; $6dda: $00
	ld   a, [bc]                                     ; $6ddb: $0a
	ld   bc, $a178                                   ; $6ddc: $01 $78 $a1
	ld   e, c                                        ; $6ddf: $59
	sbc  [hl]                                        ; $6de0: $9e
	ld   h, l                                        ; $6de1: $65
	ld   e, c                                        ; $6de2: $59
	ld   e, l                                        ; $6de3: $5d
	ld   e, l                                        ; $6de4: $5d
	ld   [hl], h                                     ; $6de5: $74
	dec  c                                           ; $6de6: $0d
	ld   d, h                                        ; $6de7: $54
	sub  a                                           ; $6de8: $97
	ld   a, c                                        ; $6de9: $79
	ld   d, d                                        ; $6dea: $52
	sbc  e                                           ; $6deb: $9b
	ld   d, d                                        ; $6dec: $52
	sbc  e                                           ; $6ded: $9b
	ld   e, c                                        ; $6dee: $59
	ld   d, d                                        ; $6def: $52
	ld   [hl], h                                     ; $6df0: $74
	ld   d, b                                        ; $6df1: $50
	sbc  c                                           ; $6df2: $99
	dec  c                                           ; $6df3: $0d
	ld   d, b                                        ; $6df4: $50
	ld   a, h                                        ; $6df5: $7c
	sbc  [hl]                                        ; $6df6: $9e
	ld   e, e                                        ; $6df7: $5b
	ld   a, h                                        ; $6df8: $7c
	and  l                                           ; $6df9: $a5
	ret  nz                                          ; $6dfa: $c0

	ld   a, [$000d]                                  ; $6dfb: $fa $0d $00
	ld   a, [bc]                                     ; $6dfe: $0a
	db   $10                                         ; $6dff: $10
	daa                                              ; $6e00: $27
	nop                                              ; $6e01: $00
	add  hl, de                                      ; $6e02: $19
	dec  b                                           ; $6e03: $05
	inc  bc                                          ; $6e04: $03
	ld   [bc], a                                     ; $6e05: $02
	ld   e, [hl]                                     ; $6e06: $5e
	inc  b                                           ; $6e07: $04
	ld   d, [hl]                                     ; $6e08: $56
	ld   l, [hl]                                     ; $6e09: $6e
	sub  [hl]                                        ; $6e0a: $96
	nop                                              ; $6e0b: $00
	nop                                              ; $6e0c: $00
	ld   e, b                                        ; $6e0d: $58
	adc  l                                           ; $6e0e: $8d
	ld   e, l                                        ; $6e0f: $5d
	ld   h, [hl]                                     ; $6e10: $66
	ld   l, [hl]                                     ; $6e11: $6e
	sub  [hl]                                        ; $6e12: $96
	nop                                              ; $6e13: $00
	ld   bc, $8c58                                   ; $6e14: $01 $58 $8c
	sub  b                                           ; $6e17: $90
	sbc  b                                           ; $6e18: $98
	ld   l, [hl]                                     ; $6e19: $6e
	sub  [hl]                                        ; $6e1a: $96
	nop                                              ; $6e1b: $00
	ld   [bc], a                                     ; $6e1c: $02
	rlca                                             ; $6e1d: $07
	cp   e                                           ; $6e1e: $bb
	ld   [$0302], sp                                 ; $6e1f: $08 $02 $03
	ld   bc, $2000                                   ; $6e22: $01 $00 $20
	nop                                              ; $6e25: $00
	rlca                                             ; $6e26: $07
	rrca                                             ; $6e27: $0f
	add  hl, bc                                      ; $6e28: $09
	ld   [bc], a                                     ; $6e29: $02
	inc  bc                                          ; $6e2a: $03
	ld   bc, $2001                                   ; $6e2b: $01 $01 $20
	nop                                              ; $6e2e: $00
	rlca                                             ; $6e2f: $07
	ld   c, e                                        ; $6e30: $4b
	add  hl, bc                                      ; $6e31: $09
	ld   [bc], a                                     ; $6e32: $02
	inc  bc                                          ; $6e33: $03
	ld   bc, $2002                                   ; $6e34: $01 $02 $20
	nop                                              ; $6e37: $00
	ld   b, $87                                      ; $6e38: $06 $87
	add  hl, bc                                      ; $6e3a: $09
	rrca                                             ; $6e3b: $0f
	nop                                              ; $6e3c: $00
	ld   bc, $6b01                                   ; $6e3d: $01 $01 $6b
	sbc  d                                           ; $6e40: $9a
	ld   a, l                                        ; $6e41: $7d
	ld   [bc], a                                     ; $6e42: $02
	ld   e, [hl]                                     ; $6e43: $5e
	inc  b                                           ; $6e44: $04
	ld   d, [hl]                                     ; $6e45: $56
	ld   l, [hl]                                     ; $6e46: $6e
	sub  [hl]                                        ; $6e47: $96
	sbc  a                                           ; $6e48: $9f
	dec  c                                           ; $6e49: $0d
	ld   [bc], a                                     ; $6e4a: $02
	add  b                                           ; $6e4b: $80
	ld   d, d                                        ; $6e4c: $52
	ld   h, d                                        ; $6e4d: $62
	halt                                             ; $6e4e: $76
	and  b                                           ; $6e4f: $a0
	ld   d, h                                        ; $6e50: $54
	sub  a                                           ; $6e51: $97
	ld   a, c                                        ; $6e52: $79
	inc  bc                                          ; $6e53: $03
	ld   d, l                                        ; $6e54: $55
	ld   d, d                                        ; $6e55: $52
	ld   [hl], h                                     ; $6e56: $74
	dec  c                                           ; $6e57: $0d
	ld   [hl], d                                     ; $6e58: $72
	sbc  c                                           ; $6e59: $99
	ld   h, a                                        ; $6e5a: $67
	and  c                                           ; $6e5b: $a1
	ld   l, [hl]                                     ; $6e5c: $6e
	sbc  a                                           ; $6e5d: $9f
	dec  c                                           ; $6e5e: $0d
	nop                                              ; $6e5f: $00
	ld   a, [bc]                                     ; $6e60: $0a
	inc  e                                           ; $6e61: $1c
	inc  b                                           ; $6e62: $04
	ld   b, $06                                      ; $6e63: $06 $06
	ld   bc, $fb86                                   ; $6e65: $01 $86 $fb
	sbc  [hl]                                        ; $6e68: $9e
	ld   l, e                                        ; $6e69: $6b
	ld   d, h                                        ; $6e6a: $54
	ld   a, b                                        ; $6e6b: $78
	and  c                                           ; $6e6c: $a1
	ld   l, [hl]                                     ; $6e6d: $6e
	sbc  a                                           ; $6e6e: $9f
	dec  c                                           ; $6e6f: $0d
	nop                                              ; $6e70: $00
	inc  e                                           ; $6e71: $1c
	inc  b                                           ; $6e72: $04
	ld   bc, $0101                                   ; $6e73: $01 $01 $01
	and  e                                           ; $6e76: $a3
	and  l                                           ; $6e77: $a5
	db   $ec                                         ; $6e78: $ec
	cp   d                                           ; $6e79: $ba
	sub  b                                           ; $6e7a: $90
	ld   e, c                                        ; $6e7b: $59
	ld   h, c                                        ; $6e7c: $61
	ld   d, h                                        ; $6e7d: $54
	ld   [hl], c                                     ; $6e7e: $71
	halt                                             ; $6e7f: $76
	ld   a, [$000d]                                  ; $6e80: $fa $0d $00
	ld   a, [bc]                                     ; $6e83: $0a
	dec  c                                           ; $6e84: $0d
	nop                                              ; $6e85: $00
	nop                                              ; $6e86: $00
	rrca                                             ; $6e87: $0f
	nop                                              ; $6e88: $00
	ld   bc, $020c                                   ; $6e89: $01 $0c $02
	ld   b, $bc                                      ; $6e8c: $06 $bc
	add  hl, bc                                      ; $6e8e: $09
	rrca                                             ; $6e8f: $0f
	nop                                              ; $6e90: $00
	ld   bc, $5801                                   ; $6e91: $01 $01 $58
	adc  l                                           ; $6e94: $8d
	ld   e, l                                        ; $6e95: $5d
	ld   h, [hl]                                     ; $6e96: $66
	ld   l, [hl]                                     ; $6e97: $6e
	sub  [hl]                                        ; $6e98: $96
	sbc  a                                           ; $6e99: $9f
	dec  c                                           ; $6e9a: $0d
	nop                                              ; $6e9b: $00
	ld   a, [bc]                                     ; $6e9c: $0a
	inc  e                                           ; $6e9d: $1c
	inc  b                                           ; $6e9e: $04
	ld   [bc], a                                     ; $6e9f: $02
	ld   [bc], a                                     ; $6ea0: $02
	ld   bc, $5a6f                                   ; $6ea1: $01 $6f $5a
	ld   d, h                                        ; $6ea4: $54
	sub  b                                           ; $6ea5: $90
	and  c                                           ; $6ea6: $a1
	ld   a, [$a30d]                                  ; $6ea7: $fa $0d $a3
	and  l                                           ; $6eaa: $a5
	db   $ec                                         ; $6eab: $ec
	cp   d                                           ; $6eac: $ba
	sbc  [hl]                                        ; $6ead: $9e
	ld   e, b                                        ; $6eae: $58
	adc  l                                           ; $6eaf: $8d
	ld   e, l                                        ; $6eb0: $5d
	ld   h, [hl]                                     ; $6eb1: $66
	ld   e, [hl]                                     ; $6eb2: $5e
	sub  a                                           ; $6eb3: $97
	ld   d, d                                        ; $6eb4: $52
	dec  c                                           ; $6eb5: $0d
	ld   h, l                                        ; $6eb6: $65
	ld   [hl], c                                     ; $6eb7: $71
	ld   [hl], h                                     ; $6eb8: $74
	sbc  c                                           ; $6eb9: $99
	sub  b                                           ; $6eba: $90
	and  c                                           ; $6ebb: $a1
	ld   a, [$000d]                                  ; $6ebc: $fa $0d $00
	ld   a, [bc]                                     ; $6ebf: $0a
	dec  c                                           ; $6ec0: $0d
	nop                                              ; $6ec1: $00
	nop                                              ; $6ec2: $00
	rrca                                             ; $6ec3: $0f
	nop                                              ; $6ec4: $00
	ld   bc, $020c                                   ; $6ec5: $01 $0c $02
	ld   b, $bc                                      ; $6ec8: $06 $bc
	add  hl, bc                                      ; $6eca: $09
	rrca                                             ; $6ecb: $0f
	nop                                              ; $6ecc: $00
	ld   bc, $5801                                   ; $6ecd: $01 $01 $58
	adc  h                                           ; $6ed0: $8c
	sub  b                                           ; $6ed1: $90
	sbc  b                                           ; $6ed2: $98
	ld   l, [hl]                                     ; $6ed3: $6e
	sub  [hl]                                        ; $6ed4: $96
	sbc  a                                           ; $6ed5: $9f
	dec  c                                           ; $6ed6: $0d
	nop                                              ; $6ed7: $00
	ld   a, [bc]                                     ; $6ed8: $0a
	inc  e                                           ; $6ed9: $1c
	inc  b                                           ; $6eda: $04
	ld   b, $06                                      ; $6edb: $06 $06
	ld   bc, $fb86                                   ; $6edd: $01 $86 $fb
	sbc  [hl]                                        ; $6ee0: $9e
	ld   h, c                                        ; $6ee1: $61
	and  c                                           ; $6ee2: $a1
	ld   a, b                                        ; $6ee3: $78
	ld   e, b                                        ; $6ee4: $58
	ld   e, b                                        ; $6ee5: $58
	ld   e, e                                        ; $6ee6: $5b
	ld   d, d                                        ; $6ee7: $52
	and  c                                           ; $6ee8: $a1
	ld   l, [hl]                                     ; $6ee9: $6e
	rst  $38                                         ; $6eea: $ff
	rst  $38                                         ; $6eeb: $ff
	dec  c                                           ; $6eec: $0d
	sub  b                                           ; $6eed: $90
	ld   l, a                                        ; $6eee: $6f
	ld   d, b                                        ; $6eef: $50
	sbc  c                                           ; $6ef0: $99
	ld   e, l                                        ; $6ef1: $5d
	halt                                             ; $6ef2: $76
	cp   c                                           ; $6ef3: $b9
	push hl                                          ; $6ef4: $e5
	rst  JumpTable                                         ; $6ef5: $df
	ld   l, [hl]                                     ; $6ef6: $6e
	ld   a, e                                        ; $6ef7: $7b
	sbc  a                                           ; $6ef8: $9f
	dec  c                                           ; $6ef9: $0d
	nop                                              ; $6efa: $00
	ld   a, [bc]                                     ; $6efb: $0a
	dec  c                                           ; $6efc: $0d
	nop                                              ; $6efd: $00
	nop                                              ; $6efe: $00
	rrca                                             ; $6eff: $0f
	nop                                              ; $6f00: $00
	ld   bc, $020c                                   ; $6f01: $01 $0c $02
	ld   b, $bc                                      ; $6f04: $06 $bc
	add  hl, bc                                      ; $6f06: $09
	inc  e                                           ; $6f07: $1c
	inc  b                                           ; $6f08: $04
	inc  bc                                          ; $6f09: $03
	inc  bc                                          ; $6f0a: $03
	ld   bc, $a178                                   ; $6f0b: $01 $78 $a1
	ld   l, [hl]                                     ; $6f0e: $6e
	sbc  [hl]                                        ; $6f0f: $9e
	ld   l, a                                        ; $6f10: $6f
	ld   d, d                                        ; $6f11: $52
	ld   [bc], a                                     ; $6f12: $02
	inc  de                                          ; $6f13: $13
	ld   l, a                                        ; $6f14: $6f
	sub  c                                           ; $6f15: $91
	and  c                                           ; $6f16: $a1
	sub  b                                           ; $6f17: $90
	dec  c                                           ; $6f18: $0d
	ld   h, l                                        ; $6f19: $65
	sub  a                                           ; $6f1a: $97
	ld   a, b                                        ; $6f1b: $78
	ld   d, d                                        ; $6f1c: $52
	and  c                                           ; $6f1d: $a1
	ld   l, [hl]                                     ; $6f1e: $6e
	ld   sp, hl                                      ; $6f1f: $f9
	dec  c                                           ; $6f20: $0d
	ld   d, d                                        ; $6f21: $52
	ld   [hl], c                                     ; $6f22: $71
	ld   l, l                                        ; $6f23: $6d
	ld   d, d                                        ; $6f24: $52
	sbc  [hl]                                        ; $6f25: $9e
	ld   a, b                                        ; $6f26: $78
	and  c                                           ; $6f27: $a1
	ld   l, [hl]                                     ; $6f28: $6e
	sbc  e                                           ; $6f29: $9b
	ld   d, h                                        ; $6f2a: $54
	rst  $38                                         ; $6f2b: $ff
	rst  $38                                         ; $6f2c: $ff
	ld   sp, hl                                      ; $6f2d: $f9
	dec  c                                           ; $6f2e: $0d
	nop                                              ; $6f2f: $00
	ld   a, [bc]                                     ; $6f30: $0a
	dec  c                                           ; $6f31: $0d
	nop                                              ; $6f32: $00
	nop                                              ; $6f33: $00
	rrca                                             ; $6f34: $0f
	nop                                              ; $6f35: $00
	ld   bc, $020c                                   ; $6f36: $01 $0c $02
	ld   b, $bc                                      ; $6f39: $06 $bc
	add  hl, bc                                      ; $6f3b: $09
	inc  hl                                          ; $6f3c: $23
	add  h                                           ; $6f3d: $84
	inc  e                                           ; $6f3e: $1c
	inc  b                                           ; $6f3f: $04
	ld   bc, $0101                                   ; $6f40: $01 $01 $01
	ld   a, e                                        ; $6f43: $7b
	ld   d, [hl]                                     ; $6f44: $56
	sbc  [hl]                                        ; $6f45: $9e
	ld   l, a                                        ; $6f46: $6f
	ld   d, d                                        ; $6f47: $52
	ld   [bc], a                                     ; $6f48: $02
	inc  de                                          ; $6f49: $13
	ld   l, a                                        ; $6f4a: $6f
	sub  c                                           ; $6f4b: $91
	and  c                                           ; $6f4c: $a1
	sbc  [hl]                                        ; $6f4d: $9e
	dec  c                                           ; $6f4e: $0d
	ld   l, [hl]                                     ; $6f4f: $6e
	sbc  c                                           ; $6f50: $99
	adc  h                                           ; $6f51: $8c
	ld   h, e                                        ; $6f52: $63
	and  c                                           ; $6f53: $a1
	ld   e, d                                        ; $6f54: $5a
	ld   h, c                                        ; $6f55: $61
	sbc  e                                           ; $6f56: $9b
	and  c                                           ; $6f57: $a1
	ld   l, [hl]                                     ; $6f58: $6e
	dec  c                                           ; $6f59: $0d
	ld   h, l                                        ; $6f5a: $65
	sub  [hl]                                        ; $6f5b: $96
	ld   d, h                                        ; $6f5c: $54
	ld   a, [$000d]                                  ; $6f5d: $fa $0d $00
	ld   a, [bc]                                     ; $6f60: $0a
	ld   bc, $9166                                   ; $6f61: $01 $66 $91
	sbc  [hl]                                        ; $6f64: $9e
	and  e                                           ; $6f65: $a3
	and  l                                           ; $6f66: $a5
	db   $ec                                         ; $6f67: $ec
	cp   d                                           ; $6f68: $ba
	ld   e, d                                        ; $6f69: $5a
	xor  e                                           ; $6f6a: $ab
	call z, $966e                                    ; $6f6b: $cc $6e $96
	sbc  a                                           ; $6f6e: $9f
	dec  c                                           ; $6f6f: $0d
	nop                                              ; $6f70: $00
	ld   a, [bc]                                     ; $6f71: $0a
	ld   bc, $526f                                   ; $6f72: $01 $6f $52
	ld   [bc], a                                     ; $6f75: $02
	inc  de                                          ; $6f76: $13
	ld   l, a                                        ; $6f77: $6f
	sub  c                                           ; $6f78: $91
	and  c                                           ; $6f79: $a1
	ld   a, l                                        ; $6f7a: $7d
	dec  c                                           ; $6f7b: $0d
	and  e                                           ; $6f7c: $a3
	and  l                                           ; $6f7d: $a5
	db   $ec                                         ; $6f7e: $ec
	cp   d                                           ; $6f7f: $ba
	ld   a, c                                        ; $6f80: $79
	ld   d, h                                        ; $6f81: $54
	ld   h, d                                        ; $6f82: $62
	ld   d, d                                        ; $6f83: $52
	ld   [hl], h                                     ; $6f84: $74
	sbc  c                                           ; $6f85: $99
	halt                                             ; $6f86: $76
	ld   h, c                                        ; $6f87: $61
	sbc  e                                           ; $6f88: $9b
	and  b                                           ; $6f89: $a0
	dec  c                                           ; $6f8a: $0d
	adc  l                                           ; $6f8b: $8d
	sub  a                                           ; $6f8c: $97
	sbc  d                                           ; $6f8d: $9a
	ld   l, a                                        ; $6f8e: $6f
	sub  c                                           ; $6f8f: $91
	pop  bc                                          ; $6f90: $c1
	db   $e3                                         ; $6f91: $e3
	ld   l, [hl]                                     ; $6f92: $6e
	ld   e, c                                        ; $6f93: $59
	sub  a                                           ; $6f94: $97
	ld   a, e                                        ; $6f95: $7b
	sbc  a                                           ; $6f96: $9f
	dec  c                                           ; $6f97: $0d
	nop                                              ; $6f98: $00
	ld   a, [bc]                                     ; $6f99: $0a
	ld   bc, $9166                                   ; $6f9a: $01 $66 $91
	sbc  [hl]                                        ; $6f9d: $9e
	ld   d, d                                        ; $6f9e: $52
	ld   e, l                                        ; $6f9f: $5d

Jump_064_6fa0:
	sub  [hl]                                        ; $6fa0: $96
	ei                                               ; $6fa1: $fb
	sbc  a                                           ; $6fa2: $9f
	dec  c                                           ; $6fa3: $0d
	nop                                              ; $6fa4: $00
	ld   a, [bc]                                     ; $6fa5: $0a
	dec  c                                           ; $6fa6: $0d
	nop                                              ; $6fa7: $00
	nop                                              ; $6fa8: $00
	rrca                                             ; $6fa9: $0f
	nop                                              ; $6faa: $00
	ld   bc, $1001                                   ; $6fab: $01 $01 $10
	db   $10                                         ; $6fae: $10
	ld   bc, $0611                                   ; $6faf: $01 $11 $06
	ld   e, d                                        ; $6fb2: $5a
	inc  bc                                          ; $6fb3: $03
	xor  h                                           ; $6fb4: $ac
	ld   [bc], a                                     ; $6fb5: $02
	rst  $30                                         ; $6fb6: $f7
	inc  b                                           ; $6fb7: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fb8: $cf
	ld   bc, $0d12                                   ; $6fb9: $01 $12 $0d
	nop                                              ; $6fbc: $00
	ld   a, [bc]                                     ; $6fbd: $0a
	ld   bc, $a5a3                                   ; $6fbe: $01 $a3 $a5
	db   $ec                                         ; $6fc1: $ec
	cp   d                                           ; $6fc2: $ba
	ld   e, d                                        ; $6fc3: $5a
	dec  c                                           ; $6fc4: $0d
	ld   bc, $6e07                                   ; $6fc5: $01 $07 $6e
	sbc  c                                           ; $6fc8: $99
	adc  h                                           ; $6fc9: $8c
	ld   h, e                                        ; $6fca: $63
	and  c                                           ; $6fcb: $a1
	ld   e, d                                        ; $6fcc: $5a
	ld   h, c                                        ; $6fcd: $61
	sbc  e                                           ; $6fce: $9b
	and  c                                           ; $6fcf: $a1
	ld   l, [hl]                                     ; $6fd0: $6e
	ld   bc, $0d08                                   ; $6fd1: $01 $08 $0d
	halt                                             ; $6fd4: $76
	ld   [bc], a                                     ; $6fd5: $02
	sbc  l                                           ; $6fd6: $9d
	ld   [hl], c                                     ; $6fd7: $71
	ld   [hl], h                                     ; $6fd8: $74
	ld   d, d                                        ; $6fd9: $52
	sbc  c                                           ; $6fda: $99
	ld   d, b                                        ; $6fdb: $50
	ld   d, d                                        ; $6fdc: $52
	ld   l, [hl]                                     ; $6fdd: $6e
	ld   a, c                                        ; $6fde: $79
	dec  c                                           ; $6fdf: $0d
	nop                                              ; $6fe0: $00
	ld   a, [bc]                                     ; $6fe1: $0a
	ld   bc, $bc05                                   ; $6fe2: $01 $05 $bc
	inc  bc                                          ; $6fe5: $03
	sbc  h                                           ; $6fe6: $9c
	xor  [hl]                                        ; $6fe7: $ae
	ei                                               ; $6fe8: $fb
	ld   a, h                                        ; $6fe9: $7c
	ld   [bc], a                                     ; $6fea: $02
	inc  e                                           ; $6feb: $1c
	and  b                                           ; $6fec: $a0
	ld   [bc], a                                     ; $6fed: $02
	rla                                              ; $6fee: $17
	ld   h, l                                        ; $6fef: $65
	ld   [hl], h                                     ; $6ff0: $74
	dec  c                                           ; $6ff1: $0d
	inc  bc                                          ; $6ff2: $03
	ld   c, a                                        ; $6ff3: $4f
	dec  b                                           ; $6ff4: $05
	db   $dd                                         ; $6ff5: $dd
	ld   h, l                                        ; $6ff6: $65
	ld   [hl], h                                     ; $6ff7: $74
	ld   e, l                                        ; $6ff8: $5d
	ld   l, [hl]                                     ; $6ff9: $6e
	ld   h, e                                        ; $6ffa: $63
	ld   d, d                                        ; $6ffb: $52
	sbc  a                                           ; $6ffc: $9f
	dec  c                                           ; $6ffd: $0d
	nop                                              ; $6ffe: $00
	ld   a, [bc]                                     ; $6fff: $0a
	ld   bc, $dd05                                   ; $7000: $01 $05 $dd
	and  c                                           ; $7003: $a1
	ld   [hl], l                                     ; $7004: $75
	ld   d, d                                        ; $7005: $52
	sbc  c                                           ; $7006: $99
	halt                                             ; $7007: $76
	ld   h, c                                        ; $7008: $61
	sbc  e                                           ; $7009: $9b
	and  b                                           ; $700a: $a0
	dec  c                                           ; $700b: $0d
	and  e                                           ; $700c: $a3
	and  l                                           ; $700d: $a5
	db   $ec                                         ; $700e: $ec
	cp   d                                           ; $700f: $ba
	ld   a, c                                        ; $7010: $79
	ld   [bc], a                                     ; $7011: $02
	sub  l                                           ; $7012: $95
	sub  a                                           ; $7013: $97
	sbc  d                                           ; $7014: $9a
	sbc  d                                           ; $7015: $9a
	ld   a, [hl]                                     ; $7016: $7e
	dec  c                                           ; $7017: $0d
	or   e                                           ; $7018: $b3
	ei                                               ; $7019: $fb
	ldh  [c], a                                      ; $701a: $e2
	xor  e                                           ; $701b: $ab
	ei                                               ; $701c: $fb
	pop  de                                          ; $701d: $d1
	ei                                               ; $701e: $fb
	ld   [hl], l                                     ; $701f: $75
	ld   h, a                                        ; $7020: $67
	sbc  a                                           ; $7021: $9f
	dec  c                                           ; $7022: $0d
	nop                                              ; $7023: $00
	ld   a, [bc]                                     ; $7024: $0a
	ld   bc, $a5a3                                   ; $7025: $01 $a3 $a5
	db   $ec                                         ; $7028: $ec
	cp   d                                           ; $7029: $ba
	ld   a, c                                        ; $702a: $79
	ret  nz                                          ; $702b: $c0

	call nz, Call_064_75c2                           ; $702c: $c4 $c2 $75
	ld   e, e                                        ; $702f: $5b
	sbc  d                                           ; $7030: $9a
	ld   a, [hl]                                     ; $7031: $7e
	dec  c                                           ; $7032: $0d
	inc  bc                                          ; $7033: $03
	ld   c, [hl]                                     ; $7034: $4e
	ld   l, a                                        ; $7035: $6f
	ld   [hl], l                                     ; $7036: $75
	ld   h, a                                        ; $7037: $67
	sbc  a                                           ; $7038: $9f
	dec  c                                           ; $7039: $0d
	nop                                              ; $703a: $00
	ld   a, [bc]                                     ; $703b: $0a
	ld   a, [de]                                     ; $703c: $1a
	rlca                                             ; $703d: $07
	rlca                                             ; $703e: $07
	reti                                             ; $703f: $d9


	ld   a, [bc]                                     ; $7040: $0a
	ld   [bc], a                                     ; $7041: $02
	inc  b                                           ; $7042: $04
	ld   bc, $2000                                   ; $7043: $01 $00 $20
	nop                                              ; $7046: $00
	rlca                                             ; $7047: $07
	add  hl, bc                                      ; $7048: $09
	dec  bc                                          ; $7049: $0b
	ld   [bc], a                                     ; $704a: $02
	inc  b                                           ; $704b: $04
	ld   bc, $2001                                   ; $704c: $01 $01 $20
	nop                                              ; $704f: $00
	rlca                                             ; $7050: $07
	ld   a, $0b                                      ; $7051: $3e $0b
	ld   [bc], a                                     ; $7053: $02
	inc  b                                           ; $7054: $04
	ld   bc, $2002                                   ; $7055: $01 $02 $20
	nop                                              ; $7058: $00
	inc  e                                           ; $7059: $1c
	inc  b                                           ; $705a: $04
	ld   bc, $0101                                   ; $705b: $01 $01 $01
	ld   d, b                                        ; $705e: $50
	sbc  [hl]                                        ; $705f: $9e
	ld   l, a                                        ; $7060: $6f
	ld   d, d                                        ; $7061: $52
	ld   [bc], a                                     ; $7062: $02
	inc  de                                          ; $7063: $13
	ld   l, a                                        ; $7064: $6f
	sub  c                                           ; $7065: $91
	and  c                                           ; $7066: $a1
	sbc  [hl]                                        ; $7067: $9e
	dec  c                                           ; $7068: $0d
	ld   d, h                                        ; $7069: $54
	ld   h, d                                        ; $706a: $62
	ld   d, d                                        ; $706b: $52
	ld   l, l                                        ; $706c: $6d
	ld   a, [$6f0d]                                  ; $706d: $fa $0d $6f
	ld   d, d                                        ; $7070: $52
	ld   [bc], a                                     ; $7071: $02
	inc  de                                          ; $7072: $13
	ld   l, a                                        ; $7073: $6f
	sub  c                                           ; $7074: $91
	and  c                                           ; $7075: $a1
	ld   a, h                                        ; $7076: $7c
	adc  h                                           ; $7077: $8c
	ld   e, a                                        ; $7078: $5f
	ei                                               ; $7079: $fb
	ld   a, [$000d]                                  ; $707a: $fa $0d $00
	ld   a, [bc]                                     ; $707d: $0a
	dec  c                                           ; $707e: $0d
	nop                                              ; $707f: $00
	nop                                              ; $7080: $00
	rrca                                             ; $7081: $0f
	nop                                              ; $7082: $00
	ld   bc, $0b0c                                   ; $7083: $01 $0c $0b
	ld   b, $75                                      ; $7086: $06 $75
	dec  bc                                          ; $7088: $0b
	inc  e                                           ; $7089: $1c
	inc  b                                           ; $708a: $04
	ld   b, $06                                      ; $708b: $06 $06
	ld   bc, $ff50                                   ; $708d: $01 $50 $ff
	rst  $38                                         ; $7090: $ff
	ret  nz                                          ; $7091: $c0

	call nz, Call_064_63c2                           ; $7092: $c4 $c2 $63
	sbc  d                                           ; $7095: $9a
	ld   l, a                                        ; $7096: $6f
	sub  c                                           ; $7097: $91
	ld   [hl], c                                     ; $7098: $71
	ld   l, l                                        ; $7099: $6d
	rst  $38                                         ; $709a: $ff
	rst  $38                                         ; $709b: $ff
	dec  c                                           ; $709c: $0d
	nop                                              ; $709d: $00
	inc  e                                           ; $709e: $1c
	inc  b                                           ; $709f: $04
	ld   bc, $0101                                   ; $70a0: $01 $01 $01
	ld   l, a                                        ; $70a3: $6f
	ld   d, d                                        ; $70a4: $52
	ld   [bc], a                                     ; $70a5: $02
	inc  de                                          ; $70a6: $13
	ld   l, a                                        ; $70a7: $6f
	sub  c                                           ; $70a8: $91
	and  c                                           ; $70a9: $a1
	ld   a, h                                        ; $70aa: $7c
	ld   e, c                                        ; $70ab: $59
	ld   l, a                                        ; $70ac: $6f
	ld   l, [hl]                                     ; $70ad: $6e
	sub  [hl]                                        ; $70ae: $96
	sbc  a                                           ; $70af: $9f
	dec  c                                           ; $70b0: $0d
	nop                                              ; $70b1: $00
	ld   a, [bc]                                     ; $70b2: $0a
	dec  c                                           ; $70b3: $0d
	nop                                              ; $70b4: $00
	nop                                              ; $70b5: $00
	rrca                                             ; $70b6: $0f
	nop                                              ; $70b7: $00
	ld   bc, $0b0c                                   ; $70b8: $01 $0c $0b
	ld   b, $75                                      ; $70bb: $06 $75
	dec  bc                                          ; $70bd: $0b
	inc  e                                           ; $70be: $1c
	inc  b                                           ; $70bf: $04
	rlca                                             ; $70c0: $07
	rlca                                             ; $70c1: $07
	ld   bc, $ffff                                   ; $70c2: $01 $ff $ff
	ld   l, a                                        ; $70c5: $6f
	ld   d, d                                        ; $70c6: $52
	ld   [bc], a                                     ; $70c7: $02
	inc  de                                          ; $70c8: $13
	ld   l, a                                        ; $70c9: $6f
	sub  c                                           ; $70ca: $91
	and  c                                           ; $70cb: $a1
	rst  $38                                         ; $70cc: $ff
	rst  $38                                         ; $70cd: $ff
	dec  c                                           ; $70ce: $0d
	sub  b                                           ; $70cf: $90
	ld   [hl], c                                     ; $70d0: $71
	halt                                             ; $70d1: $76
	ld   d, h                                        ; $70d2: $54
	ld   h, d                                        ; $70d3: $62
	ld   d, d                                        ; $70d4: $52
	ld   [hl], h                                     ; $70d5: $74
	ld   e, l                                        ; $70d6: $5d
	sbc  d                                           ; $70d7: $9a
	ld   a, b                                        ; $70d8: $78
	ld   d, d                                        ; $70d9: $52
	halt                                             ; $70da: $76
	dec  c                                           ; $70db: $0d
	or   e                                           ; $70dc: $b3
	ei                                               ; $70dd: $fb
	ldh  [c], a                                      ; $70de: $e2
	ld   a, c                                        ; $70df: $79
	ld   a, b                                        ; $70e0: $78
	sub  a                                           ; $70e1: $97
	ld   a, b                                        ; $70e2: $78
	ld   d, d                                        ; $70e3: $52
	sub  [hl]                                        ; $70e4: $96
	rst  $38                                         ; $70e5: $ff
	rst  $38                                         ; $70e6: $ff
	dec  c                                           ; $70e7: $0d
	nop                                              ; $70e8: $00
	ld   a, [bc]                                     ; $70e9: $0a
	dec  c                                           ; $70ea: $0d
	nop                                              ; $70eb: $00
	nop                                              ; $70ec: $00
	rrca                                             ; $70ed: $0f
	nop                                              ; $70ee: $00
	ld   bc, $0b0c                                   ; $70ef: $01 $0c $0b
	ld   b, $75                                      ; $70f2: $06 $75
	dec  bc                                          ; $70f4: $0b
	inc  e                                           ; $70f5: $1c
	inc  b                                           ; $70f6: $04
	inc  bc                                          ; $70f7: $03
	inc  bc                                          ; $70f8: $03
	ld   bc, $567b                                   ; $70f9: $01 $7b $56
	rst  $38                                         ; $70fc: $ff
	rst  $38                                         ; $70fd: $ff
	ld   l, a                                        ; $70fe: $6f
	ld   d, d                                        ; $70ff: $52
	ld   [bc], a                                     ; $7100: $02
	inc  de                                          ; $7101: $13
	ld   l, a                                        ; $7102: $6f
	sub  c                                           ; $7103: $91
	and  c                                           ; $7104: $a1
	rst  $38                                         ; $7105: $ff
	rst  $38                                         ; $7106: $ff
	dec  c                                           ; $7107: $0d
	ld   [hl], d                                     ; $7108: $72
	ld   e, c                                        ; $7109: $59
	sbc  d                                           ; $710a: $9a
	ld   l, a                                        ; $710b: $6f
	sub  c                                           ; $710c: $91
	ld   [hl], c                                     ; $710d: $71
	ld   l, l                                        ; $710e: $6d
	sub  [hl]                                        ; $710f: $96
	ld   d, a                                        ; $7110: $57
	rst  $38                                         ; $7111: $ff
	rst  $38                                         ; $7112: $ff
	dec  c                                           ; $7113: $0d
	nop                                              ; $7114: $00
	ld   a, [bc]                                     ; $7115: $0a
	add  hl, de                                      ; $7116: $19
	dec  b                                           ; $7117: $05
	ld   [bc], a                                     ; $7118: $02
	ld   e, b                                        ; $7119: $58
	and  c                                           ; $711a: $a1
	add  h                                           ; $711b: $84
	ld   h, a                                        ; $711c: $67
	sbc  c                                           ; $711d: $99
	nop                                              ; $711e: $00
	nop                                              ; $711f: $00
	ld   l, [hl]                                     ; $7120: $6e
	ld   [hl], c                                     ; $7121: $71
	ld   h, c                                        ; $7122: $61
	ld   h, a                                        ; $7123: $67
	sbc  c                                           ; $7124: $99
	nop                                              ; $7125: $00
	ld   bc, $bc07                                   ; $7126: $01 $07 $bc
	dec  bc                                          ; $7129: $0b
	ld   [bc], a                                     ; $712a: $02
	inc  bc                                          ; $712b: $03
	ld   bc, $2000                                   ; $712c: $01 $00 $20
	nop                                              ; $712f: $00
	rlca                                             ; $7130: $07
	db   $eb                                         ; $7131: $eb
	dec  bc                                          ; $7132: $0b
	ld   [bc], a                                     ; $7133: $02
	inc  bc                                          ; $7134: $03
	ld   bc, $2001                                   ; $7135: $01 $01 $20
	nop                                              ; $7138: $00
	ld   b, $4b                                      ; $7139: $06 $4b
	inc  c                                           ; $713b: $0c
	rrca                                             ; $713c: $0f
	nop                                              ; $713d: $00
	ld   bc, $6501                                   ; $713e: $01 $01 $65
	sub  l                                           ; $7141: $95
	ld   d, h                                        ; $7142: $54
	ld   e, d                                        ; $7143: $5a
	ld   a, b                                        ; $7144: $78
	ld   d, d                                        ; $7145: $52
	ld   a, b                                        ; $7146: $78
	rst  $38                                         ; $7147: $ff
	rst  $38                                         ; $7148: $ff
	dec  c                                           ; $7149: $0d
	adc  c                                           ; $714a: $89
	sub  a                                           ; $714b: $97
	sbc  [hl]                                        ; $714c: $9e
	ld   e, b                                        ; $714d: $58
	and  c                                           ; $714e: $a1
	add  h                                           ; $714f: $84
	ld   h, l                                        ; $7150: $65
	ld   [hl], h                                     ; $7151: $74
	ld   d, b                                        ; $7152: $50
	ld   h, b                                        ; $7153: $60
	sbc  c                                           ; $7154: $99
	ld   e, c                                        ; $7155: $59
	sub  a                                           ; $7156: $97
	sbc  a                                           ; $7157: $9f
	dec  c                                           ; $7158: $0d
	nop                                              ; $7159: $00
	ld   a, [bc]                                     ; $715a: $0a
	inc  e                                           ; $715b: $1c
	inc  b                                           ; $715c: $04
	ld   bc, $0101                                   ; $715d: $01 $01 $01
	xor  c                                           ; $7160: $a9
	reti                                             ; $7161: $d9


	reti                                             ; $7162: $d9


	rst  $38                                         ; $7163: $ff
	rst  $38                                         ; $7164: $ff
	dec  c                                           ; $7165: $0d
	nop                                              ; $7166: $00
	ld   a, [bc]                                     ; $7167: $0a
	ld   b, $7b                                      ; $7168: $06 $7b
	inc  c                                           ; $716a: $0c
	rrca                                             ; $716b: $0f
	nop                                              ; $716c: $00
	ld   bc, $6501                                   ; $716d: $01 $01 $65
	sub  l                                           ; $7170: $95
	ld   d, h                                        ; $7171: $54
	ld   e, d                                        ; $7172: $5a
	ld   a, b                                        ; $7173: $78
	ld   d, d                                        ; $7174: $52
	ld   a, b                                        ; $7175: $78
	rst  $38                                         ; $7176: $ff
	rst  $38                                         ; $7177: $ff
	dec  c                                           ; $7178: $0d
	adc  c                                           ; $7179: $89
	sub  a                                           ; $717a: $97
	sbc  [hl]                                        ; $717b: $9e
	ld   l, [hl]                                     ; $717c: $6e
	ld   [hl], c                                     ; $717d: $71
	ld   h, c                                        ; $717e: $61
	ld   h, l                                        ; $717f: $65
	ld   [hl], h                                     ; $7180: $74
	ld   d, b                                        ; $7181: $50
	ld   h, b                                        ; $7182: $60
	sbc  c                                           ; $7183: $99
	ld   e, c                                        ; $7184: $59
	sub  a                                           ; $7185: $97
	sbc  a                                           ; $7186: $9f
	dec  c                                           ; $7187: $0d
	nop                                              ; $7188: $00
	ld   a, [bc]                                     ; $7189: $0a
	inc  e                                           ; $718a: $1c
	inc  b                                           ; $718b: $04
	rlca                                             ; $718c: $07
	rlca                                             ; $718d: $07
	ld   bc, $716e                                   ; $718e: $01 $6e $71
	ld   h, c                                        ; $7191: $61
	ld   a, l                                        ; $7192: $7d
	and  l                                           ; $7193: $a5
	and  $9f                                         ; $7194: $e6 $9f
	dec  c                                           ; $7196: $0d
	and  e                                           ; $7197: $a3
	and  l                                           ; $7198: $a5
	db   $ec                                         ; $7199: $ec
	cp   d                                           ; $719a: $ba
	sbc  [hl]                                        ; $719b: $9e
	ld   h, c                                        ; $719c: $61
	ld   [hl], a                                     ; $719d: $77
	sub  b                                           ; $719e: $90
	ld   h, [hl]                                     ; $719f: $66
	sub  c                                           ; $71a0: $91
	dec  c                                           ; $71a1: $0d
	ld   a, b                                        ; $71a2: $78
	ld   d, d                                        ; $71a3: $52
	sub  b                                           ; $71a4: $90
	and  c                                           ; $71a5: $a1
	ld   a, [$000d]                                  ; $71a6: $fa $0d $00
	ld   a, [bc]                                     ; $71a9: $0a
	ld   bc, $a158                                   ; $71aa: $01 $58 $a1
	add  h                                           ; $71ad: $84
	ld   d, e                                        ; $71ae: $53
	sbc  [hl]                                        ; $71af: $9e
	ld   e, b                                        ; $71b0: $58
	and  c                                           ; $71b1: $a1
	add  h                                           ; $71b2: $84
	ld   d, e                                        ; $71b3: $53
	db   $fc                                         ; $71b4: $fc
	dec  c                                           ; $71b5: $0d
	nop                                              ; $71b6: $00
	ld   a, [bc]                                     ; $71b7: $0a
	rrca                                             ; $71b8: $0f
	nop                                              ; $71b9: $00
	ld   bc, $6501                                   ; $71ba: $01 $01 $65
	sub  l                                           ; $71bd: $95
	ld   d, h                                        ; $71be: $54
	ld   e, d                                        ; $71bf: $5a
	ld   a, b                                        ; $71c0: $78
	ld   d, d                                        ; $71c1: $52
	ld   a, b                                        ; $71c2: $78
	db   $fc                                         ; $71c3: $fc
	sbc  a                                           ; $71c4: $9f
	dec  c                                           ; $71c5: $0d
	nop                                              ; $71c6: $00
	ld   a, [bc]                                     ; $71c7: $0a
	ld   b, $7b                                      ; $71c8: $06 $7b
	inc  c                                           ; $71ca: $0c
	inc  e                                           ; $71cb: $1c
	inc  b                                           ; $71cc: $04
	inc  bc                                          ; $71cd: $03
	inc  bc                                          ; $71ce: $03
	ld   bc, $a5a3                                   ; $71cf: $01 $a3 $a5
	db   $ec                                         ; $71d2: $ec
	cp   d                                           ; $71d3: $ba

Call_064_71d4:
	ld   [hl], d                                     ; $71d4: $72
	ld   e, c                                        ; $71d5: $59
	sbc  d                                           ; $71d6: $9a
	ld   l, l                                        ; $71d7: $6d
	ld   c, a                                        ; $71d8: $4f
	db   $fc                                         ; $71d9: $fc
	rst  $38                                         ; $71da: $ff
	rst  $38                                         ; $71db: $ff
	dec  c                                           ; $71dc: $0d
	ld   e, b                                        ; $71dd: $58
	and  c                                           ; $71de: $a1
	add  h                                           ; $71df: $84
	ld   d, e                                        ; $71e0: $53
	sbc  [hl]                                        ; $71e1: $9e
	ld   e, b                                        ; $71e2: $58
	and  c                                           ; $71e3: $a1
	add  h                                           ; $71e4: $84
	ld   d, e                                        ; $71e5: $53
	rst  $38                                         ; $71e6: $ff
	rst  $38                                         ; $71e7: $ff
	dec  c                                           ; $71e8: $0d
	nop                                              ; $71e9: $00
	ld   a, [bc]                                     ; $71ea: $0a
	rrca                                             ; $71eb: $0f
	nop                                              ; $71ec: $00
	ld   bc, $6501                                   ; $71ed: $01 $01 $65
	sub  l                                           ; $71f0: $95
	ld   d, h                                        ; $71f1: $54
	ld   e, d                                        ; $71f2: $5a
	ld   a, b                                        ; $71f3: $78
	ld   d, d                                        ; $71f4: $52
	ld   a, b                                        ; $71f5: $78
	db   $fc                                         ; $71f6: $fc
	sbc  a                                           ; $71f7: $9f
	dec  c                                           ; $71f8: $0d
	nop                                              ; $71f9: $00
	ld   a, [bc]                                     ; $71fa: $0a
	rlca                                             ; $71fb: $07
	rst  $38                                         ; $71fc: $ff
	inc  c                                           ; $71fd: $0c
	inc  bc                                          ; $71fe: $03
	inc  d                                           ; $71ff: $14
	ld   bc, $24b4                                   ; $7200: $01 $b4 $24
	nop                                              ; $7203: $00
	dec  c                                           ; $7204: $0d
	nop                                              ; $7205: $00
	nop                                              ; $7206: $00
	rrca                                             ; $7207: $0f
	nop                                              ; $7208: $00
	ld   bc, $0b0c                                   ; $7209: $01 $0c $0b
	rrca                                             ; $720c: $0f
	inc  b                                           ; $720d: $04
	ld   [hl-], a                                    ; $720e: $32
	add  hl, bc                                      ; $720f: $09
	ld   e, $0f                                      ; $7210: $1e $0f
	nop                                              ; $7212: $00
	ld   bc, $5001                                   ; $7213: $01 $01 $50
	db   $fc                                         ; $7216: $fc
	ld   d, b                                        ; $7217: $50
	rst  $38                                         ; $7218: $ff
	rst  $38                                         ; $7219: $ff
	dec  c                                           ; $721a: $0d
	and  e                                           ; $721b: $a3
	and  l                                           ; $721c: $a5
	db   $ec                                         ; $721d: $ec
	cp   d                                           ; $721e: $ba
	ld   a, e                                        ; $721f: $7b
	ld   l, a                                        ; $7220: $6f
	sub  c                                           ; $7221: $91
	ld   [hl], c                                     ; $7222: $71
	ld   l, l                                        ; $7223: $6d
	sub  [hl]                                        ; $7224: $96
	sbc  a                                           ; $7225: $9f
	dec  c                                           ; $7226: $0d
	ld   h, [hl]                                     ; $7227: $66
	sub  c                                           ; $7228: $91
	sbc  [hl]                                        ; $7229: $9e
	ld   [bc], a                                     ; $722a: $02
	or   l                                           ; $722b: $b5
	sbc  e                                           ; $722c: $9b
	ld   d, h                                        ; $722d: $54
	ld   e, c                                        ; $722e: $59
	ld   a, b                                        ; $722f: $78
	rst  $38                                         ; $7230: $ff
	rst  $38                                         ; $7231: $ff
	dec  c                                           ; $7232: $0d
	nop                                              ; $7233: $00
	ld   a, [bc]                                     ; $7234: $0a
	dec  c                                           ; $7235: $0d
	nop                                              ; $7236: $00
	nop                                              ; $7237: $00
	rrca                                             ; $7238: $0f
	nop                                              ; $7239: $00
	ld   bc, $020c                                   ; $723a: $01 $0c $02
	ld   c, $06                                      ; $723d: $0e $06
	inc  e                                           ; $723f: $1c
	inc  b                                           ; $7240: $04
	inc  bc                                          ; $7241: $03
	inc  bc                                          ; $7242: $03
	ld   bc, $9e50                                   ; $7243: $01 $50 $9e
	ld   e, c                                        ; $7246: $59
	ld   d, [hl]                                     ; $7247: $56
	ld   [hl], c                                     ; $7248: $71
	ld   [hl], h                                     ; $7249: $74
	ld   e, e                                        ; $724a: $5b
	ld   l, l                                        ; $724b: $6d
	and  c                                           ; $724c: $a1
	ld   l, [hl]                                     ; $724d: $6e
	rst  $38                                         ; $724e: $ff
	rst  $38                                         ; $724f: $ff
	dec  c                                           ; $7250: $0d
	nop                                              ; $7251: $00
	ld   a, [bc]                                     ; $7252: $0a
	inc  e                                           ; $7253: $1c
	inc  b                                           ; $7254: $04
	ld   bc, $0101                                   ; $7255: $01 $01 $01
	ld   e, e                                        ; $7258: $5b
	sub  l                                           ; $7259: $95
	ld   d, h                                        ; $725a: $54
	ld   a, l                                        ; $725b: $7d
	ld   l, l                                        ; $725c: $6d
	ld   a, h                                        ; $725d: $7c
	ld   h, l                                        ; $725e: $65
	ld   e, c                                        ; $725f: $59
	ld   [hl], c                                     ; $7260: $71
	ld   l, l                                        ; $7261: $6d
	ld   a, e                                        ; $7262: $7b
	sbc  a                                           ; $7263: $9f
	dec  c                                           ; $7264: $0d
	ld   d, b                                        ; $7265: $50
	sbc  b                                           ; $7266: $98
	ld   e, d                                        ; $7267: $5a
	halt                                             ; $7268: $76
	ld   d, h                                        ; $7269: $54
	sbc  a                                           ; $726a: $9f
	ld   l, a                                        ; $726b: $6f
	ld   d, d                                        ; $726c: $52
	ld   [bc], a                                     ; $726d: $02
	inc  de                                          ; $726e: $13
	ld   l, a                                        ; $726f: $6f
	sub  c                                           ; $7270: $91
	and  c                                           ; $7271: $a1
	sbc  a                                           ; $7272: $9f
	dec  c                                           ; $7273: $0d
	nop                                              ; $7274: $00
	ld   a, [bc]                                     ; $7275: $0a
	dec  b                                           ; $7276: $05
	add  b                                           ; $7277: $80
	ld   c, [hl]                                     ; $7278: $4e
	ld   bc, $0001                                   ; $7279: $01 $01 $00
	add  hl, hl                                      ; $727c: $29
	nop                                              ; $727d: $00
	nop                                              ; $727e: $00
	inc  e                                           ; $727f: $1c
	inc  b                                           ; $7280: $04
	ld   bc, $0101                                   ; $7281: $01 $01 $01
	ld   d, b                                        ; $7284: $50
	sbc  b                                           ; $7285: $98
	ld   e, d                                        ; $7286: $5a
	halt                                             ; $7287: $76
	ld   d, h                                        ; $7288: $54
	sbc  [hl]                                        ; $7289: $9e
	ld   l, a                                        ; $728a: $6f
	ld   d, d                                        ; $728b: $52
	ld   [bc], a                                     ; $728c: $02
	inc  de                                          ; $728d: $13
	ld   l, a                                        ; $728e: $6f
	sub  c                                           ; $728f: $91
	and  c                                           ; $7290: $a1
	sbc  a                                           ; $7291: $9f
	dec  c                                           ; $7292: $0d
	ld   a, e                                        ; $7293: $7b
	ld   d, [hl]                                     ; $7294: $56
	sbc  [hl]                                        ; $7295: $9e
	and  e                                           ; $7296: $a3
	and  l                                           ; $7297: $a5
	db   $ec                                         ; $7298: $ec
	cp   d                                           ; $7299: $ba
	ld   e, b                                        ; $729a: $58
	ld   a, b                                        ; $729b: $78
	ld   e, c                                        ; $729c: $59
	sub  b                                           ; $729d: $90
	ld   h, a                                        ; $729e: $67
	ld   d, d                                        ; $729f: $52
	ld   l, l                                        ; $72a0: $6d
	dec  c                                           ; $72a1: $0d
	and  c                                           ; $72a2: $a1
	ld   l, [hl]                                     ; $72a3: $6e
	ld   e, a                                        ; $72a4: $5f
	ld   [hl], a                                     ; $72a5: $77
	rst  $38                                         ; $72a6: $ff
	rst  $38                                         ; $72a7: $ff
	dec  c                                           ; $72a8: $0d
	nop                                              ; $72a9: $00
	ld   a, [bc]                                     ; $72aa: $0a
	dec  c                                           ; $72ab: $0d
	nop                                              ; $72ac: $00
	nop                                              ; $72ad: $00
	rrca                                             ; $72ae: $0f
	nop                                              ; $72af: $00
	ld   bc, $020c                                   ; $72b0: $01 $0c $02
	ld   c, $97                                      ; $72b3: $0e $97
	inc  e                                           ; $72b5: $1c
	inc  b                                           ; $72b6: $04
	dec  b                                           ; $72b7: $05
	dec  b                                           ; $72b8: $05
	ld   bc, $526f                                   ; $72b9: $01 $6f $52
	ld   [bc], a                                     ; $72bc: $02
	inc  de                                          ; $72bd: $13
	ld   l, a                                        ; $72be: $6f
	sub  c                                           ; $72bf: $91
	and  c                                           ; $72c0: $a1
	ld   [hl], h                                     ; $72c1: $74
	sbc  [hl]                                        ; $72c2: $9e
	sub  d                                           ; $72c3: $92
	ld   h, e                                        ; $72c4: $63
	ld   h, l                                        ; $72c5: $65
	ld   d, d                                        ; $72c6: $52
	sbc  a                                           ; $72c7: $9f
	dec  c                                           ; $72c8: $0d
	or   d                                           ; $72c9: $b2
	ei                                               ; $72ca: $fb
	xor  [hl]                                        ; $72cb: $ae
	ld   l, l                                        ; $72cc: $6d
	add  a                                           ; $72cd: $87
	ld   h, e                                        ; $72ce: $63
	ld   l, c                                        ; $72cf: $69
	ld   [hl], h                                     ; $72d0: $74
	dec  c                                           ; $72d1: $0d
	ld   e, l                                        ; $72d2: $5d
	sbc  d                                           ; $72d3: $9a
	sbc  c                                           ; $72d4: $99
	ld   a, b                                        ; $72d5: $78
	and  c                                           ; $72d6: $a1
	ld   [hl], h                                     ; $72d7: $74
	rst  $38                                         ; $72d8: $ff
	rst  $38                                         ; $72d9: $ff
	dec  c                                           ; $72da: $0d
	nop                                              ; $72db: $00
	ld   a, [bc]                                     ; $72dc: $0a
	rrca                                             ; $72dd: $0f
	nop                                              ; $72de: $00
	ld   bc, $0101                                   ; $72df: $01 $01 $01
	inc  bc                                          ; $72e2: $03
	pop  bc                                          ; $72e3: $c1
	pop  bc                                          ; $72e4: $c1
	and  b                                           ; $72e5: $a0
	ld   h, c                                        ; $72e6: $61
	ld   a, e                                        ; $72e7: $7b
	ld   l, l                                        ; $72e8: $6d
	ld   a, h                                        ; $72e9: $7c
	ld   a, l                                        ; $72ea: $7d
	dec  c                                           ; $72eb: $0d
	db   $10                                         ; $72ec: $10
	ld   [hl], a                                     ; $72ed: $77
	ld   h, c                                        ; $72ee: $61
	ld   a, h                                        ; $72ef: $7c
	inc  bc                                          ; $72f0: $03
	xor  c                                           ; $72f1: $a9
	ld   l, [hl]                                     ; $72f2: $6e
	ld   sp, hl                                      ; $72f3: $f9
	ld   bc, $0d04                                   ; $72f4: $01 $04 $0d
	nop                                              ; $72f7: $00
	ld   a, [bc]                                     ; $72f8: $0a
	inc  e                                           ; $72f9: $1c
	inc  b                                           ; $72fa: $04
	ld   bc, $0101                                   ; $72fb: $01 $01 $01
	and  e                                           ; $72fe: $a3
	and  l                                           ; $72ff: $a5
	db   $ec                                         ; $7300: $ec
	cp   d                                           ; $7301: $ba
	ld   a, l                                        ; $7302: $7d
	ld   a, e                                        ; $7303: $7b
	db   $fc                                         ; $7304: $fc
	rst  $38                                         ; $7305: $ff
	rst  $38                                         ; $7306: $ff
	dec  c                                           ; $7307: $0d
	cp   b                                           ; $7308: $b8
	jp   hl                                          ; $7309: $e9


	ei                                               ; $730a: $fb
	ret                                              ; $730b: $c9


	or   d                                           ; $730c: $b2
	ei                                               ; $730d: $fb
	xor  [hl]                                        ; $730e: $ae
	cp   h                                           ; $730f: $bc
	call nz, $fac9                                   ; $7310: $c4 $c9 $fa
	dec  c                                           ; $7313: $0d
	nop                                              ; $7314: $00
	ld   a, [bc]                                     ; $7315: $0a
	ld   bc, $526f                                   ; $7316: $01 $6f $52
	ld   [bc], a                                     ; $7319: $02
	inc  de                                          ; $731a: $13
	ld   l, a                                        ; $731b: $6f
	sub  c                                           ; $731c: $91
	and  c                                           ; $731d: $a1
	ld   a, l                                        ; $731e: $7d
	dec  c                                           ; $731f: $0d
	ld   a, b                                        ; $7320: $78
	ld   a, c                                        ; $7321: $79
	and  b                                           ; $7322: $a0
	ld   l, l                                        ; $7323: $6d
	ld   a, h                                        ; $7324: $7c
	adc  [hl]                                        ; $7325: $8e
	ld   a, h                                        ; $7326: $7c
	ld   sp, hl                                      ; $7327: $f9
	dec  c                                           ; $7328: $0d
	nop                                              ; $7329: $00
	ld   a, [bc]                                     ; $732a: $0a
	add  hl, de                                      ; $732b: $19
	dec  b                                           ; $732c: $05
	inc  bc                                          ; $732d: $03
	and  e                                           ; $732e: $a3
	and  l                                           ; $732f: $a5
	db   $ec                                         ; $7330: $ec
	cp   d                                           ; $7331: $ba
	halt                                             ; $7332: $76
	inc  b                                           ; $7333: $04
	dec  e                                           ; $7334: $1d
	ld   h, [hl]                                     ; $7335: $66
	sub  b                                           ; $7336: $90
	ld   a, h                                        ; $7337: $7c
	nop                                              ; $7338: $00
	nop                                              ; $7339: $00
	or   h                                           ; $733a: $b4
	ei                                               ; $733b: $fb
	db   $d3                                         ; $733c: $d3
	ei                                               ; $733d: $fb
	nop                                              ; $733e: $00
	ld   bc, $8778                                   ; $733f: $01 $78 $87
	sub  d                                           ; $7342: $92
	ld   e, e                                        ; $7343: $5b
	ld   d, h                                        ; $7344: $54
	ld   [hl], a                                     ; $7345: $77
	and  c                                           ; $7346: $a1
	nop                                              ; $7347: $00
	ld   [bc], a                                     ; $7348: $02
	rlca                                             ; $7349: $07
	rst  $20                                         ; $734a: $e7
	dec  c                                           ; $734b: $0d
	ld   [bc], a                                     ; $734c: $02
	inc  bc                                          ; $734d: $03
	ld   bc, $2000                                   ; $734e: $01 $00 $20
	nop                                              ; $7351: $00
	rlca                                             ; $7352: $07
	inc  l                                           ; $7353: $2c
	ld   c, $02                                      ; $7354: $0e $02
	inc  bc                                          ; $7356: $03
	ld   bc, $2001                                   ; $7357: $01 $01 $20
	nop                                              ; $735a: $00
	rlca                                             ; $735b: $07
	ld   h, h                                        ; $735c: $64
	ld   c, $02                                      ; $735d: $0e $02
	inc  bc                                          ; $735f: $03
	ld   bc, $2002                                   ; $7360: $01 $02 $20
	nop                                              ; $7363: $00
	ld   b, $a5                                      ; $7364: $06 $a5
	ld   c, $0f                                      ; $7366: $0e $0f
	nop                                              ; $7368: $00
	ld   bc, $6601                                   ; $7369: $01 $01 $66
	sub  c                                           ; $736c: $91
	sbc  [hl]                                        ; $736d: $9e
	and  e                                           ; $736e: $a3
	and  l                                           ; $736f: $a5
	db   $ec                                         ; $7370: $ec
	cp   d                                           ; $7371: $ba
	halt                                             ; $7372: $76
	inc  b                                           ; $7373: $04
	dec  e                                           ; $7374: $1d
	ld   h, [hl]                                     ; $7375: $66
	sub  b                                           ; $7376: $90
	ld   a, h                                        ; $7377: $7c
	and  b                                           ; $7378: $a0
	sbc  a                                           ; $7379: $9f
	dec  c                                           ; $737a: $0d
	nop                                              ; $737b: $00
	ld   a, [bc]                                     ; $737c: $0a
	inc  e                                           ; $737d: $1c
	inc  b                                           ; $737e: $04
	ld   bc, $0101                                   ; $737f: $01 $01 $01
	ld   l, a                                        ; $7382: $6f
	ld   d, d                                        ; $7383: $52
	ld   [bc], a                                     ; $7384: $02
	inc  de                                          ; $7385: $13
	ld   l, a                                        ; $7386: $6f
	sub  c                                           ; $7387: $91
	and  c                                           ; $7388: $a1
	sbc  [hl]                                        ; $7389: $9e
	ld   e, c                                        ; $738a: $59
	sbc  l                                           ; $738b: $9d
	ld   d, d                                        ; $738c: $52
	ld   d, d                                        ; $738d: $52
	ei                                               ; $738e: $fb
	sbc  a                                           ; $738f: $9f
	dec  c                                           ; $7390: $0d
	or   d                                           ; $7391: $b2
	ei                                               ; $7392: $fb
	xor  [hl]                                        ; $7393: $ae
	cp   h                                           ; $7394: $bc
	call nz, Call_064_6dc9                           ; $7395: $c4 $c9 $6d
	add  a                                           ; $7398: $87
	sbc  c                                           ; $7399: $99
	and  c                                           ; $739a: $a1
	ld   l, [hl]                                     ; $739b: $6e
	ei                                               ; $739c: $fb
	ld   sp, hl                                      ; $739d: $f9
	dec  c                                           ; $739e: $0d
	nop                                              ; $739f: $00
	ld   a, [bc]                                     ; $73a0: $0a
	dec  c                                           ; $73a1: $0d
	nop                                              ; $73a2: $00
	nop                                              ; $73a3: $00
	rrca                                             ; $73a4: $0f
	nop                                              ; $73a5: $00
	ld   bc, $0b0c                                   ; $73a6: $01 $0c $0b
	ld   b, $d4                                      ; $73a9: $06 $d4
	ld   c, $0f                                      ; $73ab: $0e $0f
	nop                                              ; $73ad: $00
	ld   bc, $6601                                   ; $73ae: $01 $01 $66
	sub  c                                           ; $73b1: $91
	sbc  [hl]                                        ; $73b2: $9e
	or   h                                           ; $73b3: $b4
	ei                                               ; $73b4: $fb
	db   $d3                                         ; $73b5: $d3
	ei                                               ; $73b6: $fb
	and  b                                           ; $73b7: $a0
	rst  $38                                         ; $73b8: $ff
	rst  $38                                         ; $73b9: $ff
	dec  c                                           ; $73ba: $0d
	nop                                              ; $73bb: $00
	ld   a, [bc]                                     ; $73bc: $0a
	inc  e                                           ; $73bd: $1c
	inc  b                                           ; $73be: $04
	ld   b, $06                                      ; $73bf: $06 $06
	ld   bc, $4f9d                                   ; $73c1: $01 $9d $4f
	rst  $38                                         ; $73c4: $ff
	rst  $38                                         ; $73c5: $ff
	ld   l, a                                        ; $73c6: $6f
	ld   d, d                                        ; $73c7: $52
	ld   [bc], a                                     ; $73c8: $02
	inc  de                                          ; $73c9: $13
	ld   l, a                                        ; $73ca: $6f
	sub  c                                           ; $73cb: $91
	and  c                                           ; $73cc: $a1
	sbc  [hl]                                        ; $73cd: $9e
	dec  c                                           ; $73ce: $0d
	ld   e, b                                        ; $73cf: $58
	ld   [hl], c                                     ; $73d0: $71
	halt                                             ; $73d1: $76
	ld   a, b                                        ; $73d2: $78
	ld   c, a                                        ; $73d3: $4f
	db   $fc                                         ; $73d4: $fc
	sbc  a                                           ; $73d5: $9f
	dec  c                                           ; $73d6: $0d
	nop                                              ; $73d7: $00
	ld   a, [bc]                                     ; $73d8: $0a
	dec  c                                           ; $73d9: $0d
	nop                                              ; $73da: $00
	nop                                              ; $73db: $00
	rrca                                             ; $73dc: $0f
	nop                                              ; $73dd: $00
	ld   bc, $0b0c                                   ; $73de: $01 $0c $0b
	ld   b, $d4                                      ; $73e1: $06 $d4
	ld   c, $0f                                      ; $73e3: $0e $0f
	nop                                              ; $73e5: $00
	ld   bc, $6601                                   ; $73e6: $01 $01 $66
	sub  c                                           ; $73e9: $91
	sbc  [hl]                                        ; $73ea: $9e
	ld   a, b                                        ; $73eb: $78
	add  a                                           ; $73ec: $87
	sub  d                                           ; $73ed: $92
	ld   e, e                                        ; $73ee: $5b
	ld   d, h                                        ; $73ef: $54
	ld   [hl], a                                     ; $73f0: $77
	and  c                                           ; $73f1: $a1
	and  b                                           ; $73f2: $a0
	rst  $38                                         ; $73f3: $ff
	rst  $38                                         ; $73f4: $ff
	dec  c                                           ; $73f5: $0d
	nop                                              ; $73f6: $00
	ld   a, [bc]                                     ; $73f7: $0a
	inc  e                                           ; $73f8: $1c
	inc  b                                           ; $73f9: $04
	ld   b, $06                                      ; $73fa: $06 $06
	ld   bc, $9d54                                   ; $73fc: $01 $54 $9d
	ld   c, a                                        ; $73ff: $4f
	db   $fc                                         ; $7400: $fc
	rst  $38                                         ; $7401: $ff
	rst  $38                                         ; $7402: $ff
	dec  c                                           ; $7403: $0d
	ld   l, a                                        ; $7404: $6f
	ld   d, d                                        ; $7405: $52
	ld   [bc], a                                     ; $7406: $02
	inc  de                                          ; $7407: $13
	ld   l, a                                        ; $7408: $6f
	sub  c                                           ; $7409: $91
	and  c                                           ; $740a: $a1
	sbc  [hl]                                        ; $740b: $9e
	dec  c                                           ; $740c: $0d
	ld   e, b                                        ; $740d: $58
	ld   a, b                                        ; $740e: $78
	ld   e, c                                        ; $740f: $59
	ld   h, a                                        ; $7410: $67
	ld   d, d                                        ; $7411: $52
	ld   [hl], h                                     ; $7412: $74
	sbc  c                                           ; $7413: $99
	and  c                                           ; $7414: $a1
	ld   l, [hl]                                     ; $7415: $6e
	sbc  a                                           ; $7416: $9f
	dec  c                                           ; $7417: $0d
	nop                                              ; $7418: $00
	ld   a, [bc]                                     ; $7419: $0a
	dec  c                                           ; $741a: $0d
	nop                                              ; $741b: $00
	nop                                              ; $741c: $00
	rrca                                             ; $741d: $0f
	nop                                              ; $741e: $00
	ld   bc, $0b0c                                   ; $741f: $01 $0c $0b
	ld   b, $d4                                      ; $7422: $06 $d4
	ld   c, $1c                                      ; $7424: $0e $1c
	inc  b                                           ; $7426: $04
	inc  bc                                          ; $7427: $03
	inc  bc                                          ; $7428: $03
	ld   bc, $927d                                   ; $7429: $01 $7d $92
	ld   e, l                                        ; $742c: $5d
	ld   e, e                                        ; $742d: $5b
	adc  a                                           ; $742e: $8f
	ld   a, b                                        ; $742f: $78
	sub  [hl]                                        ; $7430: $96
	sbc  a                                           ; $7431: $9f
	dec  c                                           ; $7432: $0d
	ld   l, a                                        ; $7433: $6f
	ld   d, d                                        ; $7434: $52
	ld   [bc], a                                     ; $7435: $02
	inc  de                                          ; $7436: $13
	ld   l, a                                        ; $7437: $6f
	sub  c                                           ; $7438: $91
	and  c                                           ; $7439: $a1
	ld   [hl], h                                     ; $743a: $74
	sbc  [hl]                                        ; $743b: $9e
	dec  c                                           ; $743c: $0d
	sub  h                                           ; $743d: $94
	ld   d, h                                        ; $743e: $54
	ld   h, [hl]                                     ; $743f: $66
	sub  e                                           ; $7440: $93
	ld   d, h                                        ; $7441: $54
	add  e                                           ; $7442: $83
	ld   l, [hl]                                     ; $7443: $6e
	and  c                                           ; $7444: $a1
	ld   l, [hl]                                     ; $7445: $6e
	ld   c, a                                        ; $7446: $4f
	db   $fc                                         ; $7447: $fc
	sbc  a                                           ; $7448: $9f
	dec  c                                           ; $7449: $0d
	nop                                              ; $744a: $00
	ld   a, [bc]                                     ; $744b: $0a
	dec  c                                           ; $744c: $0d
	nop                                              ; $744d: $00
	nop                                              ; $744e: $00
	rrca                                             ; $744f: $0f
	nop                                              ; $7450: $00
	ld   bc, $0b0c                                   ; $7451: $01 $0c $0b
	inc  e                                           ; $7454: $1c
	inc  b                                           ; $7455: $04
	ld   bc, $0101                                   ; $7456: $01 $01 $01
	add  e                                           ; $7459: $83
	ld   d, h                                        ; $745a: $54
	rst  $38                                         ; $745b: $ff
	rst  $38                                         ; $745c: $ff
	ld   e, b                                        ; $745d: $58
	ld   d, d                                        ; $745e: $52
	ld   h, l                                        ; $745f: $65
	ld   e, c                                        ; $7460: $59
	ld   [hl], c                                     ; $7461: $71
	ld   l, l                                        ; $7462: $6d
	sbc  a                                           ; $7463: $9f
	dec  c                                           ; $7464: $0d
	ld   h, d                                        ; $7465: $62
	ld   l, a                                        ; $7466: $6f
	ld   l, e                                        ; $7467: $6b
	ld   d, h                                        ; $7468: $54
	ld   h, e                                        ; $7469: $63
	adc  h                                           ; $746a: $8c
	ld   [hl], l                                     ; $746b: $75
	ld   h, l                                        ; $746c: $65
	ld   l, l                                        ; $746d: $6d
	sbc  a                                           ; $746e: $9f
	dec  c                                           ; $746f: $0d
	nop                                              ; $7470: $00

Call_064_7471:
Jump_064_7471:
	ld   a, [bc]                                     ; $7471: $0a
	rrca                                             ; $7472: $0f
	nop                                              ; $7473: $00
	ld   bc, $5001                                   ; $7474: $01 $01 $50
	ld   a, h                                        ; $7477: $7c
	ld   h, e                                        ; $7478: $63
	rst  $38                                         ; $7479: $ff
	rst  $38                                         ; $747a: $ff
	dec  c                                           ; $747b: $0d
	nop                                              ; $747c: $00
	ld   a, [bc]                                     ; $747d: $0a
	inc  e                                           ; $747e: $1c
	inc  b                                           ; $747f: $04
	nop                                              ; $7480: $00
	nop                                              ; $7481: $00
	ld   bc, $f986                                   ; $7482: $01 $86 $f9
	db   $10                                         ; $7485: $10
	ld   a, b                                        ; $7486: $78
	ld   a, c                                        ; $7487: $79
	ld   sp, hl                                      ; $7488: $f9
	dec  c                                           ; $7489: $0d
	nop                                              ; $748a: $00
	ld   a, [bc]                                     ; $748b: $0a
	add  hl, de                                      ; $748c: $19
	dec  b                                           ; $748d: $05
	ld   [bc], a                                     ; $748e: $02
	and  e                                           ; $748f: $a3
	and  l                                           ; $7490: $a5
	db   $ec                                         ; $7491: $ec
	cp   d                                           ; $7492: $ba
	and  b                                           ; $7493: $a0
	ld   [bc], a                                     ; $7494: $02
	sub  l                                           ; $7495: $95
	ld   [hl], d                                     ; $7496: $72
	adc  a                                           ; $7497: $8f
	sbc  c                                           ; $7498: $99
	nop                                              ; $7499: $00
	nop                                              ; $749a: $00
	ld   b, $3a                                      ; $749b: $06 $3a
	inc  bc                                          ; $749d: $03
	sub  d                                           ; $749e: $92
	ld   a, h                                        ; $749f: $7c
	dec  b                                           ; $74a0: $05
	jr   nz, jr_064_74a7                             ; $74a1: $20 $04

	dec  d                                           ; $74a3: $15
	and  b                                           ; $74a4: $a0
	add  e                                           ; $74a5: $83
	sbc  c                                           ; $74a6: $99

jr_064_74a7:
	nop                                              ; $74a7: $00
	ld   bc, $3e07                                   ; $74a8: $01 $07 $3e
	rrca                                             ; $74ab: $0f
	ld   [bc], a                                     ; $74ac: $02
	inc  bc                                          ; $74ad: $03
	ld   bc, $2000                                   ; $74ae: $01 $00 $20
	nop                                              ; $74b1: $00
	rlca                                             ; $74b2: $07
	ld   h, d                                        ; $74b3: $62
	db   $10                                         ; $74b4: $10
	ld   [bc], a                                     ; $74b5: $02
	inc  bc                                          ; $74b6: $03
	ld   bc, $2001                                   ; $74b7: $01 $01 $20
	nop                                              ; $74ba: $00
	ld   b, $bb                                      ; $74bb: $06 $bb
	db   $10                                         ; $74bd: $10
	rrca                                             ; $74be: $0f
	nop                                              ; $74bf: $00
	ld   bc, $ff01                                   ; $74c0: $01 $01 $ff
	rst  $38                                         ; $74c3: $ff
	rst  $38                                         ; $74c4: $ff
	rst  $38                                         ; $74c5: $ff
	dec  c                                           ; $74c6: $0d
	nop                                              ; $74c7: $00
	ld   a, [bc]                                     ; $74c8: $0a
	add  hl, de                                      ; $74c9: $19
	dec  b                                           ; $74ca: $05
	inc  bc                                          ; $74cb: $03
	inc  b                                           ; $74cc: $04
	ld   l, d                                        ; $74cd: $6a
	and  b                                           ; $74ce: $a0
	ld   [bc], a                                     ; $74cf: $02
	sub  l                                           ; $74d0: $95
	sbc  c                                           ; $74d1: $99
	nop                                              ; $74d2: $00
	nop                                              ; $74d3: $00
	inc  b                                           ; $74d4: $04
	call nc, $02a0                                   ; $74d5: $d4 $a0 $02
	sub  l                                           ; $74d8: $95
	sbc  c                                           ; $74d9: $99
	nop                                              ; $74da: $00
	ld   bc, $ddec                                   ; $74db: $01 $ec $dd
	push af                                          ; $74de: $f5
	and  b                                           ; $74df: $a0
	ld   [bc], a                                     ; $74e0: $02
	sub  l                                           ; $74e1: $95
	sbc  c                                           ; $74e2: $99
	nop                                              ; $74e3: $00
	ld   [bc], a                                     ; $74e4: $02
	rlca                                             ; $74e5: $07
	add  e                                           ; $74e6: $83
	rrca                                             ; $74e7: $0f
	ld   [bc], a                                     ; $74e8: $02
	inc  bc                                          ; $74e9: $03
	ld   bc, $2000                                   ; $74ea: $01 $00 $20
	nop                                              ; $74ed: $00
	rlca                                             ; $74ee: $07
	call nz, $020f                                   ; $74ef: $c4 $0f $02
	inc  bc                                          ; $74f2: $03
	ld   bc, $2001                                   ; $74f3: $01 $01 $20
	nop                                              ; $74f6: $00
	rlca                                             ; $74f7: $07
	rst  $30                                         ; $74f8: $f7
	rrca                                             ; $74f9: $0f
	ld   [bc], a                                     ; $74fa: $02
	inc  bc                                          ; $74fb: $03
	ld   bc, $2002                                   ; $74fc: $01 $02 $20
	nop                                              ; $74ff: $00
	ld   b, $3a                                      ; $7500: $06 $3a
	db   $10                                         ; $7502: $10
	rrca                                             ; $7503: $0f
	nop                                              ; $7504: $00
	ld   bc, $a301                                   ; $7505: $01 $01 $a3
	and  l                                           ; $7508: $a5
	db   $ec                                         ; $7509: $ec
	cp   d                                           ; $750a: $ba
	ld   [hl], c                                     ; $750b: $71
	ld   [hl], h                                     ; $750c: $74
	rst  $10                                         ; $750d: $d7
	rst  $28                                         ; $750e: $ef
	push af                                          ; $750f: $f5
	jp   z, $0d5a                                    ; $7510: $ca $5a $0d

	jp   nz, $fbe5                                   ; $7513: $c2 $e5 $fb

	ldh  [$f5], a                                    ; $7516: $e0 $f5
	or   c                                           ; $7518: $b1
	ld   l, [hl]                                     ; $7519: $6e
	sub  [hl]                                        ; $751a: $96
	ld   a, e                                        ; $751b: $7b
	sbc  a                                           ; $751c: $9f
	dec  c                                           ; $751d: $0d
	nop                                              ; $751e: $00
	ld   a, [bc]                                     ; $751f: $0a
	inc  e                                           ; $7520: $1c
	inc  b                                           ; $7521: $04
	dec  b                                           ; $7522: $05
	dec  b                                           ; $7523: $05
	ld   bc, $d9a9                                   ; $7524: $01 $a9 $d9
	reti                                             ; $7527: $d9


	reti                                             ; $7528: $d9


	rst  $38                                         ; $7529: $ff
	rst  $38                                         ; $752a: $ff
	dec  c                                           ; $752b: $0d
	ld   d, h                                        ; $752c: $54
	ld   [hl], c                                     ; $752d: $71
	sbc  d                                           ; $752e: $9a
	ld   h, l                                        ; $752f: $65
	ld   d, d                                        ; $7530: $52
	ld   a, b                                        ; $7531: $78
	db   $fc                                         ; $7532: $fc
	sbc  a                                           ; $7533: $9f
	dec  c                                           ; $7534: $0d
	adc  c                                           ; $7535: $89
	adc  a                                           ; $7536: $8f
	sub  a                                           ; $7537: $97
	sbc  d                                           ; $7538: $9a
	ld   l, a                                        ; $7539: $6f
	sub  c                                           ; $753a: $91
	ld   [hl], c                                     ; $753b: $71
	ld   l, l                                        ; $753c: $6d
	ld   a, [$000d]                                  ; $753d: $fa $0d $00
	ld   a, [bc]                                     ; $7540: $0a
	ld   b, $dd                                      ; $7541: $06 $dd
	db   $10                                         ; $7543: $10
	rrca                                             ; $7544: $0f
	nop                                              ; $7545: $00
	ld   bc, $a301                                   ; $7546: $01 $01 $a3
	and  l                                           ; $7549: $a5
	db   $ec                                         ; $754a: $ec
	cp   d                                           ; $754b: $ba
	ld   a, h                                        ; $754c: $7c
	inc  b                                           ; $754d: $04
	call nc, $0d9e                                   ; $754e: $d4 $9e $0d
	inc  bc                                          ; $7551: $03
	ld   a, [bc]                                     ; $7552: $0a
	ld   e, l                                        ; $7553: $5d
	ld   [hl], h                                     ; $7554: $74
	ld   e, e                                        ; $7555: $5b
	sbc  d                                           ; $7556: $9a
	ld   d, d                                        ; $7557: $52
	ld   l, [hl]                                     ; $7558: $6e
	ld   a, e                                        ; $7559: $7b
	sbc  a                                           ; $755a: $9f
	dec  c                                           ; $755b: $0d
	nop                                              ; $755c: $00
	ld   a, [bc]                                     ; $755d: $0a
	inc  e                                           ; $755e: $1c
	inc  b                                           ; $755f: $04
	ld   bc, $0101                                   ; $7560: $01 $01 $01
	ld   d, h                                        ; $7563: $54
	and  c                                           ; $7564: $a1
	sbc  a                                           ; $7565: $9f
	dec  c                                           ; $7566: $0d
	sub  [hl]                                        ; $7567: $96
	ld   e, l                                        ; $7568: $5d
	ld   l, e                                        ; $7569: $6b
	ld   d, h                                        ; $756a: $54
	ld   d, d                                        ; $756b: $52
	sbc  l                                           ; $756c: $9d
	sbc  d                                           ; $756d: $9a
	sbc  c                                           ; $756e: $99
	sub  [hl]                                        ; $756f: $96
	sbc  a                                           ; $7570: $9f
	dec  c                                           ; $7571: $0d
	nop                                              ; $7572: $00
	ld   a, [bc]                                     ; $7573: $0a
	ld   b, $dd                                      ; $7574: $06 $dd
	db   $10                                         ; $7576: $10
	rrca                                             ; $7577: $0f
	nop                                              ; $7578: $00
	ld   bc, $6b01                                   ; $7579: $01 $01 $6b
	ld   a, h                                        ; $757c: $7c
	db   $ec                                         ; $757d: $ec
	db   $dd                                         ; $757e: $dd
	push af                                          ; $757f: $f5
	sbc  a                                           ; $7580: $9f
	dec  c                                           ; $7581: $0d
	halt                                             ; $7582: $76
	ld   [hl], c                                     ; $7583: $71
	ld   [hl], h                                     ; $7584: $74
	sub  b                                           ; $7585: $90
	inc  b                                           ; $7586: $04
	ld   c, l                                        ; $7587: $4d
	ld   [bc], a                                     ; $7588: $02
	ld   a, e                                        ; $7589: $7b
	ld   [hl], c                                     ; $758a: $71
	ld   [hl], h                                     ; $758b: $74
	sbc  c                                           ; $758c: $99
	sub  [hl]                                        ; $758d: $96
	ld   a, e                                        ; $758e: $7b
	sbc  a                                           ; $758f: $9f
	dec  c                                           ; $7590: $0d
	nop                                              ; $7591: $00
	ld   a, [bc]                                     ; $7592: $0a
	inc  e                                           ; $7593: $1c
	inc  b                                           ; $7594: $04
	dec  b                                           ; $7595: $05
	dec  b                                           ; $7596: $05
	ld   bc, $d9a9                                   ; $7597: $01 $a9 $d9
	reti                                             ; $759a: $d9


	reti                                             ; $759b: $d9


	rst  $38                                         ; $759c: $ff
	rst  $38                                         ; $759d: $ff
	dec  c                                           ; $759e: $0d
	ld   d, b                                        ; $759f: $50
	sbc  b                                           ; $75a0: $98
	ld   e, d                                        ; $75a1: $5a
	halt                                             ; $75a2: $76
	ld   d, h                                        ; $75a3: $54
	rst  $38                                         ; $75a4: $ff
	rst  $38                                         ; $75a5: $ff
	dec  c                                           ; $75a6: $0d
	and  e                                           ; $75a7: $a3
	and  l                                           ; $75a8: $a5
	db   $ec                                         ; $75a9: $ec
	cp   d                                           ; $75aa: $ba
	ld   a, h                                        ; $75ab: $7c
	ld   e, b                                        ; $75ac: $58
	ld   e, e                                        ; $75ad: $5b
	ld   a, c                                        ; $75ae: $79
	ld   d, d                                        ; $75af: $52
	sbc  b                                           ; $75b0: $98
	ld   a, b                                        ; $75b1: $78
	ld   a, h                                        ; $75b2: $7c
	ld   a, [$000d]                                  ; $75b3: $fa $0d $00
	ld   a, [bc]                                     ; $75b6: $0a
	ld   b, $dd                                      ; $75b7: $06 $dd
	db   $10                                         ; $75b9: $10
	inc  e                                           ; $75ba: $1c
	inc  b                                           ; $75bb: $04
	dec  b                                           ; $75bc: $05
	dec  b                                           ; $75bd: $05
	ld   bc, $6e92                                   ; $75be: $01 $92 $6e
	rst  $38                                         ; $75c1: $ff

Call_064_75c2:
	rst  $38                                         ; $75c2: $ff
	ld   l, a                                        ; $75c3: $6f
	ld   d, d                                        ; $75c4: $52
	ld   [bc], a                                     ; $75c5: $02
	inc  de                                          ; $75c6: $13
	ld   l, a                                        ; $75c7: $6f
	sub  c                                           ; $75c8: $91
	and  c                                           ; $75c9: $a1
	rst  $38                                         ; $75ca: $ff
	rst  $38                                         ; $75cb: $ff
	dec  c                                           ; $75cc: $0d
	ld   l, e                                        ; $75cd: $6b
	and  c                                           ; $75ce: $a1
	ld   a, b                                        ; $75cf: $78
	ld   a, c                                        ; $75d0: $79
	ld   h, [hl]                                     ; $75d1: $66
	ld   [hl], c                                     ; $75d2: $71
	halt                                             ; $75d3: $76
	dec  c                                           ; $75d4: $0d
	adc  l                                           ; $75d5: $8d
	ld   a, b                                        ; $75d6: $78
	ld   d, d                                        ; $75d7: $52
	ld   [hl], l                                     ; $75d8: $75
	sub  [hl]                                        ; $75d9: $96
	rst  $38                                         ; $75da: $ff
	rst  $38                                         ; $75db: $ff
	dec  c                                           ; $75dc: $0d
	nop                                              ; $75dd: $00
	ld   a, [bc]                                     ; $75de: $0a
	ld   b, $dd                                      ; $75df: $06 $dd
	db   $10                                         ; $75e1: $10
	rrca                                             ; $75e2: $0f
	nop                                              ; $75e3: $00
	ld   bc, $0601                                   ; $75e4: $01 $01 $06
	ld   a, [hl-]                                    ; $75e7: $3a
	inc  bc                                          ; $75e8: $03
	sub  d                                           ; $75e9: $92
	halt                                             ; $75ea: $76
	ld   a, l                                        ; $75eb: $7d
	ld   a, b                                        ; $75ec: $78
	sbc  d                                           ; $75ed: $9a
	ld   [hl], h                                     ; $75ee: $74
	ld   e, l                                        ; $75ef: $5d
	sub  a                                           ; $75f0: $97
	ld   h, l                                        ; $75f1: $65
	ld   [hl], h                                     ; $75f2: $74
	ld   [hl], h                                     ; $75f3: $74
	dec  c                                           ; $75f4: $0d
	ld   h, e                                        ; $75f5: $63
	add  c                                           ; $75f6: $81
	ld   h, l                                        ; $75f7: $65
	ld   e, l                                        ; $75f8: $5d
	ld   a, b                                        ; $75f9: $78
	ld   d, d                                        ; $75fa: $52
	ld   sp, hl                                      ; $75fb: $f9
	dec  c                                           ; $75fc: $0d
	nop                                              ; $75fd: $00
	ld   a, [bc]                                     ; $75fe: $0a
	inc  e                                           ; $75ff: $1c
	inc  b                                           ; $7600: $04
	inc  bc                                          ; $7601: $03
	inc  bc                                          ; $7602: $03
	ld   bc, $ffff                                   ; $7603: $01 $ff $ff
	ld   h, e                                        ; $7606: $63
	add  c                                           ; $7607: $81
	ld   h, l                                        ; $7608: $65
	ld   d, d                                        ; $7609: $52
	halt                                             ; $760a: $76
	ld   e, e                                        ; $760b: $5b
	sub  b                                           ; $760c: $90
	ld   d, b                                        ; $760d: $50
	sbc  c                                           ; $760e: $99
	sub  [hl]                                        ; $760f: $96
	sbc  a                                           ; $7610: $9f
	dec  c                                           ; $7611: $0d
	nop                                              ; $7612: $00
	ld   a, [bc]                                     ; $7613: $0a
	inc  e                                           ; $7614: $1c
	inc  b                                           ; $7615: $04
	ld   bc, $0101                                   ; $7616: $01 $01 $01
	ld   [hl], l                                     ; $7619: $75
	sub  b                                           ; $761a: $90
	sbc  [hl]                                        ; $761b: $9e
	adc  l                                           ; $761c: $8d
	and  c                                           ; $761d: $a1
	ld   a, b                                        ; $761e: $78
	ld   e, d                                        ; $761f: $5a
	ld   d, d                                        ; $7620: $52
	ld   [hl], h                                     ; $7621: $74
	ld   e, l                                        ; $7622: $5d
	sbc  d                                           ; $7623: $9a
	sbc  c                                           ; $7624: $99
	ld   e, c                                        ; $7625: $59
	sub  a                                           ; $7626: $97
	dec  c                                           ; $7627: $0d
	and  e                                           ; $7628: $a3
	and  l                                           ; $7629: $a5
	db   $ec                                         ; $762a: $ec
	cp   d                                           ; $762b: $ba
	sbc  [hl]                                        ; $762c: $9e
	ld   h, e                                        ; $762d: $63
	add  c                                           ; $762e: $81
	ld   h, l                                        ; $762f: $65
	ld   e, l                                        ; $7630: $5d
	ld   a, b                                        ; $7631: $78
	ld   d, d                                        ; $7632: $52
	sub  [hl]                                        ; $7633: $96
	sbc  a                                           ; $7634: $9f
	dec  c                                           ; $7635: $0d
	nop                                              ; $7636: $00
	ld   a, [bc]                                     ; $7637: $0a
	ld   b, $dd                                      ; $7638: $06 $dd
	db   $10                                         ; $763a: $10
	rrca                                             ; $763b: $0f
	nop                                              ; $763c: $00
	ld   bc, $ff01                                   ; $763d: $01 $01 $ff
	rst  $38                                         ; $7640: $ff
	inc  b                                           ; $7641: $04
	ld   c, c                                        ; $7642: $49
	ld   [hl], l                                     ; $7643: $75
	sub  b                                           ; $7644: $90
	ld   a, b                                        ; $7645: $78
	ld   d, d                                        ; $7646: $52
	sub  [hl]                                        ; $7647: $96
	sbc  a                                           ; $7648: $9f
	dec  c                                           ; $7649: $0d
	nop                                              ; $764a: $00
	ld   a, [bc]                                     ; $764b: $0a
	inc  e                                           ; $764c: $1c
	inc  b                                           ; $764d: $04
	ld   b, $06                                      ; $764e: $06 $06
	ld   bc, $ffff                                   ; $7650: $01 $ff $ff
	ld   sp, hl                                      ; $7653: $f9
	db   $10                                         ; $7654: $10
	reti                                             ; $7655: $d9


	push af                                          ; $7656: $f5
	ld   a, b                                        ; $7657: $78
	ld   a, h                                        ; $7658: $7c
	sbc  a                                           ; $7659: $9f
	dec  c                                           ; $765a: $0d
	nop                                              ; $765b: $00
	ld   a, [bc]                                     ; $765c: $0a
	rlca                                             ; $765d: $07
	ld   l, $11                                      ; $765e: $2e $11
	inc  bc                                          ; $7660: $03
	inc  d                                           ; $7661: $14
	ld   bc, $25be                                   ; $7662: $01 $be $25
	nop                                              ; $7665: $00
	inc  e                                           ; $7666: $1c
	inc  b                                           ; $7667: $04
	nop                                              ; $7668: $00
	nop                                              ; $7669: $00
	ld   bc, $9b6b                                   ; $766a: $01 $6b $9b
	ld   l, e                                        ; $766d: $6b
	sbc  e                                           ; $766e: $9b
	sbc  [hl]                                        ; $766f: $9e
	ld   e, c                                        ; $7670: $59
	ld   d, [hl]                                     ; $7671: $56
	sbc  e                                           ; $7672: $9b
	sbc  a                                           ; $7673: $9f
	dec  c                                           ; $7674: $0d
	nop                                              ; $7675: $00
	ld   a, [bc]                                     ; $7676: $0a
	dec  c                                           ; $7677: $0d
	nop                                              ; $7678: $00
	nop                                              ; $7679: $00
	rrca                                             ; $767a: $0f
	nop                                              ; $767b: $00
	ld   bc, $020c                                   ; $767c: $01 $0c $02
	ld   c, $06                                      ; $767f: $0e $06
	inc  e                                           ; $7681: $1c
	inc  b                                           ; $7682: $04
	ld   bc, $0101                                   ; $7683: $01 $01 $01
	ld   e, e                                        ; $7686: $5b
	sub  l                                           ; $7687: $95
	ld   d, h                                        ; $7688: $54
	ld   a, l                                        ; $7689: $7d
	ld   l, l                                        ; $768a: $6d
	ld   a, h                                        ; $768b: $7c
	ld   h, l                                        ; $768c: $65
	ld   e, c                                        ; $768d: $59
	ld   [hl], c                                     ; $768e: $71
	ld   l, l                                        ; $768f: $6d
	sub  [hl]                                        ; $7690: $96
	sbc  a                                           ; $7691: $9f
	dec  c                                           ; $7692: $0d
	ld   l, a                                        ; $7693: $6f
	ld   d, d                                        ; $7694: $52
	ld   [bc], a                                     ; $7695: $02
	inc  de                                          ; $7696: $13
	ld   l, a                                        ; $7697: $6f
	sub  c                                           ; $7698: $91
	and  c                                           ; $7699: $a1
	sbc  a                                           ; $769a: $9f
	dec  c                                           ; $769b: $0d
	ld   d, b                                        ; $769c: $50
	sbc  b                                           ; $769d: $98
	ld   e, d                                        ; $769e: $5a
	halt                                             ; $769f: $76
	ld   a, e                                        ; $76a0: $7b
	sbc  a                                           ; $76a1: $9f
	dec  c                                           ; $76a2: $0d
	nop                                              ; $76a3: $00
	ld   a, [bc]                                     ; $76a4: $0a
	dec  b                                           ; $76a5: $05
	add  b                                           ; $76a6: $80
	ld   c, [hl]                                     ; $76a7: $4e
	ld   bc, $0001                                   ; $76a8: $01 $01 $00
	add  hl, hl                                      ; $76ab: $29
	nop                                              ; $76ac: $00
	nop                                              ; $76ad: $00
	dec  c                                           ; $76ae: $0d
	nop                                              ; $76af: $00
	nop                                              ; $76b0: $00
	rrca                                             ; $76b1: $0f
	nop                                              ; $76b2: $00
	ld   bc, $960e                                   ; $76b3: $01 $0e $96
	inc  e                                           ; $76b6: $1c
	inc  b                                           ; $76b7: $04
	ld   bc, $0101                                   ; $76b8: $01 $01 $01
	ld   a, e                                        ; $76bb: $7b
	ld   d, [hl]                                     ; $76bc: $56
	ld   a, e                                        ; $76bd: $7b
	ld   d, [hl]                                     ; $76be: $56
	sbc  [hl]                                        ; $76bf: $9e
	ld   l, a                                        ; $76c0: $6f
	ld   d, d                                        ; $76c1: $52
	ld   [bc], a                                     ; $76c2: $02
	inc  de                                          ; $76c3: $13
	ld   l, a                                        ; $76c4: $6f
	sub  c                                           ; $76c5: $91
	and  c                                           ; $76c6: $a1
	sbc  a                                           ; $76c7: $9f
	dec  c                                           ; $76c8: $0d
	ld   e, b                                        ; $76c9: $58
	ld   [hl], h                                     ; $76ca: $74
	and  c                                           ; $76cb: $a1
	ld   e, e                                        ; $76cc: $5b
	ld   e, d                                        ; $76cd: $5a
	ld   d, d                                        ; $76ce: $52
	ld   d, d                                        ; $76cf: $52
	ld   e, c                                        ; $76d0: $59
	sub  a                                           ; $76d1: $97
	sbc  [hl]                                        ; $76d2: $9e
	dec  c                                           ; $76d3: $0d
	ld   h, e                                        ; $76d4: $63
	and  c                                           ; $76d5: $a1
	adc  e                                           ; $76d6: $8b
	ld   h, l                                        ; $76d7: $65
	ld   a, b                                        ; $76d8: $78
	ld   e, d                                        ; $76d9: $5a
	sub  a                                           ; $76da: $97
	ld   e, c                                        ; $76db: $59
	ld   d, [hl]                                     ; $76dc: $56
	sbc  e                                           ; $76dd: $9b
	ld   d, h                                        ; $76de: $54
	sbc  a                                           ; $76df: $9f
	dec  c                                           ; $76e0: $0d
	nop                                              ; $76e1: $00
	ld   a, [bc]                                     ; $76e2: $0a
	dec  c                                           ; $76e3: $0d
	nop                                              ; $76e4: $00
	nop                                              ; $76e5: $00
	rrca                                             ; $76e6: $0f
	nop                                              ; $76e7: $00
	ld   bc, $9123                                   ; $76e8: $01 $23 $91
	inc  e                                           ; $76eb: $1c
	inc  b                                           ; $76ec: $04
	ld   b, $06                                      ; $76ed: $06 $06
	ld   bc, $fa50                                   ; $76ef: $01 $50 $fa
	dec  c                                           ; $76f2: $0d
	xor  h                                           ; $76f3: $ac
	sub  $a8                                         ; $76f4: $d6 $a8
	ld   a, c                                        ; $76f6: $79
	sbc  l                                           ; $76f7: $9d
	ld   h, a                                        ; $76f8: $67
	sbc  d                                           ; $76f9: $9a
	sub  b                                           ; $76fa: $90
	ld   a, h                                        ; $76fb: $7c
	dec  c                                           ; $76fc: $0d
	ld   h, l                                        ; $76fd: $65
	ld   l, a                                        ; $76fe: $6f
	sub  c                                           ; $76ff: $91
	ld   [hl], c                                     ; $7700: $71
	ld   l, l                                        ; $7701: $6d
	rst  $38                                         ; $7702: $ff
	rst  $38                                         ; $7703: $ff
	dec  c                                           ; $7704: $0d
	nop                                              ; $7705: $00
	ld   a, [bc]                                     ; $7706: $0a
	inc  e                                           ; $7707: $1c
	inc  b                                           ; $7708: $04
	nop                                              ; $7709: $00
	nop                                              ; $770a: $00
	ld   bc, $7176                                   ; $770b: $01 $76 $71
	ld   [hl], h                                     ; $770e: $74
	ld   e, l                                        ; $770f: $5d
	sbc  c                                           ; $7710: $99
	ld   e, c                                        ; $7711: $59
	sub  a                                           ; $7712: $97
	sbc  [hl]                                        ; $7713: $9e
	dec  c                                           ; $7714: $0d
	adc  h                                           ; $7715: $8c
	ld   [hl], c                                     ; $7716: $71
	ld   [hl], h                                     ; $7717: $74
	ld   [hl], h                                     ; $7718: $74
	ld   a, e                                        ; $7719: $7b
	sbc  a                                           ; $771a: $9f
	dec  c                                           ; $771b: $0d
	nop                                              ; $771c: $00
	ld   a, [bc]                                     ; $771d: $0a
	dec  c                                           ; $771e: $0d
	nop                                              ; $771f: $00
	nop                                              ; $7720: $00
	rrca                                             ; $7721: $0f
	nop                                              ; $7722: $00
	ld   bc, $ff01                                   ; $7723: $01 $01 $ff
	rst  $38                                         ; $7726: $ff
	rst  $38                                         ; $7727: $ff
	rst  $38                                         ; $7728: $ff
	dec  c                                           ; $7729: $0d
	nop                                              ; $772a: $00
	ld   a, [bc]                                     ; $772b: $0a
	dec  c                                           ; $772c: $0d
	ld   [$0f00], sp                                 ; $772d: $08 $00 $0f
	nop                                              ; $7730: $00
	ld   bc, $0101                                   ; $7731: $01 $01 $01
	inc  bc                                          ; $7734: $03
	ld   [bc], a                                     ; $7735: $02
	rlc  e                                           ; $7736: $cb $03
	add  d                                           ; $7738: $82
	ld   a, h                                        ; $7739: $7c
	inc  bc                                          ; $773a: $03
	add  [hl]                                        ; $773b: $86
	ld   [bc], a                                     ; $773c: $02
	xor  l                                           ; $773d: $ad
	rst  $38                                         ; $773e: $ff
	rst  $38                                         ; $773f: $ff
	ld   sp, hl                                      ; $7740: $f9
	ld   bc, $0d04                                   ; $7741: $01 $04 $0d
	nop                                              ; $7744: $00
	ld   a, [bc]                                     ; $7745: $0a
	inc  e                                           ; $7746: $1c
	ld   [rRAMG], sp                                 ; $7747: $08 $00 $00
	ld   bc, $c903                                   ; $774a: $01 $03 $c9
	inc  b                                           ; $774d: $04
	add  l                                           ; $774e: $85
	rst  $38                                         ; $774f: $ff
	rst  $38                                         ; $7750: $ff
	dec  c                                           ; $7751: $0d
	ld   [hl], a                                     ; $7752: $77
	ld   h, c                                        ; $7753: $61
	ld   [bc], a                                     ; $7754: $02
	ld   a, a                                        ; $7755: $7f
	ld   [hl], c                                     ; $7756: $71
	ld   l, l                                        ; $7757: $6d
	and  c                                           ; $7758: $a1
	ld   l, [hl]                                     ; $7759: $6e
	rst  $38                                         ; $775a: $ff
	rst  $38                                         ; $775b: $ff
	ld   sp, hl                                      ; $775c: $f9
	dec  c                                           ; $775d: $0d
	nop                                              ; $775e: $00
	ld   a, [bc]                                     ; $775f: $0a
	dec  c                                           ; $7760: $0d
	nop                                              ; $7761: $00
	nop                                              ; $7762: $00
	rrca                                             ; $7763: $0f
	nop                                              ; $7764: $00
	ld   bc, $0101                                   ; $7765: $01 $01 $01
	inc  bc                                          ; $7768: $03
	ld   [bc], a                                     ; $7769: $02
	ld   a, a                                        ; $776a: $7f
	ld   [hl], c                                     ; $776b: $71
	ld   [hl], h                                     ; $776c: $74
	ld   h, l                                        ; $776d: $65
	adc  h                                           ; $776e: $8c
	ld   [hl], c                                     ; $776f: $71
	ld   l, l                                        ; $7770: $6d
	rst  $38                                         ; $7771: $ff
	rst  $38                                         ; $7772: $ff
	ld   bc, $0d04                                   ; $7773: $01 $04 $0d
	nop                                              ; $7776: $00
	ld   a, [bc]                                     ; $7777: $0a
	inc  e                                           ; $7778: $1c
	inc  b                                           ; $7779: $04
	ld   bc, $0101                                   ; $777a: $01 $01 $01
	ld   d, b                                        ; $777d: $50
	sbc  [hl]                                        ; $777e: $9e
	ld   l, a                                        ; $777f: $6f
	ld   d, d                                        ; $7780: $52
	ld   [bc], a                                     ; $7781: $02
	inc  de                                          ; $7782: $13
	ld   l, a                                        ; $7783: $6f
	sub  c                                           ; $7784: $91
	and  c                                           ; $7785: $a1
	sbc  [hl]                                        ; $7786: $9e
	dec  c                                           ; $7787: $0d
	ld   e, b                                        ; $7788: $58
	adc  h                                           ; $7789: $8c
	ld   l, l                                        ; $778a: $6d
	ld   l, c                                        ; $778b: $69
	ei                                               ; $778c: $fb
	ld   a, [$000d]                                  ; $778d: $fa $0d $00
	ld   a, [bc]                                     ; $7790: $0a
	dec  c                                           ; $7791: $0d
	nop                                              ; $7792: $00
	nop                                              ; $7793: $00
	rrca                                             ; $7794: $0f
	nop                                              ; $7795: $00
	ld   bc, $8623                                   ; $7796: $01 $23 $86
	inc  e                                           ; $7799: $1c
	inc  b                                           ; $779a: $04
	nop                                              ; $779b: $00
	nop                                              ; $779c: $00
	ld   bc, $567b                                   ; $779d: $01 $7b $56
	sbc  [hl]                                        ; $77a0: $9e
	ld   l, a                                        ; $77a1: $6f
	ld   d, d                                        ; $77a2: $52
	ld   [bc], a                                     ; $77a3: $02
	inc  de                                          ; $77a4: $13
	ld   l, a                                        ; $77a5: $6f
	sub  c                                           ; $77a6: $91
	and  c                                           ; $77a7: $a1
	rst  $38                                         ; $77a8: $ff
	rst  $38                                         ; $77a9: $ff
	dec  c                                           ; $77aa: $0d
	nop                                              ; $77ab: $00
	ld   a, [bc]                                     ; $77ac: $0a
	ld   bc, $526f                                   ; $77ad: $01 $6f $52
	ld   [bc], a                                     ; $77b0: $02
	inc  de                                          ; $77b1: $13
	ld   l, a                                        ; $77b2: $6f
	sub  c                                           ; $77b3: $91
	and  c                                           ; $77b4: $a1
	ld   [hl], h                                     ; $77b5: $74
	sbc  [hl]                                        ; $77b6: $9e
	dec  c                                           ; $77b7: $0d
	ld   [hl], a                                     ; $77b8: $77
	and  c                                           ; $77b9: $a1
	ld   a, b                                        ; $77ba: $78
	ld   e, b                                        ; $77bb: $58
	and  c                                           ; $77bc: $a1
	ld   a, b                                        ; $77bd: $78
	ld   a, h                                        ; $77be: $7c
	add  b                                           ; $77bf: $80
	halt                                             ; $77c0: $76
	ld   e, d                                        ; $77c1: $5a
	dec  c                                           ; $77c2: $0d
	ld   h, a                                        ; $77c3: $67
	ld   e, e                                        ; $77c4: $5b
	ld   a, b                                        ; $77c5: $78
	ld   a, h                                        ; $77c6: $7c
	ld   sp, hl                                      ; $77c7: $f9
	dec  c                                           ; $77c8: $0d
	nop                                              ; $77c9: $00
	ld   a, [bc]                                     ; $77ca: $0a
	add  hl, de                                      ; $77cb: $19
	dec  b                                           ; $77cc: $05
	inc  bc                                          ; $77cd: $03
	and  e                                           ; $77ce: $a3
	and  l                                           ; $77cf: $a5
	db   $ec                                         ; $77d0: $ec
	cp   d                                           ; $77d1: $ba
	adc  l                                           ; $77d2: $8d
	ld   l, l                                        ; $77d3: $6d
	ld   d, d                                        ; $77d4: $52
	ld   a, b                                        ; $77d5: $78
	inc  bc                                          ; $77d6: $03
	add  [hl]                                        ; $77d7: $86
	nop                                              ; $77d8: $00
	nop                                              ; $77d9: $00
	inc  bc                                          ; $77da: $03
	sub  h                                           ; $77db: $94
	inc  b                                           ; $77dc: $04
	sbc  [hl]                                        ; $77dd: $9e
	and  b                                           ; $77de: $a0
	inc  b                                           ; $77df: $04
	sbc  [hl]                                        ; $77e0: $9e
	ld   e, c                                        ; $77e1: $59
	ld   [hl], c                                     ; $77e2: $71
	ld   [hl], h                                     ; $77e3: $74
	ld   e, l                                        ; $77e4: $5d
	sbc  d                                           ; $77e5: $9a
	sbc  c                                           ; $77e6: $99
	inc  bc                                          ; $77e7: $03
	add  d                                           ; $77e8: $82
	nop                                              ; $77e9: $00
	ld   bc, $6e03                                   ; $77ea: $01 $03 $6e
	ld   [bc], a                                     ; $77ed: $02
	db   $fc                                         ; $77ee: $fc
	ld   a, b                                        ; $77ef: $78
	sub  a                                           ; $77f0: $97
	ld   l, [hl]                                     ; $77f1: $6e
	sbc  d                                           ; $77f2: $9a
	ld   [hl], l                                     ; $77f3: $75
	sub  b                                           ; $77f4: $90
	nop                                              ; $77f5: $00
	ld   [bc], a                                     ; $77f6: $02
	rlca                                             ; $77f7: $07
	sub  l                                           ; $77f8: $95
	ld   [de], a                                     ; $77f9: $12
	ld   [bc], a                                     ; $77fa: $02
	inc  bc                                          ; $77fb: $03
	ld   bc, $2000                                   ; $77fc: $01 $00 $20
	nop                                              ; $77ff: $00
	rlca                                             ; $7800: $07
	call nz, $0212                                   ; $7801: $c4 $12 $02
	inc  bc                                          ; $7804: $03
	ld   bc, $2001                                   ; $7805: $01 $01 $20
	nop                                              ; $7808: $00
	rlca                                             ; $7809: $07
	rlca                                             ; $780a: $07
	inc  de                                          ; $780b: $13
	ld   [bc], a                                     ; $780c: $02
	inc  bc                                          ; $780d: $03
	ld   bc, $2002                                   ; $780e: $01 $02 $20
	nop                                              ; $7811: $00
	ld   b, $40                                      ; $7812: $06 $40
	inc  de                                          ; $7814: $13
	rrca                                             ; $7815: $0f
	nop                                              ; $7816: $00
	ld   bc, $a301                                   ; $7817: $01 $01 $a3
	and  l                                           ; $781a: $a5
	db   $ec                                         ; $781b: $ec
	cp   d                                           ; $781c: $ba
	adc  l                                           ; $781d: $8d
	ld   l, l                                        ; $781e: $6d
	ld   d, d                                        ; $781f: $52
	ld   a, b                                        ; $7820: $78
	inc  bc                                          ; $7821: $03
	add  [hl]                                        ; $7822: $86
	ld   e, c                                        ; $7823: $59
	ld   a, b                                        ; $7824: $78
	sbc  a                                           ; $7825: $9f
	dec  c                                           ; $7826: $0d
	nop                                              ; $7827: $00
	ld   a, [bc]                                     ; $7828: $0a
	inc  e                                           ; $7829: $1c
	inc  b                                           ; $782a: $04
	dec  b                                           ; $782b: $05
	dec  b                                           ; $782c: $05
	ld   bc, $d9a9                                   ; $782d: $01 $a9 $d9
	reti                                             ; $7830: $d9


	reti                                             ; $7831: $d9


	rst  $38                                         ; $7832: $ff
	rst  $38                                         ; $7833: $ff
	dec  c                                           ; $7834: $0d
	rst  ToBoot                                         ; $7835: $c7
	xor  $6f                                         ; $7836: $ee $6f
	sub  c                                           ; $7838: $91
	ld   d, h                                        ; $7839: $54
	sub  [hl]                                        ; $783a: $96
	ld   d, a                                        ; $783b: $57
	rst  $38                                         ; $783c: $ff
	rst  $38                                         ; $783d: $ff
	dec  c                                           ; $783e: $0d
	nop                                              ; $783f: $00
	ld   a, [bc]                                     ; $7840: $0a
	ld   b, $5f                                      ; $7841: $06 $5f
	inc  de                                          ; $7843: $13
	rrca                                             ; $7844: $0f
	nop                                              ; $7845: $00
	ld   bc, $5401                                   ; $7846: $01 $01 $54
	ei                                               ; $7849: $fb
	and  c                                           ; $784a: $a1
	rst  $38                                         ; $784b: $ff
	rst  $38                                         ; $784c: $ff
	dec  c                                           ; $784d: $0d
	inc  bc                                          ; $784e: $03
	sub  h                                           ; $784f: $94
	inc  b                                           ; $7850: $04
	sbc  [hl]                                        ; $7851: $9e
	and  b                                           ; $7852: $a0
	inc  b                                           ; $7853: $04
	sbc  [hl]                                        ; $7854: $9e
	ld   e, c                                        ; $7855: $59
	ld   [hl], c                                     ; $7856: $71
	ld   [hl], h                                     ; $7857: $74
	ld   e, l                                        ; $7858: $5d
	sbc  d                                           ; $7859: $9a
	sbc  c                                           ; $785a: $99
	inc  bc                                          ; $785b: $03
	add  d                                           ; $785c: $82
	ld   e, c                                        ; $785d: $59
	ld   a, b                                        ; $785e: $78
	sbc  a                                           ; $785f: $9f
	dec  c                                           ; $7860: $0d
	nop                                              ; $7861: $00
	ld   a, [bc]                                     ; $7862: $0a
	inc  e                                           ; $7863: $1c
	inc  b                                           ; $7864: $04
	ld   b, $06                                      ; $7865: $06 $06
	ld   bc, $8466                                   ; $7867: $01 $66 $84
	and  c                                           ; $786a: $a1
	and  b                                           ; $786b: $a0
	sbc  l                                           ; $786c: $9d
	ld   e, c                                        ; $786d: $59
	ld   [hl], c                                     ; $786e: $71
	ld   [hl], h                                     ; $786f: $74
	ld   e, l                                        ; $7870: $5d
	sbc  d                                           ; $7871: $9a
	sbc  c                                           ; $7872: $99
	add  b                                           ; $7873: $80
	halt                                             ; $7874: $76
	ld   sp, hl                                      ; $7875: $f9
	dec  c                                           ; $7876: $0d
	rst  $38                                         ; $7877: $ff
	rst  $38                                         ; $7878: $ff
	sub  [hl]                                        ; $7879: $96
	ld   e, l                                        ; $787a: $5d
	sbc  l                                           ; $787b: $9d
	ld   e, c                                        ; $787c: $59
	and  c                                           ; $787d: $a1
	ld   a, b                                        ; $787e: $78
	ld   d, d                                        ; $787f: $52
	sbc  a                                           ; $7880: $9f
	dec  c                                           ; $7881: $0d
	nop                                              ; $7882: $00
	ld   a, [bc]                                     ; $7883: $0a
	ld   b, $5f                                      ; $7884: $06 $5f
	inc  de                                          ; $7886: $13
	rrca                                             ; $7887: $0f
	nop                                              ; $7888: $00
	ld   bc, $0301                                   ; $7889: $01 $01 $03
	ld   l, [hl]                                     ; $788c: $6e
	ld   [bc], a                                     ; $788d: $02
	db   $fc                                         ; $788e: $fc
	ld   a, b                                        ; $788f: $78
	sub  a                                           ; $7890: $97
	inc  bc                                          ; $7891: $03
	xor  c                                           ; $7892: $a9
	ld   [hl], l                                     ; $7893: $75
	sub  b                                           ; $7894: $90
	ld   d, d                                        ; $7895: $52
	ld   d, d                                        ; $7896: $52
	sub  [hl]                                        ; $7897: $96
	sbc  a                                           ; $7898: $9f
	dec  c                                           ; $7899: $0d
	nop                                              ; $789a: $00
	ld   a, [bc]                                     ; $789b: $0a
	inc  e                                           ; $789c: $1c
	inc  b                                           ; $789d: $04
	ld   [bc], a                                     ; $789e: $02
	ld   [bc], a                                     ; $789f: $02
	ld   bc, $ffff                                   ; $78a0: $01 $ff $ff
	ld   l, e                                        ; $78a3: $6b
	ld   d, h                                        ; $78a4: $54
	ld   a, b                                        ; $78a5: $78
	and  c                                           ; $78a6: $a1
	ld   l, [hl]                                     ; $78a7: $6e
	sbc  a                                           ; $78a8: $9f
	dec  c                                           ; $78a9: $0d
	ld   l, [hl]                                     ; $78aa: $6e
	sbc  d                                           ; $78ab: $9a
	ld   [hl], l                                     ; $78ac: $75
	sub  b                                           ; $78ad: $90
	ld   d, d                                        ; $78ae: $52
	ld   d, d                                        ; $78af: $52
	and  c                                           ; $78b0: $a1
	ld   l, [hl]                                     ; $78b1: $6e
	rst  $38                                         ; $78b2: $ff
	rst  $38                                         ; $78b3: $ff
	dec  c                                           ; $78b4: $0d
	add  e                                           ; $78b5: $83
	ei                                               ; $78b6: $fb
	and  c                                           ; $78b7: $a1
	rst  $38                                         ; $78b8: $ff
	rst  $38                                         ; $78b9: $ff
	dec  c                                           ; $78ba: $0d
	nop                                              ; $78bb: $00
	ld   a, [bc]                                     ; $78bc: $0a
	ld   b, $5f                                      ; $78bd: $06 $5f
	inc  de                                          ; $78bf: $13
	inc  e                                           ; $78c0: $1c
	inc  b                                           ; $78c1: $04
	ld   bc, $0101                                   ; $78c2: $01 $01 $01
	ld   d, b                                        ; $78c5: $50
	sbc  [hl]                                        ; $78c6: $9e
	ld   h, c                                        ; $78c7: $61
	adc  h                                           ; $78c8: $8c
	ld   [hl], c                                     ; $78c9: $71
	ld   [hl], h                                     ; $78ca: $74
	sbc  c                                           ; $78cb: $99
	rst  $38                                         ; $78cc: $ff
	rst  $38                                         ; $78cd: $ff
	dec  c                                           ; $78ce: $0d
	ld   l, a                                        ; $78cf: $6f
	ld   d, d                                        ; $78d0: $52
	ld   [bc], a                                     ; $78d1: $02
	inc  de                                          ; $78d2: $13
	ld   l, a                                        ; $78d3: $6f
	sub  c                                           ; $78d4: $91
	and  c                                           ; $78d5: $a1
	sbc  [hl]                                        ; $78d6: $9e
	ld   e, c                                        ; $78d7: $59
	sbc  l                                           ; $78d8: $9d
	ld   d, d                                        ; $78d9: $52
	ld   d, d                                        ; $78da: $52
	sbc  a                                           ; $78db: $9f
	dec  c                                           ; $78dc: $0d
	nop                                              ; $78dd: $00
	ld   a, [bc]                                     ; $78de: $0a
	rrca                                             ; $78df: $0f
	nop                                              ; $78e0: $00
	ld   bc, $a301                                   ; $78e1: $01 $01 $a3
	and  l                                           ; $78e4: $a5
	db   $ec                                         ; $78e5: $ec
	cp   d                                           ; $78e6: $ba
	rst  $38                                         ; $78e7: $ff
	rst  $38                                         ; $78e8: $ff
	dec  c                                           ; $78e9: $0d
	inc  b                                           ; $78ea: $04
	ld   l, l                                        ; $78eb: $6d
	ld   e, c                                        ; $78ec: $59
	sub  a                                           ; $78ed: $97
	sub  b                                           ; $78ee: $90
	ld   [bc], a                                     ; $78ef: $02
	jp   nz, $7452                                   ; $78f0: $c2 $52 $74

	ld   d, d                                        ; $78f3: $52
	ld   d, d                                        ; $78f4: $52
	ld   e, c                                        ; $78f5: $59
	ld   a, b                                        ; $78f6: $78
	ld   sp, hl                                      ; $78f7: $f9
	dec  c                                           ; $78f8: $0d
	nop                                              ; $78f9: $00
	ld   a, [bc]                                     ; $78fa: $0a
	inc  e                                           ; $78fb: $1c
	inc  b                                           ; $78fc: $04
	ld   bc, $0101                                   ; $78fd: $01 $01 $01
	ld   d, h                                        ; $7900: $54
	and  c                                           ; $7901: $a1
	sbc  [hl]                                        ; $7902: $9e
	ld   d, d                                        ; $7903: $52
	ld   d, d                                        ; $7904: $52
	sub  [hl]                                        ; $7905: $96
	sbc  a                                           ; $7906: $9f
	dec  c                                           ; $7907: $0d
	nop                                              ; $7908: $00
	ld   a, [bc]                                     ; $7909: $0a
	rrca                                             ; $790a: $0f
	nop                                              ; $790b: $00
	ld   bc, $0201                                   ; $790c: $01 $01 $02
	dec  bc                                          ; $790f: $0b
	inc  bc                                          ; $7910: $03
	ld   c, a                                        ; $7911: $4f
	ld   a, c                                        ; $7912: $79
	sub  b                                           ; $7913: $90
	ld   [bc], a                                     ; $7914: $02
	jp   nz, $6d52                                   ; $7915: $c2 $52 $6d

	ld   e, c                                        ; $7918: $59
	sub  b                                           ; $7919: $90
	dec  c                                           ; $791a: $0d
	inc  b                                           ; $791b: $04
	dec  hl                                          ; $791c: $2b
	sbc  d                                           ; $791d: $9a
	ld   a, b                                        ; $791e: $78
	ld   d, d                                        ; $791f: $52
	ld   e, a                                        ; $7920: $5f
	ld   [hl], a                                     ; $7921: $77
	and  e                                           ; $7922: $a3
	and  l                                           ; $7923: $a5
	db   $ec                                         ; $7924: $ec
	cp   d                                           ; $7925: $ba
	ld   a, l                                        ; $7926: $7d
	rst  $38                                         ; $7927: $ff
	rst  $38                                         ; $7928: $ff
	dec  c                                           ; $7929: $0d
	nop                                              ; $792a: $00
	ld   a, [bc]                                     ; $792b: $0a
	add  hl, de                                      ; $792c: $19
	dec  b                                           ; $792d: $05
	inc  bc                                          ; $792e: $03
	inc  b                                           ; $792f: $04
	ld   l, l                                        ; $7930: $6d
	ld   a, h                                        ; $7931: $7c
	ld   h, c                                        ; $7932: $61
	halt                                             ; $7933: $76
	ld   [hl], a                                     ; $7934: $77
	ld   d, h                                        ; $7935: $54
	dec  b                                           ; $7936: $05
	pop  de                                          ; $7937: $d1
	ld   d, h                                        ; $7938: $54
	ld   sp, hl                                      ; $7939: $f9
	nop                                              ; $793a: $00
	nop                                              ; $793b: $00
	inc  b                                           ; $793c: $04
	ld   c, $03                                      ; $793d: $0e $03
	sub  b                                           ; $793f: $90
	ld   h, e                                        ; $7940: $63
	and  c                                           ; $7941: $a1
	ld   e, d                                        ; $7942: $5a
	ld   [bc], a                                     ; $7943: $02
	sbc  d                                           ; $7944: $9a
	ld   e, e                                        ; $7945: $5b
	ld   a, b                                        ; $7946: $78
	ld   a, h                                        ; $7947: $7c
	ld   sp, hl                                      ; $7948: $f9
	nop                                              ; $7949: $00
	ld   bc, $a177                                   ; $794a: $01 $77 $a1
	ld   a, b                                        ; $794d: $78
	inc  bc                                          ; $794e: $03
	add  d                                           ; $794f: $82
	ld   e, d                                        ; $7950: $5a
	ld   [bc], a                                     ; $7951: $02
	sbc  d                                           ; $7952: $9a
	ld   e, e                                        ; $7953: $5b
	ld   a, b                                        ; $7954: $78
	ld   a, h                                        ; $7955: $7c

Call_064_7956:
	ld   sp, hl                                      ; $7956: $f9
	nop                                              ; $7957: $00
	ld   [bc], a                                     ; $7958: $02
	rlca                                             ; $7959: $07
	rst  $30                                         ; $795a: $f7
	inc  de                                          ; $795b: $13
	ld   [bc], a                                     ; $795c: $02
	inc  bc                                          ; $795d: $03
	ld   bc, $2000                                   ; $795e: $01 $00 $20
	nop                                              ; $7961: $00
	rlca                                             ; $7962: $07
	and  e                                           ; $7963: $a3
	inc  d                                           ; $7964: $14
	ld   [bc], a                                     ; $7965: $02
	inc  bc                                          ; $7966: $03
	ld   bc, $2001                                   ; $7967: $01 $01 $20
	nop                                              ; $796a: $00
	rlca                                             ; $796b: $07
	di                                               ; $796c: $f3
	inc  d                                           ; $796d: $14
	ld   [bc], a                                     ; $796e: $02
	inc  bc                                          ; $796f: $03
	ld   bc, $2002                                   ; $7970: $01 $02 $20
	nop                                              ; $7973: $00
	ld   b, $64                                      ; $7974: $06 $64
	dec  d                                           ; $7976: $15
	rrca                                             ; $7977: $0f
	nop                                              ; $7978: $00
	ld   bc, $0401                                   ; $7979: $01 $01 $04
	ld   l, l                                        ; $797c: $6d
	ld   a, h                                        ; $797d: $7c
	ld   h, c                                        ; $797e: $61
	halt                                             ; $797f: $76
	ld   [hl], a                                     ; $7980: $77
	ld   d, h                                        ; $7981: $54
	dec  b                                           ; $7982: $05
	pop  de                                          ; $7983: $d1
	ld   d, h                                        ; $7984: $54
	ld   sp, hl                                      ; $7985: $f9
	dec  c                                           ; $7986: $0d
	nop                                              ; $7987: $00
	ld   a, [bc]                                     ; $7988: $0a
	inc  e                                           ; $7989: $1c
	inc  b                                           ; $798a: $04
	ld   b, $06                                      ; $798b: $06 $06
	ld   bc, $fb56                                   ; $798d: $01 $56 $fb
	ld   sp, hl                                      ; $7990: $f9
	dec  c                                           ; $7991: $0d
	ld   l, a                                        ; $7992: $6f
	ld   d, d                                        ; $7993: $52
	ld   [bc], a                                     ; $7994: $02
	inc  de                                          ; $7995: $13
	ld   l, a                                        ; $7996: $6f
	sub  c                                           ; $7997: $91
	and  c                                           ; $7998: $a1
	ld   a, h                                        ; $7999: $7c
	ld   h, c                                        ; $799a: $61
	halt                                             ; $799b: $76
	ei                                               ; $799c: $fb
	ld   sp, hl                                      ; $799d: $f9
	dec  c                                           ; $799e: $0d
	nop                                              ; $799f: $00
	ld   a, [bc]                                     ; $79a0: $0a
	rrca                                             ; $79a1: $0f
	nop                                              ; $79a2: $00
	ld   bc, $a301                                   ; $79a3: $01 $01 $a3
	and  l                                           ; $79a6: $a5
	db   $ec                                         ; $79a7: $ec
	cp   d                                           ; $79a8: $ba
	ld   e, c                                        ; $79a9: $59
	sub  a                                           ; $79aa: $97
	ld   [bc], a                                     ; $79ab: $02
	sub  l                                           ; $79ac: $95
	ld   [hl], h                                     ; $79ad: $74
	rst  $38                                         ; $79ae: $ff
	rst  $38                                         ; $79af: $ff
	dec  c                                           ; $79b0: $0d
	inc  b                                           ; $79b1: $04
	ld   l, l                                        ; $79b2: $6d
	ld   [hl], c                                     ; $79b3: $71
	ld   [hl], h                                     ; $79b4: $74
	ld   [hl], a                                     ; $79b5: $77
	ld   d, h                                        ; $79b6: $54
	ld   a, b                                        ; $79b7: $78
	ld   a, h                                        ; $79b8: $7c
	ld   e, c                                        ; $79b9: $59
	ld   a, b                                        ; $79ba: $78
	ld   sp, hl                                      ; $79bb: $f9
	dec  c                                           ; $79bc: $0d
	nop                                              ; $79bd: $00
	ld   a, [bc]                                     ; $79be: $0a
	inc  e                                           ; $79bf: $1c
	inc  b                                           ; $79c0: $04
	inc  bc                                          ; $79c1: $03
	inc  bc                                          ; $79c2: $03
	ld   bc, $fb54                                   ; $79c3: $01 $54 $fb
	and  c                                           ; $79c6: $a1
	rst  $38                                         ; $79c7: $ff
	rst  $38                                         ; $79c8: $ff
	ld   e, c                                        ; $79c9: $59
	ld   [hl], c                                     ; $79ca: $71
	ld   h, c                                        ; $79cb: $61
	ld   d, d                                        ; $79cc: $52
	ld   d, d                                        ; $79cd: $52
	halt                                             ; $79ce: $76
	ld   a, l                                        ; $79cf: $7d
	dec  c                                           ; $79d0: $0d
	ld   e, b                                        ; $79d1: $58
	sub  b                                           ; $79d2: $90
	ld   d, h                                        ; $79d3: $54
	ld   e, a                                        ; $79d4: $5f
	ld   [hl], a                                     ; $79d5: $77
	rst  $38                                         ; $79d6: $ff
	rst  $38                                         ; $79d7: $ff
	dec  c                                           ; $79d8: $0d
	nop                                              ; $79d9: $00
	ld   a, [bc]                                     ; $79da: $0a
	inc  e                                           ; $79db: $1c
	inc  b                                           ; $79dc: $04
	dec  b                                           ; $79dd: $05
	dec  b                                           ; $79de: $05
	ld   bc, $fb54                                   ; $79df: $01 $54 $fb
	and  c                                           ; $79e2: $a1
	halt                                             ; $79e3: $76
	sbc  [hl]                                        ; $79e4: $9e
	dec  c                                           ; $79e5: $0d
	ld   e, b                                        ; $79e6: $58
	ld   [bc], a                                     ; $79e7: $02
	inc  de                                          ; $79e8: $13
	ld   l, a                                        ; $79e9: $6f
	sub  c                                           ; $79ea: $91
	and  c                                           ; $79eb: $a1
	ld   a, h                                        ; $79ec: $7c
	ld   [hl], d                                     ; $79ed: $72
	ld   e, h                                        ; $79ee: $5c
	ld   a, c                                        ; $79ef: $79
	dec  c                                           ; $79f0: $0d
	ld   h, a                                        ; $79f1: $67
	ld   e, e                                        ; $79f2: $5b
	ld   l, [hl]                                     ; $79f3: $6e
	sub  [hl]                                        ; $79f4: $96
	ld   a, [$000d]                                  ; $79f5: $fa $0d $00
	ld   a, [bc]                                     ; $79f8: $0a
	rrca                                             ; $79f9: $0f
	nop                                              ; $79fa: $00
	ld   bc, $ff01                                   ; $79fb: $01 $01 $ff
	rst  $38                                         ; $79fe: $ff
	sub  d                                           ; $79ff: $92
	ld   [hl], c                                     ; $7a00: $71
	ld   a, a                                        ; $7a01: $7f
	sbc  b                                           ; $7a02: $98
	sbc  [hl]                                        ; $7a03: $9e
	dec  c                                           ; $7a04: $0d
	inc  b                                           ; $7a05: $04
	ld   c, $03                                      ; $7a06: $0e $03
	sub  b                                           ; $7a08: $90
	ld   h, e                                        ; $7a09: $63
	and  c                                           ; $7a0a: $a1
	ld   a, c                                        ; $7a0b: $79
	ld   a, l                                        ; $7a0c: $7d
	ld   e, c                                        ; $7a0d: $59
	ld   a, b                                        ; $7a0e: $78
	sbc  l                                           ; $7a0f: $9d
	ld   a, b                                        ; $7a10: $78
	ld   d, d                                        ; $7a11: $52
	ld   a, h                                        ; $7a12: $7c
	ld   e, c                                        ; $7a13: $59
	sbc  a                                           ; $7a14: $9f
	dec  c                                           ; $7a15: $0d
	nop                                              ; $7a16: $00
	ld   a, [bc]                                     ; $7a17: $0a
	dec  c                                           ; $7a18: $0d
	nop                                              ; $7a19: $00
	nop                                              ; $7a1a: $00
	rrca                                             ; $7a1b: $0f
	nop                                              ; $7a1c: $00
	ld   bc, $020c                                   ; $7a1d: $01 $0c $02
	ld   b, $97                                      ; $7a20: $06 $97
	dec  d                                           ; $7a22: $15
	rrca                                             ; $7a23: $0f
	nop                                              ; $7a24: $00
	ld   bc, $0401                                   ; $7a25: $01 $01 $04
	ld   c, $03                                      ; $7a28: $0e $03
	sub  b                                           ; $7a2a: $90
	ld   h, e                                        ; $7a2b: $63
	and  c                                           ; $7a2c: $a1
	ld   e, d                                        ; $7a2d: $5a
	ld   [bc], a                                     ; $7a2e: $02
	sbc  d                                           ; $7a2f: $9a
	ld   e, e                                        ; $7a30: $5b
	ld   a, b                                        ; $7a31: $78
	ld   a, h                                        ; $7a32: $7c
	ld   sp, hl                                      ; $7a33: $f9
	dec  c                                           ; $7a34: $0d
	nop                                              ; $7a35: $00
	ld   a, [bc]                                     ; $7a36: $0a
	inc  e                                           ; $7a37: $1c
	inc  b                                           ; $7a38: $04
	ld   bc, $0101                                   ; $7a39: $01 $01 $01
	ld   d, h                                        ; $7a3c: $54
	and  c                                           ; $7a3d: $a1
	ld   a, [$6e0d]                                  ; $7a3e: $fa $0d $6e
	ld   d, d                                        ; $7a41: $52
	ld   h, a                                        ; $7a42: $67
	ld   e, e                                        ; $7a43: $5b
	ld   a, [$000d]                                  ; $7a44: $fa $0d $00
	ld   a, [bc]                                     ; $7a47: $0a
	inc  e                                           ; $7a48: $1c
	inc  b                                           ; $7a49: $04
	dec  b                                           ; $7a4a: $05
	dec  b                                           ; $7a4b: $05
	ld   bc, $a5a3                                   ; $7a4c: $01 $a3 $a5
	db   $ec                                         ; $7a4f: $ec
	cp   d                                           ; $7a50: $ba
	ld   a, e                                        ; $7a51: $7b
	sbc  [hl]                                        ; $7a52: $9e
	ld   e, b                                        ; $7a53: $58
	ld   [bc], a                                     ; $7a54: $02
	inc  de                                          ; $7a55: $13
	ld   l, a                                        ; $7a56: $6f
	sub  c                                           ; $7a57: $91
	and  c                                           ; $7a58: $a1
	halt                                             ; $7a59: $76
	dec  c                                           ; $7a5a: $0d
	ld   e, a                                        ; $7a5b: $5f
	ld   [hl], c                                     ; $7a5c: $71
	ld   h, c                                        ; $7a5d: $61
	and  c                                           ; $7a5e: $a1
	ld   h, a                                        ; $7a5f: $67
	sbc  c                                           ; $7a60: $99
	and  c                                           ; $7a61: $a1
	ld   l, [hl]                                     ; $7a62: $6e
	sub  [hl]                                        ; $7a63: $96
	sbc  a                                           ; $7a64: $9f
	dec  c                                           ; $7a65: $0d
	nop                                              ; $7a66: $00
	ld   a, [bc]                                     ; $7a67: $0a
	dec  c                                           ; $7a68: $0d
	nop                                              ; $7a69: $00
	nop                                              ; $7a6a: $00
	rrca                                             ; $7a6b: $0f
	nop                                              ; $7a6c: $00
	ld   bc, $020c                                   ; $7a6d: $01 $0c $02
	ld   b, $97                                      ; $7a70: $06 $97
	dec  d                                           ; $7a72: $15
	rrca                                             ; $7a73: $0f
	nop                                              ; $7a74: $00
	ld   bc, $7701                                   ; $7a75: $01 $01 $77
	and  c                                           ; $7a78: $a1
	ld   a, b                                        ; $7a79: $78
	inc  bc                                          ; $7a7a: $03
	add  d                                           ; $7a7b: $82
	ld   e, d                                        ; $7a7c: $5a
	ld   [bc], a                                     ; $7a7d: $02
	sbc  d                                           ; $7a7e: $9a
	ld   e, e                                        ; $7a7f: $5b
	ld   a, b                                        ; $7a80: $78
	ld   a, h                                        ; $7a81: $7c
	ld   sp, hl                                      ; $7a82: $f9
	dec  c                                           ; $7a83: $0d
	nop                                              ; $7a84: $00
	ld   a, [bc]                                     ; $7a85: $0a
	inc  e                                           ; $7a86: $1c
	inc  b                                           ; $7a87: $04
	dec  b                                           ; $7a88: $05
	dec  b                                           ; $7a89: $05
	ld   bc, $0258                                   ; $7a8a: $01 $58 $02
	inc  de                                          ; $7a8d: $13
	ld   l, a                                        ; $7a8e: $6f
	sub  c                                           ; $7a8f: $91
	and  c                                           ; $7a90: $a1
	adc  l                                           ; $7a91: $8d
	ld   l, l                                        ; $7a92: $6d
	ld   d, d                                        ; $7a93: $52
	ld   a, b                                        ; $7a94: $78
	add  b                                           ; $7a95: $80
	halt                                             ; $7a96: $76
	rst  $38                                         ; $7a97: $ff
	rst  $38                                         ; $7a98: $ff
	dec  c                                           ; $7a99: $0d
	ld   h, [hl]                                     ; $7a9a: $66
	sub  c                                           ; $7a9b: $91
	ld   a, b                                        ; $7a9c: $78
	ld   e, l                                        ; $7a9d: $5d
	ld   [hl], h                                     ; $7a9e: $74
	sbc  [hl]                                        ; $7a9f: $9e
	dec  c                                           ; $7aa0: $0d
	ld   e, b                                        ; $7aa1: $58
	ld   [bc], a                                     ; $7aa2: $02
	inc  de                                          ; $7aa3: $13
	ld   l, a                                        ; $7aa4: $6f
	sub  c                                           ; $7aa5: $91
	and  c                                           ; $7aa6: $a1
	ld   e, d                                        ; $7aa7: $5a
	ld   h, a                                        ; $7aa8: $67
	ld   e, e                                        ; $7aa9: $5b
	ld   a, [$000d]                                  ; $7aaa: $fa $0d $00
	ld   a, [bc]                                     ; $7aad: $0a
	inc  e                                           ; $7aae: $1c
	inc  b                                           ; $7aaf: $04
	inc  bc                                          ; $7ab0: $03
	inc  bc                                          ; $7ab1: $03
	ld   bc, $8f62                                   ; $7ab2: $01 $62 $8f
	and  c                                           ; $7ab5: $a1
	ld   a, e                                        ; $7ab6: $7b
	sbc  [hl]                                        ; $7ab7: $9e
	ld   l, a                                        ; $7ab8: $6f
	ld   d, d                                        ; $7ab9: $52
	ld   [bc], a                                     ; $7aba: $02
	inc  de                                          ; $7abb: $13
	ld   l, a                                        ; $7abc: $6f
	sub  c                                           ; $7abd: $91
	and  c                                           ; $7abe: $a1
	sbc  a                                           ; $7abf: $9f
	dec  c                                           ; $7ac0: $0d
	ld   [hl], l                                     ; $7ac1: $75
	sub  b                                           ; $7ac2: $90
	sbc  [hl]                                        ; $7ac3: $9e
	ld   e, b                                        ; $7ac4: $58
	ld   [bc], a                                     ; $7ac5: $02
	inc  de                                          ; $7ac6: $13
	ld   l, a                                        ; $7ac7: $6f
	sub  c                                           ; $7ac8: $91
	and  c                                           ; $7ac9: $a1
	ld   a, h                                        ; $7aca: $7c
	ld   [hl], d                                     ; $7acb: $72
	ld   e, h                                        ; $7acc: $5c
	ld   a, c                                        ; $7acd: $79
	dec  c                                           ; $7ace: $0d
	ld   h, a                                        ; $7acf: $67
	ld   e, e                                        ; $7ad0: $5b
	ld   l, [hl]                                     ; $7ad1: $6e
	ld   e, c                                        ; $7ad2: $59
	sub  a                                           ; $7ad3: $97
	ld   a, e                                        ; $7ad4: $7b
	sbc  a                                           ; $7ad5: $9f
	dec  c                                           ; $7ad6: $0d
	nop                                              ; $7ad7: $00
	ld   a, [bc]                                     ; $7ad8: $0a
	dec  c                                           ; $7ad9: $0d
	nop                                              ; $7ada: $00
	nop                                              ; $7adb: $00
	rrca                                             ; $7adc: $0f
	nop                                              ; $7add: $00
	ld   bc, $020c                                   ; $7ade: $01 $0c $02
	ld   b, $97                                      ; $7ae1: $06 $97
	dec  d                                           ; $7ae3: $15
	rrca                                             ; $7ae4: $0f
	nop                                              ; $7ae5: $00
	ld   bc, $ff01                                   ; $7ae6: $01 $01 $ff
	rst  $38                                         ; $7ae9: $ff
	ld   a, b                                        ; $7aea: $78
	and  c                                           ; $7aeb: $a1
	ld   [hl], l                                     ; $7aec: $75
	sub  b                                           ; $7aed: $90
	ld   a, b                                        ; $7aee: $78
	ld   d, d                                        ; $7aef: $52
	sub  [hl]                                        ; $7af0: $96
	sbc  a                                           ; $7af1: $9f
	dec  c                                           ; $7af2: $0d
	nop                                              ; $7af3: $00
	ld   a, [bc]                                     ; $7af4: $0a
	inc  e                                           ; $7af5: $1c
	inc  b                                           ; $7af6: $04
	ld   b, $06                                      ; $7af7: $06 $06
	ld   bc, $ffff                                   ; $7af9: $01 $ff $ff
	ld   sp, hl                                      ; $7afc: $f9
	dec  c                                           ; $7afd: $0d
	reti                                             ; $7afe: $d9


	push af                                          ; $7aff: $f5
	ld   a, b                                        ; $7b00: $78
	ld   l, a                                        ; $7b01: $6f
	ld   d, d                                        ; $7b02: $52
	ld   [bc], a                                     ; $7b03: $02
	inc  de                                          ; $7b04: $13
	ld   l, a                                        ; $7b05: $6f
	sub  c                                           ; $7b06: $91
	and  c                                           ; $7b07: $a1
	sbc  a                                           ; $7b08: $9f
	dec  c                                           ; $7b09: $0d
	nop                                              ; $7b0a: $00
	ld   a, [bc]                                     ; $7b0b: $0a
	dec  c                                           ; $7b0c: $0d
	nop                                              ; $7b0d: $00
	nop                                              ; $7b0e: $00
	rrca                                             ; $7b0f: $0f
	nop                                              ; $7b10: $00
	ld   bc, $020c                                   ; $7b11: $01 $0c $02
	ld   b, $97                                      ; $7b14: $06 $97
	dec  d                                           ; $7b16: $15
	ld   c, $06                                      ; $7b17: $0e $06
	inc  e                                           ; $7b19: $1c
	inc  b                                           ; $7b1a: $04
	ld   bc, $0101                                   ; $7b1b: $01 $01 $01
	ld   e, e                                        ; $7b1e: $5b
	sub  l                                           ; $7b1f: $95
	ld   d, h                                        ; $7b20: $54
	ld   a, l                                        ; $7b21: $7d
	ld   l, l                                        ; $7b22: $6d
	ld   a, h                                        ; $7b23: $7c
	ld   h, l                                        ; $7b24: $65
	ld   e, c                                        ; $7b25: $59
	ld   [hl], c                                     ; $7b26: $71
	ld   l, l                                        ; $7b27: $6d
	sub  [hl]                                        ; $7b28: $96
	sbc  [hl]                                        ; $7b29: $9e
	dec  c                                           ; $7b2a: $0d
	ld   l, a                                        ; $7b2b: $6f
	ld   d, d                                        ; $7b2c: $52
	ld   [bc], a                                     ; $7b2d: $02
	inc  de                                          ; $7b2e: $13
	ld   l, a                                        ; $7b2f: $6f
	sub  c                                           ; $7b30: $91
	and  c                                           ; $7b31: $a1
	sbc  a                                           ; $7b32: $9f
	dec  c                                           ; $7b33: $0d
	nop                                              ; $7b34: $00
	ld   a, [bc]                                     ; $7b35: $0a
	ld   bc, $6550                                   ; $7b36: $01 $50 $65
	ld   l, l                                        ; $7b39: $6d
	ld   a, l                                        ; $7b3a: $7d
	sbc  [hl]                                        ; $7b3b: $9e
	ld   h, e                                        ; $7b3c: $63
	ld   d, d                                        ; $7b3d: $52
	ld   h, l                                        ; $7b3e: $65
	sub  e                                           ; $7b3f: $93
	ld   d, h                                        ; $7b40: $54
	rst  ToBoot                                         ; $7b41: $c7
	cp   d                                           ; $7b42: $ba
	ret                                              ; $7b43: $c9


	dec  c                                           ; $7b44: $0d
	ld   a, b                                        ; $7b45: $78
	and  c                                           ; $7b46: $a1
	ld   l, [hl]                                     ; $7b47: $6e
	sub  [hl]                                        ; $7b48: $96
	ld   a, e                                        ; $7b49: $7b
	sbc  a                                           ; $7b4a: $9f
	dec  c                                           ; $7b4b: $0d
	nop                                              ; $7b4c: $00
	ld   a, [bc]                                     ; $7b4d: $0a
	ld   d, $2c                                      ; $7b4e: $16 $2c
	rrca                                             ; $7b50: $0f
	inc  b                                           ; $7b51: $04
	ld   bc, $7d01                                   ; $7b52: $01 $01 $7d
	ld   d, d                                        ; $7b55: $52
	sbc  [hl]                                        ; $7b56: $9e
	ld   h, c                                        ; $7b57: $61
	sbc  d                                           ; $7b58: $9a
	ret  c                                           ; $7b59: $d8

	xor  $bd                                         ; $7b5a: $ee $bd
	push af                                          ; $7b5c: $f5
	ret                                              ; $7b5d: $c9


	rst  $38                                         ; $7b5e: $ff
	rst  $38                                         ; $7b5f: $ff
	dec  c                                           ; $7b60: $0d
	nop                                              ; $7b61: $00
	ld   a, [bc]                                     ; $7b62: $0a
	rrca                                             ; $7b63: $0f
	nop                                              ; $7b64: $00
	ld   bc, $0301                                   ; $7b65: $01 $01 $03
	xor  a                                           ; $7b68: $af
	ld   h, e                                        ; $7b69: $63
	ld   d, d                                        ; $7b6a: $52
	cp   c                                           ; $7b6b: $b9
	push hl                                          ; $7b6c: $e5
	push af                                          ; $7b6d: $f5
	sbc  $fb                                         ; $7b6e: $de $fb
	db   $ed                                         ; $7b70: $ed
	ld   sp, hl                                      ; $7b71: $f9
	dec  c                                           ; $7b72: $0d
	nop                                              ; $7b73: $00
	ld   a, [bc]                                     ; $7b74: $0a
	rrca                                             ; $7b75: $0f
	inc  b                                           ; $7b76: $04
	ld   bc, $b901                                   ; $7b77: $01 $01 $b9
	push hl                                          ; $7b7a: $e5
	push af                                          ; $7b7b: $f5
	sbc  $fb                                         ; $7b7c: $de $fb
	db   $ed                                         ; $7b7e: $ed
	cp   c                                           ; $7b7f: $b9
	rst  $20                                         ; $7b80: $e7
	call z, $6ea3                                    ; $7b81: $cc $a3 $6e
	sub  [hl]                                        ; $7b84: $96
	sbc  a                                           ; $7b85: $9f
	dec  c                                           ; $7b86: $0d
	ld   e, b                                        ; $7b87: $58
	adc  h                                           ; $7b88: $8c
	sub  b                                           ; $7b89: $90
	sbc  b                                           ; $7b8a: $98
	ld   e, d                                        ; $7b8b: $5a
	sbc  l                                           ; $7b8c: $9d
	sbc  b                                           ; $7b8d: $98
	ld   a, c                                        ; $7b8e: $79
	dec  c                                           ; $7b8f: $0d
	adc  l                                           ; $7b90: $8d
	ld   a, c                                        ; $7b91: $79
	ld   [hl], d                                     ; $7b92: $72
	ld   e, a                                        ; $7b93: $5f
	ld   [hl], h                                     ; $7b94: $74
	ld   [hl], h                                     ; $7b95: $74
	sbc  a                                           ; $7b96: $9f
	dec  c                                           ; $7b97: $0d
	nop                                              ; $7b98: $00
	ld   a, [bc]                                     ; $7b99: $0a
	rrca                                             ; $7b9a: $0f
	nop                                              ; $7b9b: $00
	ld   bc, $5001                                   ; $7b9c: $01 $01 $50
	sbc  b                                           ; $7b9f: $98
	ld   e, d                                        ; $7ba0: $5a
	halt                                             ; $7ba1: $76
	ld   d, h                                        ; $7ba2: $54
	sbc  [hl]                                        ; $7ba3: $9e
	and  e                                           ; $7ba4: $a3
	and  l                                           ; $7ba5: $a5
	db   $ec                                         ; $7ba6: $ec
	cp   d                                           ; $7ba7: $ba
	sbc  a                                           ; $7ba8: $9f
	dec  c                                           ; $7ba9: $0d
	inc  b                                           ; $7baa: $04
	ld   l, l                                        ; $7bab: $6d
	sbc  [hl]                                        ; $7bac: $9e
	ld   e, d                                        ; $7bad: $5a
	and  c                                           ; $7bae: $a1
	ld   a, [hl]                                     ; $7baf: $7e
	sbc  c                                           ; $7bb0: $99
	sub  [hl]                                        ; $7bb1: $96
	sbc  a                                           ; $7bb2: $9f
	dec  c                                           ; $7bb3: $0d
	nop                                              ; $7bb4: $00
	ld   a, [bc]                                     ; $7bb5: $0a
	dec  b                                           ; $7bb6: $05
	add  b                                           ; $7bb7: $80
	ld   c, [hl]                                     ; $7bb8: $4e
	ld   bc, $0001                                   ; $7bb9: $01 $01 $00
	add  hl, hl                                      ; $7bbc: $29
	nop                                              ; $7bbd: $00
	nop                                              ; $7bbe: $00
	nop                                              ; $7bbf: $00
	inc  b                                           ; $7bc0: $04
	add  b                                           ; $7bc1: $80
	ld   [hl], a                                     ; $7bc2: $77
	ld   bc, $20ff                                   ; $7bc3: $01 $ff $20
	nop                                              ; $7bc6: $00
	ld   c, $01                                      ; $7bc7: $0e $01
	rrca                                             ; $7bc9: $0f
	nop                                              ; $7bca: $00
	ld   bc, $0102                                   ; $7bcb: $01 $02 $01
	rst  JumpTable                                         ; $7bce: $df
	db   $ec                                         ; $7bcf: $ec
	and  e                                           ; $7bd0: $a3
	ld   h, e                                        ; $7bd1: $63
	and  c                                           ; $7bd2: $a1
	ld   a, h                                        ; $7bd3: $7c
	inc  b                                           ; $7bd4: $04
	di                                               ; $7bd5: $f3
	ld   [bc], a                                     ; $7bd6: $02
	jp   Jump_064_7471                               ; $7bd7: $c3 $71 $74


	dec  c                                           ; $7bda: $0d
	ld   a, b                                        ; $7bdb: $78
	and  c                                           ; $7bdc: $a1
	ld   l, [hl]                                     ; $7bdd: $6e
	sbc  e                                           ; $7bde: $9b
	ld   d, h                                        ; $7bdf: $54
	rst  $38                                         ; $7be0: $ff
	rst  $38                                         ; $7be1: $ff
	dec  c                                           ; $7be2: $0d
	nop                                              ; $7be3: $00
	ld   a, [bc]                                     ; $7be4: $0a
	ld   bc, $7158                                   ; $7be5: $01 $58 $71
	halt                                             ; $7be8: $76
	ld   a, [$6b10]                                  ; $7be9: $fa $10 $6b
	and  c                                           ; $7bec: $a1
	ld   a, b                                        ; $7bed: $78
	ld   h, c                                        ; $7bee: $61
	halt                                             ; $7bef: $76
	sub  [hl]                                        ; $7bf0: $96
	sbc  b                                           ; $7bf1: $98
	dec  c                                           ; $7bf2: $0d
	dec  b                                           ; $7bf3: $05
	jr   z, @+$54                                    ; $7bf4: $28 $52

	ld   [hl], l                                     ; $7bf6: $75
	inc  b                                           ; $7bf7: $04
	rlca                                             ; $7bf8: $07
	dec  b                                           ; $7bf9: $05
	scf                                              ; $7bfa: $37
	ld   d, [hl]                                     ; $7bfb: $56
	ld   a, b                                        ; $7bfc: $78
	ld   e, l                                        ; $7bfd: $5d
	ld   l, a                                        ; $7bfe: $6f
	sub  c                                           ; $7bff: $91
	sbc  a                                           ; $7c00: $9f
	dec  c                                           ; $7c01: $0d
	nop                                              ; $7c02: $00
	ld   a, [bc]                                     ; $7c03: $0a
	add  hl, de                                      ; $7c04: $19
	inc  b                                           ; $7c05: $04
	inc  bc                                          ; $7c06: $03
	ld   b, $4c                                      ; $7c07: $06 $4c
	and  b                                           ; $7c09: $a0
	adc  l                                           ; $7c0a: $8d
	ld   e, d                                        ; $7c0b: $5a
	ld   e, l                                        ; $7c0c: $5d
	nop                                              ; $7c0d: $00
	nop                                              ; $7c0e: $00
	dec  b                                           ; $7c0f: $05
	ld   e, $a0                                      ; $7c10: $1e $a0
	adc  l                                           ; $7c12: $8d
	ld   e, d                                        ; $7c13: $5a
	ld   e, l                                        ; $7c14: $5d
	nop                                              ; $7c15: $00
	ld   bc, $b9eb                                   ; $7c16: $01 $eb $b9
	xor  e                                           ; $7c19: $ab
	inc  b                                           ; $7c1a: $04
	dec  c                                           ; $7c1b: $0d
	ld   b, $5a                                      ; $7c1c: $06 $5a
	and  b                                           ; $7c1e: $a0
	ld   h, a                                        ; $7c1f: $67
	sbc  c                                           ; $7c20: $99
	nop                                              ; $7c21: $00
	ld   [bc], a                                     ; $7c22: $02
	rlca                                             ; $7c23: $07
	ld   a, d                                        ; $7c24: $7a
	nop                                              ; $7c25: $00
	ld   [bc], a                                     ; $7c26: $02
	inc  bc                                          ; $7c27: $03
	ld   bc, $2000                                   ; $7c28: $01 $00 $20
	nop                                              ; $7c2b: $00
	rlca                                             ; $7c2c: $07
	xor  d                                           ; $7c2d: $aa
	nop                                              ; $7c2e: $00
	ld   [bc], a                                     ; $7c2f: $02
	inc  bc                                          ; $7c30: $03
	ld   bc, $2001                                   ; $7c31: $01 $01 $20
	nop                                              ; $7c34: $00
	rlca                                             ; $7c35: $07
	db   $eb                                         ; $7c36: $eb
	nop                                              ; $7c37: $00
	ld   [bc], a                                     ; $7c38: $02
	inc  bc                                          ; $7c39: $03
	ld   bc, $2002                                   ; $7c3a: $01 $02 $20
	nop                                              ; $7c3d: $00
	ld   b, $25                                      ; $7c3e: $06 $25
	ld   bc, $000f                                   ; $7c40: $01 $0f $00
	ld   bc, $9601                                   ; $7c43: $01 $01 $96
	ld   h, l                                        ; $7c46: $65
	ld   a, [$0610]                                  ; $7c47: $fa $10 $06
	ld   c, h                                        ; $7c4a: $4c
	and  b                                           ; $7c4b: $a0
	adc  l                                           ; $7c4c: $8d
	ld   e, d                                        ; $7c4d: $5a
	ld   e, l                                        ; $7c4e: $5d
	ld   l, h                                        ; $7c4f: $6c
	ei                                               ; $7c50: $fb
	ld   a, [$060d]                                  ; $7c51: $fa $0d $06
	ld   c, h                                        ; $7c54: $4c
	ld   a, l                                        ; $7c55: $7d
	xor  [hl]                                        ; $7c56: $ae
	xor  $a5                                         ; $7c57: $ee $a5
	ld   a, c                                        ; $7c59: $79
	ld   h, l                                        ; $7c5a: $65

Jump_064_7c5b:
	halt                                             ; $7c5b: $76
	ld   e, c                                        ; $7c5c: $59
	ld   a, b                                        ; $7c5d: $78
	ld   d, d                                        ; $7c5e: $52
	halt                                             ; $7c5f: $76
	ld   a, e                                        ; $7c60: $7b
	sbc  a                                           ; $7c61: $9f
	dec  c                                           ; $7c62: $0d
	nop                                              ; $7c63: $00
	ld   a, [bc]                                     ; $7c64: $0a
	dec  b                                           ; $7c65: $05
	ld   b, b                                        ; $7c66: $40
	rst  $38                                         ; $7c67: $ff
	inc  bc                                          ; $7c68: $03
	rst  $38                                         ; $7c69: $ff
	ld   bc, $2801                                   ; $7c6a: $01 $01 $28
	nop                                              ; $7c6d: $00
	ld   b, $48                                      ; $7c6e: $06 $48
	ld   bc, $000f                                   ; $7c70: $01 $0f $00
	ld   bc, $9601                                   ; $7c73: $01 $01 $96
	ld   h, l                                        ; $7c76: $65
	ld   a, [$0510]                                  ; $7c77: $fa $10 $05
	ld   e, $a0                                      ; $7c7a: $1e $a0
	adc  l                                           ; $7c7c: $8d
	ld   e, d                                        ; $7c7d: $5a
	ld   e, l                                        ; $7c7e: $5d
	ld   l, h                                        ; $7c7f: $6c
	ei                                               ; $7c80: $fb
	ld   a, [$0dfa]                                  ; $7c81: $fa $fa $0d
	rst  $38                                         ; $7c84: $ff
	rst  $38                                         ; $7c85: $ff
	and  c                                           ; $7c86: $a1
	ld   sp, hl                                      ; $7c87: $f9
	db   $10                                         ; $7c88: $10
	ld   [bc], a                                     ; $7c89: $02
	and  l                                           ; $7c8a: $a5
	ld   e, c                                        ; $7c8b: $59
	sub  a                                           ; $7c8c: $97
	inc  bc                                          ; $7c8d: $03
	ld   l, l                                        ; $7c8e: $6d
	dec  b                                           ; $7c8f: $05
	add  hl, de                                      ; $7c90: $19
	ld   a, c                                        ; $7c91: $79
	ld   [bc], a                                     ; $7c92: $02
	ld   a, a                                        ; $7c93: $7f
	ld   e, l                                        ; $7c94: $5d
	dec  c                                           ; $7c95: $0d
	nop                                              ; $7c96: $00
	dec  b                                           ; $7c97: $05
	ld   b, b                                        ; $7c98: $40
	rst  $38                                         ; $7c99: $ff
	inc  bc                                          ; $7c9a: $03
	rst  $38                                         ; $7c9b: $ff
	ld   bc, $2801                                   ; $7c9c: $01 $01 $28
	nop                                              ; $7c9f: $00
	ld   bc, $66a1                                   ; $7ca0: $01 $a1 $66
	sub  c                                           ; $7ca3: $91
	ld   a, b                                        ; $7ca4: $78
	ld   d, d                                        ; $7ca5: $52
	and  c                                           ; $7ca6: $a1
	ld   l, [hl]                                     ; $7ca7: $6e
	sub  [hl]                                        ; $7ca8: $96
	ld   a, b                                        ; $7ca9: $78
	rst  $38                                         ; $7caa: $ff
	rst  $38                                         ; $7cab: $ff
	dec  c                                           ; $7cac: $0d
	nop                                              ; $7cad: $00
	ld   a, [bc]                                     ; $7cae: $0a
	ld   b, $3d                                      ; $7caf: $06 $3d
	nop                                              ; $7cb1: $00
	rrca                                             ; $7cb2: $0f
	nop                                              ; $7cb3: $00
	ld   bc, $9601                                   ; $7cb4: $01 $01 $96
	ld   h, l                                        ; $7cb7: $65
	ld   a, [$eb10]                                  ; $7cb8: $fa $10 $eb
	cp   c                                           ; $7cbb: $b9
	xor  e                                           ; $7cbc: $ab
	inc  b                                           ; $7cbd: $04
	dec  c                                           ; $7cbe: $0d
	ld   b, $5a                                      ; $7cbf: $06 $5a
	ld   h, a                                        ; $7cc1: $67
	sbc  c                                           ; $7cc2: $99
	ld   l, h                                        ; $7cc3: $6c
	ld   a, [$ff0d]                                  ; $7cc4: $fa $0d $ff
	rst  $38                                         ; $7cc7: $ff
	ld   [hl], h                                     ; $7cc8: $74
	sbc  [hl]                                        ; $7cc9: $9e
	ld   l, e                                        ; $7cca: $6b
	and  c                                           ; $7ccb: $a1
	ld   a, b                                        ; $7ccc: $78
	ld   h, c                                        ; $7ccd: $61
	halt                                             ; $7cce: $76
	ld   h, l                                        ; $7ccf: $65
	ld   [hl], h                                     ; $7cd0: $74
	sbc  c                                           ; $7cd1: $99
	inc  bc                                          ; $7cd2: $03
	ld   l, a                                        ; $7cd3: $6f
	ld   [bc], a                                     ; $7cd4: $02
	xor  c                                           ; $7cd5: $a9
	dec  c                                           ; $7cd6: $0d
	nop                                              ; $7cd7: $00
	dec  b                                           ; $7cd8: $05
	ld   b, b                                        ; $7cd9: $40
	rst  $38                                         ; $7cda: $ff
	inc  bc                                          ; $7cdb: $03
	rst  $38                                         ; $7cdc: $ff
	ld   bc, $2801                                   ; $7cdd: $01 $01 $28
	nop                                              ; $7ce0: $00
	ld   bc, $5278                                   ; $7ce1: $01 $78 $52
	sub  [hl]                                        ; $7ce4: $96
	sbc  a                                           ; $7ce5: $9f
	dec  c                                           ; $7ce6: $0d
	nop                                              ; $7ce7: $00
	ld   a, [bc]                                     ; $7ce8: $0a
	ld   b, $3d                                      ; $7ce9: $06 $3d
	nop                                              ; $7ceb: $00
	rrca                                             ; $7cec: $0f
	nop                                              ; $7ced: $00
	ld   bc, $8c01                                   ; $7cee: $01 $01 $8c
	ld   l, b                                        ; $7cf1: $68
	ld   a, l                                        ; $7cf2: $7d
	rst  $38                                         ; $7cf3: $ff
	rst  $38                                         ; $7cf4: $ff
	dec  c                                           ; $7cf5: $0d
	ld   [hl], a                                     ; $7cf6: $77
	ld   d, h                                        ; $7cf7: $54
	ld   h, l                                        ; $7cf8: $65
	sub  [hl]                                        ; $7cf9: $96
	ld   d, h                                        ; $7cfa: $54
	ld   e, c                                        ; $7cfb: $59
	rst  $38                                         ; $7cfc: $ff
	rst  $38                                         ; $7cfd: $ff
	rst  $38                                         ; $7cfe: $ff
	rst  $38                                         ; $7cff: $ff
	dec  c                                           ; $7d00: $0d
	nop                                              ; $7d01: $00
	ld   a, [bc]                                     ; $7d02: $0a
	dec  b                                           ; $7d03: $05
	ld   b, b                                        ; $7d04: $40
	rst  $38                                         ; $7d05: $ff
	inc  bc                                          ; $7d06: $03
	rst  $38                                         ; $7d07: $ff
	ld   bc, $2801                                   ; $7d08: $01 $01 $28
	nop                                              ; $7d0b: $00
	ld   b, $3d                                      ; $7d0c: $06 $3d
	nop                                              ; $7d0e: $00
	add  hl, de                                      ; $7d0f: $19
	inc  b                                           ; $7d10: $04
	inc  bc                                          ; $7d11: $03
	inc  b                                           ; $7d12: $04
	and  l                                           ; $7d13: $a5
	and  b                                           ; $7d14: $a0
	inc  b                                           ; $7d15: $04
	rlca                                             ; $7d16: $07
	sbc  c                                           ; $7d17: $99
	nop                                              ; $7d18: $00
	nop                                              ; $7d19: $00
	inc  b                                           ; $7d1a: $04
	and  l                                           ; $7d1b: $a5
	and  b                                           ; $7d1c: $a0
	ld   a, d                                        ; $7d1d: $7a
	ld   e, [hl]                                     ; $7d1e: $5e
	nop                                              ; $7d1f: $00
	ld   bc, $b1d6                                   ; $7d20: $01 $d6 $b1
	and  b                                           ; $7d23: $a0
	inc  bc                                          ; $7d24: $03
	dec  de                                          ; $7d25: $1b
	sbc  c                                           ; $7d26: $99
	nop                                              ; $7d27: $00
	ld   [bc], a                                     ; $7d28: $02
	rlca                                             ; $7d29: $07
	add  b                                           ; $7d2a: $80
	ld   bc, $0302                                   ; $7d2b: $01 $02 $03
	ld   bc, $2000                                   ; $7d2e: $01 $00 $20
	nop                                              ; $7d31: $00
	rlca                                             ; $7d32: $07
	and  h                                           ; $7d33: $a4
	ld   bc, $0302                                   ; $7d34: $01 $02 $03
	ld   bc, $2001                                   ; $7d37: $01 $01 $20
	nop                                              ; $7d3a: $00
	rlca                                             ; $7d3b: $07
	call c, $0201                                    ; $7d3c: $dc $01 $02
	inc  bc                                          ; $7d3f: $03
	ld   bc, $2002                                   ; $7d40: $01 $02 $20
	nop                                              ; $7d43: $00
	ld   b, $1e                                      ; $7d44: $06 $1e
	ld   [bc], a                                     ; $7d46: $02
	rrca                                             ; $7d47: $0f
	nop                                              ; $7d48: $00
	ld   bc, $0601                                   ; $7d49: $01 $01 $06
	ld   c, h                                        ; $7d4c: $4c
	and  b                                           ; $7d4d: $a0
	adc  l                                           ; $7d4e: $8d
	ld   e, d                                        ; $7d4f: $5a
	ld   d, d                                        ; $7d50: $52
	ld   l, l                                        ; $7d51: $6d
	sub  a                                           ; $7d52: $97
	sbc  [hl]                                        ; $7d53: $9e
	inc  b                                           ; $7d54: $04
	and  l                                           ; $7d55: $a5
	and  b                                           ; $7d56: $a0
	inc  b                                           ; $7d57: $04
	rlca                                             ; $7d58: $07
	ld   [hl], h                                     ; $7d59: $74
	halt                                             ; $7d5a: $76
	rst  $38                                         ; $7d5b: $ff
	dec  c                                           ; $7d5c: $0d
	nop                                              ; $7d5d: $00
	ld   a, [bc]                                     ; $7d5e: $0a
	dec  b                                           ; $7d5f: $05
	ld   b, b                                        ; $7d60: $40
	rst  $38                                         ; $7d61: $ff
	inc  bc                                          ; $7d62: $03
	rst  $38                                         ; $7d63: $ff
	ld   bc, $2801                                   ; $7d64: $01 $01 $28
	nop                                              ; $7d67: $00
	ld   b, $41                                      ; $7d68: $06 $41
	ld   [bc], a                                     ; $7d6a: $02
	rrca                                             ; $7d6b: $0f
	nop                                              ; $7d6c: $00
	ld   bc, $0601                                   ; $7d6d: $01 $01 $06
	ld   c, h                                        ; $7d70: $4c
	and  b                                           ; $7d71: $a0
	adc  l                                           ; $7d72: $8d
	ld   e, d                                        ; $7d73: $5a
	ld   d, d                                        ; $7d74: $52
	ld   l, l                                        ; $7d75: $6d
	sub  a                                           ; $7d76: $97
	sbc  [hl]                                        ; $7d77: $9e
	inc  b                                           ; $7d78: $04

Jump_064_7d79:
	and  l                                           ; $7d79: $a5
	and  b                                           ; $7d7a: $a0
	ld   a, d                                        ; $7d7b: $7a
	ld   d, d                                        ; $7d7c: $52
	ld   [hl], l                                     ; $7d7d: $75
	dec  c                                           ; $7d7e: $0d
	rst  $38                                         ; $7d7f: $ff
	rst  $38                                         ; $7d80: $ff
	ld   a, d                                        ; $7d81: $7a
	ld   d, d                                        ; $7d82: $52
	ld   h, [hl]                                     ; $7d83: $66
	sub  c                                           ; $7d84: $91
	pop  bc                                          ; $7d85: $c1
	db   $e3                                         ; $7d86: $e3
	ld   [hl], l                                     ; $7d87: $75
	ld   h, l                                        ; $7d88: $65
	sub  l                                           ; $7d89: $95
	sbc  a                                           ; $7d8a: $9f
	dec  c                                           ; $7d8b: $0d
	nop                                              ; $7d8c: $00
	dec  b                                           ; $7d8d: $05
	ld   b, b                                        ; $7d8e: $40
	rst  $38                                         ; $7d8f: $ff
	inc  bc                                          ; $7d90: $03
	rst  $38                                         ; $7d91: $ff
	ld   bc, $2801                                   ; $7d92: $01 $01 $28
	nop                                              ; $7d95: $00
	ld   bc, $0704                                   ; $7d96: $01 $04 $07
	ld   a, b                                        ; $7d99: $78
	ld   e, e                                        ; $7d9a: $5b
	sub  c                                           ; $7d9b: $91
	sbc  a                                           ; $7d9c: $9f
	dec  c                                           ; $7d9d: $0d
	nop                                              ; $7d9e: $00
	ld   a, [bc]                                     ; $7d9f: $0a
	ld   b, $48                                      ; $7da0: $06 $48
	ld   bc, $000f                                   ; $7da2: $01 $0f $00
	ld   bc, $0601                                   ; $7da5: $01 $01 $06
	ld   c, h                                        ; $7da8: $4c
	and  b                                           ; $7da9: $a0
	adc  l                                           ; $7daa: $8d
	ld   e, d                                        ; $7dab: $5a
	ld   d, d                                        ; $7dac: $52
	ld   l, l                                        ; $7dad: $6d
	sub  a                                           ; $7dae: $97
	sbc  [hl]                                        ; $7daf: $9e
	sub  $b1                                         ; $7db0: $d6 $b1
	and  b                                           ; $7db2: $a0
	inc  bc                                          ; $7db3: $03
	dec  de                                          ; $7db4: $1b
	ld   [hl], c                                     ; $7db5: $71
	ld   [hl], h                                     ; $7db6: $74
	dec  c                                           ; $7db7: $0d
	rst  $38                                         ; $7db8: $ff
	rst  $38                                         ; $7db9: $ff
	ld   [hl], h                                     ; $7dba: $74
	sbc  [hl]                                        ; $7dbb: $9e
	cp   b                                           ; $7dbc: $b8
	rst  $28                                         ; $7dbd: $ef
	and  a                                           ; $7dbe: $a7
	ret                                              ; $7dbf: $c9


	ld   e, d                                        ; $7dc0: $5a
	inc  bc                                          ; $7dc1: $03
	ld   c, [hl]                                     ; $7dc2: $4e
	inc  bc                                          ; $7dc3: $03
	ld   l, e                                        ; $7dc4: $6b
	ld   a, c                                        ; $7dc5: $79
	dec  c                                           ; $7dc6: $0d
	nop                                              ; $7dc7: $00
	dec  b                                           ; $7dc8: $05
	ld   b, b                                        ; $7dc9: $40
	rst  $38                                         ; $7dca: $ff
	inc  bc                                          ; $7dcb: $03
	rst  $38                                         ; $7dcc: $ff
	ld   bc, $2801                                   ; $7dcd: $01 $01 $28
	nop                                              ; $7dd0: $00
	ld   bc, $b1d6                                   ; $7dd1: $01 $d6 $b1
	and  b                                           ; $7dd4: $a0
	ld   h, e                                        ; $7dd5: $63
	ld   a, [hl]                                     ; $7dd6: $7e
	ld   d, d                                        ; $7dd7: $52
	ld   l, a                                        ; $7dd8: $6f
	sub  c                                           ; $7dd9: $91
	pop  bc                                          ; $7dda: $c1
	db   $e3                                         ; $7ddb: $e3
	ld   l, [hl]                                     ; $7ddc: $6e
	sub  [hl]                                        ; $7ddd: $96
	sbc  a                                           ; $7dde: $9f
	dec  c                                           ; $7ddf: $0d
	nop                                              ; $7de0: $00
	ld   a, [bc]                                     ; $7de1: $0a
	ld   b, $48                                      ; $7de2: $06 $48
	ld   bc, $000f                                   ; $7de4: $01 $0f $00
	ld   bc, $0301                                   ; $7de7: $01 $01 $03
	ld   l, b                                        ; $7dea: $68
	ld   a, c                                        ; $7deb: $79
	rst  $38                                         ; $7dec: $ff
	rst  $38                                         ; $7ded: $ff
	dec  c                                           ; $7dee: $0d
	ld   [hl], a                                     ; $7def: $77
	ld   d, h                                        ; $7df0: $54
	ld   h, l                                        ; $7df1: $65
	sub  [hl]                                        ; $7df2: $96
	ld   d, h                                        ; $7df3: $54
	ld   e, c                                        ; $7df4: $59
	rst  $38                                         ; $7df5: $ff
	rst  $38                                         ; $7df6: $ff
	rst  $38                                         ; $7df7: $ff
	rst  $38                                         ; $7df8: $ff
	dec  c                                           ; $7df9: $0d
	nop                                              ; $7dfa: $00
	ld   a, [bc]                                     ; $7dfb: $0a
	dec  b                                           ; $7dfc: $05
	ld   b, b                                        ; $7dfd: $40
	rst  $38                                         ; $7dfe: $ff
	inc  bc                                          ; $7dff: $03
	rst  $38                                         ; $7e00: $ff
	ld   bc, $2801                                   ; $7e01: $01 $01 $28
	nop                                              ; $7e04: $00
	ld   b, $48                                      ; $7e05: $06 $48
	ld   bc, $0419                                   ; $7e07: $01 $19 $04
	inc  bc                                          ; $7e0a: $03
	inc  b                                           ; $7e0b: $04
	ld   l, d                                        ; $7e0c: $6a
	and  b                                           ; $7e0d: $a0
	halt                                             ; $7e0e: $76
	halt                                             ; $7e0f: $76
	ld   a, h                                        ; $7e10: $7c
	ld   d, [hl]                                     ; $7e11: $56
	sbc  c                                           ; $7e12: $99
	nop                                              ; $7e13: $00
	nop                                              ; $7e14: $00
	ld   e, c                                        ; $7e15: $59
	ld   e, d                                        ; $7e16: $5a
	adc  l                                           ; $7e17: $8d
	ld   a, c                                        ; $7e18: $79
	adc  l                                           ; $7e19: $8d
	halt                                             ; $7e1a: $76
	sbc  d                                           ; $7e1b: $9a
	sbc  c                                           ; $7e1c: $99
	nop                                              ; $7e1d: $00
	ld   bc, $6a04                                   ; $7e1e: $01 $04 $6a
	and  b                                           ; $7e21: $a0
	ld   d, b                                        ; $7e22: $50
	adc  [hl]                                        ; $7e23: $8e
	nop                                              ; $7e24: $00
	ld   [bc], a                                     ; $7e25: $02
	rlca                                             ; $7e26: $07
	ld   a, l                                        ; $7e27: $7d
	ld   [bc], a                                     ; $7e28: $02
	ld   [bc], a                                     ; $7e29: $02
	inc  bc                                          ; $7e2a: $03
	ld   bc, $2000                                   ; $7e2b: $01 $00 $20
	nop                                              ; $7e2e: $00
	rlca                                             ; $7e2f: $07
	sbc  l                                           ; $7e30: $9d
	ld   [bc], a                                     ; $7e31: $02
	ld   [bc], a                                     ; $7e32: $02
	inc  bc                                          ; $7e33: $03
	ld   bc, $2001                                   ; $7e34: $01 $01 $20
	nop                                              ; $7e37: $00
	rlca                                             ; $7e38: $07
	rst  JumpTable                                         ; $7e39: $df
	ld   [bc], a                                     ; $7e3a: $02
	ld   [bc], a                                     ; $7e3b: $02
	inc  bc                                          ; $7e3c: $03
	ld   bc, $2002                                   ; $7e3d: $01 $02 $20
	nop                                              ; $7e40: $00
	ld   b, $10                                      ; $7e41: $06 $10
	inc  bc                                          ; $7e43: $03
	rrca                                             ; $7e44: $0f
	nop                                              ; $7e45: $00
	ld   bc, $6b01                                   ; $7e46: $01 $01 $6b
	ld   h, l                                        ; $7e49: $65
	ld   [hl], h                                     ; $7e4a: $74
	sbc  [hl]                                        ; $7e4b: $9e
	inc  b                                           ; $7e4c: $04
	ld   l, d                                        ; $7e4d: $6a
	and  b                                           ; $7e4e: $a0
	halt                                             ; $7e4f: $76
	halt                                             ; $7e50: $76
	ld   a, h                                        ; $7e51: $7c
	ld   d, [hl]                                     ; $7e52: $56
	ld   [hl], h                                     ; $7e53: $74
	sbc  a                                           ; $7e54: $9f
	dec  c                                           ; $7e55: $0d
	nop                                              ; $7e56: $00
	ld   a, [bc]                                     ; $7e57: $0a
	dec  b                                           ; $7e58: $05
	ld   b, b                                        ; $7e59: $40
	rst  $38                                         ; $7e5a: $ff
	inc  bc                                          ; $7e5b: $03
	rst  $38                                         ; $7e5c: $ff
	ld   bc, $2801                                   ; $7e5d: $01 $01 $28
	nop                                              ; $7e60: $00
	ld   b, $33                                      ; $7e61: $06 $33
	inc  bc                                          ; $7e63: $03
	rrca                                             ; $7e64: $0f
	nop                                              ; $7e65: $00
	ld   bc, $6b01                                   ; $7e66: $01 $01 $6b
	ld   h, l                                        ; $7e69: $65
	ld   [hl], h                                     ; $7e6a: $74
	sbc  [hl]                                        ; $7e6b: $9e
	ld   e, c                                        ; $7e6c: $59
	ld   e, d                                        ; $7e6d: $5a
	adc  l                                           ; $7e6e: $8d
	ld   a, c                                        ; $7e6f: $79
	adc  l                                           ; $7e70: $8d
	halt                                             ; $7e71: $76
	sbc  d                                           ; $7e72: $9a
	ld   [hl], h                                     ; $7e73: $74
	rst  $38                                         ; $7e74: $ff
	rst  $38                                         ; $7e75: $ff
	dec  c                                           ; $7e76: $0d
	and  c                                           ; $7e77: $a1
	ld   sp, hl                                      ; $7e78: $f9
	db   $10                                         ; $7e79: $10
	ld   d, d                                        ; $7e7a: $52
	ld   e, a                                        ; $7e7b: $5f
	ld   a, b                                        ; $7e7c: $78
	ld   d, d                                        ; $7e7d: $52
	sbc  [hl]                                        ; $7e7e: $9e
	ld   d, d                                        ; $7e7f: $52
	ld   e, a                                        ; $7e80: $5f
	ld   a, b                                        ; $7e81: $78
	ld   d, d                                        ; $7e82: $52
	sbc  a                                           ; $7e83: $9f
	dec  c                                           ; $7e84: $0d
	nop                                              ; $7e85: $00
	dec  b                                           ; $7e86: $05
	ld   b, b                                        ; $7e87: $40
	rst  $38                                         ; $7e88: $ff
	inc  bc                                          ; $7e89: $03
	rst  $38                                         ; $7e8a: $ff
	ld   bc, $2801                                   ; $7e8b: $01 $01 $28
	nop                                              ; $7e8e: $00
	ld   bc, $5272                                   ; $7e8f: $01 $72 $52
	inc  bc                                          ; $7e92: $03
	sub  h                                           ; $7e93: $94
	inc  b                                           ; $7e94: $04
	sbc  [hl]                                        ; $7e95: $9e
	ld   a, c                                        ; $7e96: $79
	adc  l                                           ; $7e97: $8d
	halt                                             ; $7e98: $76
	sbc  d                                           ; $7e99: $9a
	ld   [hl], h                                     ; $7e9a: $74
	ld   h, l                                        ; $7e9b: $65
	adc  h                                           ; $7e9c: $8c
	ld   [hl], c                                     ; $7e9d: $71
	ld   l, l                                        ; $7e9e: $6d
	rst  $38                                         ; $7e9f: $ff
	dec  c                                           ; $7ea0: $0d
	nop                                              ; $7ea1: $00
	ld   a, [bc]                                     ; $7ea2: $0a
	ld   b, $41                                      ; $7ea3: $06 $41
	ld   [bc], a                                     ; $7ea5: $02
	rrca                                             ; $7ea6: $0f
	nop                                              ; $7ea7: $00
	ld   bc, $6b01                                   ; $7ea8: $01 $01 $6b
	ld   h, l                                        ; $7eab: $65
	ld   [hl], h                                     ; $7eac: $74
	sbc  [hl]                                        ; $7ead: $9e
	inc  b                                           ; $7eae: $04
	ld   l, d                                        ; $7eaf: $6a
	and  b                                           ; $7eb0: $a0
	ld   d, b                                        ; $7eb1: $50
	adc  [hl]                                        ; $7eb2: $8e
	sbc  a                                           ; $7eb3: $9f
	dec  c                                           ; $7eb4: $0d
	rst  $38                                         ; $7eb5: $ff
	rst  $38                                         ; $7eb6: $ff
	rst  $38                                         ; $7eb7: $ff
	rst  $38                                         ; $7eb8: $ff
	and  c                                           ; $7eb9: $a1
	ld   sp, hl                                      ; $7eba: $f9
	dec  c                                           ; $7ebb: $0d
	nop                                              ; $7ebc: $00
	dec  b                                           ; $7ebd: $05
	ld   b, b                                        ; $7ebe: $40
	rst  $38                                         ; $7ebf: $ff
	inc  bc                                          ; $7ec0: $03
	rst  $38                                         ; $7ec1: $ff
	ld   bc, $2801                                   ; $7ec2: $01 $01 $28
	nop                                              ; $7ec5: $00
	ld   bc, $a150                                   ; $7ec6: $01 $50 $a1
	ld   h, [hl]                                     ; $7ec9: $66
	sub  c                                           ; $7eca: $91
	pop  bc                                          ; $7ecb: $c1
	db   $e3                                         ; $7ecc: $e3
	ld   [hl], l                                     ; $7ecd: $75
	ld   h, l                                        ; $7ece: $65
	sub  l                                           ; $7ecf: $95
	ld   sp, hl                                      ; $7ed0: $f9
	dec  c                                           ; $7ed1: $0d
	nop                                              ; $7ed2: $00
	ld   a, [bc]                                     ; $7ed3: $0a
	ld   b, $41                                      ; $7ed4: $06 $41
	ld   [bc], a                                     ; $7ed6: $02
	rrca                                             ; $7ed7: $0f
	nop                                              ; $7ed8: $00
	ld   bc, $6b01                                   ; $7ed9: $01 $01 $6b
	ld   h, l                                        ; $7edc: $65
	ld   [hl], h                                     ; $7edd: $74
	rst  $38                                         ; $7ede: $ff
	rst  $38                                         ; $7edf: $ff
	dec  c                                           ; $7ee0: $0d
	ld   [hl], a                                     ; $7ee1: $77
	ld   d, h                                        ; $7ee2: $54
	ld   h, l                                        ; $7ee3: $65
	sub  [hl]                                        ; $7ee4: $96
	ld   d, h                                        ; $7ee5: $54
	ld   e, c                                        ; $7ee6: $59
	rst  $38                                         ; $7ee7: $ff
	rst  $38                                         ; $7ee8: $ff
	rst  $38                                         ; $7ee9: $ff
	rst  $38                                         ; $7eea: $ff
	dec  c                                           ; $7eeb: $0d
	nop                                              ; $7eec: $00
	ld   a, [bc]                                     ; $7eed: $0a
	dec  b                                           ; $7eee: $05
	ld   b, b                                        ; $7eef: $40
	rst  $38                                         ; $7ef0: $ff
	inc  bc                                          ; $7ef1: $03
	rst  $38                                         ; $7ef2: $ff
	ld   bc, $2801                                   ; $7ef3: $01 $01 $28
	nop                                              ; $7ef6: $00
	ld   b, $41                                      ; $7ef7: $06 $41
	ld   [bc], a                                     ; $7ef9: $02
	add  hl, de                                      ; $7efa: $19
	inc  b                                           ; $7efb: $04
	inc  bc                                          ; $7efc: $03
	ret  nc                                          ; $7efd: $d0

	push af                                          ; $7efe: $f5
	xor  h                                           ; $7eff: $ac
	jp   nz, $03a0                                   ; $7f00: $c2 $a0 $03

	and  b                                           ; $7f03: $a0
	ld   [hl], d                                     ; $7f04: $72
	nop                                              ; $7f05: $00
	nop                                              ; $7f06: $00
	ret                                              ; $7f07: $c9


	push af                                          ; $7f08: $f5
	xor  h                                           ; $7f09: $ac
	jp   nz, $03a0                                   ; $7f0a: $c2 $a0 $03

	and  b                                           ; $7f0d: $a0
	ld   [hl], d                                     ; $7f0e: $72
	nop                                              ; $7f0f: $00
	ld   bc, $f5c9                                   ; $7f10: $01 $c9 $f5
	xor  h                                           ; $7f13: $ac
	push bc                                          ; $7f14: $c5
	and  b                                           ; $7f15: $a0
	inc  bc                                          ; $7f16: $03
	ld   l, d                                        ; $7f17: $6a
	add  a                                           ; $7f18: $87
	sbc  c                                           ; $7f19: $99
	nop                                              ; $7f1a: $00
	ld   [bc], a                                     ; $7f1b: $02
	rlca                                             ; $7f1c: $07
	ld   [hl], e                                     ; $7f1d: $73
	inc  bc                                          ; $7f1e: $03
	ld   [bc], a                                     ; $7f1f: $02
	inc  bc                                          ; $7f20: $03
	ld   bc, $2000                                   ; $7f21: $01 $00 $20
	nop                                              ; $7f24: $00
	rlca                                             ; $7f25: $07
	sbc  e                                           ; $7f26: $9b
	inc  bc                                          ; $7f27: $03
	ld   [bc], a                                     ; $7f28: $02
	inc  bc                                          ; $7f29: $03
	ld   bc, $2001                                   ; $7f2a: $01 $01 $20
	nop                                              ; $7f2d: $00
	rlca                                             ; $7f2e: $07
	call nc, $0203                                   ; $7f2f: $d4 $03 $02
	inc  bc                                          ; $7f32: $03
	ld   bc, $2002                                   ; $7f33: $01 $02 $20
	nop                                              ; $7f36: $00
	ld   b, $29                                      ; $7f37: $06 $29
	inc  b                                           ; $7f39: $04
	rrca                                             ; $7f3a: $0f
	nop                                              ; $7f3b: $00
	ld   bc, $d001                                   ; $7f3c: $01 $01 $d0
	push af                                          ; $7f3f: $f5
	xor  h                                           ; $7f40: $ac
	jp   nz, $ff7d                                   ; $7f41: $c2 $7d $ff

	rst  $38                                         ; $7f44: $ff
	sub  [hl]                                        ; $7f45: $96
	ld   h, l                                        ; $7f46: $65
	ld   a, [$6f0d]                                  ; $7f47: $fa $0d $6f
	sub  c                                           ; $7f4a: $91
	and  c                                           ; $7f4b: $a1
	halt                                             ; $7f4c: $76
	inc  bc                                          ; $7f4d: $03
	and  b                                           ; $7f4e: $a0
	ld   [hl], c                                     ; $7f4f: $71
	ld   l, l                                        ; $7f50: $6d
	ld   l, h                                        ; $7f51: $6c
	sbc  a                                           ; $7f52: $9f
	dec  c                                           ; $7f53: $0d
	nop                                              ; $7f54: $00
	ld   a, [bc]                                     ; $7f55: $0a
	dec  b                                           ; $7f56: $05
	ld   b, b                                        ; $7f57: $40
	rst  $38                                         ; $7f58: $ff
	inc  bc                                          ; $7f59: $03
	rst  $38                                         ; $7f5a: $ff
	ld   bc, $2801                                   ; $7f5b: $01 $01 $28
	nop                                              ; $7f5e: $00
	ld   b, $48                                      ; $7f5f: $06 $48
	inc  b                                           ; $7f61: $04
	rrca                                             ; $7f62: $0f
	nop                                              ; $7f63: $00
	ld   bc, $c901                                   ; $7f64: $01 $01 $c9
	push af                                          ; $7f67: $f5
	xor  h                                           ; $7f68: $ac
	jp   nz, Jump_064_6fa0                           ; $7f69: $c2 $a0 $6f

	sub  c                                           ; $7f6c: $91
	and  c                                           ; $7f6d: $a1
	halt                                             ; $7f6e: $76
	inc  bc                                          ; $7f6f: $03
	and  b                                           ; $7f70: $a0
	ld   [hl], c                                     ; $7f71: $71
	ld   [hl], h                                     ; $7f72: $74
	dec  c                                           ; $7f73: $0d
	rst  $38                                         ; $7f74: $ff
	rst  $38                                         ; $7f75: $ff
	ld   [hl], a                                     ; $7f76: $77
	ld   h, c                                        ; $7f77: $61
	add  [hl]                                        ; $7f78: $86
	ld   [bc], a                                     ; $7f79: $02
	ld   a, a                                        ; $7f7a: $7f
	ld   e, l                                        ; $7f7b: $5d
	and  c                                           ; $7f7c: $a1
	ld   l, [hl]                                     ; $7f7d: $6e
	inc  b                                           ; $7f7e: $04
	ld   l, l                                        ; $7f7f: $6d
	ld   a, l                                        ; $7f80: $7d
	ld   sp, hl                                      ; $7f81: $f9
	dec  c                                           ; $7f82: $0d
	nop                                              ; $7f83: $00
	dec  b                                           ; $7f84: $05
	ld   b, b                                        ; $7f85: $40
	rst  $38                                         ; $7f86: $ff
	inc  bc                                          ; $7f87: $03
	rst  $38                                         ; $7f88: $ff
	ld   bc, $2801                                   ; $7f89: $01 $01 $28
	nop                                              ; $7f8c: $00
	ld   bc, $5a6f                                   ; $7f8d: $01 $6f $5a
	ld   d, h                                        ; $7f90: $54
	ld   [hl], l                                     ; $7f91: $75
	ld   h, l                                        ; $7f92: $65
	sub  l                                           ; $7f93: $95
	sbc  a                                           ; $7f94: $9f
	dec  c                                           ; $7f95: $0d
	nop                                              ; $7f96: $00
	ld   a, [bc]                                     ; $7f97: $0a
	ld   b, $33                                      ; $7f98: $06 $33
	inc  bc                                          ; $7f9a: $03
	rrca                                             ; $7f9b: $0f
	nop                                              ; $7f9c: $00
	ld   bc, $c901                                   ; $7f9d: $01 $01 $c9
	push af                                          ; $7fa0: $f5
	xor  h                                           ; $7fa1: $ac
	push bc                                          ; $7fa2: $c5
	and  b                                           ; $7fa3: $a0
	inc  bc                                          ; $7fa4: $03
	ld   l, d                                        ; $7fa5: $6a
	add  a                                           ; $7fa6: $87
	ld   [hl], h                                     ; $7fa7: $74
	sbc  [hl]                                        ; $7fa8: $9e
	inc  bc                                          ; $7fa9: $03
	db   $dd                                         ; $7faa: $dd
	ld   a, c                                        ; $7fab: $79
	inc  bc                                          ; $7fac: $03
	ld   c, [hl]                                     ; $7fad: $4e
	ld   [hl], d                                     ; $7fae: $72
	sbc  a                                           ; $7faf: $9f
	dec  c                                           ; $7fb0: $0d
	ld   a, b                                        ; $7fb1: $78
	db   $fc                                         ; $7fb2: $fc
	and  c                                           ; $7fb3: $a1
	ld   l, a                                        ; $7fb4: $6f
	sub  c                                           ; $7fb5: $91
	ld   [hl], c                                     ; $7fb6: $71
	ld   [hl], h                                     ; $7fb7: $74
	rst  $38                                         ; $7fb8: $ff
	rst  $38                                         ; $7fb9: $ff
	dec  c                                           ; $7fba: $0d
	nop                                              ; $7fbb: $00
	ld   a, [bc]                                     ; $7fbc: $0a
	ld   bc, $a16b                                   ; $7fbd: $01 $6b $a1
	ld   a, b                                        ; $7fc0: $78
	ld   h, c                                        ; $7fc1: $61
	halt                                             ; $7fc2: $76
	ld   [bc], a                                     ; $7fc3: $02
	sbc  l                                           ; $7fc4: $9d
	ld   [hl], c                                     ; $7fc5: $71
	ld   [hl], h                                     ; $7fc6: $74
	sbc  c                                           ; $7fc7: $99
	inc  b                                           ; $7fc8: $04
	ld   a, d                                        ; $7fc9: $7a
	ld   [bc], a                                     ; $7fca: $02
	ld   a, e                                        ; $7fcb: $7b
	ld   h, [hl]                                     ; $7fcc: $66
	sub  c                                           ; $7fcd: $91
	dec  c                                           ; $7fce: $0d
	ld   a, b                                        ; $7fcf: $78
	ld   d, d                                        ; $7fd0: $52
	sub  [hl]                                        ; $7fd1: $96
	sbc  a                                           ; $7fd2: $9f
	dec  c                                           ; $7fd3: $0d
	nop                                              ; $7fd4: $00
	dec  b                                           ; $7fd5: $05
	ld   b, b                                        ; $7fd6: $40
	rst  $38                                         ; $7fd7: $ff
	inc  bc                                          ; $7fd8: $03
	rst  $38                                         ; $7fd9: $ff
	ld   bc, $2801                                   ; $7fda: $01 $01 $28
	nop                                              ; $7fdd: $00
	ld   bc, $7003                                   ; $7fde: $01 $03 $70
	ld   e, l                                        ; $7fe1: $5d
	ld   h, l                                        ; $7fe2: $65
	ld   l, l                                        ; $7fe3: $6d
	ld   e, l                                        ; $7fe4: $5d
	ld   h, l                                        ; $7fe5: $65
	ld   a, b                                        ; $7fe6: $78
	ld   e, e                                        ; $7fe7: $5b
	sub  c                                           ; $7fe8: $91
	sbc  a                                           ; $7fe9: $9f
	dec  c                                           ; $7fea: $0d
	nop                                              ; $7feb: $00
	ld   a, [bc]                                     ; $7fec: $0a
	ld   b, $33                                      ; $7fed: $06 $33
	inc  bc                                          ; $7fef: $03
	rrca                                             ; $7ff0: $0f
	nop                                              ; $7ff1: $00
	ld   bc, $ff01                                   ; $7ff2: $01 $01 $ff
	rst  $38                                         ; $7ff5: $ff
	ld   [hl], a                                     ; $7ff6: $77
	ld   d, h                                        ; $7ff7: $54
	ld   h, l                                        ; $7ff8: $65
	sub  [hl]                                        ; $7ff9: $96
	ld   d, h                                        ; $7ffa: $54
	ld   e, c                                        ; $7ffb: $59
	rst  $38                                         ; $7ffc: $ff
	rst  $38                                         ; $7ffd: $ff
	rst  $38                                         ; $7ffe: $ff
	rst  $38                                         ; $7fff: $ff
